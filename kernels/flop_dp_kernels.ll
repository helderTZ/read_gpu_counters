; ModuleID = '/tmp/qt_temp.Z11551'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024"
target triple = "spir64-unknown-unknown"

define cc76 void @scalar_dp_add_kernel(double addrspace(1)* nocapture %a, double addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds double addrspace(1)* %a, i64 %2
  %4 = load double addrspace(1)* %3, align 8, !tbaa !92
  %5 = getelementptr inbounds double addrspace(1)* %b, i64 %2
  %6 = load double addrspace(1)* %5, align 8, !tbaa !92
  %7 = fadd double %4, %6
  store double %7, double addrspace(1)* %3, align 8, !tbaa !92
  ret void
}

declare cc75 i64 @_Z13get_global_idj(i32) nounwind readnone

define cc76 void @scalar_dp_sub_kernel(double addrspace(1)* nocapture %a, double addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds double addrspace(1)* %a, i64 %2
  %4 = load double addrspace(1)* %3, align 8, !tbaa !92
  %5 = getelementptr inbounds double addrspace(1)* %b, i64 %2
  %6 = load double addrspace(1)* %5, align 8, !tbaa !92
  %7 = fsub double %4, %6
  store double %7, double addrspace(1)* %3, align 8, !tbaa !92
  ret void
}

define cc76 void @scalar_dp_mul_kernel(double addrspace(1)* nocapture %a, double addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds double addrspace(1)* %a, i64 %2
  %4 = load double addrspace(1)* %3, align 8, !tbaa !92
  %5 = getelementptr inbounds double addrspace(1)* %b, i64 %2
  %6 = load double addrspace(1)* %5, align 8, !tbaa !92
  %7 = fmul double %4, %6
  store double %7, double addrspace(1)* %3, align 8, !tbaa !92
  ret void
}

define cc76 void @scalar_dp_div_kernel(double addrspace(1)* nocapture %a, double addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds double addrspace(1)* %a, i64 %2
  %4 = load double addrspace(1)* %3, align 8, !tbaa !92
  %5 = getelementptr inbounds double addrspace(1)* %b, i64 %2
  %6 = load double addrspace(1)* %5, align 8, !tbaa !92
  %7 = fdiv double %4, %6
  store double %7, double addrspace(1)* %3, align 8, !tbaa !92
  ret void
}

define cc76 void @scalar_dp_mad_kernel(double addrspace(1)* nocapture %a, double addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds double addrspace(1)* %a, i64 %2
  %4 = load double addrspace(1)* %3, align 8, !tbaa !92
  %5 = getelementptr inbounds double addrspace(1)* %b, i64 %2
  %6 = load double addrspace(1)* %5, align 8, !tbaa !92
  %7 = tail call double @llvm.fmuladd.f64(double %4, double %6, double %6)
  store double %7, double addrspace(1)* %3, align 8, !tbaa !92
  ret void
}

declare double @llvm.fmuladd.f64(double, double, double) nounwind readnone

define cc76 void @vect2_dp_add_kernel(<2 x double> addrspace(1)* nocapture %a, <2 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <2 x double> addrspace(1)* %a, i64 %2
  %4 = load <2 x double> addrspace(1)* %3, align 16, !tbaa !93
  %5 = getelementptr inbounds <2 x double> addrspace(1)* %b, i64 %2
  %6 = load <2 x double> addrspace(1)* %5, align 16, !tbaa !93
  %7 = fadd <2 x double> %4, %6
  store <2 x double> %7, <2 x double> addrspace(1)* %3, align 16, !tbaa !93
  ret void
}

define cc76 void @vect2_dp_sub_kernel(<2 x double> addrspace(1)* nocapture %a, <2 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <2 x double> addrspace(1)* %a, i64 %2
  %4 = load <2 x double> addrspace(1)* %3, align 16, !tbaa !93
  %5 = getelementptr inbounds <2 x double> addrspace(1)* %b, i64 %2
  %6 = load <2 x double> addrspace(1)* %5, align 16, !tbaa !93
  %7 = fsub <2 x double> %4, %6
  store <2 x double> %7, <2 x double> addrspace(1)* %3, align 16, !tbaa !93
  ret void
}

define cc76 void @vect2_dp_mul_kernel(<2 x double> addrspace(1)* nocapture %a, <2 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <2 x double> addrspace(1)* %a, i64 %2
  %4 = load <2 x double> addrspace(1)* %3, align 16, !tbaa !93
  %5 = getelementptr inbounds <2 x double> addrspace(1)* %b, i64 %2
  %6 = load <2 x double> addrspace(1)* %5, align 16, !tbaa !93
  %7 = fmul <2 x double> %4, %6
  store <2 x double> %7, <2 x double> addrspace(1)* %3, align 16, !tbaa !93
  ret void
}

define cc76 void @vect2_dp_div_kernel(<2 x double> addrspace(1)* nocapture %a, <2 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <2 x double> addrspace(1)* %a, i64 %2
  %4 = load <2 x double> addrspace(1)* %3, align 16, !tbaa !93
  %5 = getelementptr inbounds <2 x double> addrspace(1)* %b, i64 %2
  %6 = load <2 x double> addrspace(1)* %5, align 16, !tbaa !93
  %7 = fdiv <2 x double> %4, %6
  store <2 x double> %7, <2 x double> addrspace(1)* %3, align 16, !tbaa !93
  ret void
}

define cc76 void @vect2_dp_mad_kernel(<2 x double> addrspace(1)* nocapture %a, <2 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <2 x double> addrspace(1)* %a, i64 %2
  %4 = load <2 x double> addrspace(1)* %3, align 16, !tbaa !93
  %5 = getelementptr inbounds <2 x double> addrspace(1)* %b, i64 %2
  %6 = load <2 x double> addrspace(1)* %5, align 16, !tbaa !93
  %7 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %4, <2 x double> %6, <2 x double> %6)
  store <2 x double> %7, <2 x double> addrspace(1)* %3, align 16, !tbaa !93
  ret void
}

declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) nounwind readnone

define cc76 void @vect4_dp_add_kernel(<4 x double> addrspace(1)* nocapture %a, <4 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <4 x double> addrspace(1)* %a, i64 %2
  %4 = load <4 x double> addrspace(1)* %3, align 32, !tbaa !93
  %5 = getelementptr inbounds <4 x double> addrspace(1)* %b, i64 %2
  %6 = load <4 x double> addrspace(1)* %5, align 32, !tbaa !93
  %7 = fadd <4 x double> %4, %6
  store <4 x double> %7, <4 x double> addrspace(1)* %3, align 32, !tbaa !93
  ret void
}

define cc76 void @vect4_dp_sub_kernel(<4 x double> addrspace(1)* nocapture %a, <4 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <4 x double> addrspace(1)* %a, i64 %2
  %4 = load <4 x double> addrspace(1)* %3, align 32, !tbaa !93
  %5 = getelementptr inbounds <4 x double> addrspace(1)* %b, i64 %2
  %6 = load <4 x double> addrspace(1)* %5, align 32, !tbaa !93
  %7 = fsub <4 x double> %4, %6
  store <4 x double> %7, <4 x double> addrspace(1)* %3, align 32, !tbaa !93
  ret void
}

define cc76 void @vect4_dp_mul_kernel(<4 x double> addrspace(1)* nocapture %a, <4 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <4 x double> addrspace(1)* %a, i64 %2
  %4 = load <4 x double> addrspace(1)* %3, align 32, !tbaa !93
  %5 = getelementptr inbounds <4 x double> addrspace(1)* %b, i64 %2
  %6 = load <4 x double> addrspace(1)* %5, align 32, !tbaa !93
  %7 = fmul <4 x double> %4, %6
  store <4 x double> %7, <4 x double> addrspace(1)* %3, align 32, !tbaa !93
  ret void
}

define cc76 void @vect4_dp_div_kernel(<4 x double> addrspace(1)* nocapture %a, <4 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <4 x double> addrspace(1)* %a, i64 %2
  %4 = load <4 x double> addrspace(1)* %3, align 32, !tbaa !93
  %5 = getelementptr inbounds <4 x double> addrspace(1)* %b, i64 %2
  %6 = load <4 x double> addrspace(1)* %5, align 32, !tbaa !93
  %7 = fdiv <4 x double> %4, %6
  store <4 x double> %7, <4 x double> addrspace(1)* %3, align 32, !tbaa !93
  ret void
}

define cc76 void @vect4_dp_mad_kernel(<4 x double> addrspace(1)* nocapture %a, <4 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <4 x double> addrspace(1)* %a, i64 %2
  %4 = load <4 x double> addrspace(1)* %3, align 32, !tbaa !93
  %5 = getelementptr inbounds <4 x double> addrspace(1)* %b, i64 %2
  %6 = load <4 x double> addrspace(1)* %5, align 32, !tbaa !93
  %7 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %4, <4 x double> %6, <4 x double> %6)
  store <4 x double> %7, <4 x double> addrspace(1)* %3, align 32, !tbaa !93
  ret void
}

declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) nounwind readnone

define cc76 void @vect8_dp_add_kernel(<8 x double> addrspace(1)* nocapture %a, <8 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <8 x double> addrspace(1)* %a, i64 %2
  %4 = load <8 x double> addrspace(1)* %3, align 64, !tbaa !93
  %5 = getelementptr inbounds <8 x double> addrspace(1)* %b, i64 %2
  %6 = load <8 x double> addrspace(1)* %5, align 64, !tbaa !93
  %7 = fadd <8 x double> %4, %6
  store <8 x double> %7, <8 x double> addrspace(1)* %3, align 64, !tbaa !93
  ret void
}

define cc76 void @vect8_dp_sub_kernel(<8 x double> addrspace(1)* nocapture %a, <8 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <8 x double> addrspace(1)* %a, i64 %2
  %4 = load <8 x double> addrspace(1)* %3, align 64, !tbaa !93
  %5 = getelementptr inbounds <8 x double> addrspace(1)* %b, i64 %2
  %6 = load <8 x double> addrspace(1)* %5, align 64, !tbaa !93
  %7 = fsub <8 x double> %4, %6
  store <8 x double> %7, <8 x double> addrspace(1)* %3, align 64, !tbaa !93
  ret void
}

define cc76 void @vect8_dp_mul_kernel(<8 x double> addrspace(1)* nocapture %a, <8 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <8 x double> addrspace(1)* %a, i64 %2
  %4 = load <8 x double> addrspace(1)* %3, align 64, !tbaa !93
  %5 = getelementptr inbounds <8 x double> addrspace(1)* %b, i64 %2
  %6 = load <8 x double> addrspace(1)* %5, align 64, !tbaa !93
  %7 = fmul <8 x double> %4, %6
  store <8 x double> %7, <8 x double> addrspace(1)* %3, align 64, !tbaa !93
  ret void
}

define cc76 void @vect8_dp_div_kernel(<8 x double> addrspace(1)* nocapture %a, <8 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <8 x double> addrspace(1)* %a, i64 %2
  %4 = load <8 x double> addrspace(1)* %3, align 64, !tbaa !93
  %5 = getelementptr inbounds <8 x double> addrspace(1)* %b, i64 %2
  %6 = load <8 x double> addrspace(1)* %5, align 64, !tbaa !93
  %7 = fdiv <8 x double> %4, %6
  store <8 x double> %7, <8 x double> addrspace(1)* %3, align 64, !tbaa !93
  ret void
}

define cc76 void @vect8_dp_mad_kernel(<8 x double> addrspace(1)* nocapture %a, <8 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <8 x double> addrspace(1)* %a, i64 %2
  %4 = load <8 x double> addrspace(1)* %3, align 64, !tbaa !93
  %5 = getelementptr inbounds <8 x double> addrspace(1)* %b, i64 %2
  %6 = load <8 x double> addrspace(1)* %5, align 64, !tbaa !93
  %7 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %4, <8 x double> %6, <8 x double> %6)
  store <8 x double> %7, <8 x double> addrspace(1)* %3, align 64, !tbaa !93
  ret void
}

declare <8 x double> @llvm.fmuladd.v8f64(<8 x double>, <8 x double>, <8 x double>) nounwind readnone

define cc76 void @vect16_dp_add_kernel(<16 x double> addrspace(1)* nocapture %a, <16 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <16 x double> addrspace(1)* %a, i64 %2
  %4 = load <16 x double> addrspace(1)* %3, align 128, !tbaa !93
  %5 = getelementptr inbounds <16 x double> addrspace(1)* %b, i64 %2
  %6 = load <16 x double> addrspace(1)* %5, align 128, !tbaa !93
  %7 = fadd <16 x double> %4, %6
  store <16 x double> %7, <16 x double> addrspace(1)* %3, align 128, !tbaa !93
  ret void
}

define cc76 void @vect16_dp_sub_kernel(<16 x double> addrspace(1)* nocapture %a, <16 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <16 x double> addrspace(1)* %a, i64 %2
  %4 = load <16 x double> addrspace(1)* %3, align 128, !tbaa !93
  %5 = getelementptr inbounds <16 x double> addrspace(1)* %b, i64 %2
  %6 = load <16 x double> addrspace(1)* %5, align 128, !tbaa !93
  %7 = fsub <16 x double> %4, %6
  store <16 x double> %7, <16 x double> addrspace(1)* %3, align 128, !tbaa !93
  ret void
}

define cc76 void @vect16_dp_mul_kernel(<16 x double> addrspace(1)* nocapture %a, <16 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <16 x double> addrspace(1)* %a, i64 %2
  %4 = load <16 x double> addrspace(1)* %3, align 128, !tbaa !93
  %5 = getelementptr inbounds <16 x double> addrspace(1)* %b, i64 %2
  %6 = load <16 x double> addrspace(1)* %5, align 128, !tbaa !93
  %7 = fmul <16 x double> %4, %6
  store <16 x double> %7, <16 x double> addrspace(1)* %3, align 128, !tbaa !93
  ret void
}

define cc76 void @vect16_dp_div_kernel(<16 x double> addrspace(1)* nocapture %a, <16 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <16 x double> addrspace(1)* %a, i64 %2
  %4 = load <16 x double> addrspace(1)* %3, align 128, !tbaa !93
  %5 = getelementptr inbounds <16 x double> addrspace(1)* %b, i64 %2
  %6 = load <16 x double> addrspace(1)* %5, align 128, !tbaa !93
  %7 = fdiv <16 x double> %4, %6
  store <16 x double> %7, <16 x double> addrspace(1)* %3, align 128, !tbaa !93
  ret void
}

define cc76 void @vect16_dp_mad_kernel(<16 x double> addrspace(1)* nocapture %a, <16 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <16 x double> addrspace(1)* %a, i64 %2
  %4 = load <16 x double> addrspace(1)* %3, align 128, !tbaa !93
  %5 = getelementptr inbounds <16 x double> addrspace(1)* %b, i64 %2
  %6 = load <16 x double> addrspace(1)* %5, align 128, !tbaa !93
  %7 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %4, <16 x double> %6, <16 x double> %6)
  store <16 x double> %7, <16 x double> addrspace(1)* %3, align 128, !tbaa !93
  ret void
}

declare <16 x double> @llvm.fmuladd.v16f64(<16 x double>, <16 x double>, <16 x double>) nounwind readnone

define cc76 void @scalar_dp_add_iter_8192_kernel(double addrspace(1)* nocapture %a, double addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds double addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds double addrspace(1)* %b, i64 %2
  %.pre = load double addrspace(1)* %3, align 8, !tbaa !92
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi double [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load double addrspace(1)* %4, align 8, !tbaa !92
  %8 = fadd double %6, %7
  store double %8, double addrspace(1)* %3, align 8, !tbaa !92
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 8192
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @scalar_dp_sub_iter_8192_kernel(double addrspace(1)* nocapture %a, double addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds double addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds double addrspace(1)* %b, i64 %2
  %.pre = load double addrspace(1)* %3, align 8, !tbaa !92
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi double [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load double addrspace(1)* %4, align 8, !tbaa !92
  %8 = fsub double %6, %7
  store double %8, double addrspace(1)* %3, align 8, !tbaa !92
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 8192
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @scalar_dp_mul_iter_8192_kernel(double addrspace(1)* nocapture %a, double addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds double addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds double addrspace(1)* %b, i64 %2
  %.pre = load double addrspace(1)* %3, align 8, !tbaa !92
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi double [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load double addrspace(1)* %4, align 8, !tbaa !92
  %8 = fmul double %6, %7
  store double %8, double addrspace(1)* %3, align 8, !tbaa !92
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 8192
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @scalar_dp_div_iter_8192_kernel(double addrspace(1)* nocapture %a, double addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds double addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds double addrspace(1)* %b, i64 %2
  %.pre = load double addrspace(1)* %3, align 8, !tbaa !92
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi double [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load double addrspace(1)* %4, align 8, !tbaa !92
  %8 = fdiv double %6, %7
  store double %8, double addrspace(1)* %3, align 8, !tbaa !92
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 8192
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @scalar_dp_mad_iter_8192_kernel(double addrspace(1)* nocapture %a, double addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds double addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds double addrspace(1)* %b, i64 %2
  %.pre = load double addrspace(1)* %3, align 8, !tbaa !92
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi double [ %.pre, %0 ], [ %8, %5 ]
  %j.08 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load double addrspace(1)* %4, align 8, !tbaa !92
  %8 = tail call double @llvm.fmuladd.f64(double %6, double %7, double %7)
  store double %8, double addrspace(1)* %3, align 8, !tbaa !92
  %9 = add nsw i32 %j.08, 1
  %10 = icmp slt i32 %9, 8192
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect2_dp_add_iter_8192_kernel(<2 x double> addrspace(1)* nocapture %a, <2 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <2 x double> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <2 x double> addrspace(1)* %b, i64 %2
  %.pre = load <2 x double> addrspace(1)* %3, align 16, !tbaa !93
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <2 x double> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !93
  %8 = fadd <2 x double> %6, %7
  store <2 x double> %8, <2 x double> addrspace(1)* %3, align 16, !tbaa !93
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 8192
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect2_dp_sub_iter_8192_kernel(<2 x double> addrspace(1)* nocapture %a, <2 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <2 x double> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <2 x double> addrspace(1)* %b, i64 %2
  %.pre = load <2 x double> addrspace(1)* %3, align 16, !tbaa !93
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <2 x double> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !93
  %8 = fsub <2 x double> %6, %7
  store <2 x double> %8, <2 x double> addrspace(1)* %3, align 16, !tbaa !93
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 8192
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect2_dp_mul_iter_8192_kernel(<2 x double> addrspace(1)* nocapture %a, <2 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <2 x double> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <2 x double> addrspace(1)* %b, i64 %2
  %.pre = load <2 x double> addrspace(1)* %3, align 16, !tbaa !93
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <2 x double> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !93
  %8 = fmul <2 x double> %6, %7
  store <2 x double> %8, <2 x double> addrspace(1)* %3, align 16, !tbaa !93
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 8192
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect2_dp_div_iter_8192_kernel(<2 x double> addrspace(1)* nocapture %a, <2 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <2 x double> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <2 x double> addrspace(1)* %b, i64 %2
  %.pre = load <2 x double> addrspace(1)* %3, align 16, !tbaa !93
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <2 x double> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !93
  %8 = fdiv <2 x double> %6, %7
  store <2 x double> %8, <2 x double> addrspace(1)* %3, align 16, !tbaa !93
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 8192
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect2_dp_mad_iter_8192_kernel(<2 x double> addrspace(1)* nocapture %a, <2 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <2 x double> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <2 x double> addrspace(1)* %b, i64 %2
  %.pre = load <2 x double> addrspace(1)* %3, align 16, !tbaa !93
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <2 x double> [ %.pre, %0 ], [ %8, %5 ]
  %j.08 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !93
  %8 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %6, <2 x double> %7, <2 x double> %7)
  store <2 x double> %8, <2 x double> addrspace(1)* %3, align 16, !tbaa !93
  %9 = add nsw i32 %j.08, 1
  %10 = icmp slt i32 %9, 8192
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect4_dp_add_iter_8192_kernel(<4 x double> addrspace(1)* nocapture %a, <4 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <4 x double> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <4 x double> addrspace(1)* %b, i64 %2
  %.pre = load <4 x double> addrspace(1)* %3, align 32, !tbaa !93
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <4 x double> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !93
  %8 = fadd <4 x double> %6, %7
  store <4 x double> %8, <4 x double> addrspace(1)* %3, align 32, !tbaa !93
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 8192
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect4_dp_sub_iter_8192_kernel(<4 x double> addrspace(1)* nocapture %a, <4 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <4 x double> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <4 x double> addrspace(1)* %b, i64 %2
  %.pre = load <4 x double> addrspace(1)* %3, align 32, !tbaa !93
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <4 x double> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !93
  %8 = fsub <4 x double> %6, %7
  store <4 x double> %8, <4 x double> addrspace(1)* %3, align 32, !tbaa !93
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 8192
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect4_dp_mul_iter_8192_kernel(<4 x double> addrspace(1)* nocapture %a, <4 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <4 x double> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <4 x double> addrspace(1)* %b, i64 %2
  %.pre = load <4 x double> addrspace(1)* %3, align 32, !tbaa !93
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <4 x double> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !93
  %8 = fmul <4 x double> %6, %7
  store <4 x double> %8, <4 x double> addrspace(1)* %3, align 32, !tbaa !93
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 8192
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect4_dp_div_iter_8192_kernel(<4 x double> addrspace(1)* nocapture %a, <4 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <4 x double> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <4 x double> addrspace(1)* %b, i64 %2
  %.pre = load <4 x double> addrspace(1)* %3, align 32, !tbaa !93
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <4 x double> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !93
  %8 = fdiv <4 x double> %6, %7
  store <4 x double> %8, <4 x double> addrspace(1)* %3, align 32, !tbaa !93
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 8192
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect4_dp_mad_iter_8192_kernel(<4 x double> addrspace(1)* nocapture %a, <4 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <4 x double> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <4 x double> addrspace(1)* %b, i64 %2
  %.pre = load <4 x double> addrspace(1)* %3, align 32, !tbaa !93
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <4 x double> [ %.pre, %0 ], [ %8, %5 ]
  %j.08 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !93
  %8 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %6, <4 x double> %7, <4 x double> %7)
  store <4 x double> %8, <4 x double> addrspace(1)* %3, align 32, !tbaa !93
  %9 = add nsw i32 %j.08, 1
  %10 = icmp slt i32 %9, 8192
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect8_dp_add_iter_8192_kernel(<8 x double> addrspace(1)* nocapture %a, <8 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <8 x double> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <8 x double> addrspace(1)* %b, i64 %2
  %.pre = load <8 x double> addrspace(1)* %3, align 64, !tbaa !93
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <8 x double> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !93
  %8 = fadd <8 x double> %6, %7
  store <8 x double> %8, <8 x double> addrspace(1)* %3, align 64, !tbaa !93
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 8192
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect8_dp_sub_iter_8192_kernel(<8 x double> addrspace(1)* nocapture %a, <8 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <8 x double> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <8 x double> addrspace(1)* %b, i64 %2
  %.pre = load <8 x double> addrspace(1)* %3, align 64, !tbaa !93
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <8 x double> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !93
  %8 = fsub <8 x double> %6, %7
  store <8 x double> %8, <8 x double> addrspace(1)* %3, align 64, !tbaa !93
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 8192
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect8_dp_mul_iter_8192_kernel(<8 x double> addrspace(1)* nocapture %a, <8 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <8 x double> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <8 x double> addrspace(1)* %b, i64 %2
  %.pre = load <8 x double> addrspace(1)* %3, align 64, !tbaa !93
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <8 x double> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !93
  %8 = fmul <8 x double> %6, %7
  store <8 x double> %8, <8 x double> addrspace(1)* %3, align 64, !tbaa !93
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 8192
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect8_dp_div_iter_8192_kernel(<8 x double> addrspace(1)* nocapture %a, <8 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <8 x double> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <8 x double> addrspace(1)* %b, i64 %2
  %.pre = load <8 x double> addrspace(1)* %3, align 64, !tbaa !93
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <8 x double> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !93
  %8 = fdiv <8 x double> %6, %7
  store <8 x double> %8, <8 x double> addrspace(1)* %3, align 64, !tbaa !93
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 8192
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect8_dp_mad_iter_8192_kernel(<8 x double> addrspace(1)* nocapture %a, <8 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <8 x double> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <8 x double> addrspace(1)* %b, i64 %2
  %.pre = load <8 x double> addrspace(1)* %3, align 64, !tbaa !93
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <8 x double> [ %.pre, %0 ], [ %8, %5 ]
  %j.08 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !93
  %8 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %6, <8 x double> %7, <8 x double> %7)
  store <8 x double> %8, <8 x double> addrspace(1)* %3, align 64, !tbaa !93
  %9 = add nsw i32 %j.08, 1
  %10 = icmp slt i32 %9, 8192
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect16_dp_add_iter_8192_kernel(<16 x double> addrspace(1)* nocapture %a, <16 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <16 x double> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <16 x double> addrspace(1)* %b, i64 %2
  %.pre = load <16 x double> addrspace(1)* %3, align 128, !tbaa !93
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <16 x double> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !93
  %8 = fadd <16 x double> %6, %7
  store <16 x double> %8, <16 x double> addrspace(1)* %3, align 128, !tbaa !93
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 8192
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect16_dp_sub_iter_8192_kernel(<16 x double> addrspace(1)* nocapture %a, <16 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <16 x double> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <16 x double> addrspace(1)* %b, i64 %2
  %.pre = load <16 x double> addrspace(1)* %3, align 128, !tbaa !93
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <16 x double> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !93
  %8 = fsub <16 x double> %6, %7
  store <16 x double> %8, <16 x double> addrspace(1)* %3, align 128, !tbaa !93
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 8192
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect16_dp_mul_iter_8192_kernel(<16 x double> addrspace(1)* nocapture %a, <16 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <16 x double> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <16 x double> addrspace(1)* %b, i64 %2
  %.pre = load <16 x double> addrspace(1)* %3, align 128, !tbaa !93
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <16 x double> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !93
  %8 = fmul <16 x double> %6, %7
  store <16 x double> %8, <16 x double> addrspace(1)* %3, align 128, !tbaa !93
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 8192
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect16_dp_div_iter_8192_kernel(<16 x double> addrspace(1)* nocapture %a, <16 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <16 x double> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <16 x double> addrspace(1)* %b, i64 %2
  %.pre = load <16 x double> addrspace(1)* %3, align 128, !tbaa !93
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <16 x double> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !93
  %8 = fdiv <16 x double> %6, %7
  store <16 x double> %8, <16 x double> addrspace(1)* %3, align 128, !tbaa !93
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 8192
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect16_dp_mad_iter_8192_kernel(<16 x double> addrspace(1)* nocapture %a, <16 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <16 x double> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <16 x double> addrspace(1)* %b, i64 %2
  %.pre = load <16 x double> addrspace(1)* %3, align 128, !tbaa !93
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <16 x double> [ %.pre, %0 ], [ %8, %5 ]
  %j.08 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !93
  %8 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %6, <16 x double> %7, <16 x double> %7)
  store <16 x double> %8, <16 x double> addrspace(1)* %3, align 128, !tbaa !93
  %9 = add nsw i32 %j.08, 1
  %10 = icmp slt i32 %9, 8192
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @scalar_dp_add_iter_1024_kernel(double addrspace(1)* nocapture %a, double addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds double addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds double addrspace(1)* %b, i64 %2
  %.pre = load double addrspace(1)* %3, align 8, !tbaa !92
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi double [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load double addrspace(1)* %4, align 8, !tbaa !92
  %8 = fadd double %6, %7
  store double %8, double addrspace(1)* %3, align 8, !tbaa !92
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 1024
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @scalar_dp_sub_iter_1024_kernel(double addrspace(1)* nocapture %a, double addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds double addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds double addrspace(1)* %b, i64 %2
  %.pre = load double addrspace(1)* %3, align 8, !tbaa !92
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi double [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load double addrspace(1)* %4, align 8, !tbaa !92
  %8 = fsub double %6, %7
  store double %8, double addrspace(1)* %3, align 8, !tbaa !92
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 1024
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @scalar_dp_mul_iter_1024_kernel(double addrspace(1)* nocapture %a, double addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds double addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds double addrspace(1)* %b, i64 %2
  %.pre = load double addrspace(1)* %3, align 8, !tbaa !92
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi double [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load double addrspace(1)* %4, align 8, !tbaa !92
  %8 = fmul double %6, %7
  store double %8, double addrspace(1)* %3, align 8, !tbaa !92
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 1024
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @scalar_dp_div_iter_1024_kernel(double addrspace(1)* nocapture %a, double addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds double addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds double addrspace(1)* %b, i64 %2
  %.pre = load double addrspace(1)* %3, align 8, !tbaa !92
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi double [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load double addrspace(1)* %4, align 8, !tbaa !92
  %8 = fdiv double %6, %7
  store double %8, double addrspace(1)* %3, align 8, !tbaa !92
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 1024
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @scalar_dp_mad_iter_1024_kernel(double addrspace(1)* nocapture %a, double addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds double addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds double addrspace(1)* %b, i64 %2
  %.pre = load double addrspace(1)* %3, align 8, !tbaa !92
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi double [ %.pre, %0 ], [ %8, %5 ]
  %j.08 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load double addrspace(1)* %4, align 8, !tbaa !92
  %8 = tail call double @llvm.fmuladd.f64(double %6, double %7, double %7)
  store double %8, double addrspace(1)* %3, align 8, !tbaa !92
  %9 = add nsw i32 %j.08, 1
  %10 = icmp slt i32 %9, 1024
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect2_dp_add_iter_1024_kernel(<2 x double> addrspace(1)* nocapture %a, <2 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <2 x double> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <2 x double> addrspace(1)* %b, i64 %2
  %.pre = load <2 x double> addrspace(1)* %3, align 16, !tbaa !93
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <2 x double> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !93
  %8 = fadd <2 x double> %6, %7
  store <2 x double> %8, <2 x double> addrspace(1)* %3, align 16, !tbaa !93
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 1024
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect2_dp_sub_iter_1024_kernel(<2 x double> addrspace(1)* nocapture %a, <2 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <2 x double> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <2 x double> addrspace(1)* %b, i64 %2
  %.pre = load <2 x double> addrspace(1)* %3, align 16, !tbaa !93
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <2 x double> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !93
  %8 = fsub <2 x double> %6, %7
  store <2 x double> %8, <2 x double> addrspace(1)* %3, align 16, !tbaa !93
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 1024
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect2_dp_mul_iter_1024_kernel(<2 x double> addrspace(1)* nocapture %a, <2 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <2 x double> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <2 x double> addrspace(1)* %b, i64 %2
  %.pre = load <2 x double> addrspace(1)* %3, align 16, !tbaa !93
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <2 x double> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !93
  %8 = fmul <2 x double> %6, %7
  store <2 x double> %8, <2 x double> addrspace(1)* %3, align 16, !tbaa !93
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 1024
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect2_dp_div_iter_1024_kernel(<2 x double> addrspace(1)* nocapture %a, <2 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <2 x double> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <2 x double> addrspace(1)* %b, i64 %2
  %.pre = load <2 x double> addrspace(1)* %3, align 16, !tbaa !93
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <2 x double> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !93
  %8 = fdiv <2 x double> %6, %7
  store <2 x double> %8, <2 x double> addrspace(1)* %3, align 16, !tbaa !93
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 1024
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect2_dp_mad_iter_1024_kernel(<2 x double> addrspace(1)* nocapture %a, <2 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <2 x double> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <2 x double> addrspace(1)* %b, i64 %2
  %.pre = load <2 x double> addrspace(1)* %3, align 16, !tbaa !93
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <2 x double> [ %.pre, %0 ], [ %8, %5 ]
  %j.08 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <2 x double> addrspace(1)* %4, align 16, !tbaa !93
  %8 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %6, <2 x double> %7, <2 x double> %7)
  store <2 x double> %8, <2 x double> addrspace(1)* %3, align 16, !tbaa !93
  %9 = add nsw i32 %j.08, 1
  %10 = icmp slt i32 %9, 1024
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect4_dp_add_iter_1024_kernel(<4 x double> addrspace(1)* nocapture %a, <4 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <4 x double> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <4 x double> addrspace(1)* %b, i64 %2
  %.pre = load <4 x double> addrspace(1)* %3, align 32, !tbaa !93
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <4 x double> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !93
  %8 = fadd <4 x double> %6, %7
  store <4 x double> %8, <4 x double> addrspace(1)* %3, align 32, !tbaa !93
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 1024
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect4_dp_sub_iter_1024_kernel(<4 x double> addrspace(1)* nocapture %a, <4 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <4 x double> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <4 x double> addrspace(1)* %b, i64 %2
  %.pre = load <4 x double> addrspace(1)* %3, align 32, !tbaa !93
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <4 x double> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !93
  %8 = fsub <4 x double> %6, %7
  store <4 x double> %8, <4 x double> addrspace(1)* %3, align 32, !tbaa !93
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 1024
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect4_dp_mul_iter_1024_kernel(<4 x double> addrspace(1)* nocapture %a, <4 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <4 x double> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <4 x double> addrspace(1)* %b, i64 %2
  %.pre = load <4 x double> addrspace(1)* %3, align 32, !tbaa !93
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <4 x double> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !93
  %8 = fmul <4 x double> %6, %7
  store <4 x double> %8, <4 x double> addrspace(1)* %3, align 32, !tbaa !93
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 1024
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect4_dp_div_iter_1024_kernel(<4 x double> addrspace(1)* nocapture %a, <4 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <4 x double> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <4 x double> addrspace(1)* %b, i64 %2
  %.pre = load <4 x double> addrspace(1)* %3, align 32, !tbaa !93
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <4 x double> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !93
  %8 = fdiv <4 x double> %6, %7
  store <4 x double> %8, <4 x double> addrspace(1)* %3, align 32, !tbaa !93
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 1024
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect4_dp_mad_iter_1024_kernel(<4 x double> addrspace(1)* nocapture %a, <4 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <4 x double> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <4 x double> addrspace(1)* %b, i64 %2
  %.pre = load <4 x double> addrspace(1)* %3, align 32, !tbaa !93
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <4 x double> [ %.pre, %0 ], [ %8, %5 ]
  %j.08 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <4 x double> addrspace(1)* %4, align 32, !tbaa !93
  %8 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %6, <4 x double> %7, <4 x double> %7)
  store <4 x double> %8, <4 x double> addrspace(1)* %3, align 32, !tbaa !93
  %9 = add nsw i32 %j.08, 1
  %10 = icmp slt i32 %9, 1024
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect8_dp_add_iter_1024_kernel(<8 x double> addrspace(1)* nocapture %a, <8 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <8 x double> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <8 x double> addrspace(1)* %b, i64 %2
  %.pre = load <8 x double> addrspace(1)* %3, align 64, !tbaa !93
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <8 x double> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !93
  %8 = fadd <8 x double> %6, %7
  store <8 x double> %8, <8 x double> addrspace(1)* %3, align 64, !tbaa !93
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 1024
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect8_dp_sub_iter_1024_kernel(<8 x double> addrspace(1)* nocapture %a, <8 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <8 x double> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <8 x double> addrspace(1)* %b, i64 %2
  %.pre = load <8 x double> addrspace(1)* %3, align 64, !tbaa !93
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <8 x double> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !93
  %8 = fsub <8 x double> %6, %7
  store <8 x double> %8, <8 x double> addrspace(1)* %3, align 64, !tbaa !93
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 1024
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect8_dp_mul_iter_1024_kernel(<8 x double> addrspace(1)* nocapture %a, <8 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <8 x double> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <8 x double> addrspace(1)* %b, i64 %2
  %.pre = load <8 x double> addrspace(1)* %3, align 64, !tbaa !93
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <8 x double> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !93
  %8 = fmul <8 x double> %6, %7
  store <8 x double> %8, <8 x double> addrspace(1)* %3, align 64, !tbaa !93
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 1024
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect8_dp_div_iter_1024_kernel(<8 x double> addrspace(1)* nocapture %a, <8 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <8 x double> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <8 x double> addrspace(1)* %b, i64 %2
  %.pre = load <8 x double> addrspace(1)* %3, align 64, !tbaa !93
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <8 x double> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !93
  %8 = fdiv <8 x double> %6, %7
  store <8 x double> %8, <8 x double> addrspace(1)* %3, align 64, !tbaa !93
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 1024
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect8_dp_mad_iter_1024_kernel(<8 x double> addrspace(1)* nocapture %a, <8 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <8 x double> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <8 x double> addrspace(1)* %b, i64 %2
  %.pre = load <8 x double> addrspace(1)* %3, align 64, !tbaa !93
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <8 x double> [ %.pre, %0 ], [ %8, %5 ]
  %j.08 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <8 x double> addrspace(1)* %4, align 64, !tbaa !93
  %8 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %6, <8 x double> %7, <8 x double> %7)
  store <8 x double> %8, <8 x double> addrspace(1)* %3, align 64, !tbaa !93
  %9 = add nsw i32 %j.08, 1
  %10 = icmp slt i32 %9, 1024
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect16_dp_add_iter_1024_kernel(<16 x double> addrspace(1)* nocapture %a, <16 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <16 x double> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <16 x double> addrspace(1)* %b, i64 %2
  %.pre = load <16 x double> addrspace(1)* %3, align 128, !tbaa !93
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <16 x double> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !93
  %8 = fadd <16 x double> %6, %7
  store <16 x double> %8, <16 x double> addrspace(1)* %3, align 128, !tbaa !93
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 1024
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect16_dp_sub_iter_1024_kernel(<16 x double> addrspace(1)* nocapture %a, <16 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <16 x double> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <16 x double> addrspace(1)* %b, i64 %2
  %.pre = load <16 x double> addrspace(1)* %3, align 128, !tbaa !93
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <16 x double> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !93
  %8 = fsub <16 x double> %6, %7
  store <16 x double> %8, <16 x double> addrspace(1)* %3, align 128, !tbaa !93
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 1024
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect16_dp_mul_iter_1024_kernel(<16 x double> addrspace(1)* nocapture %a, <16 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <16 x double> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <16 x double> addrspace(1)* %b, i64 %2
  %.pre = load <16 x double> addrspace(1)* %3, align 128, !tbaa !93
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <16 x double> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !93
  %8 = fmul <16 x double> %6, %7
  store <16 x double> %8, <16 x double> addrspace(1)* %3, align 128, !tbaa !93
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 1024
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect16_dp_div_iter_1024_kernel(<16 x double> addrspace(1)* nocapture %a, <16 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <16 x double> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <16 x double> addrspace(1)* %b, i64 %2
  %.pre = load <16 x double> addrspace(1)* %3, align 128, !tbaa !93
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <16 x double> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !93
  %8 = fdiv <16 x double> %6, %7
  store <16 x double> %8, <16 x double> addrspace(1)* %3, align 128, !tbaa !93
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 1024
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect16_dp_mad_iter_1024_kernel(<16 x double> addrspace(1)* nocapture %a, <16 x double> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <16 x double> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <16 x double> addrspace(1)* %b, i64 %2
  %.pre = load <16 x double> addrspace(1)* %3, align 128, !tbaa !93
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <16 x double> [ %.pre, %0 ], [ %8, %5 ]
  %j.08 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <16 x double> addrspace(1)* %4, align 128, !tbaa !93
  %8 = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %6, <16 x double> %7, <16 x double> %7)
  store <16 x double> %8, <16 x double> addrspace(1)* %3, align 128, !tbaa !93
  %9 = add nsw i32 %j.08, 1
  %10 = icmp slt i32 %9, 1024
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

!opencl.kernels = !{!0, !7, !8, !9, !10, !11, !14, !15, !16, !17, !18, !21, !22, !23, !24, !25, !28, !29, !30, !31, !32, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88}
!opencl.enable.FP_CONTRACT = !{}
!opencl.spir.version = !{!89}
!opencl.ocl.version = !{!89}
!opencl.used.extensions = !{!90}
!opencl.used.optional.core.features = !{!91}
!opencl.compiler.options = !{!90}

!0 = metadata !{void (double addrspace(1)*, double addrspace(1)*)* @scalar_dp_add_kernel, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"double*", metadata !"double*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_base_type", metadata !"double*", metadata !"double*"}
!6 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b"}
!7 = metadata !{void (double addrspace(1)*, double addrspace(1)*)* @scalar_dp_sub_kernel, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!8 = metadata !{void (double addrspace(1)*, double addrspace(1)*)* @scalar_dp_mul_kernel, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!9 = metadata !{void (double addrspace(1)*, double addrspace(1)*)* @scalar_dp_div_kernel, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!10 = metadata !{void (double addrspace(1)*, double addrspace(1)*)* @scalar_dp_mad_kernel, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!11 = metadata !{void (<2 x double> addrspace(1)*, <2 x double> addrspace(1)*)* @vect2_dp_add_kernel, metadata !1, metadata !2, metadata !12, metadata !4, metadata !13, metadata !6}
!12 = metadata !{metadata !"kernel_arg_type", metadata !"double2*", metadata !"double2*"}
!13 = metadata !{metadata !"kernel_arg_base_type", metadata !"double2*", metadata !"double2*"}
!14 = metadata !{void (<2 x double> addrspace(1)*, <2 x double> addrspace(1)*)* @vect2_dp_sub_kernel, metadata !1, metadata !2, metadata !12, metadata !4, metadata !13, metadata !6}
!15 = metadata !{void (<2 x double> addrspace(1)*, <2 x double> addrspace(1)*)* @vect2_dp_mul_kernel, metadata !1, metadata !2, metadata !12, metadata !4, metadata !13, metadata !6}
!16 = metadata !{void (<2 x double> addrspace(1)*, <2 x double> addrspace(1)*)* @vect2_dp_div_kernel, metadata !1, metadata !2, metadata !12, metadata !4, metadata !13, metadata !6}
!17 = metadata !{void (<2 x double> addrspace(1)*, <2 x double> addrspace(1)*)* @vect2_dp_mad_kernel, metadata !1, metadata !2, metadata !12, metadata !4, metadata !13, metadata !6}
!18 = metadata !{void (<4 x double> addrspace(1)*, <4 x double> addrspace(1)*)* @vect4_dp_add_kernel, metadata !1, metadata !2, metadata !19, metadata !4, metadata !20, metadata !6}
!19 = metadata !{metadata !"kernel_arg_type", metadata !"double4*", metadata !"double4*"}
!20 = metadata !{metadata !"kernel_arg_base_type", metadata !"double4*", metadata !"double4*"}
!21 = metadata !{void (<4 x double> addrspace(1)*, <4 x double> addrspace(1)*)* @vect4_dp_sub_kernel, metadata !1, metadata !2, metadata !19, metadata !4, metadata !20, metadata !6}
!22 = metadata !{void (<4 x double> addrspace(1)*, <4 x double> addrspace(1)*)* @vect4_dp_mul_kernel, metadata !1, metadata !2, metadata !19, metadata !4, metadata !20, metadata !6}
!23 = metadata !{void (<4 x double> addrspace(1)*, <4 x double> addrspace(1)*)* @vect4_dp_div_kernel, metadata !1, metadata !2, metadata !19, metadata !4, metadata !20, metadata !6}
!24 = metadata !{void (<4 x double> addrspace(1)*, <4 x double> addrspace(1)*)* @vect4_dp_mad_kernel, metadata !1, metadata !2, metadata !19, metadata !4, metadata !20, metadata !6}
!25 = metadata !{void (<8 x double> addrspace(1)*, <8 x double> addrspace(1)*)* @vect8_dp_add_kernel, metadata !1, metadata !2, metadata !26, metadata !4, metadata !27, metadata !6}
!26 = metadata !{metadata !"kernel_arg_type", metadata !"double8*", metadata !"double8*"}
!27 = metadata !{metadata !"kernel_arg_base_type", metadata !"double8*", metadata !"double8*"}
!28 = metadata !{void (<8 x double> addrspace(1)*, <8 x double> addrspace(1)*)* @vect8_dp_sub_kernel, metadata !1, metadata !2, metadata !26, metadata !4, metadata !27, metadata !6}
!29 = metadata !{void (<8 x double> addrspace(1)*, <8 x double> addrspace(1)*)* @vect8_dp_mul_kernel, metadata !1, metadata !2, metadata !26, metadata !4, metadata !27, metadata !6}
!30 = metadata !{void (<8 x double> addrspace(1)*, <8 x double> addrspace(1)*)* @vect8_dp_div_kernel, metadata !1, metadata !2, metadata !26, metadata !4, metadata !27, metadata !6}
!31 = metadata !{void (<8 x double> addrspace(1)*, <8 x double> addrspace(1)*)* @vect8_dp_mad_kernel, metadata !1, metadata !2, metadata !26, metadata !4, metadata !27, metadata !6}
!32 = metadata !{void (<16 x double> addrspace(1)*, <16 x double> addrspace(1)*)* @vect16_dp_add_kernel, metadata !1, metadata !2, metadata !33, metadata !4, metadata !34, metadata !6}
!33 = metadata !{metadata !"kernel_arg_type", metadata !"double16*", metadata !"double16*"}
!34 = metadata !{metadata !"kernel_arg_base_type", metadata !"double16*", metadata !"double16*"}
!35 = metadata !{void (<16 x double> addrspace(1)*, <16 x double> addrspace(1)*)* @vect16_dp_sub_kernel, metadata !1, metadata !2, metadata !33, metadata !4, metadata !34, metadata !6}
!36 = metadata !{void (<16 x double> addrspace(1)*, <16 x double> addrspace(1)*)* @vect16_dp_mul_kernel, metadata !1, metadata !2, metadata !33, metadata !4, metadata !34, metadata !6}
!37 = metadata !{void (<16 x double> addrspace(1)*, <16 x double> addrspace(1)*)* @vect16_dp_div_kernel, metadata !1, metadata !2, metadata !33, metadata !4, metadata !34, metadata !6}
!38 = metadata !{void (<16 x double> addrspace(1)*, <16 x double> addrspace(1)*)* @vect16_dp_mad_kernel, metadata !1, metadata !2, metadata !33, metadata !4, metadata !34, metadata !6}
!39 = metadata !{void (double addrspace(1)*, double addrspace(1)*)* @scalar_dp_add_iter_8192_kernel, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!40 = metadata !{void (double addrspace(1)*, double addrspace(1)*)* @scalar_dp_sub_iter_8192_kernel, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!41 = metadata !{void (double addrspace(1)*, double addrspace(1)*)* @scalar_dp_mul_iter_8192_kernel, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!42 = metadata !{void (double addrspace(1)*, double addrspace(1)*)* @scalar_dp_div_iter_8192_kernel, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!43 = metadata !{void (double addrspace(1)*, double addrspace(1)*)* @scalar_dp_mad_iter_8192_kernel, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!44 = metadata !{void (<2 x double> addrspace(1)*, <2 x double> addrspace(1)*)* @vect2_dp_add_iter_8192_kernel, metadata !1, metadata !2, metadata !12, metadata !4, metadata !13, metadata !6}
!45 = metadata !{void (<2 x double> addrspace(1)*, <2 x double> addrspace(1)*)* @vect2_dp_sub_iter_8192_kernel, metadata !1, metadata !2, metadata !12, metadata !4, metadata !13, metadata !6}
!46 = metadata !{void (<2 x double> addrspace(1)*, <2 x double> addrspace(1)*)* @vect2_dp_mul_iter_8192_kernel, metadata !1, metadata !2, metadata !12, metadata !4, metadata !13, metadata !6}
!47 = metadata !{void (<2 x double> addrspace(1)*, <2 x double> addrspace(1)*)* @vect2_dp_div_iter_8192_kernel, metadata !1, metadata !2, metadata !12, metadata !4, metadata !13, metadata !6}
!48 = metadata !{void (<2 x double> addrspace(1)*, <2 x double> addrspace(1)*)* @vect2_dp_mad_iter_8192_kernel, metadata !1, metadata !2, metadata !12, metadata !4, metadata !13, metadata !6}
!49 = metadata !{void (<4 x double> addrspace(1)*, <4 x double> addrspace(1)*)* @vect4_dp_add_iter_8192_kernel, metadata !1, metadata !2, metadata !19, metadata !4, metadata !20, metadata !6}
!50 = metadata !{void (<4 x double> addrspace(1)*, <4 x double> addrspace(1)*)* @vect4_dp_sub_iter_8192_kernel, metadata !1, metadata !2, metadata !19, metadata !4, metadata !20, metadata !6}
!51 = metadata !{void (<4 x double> addrspace(1)*, <4 x double> addrspace(1)*)* @vect4_dp_mul_iter_8192_kernel, metadata !1, metadata !2, metadata !19, metadata !4, metadata !20, metadata !6}
!52 = metadata !{void (<4 x double> addrspace(1)*, <4 x double> addrspace(1)*)* @vect4_dp_div_iter_8192_kernel, metadata !1, metadata !2, metadata !19, metadata !4, metadata !20, metadata !6}
!53 = metadata !{void (<4 x double> addrspace(1)*, <4 x double> addrspace(1)*)* @vect4_dp_mad_iter_8192_kernel, metadata !1, metadata !2, metadata !19, metadata !4, metadata !20, metadata !6}
!54 = metadata !{void (<8 x double> addrspace(1)*, <8 x double> addrspace(1)*)* @vect8_dp_add_iter_8192_kernel, metadata !1, metadata !2, metadata !26, metadata !4, metadata !27, metadata !6}
!55 = metadata !{void (<8 x double> addrspace(1)*, <8 x double> addrspace(1)*)* @vect8_dp_sub_iter_8192_kernel, metadata !1, metadata !2, metadata !26, metadata !4, metadata !27, metadata !6}
!56 = metadata !{void (<8 x double> addrspace(1)*, <8 x double> addrspace(1)*)* @vect8_dp_mul_iter_8192_kernel, metadata !1, metadata !2, metadata !26, metadata !4, metadata !27, metadata !6}
!57 = metadata !{void (<8 x double> addrspace(1)*, <8 x double> addrspace(1)*)* @vect8_dp_div_iter_8192_kernel, metadata !1, metadata !2, metadata !26, metadata !4, metadata !27, metadata !6}
!58 = metadata !{void (<8 x double> addrspace(1)*, <8 x double> addrspace(1)*)* @vect8_dp_mad_iter_8192_kernel, metadata !1, metadata !2, metadata !26, metadata !4, metadata !27, metadata !6}
!59 = metadata !{void (<16 x double> addrspace(1)*, <16 x double> addrspace(1)*)* @vect16_dp_add_iter_8192_kernel, metadata !1, metadata !2, metadata !33, metadata !4, metadata !34, metadata !6}
!60 = metadata !{void (<16 x double> addrspace(1)*, <16 x double> addrspace(1)*)* @vect16_dp_sub_iter_8192_kernel, metadata !1, metadata !2, metadata !33, metadata !4, metadata !34, metadata !6}
!61 = metadata !{void (<16 x double> addrspace(1)*, <16 x double> addrspace(1)*)* @vect16_dp_mul_iter_8192_kernel, metadata !1, metadata !2, metadata !33, metadata !4, metadata !34, metadata !6}
!62 = metadata !{void (<16 x double> addrspace(1)*, <16 x double> addrspace(1)*)* @vect16_dp_div_iter_8192_kernel, metadata !1, metadata !2, metadata !33, metadata !4, metadata !34, metadata !6}
!63 = metadata !{void (<16 x double> addrspace(1)*, <16 x double> addrspace(1)*)* @vect16_dp_mad_iter_8192_kernel, metadata !1, metadata !2, metadata !33, metadata !4, metadata !34, metadata !6}
!64 = metadata !{void (double addrspace(1)*, double addrspace(1)*)* @scalar_dp_add_iter_1024_kernel, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!65 = metadata !{void (double addrspace(1)*, double addrspace(1)*)* @scalar_dp_sub_iter_1024_kernel, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!66 = metadata !{void (double addrspace(1)*, double addrspace(1)*)* @scalar_dp_mul_iter_1024_kernel, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!67 = metadata !{void (double addrspace(1)*, double addrspace(1)*)* @scalar_dp_div_iter_1024_kernel, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!68 = metadata !{void (double addrspace(1)*, double addrspace(1)*)* @scalar_dp_mad_iter_1024_kernel, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!69 = metadata !{void (<2 x double> addrspace(1)*, <2 x double> addrspace(1)*)* @vect2_dp_add_iter_1024_kernel, metadata !1, metadata !2, metadata !12, metadata !4, metadata !13, metadata !6}
!70 = metadata !{void (<2 x double> addrspace(1)*, <2 x double> addrspace(1)*)* @vect2_dp_sub_iter_1024_kernel, metadata !1, metadata !2, metadata !12, metadata !4, metadata !13, metadata !6}
!71 = metadata !{void (<2 x double> addrspace(1)*, <2 x double> addrspace(1)*)* @vect2_dp_mul_iter_1024_kernel, metadata !1, metadata !2, metadata !12, metadata !4, metadata !13, metadata !6}
!72 = metadata !{void (<2 x double> addrspace(1)*, <2 x double> addrspace(1)*)* @vect2_dp_div_iter_1024_kernel, metadata !1, metadata !2, metadata !12, metadata !4, metadata !13, metadata !6}
!73 = metadata !{void (<2 x double> addrspace(1)*, <2 x double> addrspace(1)*)* @vect2_dp_mad_iter_1024_kernel, metadata !1, metadata !2, metadata !12, metadata !4, metadata !13, metadata !6}
!74 = metadata !{void (<4 x double> addrspace(1)*, <4 x double> addrspace(1)*)* @vect4_dp_add_iter_1024_kernel, metadata !1, metadata !2, metadata !19, metadata !4, metadata !20, metadata !6}
!75 = metadata !{void (<4 x double> addrspace(1)*, <4 x double> addrspace(1)*)* @vect4_dp_sub_iter_1024_kernel, metadata !1, metadata !2, metadata !19, metadata !4, metadata !20, metadata !6}
!76 = metadata !{void (<4 x double> addrspace(1)*, <4 x double> addrspace(1)*)* @vect4_dp_mul_iter_1024_kernel, metadata !1, metadata !2, metadata !19, metadata !4, metadata !20, metadata !6}
!77 = metadata !{void (<4 x double> addrspace(1)*, <4 x double> addrspace(1)*)* @vect4_dp_div_iter_1024_kernel, metadata !1, metadata !2, metadata !19, metadata !4, metadata !20, metadata !6}
!78 = metadata !{void (<4 x double> addrspace(1)*, <4 x double> addrspace(1)*)* @vect4_dp_mad_iter_1024_kernel, metadata !1, metadata !2, metadata !19, metadata !4, metadata !20, metadata !6}
!79 = metadata !{void (<8 x double> addrspace(1)*, <8 x double> addrspace(1)*)* @vect8_dp_add_iter_1024_kernel, metadata !1, metadata !2, metadata !26, metadata !4, metadata !27, metadata !6}
!80 = metadata !{void (<8 x double> addrspace(1)*, <8 x double> addrspace(1)*)* @vect8_dp_sub_iter_1024_kernel, metadata !1, metadata !2, metadata !26, metadata !4, metadata !27, metadata !6}
!81 = metadata !{void (<8 x double> addrspace(1)*, <8 x double> addrspace(1)*)* @vect8_dp_mul_iter_1024_kernel, metadata !1, metadata !2, metadata !26, metadata !4, metadata !27, metadata !6}
!82 = metadata !{void (<8 x double> addrspace(1)*, <8 x double> addrspace(1)*)* @vect8_dp_div_iter_1024_kernel, metadata !1, metadata !2, metadata !26, metadata !4, metadata !27, metadata !6}
!83 = metadata !{void (<8 x double> addrspace(1)*, <8 x double> addrspace(1)*)* @vect8_dp_mad_iter_1024_kernel, metadata !1, metadata !2, metadata !26, metadata !4, metadata !27, metadata !6}
!84 = metadata !{void (<16 x double> addrspace(1)*, <16 x double> addrspace(1)*)* @vect16_dp_add_iter_1024_kernel, metadata !1, metadata !2, metadata !33, metadata !4, metadata !34, metadata !6}
!85 = metadata !{void (<16 x double> addrspace(1)*, <16 x double> addrspace(1)*)* @vect16_dp_sub_iter_1024_kernel, metadata !1, metadata !2, metadata !33, metadata !4, metadata !34, metadata !6}
!86 = metadata !{void (<16 x double> addrspace(1)*, <16 x double> addrspace(1)*)* @vect16_dp_mul_iter_1024_kernel, metadata !1, metadata !2, metadata !33, metadata !4, metadata !34, metadata !6}
!87 = metadata !{void (<16 x double> addrspace(1)*, <16 x double> addrspace(1)*)* @vect16_dp_div_iter_1024_kernel, metadata !1, metadata !2, metadata !33, metadata !4, metadata !34, metadata !6}
!88 = metadata !{void (<16 x double> addrspace(1)*, <16 x double> addrspace(1)*)* @vect16_dp_mad_iter_1024_kernel, metadata !1, metadata !2, metadata !33, metadata !4, metadata !34, metadata !6}
!89 = metadata !{i32 1, i32 2}
!90 = metadata !{}
!91 = metadata !{metadata !"cl_doubles"}
!92 = metadata !{metadata !"double", metadata !93}
!93 = metadata !{metadata !"omnipotent char", metadata !94}
!94 = metadata !{metadata !"Simple C/C++ TBAA"}
