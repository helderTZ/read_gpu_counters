; ModuleID = '/tmp/qt_temp.TP8245'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024"
target triple = "spir64-unknown-unknown"

define cc76 void @scalar_sp_add_kernel(float addrspace(1)* nocapture %a, float addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds float addrspace(1)* %a, i64 %2
  %4 = load float addrspace(1)* %3, align 4, !tbaa !215
  %5 = getelementptr inbounds float addrspace(1)* %b, i64 %2
  %6 = load float addrspace(1)* %5, align 4, !tbaa !215
  %7 = fadd float %4, %6
  store float %7, float addrspace(1)* %3, align 4, !tbaa !215
  ret void
}

declare cc75 i64 @_Z13get_global_idj(i32) nounwind readnone

define cc76 void @scalar_sp_sub_kernel(float addrspace(1)* nocapture %a, float addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds float addrspace(1)* %a, i64 %2
  %4 = load float addrspace(1)* %3, align 4, !tbaa !215
  %5 = getelementptr inbounds float addrspace(1)* %b, i64 %2
  %6 = load float addrspace(1)* %5, align 4, !tbaa !215
  %7 = fsub float %4, %6
  store float %7, float addrspace(1)* %3, align 4, !tbaa !215
  ret void
}

define cc76 void @scalar_sp_mul_kernel(float addrspace(1)* nocapture %a, float addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds float addrspace(1)* %a, i64 %2
  %4 = load float addrspace(1)* %3, align 4, !tbaa !215
  %5 = getelementptr inbounds float addrspace(1)* %b, i64 %2
  %6 = load float addrspace(1)* %5, align 4, !tbaa !215
  %7 = fmul float %4, %6
  store float %7, float addrspace(1)* %3, align 4, !tbaa !215
  ret void
}

define cc76 void @scalar_sp_div_kernel(float addrspace(1)* nocapture %a, float addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds float addrspace(1)* %a, i64 %2
  %4 = load float addrspace(1)* %3, align 4, !tbaa !215
  %5 = getelementptr inbounds float addrspace(1)* %b, i64 %2
  %6 = load float addrspace(1)* %5, align 4, !tbaa !215
  %7 = fdiv float %4, %6, !fpmath !218
  store float %7, float addrspace(1)* %3, align 4, !tbaa !215
  ret void
}

define cc76 void @scalar_sp_mad_kernel(float addrspace(1)* nocapture %a, float addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds float addrspace(1)* %a, i64 %2
  %4 = load float addrspace(1)* %3, align 4, !tbaa !215
  %5 = getelementptr inbounds float addrspace(1)* %b, i64 %2
  %6 = load float addrspace(1)* %5, align 4, !tbaa !215
  %7 = tail call float @llvm.fmuladd.f32(float %4, float %6, float %6)
  store float %7, float addrspace(1)* %3, align 4, !tbaa !215
  ret void
}

declare float @llvm.fmuladd.f32(float, float, float) nounwind readnone

define cc76 void @vect2_sp_add_kernel(<2 x float> addrspace(1)* nocapture %a, <2 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <2 x float> addrspace(1)* %a, i64 %2
  %4 = load <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %5 = getelementptr inbounds <2 x float> addrspace(1)* %b, i64 %2
  %6 = load <2 x float> addrspace(1)* %5, align 8, !tbaa !216
  %7 = fadd <2 x float> %4, %6
  store <2 x float> %7, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  ret void
}

define cc76 void @vect2_sp_sub_kernel(<2 x float> addrspace(1)* nocapture %a, <2 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <2 x float> addrspace(1)* %a, i64 %2
  %4 = load <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %5 = getelementptr inbounds <2 x float> addrspace(1)* %b, i64 %2
  %6 = load <2 x float> addrspace(1)* %5, align 8, !tbaa !216
  %7 = fsub <2 x float> %4, %6
  store <2 x float> %7, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  ret void
}

define cc76 void @vect2_sp_mul_kernel(<2 x float> addrspace(1)* nocapture %a, <2 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <2 x float> addrspace(1)* %a, i64 %2
  %4 = load <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %5 = getelementptr inbounds <2 x float> addrspace(1)* %b, i64 %2
  %6 = load <2 x float> addrspace(1)* %5, align 8, !tbaa !216
  %7 = fmul <2 x float> %4, %6
  store <2 x float> %7, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  ret void
}

define cc76 void @vect2_sp_div_kernel(<2 x float> addrspace(1)* nocapture %a, <2 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <2 x float> addrspace(1)* %a, i64 %2
  %4 = load <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %5 = getelementptr inbounds <2 x float> addrspace(1)* %b, i64 %2
  %6 = load <2 x float> addrspace(1)* %5, align 8, !tbaa !216
  %7 = fdiv <2 x float> %4, %6, !fpmath !218
  store <2 x float> %7, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  ret void
}

define cc76 void @vect2_sp_mad_kernel(<2 x float> addrspace(1)* nocapture %a, <2 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <2 x float> addrspace(1)* %a, i64 %2
  %4 = load <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %5 = getelementptr inbounds <2 x float> addrspace(1)* %b, i64 %2
  %6 = load <2 x float> addrspace(1)* %5, align 8, !tbaa !216
  %7 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %4, <2 x float> %6, <2 x float> %6)
  store <2 x float> %7, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  ret void
}

declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) nounwind readnone

define cc76 void @vect4_sp_add_kernel(<4 x float> addrspace(1)* nocapture %a, <4 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <4 x float> addrspace(1)* %a, i64 %2
  %4 = load <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %5 = getelementptr inbounds <4 x float> addrspace(1)* %b, i64 %2
  %6 = load <4 x float> addrspace(1)* %5, align 16, !tbaa !216
  %7 = fadd <4 x float> %4, %6
  store <4 x float> %7, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  ret void
}

define cc76 void @vect4_sp_sub_kernel(<4 x float> addrspace(1)* nocapture %a, <4 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <4 x float> addrspace(1)* %a, i64 %2
  %4 = load <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %5 = getelementptr inbounds <4 x float> addrspace(1)* %b, i64 %2
  %6 = load <4 x float> addrspace(1)* %5, align 16, !tbaa !216
  %7 = fsub <4 x float> %4, %6
  store <4 x float> %7, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  ret void
}

define cc76 void @vect4_sp_mul_kernel(<4 x float> addrspace(1)* nocapture %a, <4 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <4 x float> addrspace(1)* %a, i64 %2
  %4 = load <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %5 = getelementptr inbounds <4 x float> addrspace(1)* %b, i64 %2
  %6 = load <4 x float> addrspace(1)* %5, align 16, !tbaa !216
  %7 = fmul <4 x float> %4, %6
  store <4 x float> %7, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  ret void
}

define cc76 void @vect4_sp_div_kernel(<4 x float> addrspace(1)* nocapture %a, <4 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <4 x float> addrspace(1)* %a, i64 %2
  %4 = load <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %5 = getelementptr inbounds <4 x float> addrspace(1)* %b, i64 %2
  %6 = load <4 x float> addrspace(1)* %5, align 16, !tbaa !216
  %7 = fdiv <4 x float> %4, %6, !fpmath !218
  store <4 x float> %7, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  ret void
}

define cc76 void @vect4_sp_mad_kernel(<4 x float> addrspace(1)* nocapture %a, <4 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <4 x float> addrspace(1)* %a, i64 %2
  %4 = load <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %5 = getelementptr inbounds <4 x float> addrspace(1)* %b, i64 %2
  %6 = load <4 x float> addrspace(1)* %5, align 16, !tbaa !216
  %7 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %4, <4 x float> %6, <4 x float> %6)
  store <4 x float> %7, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  ret void
}

declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) nounwind readnone

define cc76 void @vect8_sp_add_kernel(<8 x float> addrspace(1)* nocapture %a, <8 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <8 x float> addrspace(1)* %a, i64 %2
  %4 = load <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %5 = getelementptr inbounds <8 x float> addrspace(1)* %b, i64 %2
  %6 = load <8 x float> addrspace(1)* %5, align 32, !tbaa !216
  %7 = fadd <8 x float> %4, %6
  store <8 x float> %7, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  ret void
}

define cc76 void @vect8_sp_sub_kernel(<8 x float> addrspace(1)* nocapture %a, <8 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <8 x float> addrspace(1)* %a, i64 %2
  %4 = load <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %5 = getelementptr inbounds <8 x float> addrspace(1)* %b, i64 %2
  %6 = load <8 x float> addrspace(1)* %5, align 32, !tbaa !216
  %7 = fsub <8 x float> %4, %6
  store <8 x float> %7, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  ret void
}

define cc76 void @vect8_sp_mul_kernel(<8 x float> addrspace(1)* nocapture %a, <8 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <8 x float> addrspace(1)* %a, i64 %2
  %4 = load <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %5 = getelementptr inbounds <8 x float> addrspace(1)* %b, i64 %2
  %6 = load <8 x float> addrspace(1)* %5, align 32, !tbaa !216
  %7 = fmul <8 x float> %4, %6
  store <8 x float> %7, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  ret void
}

define cc76 void @vect8_sp_div_kernel(<8 x float> addrspace(1)* nocapture %a, <8 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <8 x float> addrspace(1)* %a, i64 %2
  %4 = load <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %5 = getelementptr inbounds <8 x float> addrspace(1)* %b, i64 %2
  %6 = load <8 x float> addrspace(1)* %5, align 32, !tbaa !216
  %7 = fdiv <8 x float> %4, %6, !fpmath !218
  store <8 x float> %7, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  ret void
}

define cc76 void @vect8_sp_mad_kernel(<8 x float> addrspace(1)* nocapture %a, <8 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <8 x float> addrspace(1)* %a, i64 %2
  %4 = load <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %5 = getelementptr inbounds <8 x float> addrspace(1)* %b, i64 %2
  %6 = load <8 x float> addrspace(1)* %5, align 32, !tbaa !216
  %7 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %4, <8 x float> %6, <8 x float> %6)
  store <8 x float> %7, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  ret void
}

declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) nounwind readnone

define cc76 void @vect16_sp_add_kernel(<16 x float> addrspace(1)* nocapture %a, <16 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <16 x float> addrspace(1)* %a, i64 %2
  %4 = load <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %5 = getelementptr inbounds <16 x float> addrspace(1)* %b, i64 %2
  %6 = load <16 x float> addrspace(1)* %5, align 64, !tbaa !216
  %7 = fadd <16 x float> %4, %6
  store <16 x float> %7, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  ret void
}

define cc76 void @vect16_sp_sub_kernel(<16 x float> addrspace(1)* nocapture %a, <16 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <16 x float> addrspace(1)* %a, i64 %2
  %4 = load <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %5 = getelementptr inbounds <16 x float> addrspace(1)* %b, i64 %2
  %6 = load <16 x float> addrspace(1)* %5, align 64, !tbaa !216
  %7 = fsub <16 x float> %4, %6
  store <16 x float> %7, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  ret void
}

define cc76 void @vect16_sp_mul_kernel(<16 x float> addrspace(1)* nocapture %a, <16 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <16 x float> addrspace(1)* %a, i64 %2
  %4 = load <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %5 = getelementptr inbounds <16 x float> addrspace(1)* %b, i64 %2
  %6 = load <16 x float> addrspace(1)* %5, align 64, !tbaa !216
  %7 = fmul <16 x float> %4, %6
  store <16 x float> %7, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  ret void
}

define cc76 void @vect16_sp_div_kernel(<16 x float> addrspace(1)* nocapture %a, <16 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <16 x float> addrspace(1)* %a, i64 %2
  %4 = load <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %5 = getelementptr inbounds <16 x float> addrspace(1)* %b, i64 %2
  %6 = load <16 x float> addrspace(1)* %5, align 64, !tbaa !216
  %7 = fdiv <16 x float> %4, %6, !fpmath !218
  store <16 x float> %7, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  ret void
}

define cc76 void @vect16_sp_mad_kernel(<16 x float> addrspace(1)* nocapture %a, <16 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <16 x float> addrspace(1)* %a, i64 %2
  %4 = load <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %5 = getelementptr inbounds <16 x float> addrspace(1)* %b, i64 %2
  %6 = load <16 x float> addrspace(1)* %5, align 64, !tbaa !216
  %7 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %4, <16 x float> %6, <16 x float> %6)
  store <16 x float> %7, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  ret void
}

declare <16 x float> @llvm.fmuladd.v16f32(<16 x float>, <16 x float>, <16 x float>) nounwind readnone

define cc76 void @scalar_sp_add_iter_8192_kernel(float addrspace(1)* nocapture %a, float addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds float addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds float addrspace(1)* %b, i64 %2
  %.pre = load float addrspace(1)* %3, align 4, !tbaa !215
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi float [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load float addrspace(1)* %4, align 4, !tbaa !215
  %8 = fadd float %6, %7
  store float %8, float addrspace(1)* %3, align 4, !tbaa !215
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 8192
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @scalar_sp_sub_iter_8192_kernel(float addrspace(1)* nocapture %a, float addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds float addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds float addrspace(1)* %b, i64 %2
  %.pre = load float addrspace(1)* %3, align 4, !tbaa !215
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi float [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load float addrspace(1)* %4, align 4, !tbaa !215
  %8 = fsub float %6, %7
  store float %8, float addrspace(1)* %3, align 4, !tbaa !215
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 8192
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @scalar_sp_mul_iter_8192_kernel(float addrspace(1)* nocapture %a, float addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds float addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds float addrspace(1)* %b, i64 %2
  %.pre = load float addrspace(1)* %3, align 4, !tbaa !215
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi float [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load float addrspace(1)* %4, align 4, !tbaa !215
  %8 = fmul float %6, %7
  store float %8, float addrspace(1)* %3, align 4, !tbaa !215
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 8192
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @scalar_sp_div_iter_8192_kernel(float addrspace(1)* nocapture %a, float addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds float addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds float addrspace(1)* %b, i64 %2
  %.pre = load float addrspace(1)* %3, align 4, !tbaa !215
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi float [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load float addrspace(1)* %4, align 4, !tbaa !215
  %8 = fdiv float %6, %7, !fpmath !218
  store float %8, float addrspace(1)* %3, align 4, !tbaa !215
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 8192
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @scalar_sp_mad_iter_8192_kernel(float addrspace(1)* nocapture %a, float addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds float addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds float addrspace(1)* %b, i64 %2
  %.pre = load float addrspace(1)* %3, align 4, !tbaa !215
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi float [ %.pre, %0 ], [ %8, %5 ]
  %j.08 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load float addrspace(1)* %4, align 4, !tbaa !215
  %8 = tail call float @llvm.fmuladd.f32(float %6, float %7, float %7)
  store float %8, float addrspace(1)* %3, align 4, !tbaa !215
  %9 = add nsw i32 %j.08, 1
  %10 = icmp slt i32 %9, 8192
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect2_sp_add_iter_8192_kernel(<2 x float> addrspace(1)* nocapture %a, <2 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <2 x float> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <2 x float> addrspace(1)* %b, i64 %2
  %.pre = load <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <2 x float> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %8 = fadd <2 x float> %6, %7
  store <2 x float> %8, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 8192
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect2_sp_sub_iter_8192_kernel(<2 x float> addrspace(1)* nocapture %a, <2 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <2 x float> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <2 x float> addrspace(1)* %b, i64 %2
  %.pre = load <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <2 x float> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %8 = fsub <2 x float> %6, %7
  store <2 x float> %8, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 8192
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect2_sp_mul_iter_8192_kernel(<2 x float> addrspace(1)* nocapture %a, <2 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <2 x float> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <2 x float> addrspace(1)* %b, i64 %2
  %.pre = load <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <2 x float> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %8 = fmul <2 x float> %6, %7
  store <2 x float> %8, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 8192
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect2_sp_div_iter_8192_kernel(<2 x float> addrspace(1)* nocapture %a, <2 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <2 x float> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <2 x float> addrspace(1)* %b, i64 %2
  %.pre = load <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <2 x float> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %8 = fdiv <2 x float> %6, %7, !fpmath !218
  store <2 x float> %8, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 8192
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect2_sp_mad_iter_8192_kernel(<2 x float> addrspace(1)* nocapture %a, <2 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <2 x float> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <2 x float> addrspace(1)* %b, i64 %2
  %.pre = load <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <2 x float> [ %.pre, %0 ], [ %8, %5 ]
  %j.08 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %8 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %6, <2 x float> %7, <2 x float> %7)
  store <2 x float> %8, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %9 = add nsw i32 %j.08, 1
  %10 = icmp slt i32 %9, 8192
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect4_sp_add_iter_8192_kernel(<4 x float> addrspace(1)* nocapture %a, <4 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <4 x float> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <4 x float> addrspace(1)* %b, i64 %2
  %.pre = load <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <4 x float> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %8 = fadd <4 x float> %6, %7
  store <4 x float> %8, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 8192
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect4_sp_sub_iter_8192_kernel(<4 x float> addrspace(1)* nocapture %a, <4 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <4 x float> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <4 x float> addrspace(1)* %b, i64 %2
  %.pre = load <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <4 x float> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %8 = fsub <4 x float> %6, %7
  store <4 x float> %8, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 8192
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect4_sp_mul_iter_8192_kernel(<4 x float> addrspace(1)* nocapture %a, <4 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <4 x float> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <4 x float> addrspace(1)* %b, i64 %2
  %.pre = load <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <4 x float> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %8 = fmul <4 x float> %6, %7
  store <4 x float> %8, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 8192
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect4_sp_div_iter_8192_kernel(<4 x float> addrspace(1)* nocapture %a, <4 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <4 x float> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <4 x float> addrspace(1)* %b, i64 %2
  %.pre = load <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <4 x float> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %8 = fdiv <4 x float> %6, %7, !fpmath !218
  store <4 x float> %8, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 8192
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect4_sp_mad_iter_8192_kernel(<4 x float> addrspace(1)* nocapture %a, <4 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <4 x float> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <4 x float> addrspace(1)* %b, i64 %2
  %.pre = load <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <4 x float> [ %.pre, %0 ], [ %8, %5 ]
  %j.08 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %8 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %6, <4 x float> %7, <4 x float> %7)
  store <4 x float> %8, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %9 = add nsw i32 %j.08, 1
  %10 = icmp slt i32 %9, 8192
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect8_sp_add_iter_8192_kernel(<8 x float> addrspace(1)* nocapture %a, <8 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <8 x float> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <8 x float> addrspace(1)* %b, i64 %2
  %.pre = load <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <8 x float> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %8 = fadd <8 x float> %6, %7
  store <8 x float> %8, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 8192
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect8_sp_sub_iter_8192_kernel(<8 x float> addrspace(1)* nocapture %a, <8 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <8 x float> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <8 x float> addrspace(1)* %b, i64 %2
  %.pre = load <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <8 x float> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %8 = fsub <8 x float> %6, %7
  store <8 x float> %8, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 8192
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect8_sp_mul_iter_8192_kernel(<8 x float> addrspace(1)* nocapture %a, <8 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <8 x float> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <8 x float> addrspace(1)* %b, i64 %2
  %.pre = load <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <8 x float> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %8 = fmul <8 x float> %6, %7
  store <8 x float> %8, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 8192
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect8_sp_div_iter_8192_kernel(<8 x float> addrspace(1)* nocapture %a, <8 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <8 x float> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <8 x float> addrspace(1)* %b, i64 %2
  %.pre = load <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <8 x float> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %8 = fdiv <8 x float> %6, %7, !fpmath !218
  store <8 x float> %8, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 8192
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect8_sp_mad_iter_8192_kernel(<8 x float> addrspace(1)* nocapture %a, <8 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <8 x float> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <8 x float> addrspace(1)* %b, i64 %2
  %.pre = load <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <8 x float> [ %.pre, %0 ], [ %8, %5 ]
  %j.08 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %8 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %6, <8 x float> %7, <8 x float> %7)
  store <8 x float> %8, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %9 = add nsw i32 %j.08, 1
  %10 = icmp slt i32 %9, 8192
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect16_sp_add_iter_8192_kernel(<16 x float> addrspace(1)* nocapture %a, <16 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <16 x float> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <16 x float> addrspace(1)* %b, i64 %2
  %.pre = load <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <16 x float> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %8 = fadd <16 x float> %6, %7
  store <16 x float> %8, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 8192
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect16_sp_sub_iter_8192_kernel(<16 x float> addrspace(1)* nocapture %a, <16 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <16 x float> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <16 x float> addrspace(1)* %b, i64 %2
  %.pre = load <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <16 x float> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %8 = fsub <16 x float> %6, %7
  store <16 x float> %8, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 8192
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect16_sp_mul_iter_8192_kernel(<16 x float> addrspace(1)* nocapture %a, <16 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <16 x float> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <16 x float> addrspace(1)* %b, i64 %2
  %.pre = load <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <16 x float> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %8 = fmul <16 x float> %6, %7
  store <16 x float> %8, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 8192
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect16_sp_div_iter_8192_kernel(<16 x float> addrspace(1)* nocapture %a, <16 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <16 x float> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <16 x float> addrspace(1)* %b, i64 %2
  %.pre = load <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <16 x float> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %8 = fdiv <16 x float> %6, %7, !fpmath !218
  store <16 x float> %8, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 8192
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect16_sp_mad_iter_8192_kernel(<16 x float> addrspace(1)* nocapture %a, <16 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <16 x float> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <16 x float> addrspace(1)* %b, i64 %2
  %.pre = load <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <16 x float> [ %.pre, %0 ], [ %8, %5 ]
  %j.08 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %8 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %6, <16 x float> %7, <16 x float> %7)
  store <16 x float> %8, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %9 = add nsw i32 %j.08, 1
  %10 = icmp slt i32 %9, 8192
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @scalar_sp_add_iter_1024_kernel(float addrspace(1)* nocapture %a, float addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds float addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds float addrspace(1)* %b, i64 %2
  %.pre = load float addrspace(1)* %3, align 4, !tbaa !215
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi float [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load float addrspace(1)* %4, align 4, !tbaa !215
  %8 = fadd float %6, %7
  store float %8, float addrspace(1)* %3, align 4, !tbaa !215
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 1024
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @scalar_sp_sub_iter_1024_kernel(float addrspace(1)* nocapture %a, float addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds float addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds float addrspace(1)* %b, i64 %2
  %.pre = load float addrspace(1)* %3, align 4, !tbaa !215
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi float [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load float addrspace(1)* %4, align 4, !tbaa !215
  %8 = fsub float %6, %7
  store float %8, float addrspace(1)* %3, align 4, !tbaa !215
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 1024
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @scalar_sp_mul_iter_1024_kernel(float addrspace(1)* nocapture %a, float addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds float addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds float addrspace(1)* %b, i64 %2
  %.pre = load float addrspace(1)* %3, align 4, !tbaa !215
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi float [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load float addrspace(1)* %4, align 4, !tbaa !215
  %8 = fmul float %6, %7
  store float %8, float addrspace(1)* %3, align 4, !tbaa !215
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 1024
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @scalar_sp_div_iter_1024_kernel(float addrspace(1)* nocapture %a, float addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds float addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds float addrspace(1)* %b, i64 %2
  %.pre = load float addrspace(1)* %3, align 4, !tbaa !215
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi float [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load float addrspace(1)* %4, align 4, !tbaa !215
  %8 = fdiv float %6, %7, !fpmath !218
  store float %8, float addrspace(1)* %3, align 4, !tbaa !215
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 1024
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @scalar_sp_mad_iter_1024_kernel(float addrspace(1)* nocapture %a, float addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds float addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds float addrspace(1)* %b, i64 %2
  %.pre = load float addrspace(1)* %3, align 4, !tbaa !215
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi float [ %.pre, %0 ], [ %8, %5 ]
  %j.08 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load float addrspace(1)* %4, align 4, !tbaa !215
  %8 = tail call float @llvm.fmuladd.f32(float %6, float %7, float %7)
  store float %8, float addrspace(1)* %3, align 4, !tbaa !215
  %9 = add nsw i32 %j.08, 1
  %10 = icmp slt i32 %9, 1024
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect2_sp_add_iter_1024_kernel(<2 x float> addrspace(1)* nocapture %a, <2 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <2 x float> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <2 x float> addrspace(1)* %b, i64 %2
  %.pre = load <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <2 x float> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %8 = fadd <2 x float> %6, %7
  store <2 x float> %8, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 1024
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect2_sp_sub_iter_1024_kernel(<2 x float> addrspace(1)* nocapture %a, <2 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <2 x float> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <2 x float> addrspace(1)* %b, i64 %2
  %.pre = load <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <2 x float> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %8 = fsub <2 x float> %6, %7
  store <2 x float> %8, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 1024
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect2_sp_mul_iter_1024_kernel(<2 x float> addrspace(1)* nocapture %a, <2 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <2 x float> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <2 x float> addrspace(1)* %b, i64 %2
  %.pre = load <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <2 x float> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %8 = fmul <2 x float> %6, %7
  store <2 x float> %8, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 1024
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect2_sp_div_iter_1024_kernel(<2 x float> addrspace(1)* nocapture %a, <2 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <2 x float> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <2 x float> addrspace(1)* %b, i64 %2
  %.pre = load <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <2 x float> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %8 = fdiv <2 x float> %6, %7, !fpmath !218
  store <2 x float> %8, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 1024
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect2_sp_mad_iter_1024_kernel(<2 x float> addrspace(1)* nocapture %a, <2 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <2 x float> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <2 x float> addrspace(1)* %b, i64 %2
  %.pre = load <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <2 x float> [ %.pre, %0 ], [ %8, %5 ]
  %j.08 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %8 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %6, <2 x float> %7, <2 x float> %7)
  store <2 x float> %8, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %9 = add nsw i32 %j.08, 1
  %10 = icmp slt i32 %9, 1024
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect4_sp_add_iter_1024_kernel(<4 x float> addrspace(1)* nocapture %a, <4 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <4 x float> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <4 x float> addrspace(1)* %b, i64 %2
  %.pre = load <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <4 x float> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %8 = fadd <4 x float> %6, %7
  store <4 x float> %8, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 1024
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect4_sp_sub_iter_1024_kernel(<4 x float> addrspace(1)* nocapture %a, <4 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <4 x float> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <4 x float> addrspace(1)* %b, i64 %2
  %.pre = load <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <4 x float> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %8 = fsub <4 x float> %6, %7
  store <4 x float> %8, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 1024
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect4_sp_mul_iter_1024_kernel(<4 x float> addrspace(1)* nocapture %a, <4 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <4 x float> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <4 x float> addrspace(1)* %b, i64 %2
  %.pre = load <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <4 x float> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %8 = fmul <4 x float> %6, %7
  store <4 x float> %8, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 1024
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect4_sp_div_iter_1024_kernel(<4 x float> addrspace(1)* nocapture %a, <4 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <4 x float> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <4 x float> addrspace(1)* %b, i64 %2
  %.pre = load <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <4 x float> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %8 = fdiv <4 x float> %6, %7, !fpmath !218
  store <4 x float> %8, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 1024
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect4_sp_mad_iter_1024_kernel(<4 x float> addrspace(1)* nocapture %a, <4 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <4 x float> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <4 x float> addrspace(1)* %b, i64 %2
  %.pre = load <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <4 x float> [ %.pre, %0 ], [ %8, %5 ]
  %j.08 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %8 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %6, <4 x float> %7, <4 x float> %7)
  store <4 x float> %8, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %9 = add nsw i32 %j.08, 1
  %10 = icmp slt i32 %9, 1024
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect8_sp_add_iter_1024_kernel(<8 x float> addrspace(1)* nocapture %a, <8 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <8 x float> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <8 x float> addrspace(1)* %b, i64 %2
  %.pre = load <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <8 x float> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %8 = fadd <8 x float> %6, %7
  store <8 x float> %8, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 1024
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect8_sp_sub_iter_1024_kernel(<8 x float> addrspace(1)* nocapture %a, <8 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <8 x float> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <8 x float> addrspace(1)* %b, i64 %2
  %.pre = load <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <8 x float> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %8 = fsub <8 x float> %6, %7
  store <8 x float> %8, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 1024
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect8_sp_mul_iter_1024_kernel(<8 x float> addrspace(1)* nocapture %a, <8 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <8 x float> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <8 x float> addrspace(1)* %b, i64 %2
  %.pre = load <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <8 x float> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %8 = fmul <8 x float> %6, %7
  store <8 x float> %8, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 1024
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect8_sp_div_iter_1024_kernel(<8 x float> addrspace(1)* nocapture %a, <8 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <8 x float> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <8 x float> addrspace(1)* %b, i64 %2
  %.pre = load <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <8 x float> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %8 = fdiv <8 x float> %6, %7, !fpmath !218
  store <8 x float> %8, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 1024
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect8_sp_mad_iter_1024_kernel(<8 x float> addrspace(1)* nocapture %a, <8 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <8 x float> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <8 x float> addrspace(1)* %b, i64 %2
  %.pre = load <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <8 x float> [ %.pre, %0 ], [ %8, %5 ]
  %j.08 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %8 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %6, <8 x float> %7, <8 x float> %7)
  store <8 x float> %8, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %9 = add nsw i32 %j.08, 1
  %10 = icmp slt i32 %9, 1024
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect16_sp_add_iter_1024_kernel(<16 x float> addrspace(1)* nocapture %a, <16 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <16 x float> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <16 x float> addrspace(1)* %b, i64 %2
  %.pre = load <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <16 x float> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %8 = fadd <16 x float> %6, %7
  store <16 x float> %8, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 1024
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect16_sp_sub_iter_1024_kernel(<16 x float> addrspace(1)* nocapture %a, <16 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <16 x float> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <16 x float> addrspace(1)* %b, i64 %2
  %.pre = load <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <16 x float> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %8 = fsub <16 x float> %6, %7
  store <16 x float> %8, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 1024
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect16_sp_mul_iter_1024_kernel(<16 x float> addrspace(1)* nocapture %a, <16 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <16 x float> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <16 x float> addrspace(1)* %b, i64 %2
  %.pre = load <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <16 x float> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %8 = fmul <16 x float> %6, %7
  store <16 x float> %8, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 1024
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect16_sp_div_iter_1024_kernel(<16 x float> addrspace(1)* nocapture %a, <16 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <16 x float> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <16 x float> addrspace(1)* %b, i64 %2
  %.pre = load <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <16 x float> [ %.pre, %0 ], [ %8, %5 ]
  %j.06 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %8 = fdiv <16 x float> %6, %7, !fpmath !218
  store <16 x float> %8, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %9 = add nsw i32 %j.06, 1
  %10 = icmp slt i32 %9, 1024
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @vect16_sp_mad_iter_1024_kernel(<16 x float> addrspace(1)* nocapture %a, <16 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <16 x float> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <16 x float> addrspace(1)* %b, i64 %2
  %.pre = load <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <16 x float> [ %.pre, %0 ], [ %8, %5 ]
  %j.08 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %8 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %6, <16 x float> %7, <16 x float> %7)
  store <16 x float> %8, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %9 = add nsw i32 %j.08, 1
  %10 = icmp slt i32 %9, 1024
  br i1 %10, label %5, label %11

; <label>:11                                      ; preds = %5
  ret void
}

define cc76 void @scalar_sp_add_iter_128_unroll_64_kernel(float addrspace(1)* nocapture %a, float addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds float addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds float addrspace(1)* %b, i64 %2
  %.pre = load float addrspace(1)* %3, align 4, !tbaa !215
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi float [ %.pre, %0 ], [ %132, %5 ]
  %j.0378 = phi i32 [ 0, %0 ], [ %133, %5 ]
  %7 = load float addrspace(1)* %4, align 4, !tbaa !215
  %8 = fadd float %6, %7
  store float %8, float addrspace(1)* %3, align 4, !tbaa !215
  %9 = load float addrspace(1)* %4, align 4, !tbaa !215
  %10 = fadd float %8, %9
  store float %10, float addrspace(1)* %3, align 4, !tbaa !215
  %11 = load float addrspace(1)* %4, align 4, !tbaa !215
  %12 = fadd float %10, %11
  store float %12, float addrspace(1)* %3, align 4, !tbaa !215
  %13 = load float addrspace(1)* %4, align 4, !tbaa !215
  %14 = fadd float %12, %13
  store float %14, float addrspace(1)* %3, align 4, !tbaa !215
  %15 = load float addrspace(1)* %4, align 4, !tbaa !215
  %16 = fadd float %14, %15
  store float %16, float addrspace(1)* %3, align 4, !tbaa !215
  %17 = load float addrspace(1)* %4, align 4, !tbaa !215
  %18 = fadd float %16, %17
  store float %18, float addrspace(1)* %3, align 4, !tbaa !215
  %19 = load float addrspace(1)* %4, align 4, !tbaa !215
  %20 = fadd float %18, %19
  store float %20, float addrspace(1)* %3, align 4, !tbaa !215
  %21 = load float addrspace(1)* %4, align 4, !tbaa !215
  %22 = fadd float %20, %21
  store float %22, float addrspace(1)* %3, align 4, !tbaa !215
  %23 = load float addrspace(1)* %4, align 4, !tbaa !215
  %24 = fadd float %22, %23
  store float %24, float addrspace(1)* %3, align 4, !tbaa !215
  %25 = load float addrspace(1)* %4, align 4, !tbaa !215
  %26 = fadd float %24, %25
  store float %26, float addrspace(1)* %3, align 4, !tbaa !215
  %27 = load float addrspace(1)* %4, align 4, !tbaa !215
  %28 = fadd float %26, %27
  store float %28, float addrspace(1)* %3, align 4, !tbaa !215
  %29 = load float addrspace(1)* %4, align 4, !tbaa !215
  %30 = fadd float %28, %29
  store float %30, float addrspace(1)* %3, align 4, !tbaa !215
  %31 = load float addrspace(1)* %4, align 4, !tbaa !215
  %32 = fadd float %30, %31
  store float %32, float addrspace(1)* %3, align 4, !tbaa !215
  %33 = load float addrspace(1)* %4, align 4, !tbaa !215
  %34 = fadd float %32, %33
  store float %34, float addrspace(1)* %3, align 4, !tbaa !215
  %35 = load float addrspace(1)* %4, align 4, !tbaa !215
  %36 = fadd float %34, %35
  store float %36, float addrspace(1)* %3, align 4, !tbaa !215
  %37 = load float addrspace(1)* %4, align 4, !tbaa !215
  %38 = fadd float %36, %37
  store float %38, float addrspace(1)* %3, align 4, !tbaa !215
  %39 = load float addrspace(1)* %4, align 4, !tbaa !215
  %40 = fadd float %38, %39
  store float %40, float addrspace(1)* %3, align 4, !tbaa !215
  %41 = load float addrspace(1)* %4, align 4, !tbaa !215
  %42 = fadd float %40, %41
  store float %42, float addrspace(1)* %3, align 4, !tbaa !215
  %43 = load float addrspace(1)* %4, align 4, !tbaa !215
  %44 = fadd float %42, %43
  store float %44, float addrspace(1)* %3, align 4, !tbaa !215
  %45 = load float addrspace(1)* %4, align 4, !tbaa !215
  %46 = fadd float %44, %45
  store float %46, float addrspace(1)* %3, align 4, !tbaa !215
  %47 = load float addrspace(1)* %4, align 4, !tbaa !215
  %48 = fadd float %46, %47
  store float %48, float addrspace(1)* %3, align 4, !tbaa !215
  %49 = load float addrspace(1)* %4, align 4, !tbaa !215
  %50 = fadd float %48, %49
  store float %50, float addrspace(1)* %3, align 4, !tbaa !215
  %51 = load float addrspace(1)* %4, align 4, !tbaa !215
  %52 = fadd float %50, %51
  store float %52, float addrspace(1)* %3, align 4, !tbaa !215
  %53 = load float addrspace(1)* %4, align 4, !tbaa !215
  %54 = fadd float %52, %53
  store float %54, float addrspace(1)* %3, align 4, !tbaa !215
  %55 = load float addrspace(1)* %4, align 4, !tbaa !215
  %56 = fadd float %54, %55
  store float %56, float addrspace(1)* %3, align 4, !tbaa !215
  %57 = load float addrspace(1)* %4, align 4, !tbaa !215
  %58 = fadd float %56, %57
  store float %58, float addrspace(1)* %3, align 4, !tbaa !215
  %59 = load float addrspace(1)* %4, align 4, !tbaa !215
  %60 = fadd float %58, %59
  store float %60, float addrspace(1)* %3, align 4, !tbaa !215
  %61 = load float addrspace(1)* %4, align 4, !tbaa !215
  %62 = fadd float %60, %61
  store float %62, float addrspace(1)* %3, align 4, !tbaa !215
  %63 = load float addrspace(1)* %4, align 4, !tbaa !215
  %64 = fadd float %62, %63
  store float %64, float addrspace(1)* %3, align 4, !tbaa !215
  %65 = load float addrspace(1)* %4, align 4, !tbaa !215
  %66 = fadd float %64, %65
  store float %66, float addrspace(1)* %3, align 4, !tbaa !215
  %67 = load float addrspace(1)* %4, align 4, !tbaa !215
  %68 = fadd float %66, %67
  store float %68, float addrspace(1)* %3, align 4, !tbaa !215
  %69 = load float addrspace(1)* %4, align 4, !tbaa !215
  %70 = fadd float %68, %69
  store float %70, float addrspace(1)* %3, align 4, !tbaa !215
  %71 = load float addrspace(1)* %4, align 4, !tbaa !215
  %72 = fadd float %70, %71
  store float %72, float addrspace(1)* %3, align 4, !tbaa !215
  %73 = load float addrspace(1)* %4, align 4, !tbaa !215
  %74 = fadd float %72, %73
  store float %74, float addrspace(1)* %3, align 4, !tbaa !215
  %75 = load float addrspace(1)* %4, align 4, !tbaa !215
  %76 = fadd float %74, %75
  store float %76, float addrspace(1)* %3, align 4, !tbaa !215
  %77 = load float addrspace(1)* %4, align 4, !tbaa !215
  %78 = fadd float %76, %77
  store float %78, float addrspace(1)* %3, align 4, !tbaa !215
  %79 = load float addrspace(1)* %4, align 4, !tbaa !215
  %80 = fadd float %78, %79
  store float %80, float addrspace(1)* %3, align 4, !tbaa !215
  %81 = load float addrspace(1)* %4, align 4, !tbaa !215
  %82 = fadd float %80, %81
  store float %82, float addrspace(1)* %3, align 4, !tbaa !215
  %83 = load float addrspace(1)* %4, align 4, !tbaa !215
  %84 = fadd float %82, %83
  store float %84, float addrspace(1)* %3, align 4, !tbaa !215
  %85 = load float addrspace(1)* %4, align 4, !tbaa !215
  %86 = fadd float %84, %85
  store float %86, float addrspace(1)* %3, align 4, !tbaa !215
  %87 = load float addrspace(1)* %4, align 4, !tbaa !215
  %88 = fadd float %86, %87
  store float %88, float addrspace(1)* %3, align 4, !tbaa !215
  %89 = load float addrspace(1)* %4, align 4, !tbaa !215
  %90 = fadd float %88, %89
  store float %90, float addrspace(1)* %3, align 4, !tbaa !215
  %91 = load float addrspace(1)* %4, align 4, !tbaa !215
  %92 = fadd float %90, %91
  store float %92, float addrspace(1)* %3, align 4, !tbaa !215
  %93 = load float addrspace(1)* %4, align 4, !tbaa !215
  %94 = fadd float %92, %93
  store float %94, float addrspace(1)* %3, align 4, !tbaa !215
  %95 = load float addrspace(1)* %4, align 4, !tbaa !215
  %96 = fadd float %94, %95
  store float %96, float addrspace(1)* %3, align 4, !tbaa !215
  %97 = load float addrspace(1)* %4, align 4, !tbaa !215
  %98 = fadd float %96, %97
  store float %98, float addrspace(1)* %3, align 4, !tbaa !215
  %99 = load float addrspace(1)* %4, align 4, !tbaa !215
  %100 = fadd float %98, %99
  store float %100, float addrspace(1)* %3, align 4, !tbaa !215
  %101 = load float addrspace(1)* %4, align 4, !tbaa !215
  %102 = fadd float %100, %101
  store float %102, float addrspace(1)* %3, align 4, !tbaa !215
  %103 = load float addrspace(1)* %4, align 4, !tbaa !215
  %104 = fadd float %102, %103
  store float %104, float addrspace(1)* %3, align 4, !tbaa !215
  %105 = load float addrspace(1)* %4, align 4, !tbaa !215
  %106 = fadd float %104, %105
  store float %106, float addrspace(1)* %3, align 4, !tbaa !215
  %107 = load float addrspace(1)* %4, align 4, !tbaa !215
  %108 = fadd float %106, %107
  store float %108, float addrspace(1)* %3, align 4, !tbaa !215
  %109 = load float addrspace(1)* %4, align 4, !tbaa !215
  %110 = fadd float %108, %109
  store float %110, float addrspace(1)* %3, align 4, !tbaa !215
  %111 = load float addrspace(1)* %4, align 4, !tbaa !215
  %112 = fadd float %110, %111
  store float %112, float addrspace(1)* %3, align 4, !tbaa !215
  %113 = load float addrspace(1)* %4, align 4, !tbaa !215
  %114 = fadd float %112, %113
  store float %114, float addrspace(1)* %3, align 4, !tbaa !215
  %115 = load float addrspace(1)* %4, align 4, !tbaa !215
  %116 = fadd float %114, %115
  store float %116, float addrspace(1)* %3, align 4, !tbaa !215
  %117 = load float addrspace(1)* %4, align 4, !tbaa !215
  %118 = fadd float %116, %117
  store float %118, float addrspace(1)* %3, align 4, !tbaa !215
  %119 = load float addrspace(1)* %4, align 4, !tbaa !215
  %120 = fadd float %118, %119
  store float %120, float addrspace(1)* %3, align 4, !tbaa !215
  %121 = load float addrspace(1)* %4, align 4, !tbaa !215
  %122 = fadd float %120, %121
  store float %122, float addrspace(1)* %3, align 4, !tbaa !215
  %123 = load float addrspace(1)* %4, align 4, !tbaa !215
  %124 = fadd float %122, %123
  store float %124, float addrspace(1)* %3, align 4, !tbaa !215
  %125 = load float addrspace(1)* %4, align 4, !tbaa !215
  %126 = fadd float %124, %125
  store float %126, float addrspace(1)* %3, align 4, !tbaa !215
  %127 = load float addrspace(1)* %4, align 4, !tbaa !215
  %128 = fadd float %126, %127
  store float %128, float addrspace(1)* %3, align 4, !tbaa !215
  %129 = load float addrspace(1)* %4, align 4, !tbaa !215
  %130 = fadd float %128, %129
  store float %130, float addrspace(1)* %3, align 4, !tbaa !215
  %131 = load float addrspace(1)* %4, align 4, !tbaa !215
  %132 = fadd float %130, %131
  store float %132, float addrspace(1)* %3, align 4, !tbaa !215
  %133 = add nsw i32 %j.0378, 1
  %134 = icmp slt i32 %133, 128
  br i1 %134, label %5, label %135

; <label>:135                                     ; preds = %5
  ret void
}

define cc76 void @scalar_sp_sub_iter_128_unroll_64_kernel(float addrspace(1)* nocapture %a, float addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds float addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds float addrspace(1)* %b, i64 %2
  %.pre = load float addrspace(1)* %3, align 4, !tbaa !215
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi float [ %.pre, %0 ], [ %132, %5 ]
  %j.0378 = phi i32 [ 0, %0 ], [ %133, %5 ]
  %7 = load float addrspace(1)* %4, align 4, !tbaa !215
  %8 = fsub float %6, %7
  store float %8, float addrspace(1)* %3, align 4, !tbaa !215
  %9 = load float addrspace(1)* %4, align 4, !tbaa !215
  %10 = fsub float %8, %9
  store float %10, float addrspace(1)* %3, align 4, !tbaa !215
  %11 = load float addrspace(1)* %4, align 4, !tbaa !215
  %12 = fsub float %10, %11
  store float %12, float addrspace(1)* %3, align 4, !tbaa !215
  %13 = load float addrspace(1)* %4, align 4, !tbaa !215
  %14 = fsub float %12, %13
  store float %14, float addrspace(1)* %3, align 4, !tbaa !215
  %15 = load float addrspace(1)* %4, align 4, !tbaa !215
  %16 = fsub float %14, %15
  store float %16, float addrspace(1)* %3, align 4, !tbaa !215
  %17 = load float addrspace(1)* %4, align 4, !tbaa !215
  %18 = fsub float %16, %17
  store float %18, float addrspace(1)* %3, align 4, !tbaa !215
  %19 = load float addrspace(1)* %4, align 4, !tbaa !215
  %20 = fsub float %18, %19
  store float %20, float addrspace(1)* %3, align 4, !tbaa !215
  %21 = load float addrspace(1)* %4, align 4, !tbaa !215
  %22 = fsub float %20, %21
  store float %22, float addrspace(1)* %3, align 4, !tbaa !215
  %23 = load float addrspace(1)* %4, align 4, !tbaa !215
  %24 = fsub float %22, %23
  store float %24, float addrspace(1)* %3, align 4, !tbaa !215
  %25 = load float addrspace(1)* %4, align 4, !tbaa !215
  %26 = fsub float %24, %25
  store float %26, float addrspace(1)* %3, align 4, !tbaa !215
  %27 = load float addrspace(1)* %4, align 4, !tbaa !215
  %28 = fsub float %26, %27
  store float %28, float addrspace(1)* %3, align 4, !tbaa !215
  %29 = load float addrspace(1)* %4, align 4, !tbaa !215
  %30 = fsub float %28, %29
  store float %30, float addrspace(1)* %3, align 4, !tbaa !215
  %31 = load float addrspace(1)* %4, align 4, !tbaa !215
  %32 = fsub float %30, %31
  store float %32, float addrspace(1)* %3, align 4, !tbaa !215
  %33 = load float addrspace(1)* %4, align 4, !tbaa !215
  %34 = fsub float %32, %33
  store float %34, float addrspace(1)* %3, align 4, !tbaa !215
  %35 = load float addrspace(1)* %4, align 4, !tbaa !215
  %36 = fsub float %34, %35
  store float %36, float addrspace(1)* %3, align 4, !tbaa !215
  %37 = load float addrspace(1)* %4, align 4, !tbaa !215
  %38 = fsub float %36, %37
  store float %38, float addrspace(1)* %3, align 4, !tbaa !215
  %39 = load float addrspace(1)* %4, align 4, !tbaa !215
  %40 = fsub float %38, %39
  store float %40, float addrspace(1)* %3, align 4, !tbaa !215
  %41 = load float addrspace(1)* %4, align 4, !tbaa !215
  %42 = fsub float %40, %41
  store float %42, float addrspace(1)* %3, align 4, !tbaa !215
  %43 = load float addrspace(1)* %4, align 4, !tbaa !215
  %44 = fsub float %42, %43
  store float %44, float addrspace(1)* %3, align 4, !tbaa !215
  %45 = load float addrspace(1)* %4, align 4, !tbaa !215
  %46 = fsub float %44, %45
  store float %46, float addrspace(1)* %3, align 4, !tbaa !215
  %47 = load float addrspace(1)* %4, align 4, !tbaa !215
  %48 = fsub float %46, %47
  store float %48, float addrspace(1)* %3, align 4, !tbaa !215
  %49 = load float addrspace(1)* %4, align 4, !tbaa !215
  %50 = fsub float %48, %49
  store float %50, float addrspace(1)* %3, align 4, !tbaa !215
  %51 = load float addrspace(1)* %4, align 4, !tbaa !215
  %52 = fsub float %50, %51
  store float %52, float addrspace(1)* %3, align 4, !tbaa !215
  %53 = load float addrspace(1)* %4, align 4, !tbaa !215
  %54 = fsub float %52, %53
  store float %54, float addrspace(1)* %3, align 4, !tbaa !215
  %55 = load float addrspace(1)* %4, align 4, !tbaa !215
  %56 = fsub float %54, %55
  store float %56, float addrspace(1)* %3, align 4, !tbaa !215
  %57 = load float addrspace(1)* %4, align 4, !tbaa !215
  %58 = fsub float %56, %57
  store float %58, float addrspace(1)* %3, align 4, !tbaa !215
  %59 = load float addrspace(1)* %4, align 4, !tbaa !215
  %60 = fsub float %58, %59
  store float %60, float addrspace(1)* %3, align 4, !tbaa !215
  %61 = load float addrspace(1)* %4, align 4, !tbaa !215
  %62 = fsub float %60, %61
  store float %62, float addrspace(1)* %3, align 4, !tbaa !215
  %63 = load float addrspace(1)* %4, align 4, !tbaa !215
  %64 = fsub float %62, %63
  store float %64, float addrspace(1)* %3, align 4, !tbaa !215
  %65 = load float addrspace(1)* %4, align 4, !tbaa !215
  %66 = fsub float %64, %65
  store float %66, float addrspace(1)* %3, align 4, !tbaa !215
  %67 = load float addrspace(1)* %4, align 4, !tbaa !215
  %68 = fsub float %66, %67
  store float %68, float addrspace(1)* %3, align 4, !tbaa !215
  %69 = load float addrspace(1)* %4, align 4, !tbaa !215
  %70 = fsub float %68, %69
  store float %70, float addrspace(1)* %3, align 4, !tbaa !215
  %71 = load float addrspace(1)* %4, align 4, !tbaa !215
  %72 = fsub float %70, %71
  store float %72, float addrspace(1)* %3, align 4, !tbaa !215
  %73 = load float addrspace(1)* %4, align 4, !tbaa !215
  %74 = fsub float %72, %73
  store float %74, float addrspace(1)* %3, align 4, !tbaa !215
  %75 = load float addrspace(1)* %4, align 4, !tbaa !215
  %76 = fsub float %74, %75
  store float %76, float addrspace(1)* %3, align 4, !tbaa !215
  %77 = load float addrspace(1)* %4, align 4, !tbaa !215
  %78 = fsub float %76, %77
  store float %78, float addrspace(1)* %3, align 4, !tbaa !215
  %79 = load float addrspace(1)* %4, align 4, !tbaa !215
  %80 = fsub float %78, %79
  store float %80, float addrspace(1)* %3, align 4, !tbaa !215
  %81 = load float addrspace(1)* %4, align 4, !tbaa !215
  %82 = fsub float %80, %81
  store float %82, float addrspace(1)* %3, align 4, !tbaa !215
  %83 = load float addrspace(1)* %4, align 4, !tbaa !215
  %84 = fsub float %82, %83
  store float %84, float addrspace(1)* %3, align 4, !tbaa !215
  %85 = load float addrspace(1)* %4, align 4, !tbaa !215
  %86 = fsub float %84, %85
  store float %86, float addrspace(1)* %3, align 4, !tbaa !215
  %87 = load float addrspace(1)* %4, align 4, !tbaa !215
  %88 = fsub float %86, %87
  store float %88, float addrspace(1)* %3, align 4, !tbaa !215
  %89 = load float addrspace(1)* %4, align 4, !tbaa !215
  %90 = fsub float %88, %89
  store float %90, float addrspace(1)* %3, align 4, !tbaa !215
  %91 = load float addrspace(1)* %4, align 4, !tbaa !215
  %92 = fsub float %90, %91
  store float %92, float addrspace(1)* %3, align 4, !tbaa !215
  %93 = load float addrspace(1)* %4, align 4, !tbaa !215
  %94 = fsub float %92, %93
  store float %94, float addrspace(1)* %3, align 4, !tbaa !215
  %95 = load float addrspace(1)* %4, align 4, !tbaa !215
  %96 = fsub float %94, %95
  store float %96, float addrspace(1)* %3, align 4, !tbaa !215
  %97 = load float addrspace(1)* %4, align 4, !tbaa !215
  %98 = fsub float %96, %97
  store float %98, float addrspace(1)* %3, align 4, !tbaa !215
  %99 = load float addrspace(1)* %4, align 4, !tbaa !215
  %100 = fsub float %98, %99
  store float %100, float addrspace(1)* %3, align 4, !tbaa !215
  %101 = load float addrspace(1)* %4, align 4, !tbaa !215
  %102 = fsub float %100, %101
  store float %102, float addrspace(1)* %3, align 4, !tbaa !215
  %103 = load float addrspace(1)* %4, align 4, !tbaa !215
  %104 = fsub float %102, %103
  store float %104, float addrspace(1)* %3, align 4, !tbaa !215
  %105 = load float addrspace(1)* %4, align 4, !tbaa !215
  %106 = fsub float %104, %105
  store float %106, float addrspace(1)* %3, align 4, !tbaa !215
  %107 = load float addrspace(1)* %4, align 4, !tbaa !215
  %108 = fsub float %106, %107
  store float %108, float addrspace(1)* %3, align 4, !tbaa !215
  %109 = load float addrspace(1)* %4, align 4, !tbaa !215
  %110 = fsub float %108, %109
  store float %110, float addrspace(1)* %3, align 4, !tbaa !215
  %111 = load float addrspace(1)* %4, align 4, !tbaa !215
  %112 = fsub float %110, %111
  store float %112, float addrspace(1)* %3, align 4, !tbaa !215
  %113 = load float addrspace(1)* %4, align 4, !tbaa !215
  %114 = fsub float %112, %113
  store float %114, float addrspace(1)* %3, align 4, !tbaa !215
  %115 = load float addrspace(1)* %4, align 4, !tbaa !215
  %116 = fsub float %114, %115
  store float %116, float addrspace(1)* %3, align 4, !tbaa !215
  %117 = load float addrspace(1)* %4, align 4, !tbaa !215
  %118 = fsub float %116, %117
  store float %118, float addrspace(1)* %3, align 4, !tbaa !215
  %119 = load float addrspace(1)* %4, align 4, !tbaa !215
  %120 = fsub float %118, %119
  store float %120, float addrspace(1)* %3, align 4, !tbaa !215
  %121 = load float addrspace(1)* %4, align 4, !tbaa !215
  %122 = fsub float %120, %121
  store float %122, float addrspace(1)* %3, align 4, !tbaa !215
  %123 = load float addrspace(1)* %4, align 4, !tbaa !215
  %124 = fsub float %122, %123
  store float %124, float addrspace(1)* %3, align 4, !tbaa !215
  %125 = load float addrspace(1)* %4, align 4, !tbaa !215
  %126 = fsub float %124, %125
  store float %126, float addrspace(1)* %3, align 4, !tbaa !215
  %127 = load float addrspace(1)* %4, align 4, !tbaa !215
  %128 = fsub float %126, %127
  store float %128, float addrspace(1)* %3, align 4, !tbaa !215
  %129 = load float addrspace(1)* %4, align 4, !tbaa !215
  %130 = fsub float %128, %129
  store float %130, float addrspace(1)* %3, align 4, !tbaa !215
  %131 = load float addrspace(1)* %4, align 4, !tbaa !215
  %132 = fsub float %130, %131
  store float %132, float addrspace(1)* %3, align 4, !tbaa !215
  %133 = add nsw i32 %j.0378, 1
  %134 = icmp slt i32 %133, 128
  br i1 %134, label %5, label %135

; <label>:135                                     ; preds = %5
  ret void
}

define cc76 void @scalar_sp_mul_iter_128_unroll_64_kernel(float addrspace(1)* nocapture %a, float addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds float addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds float addrspace(1)* %b, i64 %2
  %.pre = load float addrspace(1)* %3, align 4, !tbaa !215
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi float [ %.pre, %0 ], [ %132, %5 ]
  %j.0378 = phi i32 [ 0, %0 ], [ %133, %5 ]
  %7 = load float addrspace(1)* %4, align 4, !tbaa !215
  %8 = fmul float %6, %7
  store float %8, float addrspace(1)* %3, align 4, !tbaa !215
  %9 = load float addrspace(1)* %4, align 4, !tbaa !215
  %10 = fmul float %8, %9
  store float %10, float addrspace(1)* %3, align 4, !tbaa !215
  %11 = load float addrspace(1)* %4, align 4, !tbaa !215
  %12 = fmul float %10, %11
  store float %12, float addrspace(1)* %3, align 4, !tbaa !215
  %13 = load float addrspace(1)* %4, align 4, !tbaa !215
  %14 = fmul float %12, %13
  store float %14, float addrspace(1)* %3, align 4, !tbaa !215
  %15 = load float addrspace(1)* %4, align 4, !tbaa !215
  %16 = fmul float %14, %15
  store float %16, float addrspace(1)* %3, align 4, !tbaa !215
  %17 = load float addrspace(1)* %4, align 4, !tbaa !215
  %18 = fmul float %16, %17
  store float %18, float addrspace(1)* %3, align 4, !tbaa !215
  %19 = load float addrspace(1)* %4, align 4, !tbaa !215
  %20 = fmul float %18, %19
  store float %20, float addrspace(1)* %3, align 4, !tbaa !215
  %21 = load float addrspace(1)* %4, align 4, !tbaa !215
  %22 = fmul float %20, %21
  store float %22, float addrspace(1)* %3, align 4, !tbaa !215
  %23 = load float addrspace(1)* %4, align 4, !tbaa !215
  %24 = fmul float %22, %23
  store float %24, float addrspace(1)* %3, align 4, !tbaa !215
  %25 = load float addrspace(1)* %4, align 4, !tbaa !215
  %26 = fmul float %24, %25
  store float %26, float addrspace(1)* %3, align 4, !tbaa !215
  %27 = load float addrspace(1)* %4, align 4, !tbaa !215
  %28 = fmul float %26, %27
  store float %28, float addrspace(1)* %3, align 4, !tbaa !215
  %29 = load float addrspace(1)* %4, align 4, !tbaa !215
  %30 = fmul float %28, %29
  store float %30, float addrspace(1)* %3, align 4, !tbaa !215
  %31 = load float addrspace(1)* %4, align 4, !tbaa !215
  %32 = fmul float %30, %31
  store float %32, float addrspace(1)* %3, align 4, !tbaa !215
  %33 = load float addrspace(1)* %4, align 4, !tbaa !215
  %34 = fmul float %32, %33
  store float %34, float addrspace(1)* %3, align 4, !tbaa !215
  %35 = load float addrspace(1)* %4, align 4, !tbaa !215
  %36 = fmul float %34, %35
  store float %36, float addrspace(1)* %3, align 4, !tbaa !215
  %37 = load float addrspace(1)* %4, align 4, !tbaa !215
  %38 = fmul float %36, %37
  store float %38, float addrspace(1)* %3, align 4, !tbaa !215
  %39 = load float addrspace(1)* %4, align 4, !tbaa !215
  %40 = fmul float %38, %39
  store float %40, float addrspace(1)* %3, align 4, !tbaa !215
  %41 = load float addrspace(1)* %4, align 4, !tbaa !215
  %42 = fmul float %40, %41
  store float %42, float addrspace(1)* %3, align 4, !tbaa !215
  %43 = load float addrspace(1)* %4, align 4, !tbaa !215
  %44 = fmul float %42, %43
  store float %44, float addrspace(1)* %3, align 4, !tbaa !215
  %45 = load float addrspace(1)* %4, align 4, !tbaa !215
  %46 = fmul float %44, %45
  store float %46, float addrspace(1)* %3, align 4, !tbaa !215
  %47 = load float addrspace(1)* %4, align 4, !tbaa !215
  %48 = fmul float %46, %47
  store float %48, float addrspace(1)* %3, align 4, !tbaa !215
  %49 = load float addrspace(1)* %4, align 4, !tbaa !215
  %50 = fmul float %48, %49
  store float %50, float addrspace(1)* %3, align 4, !tbaa !215
  %51 = load float addrspace(1)* %4, align 4, !tbaa !215
  %52 = fmul float %50, %51
  store float %52, float addrspace(1)* %3, align 4, !tbaa !215
  %53 = load float addrspace(1)* %4, align 4, !tbaa !215
  %54 = fmul float %52, %53
  store float %54, float addrspace(1)* %3, align 4, !tbaa !215
  %55 = load float addrspace(1)* %4, align 4, !tbaa !215
  %56 = fmul float %54, %55
  store float %56, float addrspace(1)* %3, align 4, !tbaa !215
  %57 = load float addrspace(1)* %4, align 4, !tbaa !215
  %58 = fmul float %56, %57
  store float %58, float addrspace(1)* %3, align 4, !tbaa !215
  %59 = load float addrspace(1)* %4, align 4, !tbaa !215
  %60 = fmul float %58, %59
  store float %60, float addrspace(1)* %3, align 4, !tbaa !215
  %61 = load float addrspace(1)* %4, align 4, !tbaa !215
  %62 = fmul float %60, %61
  store float %62, float addrspace(1)* %3, align 4, !tbaa !215
  %63 = load float addrspace(1)* %4, align 4, !tbaa !215
  %64 = fmul float %62, %63
  store float %64, float addrspace(1)* %3, align 4, !tbaa !215
  %65 = load float addrspace(1)* %4, align 4, !tbaa !215
  %66 = fmul float %64, %65
  store float %66, float addrspace(1)* %3, align 4, !tbaa !215
  %67 = load float addrspace(1)* %4, align 4, !tbaa !215
  %68 = fmul float %66, %67
  store float %68, float addrspace(1)* %3, align 4, !tbaa !215
  %69 = load float addrspace(1)* %4, align 4, !tbaa !215
  %70 = fmul float %68, %69
  store float %70, float addrspace(1)* %3, align 4, !tbaa !215
  %71 = load float addrspace(1)* %4, align 4, !tbaa !215
  %72 = fmul float %70, %71
  store float %72, float addrspace(1)* %3, align 4, !tbaa !215
  %73 = load float addrspace(1)* %4, align 4, !tbaa !215
  %74 = fmul float %72, %73
  store float %74, float addrspace(1)* %3, align 4, !tbaa !215
  %75 = load float addrspace(1)* %4, align 4, !tbaa !215
  %76 = fmul float %74, %75
  store float %76, float addrspace(1)* %3, align 4, !tbaa !215
  %77 = load float addrspace(1)* %4, align 4, !tbaa !215
  %78 = fmul float %76, %77
  store float %78, float addrspace(1)* %3, align 4, !tbaa !215
  %79 = load float addrspace(1)* %4, align 4, !tbaa !215
  %80 = fmul float %78, %79
  store float %80, float addrspace(1)* %3, align 4, !tbaa !215
  %81 = load float addrspace(1)* %4, align 4, !tbaa !215
  %82 = fmul float %80, %81
  store float %82, float addrspace(1)* %3, align 4, !tbaa !215
  %83 = load float addrspace(1)* %4, align 4, !tbaa !215
  %84 = fmul float %82, %83
  store float %84, float addrspace(1)* %3, align 4, !tbaa !215
  %85 = load float addrspace(1)* %4, align 4, !tbaa !215
  %86 = fmul float %84, %85
  store float %86, float addrspace(1)* %3, align 4, !tbaa !215
  %87 = load float addrspace(1)* %4, align 4, !tbaa !215
  %88 = fmul float %86, %87
  store float %88, float addrspace(1)* %3, align 4, !tbaa !215
  %89 = load float addrspace(1)* %4, align 4, !tbaa !215
  %90 = fmul float %88, %89
  store float %90, float addrspace(1)* %3, align 4, !tbaa !215
  %91 = load float addrspace(1)* %4, align 4, !tbaa !215
  %92 = fmul float %90, %91
  store float %92, float addrspace(1)* %3, align 4, !tbaa !215
  %93 = load float addrspace(1)* %4, align 4, !tbaa !215
  %94 = fmul float %92, %93
  store float %94, float addrspace(1)* %3, align 4, !tbaa !215
  %95 = load float addrspace(1)* %4, align 4, !tbaa !215
  %96 = fmul float %94, %95
  store float %96, float addrspace(1)* %3, align 4, !tbaa !215
  %97 = load float addrspace(1)* %4, align 4, !tbaa !215
  %98 = fmul float %96, %97
  store float %98, float addrspace(1)* %3, align 4, !tbaa !215
  %99 = load float addrspace(1)* %4, align 4, !tbaa !215
  %100 = fmul float %98, %99
  store float %100, float addrspace(1)* %3, align 4, !tbaa !215
  %101 = load float addrspace(1)* %4, align 4, !tbaa !215
  %102 = fmul float %100, %101
  store float %102, float addrspace(1)* %3, align 4, !tbaa !215
  %103 = load float addrspace(1)* %4, align 4, !tbaa !215
  %104 = fmul float %102, %103
  store float %104, float addrspace(1)* %3, align 4, !tbaa !215
  %105 = load float addrspace(1)* %4, align 4, !tbaa !215
  %106 = fmul float %104, %105
  store float %106, float addrspace(1)* %3, align 4, !tbaa !215
  %107 = load float addrspace(1)* %4, align 4, !tbaa !215
  %108 = fmul float %106, %107
  store float %108, float addrspace(1)* %3, align 4, !tbaa !215
  %109 = load float addrspace(1)* %4, align 4, !tbaa !215
  %110 = fmul float %108, %109
  store float %110, float addrspace(1)* %3, align 4, !tbaa !215
  %111 = load float addrspace(1)* %4, align 4, !tbaa !215
  %112 = fmul float %110, %111
  store float %112, float addrspace(1)* %3, align 4, !tbaa !215
  %113 = load float addrspace(1)* %4, align 4, !tbaa !215
  %114 = fmul float %112, %113
  store float %114, float addrspace(1)* %3, align 4, !tbaa !215
  %115 = load float addrspace(1)* %4, align 4, !tbaa !215
  %116 = fmul float %114, %115
  store float %116, float addrspace(1)* %3, align 4, !tbaa !215
  %117 = load float addrspace(1)* %4, align 4, !tbaa !215
  %118 = fmul float %116, %117
  store float %118, float addrspace(1)* %3, align 4, !tbaa !215
  %119 = load float addrspace(1)* %4, align 4, !tbaa !215
  %120 = fmul float %118, %119
  store float %120, float addrspace(1)* %3, align 4, !tbaa !215
  %121 = load float addrspace(1)* %4, align 4, !tbaa !215
  %122 = fmul float %120, %121
  store float %122, float addrspace(1)* %3, align 4, !tbaa !215
  %123 = load float addrspace(1)* %4, align 4, !tbaa !215
  %124 = fmul float %122, %123
  store float %124, float addrspace(1)* %3, align 4, !tbaa !215
  %125 = load float addrspace(1)* %4, align 4, !tbaa !215
  %126 = fmul float %124, %125
  store float %126, float addrspace(1)* %3, align 4, !tbaa !215
  %127 = load float addrspace(1)* %4, align 4, !tbaa !215
  %128 = fmul float %126, %127
  store float %128, float addrspace(1)* %3, align 4, !tbaa !215
  %129 = load float addrspace(1)* %4, align 4, !tbaa !215
  %130 = fmul float %128, %129
  store float %130, float addrspace(1)* %3, align 4, !tbaa !215
  %131 = load float addrspace(1)* %4, align 4, !tbaa !215
  %132 = fmul float %130, %131
  store float %132, float addrspace(1)* %3, align 4, !tbaa !215
  %133 = add nsw i32 %j.0378, 1
  %134 = icmp slt i32 %133, 128
  br i1 %134, label %5, label %135

; <label>:135                                     ; preds = %5
  ret void
}

define cc76 void @scalar_sp_div_iter_128_unroll_64_kernel(float addrspace(1)* nocapture %a, float addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds float addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds float addrspace(1)* %b, i64 %2
  %.pre = load float addrspace(1)* %3, align 4, !tbaa !215
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi float [ %.pre, %0 ], [ %132, %5 ]
  %j.0378 = phi i32 [ 0, %0 ], [ %133, %5 ]
  %7 = load float addrspace(1)* %4, align 4, !tbaa !215
  %8 = fdiv float %6, %7, !fpmath !218
  store float %8, float addrspace(1)* %3, align 4, !tbaa !215
  %9 = load float addrspace(1)* %4, align 4, !tbaa !215
  %10 = fdiv float %8, %9, !fpmath !218
  store float %10, float addrspace(1)* %3, align 4, !tbaa !215
  %11 = load float addrspace(1)* %4, align 4, !tbaa !215
  %12 = fdiv float %10, %11, !fpmath !218
  store float %12, float addrspace(1)* %3, align 4, !tbaa !215
  %13 = load float addrspace(1)* %4, align 4, !tbaa !215
  %14 = fdiv float %12, %13, !fpmath !218
  store float %14, float addrspace(1)* %3, align 4, !tbaa !215
  %15 = load float addrspace(1)* %4, align 4, !tbaa !215
  %16 = fdiv float %14, %15, !fpmath !218
  store float %16, float addrspace(1)* %3, align 4, !tbaa !215
  %17 = load float addrspace(1)* %4, align 4, !tbaa !215
  %18 = fdiv float %16, %17, !fpmath !218
  store float %18, float addrspace(1)* %3, align 4, !tbaa !215
  %19 = load float addrspace(1)* %4, align 4, !tbaa !215
  %20 = fdiv float %18, %19, !fpmath !218
  store float %20, float addrspace(1)* %3, align 4, !tbaa !215
  %21 = load float addrspace(1)* %4, align 4, !tbaa !215
  %22 = fdiv float %20, %21, !fpmath !218
  store float %22, float addrspace(1)* %3, align 4, !tbaa !215
  %23 = load float addrspace(1)* %4, align 4, !tbaa !215
  %24 = fdiv float %22, %23, !fpmath !218
  store float %24, float addrspace(1)* %3, align 4, !tbaa !215
  %25 = load float addrspace(1)* %4, align 4, !tbaa !215
  %26 = fdiv float %24, %25, !fpmath !218
  store float %26, float addrspace(1)* %3, align 4, !tbaa !215
  %27 = load float addrspace(1)* %4, align 4, !tbaa !215
  %28 = fdiv float %26, %27, !fpmath !218
  store float %28, float addrspace(1)* %3, align 4, !tbaa !215
  %29 = load float addrspace(1)* %4, align 4, !tbaa !215
  %30 = fdiv float %28, %29, !fpmath !218
  store float %30, float addrspace(1)* %3, align 4, !tbaa !215
  %31 = load float addrspace(1)* %4, align 4, !tbaa !215
  %32 = fdiv float %30, %31, !fpmath !218
  store float %32, float addrspace(1)* %3, align 4, !tbaa !215
  %33 = load float addrspace(1)* %4, align 4, !tbaa !215
  %34 = fdiv float %32, %33, !fpmath !218
  store float %34, float addrspace(1)* %3, align 4, !tbaa !215
  %35 = load float addrspace(1)* %4, align 4, !tbaa !215
  %36 = fdiv float %34, %35, !fpmath !218
  store float %36, float addrspace(1)* %3, align 4, !tbaa !215
  %37 = load float addrspace(1)* %4, align 4, !tbaa !215
  %38 = fdiv float %36, %37, !fpmath !218
  store float %38, float addrspace(1)* %3, align 4, !tbaa !215
  %39 = load float addrspace(1)* %4, align 4, !tbaa !215
  %40 = fdiv float %38, %39, !fpmath !218
  store float %40, float addrspace(1)* %3, align 4, !tbaa !215
  %41 = load float addrspace(1)* %4, align 4, !tbaa !215
  %42 = fdiv float %40, %41, !fpmath !218
  store float %42, float addrspace(1)* %3, align 4, !tbaa !215
  %43 = load float addrspace(1)* %4, align 4, !tbaa !215
  %44 = fdiv float %42, %43, !fpmath !218
  store float %44, float addrspace(1)* %3, align 4, !tbaa !215
  %45 = load float addrspace(1)* %4, align 4, !tbaa !215
  %46 = fdiv float %44, %45, !fpmath !218
  store float %46, float addrspace(1)* %3, align 4, !tbaa !215
  %47 = load float addrspace(1)* %4, align 4, !tbaa !215
  %48 = fdiv float %46, %47, !fpmath !218
  store float %48, float addrspace(1)* %3, align 4, !tbaa !215
  %49 = load float addrspace(1)* %4, align 4, !tbaa !215
  %50 = fdiv float %48, %49, !fpmath !218
  store float %50, float addrspace(1)* %3, align 4, !tbaa !215
  %51 = load float addrspace(1)* %4, align 4, !tbaa !215
  %52 = fdiv float %50, %51, !fpmath !218
  store float %52, float addrspace(1)* %3, align 4, !tbaa !215
  %53 = load float addrspace(1)* %4, align 4, !tbaa !215
  %54 = fdiv float %52, %53, !fpmath !218
  store float %54, float addrspace(1)* %3, align 4, !tbaa !215
  %55 = load float addrspace(1)* %4, align 4, !tbaa !215
  %56 = fdiv float %54, %55, !fpmath !218
  store float %56, float addrspace(1)* %3, align 4, !tbaa !215
  %57 = load float addrspace(1)* %4, align 4, !tbaa !215
  %58 = fdiv float %56, %57, !fpmath !218
  store float %58, float addrspace(1)* %3, align 4, !tbaa !215
  %59 = load float addrspace(1)* %4, align 4, !tbaa !215
  %60 = fdiv float %58, %59, !fpmath !218
  store float %60, float addrspace(1)* %3, align 4, !tbaa !215
  %61 = load float addrspace(1)* %4, align 4, !tbaa !215
  %62 = fdiv float %60, %61, !fpmath !218
  store float %62, float addrspace(1)* %3, align 4, !tbaa !215
  %63 = load float addrspace(1)* %4, align 4, !tbaa !215
  %64 = fdiv float %62, %63, !fpmath !218
  store float %64, float addrspace(1)* %3, align 4, !tbaa !215
  %65 = load float addrspace(1)* %4, align 4, !tbaa !215
  %66 = fdiv float %64, %65, !fpmath !218
  store float %66, float addrspace(1)* %3, align 4, !tbaa !215
  %67 = load float addrspace(1)* %4, align 4, !tbaa !215
  %68 = fdiv float %66, %67, !fpmath !218
  store float %68, float addrspace(1)* %3, align 4, !tbaa !215
  %69 = load float addrspace(1)* %4, align 4, !tbaa !215
  %70 = fdiv float %68, %69, !fpmath !218
  store float %70, float addrspace(1)* %3, align 4, !tbaa !215
  %71 = load float addrspace(1)* %4, align 4, !tbaa !215
  %72 = fdiv float %70, %71, !fpmath !218
  store float %72, float addrspace(1)* %3, align 4, !tbaa !215
  %73 = load float addrspace(1)* %4, align 4, !tbaa !215
  %74 = fdiv float %72, %73, !fpmath !218
  store float %74, float addrspace(1)* %3, align 4, !tbaa !215
  %75 = load float addrspace(1)* %4, align 4, !tbaa !215
  %76 = fdiv float %74, %75, !fpmath !218
  store float %76, float addrspace(1)* %3, align 4, !tbaa !215
  %77 = load float addrspace(1)* %4, align 4, !tbaa !215
  %78 = fdiv float %76, %77, !fpmath !218
  store float %78, float addrspace(1)* %3, align 4, !tbaa !215
  %79 = load float addrspace(1)* %4, align 4, !tbaa !215
  %80 = fdiv float %78, %79, !fpmath !218
  store float %80, float addrspace(1)* %3, align 4, !tbaa !215
  %81 = load float addrspace(1)* %4, align 4, !tbaa !215
  %82 = fdiv float %80, %81, !fpmath !218
  store float %82, float addrspace(1)* %3, align 4, !tbaa !215
  %83 = load float addrspace(1)* %4, align 4, !tbaa !215
  %84 = fdiv float %82, %83, !fpmath !218
  store float %84, float addrspace(1)* %3, align 4, !tbaa !215
  %85 = load float addrspace(1)* %4, align 4, !tbaa !215
  %86 = fdiv float %84, %85, !fpmath !218
  store float %86, float addrspace(1)* %3, align 4, !tbaa !215
  %87 = load float addrspace(1)* %4, align 4, !tbaa !215
  %88 = fdiv float %86, %87, !fpmath !218
  store float %88, float addrspace(1)* %3, align 4, !tbaa !215
  %89 = load float addrspace(1)* %4, align 4, !tbaa !215
  %90 = fdiv float %88, %89, !fpmath !218
  store float %90, float addrspace(1)* %3, align 4, !tbaa !215
  %91 = load float addrspace(1)* %4, align 4, !tbaa !215
  %92 = fdiv float %90, %91, !fpmath !218
  store float %92, float addrspace(1)* %3, align 4, !tbaa !215
  %93 = load float addrspace(1)* %4, align 4, !tbaa !215
  %94 = fdiv float %92, %93, !fpmath !218
  store float %94, float addrspace(1)* %3, align 4, !tbaa !215
  %95 = load float addrspace(1)* %4, align 4, !tbaa !215
  %96 = fdiv float %94, %95, !fpmath !218
  store float %96, float addrspace(1)* %3, align 4, !tbaa !215
  %97 = load float addrspace(1)* %4, align 4, !tbaa !215
  %98 = fdiv float %96, %97, !fpmath !218
  store float %98, float addrspace(1)* %3, align 4, !tbaa !215
  %99 = load float addrspace(1)* %4, align 4, !tbaa !215
  %100 = fdiv float %98, %99, !fpmath !218
  store float %100, float addrspace(1)* %3, align 4, !tbaa !215
  %101 = load float addrspace(1)* %4, align 4, !tbaa !215
  %102 = fdiv float %100, %101, !fpmath !218
  store float %102, float addrspace(1)* %3, align 4, !tbaa !215
  %103 = load float addrspace(1)* %4, align 4, !tbaa !215
  %104 = fdiv float %102, %103, !fpmath !218
  store float %104, float addrspace(1)* %3, align 4, !tbaa !215
  %105 = load float addrspace(1)* %4, align 4, !tbaa !215
  %106 = fdiv float %104, %105, !fpmath !218
  store float %106, float addrspace(1)* %3, align 4, !tbaa !215
  %107 = load float addrspace(1)* %4, align 4, !tbaa !215
  %108 = fdiv float %106, %107, !fpmath !218
  store float %108, float addrspace(1)* %3, align 4, !tbaa !215
  %109 = load float addrspace(1)* %4, align 4, !tbaa !215
  %110 = fdiv float %108, %109, !fpmath !218
  store float %110, float addrspace(1)* %3, align 4, !tbaa !215
  %111 = load float addrspace(1)* %4, align 4, !tbaa !215
  %112 = fdiv float %110, %111, !fpmath !218
  store float %112, float addrspace(1)* %3, align 4, !tbaa !215
  %113 = load float addrspace(1)* %4, align 4, !tbaa !215
  %114 = fdiv float %112, %113, !fpmath !218
  store float %114, float addrspace(1)* %3, align 4, !tbaa !215
  %115 = load float addrspace(1)* %4, align 4, !tbaa !215
  %116 = fdiv float %114, %115, !fpmath !218
  store float %116, float addrspace(1)* %3, align 4, !tbaa !215
  %117 = load float addrspace(1)* %4, align 4, !tbaa !215
  %118 = fdiv float %116, %117, !fpmath !218
  store float %118, float addrspace(1)* %3, align 4, !tbaa !215
  %119 = load float addrspace(1)* %4, align 4, !tbaa !215
  %120 = fdiv float %118, %119, !fpmath !218
  store float %120, float addrspace(1)* %3, align 4, !tbaa !215
  %121 = load float addrspace(1)* %4, align 4, !tbaa !215
  %122 = fdiv float %120, %121, !fpmath !218
  store float %122, float addrspace(1)* %3, align 4, !tbaa !215
  %123 = load float addrspace(1)* %4, align 4, !tbaa !215
  %124 = fdiv float %122, %123, !fpmath !218
  store float %124, float addrspace(1)* %3, align 4, !tbaa !215
  %125 = load float addrspace(1)* %4, align 4, !tbaa !215
  %126 = fdiv float %124, %125, !fpmath !218
  store float %126, float addrspace(1)* %3, align 4, !tbaa !215
  %127 = load float addrspace(1)* %4, align 4, !tbaa !215
  %128 = fdiv float %126, %127, !fpmath !218
  store float %128, float addrspace(1)* %3, align 4, !tbaa !215
  %129 = load float addrspace(1)* %4, align 4, !tbaa !215
  %130 = fdiv float %128, %129, !fpmath !218
  store float %130, float addrspace(1)* %3, align 4, !tbaa !215
  %131 = load float addrspace(1)* %4, align 4, !tbaa !215
  %132 = fdiv float %130, %131, !fpmath !218
  store float %132, float addrspace(1)* %3, align 4, !tbaa !215
  %133 = add nsw i32 %j.0378, 1
  %134 = icmp slt i32 %133, 128
  br i1 %134, label %5, label %135

; <label>:135                                     ; preds = %5
  ret void
}

define cc76 void @scalar_sp_mad_iter_128_unroll_64_kernel(float addrspace(1)* nocapture %a, float addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds float addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds float addrspace(1)* %b, i64 %2
  %.pre = load float addrspace(1)* %3, align 4, !tbaa !215
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi float [ %.pre, %0 ], [ %132, %5 ]
  %j.0504 = phi i32 [ 0, %0 ], [ %133, %5 ]
  %7 = load float addrspace(1)* %4, align 4, !tbaa !215
  %8 = tail call float @llvm.fmuladd.f32(float %6, float %7, float %7)
  store float %8, float addrspace(1)* %3, align 4, !tbaa !215
  %9 = load float addrspace(1)* %4, align 4, !tbaa !215
  %10 = tail call float @llvm.fmuladd.f32(float %8, float %9, float %9)
  store float %10, float addrspace(1)* %3, align 4, !tbaa !215
  %11 = load float addrspace(1)* %4, align 4, !tbaa !215
  %12 = tail call float @llvm.fmuladd.f32(float %10, float %11, float %11)
  store float %12, float addrspace(1)* %3, align 4, !tbaa !215
  %13 = load float addrspace(1)* %4, align 4, !tbaa !215
  %14 = tail call float @llvm.fmuladd.f32(float %12, float %13, float %13)
  store float %14, float addrspace(1)* %3, align 4, !tbaa !215
  %15 = load float addrspace(1)* %4, align 4, !tbaa !215
  %16 = tail call float @llvm.fmuladd.f32(float %14, float %15, float %15)
  store float %16, float addrspace(1)* %3, align 4, !tbaa !215
  %17 = load float addrspace(1)* %4, align 4, !tbaa !215
  %18 = tail call float @llvm.fmuladd.f32(float %16, float %17, float %17)
  store float %18, float addrspace(1)* %3, align 4, !tbaa !215
  %19 = load float addrspace(1)* %4, align 4, !tbaa !215
  %20 = tail call float @llvm.fmuladd.f32(float %18, float %19, float %19)
  store float %20, float addrspace(1)* %3, align 4, !tbaa !215
  %21 = load float addrspace(1)* %4, align 4, !tbaa !215
  %22 = tail call float @llvm.fmuladd.f32(float %20, float %21, float %21)
  store float %22, float addrspace(1)* %3, align 4, !tbaa !215
  %23 = load float addrspace(1)* %4, align 4, !tbaa !215
  %24 = tail call float @llvm.fmuladd.f32(float %22, float %23, float %23)
  store float %24, float addrspace(1)* %3, align 4, !tbaa !215
  %25 = load float addrspace(1)* %4, align 4, !tbaa !215
  %26 = tail call float @llvm.fmuladd.f32(float %24, float %25, float %25)
  store float %26, float addrspace(1)* %3, align 4, !tbaa !215
  %27 = load float addrspace(1)* %4, align 4, !tbaa !215
  %28 = tail call float @llvm.fmuladd.f32(float %26, float %27, float %27)
  store float %28, float addrspace(1)* %3, align 4, !tbaa !215
  %29 = load float addrspace(1)* %4, align 4, !tbaa !215
  %30 = tail call float @llvm.fmuladd.f32(float %28, float %29, float %29)
  store float %30, float addrspace(1)* %3, align 4, !tbaa !215
  %31 = load float addrspace(1)* %4, align 4, !tbaa !215
  %32 = tail call float @llvm.fmuladd.f32(float %30, float %31, float %31)
  store float %32, float addrspace(1)* %3, align 4, !tbaa !215
  %33 = load float addrspace(1)* %4, align 4, !tbaa !215
  %34 = tail call float @llvm.fmuladd.f32(float %32, float %33, float %33)
  store float %34, float addrspace(1)* %3, align 4, !tbaa !215
  %35 = load float addrspace(1)* %4, align 4, !tbaa !215
  %36 = tail call float @llvm.fmuladd.f32(float %34, float %35, float %35)
  store float %36, float addrspace(1)* %3, align 4, !tbaa !215
  %37 = load float addrspace(1)* %4, align 4, !tbaa !215
  %38 = tail call float @llvm.fmuladd.f32(float %36, float %37, float %37)
  store float %38, float addrspace(1)* %3, align 4, !tbaa !215
  %39 = load float addrspace(1)* %4, align 4, !tbaa !215
  %40 = tail call float @llvm.fmuladd.f32(float %38, float %39, float %39)
  store float %40, float addrspace(1)* %3, align 4, !tbaa !215
  %41 = load float addrspace(1)* %4, align 4, !tbaa !215
  %42 = tail call float @llvm.fmuladd.f32(float %40, float %41, float %41)
  store float %42, float addrspace(1)* %3, align 4, !tbaa !215
  %43 = load float addrspace(1)* %4, align 4, !tbaa !215
  %44 = tail call float @llvm.fmuladd.f32(float %42, float %43, float %43)
  store float %44, float addrspace(1)* %3, align 4, !tbaa !215
  %45 = load float addrspace(1)* %4, align 4, !tbaa !215
  %46 = tail call float @llvm.fmuladd.f32(float %44, float %45, float %45)
  store float %46, float addrspace(1)* %3, align 4, !tbaa !215
  %47 = load float addrspace(1)* %4, align 4, !tbaa !215
  %48 = tail call float @llvm.fmuladd.f32(float %46, float %47, float %47)
  store float %48, float addrspace(1)* %3, align 4, !tbaa !215
  %49 = load float addrspace(1)* %4, align 4, !tbaa !215
  %50 = tail call float @llvm.fmuladd.f32(float %48, float %49, float %49)
  store float %50, float addrspace(1)* %3, align 4, !tbaa !215
  %51 = load float addrspace(1)* %4, align 4, !tbaa !215
  %52 = tail call float @llvm.fmuladd.f32(float %50, float %51, float %51)
  store float %52, float addrspace(1)* %3, align 4, !tbaa !215
  %53 = load float addrspace(1)* %4, align 4, !tbaa !215
  %54 = tail call float @llvm.fmuladd.f32(float %52, float %53, float %53)
  store float %54, float addrspace(1)* %3, align 4, !tbaa !215
  %55 = load float addrspace(1)* %4, align 4, !tbaa !215
  %56 = tail call float @llvm.fmuladd.f32(float %54, float %55, float %55)
  store float %56, float addrspace(1)* %3, align 4, !tbaa !215
  %57 = load float addrspace(1)* %4, align 4, !tbaa !215
  %58 = tail call float @llvm.fmuladd.f32(float %56, float %57, float %57)
  store float %58, float addrspace(1)* %3, align 4, !tbaa !215
  %59 = load float addrspace(1)* %4, align 4, !tbaa !215
  %60 = tail call float @llvm.fmuladd.f32(float %58, float %59, float %59)
  store float %60, float addrspace(1)* %3, align 4, !tbaa !215
  %61 = load float addrspace(1)* %4, align 4, !tbaa !215
  %62 = tail call float @llvm.fmuladd.f32(float %60, float %61, float %61)
  store float %62, float addrspace(1)* %3, align 4, !tbaa !215
  %63 = load float addrspace(1)* %4, align 4, !tbaa !215
  %64 = tail call float @llvm.fmuladd.f32(float %62, float %63, float %63)
  store float %64, float addrspace(1)* %3, align 4, !tbaa !215
  %65 = load float addrspace(1)* %4, align 4, !tbaa !215
  %66 = tail call float @llvm.fmuladd.f32(float %64, float %65, float %65)
  store float %66, float addrspace(1)* %3, align 4, !tbaa !215
  %67 = load float addrspace(1)* %4, align 4, !tbaa !215
  %68 = tail call float @llvm.fmuladd.f32(float %66, float %67, float %67)
  store float %68, float addrspace(1)* %3, align 4, !tbaa !215
  %69 = load float addrspace(1)* %4, align 4, !tbaa !215
  %70 = tail call float @llvm.fmuladd.f32(float %68, float %69, float %69)
  store float %70, float addrspace(1)* %3, align 4, !tbaa !215
  %71 = load float addrspace(1)* %4, align 4, !tbaa !215
  %72 = tail call float @llvm.fmuladd.f32(float %70, float %71, float %71)
  store float %72, float addrspace(1)* %3, align 4, !tbaa !215
  %73 = load float addrspace(1)* %4, align 4, !tbaa !215
  %74 = tail call float @llvm.fmuladd.f32(float %72, float %73, float %73)
  store float %74, float addrspace(1)* %3, align 4, !tbaa !215
  %75 = load float addrspace(1)* %4, align 4, !tbaa !215
  %76 = tail call float @llvm.fmuladd.f32(float %74, float %75, float %75)
  store float %76, float addrspace(1)* %3, align 4, !tbaa !215
  %77 = load float addrspace(1)* %4, align 4, !tbaa !215
  %78 = tail call float @llvm.fmuladd.f32(float %76, float %77, float %77)
  store float %78, float addrspace(1)* %3, align 4, !tbaa !215
  %79 = load float addrspace(1)* %4, align 4, !tbaa !215
  %80 = tail call float @llvm.fmuladd.f32(float %78, float %79, float %79)
  store float %80, float addrspace(1)* %3, align 4, !tbaa !215
  %81 = load float addrspace(1)* %4, align 4, !tbaa !215
  %82 = tail call float @llvm.fmuladd.f32(float %80, float %81, float %81)
  store float %82, float addrspace(1)* %3, align 4, !tbaa !215
  %83 = load float addrspace(1)* %4, align 4, !tbaa !215
  %84 = tail call float @llvm.fmuladd.f32(float %82, float %83, float %83)
  store float %84, float addrspace(1)* %3, align 4, !tbaa !215
  %85 = load float addrspace(1)* %4, align 4, !tbaa !215
  %86 = tail call float @llvm.fmuladd.f32(float %84, float %85, float %85)
  store float %86, float addrspace(1)* %3, align 4, !tbaa !215
  %87 = load float addrspace(1)* %4, align 4, !tbaa !215
  %88 = tail call float @llvm.fmuladd.f32(float %86, float %87, float %87)
  store float %88, float addrspace(1)* %3, align 4, !tbaa !215
  %89 = load float addrspace(1)* %4, align 4, !tbaa !215
  %90 = tail call float @llvm.fmuladd.f32(float %88, float %89, float %89)
  store float %90, float addrspace(1)* %3, align 4, !tbaa !215
  %91 = load float addrspace(1)* %4, align 4, !tbaa !215
  %92 = tail call float @llvm.fmuladd.f32(float %90, float %91, float %91)
  store float %92, float addrspace(1)* %3, align 4, !tbaa !215
  %93 = load float addrspace(1)* %4, align 4, !tbaa !215
  %94 = tail call float @llvm.fmuladd.f32(float %92, float %93, float %93)
  store float %94, float addrspace(1)* %3, align 4, !tbaa !215
  %95 = load float addrspace(1)* %4, align 4, !tbaa !215
  %96 = tail call float @llvm.fmuladd.f32(float %94, float %95, float %95)
  store float %96, float addrspace(1)* %3, align 4, !tbaa !215
  %97 = load float addrspace(1)* %4, align 4, !tbaa !215
  %98 = tail call float @llvm.fmuladd.f32(float %96, float %97, float %97)
  store float %98, float addrspace(1)* %3, align 4, !tbaa !215
  %99 = load float addrspace(1)* %4, align 4, !tbaa !215
  %100 = tail call float @llvm.fmuladd.f32(float %98, float %99, float %99)
  store float %100, float addrspace(1)* %3, align 4, !tbaa !215
  %101 = load float addrspace(1)* %4, align 4, !tbaa !215
  %102 = tail call float @llvm.fmuladd.f32(float %100, float %101, float %101)
  store float %102, float addrspace(1)* %3, align 4, !tbaa !215
  %103 = load float addrspace(1)* %4, align 4, !tbaa !215
  %104 = tail call float @llvm.fmuladd.f32(float %102, float %103, float %103)
  store float %104, float addrspace(1)* %3, align 4, !tbaa !215
  %105 = load float addrspace(1)* %4, align 4, !tbaa !215
  %106 = tail call float @llvm.fmuladd.f32(float %104, float %105, float %105)
  store float %106, float addrspace(1)* %3, align 4, !tbaa !215
  %107 = load float addrspace(1)* %4, align 4, !tbaa !215
  %108 = tail call float @llvm.fmuladd.f32(float %106, float %107, float %107)
  store float %108, float addrspace(1)* %3, align 4, !tbaa !215
  %109 = load float addrspace(1)* %4, align 4, !tbaa !215
  %110 = tail call float @llvm.fmuladd.f32(float %108, float %109, float %109)
  store float %110, float addrspace(1)* %3, align 4, !tbaa !215
  %111 = load float addrspace(1)* %4, align 4, !tbaa !215
  %112 = tail call float @llvm.fmuladd.f32(float %110, float %111, float %111)
  store float %112, float addrspace(1)* %3, align 4, !tbaa !215
  %113 = load float addrspace(1)* %4, align 4, !tbaa !215
  %114 = tail call float @llvm.fmuladd.f32(float %112, float %113, float %113)
  store float %114, float addrspace(1)* %3, align 4, !tbaa !215
  %115 = load float addrspace(1)* %4, align 4, !tbaa !215
  %116 = tail call float @llvm.fmuladd.f32(float %114, float %115, float %115)
  store float %116, float addrspace(1)* %3, align 4, !tbaa !215
  %117 = load float addrspace(1)* %4, align 4, !tbaa !215
  %118 = tail call float @llvm.fmuladd.f32(float %116, float %117, float %117)
  store float %118, float addrspace(1)* %3, align 4, !tbaa !215
  %119 = load float addrspace(1)* %4, align 4, !tbaa !215
  %120 = tail call float @llvm.fmuladd.f32(float %118, float %119, float %119)
  store float %120, float addrspace(1)* %3, align 4, !tbaa !215
  %121 = load float addrspace(1)* %4, align 4, !tbaa !215
  %122 = tail call float @llvm.fmuladd.f32(float %120, float %121, float %121)
  store float %122, float addrspace(1)* %3, align 4, !tbaa !215
  %123 = load float addrspace(1)* %4, align 4, !tbaa !215
  %124 = tail call float @llvm.fmuladd.f32(float %122, float %123, float %123)
  store float %124, float addrspace(1)* %3, align 4, !tbaa !215
  %125 = load float addrspace(1)* %4, align 4, !tbaa !215
  %126 = tail call float @llvm.fmuladd.f32(float %124, float %125, float %125)
  store float %126, float addrspace(1)* %3, align 4, !tbaa !215
  %127 = load float addrspace(1)* %4, align 4, !tbaa !215
  %128 = tail call float @llvm.fmuladd.f32(float %126, float %127, float %127)
  store float %128, float addrspace(1)* %3, align 4, !tbaa !215
  %129 = load float addrspace(1)* %4, align 4, !tbaa !215
  %130 = tail call float @llvm.fmuladd.f32(float %128, float %129, float %129)
  store float %130, float addrspace(1)* %3, align 4, !tbaa !215
  %131 = load float addrspace(1)* %4, align 4, !tbaa !215
  %132 = tail call float @llvm.fmuladd.f32(float %130, float %131, float %131)
  store float %132, float addrspace(1)* %3, align 4, !tbaa !215
  %133 = add nsw i32 %j.0504, 1
  %134 = icmp slt i32 %133, 128
  br i1 %134, label %5, label %135

; <label>:135                                     ; preds = %5
  ret void
}

define cc76 void @vect2_sp_add_iter_128_unroll_64_kernel(<2 x float> addrspace(1)* nocapture %a, <2 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <2 x float> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <2 x float> addrspace(1)* %b, i64 %2
  %.pre = load <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <2 x float> [ %.pre, %0 ], [ %132, %5 ]
  %j.0378 = phi i32 [ 0, %0 ], [ %133, %5 ]
  %7 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %8 = fadd <2 x float> %6, %7
  store <2 x float> %8, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %9 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %10 = fadd <2 x float> %8, %9
  store <2 x float> %10, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %11 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %12 = fadd <2 x float> %10, %11
  store <2 x float> %12, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %13 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %14 = fadd <2 x float> %12, %13
  store <2 x float> %14, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %15 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %16 = fadd <2 x float> %14, %15
  store <2 x float> %16, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %17 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %18 = fadd <2 x float> %16, %17
  store <2 x float> %18, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %19 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %20 = fadd <2 x float> %18, %19
  store <2 x float> %20, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %21 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %22 = fadd <2 x float> %20, %21
  store <2 x float> %22, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %23 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %24 = fadd <2 x float> %22, %23
  store <2 x float> %24, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %25 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %26 = fadd <2 x float> %24, %25
  store <2 x float> %26, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %27 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %28 = fadd <2 x float> %26, %27
  store <2 x float> %28, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %29 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %30 = fadd <2 x float> %28, %29
  store <2 x float> %30, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %31 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %32 = fadd <2 x float> %30, %31
  store <2 x float> %32, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %33 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %34 = fadd <2 x float> %32, %33
  store <2 x float> %34, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %35 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %36 = fadd <2 x float> %34, %35
  store <2 x float> %36, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %37 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %38 = fadd <2 x float> %36, %37
  store <2 x float> %38, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %39 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %40 = fadd <2 x float> %38, %39
  store <2 x float> %40, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %41 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %42 = fadd <2 x float> %40, %41
  store <2 x float> %42, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %43 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %44 = fadd <2 x float> %42, %43
  store <2 x float> %44, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %45 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %46 = fadd <2 x float> %44, %45
  store <2 x float> %46, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %47 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %48 = fadd <2 x float> %46, %47
  store <2 x float> %48, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %49 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %50 = fadd <2 x float> %48, %49
  store <2 x float> %50, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %51 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %52 = fadd <2 x float> %50, %51
  store <2 x float> %52, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %53 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %54 = fadd <2 x float> %52, %53
  store <2 x float> %54, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %55 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %56 = fadd <2 x float> %54, %55
  store <2 x float> %56, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %57 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %58 = fadd <2 x float> %56, %57
  store <2 x float> %58, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %59 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %60 = fadd <2 x float> %58, %59
  store <2 x float> %60, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %61 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %62 = fadd <2 x float> %60, %61
  store <2 x float> %62, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %63 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %64 = fadd <2 x float> %62, %63
  store <2 x float> %64, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %65 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %66 = fadd <2 x float> %64, %65
  store <2 x float> %66, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %67 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %68 = fadd <2 x float> %66, %67
  store <2 x float> %68, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %69 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %70 = fadd <2 x float> %68, %69
  store <2 x float> %70, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %71 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %72 = fadd <2 x float> %70, %71
  store <2 x float> %72, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %73 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %74 = fadd <2 x float> %72, %73
  store <2 x float> %74, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %75 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %76 = fadd <2 x float> %74, %75
  store <2 x float> %76, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %77 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %78 = fadd <2 x float> %76, %77
  store <2 x float> %78, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %79 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %80 = fadd <2 x float> %78, %79
  store <2 x float> %80, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %81 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %82 = fadd <2 x float> %80, %81
  store <2 x float> %82, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %83 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %84 = fadd <2 x float> %82, %83
  store <2 x float> %84, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %85 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %86 = fadd <2 x float> %84, %85
  store <2 x float> %86, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %87 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %88 = fadd <2 x float> %86, %87
  store <2 x float> %88, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %89 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %90 = fadd <2 x float> %88, %89
  store <2 x float> %90, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %91 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %92 = fadd <2 x float> %90, %91
  store <2 x float> %92, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %93 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %94 = fadd <2 x float> %92, %93
  store <2 x float> %94, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %95 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %96 = fadd <2 x float> %94, %95
  store <2 x float> %96, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %97 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %98 = fadd <2 x float> %96, %97
  store <2 x float> %98, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %99 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %100 = fadd <2 x float> %98, %99
  store <2 x float> %100, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %101 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %102 = fadd <2 x float> %100, %101
  store <2 x float> %102, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %103 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %104 = fadd <2 x float> %102, %103
  store <2 x float> %104, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %105 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %106 = fadd <2 x float> %104, %105
  store <2 x float> %106, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %107 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %108 = fadd <2 x float> %106, %107
  store <2 x float> %108, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %109 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %110 = fadd <2 x float> %108, %109
  store <2 x float> %110, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %111 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %112 = fadd <2 x float> %110, %111
  store <2 x float> %112, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %113 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %114 = fadd <2 x float> %112, %113
  store <2 x float> %114, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %115 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %116 = fadd <2 x float> %114, %115
  store <2 x float> %116, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %117 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %118 = fadd <2 x float> %116, %117
  store <2 x float> %118, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %119 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %120 = fadd <2 x float> %118, %119
  store <2 x float> %120, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %121 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %122 = fadd <2 x float> %120, %121
  store <2 x float> %122, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %123 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %124 = fadd <2 x float> %122, %123
  store <2 x float> %124, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %125 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %126 = fadd <2 x float> %124, %125
  store <2 x float> %126, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %127 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %128 = fadd <2 x float> %126, %127
  store <2 x float> %128, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %129 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %130 = fadd <2 x float> %128, %129
  store <2 x float> %130, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %131 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %132 = fadd <2 x float> %130, %131
  store <2 x float> %132, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %133 = add nsw i32 %j.0378, 1
  %134 = icmp slt i32 %133, 128
  br i1 %134, label %5, label %135

; <label>:135                                     ; preds = %5
  ret void
}

define cc76 void @vect2_sp_sub_iter_128_unroll_64_kernel(<2 x float> addrspace(1)* nocapture %a, <2 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <2 x float> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <2 x float> addrspace(1)* %b, i64 %2
  %.pre = load <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <2 x float> [ %.pre, %0 ], [ %132, %5 ]
  %j.0378 = phi i32 [ 0, %0 ], [ %133, %5 ]
  %7 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %8 = fsub <2 x float> %6, %7
  store <2 x float> %8, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %9 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %10 = fsub <2 x float> %8, %9
  store <2 x float> %10, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %11 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %12 = fsub <2 x float> %10, %11
  store <2 x float> %12, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %13 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %14 = fsub <2 x float> %12, %13
  store <2 x float> %14, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %15 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %16 = fsub <2 x float> %14, %15
  store <2 x float> %16, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %17 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %18 = fsub <2 x float> %16, %17
  store <2 x float> %18, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %19 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %20 = fsub <2 x float> %18, %19
  store <2 x float> %20, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %21 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %22 = fsub <2 x float> %20, %21
  store <2 x float> %22, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %23 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %24 = fsub <2 x float> %22, %23
  store <2 x float> %24, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %25 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %26 = fsub <2 x float> %24, %25
  store <2 x float> %26, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %27 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %28 = fsub <2 x float> %26, %27
  store <2 x float> %28, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %29 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %30 = fsub <2 x float> %28, %29
  store <2 x float> %30, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %31 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %32 = fsub <2 x float> %30, %31
  store <2 x float> %32, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %33 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %34 = fsub <2 x float> %32, %33
  store <2 x float> %34, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %35 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %36 = fsub <2 x float> %34, %35
  store <2 x float> %36, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %37 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %38 = fsub <2 x float> %36, %37
  store <2 x float> %38, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %39 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %40 = fsub <2 x float> %38, %39
  store <2 x float> %40, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %41 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %42 = fsub <2 x float> %40, %41
  store <2 x float> %42, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %43 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %44 = fsub <2 x float> %42, %43
  store <2 x float> %44, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %45 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %46 = fsub <2 x float> %44, %45
  store <2 x float> %46, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %47 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %48 = fsub <2 x float> %46, %47
  store <2 x float> %48, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %49 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %50 = fsub <2 x float> %48, %49
  store <2 x float> %50, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %51 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %52 = fsub <2 x float> %50, %51
  store <2 x float> %52, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %53 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %54 = fsub <2 x float> %52, %53
  store <2 x float> %54, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %55 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %56 = fsub <2 x float> %54, %55
  store <2 x float> %56, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %57 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %58 = fsub <2 x float> %56, %57
  store <2 x float> %58, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %59 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %60 = fsub <2 x float> %58, %59
  store <2 x float> %60, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %61 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %62 = fsub <2 x float> %60, %61
  store <2 x float> %62, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %63 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %64 = fsub <2 x float> %62, %63
  store <2 x float> %64, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %65 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %66 = fsub <2 x float> %64, %65
  store <2 x float> %66, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %67 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %68 = fsub <2 x float> %66, %67
  store <2 x float> %68, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %69 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %70 = fsub <2 x float> %68, %69
  store <2 x float> %70, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %71 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %72 = fsub <2 x float> %70, %71
  store <2 x float> %72, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %73 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %74 = fsub <2 x float> %72, %73
  store <2 x float> %74, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %75 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %76 = fsub <2 x float> %74, %75
  store <2 x float> %76, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %77 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %78 = fsub <2 x float> %76, %77
  store <2 x float> %78, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %79 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %80 = fsub <2 x float> %78, %79
  store <2 x float> %80, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %81 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %82 = fsub <2 x float> %80, %81
  store <2 x float> %82, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %83 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %84 = fsub <2 x float> %82, %83
  store <2 x float> %84, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %85 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %86 = fsub <2 x float> %84, %85
  store <2 x float> %86, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %87 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %88 = fsub <2 x float> %86, %87
  store <2 x float> %88, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %89 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %90 = fsub <2 x float> %88, %89
  store <2 x float> %90, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %91 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %92 = fsub <2 x float> %90, %91
  store <2 x float> %92, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %93 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %94 = fsub <2 x float> %92, %93
  store <2 x float> %94, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %95 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %96 = fsub <2 x float> %94, %95
  store <2 x float> %96, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %97 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %98 = fsub <2 x float> %96, %97
  store <2 x float> %98, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %99 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %100 = fsub <2 x float> %98, %99
  store <2 x float> %100, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %101 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %102 = fsub <2 x float> %100, %101
  store <2 x float> %102, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %103 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %104 = fsub <2 x float> %102, %103
  store <2 x float> %104, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %105 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %106 = fsub <2 x float> %104, %105
  store <2 x float> %106, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %107 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %108 = fsub <2 x float> %106, %107
  store <2 x float> %108, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %109 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %110 = fsub <2 x float> %108, %109
  store <2 x float> %110, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %111 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %112 = fsub <2 x float> %110, %111
  store <2 x float> %112, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %113 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %114 = fsub <2 x float> %112, %113
  store <2 x float> %114, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %115 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %116 = fsub <2 x float> %114, %115
  store <2 x float> %116, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %117 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %118 = fsub <2 x float> %116, %117
  store <2 x float> %118, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %119 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %120 = fsub <2 x float> %118, %119
  store <2 x float> %120, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %121 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %122 = fsub <2 x float> %120, %121
  store <2 x float> %122, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %123 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %124 = fsub <2 x float> %122, %123
  store <2 x float> %124, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %125 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %126 = fsub <2 x float> %124, %125
  store <2 x float> %126, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %127 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %128 = fsub <2 x float> %126, %127
  store <2 x float> %128, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %129 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %130 = fsub <2 x float> %128, %129
  store <2 x float> %130, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %131 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %132 = fsub <2 x float> %130, %131
  store <2 x float> %132, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %133 = add nsw i32 %j.0378, 1
  %134 = icmp slt i32 %133, 128
  br i1 %134, label %5, label %135

; <label>:135                                     ; preds = %5
  ret void
}

define cc76 void @vect2_sp_mul_iter_128_unroll_64_kernel(<2 x float> addrspace(1)* nocapture %a, <2 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <2 x float> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <2 x float> addrspace(1)* %b, i64 %2
  %.pre = load <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <2 x float> [ %.pre, %0 ], [ %132, %5 ]
  %j.0378 = phi i32 [ 0, %0 ], [ %133, %5 ]
  %7 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %8 = fmul <2 x float> %6, %7
  store <2 x float> %8, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %9 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %10 = fmul <2 x float> %8, %9
  store <2 x float> %10, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %11 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %12 = fmul <2 x float> %10, %11
  store <2 x float> %12, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %13 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %14 = fmul <2 x float> %12, %13
  store <2 x float> %14, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %15 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %16 = fmul <2 x float> %14, %15
  store <2 x float> %16, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %17 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %18 = fmul <2 x float> %16, %17
  store <2 x float> %18, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %19 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %20 = fmul <2 x float> %18, %19
  store <2 x float> %20, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %21 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %22 = fmul <2 x float> %20, %21
  store <2 x float> %22, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %23 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %24 = fmul <2 x float> %22, %23
  store <2 x float> %24, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %25 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %26 = fmul <2 x float> %24, %25
  store <2 x float> %26, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %27 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %28 = fmul <2 x float> %26, %27
  store <2 x float> %28, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %29 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %30 = fmul <2 x float> %28, %29
  store <2 x float> %30, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %31 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %32 = fmul <2 x float> %30, %31
  store <2 x float> %32, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %33 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %34 = fmul <2 x float> %32, %33
  store <2 x float> %34, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %35 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %36 = fmul <2 x float> %34, %35
  store <2 x float> %36, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %37 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %38 = fmul <2 x float> %36, %37
  store <2 x float> %38, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %39 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %40 = fmul <2 x float> %38, %39
  store <2 x float> %40, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %41 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %42 = fmul <2 x float> %40, %41
  store <2 x float> %42, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %43 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %44 = fmul <2 x float> %42, %43
  store <2 x float> %44, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %45 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %46 = fmul <2 x float> %44, %45
  store <2 x float> %46, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %47 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %48 = fmul <2 x float> %46, %47
  store <2 x float> %48, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %49 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %50 = fmul <2 x float> %48, %49
  store <2 x float> %50, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %51 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %52 = fmul <2 x float> %50, %51
  store <2 x float> %52, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %53 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %54 = fmul <2 x float> %52, %53
  store <2 x float> %54, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %55 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %56 = fmul <2 x float> %54, %55
  store <2 x float> %56, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %57 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %58 = fmul <2 x float> %56, %57
  store <2 x float> %58, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %59 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %60 = fmul <2 x float> %58, %59
  store <2 x float> %60, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %61 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %62 = fmul <2 x float> %60, %61
  store <2 x float> %62, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %63 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %64 = fmul <2 x float> %62, %63
  store <2 x float> %64, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %65 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %66 = fmul <2 x float> %64, %65
  store <2 x float> %66, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %67 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %68 = fmul <2 x float> %66, %67
  store <2 x float> %68, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %69 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %70 = fmul <2 x float> %68, %69
  store <2 x float> %70, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %71 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %72 = fmul <2 x float> %70, %71
  store <2 x float> %72, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %73 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %74 = fmul <2 x float> %72, %73
  store <2 x float> %74, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %75 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %76 = fmul <2 x float> %74, %75
  store <2 x float> %76, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %77 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %78 = fmul <2 x float> %76, %77
  store <2 x float> %78, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %79 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %80 = fmul <2 x float> %78, %79
  store <2 x float> %80, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %81 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %82 = fmul <2 x float> %80, %81
  store <2 x float> %82, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %83 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %84 = fmul <2 x float> %82, %83
  store <2 x float> %84, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %85 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %86 = fmul <2 x float> %84, %85
  store <2 x float> %86, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %87 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %88 = fmul <2 x float> %86, %87
  store <2 x float> %88, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %89 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %90 = fmul <2 x float> %88, %89
  store <2 x float> %90, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %91 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %92 = fmul <2 x float> %90, %91
  store <2 x float> %92, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %93 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %94 = fmul <2 x float> %92, %93
  store <2 x float> %94, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %95 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %96 = fmul <2 x float> %94, %95
  store <2 x float> %96, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %97 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %98 = fmul <2 x float> %96, %97
  store <2 x float> %98, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %99 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %100 = fmul <2 x float> %98, %99
  store <2 x float> %100, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %101 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %102 = fmul <2 x float> %100, %101
  store <2 x float> %102, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %103 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %104 = fmul <2 x float> %102, %103
  store <2 x float> %104, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %105 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %106 = fmul <2 x float> %104, %105
  store <2 x float> %106, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %107 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %108 = fmul <2 x float> %106, %107
  store <2 x float> %108, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %109 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %110 = fmul <2 x float> %108, %109
  store <2 x float> %110, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %111 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %112 = fmul <2 x float> %110, %111
  store <2 x float> %112, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %113 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %114 = fmul <2 x float> %112, %113
  store <2 x float> %114, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %115 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %116 = fmul <2 x float> %114, %115
  store <2 x float> %116, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %117 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %118 = fmul <2 x float> %116, %117
  store <2 x float> %118, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %119 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %120 = fmul <2 x float> %118, %119
  store <2 x float> %120, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %121 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %122 = fmul <2 x float> %120, %121
  store <2 x float> %122, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %123 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %124 = fmul <2 x float> %122, %123
  store <2 x float> %124, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %125 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %126 = fmul <2 x float> %124, %125
  store <2 x float> %126, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %127 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %128 = fmul <2 x float> %126, %127
  store <2 x float> %128, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %129 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %130 = fmul <2 x float> %128, %129
  store <2 x float> %130, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %131 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %132 = fmul <2 x float> %130, %131
  store <2 x float> %132, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %133 = add nsw i32 %j.0378, 1
  %134 = icmp slt i32 %133, 128
  br i1 %134, label %5, label %135

; <label>:135                                     ; preds = %5
  ret void
}

define cc76 void @vect2_sp_div_iter_128_unroll_64_kernel(<2 x float> addrspace(1)* nocapture %a, <2 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <2 x float> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <2 x float> addrspace(1)* %b, i64 %2
  %.pre = load <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <2 x float> [ %.pre, %0 ], [ %132, %5 ]
  %j.0378 = phi i32 [ 0, %0 ], [ %133, %5 ]
  %7 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %8 = fdiv <2 x float> %6, %7, !fpmath !218
  store <2 x float> %8, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %9 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %10 = fdiv <2 x float> %8, %9, !fpmath !218
  store <2 x float> %10, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %11 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %12 = fdiv <2 x float> %10, %11, !fpmath !218
  store <2 x float> %12, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %13 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %14 = fdiv <2 x float> %12, %13, !fpmath !218
  store <2 x float> %14, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %15 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %16 = fdiv <2 x float> %14, %15, !fpmath !218
  store <2 x float> %16, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %17 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %18 = fdiv <2 x float> %16, %17, !fpmath !218
  store <2 x float> %18, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %19 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %20 = fdiv <2 x float> %18, %19, !fpmath !218
  store <2 x float> %20, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %21 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %22 = fdiv <2 x float> %20, %21, !fpmath !218
  store <2 x float> %22, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %23 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %24 = fdiv <2 x float> %22, %23, !fpmath !218
  store <2 x float> %24, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %25 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %26 = fdiv <2 x float> %24, %25, !fpmath !218
  store <2 x float> %26, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %27 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %28 = fdiv <2 x float> %26, %27, !fpmath !218
  store <2 x float> %28, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %29 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %30 = fdiv <2 x float> %28, %29, !fpmath !218
  store <2 x float> %30, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %31 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %32 = fdiv <2 x float> %30, %31, !fpmath !218
  store <2 x float> %32, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %33 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %34 = fdiv <2 x float> %32, %33, !fpmath !218
  store <2 x float> %34, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %35 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %36 = fdiv <2 x float> %34, %35, !fpmath !218
  store <2 x float> %36, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %37 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %38 = fdiv <2 x float> %36, %37, !fpmath !218
  store <2 x float> %38, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %39 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %40 = fdiv <2 x float> %38, %39, !fpmath !218
  store <2 x float> %40, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %41 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %42 = fdiv <2 x float> %40, %41, !fpmath !218
  store <2 x float> %42, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %43 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %44 = fdiv <2 x float> %42, %43, !fpmath !218
  store <2 x float> %44, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %45 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %46 = fdiv <2 x float> %44, %45, !fpmath !218
  store <2 x float> %46, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %47 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %48 = fdiv <2 x float> %46, %47, !fpmath !218
  store <2 x float> %48, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %49 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %50 = fdiv <2 x float> %48, %49, !fpmath !218
  store <2 x float> %50, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %51 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %52 = fdiv <2 x float> %50, %51, !fpmath !218
  store <2 x float> %52, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %53 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %54 = fdiv <2 x float> %52, %53, !fpmath !218
  store <2 x float> %54, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %55 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %56 = fdiv <2 x float> %54, %55, !fpmath !218
  store <2 x float> %56, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %57 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %58 = fdiv <2 x float> %56, %57, !fpmath !218
  store <2 x float> %58, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %59 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %60 = fdiv <2 x float> %58, %59, !fpmath !218
  store <2 x float> %60, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %61 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %62 = fdiv <2 x float> %60, %61, !fpmath !218
  store <2 x float> %62, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %63 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %64 = fdiv <2 x float> %62, %63, !fpmath !218
  store <2 x float> %64, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %65 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %66 = fdiv <2 x float> %64, %65, !fpmath !218
  store <2 x float> %66, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %67 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %68 = fdiv <2 x float> %66, %67, !fpmath !218
  store <2 x float> %68, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %69 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %70 = fdiv <2 x float> %68, %69, !fpmath !218
  store <2 x float> %70, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %71 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %72 = fdiv <2 x float> %70, %71, !fpmath !218
  store <2 x float> %72, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %73 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %74 = fdiv <2 x float> %72, %73, !fpmath !218
  store <2 x float> %74, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %75 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %76 = fdiv <2 x float> %74, %75, !fpmath !218
  store <2 x float> %76, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %77 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %78 = fdiv <2 x float> %76, %77, !fpmath !218
  store <2 x float> %78, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %79 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %80 = fdiv <2 x float> %78, %79, !fpmath !218
  store <2 x float> %80, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %81 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %82 = fdiv <2 x float> %80, %81, !fpmath !218
  store <2 x float> %82, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %83 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %84 = fdiv <2 x float> %82, %83, !fpmath !218
  store <2 x float> %84, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %85 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %86 = fdiv <2 x float> %84, %85, !fpmath !218
  store <2 x float> %86, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %87 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %88 = fdiv <2 x float> %86, %87, !fpmath !218
  store <2 x float> %88, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %89 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %90 = fdiv <2 x float> %88, %89, !fpmath !218
  store <2 x float> %90, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %91 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %92 = fdiv <2 x float> %90, %91, !fpmath !218
  store <2 x float> %92, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %93 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %94 = fdiv <2 x float> %92, %93, !fpmath !218
  store <2 x float> %94, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %95 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %96 = fdiv <2 x float> %94, %95, !fpmath !218
  store <2 x float> %96, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %97 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %98 = fdiv <2 x float> %96, %97, !fpmath !218
  store <2 x float> %98, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %99 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %100 = fdiv <2 x float> %98, %99, !fpmath !218
  store <2 x float> %100, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %101 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %102 = fdiv <2 x float> %100, %101, !fpmath !218
  store <2 x float> %102, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %103 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %104 = fdiv <2 x float> %102, %103, !fpmath !218
  store <2 x float> %104, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %105 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %106 = fdiv <2 x float> %104, %105, !fpmath !218
  store <2 x float> %106, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %107 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %108 = fdiv <2 x float> %106, %107, !fpmath !218
  store <2 x float> %108, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %109 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %110 = fdiv <2 x float> %108, %109, !fpmath !218
  store <2 x float> %110, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %111 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %112 = fdiv <2 x float> %110, %111, !fpmath !218
  store <2 x float> %112, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %113 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %114 = fdiv <2 x float> %112, %113, !fpmath !218
  store <2 x float> %114, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %115 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %116 = fdiv <2 x float> %114, %115, !fpmath !218
  store <2 x float> %116, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %117 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %118 = fdiv <2 x float> %116, %117, !fpmath !218
  store <2 x float> %118, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %119 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %120 = fdiv <2 x float> %118, %119, !fpmath !218
  store <2 x float> %120, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %121 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %122 = fdiv <2 x float> %120, %121, !fpmath !218
  store <2 x float> %122, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %123 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %124 = fdiv <2 x float> %122, %123, !fpmath !218
  store <2 x float> %124, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %125 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %126 = fdiv <2 x float> %124, %125, !fpmath !218
  store <2 x float> %126, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %127 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %128 = fdiv <2 x float> %126, %127, !fpmath !218
  store <2 x float> %128, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %129 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %130 = fdiv <2 x float> %128, %129, !fpmath !218
  store <2 x float> %130, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %131 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %132 = fdiv <2 x float> %130, %131, !fpmath !218
  store <2 x float> %132, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %133 = add nsw i32 %j.0378, 1
  %134 = icmp slt i32 %133, 128
  br i1 %134, label %5, label %135

; <label>:135                                     ; preds = %5
  ret void
}

define cc76 void @vect2_sp_mad_iter_128_unroll_64_kernel(<2 x float> addrspace(1)* nocapture %a, <2 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <2 x float> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <2 x float> addrspace(1)* %b, i64 %2
  %.pre = load <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <2 x float> [ %.pre, %0 ], [ %132, %5 ]
  %j.0504 = phi i32 [ 0, %0 ], [ %133, %5 ]
  %7 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %8 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %6, <2 x float> %7, <2 x float> %7)
  store <2 x float> %8, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %9 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %10 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %8, <2 x float> %9, <2 x float> %9)
  store <2 x float> %10, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %11 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %12 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %10, <2 x float> %11, <2 x float> %11)
  store <2 x float> %12, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %13 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %14 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %12, <2 x float> %13, <2 x float> %13)
  store <2 x float> %14, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %15 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %16 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %14, <2 x float> %15, <2 x float> %15)
  store <2 x float> %16, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %17 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %18 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %16, <2 x float> %17, <2 x float> %17)
  store <2 x float> %18, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %19 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %20 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %18, <2 x float> %19, <2 x float> %19)
  store <2 x float> %20, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %21 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %22 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %20, <2 x float> %21, <2 x float> %21)
  store <2 x float> %22, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %23 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %24 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %22, <2 x float> %23, <2 x float> %23)
  store <2 x float> %24, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %25 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %26 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %24, <2 x float> %25, <2 x float> %25)
  store <2 x float> %26, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %27 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %28 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %26, <2 x float> %27, <2 x float> %27)
  store <2 x float> %28, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %29 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %30 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %28, <2 x float> %29, <2 x float> %29)
  store <2 x float> %30, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %31 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %32 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %30, <2 x float> %31, <2 x float> %31)
  store <2 x float> %32, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %33 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %34 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %32, <2 x float> %33, <2 x float> %33)
  store <2 x float> %34, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %35 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %36 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %34, <2 x float> %35, <2 x float> %35)
  store <2 x float> %36, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %37 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %38 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %36, <2 x float> %37, <2 x float> %37)
  store <2 x float> %38, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %39 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %40 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %38, <2 x float> %39, <2 x float> %39)
  store <2 x float> %40, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %41 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %42 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %40, <2 x float> %41, <2 x float> %41)
  store <2 x float> %42, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %43 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %44 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %42, <2 x float> %43, <2 x float> %43)
  store <2 x float> %44, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %45 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %46 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %44, <2 x float> %45, <2 x float> %45)
  store <2 x float> %46, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %47 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %48 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %46, <2 x float> %47, <2 x float> %47)
  store <2 x float> %48, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %49 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %50 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %48, <2 x float> %49, <2 x float> %49)
  store <2 x float> %50, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %51 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %52 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %50, <2 x float> %51, <2 x float> %51)
  store <2 x float> %52, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %53 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %54 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %52, <2 x float> %53, <2 x float> %53)
  store <2 x float> %54, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %55 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %56 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %54, <2 x float> %55, <2 x float> %55)
  store <2 x float> %56, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %57 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %58 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %56, <2 x float> %57, <2 x float> %57)
  store <2 x float> %58, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %59 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %60 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %58, <2 x float> %59, <2 x float> %59)
  store <2 x float> %60, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %61 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %62 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %60, <2 x float> %61, <2 x float> %61)
  store <2 x float> %62, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %63 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %64 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %62, <2 x float> %63, <2 x float> %63)
  store <2 x float> %64, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %65 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %66 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %64, <2 x float> %65, <2 x float> %65)
  store <2 x float> %66, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %67 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %68 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %66, <2 x float> %67, <2 x float> %67)
  store <2 x float> %68, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %69 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %70 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %68, <2 x float> %69, <2 x float> %69)
  store <2 x float> %70, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %71 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %72 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %70, <2 x float> %71, <2 x float> %71)
  store <2 x float> %72, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %73 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %74 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %72, <2 x float> %73, <2 x float> %73)
  store <2 x float> %74, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %75 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %76 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %74, <2 x float> %75, <2 x float> %75)
  store <2 x float> %76, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %77 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %78 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %76, <2 x float> %77, <2 x float> %77)
  store <2 x float> %78, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %79 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %80 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %78, <2 x float> %79, <2 x float> %79)
  store <2 x float> %80, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %81 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %82 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %80, <2 x float> %81, <2 x float> %81)
  store <2 x float> %82, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %83 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %84 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %82, <2 x float> %83, <2 x float> %83)
  store <2 x float> %84, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %85 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %86 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %84, <2 x float> %85, <2 x float> %85)
  store <2 x float> %86, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %87 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %88 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %86, <2 x float> %87, <2 x float> %87)
  store <2 x float> %88, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %89 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %90 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %88, <2 x float> %89, <2 x float> %89)
  store <2 x float> %90, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %91 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %92 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %90, <2 x float> %91, <2 x float> %91)
  store <2 x float> %92, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %93 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %94 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %92, <2 x float> %93, <2 x float> %93)
  store <2 x float> %94, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %95 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %96 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %94, <2 x float> %95, <2 x float> %95)
  store <2 x float> %96, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %97 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %98 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %96, <2 x float> %97, <2 x float> %97)
  store <2 x float> %98, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %99 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %100 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %98, <2 x float> %99, <2 x float> %99)
  store <2 x float> %100, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %101 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %102 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %100, <2 x float> %101, <2 x float> %101)
  store <2 x float> %102, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %103 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %104 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %102, <2 x float> %103, <2 x float> %103)
  store <2 x float> %104, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %105 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %106 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %104, <2 x float> %105, <2 x float> %105)
  store <2 x float> %106, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %107 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %108 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %106, <2 x float> %107, <2 x float> %107)
  store <2 x float> %108, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %109 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %110 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %108, <2 x float> %109, <2 x float> %109)
  store <2 x float> %110, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %111 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %112 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %110, <2 x float> %111, <2 x float> %111)
  store <2 x float> %112, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %113 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %114 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %112, <2 x float> %113, <2 x float> %113)
  store <2 x float> %114, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %115 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %116 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %114, <2 x float> %115, <2 x float> %115)
  store <2 x float> %116, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %117 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %118 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %116, <2 x float> %117, <2 x float> %117)
  store <2 x float> %118, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %119 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %120 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %118, <2 x float> %119, <2 x float> %119)
  store <2 x float> %120, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %121 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %122 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %120, <2 x float> %121, <2 x float> %121)
  store <2 x float> %122, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %123 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %124 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %122, <2 x float> %123, <2 x float> %123)
  store <2 x float> %124, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %125 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %126 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %124, <2 x float> %125, <2 x float> %125)
  store <2 x float> %126, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %127 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %128 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %126, <2 x float> %127, <2 x float> %127)
  store <2 x float> %128, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %129 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %130 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %128, <2 x float> %129, <2 x float> %129)
  store <2 x float> %130, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %131 = load <2 x float> addrspace(1)* %4, align 8, !tbaa !216
  %132 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %130, <2 x float> %131, <2 x float> %131)
  store <2 x float> %132, <2 x float> addrspace(1)* %3, align 8, !tbaa !216
  %133 = add nsw i32 %j.0504, 1
  %134 = icmp slt i32 %133, 128
  br i1 %134, label %5, label %135

; <label>:135                                     ; preds = %5
  ret void
}

define cc76 void @vect4_sp_add_iter_128_unroll_64_kernel(<4 x float> addrspace(1)* nocapture %a, <4 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <4 x float> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <4 x float> addrspace(1)* %b, i64 %2
  %.pre = load <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <4 x float> [ %.pre, %0 ], [ %132, %5 ]
  %j.0378 = phi i32 [ 0, %0 ], [ %133, %5 ]
  %7 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %8 = fadd <4 x float> %6, %7
  store <4 x float> %8, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %9 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %10 = fadd <4 x float> %8, %9
  store <4 x float> %10, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %11 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %12 = fadd <4 x float> %10, %11
  store <4 x float> %12, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %13 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %14 = fadd <4 x float> %12, %13
  store <4 x float> %14, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %15 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %16 = fadd <4 x float> %14, %15
  store <4 x float> %16, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %17 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %18 = fadd <4 x float> %16, %17
  store <4 x float> %18, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %19 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %20 = fadd <4 x float> %18, %19
  store <4 x float> %20, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %21 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %22 = fadd <4 x float> %20, %21
  store <4 x float> %22, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %23 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %24 = fadd <4 x float> %22, %23
  store <4 x float> %24, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %25 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %26 = fadd <4 x float> %24, %25
  store <4 x float> %26, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %27 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %28 = fadd <4 x float> %26, %27
  store <4 x float> %28, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %29 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %30 = fadd <4 x float> %28, %29
  store <4 x float> %30, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %31 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %32 = fadd <4 x float> %30, %31
  store <4 x float> %32, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %33 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %34 = fadd <4 x float> %32, %33
  store <4 x float> %34, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %35 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %36 = fadd <4 x float> %34, %35
  store <4 x float> %36, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %37 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %38 = fadd <4 x float> %36, %37
  store <4 x float> %38, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %39 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %40 = fadd <4 x float> %38, %39
  store <4 x float> %40, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %41 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %42 = fadd <4 x float> %40, %41
  store <4 x float> %42, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %43 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %44 = fadd <4 x float> %42, %43
  store <4 x float> %44, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %45 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %46 = fadd <4 x float> %44, %45
  store <4 x float> %46, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %47 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %48 = fadd <4 x float> %46, %47
  store <4 x float> %48, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %49 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %50 = fadd <4 x float> %48, %49
  store <4 x float> %50, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %51 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %52 = fadd <4 x float> %50, %51
  store <4 x float> %52, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %53 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %54 = fadd <4 x float> %52, %53
  store <4 x float> %54, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %55 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %56 = fadd <4 x float> %54, %55
  store <4 x float> %56, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %57 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %58 = fadd <4 x float> %56, %57
  store <4 x float> %58, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %59 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %60 = fadd <4 x float> %58, %59
  store <4 x float> %60, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %61 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %62 = fadd <4 x float> %60, %61
  store <4 x float> %62, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %63 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %64 = fadd <4 x float> %62, %63
  store <4 x float> %64, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %65 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %66 = fadd <4 x float> %64, %65
  store <4 x float> %66, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %67 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %68 = fadd <4 x float> %66, %67
  store <4 x float> %68, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %69 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %70 = fadd <4 x float> %68, %69
  store <4 x float> %70, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %71 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %72 = fadd <4 x float> %70, %71
  store <4 x float> %72, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %73 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %74 = fadd <4 x float> %72, %73
  store <4 x float> %74, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %75 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %76 = fadd <4 x float> %74, %75
  store <4 x float> %76, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %77 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %78 = fadd <4 x float> %76, %77
  store <4 x float> %78, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %79 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %80 = fadd <4 x float> %78, %79
  store <4 x float> %80, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %81 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %82 = fadd <4 x float> %80, %81
  store <4 x float> %82, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %83 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %84 = fadd <4 x float> %82, %83
  store <4 x float> %84, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %85 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %86 = fadd <4 x float> %84, %85
  store <4 x float> %86, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %87 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %88 = fadd <4 x float> %86, %87
  store <4 x float> %88, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %89 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %90 = fadd <4 x float> %88, %89
  store <4 x float> %90, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %91 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %92 = fadd <4 x float> %90, %91
  store <4 x float> %92, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %93 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %94 = fadd <4 x float> %92, %93
  store <4 x float> %94, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %95 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %96 = fadd <4 x float> %94, %95
  store <4 x float> %96, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %97 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %98 = fadd <4 x float> %96, %97
  store <4 x float> %98, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %99 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %100 = fadd <4 x float> %98, %99
  store <4 x float> %100, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %101 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %102 = fadd <4 x float> %100, %101
  store <4 x float> %102, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %103 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %104 = fadd <4 x float> %102, %103
  store <4 x float> %104, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %105 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %106 = fadd <4 x float> %104, %105
  store <4 x float> %106, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %107 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %108 = fadd <4 x float> %106, %107
  store <4 x float> %108, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %109 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %110 = fadd <4 x float> %108, %109
  store <4 x float> %110, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %111 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %112 = fadd <4 x float> %110, %111
  store <4 x float> %112, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %113 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %114 = fadd <4 x float> %112, %113
  store <4 x float> %114, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %115 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %116 = fadd <4 x float> %114, %115
  store <4 x float> %116, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %117 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %118 = fadd <4 x float> %116, %117
  store <4 x float> %118, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %119 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %120 = fadd <4 x float> %118, %119
  store <4 x float> %120, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %121 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %122 = fadd <4 x float> %120, %121
  store <4 x float> %122, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %123 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %124 = fadd <4 x float> %122, %123
  store <4 x float> %124, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %125 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %126 = fadd <4 x float> %124, %125
  store <4 x float> %126, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %127 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %128 = fadd <4 x float> %126, %127
  store <4 x float> %128, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %129 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %130 = fadd <4 x float> %128, %129
  store <4 x float> %130, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %131 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %132 = fadd <4 x float> %130, %131
  store <4 x float> %132, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %133 = add nsw i32 %j.0378, 1
  %134 = icmp slt i32 %133, 128
  br i1 %134, label %5, label %135

; <label>:135                                     ; preds = %5
  ret void
}

define cc76 void @vect4_sp_sub_iter_128_unroll_64_kernel(<4 x float> addrspace(1)* nocapture %a, <4 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <4 x float> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <4 x float> addrspace(1)* %b, i64 %2
  %.pre = load <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <4 x float> [ %.pre, %0 ], [ %132, %5 ]
  %j.0378 = phi i32 [ 0, %0 ], [ %133, %5 ]
  %7 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %8 = fsub <4 x float> %6, %7
  store <4 x float> %8, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %9 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %10 = fsub <4 x float> %8, %9
  store <4 x float> %10, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %11 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %12 = fsub <4 x float> %10, %11
  store <4 x float> %12, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %13 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %14 = fsub <4 x float> %12, %13
  store <4 x float> %14, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %15 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %16 = fsub <4 x float> %14, %15
  store <4 x float> %16, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %17 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %18 = fsub <4 x float> %16, %17
  store <4 x float> %18, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %19 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %20 = fsub <4 x float> %18, %19
  store <4 x float> %20, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %21 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %22 = fsub <4 x float> %20, %21
  store <4 x float> %22, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %23 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %24 = fsub <4 x float> %22, %23
  store <4 x float> %24, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %25 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %26 = fsub <4 x float> %24, %25
  store <4 x float> %26, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %27 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %28 = fsub <4 x float> %26, %27
  store <4 x float> %28, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %29 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %30 = fsub <4 x float> %28, %29
  store <4 x float> %30, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %31 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %32 = fsub <4 x float> %30, %31
  store <4 x float> %32, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %33 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %34 = fsub <4 x float> %32, %33
  store <4 x float> %34, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %35 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %36 = fsub <4 x float> %34, %35
  store <4 x float> %36, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %37 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %38 = fsub <4 x float> %36, %37
  store <4 x float> %38, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %39 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %40 = fsub <4 x float> %38, %39
  store <4 x float> %40, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %41 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %42 = fsub <4 x float> %40, %41
  store <4 x float> %42, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %43 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %44 = fsub <4 x float> %42, %43
  store <4 x float> %44, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %45 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %46 = fsub <4 x float> %44, %45
  store <4 x float> %46, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %47 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %48 = fsub <4 x float> %46, %47
  store <4 x float> %48, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %49 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %50 = fsub <4 x float> %48, %49
  store <4 x float> %50, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %51 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %52 = fsub <4 x float> %50, %51
  store <4 x float> %52, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %53 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %54 = fsub <4 x float> %52, %53
  store <4 x float> %54, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %55 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %56 = fsub <4 x float> %54, %55
  store <4 x float> %56, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %57 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %58 = fsub <4 x float> %56, %57
  store <4 x float> %58, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %59 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %60 = fsub <4 x float> %58, %59
  store <4 x float> %60, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %61 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %62 = fsub <4 x float> %60, %61
  store <4 x float> %62, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %63 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %64 = fsub <4 x float> %62, %63
  store <4 x float> %64, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %65 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %66 = fsub <4 x float> %64, %65
  store <4 x float> %66, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %67 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %68 = fsub <4 x float> %66, %67
  store <4 x float> %68, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %69 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %70 = fsub <4 x float> %68, %69
  store <4 x float> %70, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %71 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %72 = fsub <4 x float> %70, %71
  store <4 x float> %72, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %73 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %74 = fsub <4 x float> %72, %73
  store <4 x float> %74, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %75 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %76 = fsub <4 x float> %74, %75
  store <4 x float> %76, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %77 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %78 = fsub <4 x float> %76, %77
  store <4 x float> %78, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %79 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %80 = fsub <4 x float> %78, %79
  store <4 x float> %80, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %81 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %82 = fsub <4 x float> %80, %81
  store <4 x float> %82, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %83 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %84 = fsub <4 x float> %82, %83
  store <4 x float> %84, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %85 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %86 = fsub <4 x float> %84, %85
  store <4 x float> %86, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %87 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %88 = fsub <4 x float> %86, %87
  store <4 x float> %88, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %89 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %90 = fsub <4 x float> %88, %89
  store <4 x float> %90, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %91 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %92 = fsub <4 x float> %90, %91
  store <4 x float> %92, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %93 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %94 = fsub <4 x float> %92, %93
  store <4 x float> %94, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %95 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %96 = fsub <4 x float> %94, %95
  store <4 x float> %96, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %97 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %98 = fsub <4 x float> %96, %97
  store <4 x float> %98, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %99 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %100 = fsub <4 x float> %98, %99
  store <4 x float> %100, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %101 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %102 = fsub <4 x float> %100, %101
  store <4 x float> %102, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %103 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %104 = fsub <4 x float> %102, %103
  store <4 x float> %104, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %105 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %106 = fsub <4 x float> %104, %105
  store <4 x float> %106, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %107 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %108 = fsub <4 x float> %106, %107
  store <4 x float> %108, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %109 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %110 = fsub <4 x float> %108, %109
  store <4 x float> %110, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %111 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %112 = fsub <4 x float> %110, %111
  store <4 x float> %112, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %113 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %114 = fsub <4 x float> %112, %113
  store <4 x float> %114, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %115 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %116 = fsub <4 x float> %114, %115
  store <4 x float> %116, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %117 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %118 = fsub <4 x float> %116, %117
  store <4 x float> %118, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %119 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %120 = fsub <4 x float> %118, %119
  store <4 x float> %120, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %121 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %122 = fsub <4 x float> %120, %121
  store <4 x float> %122, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %123 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %124 = fsub <4 x float> %122, %123
  store <4 x float> %124, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %125 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %126 = fsub <4 x float> %124, %125
  store <4 x float> %126, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %127 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %128 = fsub <4 x float> %126, %127
  store <4 x float> %128, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %129 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %130 = fsub <4 x float> %128, %129
  store <4 x float> %130, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %131 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %132 = fsub <4 x float> %130, %131
  store <4 x float> %132, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %133 = add nsw i32 %j.0378, 1
  %134 = icmp slt i32 %133, 128
  br i1 %134, label %5, label %135

; <label>:135                                     ; preds = %5
  ret void
}

define cc76 void @vect4_sp_mul_iter_128_unroll_64_kernel(<4 x float> addrspace(1)* nocapture %a, <4 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <4 x float> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <4 x float> addrspace(1)* %b, i64 %2
  %.pre = load <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <4 x float> [ %.pre, %0 ], [ %132, %5 ]
  %j.0378 = phi i32 [ 0, %0 ], [ %133, %5 ]
  %7 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %8 = fmul <4 x float> %6, %7
  store <4 x float> %8, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %9 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %10 = fmul <4 x float> %8, %9
  store <4 x float> %10, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %11 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %12 = fmul <4 x float> %10, %11
  store <4 x float> %12, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %13 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %14 = fmul <4 x float> %12, %13
  store <4 x float> %14, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %15 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %16 = fmul <4 x float> %14, %15
  store <4 x float> %16, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %17 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %18 = fmul <4 x float> %16, %17
  store <4 x float> %18, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %19 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %20 = fmul <4 x float> %18, %19
  store <4 x float> %20, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %21 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %22 = fmul <4 x float> %20, %21
  store <4 x float> %22, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %23 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %24 = fmul <4 x float> %22, %23
  store <4 x float> %24, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %25 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %26 = fmul <4 x float> %24, %25
  store <4 x float> %26, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %27 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %28 = fmul <4 x float> %26, %27
  store <4 x float> %28, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %29 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %30 = fmul <4 x float> %28, %29
  store <4 x float> %30, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %31 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %32 = fmul <4 x float> %30, %31
  store <4 x float> %32, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %33 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %34 = fmul <4 x float> %32, %33
  store <4 x float> %34, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %35 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %36 = fmul <4 x float> %34, %35
  store <4 x float> %36, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %37 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %38 = fmul <4 x float> %36, %37
  store <4 x float> %38, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %39 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %40 = fmul <4 x float> %38, %39
  store <4 x float> %40, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %41 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %42 = fmul <4 x float> %40, %41
  store <4 x float> %42, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %43 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %44 = fmul <4 x float> %42, %43
  store <4 x float> %44, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %45 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %46 = fmul <4 x float> %44, %45
  store <4 x float> %46, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %47 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %48 = fmul <4 x float> %46, %47
  store <4 x float> %48, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %49 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %50 = fmul <4 x float> %48, %49
  store <4 x float> %50, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %51 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %52 = fmul <4 x float> %50, %51
  store <4 x float> %52, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %53 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %54 = fmul <4 x float> %52, %53
  store <4 x float> %54, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %55 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %56 = fmul <4 x float> %54, %55
  store <4 x float> %56, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %57 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %58 = fmul <4 x float> %56, %57
  store <4 x float> %58, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %59 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %60 = fmul <4 x float> %58, %59
  store <4 x float> %60, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %61 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %62 = fmul <4 x float> %60, %61
  store <4 x float> %62, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %63 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %64 = fmul <4 x float> %62, %63
  store <4 x float> %64, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %65 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %66 = fmul <4 x float> %64, %65
  store <4 x float> %66, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %67 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %68 = fmul <4 x float> %66, %67
  store <4 x float> %68, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %69 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %70 = fmul <4 x float> %68, %69
  store <4 x float> %70, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %71 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %72 = fmul <4 x float> %70, %71
  store <4 x float> %72, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %73 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %74 = fmul <4 x float> %72, %73
  store <4 x float> %74, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %75 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %76 = fmul <4 x float> %74, %75
  store <4 x float> %76, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %77 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %78 = fmul <4 x float> %76, %77
  store <4 x float> %78, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %79 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %80 = fmul <4 x float> %78, %79
  store <4 x float> %80, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %81 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %82 = fmul <4 x float> %80, %81
  store <4 x float> %82, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %83 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %84 = fmul <4 x float> %82, %83
  store <4 x float> %84, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %85 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %86 = fmul <4 x float> %84, %85
  store <4 x float> %86, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %87 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %88 = fmul <4 x float> %86, %87
  store <4 x float> %88, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %89 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %90 = fmul <4 x float> %88, %89
  store <4 x float> %90, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %91 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %92 = fmul <4 x float> %90, %91
  store <4 x float> %92, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %93 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %94 = fmul <4 x float> %92, %93
  store <4 x float> %94, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %95 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %96 = fmul <4 x float> %94, %95
  store <4 x float> %96, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %97 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %98 = fmul <4 x float> %96, %97
  store <4 x float> %98, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %99 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %100 = fmul <4 x float> %98, %99
  store <4 x float> %100, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %101 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %102 = fmul <4 x float> %100, %101
  store <4 x float> %102, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %103 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %104 = fmul <4 x float> %102, %103
  store <4 x float> %104, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %105 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %106 = fmul <4 x float> %104, %105
  store <4 x float> %106, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %107 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %108 = fmul <4 x float> %106, %107
  store <4 x float> %108, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %109 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %110 = fmul <4 x float> %108, %109
  store <4 x float> %110, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %111 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %112 = fmul <4 x float> %110, %111
  store <4 x float> %112, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %113 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %114 = fmul <4 x float> %112, %113
  store <4 x float> %114, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %115 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %116 = fmul <4 x float> %114, %115
  store <4 x float> %116, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %117 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %118 = fmul <4 x float> %116, %117
  store <4 x float> %118, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %119 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %120 = fmul <4 x float> %118, %119
  store <4 x float> %120, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %121 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %122 = fmul <4 x float> %120, %121
  store <4 x float> %122, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %123 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %124 = fmul <4 x float> %122, %123
  store <4 x float> %124, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %125 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %126 = fmul <4 x float> %124, %125
  store <4 x float> %126, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %127 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %128 = fmul <4 x float> %126, %127
  store <4 x float> %128, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %129 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %130 = fmul <4 x float> %128, %129
  store <4 x float> %130, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %131 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %132 = fmul <4 x float> %130, %131
  store <4 x float> %132, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %133 = add nsw i32 %j.0378, 1
  %134 = icmp slt i32 %133, 128
  br i1 %134, label %5, label %135

; <label>:135                                     ; preds = %5
  ret void
}

define cc76 void @vect4_sp_div_iter_128_unroll_64_kernel(<4 x float> addrspace(1)* nocapture %a, <4 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <4 x float> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <4 x float> addrspace(1)* %b, i64 %2
  %.pre = load <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <4 x float> [ %.pre, %0 ], [ %132, %5 ]
  %j.0378 = phi i32 [ 0, %0 ], [ %133, %5 ]
  %7 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %8 = fdiv <4 x float> %6, %7, !fpmath !218
  store <4 x float> %8, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %9 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %10 = fdiv <4 x float> %8, %9, !fpmath !218
  store <4 x float> %10, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %11 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %12 = fdiv <4 x float> %10, %11, !fpmath !218
  store <4 x float> %12, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %13 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %14 = fdiv <4 x float> %12, %13, !fpmath !218
  store <4 x float> %14, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %15 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %16 = fdiv <4 x float> %14, %15, !fpmath !218
  store <4 x float> %16, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %17 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %18 = fdiv <4 x float> %16, %17, !fpmath !218
  store <4 x float> %18, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %19 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %20 = fdiv <4 x float> %18, %19, !fpmath !218
  store <4 x float> %20, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %21 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %22 = fdiv <4 x float> %20, %21, !fpmath !218
  store <4 x float> %22, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %23 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %24 = fdiv <4 x float> %22, %23, !fpmath !218
  store <4 x float> %24, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %25 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %26 = fdiv <4 x float> %24, %25, !fpmath !218
  store <4 x float> %26, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %27 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %28 = fdiv <4 x float> %26, %27, !fpmath !218
  store <4 x float> %28, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %29 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %30 = fdiv <4 x float> %28, %29, !fpmath !218
  store <4 x float> %30, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %31 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %32 = fdiv <4 x float> %30, %31, !fpmath !218
  store <4 x float> %32, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %33 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %34 = fdiv <4 x float> %32, %33, !fpmath !218
  store <4 x float> %34, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %35 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %36 = fdiv <4 x float> %34, %35, !fpmath !218
  store <4 x float> %36, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %37 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %38 = fdiv <4 x float> %36, %37, !fpmath !218
  store <4 x float> %38, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %39 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %40 = fdiv <4 x float> %38, %39, !fpmath !218
  store <4 x float> %40, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %41 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %42 = fdiv <4 x float> %40, %41, !fpmath !218
  store <4 x float> %42, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %43 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %44 = fdiv <4 x float> %42, %43, !fpmath !218
  store <4 x float> %44, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %45 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %46 = fdiv <4 x float> %44, %45, !fpmath !218
  store <4 x float> %46, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %47 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %48 = fdiv <4 x float> %46, %47, !fpmath !218
  store <4 x float> %48, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %49 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %50 = fdiv <4 x float> %48, %49, !fpmath !218
  store <4 x float> %50, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %51 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %52 = fdiv <4 x float> %50, %51, !fpmath !218
  store <4 x float> %52, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %53 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %54 = fdiv <4 x float> %52, %53, !fpmath !218
  store <4 x float> %54, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %55 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %56 = fdiv <4 x float> %54, %55, !fpmath !218
  store <4 x float> %56, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %57 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %58 = fdiv <4 x float> %56, %57, !fpmath !218
  store <4 x float> %58, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %59 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %60 = fdiv <4 x float> %58, %59, !fpmath !218
  store <4 x float> %60, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %61 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %62 = fdiv <4 x float> %60, %61, !fpmath !218
  store <4 x float> %62, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %63 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %64 = fdiv <4 x float> %62, %63, !fpmath !218
  store <4 x float> %64, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %65 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %66 = fdiv <4 x float> %64, %65, !fpmath !218
  store <4 x float> %66, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %67 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %68 = fdiv <4 x float> %66, %67, !fpmath !218
  store <4 x float> %68, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %69 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %70 = fdiv <4 x float> %68, %69, !fpmath !218
  store <4 x float> %70, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %71 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %72 = fdiv <4 x float> %70, %71, !fpmath !218
  store <4 x float> %72, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %73 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %74 = fdiv <4 x float> %72, %73, !fpmath !218
  store <4 x float> %74, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %75 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %76 = fdiv <4 x float> %74, %75, !fpmath !218
  store <4 x float> %76, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %77 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %78 = fdiv <4 x float> %76, %77, !fpmath !218
  store <4 x float> %78, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %79 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %80 = fdiv <4 x float> %78, %79, !fpmath !218
  store <4 x float> %80, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %81 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %82 = fdiv <4 x float> %80, %81, !fpmath !218
  store <4 x float> %82, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %83 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %84 = fdiv <4 x float> %82, %83, !fpmath !218
  store <4 x float> %84, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %85 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %86 = fdiv <4 x float> %84, %85, !fpmath !218
  store <4 x float> %86, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %87 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %88 = fdiv <4 x float> %86, %87, !fpmath !218
  store <4 x float> %88, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %89 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %90 = fdiv <4 x float> %88, %89, !fpmath !218
  store <4 x float> %90, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %91 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %92 = fdiv <4 x float> %90, %91, !fpmath !218
  store <4 x float> %92, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %93 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %94 = fdiv <4 x float> %92, %93, !fpmath !218
  store <4 x float> %94, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %95 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %96 = fdiv <4 x float> %94, %95, !fpmath !218
  store <4 x float> %96, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %97 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %98 = fdiv <4 x float> %96, %97, !fpmath !218
  store <4 x float> %98, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %99 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %100 = fdiv <4 x float> %98, %99, !fpmath !218
  store <4 x float> %100, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %101 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %102 = fdiv <4 x float> %100, %101, !fpmath !218
  store <4 x float> %102, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %103 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %104 = fdiv <4 x float> %102, %103, !fpmath !218
  store <4 x float> %104, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %105 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %106 = fdiv <4 x float> %104, %105, !fpmath !218
  store <4 x float> %106, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %107 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %108 = fdiv <4 x float> %106, %107, !fpmath !218
  store <4 x float> %108, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %109 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %110 = fdiv <4 x float> %108, %109, !fpmath !218
  store <4 x float> %110, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %111 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %112 = fdiv <4 x float> %110, %111, !fpmath !218
  store <4 x float> %112, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %113 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %114 = fdiv <4 x float> %112, %113, !fpmath !218
  store <4 x float> %114, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %115 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %116 = fdiv <4 x float> %114, %115, !fpmath !218
  store <4 x float> %116, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %117 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %118 = fdiv <4 x float> %116, %117, !fpmath !218
  store <4 x float> %118, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %119 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %120 = fdiv <4 x float> %118, %119, !fpmath !218
  store <4 x float> %120, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %121 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %122 = fdiv <4 x float> %120, %121, !fpmath !218
  store <4 x float> %122, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %123 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %124 = fdiv <4 x float> %122, %123, !fpmath !218
  store <4 x float> %124, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %125 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %126 = fdiv <4 x float> %124, %125, !fpmath !218
  store <4 x float> %126, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %127 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %128 = fdiv <4 x float> %126, %127, !fpmath !218
  store <4 x float> %128, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %129 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %130 = fdiv <4 x float> %128, %129, !fpmath !218
  store <4 x float> %130, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %131 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %132 = fdiv <4 x float> %130, %131, !fpmath !218
  store <4 x float> %132, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %133 = add nsw i32 %j.0378, 1
  %134 = icmp slt i32 %133, 128
  br i1 %134, label %5, label %135

; <label>:135                                     ; preds = %5
  ret void
}

define cc76 void @vect4_sp_mad_iter_128_unroll_64_kernel(<4 x float> addrspace(1)* nocapture %a, <4 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <4 x float> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <4 x float> addrspace(1)* %b, i64 %2
  %.pre = load <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <4 x float> [ %.pre, %0 ], [ %132, %5 ]
  %j.0504 = phi i32 [ 0, %0 ], [ %133, %5 ]
  %7 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %8 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %6, <4 x float> %7, <4 x float> %7)
  store <4 x float> %8, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %9 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %10 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %8, <4 x float> %9, <4 x float> %9)
  store <4 x float> %10, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %11 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %12 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %10, <4 x float> %11, <4 x float> %11)
  store <4 x float> %12, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %13 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %14 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %12, <4 x float> %13, <4 x float> %13)
  store <4 x float> %14, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %15 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %16 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %14, <4 x float> %15, <4 x float> %15)
  store <4 x float> %16, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %17 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %18 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %16, <4 x float> %17, <4 x float> %17)
  store <4 x float> %18, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %19 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %20 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %18, <4 x float> %19, <4 x float> %19)
  store <4 x float> %20, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %21 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %22 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %20, <4 x float> %21, <4 x float> %21)
  store <4 x float> %22, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %23 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %24 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %22, <4 x float> %23, <4 x float> %23)
  store <4 x float> %24, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %25 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %26 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %24, <4 x float> %25, <4 x float> %25)
  store <4 x float> %26, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %27 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %28 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %26, <4 x float> %27, <4 x float> %27)
  store <4 x float> %28, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %29 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %30 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %28, <4 x float> %29, <4 x float> %29)
  store <4 x float> %30, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %31 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %32 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %30, <4 x float> %31, <4 x float> %31)
  store <4 x float> %32, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %33 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %34 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %32, <4 x float> %33, <4 x float> %33)
  store <4 x float> %34, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %35 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %36 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %34, <4 x float> %35, <4 x float> %35)
  store <4 x float> %36, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %37 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %38 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %36, <4 x float> %37, <4 x float> %37)
  store <4 x float> %38, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %39 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %40 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %38, <4 x float> %39, <4 x float> %39)
  store <4 x float> %40, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %41 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %42 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %40, <4 x float> %41, <4 x float> %41)
  store <4 x float> %42, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %43 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %44 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %42, <4 x float> %43, <4 x float> %43)
  store <4 x float> %44, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %45 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %46 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %44, <4 x float> %45, <4 x float> %45)
  store <4 x float> %46, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %47 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %48 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %46, <4 x float> %47, <4 x float> %47)
  store <4 x float> %48, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %49 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %50 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %48, <4 x float> %49, <4 x float> %49)
  store <4 x float> %50, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %51 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %52 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %50, <4 x float> %51, <4 x float> %51)
  store <4 x float> %52, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %53 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %54 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %52, <4 x float> %53, <4 x float> %53)
  store <4 x float> %54, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %55 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %56 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %54, <4 x float> %55, <4 x float> %55)
  store <4 x float> %56, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %57 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %58 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %56, <4 x float> %57, <4 x float> %57)
  store <4 x float> %58, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %59 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %60 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %58, <4 x float> %59, <4 x float> %59)
  store <4 x float> %60, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %61 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %62 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %60, <4 x float> %61, <4 x float> %61)
  store <4 x float> %62, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %63 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %64 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %62, <4 x float> %63, <4 x float> %63)
  store <4 x float> %64, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %65 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %66 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %64, <4 x float> %65, <4 x float> %65)
  store <4 x float> %66, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %67 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %68 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %66, <4 x float> %67, <4 x float> %67)
  store <4 x float> %68, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %69 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %70 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %68, <4 x float> %69, <4 x float> %69)
  store <4 x float> %70, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %71 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %72 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %70, <4 x float> %71, <4 x float> %71)
  store <4 x float> %72, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %73 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %74 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %72, <4 x float> %73, <4 x float> %73)
  store <4 x float> %74, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %75 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %76 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %74, <4 x float> %75, <4 x float> %75)
  store <4 x float> %76, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %77 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %78 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %76, <4 x float> %77, <4 x float> %77)
  store <4 x float> %78, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %79 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %80 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %78, <4 x float> %79, <4 x float> %79)
  store <4 x float> %80, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %81 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %82 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %80, <4 x float> %81, <4 x float> %81)
  store <4 x float> %82, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %83 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %84 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %82, <4 x float> %83, <4 x float> %83)
  store <4 x float> %84, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %85 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %86 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %84, <4 x float> %85, <4 x float> %85)
  store <4 x float> %86, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %87 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %88 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %86, <4 x float> %87, <4 x float> %87)
  store <4 x float> %88, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %89 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %90 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %88, <4 x float> %89, <4 x float> %89)
  store <4 x float> %90, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %91 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %92 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %90, <4 x float> %91, <4 x float> %91)
  store <4 x float> %92, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %93 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %94 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %92, <4 x float> %93, <4 x float> %93)
  store <4 x float> %94, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %95 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %96 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %94, <4 x float> %95, <4 x float> %95)
  store <4 x float> %96, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %97 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %98 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %96, <4 x float> %97, <4 x float> %97)
  store <4 x float> %98, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %99 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %100 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %98, <4 x float> %99, <4 x float> %99)
  store <4 x float> %100, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %101 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %102 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %100, <4 x float> %101, <4 x float> %101)
  store <4 x float> %102, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %103 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %104 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %102, <4 x float> %103, <4 x float> %103)
  store <4 x float> %104, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %105 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %106 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %104, <4 x float> %105, <4 x float> %105)
  store <4 x float> %106, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %107 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %108 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %106, <4 x float> %107, <4 x float> %107)
  store <4 x float> %108, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %109 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %110 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %108, <4 x float> %109, <4 x float> %109)
  store <4 x float> %110, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %111 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %112 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %110, <4 x float> %111, <4 x float> %111)
  store <4 x float> %112, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %113 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %114 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %112, <4 x float> %113, <4 x float> %113)
  store <4 x float> %114, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %115 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %116 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %114, <4 x float> %115, <4 x float> %115)
  store <4 x float> %116, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %117 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %118 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %116, <4 x float> %117, <4 x float> %117)
  store <4 x float> %118, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %119 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %120 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %118, <4 x float> %119, <4 x float> %119)
  store <4 x float> %120, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %121 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %122 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %120, <4 x float> %121, <4 x float> %121)
  store <4 x float> %122, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %123 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %124 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %122, <4 x float> %123, <4 x float> %123)
  store <4 x float> %124, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %125 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %126 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %124, <4 x float> %125, <4 x float> %125)
  store <4 x float> %126, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %127 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %128 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %126, <4 x float> %127, <4 x float> %127)
  store <4 x float> %128, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %129 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %130 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %128, <4 x float> %129, <4 x float> %129)
  store <4 x float> %130, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %131 = load <4 x float> addrspace(1)* %4, align 16, !tbaa !216
  %132 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %130, <4 x float> %131, <4 x float> %131)
  store <4 x float> %132, <4 x float> addrspace(1)* %3, align 16, !tbaa !216
  %133 = add nsw i32 %j.0504, 1
  %134 = icmp slt i32 %133, 128
  br i1 %134, label %5, label %135

; <label>:135                                     ; preds = %5
  ret void
}

define cc76 void @vect8_sp_add_iter_128_unroll_64_kernel(<8 x float> addrspace(1)* nocapture %a, <8 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <8 x float> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <8 x float> addrspace(1)* %b, i64 %2
  %.pre = load <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <8 x float> [ %.pre, %0 ], [ %132, %5 ]
  %j.0378 = phi i32 [ 0, %0 ], [ %133, %5 ]
  %7 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %8 = fadd <8 x float> %6, %7
  store <8 x float> %8, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %9 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %10 = fadd <8 x float> %8, %9
  store <8 x float> %10, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %11 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %12 = fadd <8 x float> %10, %11
  store <8 x float> %12, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %13 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %14 = fadd <8 x float> %12, %13
  store <8 x float> %14, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %15 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %16 = fadd <8 x float> %14, %15
  store <8 x float> %16, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %17 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %18 = fadd <8 x float> %16, %17
  store <8 x float> %18, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %19 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %20 = fadd <8 x float> %18, %19
  store <8 x float> %20, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %21 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %22 = fadd <8 x float> %20, %21
  store <8 x float> %22, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %23 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %24 = fadd <8 x float> %22, %23
  store <8 x float> %24, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %25 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %26 = fadd <8 x float> %24, %25
  store <8 x float> %26, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %27 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %28 = fadd <8 x float> %26, %27
  store <8 x float> %28, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %29 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %30 = fadd <8 x float> %28, %29
  store <8 x float> %30, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %31 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %32 = fadd <8 x float> %30, %31
  store <8 x float> %32, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %33 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %34 = fadd <8 x float> %32, %33
  store <8 x float> %34, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %35 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %36 = fadd <8 x float> %34, %35
  store <8 x float> %36, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %37 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %38 = fadd <8 x float> %36, %37
  store <8 x float> %38, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %39 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %40 = fadd <8 x float> %38, %39
  store <8 x float> %40, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %41 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %42 = fadd <8 x float> %40, %41
  store <8 x float> %42, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %43 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %44 = fadd <8 x float> %42, %43
  store <8 x float> %44, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %45 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %46 = fadd <8 x float> %44, %45
  store <8 x float> %46, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %47 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %48 = fadd <8 x float> %46, %47
  store <8 x float> %48, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %49 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %50 = fadd <8 x float> %48, %49
  store <8 x float> %50, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %51 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %52 = fadd <8 x float> %50, %51
  store <8 x float> %52, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %53 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %54 = fadd <8 x float> %52, %53
  store <8 x float> %54, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %55 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %56 = fadd <8 x float> %54, %55
  store <8 x float> %56, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %57 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %58 = fadd <8 x float> %56, %57
  store <8 x float> %58, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %59 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %60 = fadd <8 x float> %58, %59
  store <8 x float> %60, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %61 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %62 = fadd <8 x float> %60, %61
  store <8 x float> %62, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %63 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %64 = fadd <8 x float> %62, %63
  store <8 x float> %64, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %65 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %66 = fadd <8 x float> %64, %65
  store <8 x float> %66, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %67 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %68 = fadd <8 x float> %66, %67
  store <8 x float> %68, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %69 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %70 = fadd <8 x float> %68, %69
  store <8 x float> %70, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %71 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %72 = fadd <8 x float> %70, %71
  store <8 x float> %72, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %73 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %74 = fadd <8 x float> %72, %73
  store <8 x float> %74, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %75 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %76 = fadd <8 x float> %74, %75
  store <8 x float> %76, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %77 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %78 = fadd <8 x float> %76, %77
  store <8 x float> %78, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %79 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %80 = fadd <8 x float> %78, %79
  store <8 x float> %80, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %81 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %82 = fadd <8 x float> %80, %81
  store <8 x float> %82, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %83 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %84 = fadd <8 x float> %82, %83
  store <8 x float> %84, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %85 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %86 = fadd <8 x float> %84, %85
  store <8 x float> %86, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %87 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %88 = fadd <8 x float> %86, %87
  store <8 x float> %88, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %89 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %90 = fadd <8 x float> %88, %89
  store <8 x float> %90, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %91 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %92 = fadd <8 x float> %90, %91
  store <8 x float> %92, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %93 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %94 = fadd <8 x float> %92, %93
  store <8 x float> %94, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %95 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %96 = fadd <8 x float> %94, %95
  store <8 x float> %96, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %97 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %98 = fadd <8 x float> %96, %97
  store <8 x float> %98, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %99 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %100 = fadd <8 x float> %98, %99
  store <8 x float> %100, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %101 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %102 = fadd <8 x float> %100, %101
  store <8 x float> %102, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %103 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %104 = fadd <8 x float> %102, %103
  store <8 x float> %104, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %105 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %106 = fadd <8 x float> %104, %105
  store <8 x float> %106, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %107 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %108 = fadd <8 x float> %106, %107
  store <8 x float> %108, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %109 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %110 = fadd <8 x float> %108, %109
  store <8 x float> %110, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %111 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %112 = fadd <8 x float> %110, %111
  store <8 x float> %112, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %113 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %114 = fadd <8 x float> %112, %113
  store <8 x float> %114, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %115 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %116 = fadd <8 x float> %114, %115
  store <8 x float> %116, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %117 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %118 = fadd <8 x float> %116, %117
  store <8 x float> %118, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %119 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %120 = fadd <8 x float> %118, %119
  store <8 x float> %120, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %121 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %122 = fadd <8 x float> %120, %121
  store <8 x float> %122, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %123 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %124 = fadd <8 x float> %122, %123
  store <8 x float> %124, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %125 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %126 = fadd <8 x float> %124, %125
  store <8 x float> %126, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %127 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %128 = fadd <8 x float> %126, %127
  store <8 x float> %128, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %129 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %130 = fadd <8 x float> %128, %129
  store <8 x float> %130, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %131 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %132 = fadd <8 x float> %130, %131
  store <8 x float> %132, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %133 = add nsw i32 %j.0378, 1
  %134 = icmp slt i32 %133, 128
  br i1 %134, label %5, label %135

; <label>:135                                     ; preds = %5
  ret void
}

define cc76 void @vect8_sp_sub_iter_128_unroll_64_kernel(<8 x float> addrspace(1)* nocapture %a, <8 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <8 x float> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <8 x float> addrspace(1)* %b, i64 %2
  %.pre = load <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <8 x float> [ %.pre, %0 ], [ %132, %5 ]
  %j.0378 = phi i32 [ 0, %0 ], [ %133, %5 ]
  %7 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %8 = fsub <8 x float> %6, %7
  store <8 x float> %8, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %9 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %10 = fsub <8 x float> %8, %9
  store <8 x float> %10, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %11 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %12 = fsub <8 x float> %10, %11
  store <8 x float> %12, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %13 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %14 = fsub <8 x float> %12, %13
  store <8 x float> %14, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %15 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %16 = fsub <8 x float> %14, %15
  store <8 x float> %16, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %17 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %18 = fsub <8 x float> %16, %17
  store <8 x float> %18, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %19 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %20 = fsub <8 x float> %18, %19
  store <8 x float> %20, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %21 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %22 = fsub <8 x float> %20, %21
  store <8 x float> %22, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %23 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %24 = fsub <8 x float> %22, %23
  store <8 x float> %24, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %25 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %26 = fsub <8 x float> %24, %25
  store <8 x float> %26, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %27 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %28 = fsub <8 x float> %26, %27
  store <8 x float> %28, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %29 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %30 = fsub <8 x float> %28, %29
  store <8 x float> %30, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %31 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %32 = fsub <8 x float> %30, %31
  store <8 x float> %32, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %33 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %34 = fsub <8 x float> %32, %33
  store <8 x float> %34, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %35 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %36 = fsub <8 x float> %34, %35
  store <8 x float> %36, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %37 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %38 = fsub <8 x float> %36, %37
  store <8 x float> %38, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %39 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %40 = fsub <8 x float> %38, %39
  store <8 x float> %40, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %41 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %42 = fsub <8 x float> %40, %41
  store <8 x float> %42, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %43 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %44 = fsub <8 x float> %42, %43
  store <8 x float> %44, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %45 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %46 = fsub <8 x float> %44, %45
  store <8 x float> %46, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %47 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %48 = fsub <8 x float> %46, %47
  store <8 x float> %48, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %49 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %50 = fsub <8 x float> %48, %49
  store <8 x float> %50, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %51 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %52 = fsub <8 x float> %50, %51
  store <8 x float> %52, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %53 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %54 = fsub <8 x float> %52, %53
  store <8 x float> %54, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %55 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %56 = fsub <8 x float> %54, %55
  store <8 x float> %56, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %57 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %58 = fsub <8 x float> %56, %57
  store <8 x float> %58, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %59 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %60 = fsub <8 x float> %58, %59
  store <8 x float> %60, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %61 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %62 = fsub <8 x float> %60, %61
  store <8 x float> %62, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %63 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %64 = fsub <8 x float> %62, %63
  store <8 x float> %64, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %65 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %66 = fsub <8 x float> %64, %65
  store <8 x float> %66, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %67 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %68 = fsub <8 x float> %66, %67
  store <8 x float> %68, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %69 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %70 = fsub <8 x float> %68, %69
  store <8 x float> %70, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %71 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %72 = fsub <8 x float> %70, %71
  store <8 x float> %72, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %73 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %74 = fsub <8 x float> %72, %73
  store <8 x float> %74, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %75 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %76 = fsub <8 x float> %74, %75
  store <8 x float> %76, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %77 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %78 = fsub <8 x float> %76, %77
  store <8 x float> %78, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %79 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %80 = fsub <8 x float> %78, %79
  store <8 x float> %80, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %81 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %82 = fsub <8 x float> %80, %81
  store <8 x float> %82, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %83 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %84 = fsub <8 x float> %82, %83
  store <8 x float> %84, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %85 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %86 = fsub <8 x float> %84, %85
  store <8 x float> %86, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %87 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %88 = fsub <8 x float> %86, %87
  store <8 x float> %88, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %89 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %90 = fsub <8 x float> %88, %89
  store <8 x float> %90, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %91 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %92 = fsub <8 x float> %90, %91
  store <8 x float> %92, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %93 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %94 = fsub <8 x float> %92, %93
  store <8 x float> %94, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %95 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %96 = fsub <8 x float> %94, %95
  store <8 x float> %96, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %97 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %98 = fsub <8 x float> %96, %97
  store <8 x float> %98, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %99 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %100 = fsub <8 x float> %98, %99
  store <8 x float> %100, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %101 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %102 = fsub <8 x float> %100, %101
  store <8 x float> %102, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %103 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %104 = fsub <8 x float> %102, %103
  store <8 x float> %104, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %105 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %106 = fsub <8 x float> %104, %105
  store <8 x float> %106, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %107 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %108 = fsub <8 x float> %106, %107
  store <8 x float> %108, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %109 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %110 = fsub <8 x float> %108, %109
  store <8 x float> %110, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %111 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %112 = fsub <8 x float> %110, %111
  store <8 x float> %112, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %113 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %114 = fsub <8 x float> %112, %113
  store <8 x float> %114, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %115 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %116 = fsub <8 x float> %114, %115
  store <8 x float> %116, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %117 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %118 = fsub <8 x float> %116, %117
  store <8 x float> %118, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %119 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %120 = fsub <8 x float> %118, %119
  store <8 x float> %120, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %121 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %122 = fsub <8 x float> %120, %121
  store <8 x float> %122, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %123 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %124 = fsub <8 x float> %122, %123
  store <8 x float> %124, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %125 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %126 = fsub <8 x float> %124, %125
  store <8 x float> %126, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %127 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %128 = fsub <8 x float> %126, %127
  store <8 x float> %128, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %129 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %130 = fsub <8 x float> %128, %129
  store <8 x float> %130, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %131 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %132 = fsub <8 x float> %130, %131
  store <8 x float> %132, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %133 = add nsw i32 %j.0378, 1
  %134 = icmp slt i32 %133, 128
  br i1 %134, label %5, label %135

; <label>:135                                     ; preds = %5
  ret void
}

define cc76 void @vect8_sp_mul_iter_128_unroll_64_kernel(<8 x float> addrspace(1)* nocapture %a, <8 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <8 x float> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <8 x float> addrspace(1)* %b, i64 %2
  %.pre = load <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <8 x float> [ %.pre, %0 ], [ %132, %5 ]
  %j.0378 = phi i32 [ 0, %0 ], [ %133, %5 ]
  %7 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %8 = fmul <8 x float> %6, %7
  store <8 x float> %8, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %9 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %10 = fmul <8 x float> %8, %9
  store <8 x float> %10, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %11 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %12 = fmul <8 x float> %10, %11
  store <8 x float> %12, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %13 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %14 = fmul <8 x float> %12, %13
  store <8 x float> %14, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %15 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %16 = fmul <8 x float> %14, %15
  store <8 x float> %16, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %17 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %18 = fmul <8 x float> %16, %17
  store <8 x float> %18, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %19 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %20 = fmul <8 x float> %18, %19
  store <8 x float> %20, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %21 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %22 = fmul <8 x float> %20, %21
  store <8 x float> %22, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %23 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %24 = fmul <8 x float> %22, %23
  store <8 x float> %24, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %25 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %26 = fmul <8 x float> %24, %25
  store <8 x float> %26, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %27 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %28 = fmul <8 x float> %26, %27
  store <8 x float> %28, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %29 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %30 = fmul <8 x float> %28, %29
  store <8 x float> %30, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %31 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %32 = fmul <8 x float> %30, %31
  store <8 x float> %32, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %33 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %34 = fmul <8 x float> %32, %33
  store <8 x float> %34, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %35 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %36 = fmul <8 x float> %34, %35
  store <8 x float> %36, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %37 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %38 = fmul <8 x float> %36, %37
  store <8 x float> %38, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %39 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %40 = fmul <8 x float> %38, %39
  store <8 x float> %40, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %41 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %42 = fmul <8 x float> %40, %41
  store <8 x float> %42, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %43 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %44 = fmul <8 x float> %42, %43
  store <8 x float> %44, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %45 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %46 = fmul <8 x float> %44, %45
  store <8 x float> %46, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %47 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %48 = fmul <8 x float> %46, %47
  store <8 x float> %48, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %49 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %50 = fmul <8 x float> %48, %49
  store <8 x float> %50, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %51 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %52 = fmul <8 x float> %50, %51
  store <8 x float> %52, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %53 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %54 = fmul <8 x float> %52, %53
  store <8 x float> %54, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %55 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %56 = fmul <8 x float> %54, %55
  store <8 x float> %56, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %57 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %58 = fmul <8 x float> %56, %57
  store <8 x float> %58, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %59 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %60 = fmul <8 x float> %58, %59
  store <8 x float> %60, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %61 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %62 = fmul <8 x float> %60, %61
  store <8 x float> %62, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %63 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %64 = fmul <8 x float> %62, %63
  store <8 x float> %64, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %65 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %66 = fmul <8 x float> %64, %65
  store <8 x float> %66, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %67 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %68 = fmul <8 x float> %66, %67
  store <8 x float> %68, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %69 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %70 = fmul <8 x float> %68, %69
  store <8 x float> %70, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %71 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %72 = fmul <8 x float> %70, %71
  store <8 x float> %72, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %73 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %74 = fmul <8 x float> %72, %73
  store <8 x float> %74, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %75 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %76 = fmul <8 x float> %74, %75
  store <8 x float> %76, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %77 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %78 = fmul <8 x float> %76, %77
  store <8 x float> %78, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %79 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %80 = fmul <8 x float> %78, %79
  store <8 x float> %80, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %81 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %82 = fmul <8 x float> %80, %81
  store <8 x float> %82, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %83 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %84 = fmul <8 x float> %82, %83
  store <8 x float> %84, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %85 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %86 = fmul <8 x float> %84, %85
  store <8 x float> %86, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %87 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %88 = fmul <8 x float> %86, %87
  store <8 x float> %88, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %89 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %90 = fmul <8 x float> %88, %89
  store <8 x float> %90, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %91 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %92 = fmul <8 x float> %90, %91
  store <8 x float> %92, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %93 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %94 = fmul <8 x float> %92, %93
  store <8 x float> %94, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %95 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %96 = fmul <8 x float> %94, %95
  store <8 x float> %96, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %97 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %98 = fmul <8 x float> %96, %97
  store <8 x float> %98, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %99 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %100 = fmul <8 x float> %98, %99
  store <8 x float> %100, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %101 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %102 = fmul <8 x float> %100, %101
  store <8 x float> %102, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %103 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %104 = fmul <8 x float> %102, %103
  store <8 x float> %104, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %105 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %106 = fmul <8 x float> %104, %105
  store <8 x float> %106, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %107 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %108 = fmul <8 x float> %106, %107
  store <8 x float> %108, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %109 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %110 = fmul <8 x float> %108, %109
  store <8 x float> %110, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %111 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %112 = fmul <8 x float> %110, %111
  store <8 x float> %112, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %113 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %114 = fmul <8 x float> %112, %113
  store <8 x float> %114, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %115 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %116 = fmul <8 x float> %114, %115
  store <8 x float> %116, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %117 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %118 = fmul <8 x float> %116, %117
  store <8 x float> %118, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %119 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %120 = fmul <8 x float> %118, %119
  store <8 x float> %120, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %121 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %122 = fmul <8 x float> %120, %121
  store <8 x float> %122, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %123 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %124 = fmul <8 x float> %122, %123
  store <8 x float> %124, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %125 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %126 = fmul <8 x float> %124, %125
  store <8 x float> %126, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %127 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %128 = fmul <8 x float> %126, %127
  store <8 x float> %128, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %129 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %130 = fmul <8 x float> %128, %129
  store <8 x float> %130, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %131 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %132 = fmul <8 x float> %130, %131
  store <8 x float> %132, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %133 = add nsw i32 %j.0378, 1
  %134 = icmp slt i32 %133, 128
  br i1 %134, label %5, label %135

; <label>:135                                     ; preds = %5
  ret void
}

define cc76 void @vect8_sp_div_iter_128_unroll_64_kernel(<8 x float> addrspace(1)* nocapture %a, <8 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <8 x float> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <8 x float> addrspace(1)* %b, i64 %2
  %.pre = load <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <8 x float> [ %.pre, %0 ], [ %132, %5 ]
  %j.0378 = phi i32 [ 0, %0 ], [ %133, %5 ]
  %7 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %8 = fdiv <8 x float> %6, %7, !fpmath !218
  store <8 x float> %8, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %9 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %10 = fdiv <8 x float> %8, %9, !fpmath !218
  store <8 x float> %10, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %11 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %12 = fdiv <8 x float> %10, %11, !fpmath !218
  store <8 x float> %12, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %13 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %14 = fdiv <8 x float> %12, %13, !fpmath !218
  store <8 x float> %14, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %15 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %16 = fdiv <8 x float> %14, %15, !fpmath !218
  store <8 x float> %16, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %17 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %18 = fdiv <8 x float> %16, %17, !fpmath !218
  store <8 x float> %18, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %19 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %20 = fdiv <8 x float> %18, %19, !fpmath !218
  store <8 x float> %20, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %21 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %22 = fdiv <8 x float> %20, %21, !fpmath !218
  store <8 x float> %22, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %23 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %24 = fdiv <8 x float> %22, %23, !fpmath !218
  store <8 x float> %24, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %25 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %26 = fdiv <8 x float> %24, %25, !fpmath !218
  store <8 x float> %26, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %27 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %28 = fdiv <8 x float> %26, %27, !fpmath !218
  store <8 x float> %28, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %29 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %30 = fdiv <8 x float> %28, %29, !fpmath !218
  store <8 x float> %30, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %31 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %32 = fdiv <8 x float> %30, %31, !fpmath !218
  store <8 x float> %32, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %33 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %34 = fdiv <8 x float> %32, %33, !fpmath !218
  store <8 x float> %34, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %35 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %36 = fdiv <8 x float> %34, %35, !fpmath !218
  store <8 x float> %36, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %37 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %38 = fdiv <8 x float> %36, %37, !fpmath !218
  store <8 x float> %38, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %39 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %40 = fdiv <8 x float> %38, %39, !fpmath !218
  store <8 x float> %40, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %41 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %42 = fdiv <8 x float> %40, %41, !fpmath !218
  store <8 x float> %42, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %43 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %44 = fdiv <8 x float> %42, %43, !fpmath !218
  store <8 x float> %44, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %45 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %46 = fdiv <8 x float> %44, %45, !fpmath !218
  store <8 x float> %46, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %47 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %48 = fdiv <8 x float> %46, %47, !fpmath !218
  store <8 x float> %48, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %49 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %50 = fdiv <8 x float> %48, %49, !fpmath !218
  store <8 x float> %50, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %51 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %52 = fdiv <8 x float> %50, %51, !fpmath !218
  store <8 x float> %52, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %53 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %54 = fdiv <8 x float> %52, %53, !fpmath !218
  store <8 x float> %54, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %55 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %56 = fdiv <8 x float> %54, %55, !fpmath !218
  store <8 x float> %56, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %57 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %58 = fdiv <8 x float> %56, %57, !fpmath !218
  store <8 x float> %58, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %59 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %60 = fdiv <8 x float> %58, %59, !fpmath !218
  store <8 x float> %60, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %61 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %62 = fdiv <8 x float> %60, %61, !fpmath !218
  store <8 x float> %62, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %63 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %64 = fdiv <8 x float> %62, %63, !fpmath !218
  store <8 x float> %64, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %65 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %66 = fdiv <8 x float> %64, %65, !fpmath !218
  store <8 x float> %66, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %67 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %68 = fdiv <8 x float> %66, %67, !fpmath !218
  store <8 x float> %68, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %69 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %70 = fdiv <8 x float> %68, %69, !fpmath !218
  store <8 x float> %70, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %71 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %72 = fdiv <8 x float> %70, %71, !fpmath !218
  store <8 x float> %72, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %73 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %74 = fdiv <8 x float> %72, %73, !fpmath !218
  store <8 x float> %74, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %75 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %76 = fdiv <8 x float> %74, %75, !fpmath !218
  store <8 x float> %76, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %77 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %78 = fdiv <8 x float> %76, %77, !fpmath !218
  store <8 x float> %78, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %79 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %80 = fdiv <8 x float> %78, %79, !fpmath !218
  store <8 x float> %80, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %81 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %82 = fdiv <8 x float> %80, %81, !fpmath !218
  store <8 x float> %82, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %83 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %84 = fdiv <8 x float> %82, %83, !fpmath !218
  store <8 x float> %84, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %85 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %86 = fdiv <8 x float> %84, %85, !fpmath !218
  store <8 x float> %86, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %87 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %88 = fdiv <8 x float> %86, %87, !fpmath !218
  store <8 x float> %88, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %89 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %90 = fdiv <8 x float> %88, %89, !fpmath !218
  store <8 x float> %90, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %91 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %92 = fdiv <8 x float> %90, %91, !fpmath !218
  store <8 x float> %92, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %93 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %94 = fdiv <8 x float> %92, %93, !fpmath !218
  store <8 x float> %94, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %95 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %96 = fdiv <8 x float> %94, %95, !fpmath !218
  store <8 x float> %96, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %97 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %98 = fdiv <8 x float> %96, %97, !fpmath !218
  store <8 x float> %98, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %99 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %100 = fdiv <8 x float> %98, %99, !fpmath !218
  store <8 x float> %100, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %101 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %102 = fdiv <8 x float> %100, %101, !fpmath !218
  store <8 x float> %102, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %103 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %104 = fdiv <8 x float> %102, %103, !fpmath !218
  store <8 x float> %104, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %105 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %106 = fdiv <8 x float> %104, %105, !fpmath !218
  store <8 x float> %106, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %107 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %108 = fdiv <8 x float> %106, %107, !fpmath !218
  store <8 x float> %108, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %109 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %110 = fdiv <8 x float> %108, %109, !fpmath !218
  store <8 x float> %110, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %111 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %112 = fdiv <8 x float> %110, %111, !fpmath !218
  store <8 x float> %112, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %113 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %114 = fdiv <8 x float> %112, %113, !fpmath !218
  store <8 x float> %114, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %115 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %116 = fdiv <8 x float> %114, %115, !fpmath !218
  store <8 x float> %116, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %117 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %118 = fdiv <8 x float> %116, %117, !fpmath !218
  store <8 x float> %118, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %119 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %120 = fdiv <8 x float> %118, %119, !fpmath !218
  store <8 x float> %120, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %121 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %122 = fdiv <8 x float> %120, %121, !fpmath !218
  store <8 x float> %122, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %123 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %124 = fdiv <8 x float> %122, %123, !fpmath !218
  store <8 x float> %124, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %125 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %126 = fdiv <8 x float> %124, %125, !fpmath !218
  store <8 x float> %126, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %127 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %128 = fdiv <8 x float> %126, %127, !fpmath !218
  store <8 x float> %128, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %129 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %130 = fdiv <8 x float> %128, %129, !fpmath !218
  store <8 x float> %130, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %131 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %132 = fdiv <8 x float> %130, %131, !fpmath !218
  store <8 x float> %132, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %133 = add nsw i32 %j.0378, 1
  %134 = icmp slt i32 %133, 128
  br i1 %134, label %5, label %135

; <label>:135                                     ; preds = %5
  ret void
}

define cc76 void @vect8_sp_mad_iter_128_unroll_64_kernel(<8 x float> addrspace(1)* nocapture %a, <8 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <8 x float> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <8 x float> addrspace(1)* %b, i64 %2
  %.pre = load <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <8 x float> [ %.pre, %0 ], [ %132, %5 ]
  %j.0504 = phi i32 [ 0, %0 ], [ %133, %5 ]
  %7 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %8 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %6, <8 x float> %7, <8 x float> %7)
  store <8 x float> %8, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %9 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %10 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %8, <8 x float> %9, <8 x float> %9)
  store <8 x float> %10, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %11 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %12 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %10, <8 x float> %11, <8 x float> %11)
  store <8 x float> %12, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %13 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %14 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %12, <8 x float> %13, <8 x float> %13)
  store <8 x float> %14, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %15 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %16 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %14, <8 x float> %15, <8 x float> %15)
  store <8 x float> %16, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %17 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %18 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %16, <8 x float> %17, <8 x float> %17)
  store <8 x float> %18, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %19 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %20 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %18, <8 x float> %19, <8 x float> %19)
  store <8 x float> %20, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %21 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %22 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %20, <8 x float> %21, <8 x float> %21)
  store <8 x float> %22, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %23 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %24 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %22, <8 x float> %23, <8 x float> %23)
  store <8 x float> %24, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %25 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %26 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %24, <8 x float> %25, <8 x float> %25)
  store <8 x float> %26, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %27 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %28 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %26, <8 x float> %27, <8 x float> %27)
  store <8 x float> %28, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %29 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %30 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %28, <8 x float> %29, <8 x float> %29)
  store <8 x float> %30, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %31 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %32 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %30, <8 x float> %31, <8 x float> %31)
  store <8 x float> %32, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %33 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %34 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %32, <8 x float> %33, <8 x float> %33)
  store <8 x float> %34, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %35 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %36 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %34, <8 x float> %35, <8 x float> %35)
  store <8 x float> %36, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %37 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %38 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %36, <8 x float> %37, <8 x float> %37)
  store <8 x float> %38, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %39 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %40 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %38, <8 x float> %39, <8 x float> %39)
  store <8 x float> %40, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %41 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %42 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %40, <8 x float> %41, <8 x float> %41)
  store <8 x float> %42, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %43 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %44 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %42, <8 x float> %43, <8 x float> %43)
  store <8 x float> %44, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %45 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %46 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %44, <8 x float> %45, <8 x float> %45)
  store <8 x float> %46, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %47 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %48 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %46, <8 x float> %47, <8 x float> %47)
  store <8 x float> %48, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %49 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %50 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %48, <8 x float> %49, <8 x float> %49)
  store <8 x float> %50, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %51 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %52 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %50, <8 x float> %51, <8 x float> %51)
  store <8 x float> %52, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %53 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %54 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %52, <8 x float> %53, <8 x float> %53)
  store <8 x float> %54, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %55 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %56 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %54, <8 x float> %55, <8 x float> %55)
  store <8 x float> %56, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %57 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %58 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %56, <8 x float> %57, <8 x float> %57)
  store <8 x float> %58, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %59 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %60 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %58, <8 x float> %59, <8 x float> %59)
  store <8 x float> %60, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %61 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %62 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %60, <8 x float> %61, <8 x float> %61)
  store <8 x float> %62, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %63 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %64 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %62, <8 x float> %63, <8 x float> %63)
  store <8 x float> %64, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %65 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %66 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %64, <8 x float> %65, <8 x float> %65)
  store <8 x float> %66, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %67 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %68 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %66, <8 x float> %67, <8 x float> %67)
  store <8 x float> %68, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %69 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %70 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %68, <8 x float> %69, <8 x float> %69)
  store <8 x float> %70, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %71 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %72 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %70, <8 x float> %71, <8 x float> %71)
  store <8 x float> %72, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %73 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %74 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %72, <8 x float> %73, <8 x float> %73)
  store <8 x float> %74, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %75 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %76 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %74, <8 x float> %75, <8 x float> %75)
  store <8 x float> %76, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %77 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %78 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %76, <8 x float> %77, <8 x float> %77)
  store <8 x float> %78, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %79 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %80 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %78, <8 x float> %79, <8 x float> %79)
  store <8 x float> %80, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %81 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %82 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %80, <8 x float> %81, <8 x float> %81)
  store <8 x float> %82, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %83 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %84 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %82, <8 x float> %83, <8 x float> %83)
  store <8 x float> %84, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %85 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %86 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %84, <8 x float> %85, <8 x float> %85)
  store <8 x float> %86, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %87 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %88 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %86, <8 x float> %87, <8 x float> %87)
  store <8 x float> %88, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %89 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %90 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %88, <8 x float> %89, <8 x float> %89)
  store <8 x float> %90, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %91 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %92 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %90, <8 x float> %91, <8 x float> %91)
  store <8 x float> %92, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %93 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %94 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %92, <8 x float> %93, <8 x float> %93)
  store <8 x float> %94, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %95 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %96 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %94, <8 x float> %95, <8 x float> %95)
  store <8 x float> %96, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %97 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %98 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %96, <8 x float> %97, <8 x float> %97)
  store <8 x float> %98, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %99 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %100 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %98, <8 x float> %99, <8 x float> %99)
  store <8 x float> %100, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %101 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %102 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %100, <8 x float> %101, <8 x float> %101)
  store <8 x float> %102, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %103 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %104 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %102, <8 x float> %103, <8 x float> %103)
  store <8 x float> %104, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %105 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %106 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %104, <8 x float> %105, <8 x float> %105)
  store <8 x float> %106, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %107 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %108 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %106, <8 x float> %107, <8 x float> %107)
  store <8 x float> %108, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %109 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %110 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %108, <8 x float> %109, <8 x float> %109)
  store <8 x float> %110, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %111 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %112 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %110, <8 x float> %111, <8 x float> %111)
  store <8 x float> %112, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %113 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %114 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %112, <8 x float> %113, <8 x float> %113)
  store <8 x float> %114, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %115 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %116 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %114, <8 x float> %115, <8 x float> %115)
  store <8 x float> %116, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %117 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %118 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %116, <8 x float> %117, <8 x float> %117)
  store <8 x float> %118, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %119 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %120 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %118, <8 x float> %119, <8 x float> %119)
  store <8 x float> %120, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %121 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %122 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %120, <8 x float> %121, <8 x float> %121)
  store <8 x float> %122, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %123 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %124 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %122, <8 x float> %123, <8 x float> %123)
  store <8 x float> %124, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %125 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %126 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %124, <8 x float> %125, <8 x float> %125)
  store <8 x float> %126, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %127 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %128 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %126, <8 x float> %127, <8 x float> %127)
  store <8 x float> %128, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %129 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %130 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %128, <8 x float> %129, <8 x float> %129)
  store <8 x float> %130, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %131 = load <8 x float> addrspace(1)* %4, align 32, !tbaa !216
  %132 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %130, <8 x float> %131, <8 x float> %131)
  store <8 x float> %132, <8 x float> addrspace(1)* %3, align 32, !tbaa !216
  %133 = add nsw i32 %j.0504, 1
  %134 = icmp slt i32 %133, 128
  br i1 %134, label %5, label %135

; <label>:135                                     ; preds = %5
  ret void
}

define cc76 void @vect16_sp_add_iter_128_unroll_64_kernel(<16 x float> addrspace(1)* nocapture %a, <16 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <16 x float> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <16 x float> addrspace(1)* %b, i64 %2
  %.pre = load <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <16 x float> [ %.pre, %0 ], [ %132, %5 ]
  %j.0378 = phi i32 [ 0, %0 ], [ %133, %5 ]
  %7 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %8 = fadd <16 x float> %6, %7
  store <16 x float> %8, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %9 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %10 = fadd <16 x float> %8, %9
  store <16 x float> %10, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %11 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %12 = fadd <16 x float> %10, %11
  store <16 x float> %12, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %13 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %14 = fadd <16 x float> %12, %13
  store <16 x float> %14, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %15 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %16 = fadd <16 x float> %14, %15
  store <16 x float> %16, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %17 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %18 = fadd <16 x float> %16, %17
  store <16 x float> %18, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %19 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %20 = fadd <16 x float> %18, %19
  store <16 x float> %20, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %21 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %22 = fadd <16 x float> %20, %21
  store <16 x float> %22, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %23 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %24 = fadd <16 x float> %22, %23
  store <16 x float> %24, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %25 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %26 = fadd <16 x float> %24, %25
  store <16 x float> %26, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %27 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %28 = fadd <16 x float> %26, %27
  store <16 x float> %28, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %29 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %30 = fadd <16 x float> %28, %29
  store <16 x float> %30, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %31 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %32 = fadd <16 x float> %30, %31
  store <16 x float> %32, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %33 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %34 = fadd <16 x float> %32, %33
  store <16 x float> %34, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %35 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %36 = fadd <16 x float> %34, %35
  store <16 x float> %36, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %37 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %38 = fadd <16 x float> %36, %37
  store <16 x float> %38, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %39 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %40 = fadd <16 x float> %38, %39
  store <16 x float> %40, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %41 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %42 = fadd <16 x float> %40, %41
  store <16 x float> %42, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %43 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %44 = fadd <16 x float> %42, %43
  store <16 x float> %44, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %45 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %46 = fadd <16 x float> %44, %45
  store <16 x float> %46, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %47 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %48 = fadd <16 x float> %46, %47
  store <16 x float> %48, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %49 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %50 = fadd <16 x float> %48, %49
  store <16 x float> %50, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %51 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %52 = fadd <16 x float> %50, %51
  store <16 x float> %52, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %53 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %54 = fadd <16 x float> %52, %53
  store <16 x float> %54, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %55 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %56 = fadd <16 x float> %54, %55
  store <16 x float> %56, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %57 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %58 = fadd <16 x float> %56, %57
  store <16 x float> %58, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %59 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %60 = fadd <16 x float> %58, %59
  store <16 x float> %60, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %61 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %62 = fadd <16 x float> %60, %61
  store <16 x float> %62, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %63 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %64 = fadd <16 x float> %62, %63
  store <16 x float> %64, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %65 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %66 = fadd <16 x float> %64, %65
  store <16 x float> %66, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %67 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %68 = fadd <16 x float> %66, %67
  store <16 x float> %68, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %69 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %70 = fadd <16 x float> %68, %69
  store <16 x float> %70, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %71 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %72 = fadd <16 x float> %70, %71
  store <16 x float> %72, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %73 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %74 = fadd <16 x float> %72, %73
  store <16 x float> %74, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %75 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %76 = fadd <16 x float> %74, %75
  store <16 x float> %76, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %77 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %78 = fadd <16 x float> %76, %77
  store <16 x float> %78, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %79 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %80 = fadd <16 x float> %78, %79
  store <16 x float> %80, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %81 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %82 = fadd <16 x float> %80, %81
  store <16 x float> %82, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %83 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %84 = fadd <16 x float> %82, %83
  store <16 x float> %84, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %85 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %86 = fadd <16 x float> %84, %85
  store <16 x float> %86, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %87 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %88 = fadd <16 x float> %86, %87
  store <16 x float> %88, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %89 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %90 = fadd <16 x float> %88, %89
  store <16 x float> %90, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %91 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %92 = fadd <16 x float> %90, %91
  store <16 x float> %92, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %93 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %94 = fadd <16 x float> %92, %93
  store <16 x float> %94, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %95 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %96 = fadd <16 x float> %94, %95
  store <16 x float> %96, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %97 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %98 = fadd <16 x float> %96, %97
  store <16 x float> %98, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %99 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %100 = fadd <16 x float> %98, %99
  store <16 x float> %100, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %101 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %102 = fadd <16 x float> %100, %101
  store <16 x float> %102, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %103 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %104 = fadd <16 x float> %102, %103
  store <16 x float> %104, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %105 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %106 = fadd <16 x float> %104, %105
  store <16 x float> %106, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %107 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %108 = fadd <16 x float> %106, %107
  store <16 x float> %108, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %109 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %110 = fadd <16 x float> %108, %109
  store <16 x float> %110, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %111 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %112 = fadd <16 x float> %110, %111
  store <16 x float> %112, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %113 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %114 = fadd <16 x float> %112, %113
  store <16 x float> %114, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %115 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %116 = fadd <16 x float> %114, %115
  store <16 x float> %116, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %117 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %118 = fadd <16 x float> %116, %117
  store <16 x float> %118, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %119 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %120 = fadd <16 x float> %118, %119
  store <16 x float> %120, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %121 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %122 = fadd <16 x float> %120, %121
  store <16 x float> %122, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %123 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %124 = fadd <16 x float> %122, %123
  store <16 x float> %124, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %125 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %126 = fadd <16 x float> %124, %125
  store <16 x float> %126, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %127 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %128 = fadd <16 x float> %126, %127
  store <16 x float> %128, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %129 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %130 = fadd <16 x float> %128, %129
  store <16 x float> %130, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %131 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %132 = fadd <16 x float> %130, %131
  store <16 x float> %132, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %133 = add nsw i32 %j.0378, 1
  %134 = icmp slt i32 %133, 128
  br i1 %134, label %5, label %135

; <label>:135                                     ; preds = %5
  ret void
}

define cc76 void @vect16_sp_sub_iter_128_unroll_64_kernel(<16 x float> addrspace(1)* nocapture %a, <16 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <16 x float> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <16 x float> addrspace(1)* %b, i64 %2
  %.pre = load <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <16 x float> [ %.pre, %0 ], [ %132, %5 ]
  %j.0378 = phi i32 [ 0, %0 ], [ %133, %5 ]
  %7 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %8 = fsub <16 x float> %6, %7
  store <16 x float> %8, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %9 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %10 = fsub <16 x float> %8, %9
  store <16 x float> %10, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %11 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %12 = fsub <16 x float> %10, %11
  store <16 x float> %12, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %13 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %14 = fsub <16 x float> %12, %13
  store <16 x float> %14, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %15 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %16 = fsub <16 x float> %14, %15
  store <16 x float> %16, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %17 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %18 = fsub <16 x float> %16, %17
  store <16 x float> %18, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %19 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %20 = fsub <16 x float> %18, %19
  store <16 x float> %20, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %21 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %22 = fsub <16 x float> %20, %21
  store <16 x float> %22, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %23 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %24 = fsub <16 x float> %22, %23
  store <16 x float> %24, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %25 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %26 = fsub <16 x float> %24, %25
  store <16 x float> %26, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %27 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %28 = fsub <16 x float> %26, %27
  store <16 x float> %28, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %29 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %30 = fsub <16 x float> %28, %29
  store <16 x float> %30, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %31 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %32 = fsub <16 x float> %30, %31
  store <16 x float> %32, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %33 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %34 = fsub <16 x float> %32, %33
  store <16 x float> %34, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %35 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %36 = fsub <16 x float> %34, %35
  store <16 x float> %36, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %37 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %38 = fsub <16 x float> %36, %37
  store <16 x float> %38, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %39 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %40 = fsub <16 x float> %38, %39
  store <16 x float> %40, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %41 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %42 = fsub <16 x float> %40, %41
  store <16 x float> %42, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %43 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %44 = fsub <16 x float> %42, %43
  store <16 x float> %44, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %45 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %46 = fsub <16 x float> %44, %45
  store <16 x float> %46, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %47 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %48 = fsub <16 x float> %46, %47
  store <16 x float> %48, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %49 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %50 = fsub <16 x float> %48, %49
  store <16 x float> %50, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %51 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %52 = fsub <16 x float> %50, %51
  store <16 x float> %52, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %53 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %54 = fsub <16 x float> %52, %53
  store <16 x float> %54, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %55 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %56 = fsub <16 x float> %54, %55
  store <16 x float> %56, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %57 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %58 = fsub <16 x float> %56, %57
  store <16 x float> %58, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %59 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %60 = fsub <16 x float> %58, %59
  store <16 x float> %60, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %61 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %62 = fsub <16 x float> %60, %61
  store <16 x float> %62, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %63 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %64 = fsub <16 x float> %62, %63
  store <16 x float> %64, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %65 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %66 = fsub <16 x float> %64, %65
  store <16 x float> %66, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %67 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %68 = fsub <16 x float> %66, %67
  store <16 x float> %68, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %69 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %70 = fsub <16 x float> %68, %69
  store <16 x float> %70, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %71 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %72 = fsub <16 x float> %70, %71
  store <16 x float> %72, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %73 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %74 = fsub <16 x float> %72, %73
  store <16 x float> %74, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %75 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %76 = fsub <16 x float> %74, %75
  store <16 x float> %76, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %77 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %78 = fsub <16 x float> %76, %77
  store <16 x float> %78, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %79 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %80 = fsub <16 x float> %78, %79
  store <16 x float> %80, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %81 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %82 = fsub <16 x float> %80, %81
  store <16 x float> %82, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %83 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %84 = fsub <16 x float> %82, %83
  store <16 x float> %84, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %85 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %86 = fsub <16 x float> %84, %85
  store <16 x float> %86, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %87 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %88 = fsub <16 x float> %86, %87
  store <16 x float> %88, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %89 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %90 = fsub <16 x float> %88, %89
  store <16 x float> %90, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %91 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %92 = fsub <16 x float> %90, %91
  store <16 x float> %92, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %93 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %94 = fsub <16 x float> %92, %93
  store <16 x float> %94, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %95 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %96 = fsub <16 x float> %94, %95
  store <16 x float> %96, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %97 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %98 = fsub <16 x float> %96, %97
  store <16 x float> %98, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %99 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %100 = fsub <16 x float> %98, %99
  store <16 x float> %100, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %101 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %102 = fsub <16 x float> %100, %101
  store <16 x float> %102, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %103 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %104 = fsub <16 x float> %102, %103
  store <16 x float> %104, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %105 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %106 = fsub <16 x float> %104, %105
  store <16 x float> %106, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %107 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %108 = fsub <16 x float> %106, %107
  store <16 x float> %108, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %109 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %110 = fsub <16 x float> %108, %109
  store <16 x float> %110, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %111 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %112 = fsub <16 x float> %110, %111
  store <16 x float> %112, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %113 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %114 = fsub <16 x float> %112, %113
  store <16 x float> %114, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %115 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %116 = fsub <16 x float> %114, %115
  store <16 x float> %116, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %117 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %118 = fsub <16 x float> %116, %117
  store <16 x float> %118, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %119 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %120 = fsub <16 x float> %118, %119
  store <16 x float> %120, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %121 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %122 = fsub <16 x float> %120, %121
  store <16 x float> %122, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %123 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %124 = fsub <16 x float> %122, %123
  store <16 x float> %124, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %125 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %126 = fsub <16 x float> %124, %125
  store <16 x float> %126, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %127 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %128 = fsub <16 x float> %126, %127
  store <16 x float> %128, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %129 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %130 = fsub <16 x float> %128, %129
  store <16 x float> %130, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %131 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %132 = fsub <16 x float> %130, %131
  store <16 x float> %132, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %133 = add nsw i32 %j.0378, 1
  %134 = icmp slt i32 %133, 128
  br i1 %134, label %5, label %135

; <label>:135                                     ; preds = %5
  ret void
}

define cc76 void @vect16_sp_mul_iter_128_unroll_64_kernel(<16 x float> addrspace(1)* nocapture %a, <16 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <16 x float> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <16 x float> addrspace(1)* %b, i64 %2
  %.pre = load <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <16 x float> [ %.pre, %0 ], [ %132, %5 ]
  %j.0378 = phi i32 [ 0, %0 ], [ %133, %5 ]
  %7 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %8 = fmul <16 x float> %6, %7
  store <16 x float> %8, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %9 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %10 = fmul <16 x float> %8, %9
  store <16 x float> %10, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %11 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %12 = fmul <16 x float> %10, %11
  store <16 x float> %12, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %13 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %14 = fmul <16 x float> %12, %13
  store <16 x float> %14, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %15 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %16 = fmul <16 x float> %14, %15
  store <16 x float> %16, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %17 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %18 = fmul <16 x float> %16, %17
  store <16 x float> %18, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %19 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %20 = fmul <16 x float> %18, %19
  store <16 x float> %20, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %21 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %22 = fmul <16 x float> %20, %21
  store <16 x float> %22, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %23 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %24 = fmul <16 x float> %22, %23
  store <16 x float> %24, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %25 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %26 = fmul <16 x float> %24, %25
  store <16 x float> %26, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %27 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %28 = fmul <16 x float> %26, %27
  store <16 x float> %28, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %29 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %30 = fmul <16 x float> %28, %29
  store <16 x float> %30, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %31 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %32 = fmul <16 x float> %30, %31
  store <16 x float> %32, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %33 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %34 = fmul <16 x float> %32, %33
  store <16 x float> %34, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %35 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %36 = fmul <16 x float> %34, %35
  store <16 x float> %36, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %37 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %38 = fmul <16 x float> %36, %37
  store <16 x float> %38, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %39 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %40 = fmul <16 x float> %38, %39
  store <16 x float> %40, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %41 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %42 = fmul <16 x float> %40, %41
  store <16 x float> %42, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %43 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %44 = fmul <16 x float> %42, %43
  store <16 x float> %44, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %45 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %46 = fmul <16 x float> %44, %45
  store <16 x float> %46, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %47 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %48 = fmul <16 x float> %46, %47
  store <16 x float> %48, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %49 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %50 = fmul <16 x float> %48, %49
  store <16 x float> %50, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %51 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %52 = fmul <16 x float> %50, %51
  store <16 x float> %52, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %53 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %54 = fmul <16 x float> %52, %53
  store <16 x float> %54, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %55 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %56 = fmul <16 x float> %54, %55
  store <16 x float> %56, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %57 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %58 = fmul <16 x float> %56, %57
  store <16 x float> %58, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %59 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %60 = fmul <16 x float> %58, %59
  store <16 x float> %60, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %61 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %62 = fmul <16 x float> %60, %61
  store <16 x float> %62, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %63 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %64 = fmul <16 x float> %62, %63
  store <16 x float> %64, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %65 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %66 = fmul <16 x float> %64, %65
  store <16 x float> %66, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %67 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %68 = fmul <16 x float> %66, %67
  store <16 x float> %68, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %69 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %70 = fmul <16 x float> %68, %69
  store <16 x float> %70, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %71 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %72 = fmul <16 x float> %70, %71
  store <16 x float> %72, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %73 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %74 = fmul <16 x float> %72, %73
  store <16 x float> %74, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %75 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %76 = fmul <16 x float> %74, %75
  store <16 x float> %76, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %77 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %78 = fmul <16 x float> %76, %77
  store <16 x float> %78, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %79 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %80 = fmul <16 x float> %78, %79
  store <16 x float> %80, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %81 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %82 = fmul <16 x float> %80, %81
  store <16 x float> %82, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %83 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %84 = fmul <16 x float> %82, %83
  store <16 x float> %84, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %85 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %86 = fmul <16 x float> %84, %85
  store <16 x float> %86, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %87 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %88 = fmul <16 x float> %86, %87
  store <16 x float> %88, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %89 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %90 = fmul <16 x float> %88, %89
  store <16 x float> %90, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %91 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %92 = fmul <16 x float> %90, %91
  store <16 x float> %92, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %93 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %94 = fmul <16 x float> %92, %93
  store <16 x float> %94, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %95 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %96 = fmul <16 x float> %94, %95
  store <16 x float> %96, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %97 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %98 = fmul <16 x float> %96, %97
  store <16 x float> %98, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %99 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %100 = fmul <16 x float> %98, %99
  store <16 x float> %100, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %101 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %102 = fmul <16 x float> %100, %101
  store <16 x float> %102, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %103 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %104 = fmul <16 x float> %102, %103
  store <16 x float> %104, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %105 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %106 = fmul <16 x float> %104, %105
  store <16 x float> %106, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %107 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %108 = fmul <16 x float> %106, %107
  store <16 x float> %108, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %109 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %110 = fmul <16 x float> %108, %109
  store <16 x float> %110, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %111 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %112 = fmul <16 x float> %110, %111
  store <16 x float> %112, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %113 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %114 = fmul <16 x float> %112, %113
  store <16 x float> %114, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %115 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %116 = fmul <16 x float> %114, %115
  store <16 x float> %116, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %117 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %118 = fmul <16 x float> %116, %117
  store <16 x float> %118, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %119 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %120 = fmul <16 x float> %118, %119
  store <16 x float> %120, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %121 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %122 = fmul <16 x float> %120, %121
  store <16 x float> %122, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %123 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %124 = fmul <16 x float> %122, %123
  store <16 x float> %124, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %125 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %126 = fmul <16 x float> %124, %125
  store <16 x float> %126, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %127 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %128 = fmul <16 x float> %126, %127
  store <16 x float> %128, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %129 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %130 = fmul <16 x float> %128, %129
  store <16 x float> %130, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %131 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %132 = fmul <16 x float> %130, %131
  store <16 x float> %132, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %133 = add nsw i32 %j.0378, 1
  %134 = icmp slt i32 %133, 128
  br i1 %134, label %5, label %135

; <label>:135                                     ; preds = %5
  ret void
}

define cc76 void @vect16_sp_div_iter_128_unroll_64_kernel(<16 x float> addrspace(1)* nocapture %a, <16 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <16 x float> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <16 x float> addrspace(1)* %b, i64 %2
  %.pre = load <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <16 x float> [ %.pre, %0 ], [ %132, %5 ]
  %j.0378 = phi i32 [ 0, %0 ], [ %133, %5 ]
  %7 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %8 = fdiv <16 x float> %6, %7, !fpmath !218
  store <16 x float> %8, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %9 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %10 = fdiv <16 x float> %8, %9, !fpmath !218
  store <16 x float> %10, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %11 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %12 = fdiv <16 x float> %10, %11, !fpmath !218
  store <16 x float> %12, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %13 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %14 = fdiv <16 x float> %12, %13, !fpmath !218
  store <16 x float> %14, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %15 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %16 = fdiv <16 x float> %14, %15, !fpmath !218
  store <16 x float> %16, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %17 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %18 = fdiv <16 x float> %16, %17, !fpmath !218
  store <16 x float> %18, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %19 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %20 = fdiv <16 x float> %18, %19, !fpmath !218
  store <16 x float> %20, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %21 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %22 = fdiv <16 x float> %20, %21, !fpmath !218
  store <16 x float> %22, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %23 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %24 = fdiv <16 x float> %22, %23, !fpmath !218
  store <16 x float> %24, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %25 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %26 = fdiv <16 x float> %24, %25, !fpmath !218
  store <16 x float> %26, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %27 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %28 = fdiv <16 x float> %26, %27, !fpmath !218
  store <16 x float> %28, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %29 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %30 = fdiv <16 x float> %28, %29, !fpmath !218
  store <16 x float> %30, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %31 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %32 = fdiv <16 x float> %30, %31, !fpmath !218
  store <16 x float> %32, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %33 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %34 = fdiv <16 x float> %32, %33, !fpmath !218
  store <16 x float> %34, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %35 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %36 = fdiv <16 x float> %34, %35, !fpmath !218
  store <16 x float> %36, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %37 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %38 = fdiv <16 x float> %36, %37, !fpmath !218
  store <16 x float> %38, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %39 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %40 = fdiv <16 x float> %38, %39, !fpmath !218
  store <16 x float> %40, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %41 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %42 = fdiv <16 x float> %40, %41, !fpmath !218
  store <16 x float> %42, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %43 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %44 = fdiv <16 x float> %42, %43, !fpmath !218
  store <16 x float> %44, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %45 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %46 = fdiv <16 x float> %44, %45, !fpmath !218
  store <16 x float> %46, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %47 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %48 = fdiv <16 x float> %46, %47, !fpmath !218
  store <16 x float> %48, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %49 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %50 = fdiv <16 x float> %48, %49, !fpmath !218
  store <16 x float> %50, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %51 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %52 = fdiv <16 x float> %50, %51, !fpmath !218
  store <16 x float> %52, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %53 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %54 = fdiv <16 x float> %52, %53, !fpmath !218
  store <16 x float> %54, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %55 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %56 = fdiv <16 x float> %54, %55, !fpmath !218
  store <16 x float> %56, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %57 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %58 = fdiv <16 x float> %56, %57, !fpmath !218
  store <16 x float> %58, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %59 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %60 = fdiv <16 x float> %58, %59, !fpmath !218
  store <16 x float> %60, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %61 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %62 = fdiv <16 x float> %60, %61, !fpmath !218
  store <16 x float> %62, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %63 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %64 = fdiv <16 x float> %62, %63, !fpmath !218
  store <16 x float> %64, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %65 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %66 = fdiv <16 x float> %64, %65, !fpmath !218
  store <16 x float> %66, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %67 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %68 = fdiv <16 x float> %66, %67, !fpmath !218
  store <16 x float> %68, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %69 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %70 = fdiv <16 x float> %68, %69, !fpmath !218
  store <16 x float> %70, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %71 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %72 = fdiv <16 x float> %70, %71, !fpmath !218
  store <16 x float> %72, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %73 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %74 = fdiv <16 x float> %72, %73, !fpmath !218
  store <16 x float> %74, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %75 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %76 = fdiv <16 x float> %74, %75, !fpmath !218
  store <16 x float> %76, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %77 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %78 = fdiv <16 x float> %76, %77, !fpmath !218
  store <16 x float> %78, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %79 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %80 = fdiv <16 x float> %78, %79, !fpmath !218
  store <16 x float> %80, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %81 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %82 = fdiv <16 x float> %80, %81, !fpmath !218
  store <16 x float> %82, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %83 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %84 = fdiv <16 x float> %82, %83, !fpmath !218
  store <16 x float> %84, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %85 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %86 = fdiv <16 x float> %84, %85, !fpmath !218
  store <16 x float> %86, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %87 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %88 = fdiv <16 x float> %86, %87, !fpmath !218
  store <16 x float> %88, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %89 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %90 = fdiv <16 x float> %88, %89, !fpmath !218
  store <16 x float> %90, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %91 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %92 = fdiv <16 x float> %90, %91, !fpmath !218
  store <16 x float> %92, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %93 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %94 = fdiv <16 x float> %92, %93, !fpmath !218
  store <16 x float> %94, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %95 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %96 = fdiv <16 x float> %94, %95, !fpmath !218
  store <16 x float> %96, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %97 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %98 = fdiv <16 x float> %96, %97, !fpmath !218
  store <16 x float> %98, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %99 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %100 = fdiv <16 x float> %98, %99, !fpmath !218
  store <16 x float> %100, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %101 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %102 = fdiv <16 x float> %100, %101, !fpmath !218
  store <16 x float> %102, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %103 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %104 = fdiv <16 x float> %102, %103, !fpmath !218
  store <16 x float> %104, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %105 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %106 = fdiv <16 x float> %104, %105, !fpmath !218
  store <16 x float> %106, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %107 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %108 = fdiv <16 x float> %106, %107, !fpmath !218
  store <16 x float> %108, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %109 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %110 = fdiv <16 x float> %108, %109, !fpmath !218
  store <16 x float> %110, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %111 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %112 = fdiv <16 x float> %110, %111, !fpmath !218
  store <16 x float> %112, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %113 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %114 = fdiv <16 x float> %112, %113, !fpmath !218
  store <16 x float> %114, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %115 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %116 = fdiv <16 x float> %114, %115, !fpmath !218
  store <16 x float> %116, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %117 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %118 = fdiv <16 x float> %116, %117, !fpmath !218
  store <16 x float> %118, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %119 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %120 = fdiv <16 x float> %118, %119, !fpmath !218
  store <16 x float> %120, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %121 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %122 = fdiv <16 x float> %120, %121, !fpmath !218
  store <16 x float> %122, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %123 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %124 = fdiv <16 x float> %122, %123, !fpmath !218
  store <16 x float> %124, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %125 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %126 = fdiv <16 x float> %124, %125, !fpmath !218
  store <16 x float> %126, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %127 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %128 = fdiv <16 x float> %126, %127, !fpmath !218
  store <16 x float> %128, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %129 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %130 = fdiv <16 x float> %128, %129, !fpmath !218
  store <16 x float> %130, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %131 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %132 = fdiv <16 x float> %130, %131, !fpmath !218
  store <16 x float> %132, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %133 = add nsw i32 %j.0378, 1
  %134 = icmp slt i32 %133, 128
  br i1 %134, label %5, label %135

; <label>:135                                     ; preds = %5
  ret void
}

define cc76 void @vect16_sp_mad_iter_128_unroll_64_kernel(<16 x float> addrspace(1)* nocapture %a, <16 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <16 x float> addrspace(1)* %a, i64 %2
  %4 = getelementptr inbounds <16 x float> addrspace(1)* %b, i64 %2
  %.pre = load <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  br label %5

; <label>:5                                       ; preds = %0, %5
  %6 = phi <16 x float> [ %.pre, %0 ], [ %132, %5 ]
  %j.0504 = phi i32 [ 0, %0 ], [ %133, %5 ]
  %7 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %8 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %6, <16 x float> %7, <16 x float> %7)
  store <16 x float> %8, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %9 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %10 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %8, <16 x float> %9, <16 x float> %9)
  store <16 x float> %10, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %11 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %12 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %10, <16 x float> %11, <16 x float> %11)
  store <16 x float> %12, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %13 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %14 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %12, <16 x float> %13, <16 x float> %13)
  store <16 x float> %14, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %15 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %16 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %14, <16 x float> %15, <16 x float> %15)
  store <16 x float> %16, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %17 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %18 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %16, <16 x float> %17, <16 x float> %17)
  store <16 x float> %18, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %19 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %20 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %18, <16 x float> %19, <16 x float> %19)
  store <16 x float> %20, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %21 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %22 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %20, <16 x float> %21, <16 x float> %21)
  store <16 x float> %22, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %23 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %24 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %22, <16 x float> %23, <16 x float> %23)
  store <16 x float> %24, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %25 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %26 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %24, <16 x float> %25, <16 x float> %25)
  store <16 x float> %26, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %27 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %28 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %26, <16 x float> %27, <16 x float> %27)
  store <16 x float> %28, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %29 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %30 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %28, <16 x float> %29, <16 x float> %29)
  store <16 x float> %30, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %31 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %32 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %30, <16 x float> %31, <16 x float> %31)
  store <16 x float> %32, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %33 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %34 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %32, <16 x float> %33, <16 x float> %33)
  store <16 x float> %34, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %35 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %36 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %34, <16 x float> %35, <16 x float> %35)
  store <16 x float> %36, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %37 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %38 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %36, <16 x float> %37, <16 x float> %37)
  store <16 x float> %38, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %39 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %40 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %38, <16 x float> %39, <16 x float> %39)
  store <16 x float> %40, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %41 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %42 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %40, <16 x float> %41, <16 x float> %41)
  store <16 x float> %42, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %43 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %44 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %42, <16 x float> %43, <16 x float> %43)
  store <16 x float> %44, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %45 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %46 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %44, <16 x float> %45, <16 x float> %45)
  store <16 x float> %46, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %47 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %48 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %46, <16 x float> %47, <16 x float> %47)
  store <16 x float> %48, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %49 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %50 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %48, <16 x float> %49, <16 x float> %49)
  store <16 x float> %50, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %51 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %52 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %50, <16 x float> %51, <16 x float> %51)
  store <16 x float> %52, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %53 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %54 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %52, <16 x float> %53, <16 x float> %53)
  store <16 x float> %54, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %55 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %56 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %54, <16 x float> %55, <16 x float> %55)
  store <16 x float> %56, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %57 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %58 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %56, <16 x float> %57, <16 x float> %57)
  store <16 x float> %58, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %59 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %60 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %58, <16 x float> %59, <16 x float> %59)
  store <16 x float> %60, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %61 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %62 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %60, <16 x float> %61, <16 x float> %61)
  store <16 x float> %62, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %63 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %64 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %62, <16 x float> %63, <16 x float> %63)
  store <16 x float> %64, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %65 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %66 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %64, <16 x float> %65, <16 x float> %65)
  store <16 x float> %66, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %67 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %68 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %66, <16 x float> %67, <16 x float> %67)
  store <16 x float> %68, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %69 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %70 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %68, <16 x float> %69, <16 x float> %69)
  store <16 x float> %70, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %71 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %72 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %70, <16 x float> %71, <16 x float> %71)
  store <16 x float> %72, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %73 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %74 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %72, <16 x float> %73, <16 x float> %73)
  store <16 x float> %74, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %75 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %76 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %74, <16 x float> %75, <16 x float> %75)
  store <16 x float> %76, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %77 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %78 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %76, <16 x float> %77, <16 x float> %77)
  store <16 x float> %78, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %79 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %80 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %78, <16 x float> %79, <16 x float> %79)
  store <16 x float> %80, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %81 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %82 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %80, <16 x float> %81, <16 x float> %81)
  store <16 x float> %82, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %83 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %84 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %82, <16 x float> %83, <16 x float> %83)
  store <16 x float> %84, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %85 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %86 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %84, <16 x float> %85, <16 x float> %85)
  store <16 x float> %86, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %87 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %88 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %86, <16 x float> %87, <16 x float> %87)
  store <16 x float> %88, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %89 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %90 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %88, <16 x float> %89, <16 x float> %89)
  store <16 x float> %90, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %91 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %92 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %90, <16 x float> %91, <16 x float> %91)
  store <16 x float> %92, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %93 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %94 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %92, <16 x float> %93, <16 x float> %93)
  store <16 x float> %94, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %95 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %96 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %94, <16 x float> %95, <16 x float> %95)
  store <16 x float> %96, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %97 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %98 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %96, <16 x float> %97, <16 x float> %97)
  store <16 x float> %98, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %99 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %100 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %98, <16 x float> %99, <16 x float> %99)
  store <16 x float> %100, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %101 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %102 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %100, <16 x float> %101, <16 x float> %101)
  store <16 x float> %102, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %103 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %104 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %102, <16 x float> %103, <16 x float> %103)
  store <16 x float> %104, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %105 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %106 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %104, <16 x float> %105, <16 x float> %105)
  store <16 x float> %106, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %107 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %108 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %106, <16 x float> %107, <16 x float> %107)
  store <16 x float> %108, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %109 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %110 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %108, <16 x float> %109, <16 x float> %109)
  store <16 x float> %110, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %111 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %112 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %110, <16 x float> %111, <16 x float> %111)
  store <16 x float> %112, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %113 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %114 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %112, <16 x float> %113, <16 x float> %113)
  store <16 x float> %114, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %115 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %116 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %114, <16 x float> %115, <16 x float> %115)
  store <16 x float> %116, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %117 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %118 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %116, <16 x float> %117, <16 x float> %117)
  store <16 x float> %118, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %119 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %120 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %118, <16 x float> %119, <16 x float> %119)
  store <16 x float> %120, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %121 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %122 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %120, <16 x float> %121, <16 x float> %121)
  store <16 x float> %122, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %123 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %124 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %122, <16 x float> %123, <16 x float> %123)
  store <16 x float> %124, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %125 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %126 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %124, <16 x float> %125, <16 x float> %125)
  store <16 x float> %126, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %127 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %128 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %126, <16 x float> %127, <16 x float> %127)
  store <16 x float> %128, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %129 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %130 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %128, <16 x float> %129, <16 x float> %129)
  store <16 x float> %130, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %131 = load <16 x float> addrspace(1)* %4, align 64, !tbaa !216
  %132 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %130, <16 x float> %131, <16 x float> %131)
  store <16 x float> %132, <16 x float> addrspace(1)* %3, align 64, !tbaa !216
  %133 = add nsw i32 %j.0504, 1
  %134 = icmp slt i32 %133, 128
  br i1 %134, label %5, label %135

; <label>:135                                     ; preds = %5
  ret void
}

define cc76 void @scalar_sp_add_priv_kernel() nounwind readnone {
  ret void
}

define cc76 void @scalar_sp_sub_priv_kernel() nounwind readnone {
  ret void
}

define cc76 void @scalar_sp_mul_priv_kernel() nounwind readnone {
  ret void
}

define cc76 void @scalar_sp_div_priv_kernel() nounwind readnone {
  ret void
}

define cc76 void @scalar_sp_mad_priv_kernel() nounwind readnone {
  ret void
}

define cc76 void @vect2_sp_add_priv_kernel() nounwind readnone {
  ret void
}

define cc76 void @vect2_sp_sub_priv_kernel() nounwind readnone {
  ret void
}

define cc76 void @vect2_sp_mul_priv_kernel() nounwind readnone {
  ret void
}

define cc76 void @vect2_sp_div_priv_kernel() nounwind readnone {
  ret void
}

define cc76 void @vect2_sp_mad_priv_kernel() nounwind readnone {
  ret void
}

define cc76 void @vect4_sp_add_priv_kernel() nounwind readnone {
  ret void
}

define cc76 void @vect4_sp_sub_priv_kernel() nounwind readnone {
  ret void
}

define cc76 void @vect4_sp_mul_priv_kernel() nounwind readnone {
  ret void
}

define cc76 void @vect4_sp_div_priv_kernel() nounwind readnone {
  ret void
}

define cc76 void @vect4_sp_mad_priv_kernel() nounwind readnone {
  ret void
}

define cc76 void @vect8_sp_add_priv_kernel() nounwind readnone {
  ret void
}

define cc76 void @vect8_sp_sub_priv_kernel() nounwind readnone {
  ret void
}

define cc76 void @vect8_sp_mul_priv_kernel() nounwind readnone {
  ret void
}

define cc76 void @vect8_sp_div_priv_kernel() nounwind readnone {
  ret void
}

define cc76 void @vect8_sp_mad_priv_kernel() nounwind readnone {
  ret void
}

define cc76 void @vect16_sp_add_priv_kernel() nounwind readnone {
  ret void
}

define cc76 void @vect16_sp_sub_priv_kernel() nounwind readnone {
  ret void
}

define cc76 void @vect16_sp_mul_priv_kernel() nounwind readnone {
  ret void
}

define cc76 void @vect16_sp_div_priv_kernel() nounwind readnone {
  ret void
}

define cc76 void @vect16_sp_mad_priv_kernel() nounwind readnone {
  ret void
}

define cc76 void @scalar_sp_add_priv_iter_8192_kernel() nounwind readnone {
  ret void
}

define cc76 void @scalar_sp_sub_priv_iter_8192_kernel() nounwind readnone {
  ret void
}

define cc76 void @scalar_sp_mul_priv_iter_8192_kernel() nounwind readnone {
  ret void
}

define cc76 void @scalar_sp_div_priv_iter_8192_kernel() nounwind readnone {
  ret void
}

define cc76 void @scalar_sp_mad_priv_iter_8192_kernel() nounwind readnone {
  ret void
}

define cc76 void @vect2_sp_add_priv_iter_8192_kernel() nounwind readnone {
  ret void
}

define cc76 void @vect2_sp_sub_priv_iter_8192_kernel() nounwind readnone {
  ret void
}

define cc76 void @vect2_sp_mul_priv_iter_8192_kernel() nounwind readnone {
  ret void
}

define cc76 void @vect2_sp_div_priv_iter_8192_kernel() nounwind readnone {
  ret void
}

define cc76 void @vect2_sp_mad_priv_iter_8192_kernel() nounwind readnone {
  ret void
}

define cc76 void @vect4_sp_add_priv_iter_8192_kernel() nounwind readnone {
  ret void
}

define cc76 void @vect4_sp_sub_priv_iter_8192_kernel() nounwind readnone {
  ret void
}

define cc76 void @vect4_sp_mul_priv_iter_8192_kernel() nounwind readnone {
  ret void
}

define cc76 void @vect4_sp_div_priv_iter_8192_kernel() nounwind readnone {
  ret void
}

define cc76 void @vect4_sp_mad_priv_iter_8192_kernel() nounwind readnone {
  ret void
}

define cc76 void @vect8_sp_add_priv_iter_8192_kernel() nounwind readnone {
  ret void
}

define cc76 void @vect8_sp_sub_priv_iter_8192_kernel() nounwind readnone {
  ret void
}

define cc76 void @vect8_sp_mul_priv_iter_8192_kernel() nounwind readnone {
  ret void
}

define cc76 void @vect8_sp_div_priv_iter_8192_kernel() nounwind readnone {
  ret void
}

define cc76 void @vect8_sp_mad_priv_iter_8192_kernel() nounwind readnone {
  ret void
}

define cc76 void @vect16_sp_add_priv_iter_8192_kernel() nounwind readnone {
  ret void
}

define cc76 void @vect16_sp_sub_priv_iter_8192_kernel() nounwind readnone {
  ret void
}

define cc76 void @vect16_sp_mul_priv_iter_8192_kernel() nounwind readnone {
  ret void
}

define cc76 void @vect16_sp_div_priv_iter_8192_kernel() nounwind readnone {
  ret void
}

define cc76 void @vect16_sp_mad_priv_iter_8192_kernel() nounwind readnone {
  ret void
}

define cc76 void @scalar_sp_add_priv_iter_8192_args_kernel(float %a) nounwind readnone {
  ret void
}

define cc76 void @scalar_sp_sub_priv_iter_8192_args_kernel(float %a) nounwind readnone {
  ret void
}

define cc76 void @scalar_sp_mul_priv_iter_8192_args_kernel(float %a) nounwind readnone {
  ret void
}

define cc76 void @scalar_sp_div_priv_iter_8192_args_kernel(float %a) nounwind readnone {
  ret void
}

define cc76 void @scalar_sp_mad_priv_iter_8192_args_kernel(float %a) nounwind readnone {
  ret void
}

define cc76 void @vect2_sp_add_priv_iter_8192_args_kernel(<2 x float> %a) nounwind readnone {
  ret void
}

define cc76 void @vect2_sp_sub_priv_iter_8192_args_kernel(<2 x float> %a) nounwind readnone {
  ret void
}

define cc76 void @vect2_sp_mul_priv_iter_8192_args_kernel(<2 x float> %a) nounwind readnone {
  ret void
}

define cc76 void @vect2_sp_div_priv_iter_8192_args_kernel(<2 x float> %a) nounwind readnone {
  ret void
}

define cc76 void @vect2_sp_mad_priv_iter_8192_args_kernel(<2 x float> %a) nounwind readnone {
  ret void
}

define cc76 void @vect4_sp_add_priv_iter_8192_args_kernel(<4 x float> %a) nounwind readnone {
  ret void
}

define cc76 void @vect4_sp_sub_priv_iter_8192_args_kernel(<4 x float> %a) nounwind readnone {
  ret void
}

define cc76 void @vect4_sp_mul_priv_iter_8192_args_kernel(<4 x float> %a) nounwind readnone {
  ret void
}

define cc76 void @vect4_sp_div_priv_iter_8192_args_kernel(<4 x float> %a) nounwind readnone {
  ret void
}

define cc76 void @vect4_sp_mad_priv_iter_8192_args_kernel(<4 x float> %a) nounwind readnone {
  ret void
}

define cc76 void @vect8_sp_add_priv_iter_8192_args_kernel(<8 x float> %a) nounwind readnone {
  ret void
}

define cc76 void @vect8_sp_sub_priv_iter_8192_args_kernel(<8 x float> %a) nounwind readnone {
  ret void
}

define cc76 void @vect8_sp_mul_priv_iter_8192_args_kernel(<8 x float> %a) nounwind readnone {
  ret void
}

define cc76 void @vect8_sp_div_priv_iter_8192_args_kernel(<8 x float> %a) nounwind readnone {
  ret void
}

define cc76 void @vect8_sp_mad_priv_iter_8192_args_kernel(<8 x float> %a) nounwind readnone {
  ret void
}

define cc76 void @vect16_sp_add_priv_iter_8192_args_kernel(<16 x float> %a) nounwind readnone {
  ret void
}

define cc76 void @vect16_sp_sub_priv_iter_8192_args_kernel(<16 x float> %a) nounwind readnone {
  ret void
}

define cc76 void @vect16_sp_mul_priv_iter_8192_args_kernel(<16 x float> %a) nounwind readnone {
  ret void
}

define cc76 void @vect16_sp_div_priv_iter_8192_args_kernel(<16 x float> %a) nounwind readnone {
  ret void
}

define cc76 void @vect16_sp_mad_priv_iter_8192_args_kernel(<16 x float> %a) nounwind readnone {
  ret void
}

!opencl.kernels = !{!0, !7, !8, !9, !10, !11, !15, !16, !17, !18, !19, !23, !24, !25, !26, !27, !31, !32, !33, !34, !35, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !181, !182, !183, !184, !185, !188, !189, !190, !191, !192, !195, !196, !197, !198, !199, !202, !203, !204, !205, !206, !209, !210, !211, !212}
!opencl.enable.FP_CONTRACT = !{}
!opencl.spir.version = !{!213}
!opencl.ocl.version = !{!213}
!opencl.used.extensions = !{!214}
!opencl.used.optional.core.features = !{!214}
!opencl.compiler.options = !{!214}

!0 = metadata !{void (float addrspace(1)*, float addrspace(1)*)* @scalar_sp_add_kernel, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"float*", metadata !"float*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_base_type", metadata !"float*", metadata !"float*"}
!6 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b"}
!7 = metadata !{void (float addrspace(1)*, float addrspace(1)*)* @scalar_sp_sub_kernel, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!8 = metadata !{void (float addrspace(1)*, float addrspace(1)*)* @scalar_sp_mul_kernel, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!9 = metadata !{void (float addrspace(1)*, float addrspace(1)*)* @scalar_sp_div_kernel, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!10 = metadata !{void (float addrspace(1)*, float addrspace(1)*)* @scalar_sp_mad_kernel, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!11 = metadata !{void (<2 x float> addrspace(1)*, <2 x float> addrspace(1)*)* @vect2_sp_add_kernel, metadata !1, metadata !2, metadata !12, metadata !4, metadata !13, metadata !6, metadata !14}
!12 = metadata !{metadata !"kernel_arg_type", metadata !"float2*", metadata !"float2*"}
!13 = metadata !{metadata !"kernel_arg_base_type", metadata !"float2*", metadata !"float2*"}
!14 = metadata !{metadata !"vec_type_hint", <2 x float> undef, i32 1}
!15 = metadata !{void (<2 x float> addrspace(1)*, <2 x float> addrspace(1)*)* @vect2_sp_sub_kernel, metadata !1, metadata !2, metadata !12, metadata !4, metadata !13, metadata !6, metadata !14}
!16 = metadata !{void (<2 x float> addrspace(1)*, <2 x float> addrspace(1)*)* @vect2_sp_mul_kernel, metadata !1, metadata !2, metadata !12, metadata !4, metadata !13, metadata !6, metadata !14}
!17 = metadata !{void (<2 x float> addrspace(1)*, <2 x float> addrspace(1)*)* @vect2_sp_div_kernel, metadata !1, metadata !2, metadata !12, metadata !4, metadata !13, metadata !6, metadata !14}
!18 = metadata !{void (<2 x float> addrspace(1)*, <2 x float> addrspace(1)*)* @vect2_sp_mad_kernel, metadata !1, metadata !2, metadata !12, metadata !4, metadata !13, metadata !6, metadata !14}
!19 = metadata !{void (<4 x float> addrspace(1)*, <4 x float> addrspace(1)*)* @vect4_sp_add_kernel, metadata !1, metadata !2, metadata !20, metadata !4, metadata !21, metadata !6, metadata !22}
!20 = metadata !{metadata !"kernel_arg_type", metadata !"float4*", metadata !"float4*"}
!21 = metadata !{metadata !"kernel_arg_base_type", metadata !"float4*", metadata !"float4*"}
!22 = metadata !{metadata !"vec_type_hint", <4 x float> undef, i32 1}
!23 = metadata !{void (<4 x float> addrspace(1)*, <4 x float> addrspace(1)*)* @vect4_sp_sub_kernel, metadata !1, metadata !2, metadata !20, metadata !4, metadata !21, metadata !6, metadata !22}
!24 = metadata !{void (<4 x float> addrspace(1)*, <4 x float> addrspace(1)*)* @vect4_sp_mul_kernel, metadata !1, metadata !2, metadata !20, metadata !4, metadata !21, metadata !6, metadata !22}
!25 = metadata !{void (<4 x float> addrspace(1)*, <4 x float> addrspace(1)*)* @vect4_sp_div_kernel, metadata !1, metadata !2, metadata !20, metadata !4, metadata !21, metadata !6, metadata !22}
!26 = metadata !{void (<4 x float> addrspace(1)*, <4 x float> addrspace(1)*)* @vect4_sp_mad_kernel, metadata !1, metadata !2, metadata !20, metadata !4, metadata !21, metadata !6, metadata !22}
!27 = metadata !{void (<8 x float> addrspace(1)*, <8 x float> addrspace(1)*)* @vect8_sp_add_kernel, metadata !1, metadata !2, metadata !28, metadata !4, metadata !29, metadata !6, metadata !30}
!28 = metadata !{metadata !"kernel_arg_type", metadata !"float8*", metadata !"float8*"}
!29 = metadata !{metadata !"kernel_arg_base_type", metadata !"float8*", metadata !"float8*"}
!30 = metadata !{metadata !"vec_type_hint", <8 x float> undef, i32 1}
!31 = metadata !{void (<8 x float> addrspace(1)*, <8 x float> addrspace(1)*)* @vect8_sp_sub_kernel, metadata !1, metadata !2, metadata !28, metadata !4, metadata !29, metadata !6, metadata !30}
!32 = metadata !{void (<8 x float> addrspace(1)*, <8 x float> addrspace(1)*)* @vect8_sp_mul_kernel, metadata !1, metadata !2, metadata !28, metadata !4, metadata !29, metadata !6, metadata !30}
!33 = metadata !{void (<8 x float> addrspace(1)*, <8 x float> addrspace(1)*)* @vect8_sp_div_kernel, metadata !1, metadata !2, metadata !28, metadata !4, metadata !29, metadata !6, metadata !30}
!34 = metadata !{void (<8 x float> addrspace(1)*, <8 x float> addrspace(1)*)* @vect8_sp_mad_kernel, metadata !1, metadata !2, metadata !28, metadata !4, metadata !29, metadata !6, metadata !30}
!35 = metadata !{void (<16 x float> addrspace(1)*, <16 x float> addrspace(1)*)* @vect16_sp_add_kernel, metadata !1, metadata !2, metadata !36, metadata !4, metadata !37, metadata !6, metadata !38}
!36 = metadata !{metadata !"kernel_arg_type", metadata !"float16*", metadata !"float16*"}
!37 = metadata !{metadata !"kernel_arg_base_type", metadata !"float16*", metadata !"float16*"}
!38 = metadata !{metadata !"vec_type_hint", <16 x float> undef, i32 1}
!39 = metadata !{void (<16 x float> addrspace(1)*, <16 x float> addrspace(1)*)* @vect16_sp_sub_kernel, metadata !1, metadata !2, metadata !36, metadata !4, metadata !37, metadata !6, metadata !38}
!40 = metadata !{void (<16 x float> addrspace(1)*, <16 x float> addrspace(1)*)* @vect16_sp_mul_kernel, metadata !1, metadata !2, metadata !36, metadata !4, metadata !37, metadata !6, metadata !38}
!41 = metadata !{void (<16 x float> addrspace(1)*, <16 x float> addrspace(1)*)* @vect16_sp_div_kernel, metadata !1, metadata !2, metadata !36, metadata !4, metadata !37, metadata !6, metadata !38}
!42 = metadata !{void (<16 x float> addrspace(1)*, <16 x float> addrspace(1)*)* @vect16_sp_mad_kernel, metadata !1, metadata !2, metadata !36, metadata !4, metadata !37, metadata !6, metadata !38}
!43 = metadata !{void (float addrspace(1)*, float addrspace(1)*)* @scalar_sp_add_iter_8192_kernel, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!44 = metadata !{void (float addrspace(1)*, float addrspace(1)*)* @scalar_sp_sub_iter_8192_kernel, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!45 = metadata !{void (float addrspace(1)*, float addrspace(1)*)* @scalar_sp_mul_iter_8192_kernel, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!46 = metadata !{void (float addrspace(1)*, float addrspace(1)*)* @scalar_sp_div_iter_8192_kernel, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!47 = metadata !{void (float addrspace(1)*, float addrspace(1)*)* @scalar_sp_mad_iter_8192_kernel, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!48 = metadata !{void (<2 x float> addrspace(1)*, <2 x float> addrspace(1)*)* @vect2_sp_add_iter_8192_kernel, metadata !1, metadata !2, metadata !12, metadata !4, metadata !13, metadata !6, metadata !14}
!49 = metadata !{void (<2 x float> addrspace(1)*, <2 x float> addrspace(1)*)* @vect2_sp_sub_iter_8192_kernel, metadata !1, metadata !2, metadata !12, metadata !4, metadata !13, metadata !6, metadata !14}
!50 = metadata !{void (<2 x float> addrspace(1)*, <2 x float> addrspace(1)*)* @vect2_sp_mul_iter_8192_kernel, metadata !1, metadata !2, metadata !12, metadata !4, metadata !13, metadata !6, metadata !14}
!51 = metadata !{void (<2 x float> addrspace(1)*, <2 x float> addrspace(1)*)* @vect2_sp_div_iter_8192_kernel, metadata !1, metadata !2, metadata !12, metadata !4, metadata !13, metadata !6, metadata !14}
!52 = metadata !{void (<2 x float> addrspace(1)*, <2 x float> addrspace(1)*)* @vect2_sp_mad_iter_8192_kernel, metadata !1, metadata !2, metadata !12, metadata !4, metadata !13, metadata !6, metadata !14}
!53 = metadata !{void (<4 x float> addrspace(1)*, <4 x float> addrspace(1)*)* @vect4_sp_add_iter_8192_kernel, metadata !1, metadata !2, metadata !20, metadata !4, metadata !21, metadata !6, metadata !22}
!54 = metadata !{void (<4 x float> addrspace(1)*, <4 x float> addrspace(1)*)* @vect4_sp_sub_iter_8192_kernel, metadata !1, metadata !2, metadata !20, metadata !4, metadata !21, metadata !6, metadata !22}
!55 = metadata !{void (<4 x float> addrspace(1)*, <4 x float> addrspace(1)*)* @vect4_sp_mul_iter_8192_kernel, metadata !1, metadata !2, metadata !20, metadata !4, metadata !21, metadata !6, metadata !22}
!56 = metadata !{void (<4 x float> addrspace(1)*, <4 x float> addrspace(1)*)* @vect4_sp_div_iter_8192_kernel, metadata !1, metadata !2, metadata !20, metadata !4, metadata !21, metadata !6, metadata !22}
!57 = metadata !{void (<4 x float> addrspace(1)*, <4 x float> addrspace(1)*)* @vect4_sp_mad_iter_8192_kernel, metadata !1, metadata !2, metadata !20, metadata !4, metadata !21, metadata !6, metadata !22}
!58 = metadata !{void (<8 x float> addrspace(1)*, <8 x float> addrspace(1)*)* @vect8_sp_add_iter_8192_kernel, metadata !1, metadata !2, metadata !28, metadata !4, metadata !29, metadata !6, metadata !30}
!59 = metadata !{void (<8 x float> addrspace(1)*, <8 x float> addrspace(1)*)* @vect8_sp_sub_iter_8192_kernel, metadata !1, metadata !2, metadata !28, metadata !4, metadata !29, metadata !6, metadata !30}
!60 = metadata !{void (<8 x float> addrspace(1)*, <8 x float> addrspace(1)*)* @vect8_sp_mul_iter_8192_kernel, metadata !1, metadata !2, metadata !28, metadata !4, metadata !29, metadata !6, metadata !30}
!61 = metadata !{void (<8 x float> addrspace(1)*, <8 x float> addrspace(1)*)* @vect8_sp_div_iter_8192_kernel, metadata !1, metadata !2, metadata !28, metadata !4, metadata !29, metadata !6, metadata !30}
!62 = metadata !{void (<8 x float> addrspace(1)*, <8 x float> addrspace(1)*)* @vect8_sp_mad_iter_8192_kernel, metadata !1, metadata !2, metadata !28, metadata !4, metadata !29, metadata !6, metadata !30}
!63 = metadata !{void (<16 x float> addrspace(1)*, <16 x float> addrspace(1)*)* @vect16_sp_add_iter_8192_kernel, metadata !1, metadata !2, metadata !36, metadata !4, metadata !37, metadata !6, metadata !38}
!64 = metadata !{void (<16 x float> addrspace(1)*, <16 x float> addrspace(1)*)* @vect16_sp_sub_iter_8192_kernel, metadata !1, metadata !2, metadata !36, metadata !4, metadata !37, metadata !6, metadata !38}
!65 = metadata !{void (<16 x float> addrspace(1)*, <16 x float> addrspace(1)*)* @vect16_sp_mul_iter_8192_kernel, metadata !1, metadata !2, metadata !36, metadata !4, metadata !37, metadata !6, metadata !38}
!66 = metadata !{void (<16 x float> addrspace(1)*, <16 x float> addrspace(1)*)* @vect16_sp_div_iter_8192_kernel, metadata !1, metadata !2, metadata !36, metadata !4, metadata !37, metadata !6, metadata !38}
!67 = metadata !{void (<16 x float> addrspace(1)*, <16 x float> addrspace(1)*)* @vect16_sp_mad_iter_8192_kernel, metadata !1, metadata !2, metadata !36, metadata !4, metadata !37, metadata !6, metadata !38}
!68 = metadata !{void (float addrspace(1)*, float addrspace(1)*)* @scalar_sp_add_iter_1024_kernel, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!69 = metadata !{void (float addrspace(1)*, float addrspace(1)*)* @scalar_sp_sub_iter_1024_kernel, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!70 = metadata !{void (float addrspace(1)*, float addrspace(1)*)* @scalar_sp_mul_iter_1024_kernel, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!71 = metadata !{void (float addrspace(1)*, float addrspace(1)*)* @scalar_sp_div_iter_1024_kernel, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!72 = metadata !{void (float addrspace(1)*, float addrspace(1)*)* @scalar_sp_mad_iter_1024_kernel, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!73 = metadata !{void (<2 x float> addrspace(1)*, <2 x float> addrspace(1)*)* @vect2_sp_add_iter_1024_kernel, metadata !1, metadata !2, metadata !12, metadata !4, metadata !13, metadata !6, metadata !14}
!74 = metadata !{void (<2 x float> addrspace(1)*, <2 x float> addrspace(1)*)* @vect2_sp_sub_iter_1024_kernel, metadata !1, metadata !2, metadata !12, metadata !4, metadata !13, metadata !6, metadata !14}
!75 = metadata !{void (<2 x float> addrspace(1)*, <2 x float> addrspace(1)*)* @vect2_sp_mul_iter_1024_kernel, metadata !1, metadata !2, metadata !12, metadata !4, metadata !13, metadata !6, metadata !14}
!76 = metadata !{void (<2 x float> addrspace(1)*, <2 x float> addrspace(1)*)* @vect2_sp_div_iter_1024_kernel, metadata !1, metadata !2, metadata !12, metadata !4, metadata !13, metadata !6, metadata !14}
!77 = metadata !{void (<2 x float> addrspace(1)*, <2 x float> addrspace(1)*)* @vect2_sp_mad_iter_1024_kernel, metadata !1, metadata !2, metadata !12, metadata !4, metadata !13, metadata !6, metadata !14}
!78 = metadata !{void (<4 x float> addrspace(1)*, <4 x float> addrspace(1)*)* @vect4_sp_add_iter_1024_kernel, metadata !1, metadata !2, metadata !20, metadata !4, metadata !21, metadata !6, metadata !22}
!79 = metadata !{void (<4 x float> addrspace(1)*, <4 x float> addrspace(1)*)* @vect4_sp_sub_iter_1024_kernel, metadata !1, metadata !2, metadata !20, metadata !4, metadata !21, metadata !6, metadata !22}
!80 = metadata !{void (<4 x float> addrspace(1)*, <4 x float> addrspace(1)*)* @vect4_sp_mul_iter_1024_kernel, metadata !1, metadata !2, metadata !20, metadata !4, metadata !21, metadata !6, metadata !22}
!81 = metadata !{void (<4 x float> addrspace(1)*, <4 x float> addrspace(1)*)* @vect4_sp_div_iter_1024_kernel, metadata !1, metadata !2, metadata !20, metadata !4, metadata !21, metadata !6, metadata !22}
!82 = metadata !{void (<4 x float> addrspace(1)*, <4 x float> addrspace(1)*)* @vect4_sp_mad_iter_1024_kernel, metadata !1, metadata !2, metadata !20, metadata !4, metadata !21, metadata !6, metadata !22}
!83 = metadata !{void (<8 x float> addrspace(1)*, <8 x float> addrspace(1)*)* @vect8_sp_add_iter_1024_kernel, metadata !1, metadata !2, metadata !28, metadata !4, metadata !29, metadata !6, metadata !30}
!84 = metadata !{void (<8 x float> addrspace(1)*, <8 x float> addrspace(1)*)* @vect8_sp_sub_iter_1024_kernel, metadata !1, metadata !2, metadata !28, metadata !4, metadata !29, metadata !6, metadata !30}
!85 = metadata !{void (<8 x float> addrspace(1)*, <8 x float> addrspace(1)*)* @vect8_sp_mul_iter_1024_kernel, metadata !1, metadata !2, metadata !28, metadata !4, metadata !29, metadata !6, metadata !30}
!86 = metadata !{void (<8 x float> addrspace(1)*, <8 x float> addrspace(1)*)* @vect8_sp_div_iter_1024_kernel, metadata !1, metadata !2, metadata !28, metadata !4, metadata !29, metadata !6, metadata !30}
!87 = metadata !{void (<8 x float> addrspace(1)*, <8 x float> addrspace(1)*)* @vect8_sp_mad_iter_1024_kernel, metadata !1, metadata !2, metadata !28, metadata !4, metadata !29, metadata !6, metadata !30}
!88 = metadata !{void (<16 x float> addrspace(1)*, <16 x float> addrspace(1)*)* @vect16_sp_add_iter_1024_kernel, metadata !1, metadata !2, metadata !36, metadata !4, metadata !37, metadata !6, metadata !38}
!89 = metadata !{void (<16 x float> addrspace(1)*, <16 x float> addrspace(1)*)* @vect16_sp_sub_iter_1024_kernel, metadata !1, metadata !2, metadata !36, metadata !4, metadata !37, metadata !6, metadata !38}
!90 = metadata !{void (<16 x float> addrspace(1)*, <16 x float> addrspace(1)*)* @vect16_sp_mul_iter_1024_kernel, metadata !1, metadata !2, metadata !36, metadata !4, metadata !37, metadata !6, metadata !38}
!91 = metadata !{void (<16 x float> addrspace(1)*, <16 x float> addrspace(1)*)* @vect16_sp_div_iter_1024_kernel, metadata !1, metadata !2, metadata !36, metadata !4, metadata !37, metadata !6, metadata !38}
!92 = metadata !{void (<16 x float> addrspace(1)*, <16 x float> addrspace(1)*)* @vect16_sp_mad_iter_1024_kernel, metadata !1, metadata !2, metadata !36, metadata !4, metadata !37, metadata !6, metadata !38}
!93 = metadata !{void (float addrspace(1)*, float addrspace(1)*)* @scalar_sp_add_iter_128_unroll_64_kernel, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!94 = metadata !{void (float addrspace(1)*, float addrspace(1)*)* @scalar_sp_sub_iter_128_unroll_64_kernel, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!95 = metadata !{void (float addrspace(1)*, float addrspace(1)*)* @scalar_sp_mul_iter_128_unroll_64_kernel, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!96 = metadata !{void (float addrspace(1)*, float addrspace(1)*)* @scalar_sp_div_iter_128_unroll_64_kernel, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!97 = metadata !{void (float addrspace(1)*, float addrspace(1)*)* @scalar_sp_mad_iter_128_unroll_64_kernel, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!98 = metadata !{void (<2 x float> addrspace(1)*, <2 x float> addrspace(1)*)* @vect2_sp_add_iter_128_unroll_64_kernel, metadata !1, metadata !2, metadata !12, metadata !4, metadata !13, metadata !6}
!99 = metadata !{void (<2 x float> addrspace(1)*, <2 x float> addrspace(1)*)* @vect2_sp_sub_iter_128_unroll_64_kernel, metadata !1, metadata !2, metadata !12, metadata !4, metadata !13, metadata !6}
!100 = metadata !{void (<2 x float> addrspace(1)*, <2 x float> addrspace(1)*)* @vect2_sp_mul_iter_128_unroll_64_kernel, metadata !1, metadata !2, metadata !12, metadata !4, metadata !13, metadata !6}
!101 = metadata !{void (<2 x float> addrspace(1)*, <2 x float> addrspace(1)*)* @vect2_sp_div_iter_128_unroll_64_kernel, metadata !1, metadata !2, metadata !12, metadata !4, metadata !13, metadata !6}
!102 = metadata !{void (<2 x float> addrspace(1)*, <2 x float> addrspace(1)*)* @vect2_sp_mad_iter_128_unroll_64_kernel, metadata !1, metadata !2, metadata !12, metadata !4, metadata !13, metadata !6}
!103 = metadata !{void (<4 x float> addrspace(1)*, <4 x float> addrspace(1)*)* @vect4_sp_add_iter_128_unroll_64_kernel, metadata !1, metadata !2, metadata !20, metadata !4, metadata !21, metadata !6}
!104 = metadata !{void (<4 x float> addrspace(1)*, <4 x float> addrspace(1)*)* @vect4_sp_sub_iter_128_unroll_64_kernel, metadata !1, metadata !2, metadata !20, metadata !4, metadata !21, metadata !6}
!105 = metadata !{void (<4 x float> addrspace(1)*, <4 x float> addrspace(1)*)* @vect4_sp_mul_iter_128_unroll_64_kernel, metadata !1, metadata !2, metadata !20, metadata !4, metadata !21, metadata !6}
!106 = metadata !{void (<4 x float> addrspace(1)*, <4 x float> addrspace(1)*)* @vect4_sp_div_iter_128_unroll_64_kernel, metadata !1, metadata !2, metadata !20, metadata !4, metadata !21, metadata !6}
!107 = metadata !{void (<4 x float> addrspace(1)*, <4 x float> addrspace(1)*)* @vect4_sp_mad_iter_128_unroll_64_kernel, metadata !1, metadata !2, metadata !20, metadata !4, metadata !21, metadata !6}
!108 = metadata !{void (<8 x float> addrspace(1)*, <8 x float> addrspace(1)*)* @vect8_sp_add_iter_128_unroll_64_kernel, metadata !1, metadata !2, metadata !28, metadata !4, metadata !29, metadata !6}
!109 = metadata !{void (<8 x float> addrspace(1)*, <8 x float> addrspace(1)*)* @vect8_sp_sub_iter_128_unroll_64_kernel, metadata !1, metadata !2, metadata !28, metadata !4, metadata !29, metadata !6}
!110 = metadata !{void (<8 x float> addrspace(1)*, <8 x float> addrspace(1)*)* @vect8_sp_mul_iter_128_unroll_64_kernel, metadata !1, metadata !2, metadata !28, metadata !4, metadata !29, metadata !6}
!111 = metadata !{void (<8 x float> addrspace(1)*, <8 x float> addrspace(1)*)* @vect8_sp_div_iter_128_unroll_64_kernel, metadata !1, metadata !2, metadata !28, metadata !4, metadata !29, metadata !6}
!112 = metadata !{void (<8 x float> addrspace(1)*, <8 x float> addrspace(1)*)* @vect8_sp_mad_iter_128_unroll_64_kernel, metadata !1, metadata !2, metadata !28, metadata !4, metadata !29, metadata !6}
!113 = metadata !{void (<16 x float> addrspace(1)*, <16 x float> addrspace(1)*)* @vect16_sp_add_iter_128_unroll_64_kernel, metadata !1, metadata !2, metadata !36, metadata !4, metadata !37, metadata !6}
!114 = metadata !{void (<16 x float> addrspace(1)*, <16 x float> addrspace(1)*)* @vect16_sp_sub_iter_128_unroll_64_kernel, metadata !1, metadata !2, metadata !36, metadata !4, metadata !37, metadata !6}
!115 = metadata !{void (<16 x float> addrspace(1)*, <16 x float> addrspace(1)*)* @vect16_sp_mul_iter_128_unroll_64_kernel, metadata !1, metadata !2, metadata !36, metadata !4, metadata !37, metadata !6}
!116 = metadata !{void (<16 x float> addrspace(1)*, <16 x float> addrspace(1)*)* @vect16_sp_div_iter_128_unroll_64_kernel, metadata !1, metadata !2, metadata !36, metadata !4, metadata !37, metadata !6}
!117 = metadata !{void (<16 x float> addrspace(1)*, <16 x float> addrspace(1)*)* @vect16_sp_mad_iter_128_unroll_64_kernel, metadata !1, metadata !2, metadata !36, metadata !4, metadata !37, metadata !6}
!118 = metadata !{void ()* @scalar_sp_add_priv_kernel, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124}
!119 = metadata !{metadata !"kernel_arg_addr_space"}
!120 = metadata !{metadata !"kernel_arg_access_qual"}
!121 = metadata !{metadata !"kernel_arg_type"}
!122 = metadata !{metadata !"kernel_arg_type_qual"}
!123 = metadata !{metadata !"kernel_arg_base_type"}
!124 = metadata !{metadata !"kernel_arg_name"}
!125 = metadata !{void ()* @scalar_sp_sub_priv_kernel, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124}
!126 = metadata !{void ()* @scalar_sp_mul_priv_kernel, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124}
!127 = metadata !{void ()* @scalar_sp_div_priv_kernel, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124}
!128 = metadata !{void ()* @scalar_sp_mad_priv_kernel, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124}
!129 = metadata !{void ()* @vect2_sp_add_priv_kernel, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124}
!130 = metadata !{void ()* @vect2_sp_sub_priv_kernel, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124}
!131 = metadata !{void ()* @vect2_sp_mul_priv_kernel, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124}
!132 = metadata !{void ()* @vect2_sp_div_priv_kernel, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124}
!133 = metadata !{void ()* @vect2_sp_mad_priv_kernel, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124}
!134 = metadata !{void ()* @vect4_sp_add_priv_kernel, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124}
!135 = metadata !{void ()* @vect4_sp_sub_priv_kernel, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124}
!136 = metadata !{void ()* @vect4_sp_mul_priv_kernel, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124}
!137 = metadata !{void ()* @vect4_sp_div_priv_kernel, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124}
!138 = metadata !{void ()* @vect4_sp_mad_priv_kernel, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124}
!139 = metadata !{void ()* @vect8_sp_add_priv_kernel, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124}
!140 = metadata !{void ()* @vect8_sp_sub_priv_kernel, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124}
!141 = metadata !{void ()* @vect8_sp_mul_priv_kernel, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124}
!142 = metadata !{void ()* @vect8_sp_div_priv_kernel, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124}
!143 = metadata !{void ()* @vect8_sp_mad_priv_kernel, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124}
!144 = metadata !{void ()* @vect16_sp_add_priv_kernel, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124}
!145 = metadata !{void ()* @vect16_sp_sub_priv_kernel, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124}
!146 = metadata !{void ()* @vect16_sp_mul_priv_kernel, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124}
!147 = metadata !{void ()* @vect16_sp_div_priv_kernel, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124}
!148 = metadata !{void ()* @vect16_sp_mad_priv_kernel, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124}
!149 = metadata !{void ()* @scalar_sp_add_priv_iter_8192_kernel, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124}
!150 = metadata !{void ()* @scalar_sp_sub_priv_iter_8192_kernel, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124}
!151 = metadata !{void ()* @scalar_sp_mul_priv_iter_8192_kernel, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124}
!152 = metadata !{void ()* @scalar_sp_div_priv_iter_8192_kernel, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124}
!153 = metadata !{void ()* @scalar_sp_mad_priv_iter_8192_kernel, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124}
!154 = metadata !{void ()* @vect2_sp_add_priv_iter_8192_kernel, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124}
!155 = metadata !{void ()* @vect2_sp_sub_priv_iter_8192_kernel, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124}
!156 = metadata !{void ()* @vect2_sp_mul_priv_iter_8192_kernel, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124}
!157 = metadata !{void ()* @vect2_sp_div_priv_iter_8192_kernel, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124}
!158 = metadata !{void ()* @vect2_sp_mad_priv_iter_8192_kernel, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124}
!159 = metadata !{void ()* @vect4_sp_add_priv_iter_8192_kernel, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124}
!160 = metadata !{void ()* @vect4_sp_sub_priv_iter_8192_kernel, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124}
!161 = metadata !{void ()* @vect4_sp_mul_priv_iter_8192_kernel, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124}
!162 = metadata !{void ()* @vect4_sp_div_priv_iter_8192_kernel, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124}
!163 = metadata !{void ()* @vect4_sp_mad_priv_iter_8192_kernel, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124}
!164 = metadata !{void ()* @vect8_sp_add_priv_iter_8192_kernel, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124}
!165 = metadata !{void ()* @vect8_sp_sub_priv_iter_8192_kernel, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124}
!166 = metadata !{void ()* @vect8_sp_mul_priv_iter_8192_kernel, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124}
!167 = metadata !{void ()* @vect8_sp_div_priv_iter_8192_kernel, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124}
!168 = metadata !{void ()* @vect8_sp_mad_priv_iter_8192_kernel, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124}
!169 = metadata !{void ()* @vect16_sp_add_priv_iter_8192_kernel, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124}
!170 = metadata !{void ()* @vect16_sp_sub_priv_iter_8192_kernel, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124}
!171 = metadata !{void ()* @vect16_sp_mul_priv_iter_8192_kernel, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124}
!172 = metadata !{void ()* @vect16_sp_div_priv_iter_8192_kernel, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124}
!173 = metadata !{void ()* @vect16_sp_mad_priv_iter_8192_kernel, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124}
!174 = metadata !{void (float)* @scalar_sp_add_priv_iter_8192_args_kernel, metadata !175, metadata !176, metadata !177, metadata !178, metadata !179, metadata !180}
!175 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!176 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!177 = metadata !{metadata !"kernel_arg_type", metadata !"float"}
!178 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!179 = metadata !{metadata !"kernel_arg_base_type", metadata !"float"}
!180 = metadata !{metadata !"kernel_arg_name", metadata !"a"}
!181 = metadata !{void (float)* @scalar_sp_sub_priv_iter_8192_args_kernel, metadata !175, metadata !176, metadata !177, metadata !178, metadata !179, metadata !180}
!182 = metadata !{void (float)* @scalar_sp_mul_priv_iter_8192_args_kernel, metadata !175, metadata !176, metadata !177, metadata !178, metadata !179, metadata !180}
!183 = metadata !{void (float)* @scalar_sp_div_priv_iter_8192_args_kernel, metadata !175, metadata !176, metadata !177, metadata !178, metadata !179, metadata !180}
!184 = metadata !{void (float)* @scalar_sp_mad_priv_iter_8192_args_kernel, metadata !175, metadata !176, metadata !177, metadata !178, metadata !179, metadata !180}
!185 = metadata !{void (<2 x float>)* @vect2_sp_add_priv_iter_8192_args_kernel, metadata !175, metadata !176, metadata !186, metadata !178, metadata !187, metadata !180}
!186 = metadata !{metadata !"kernel_arg_type", metadata !"float2"}
!187 = metadata !{metadata !"kernel_arg_base_type", metadata !"float2"}
!188 = metadata !{void (<2 x float>)* @vect2_sp_sub_priv_iter_8192_args_kernel, metadata !175, metadata !176, metadata !186, metadata !178, metadata !187, metadata !180}
!189 = metadata !{void (<2 x float>)* @vect2_sp_mul_priv_iter_8192_args_kernel, metadata !175, metadata !176, metadata !186, metadata !178, metadata !187, metadata !180}
!190 = metadata !{void (<2 x float>)* @vect2_sp_div_priv_iter_8192_args_kernel, metadata !175, metadata !176, metadata !186, metadata !178, metadata !187, metadata !180}
!191 = metadata !{void (<2 x float>)* @vect2_sp_mad_priv_iter_8192_args_kernel, metadata !175, metadata !176, metadata !186, metadata !178, metadata !187, metadata !180}
!192 = metadata !{void (<4 x float>)* @vect4_sp_add_priv_iter_8192_args_kernel, metadata !175, metadata !176, metadata !193, metadata !178, metadata !194, metadata !180}
!193 = metadata !{metadata !"kernel_arg_type", metadata !"float4"}
!194 = metadata !{metadata !"kernel_arg_base_type", metadata !"float4"}
!195 = metadata !{void (<4 x float>)* @vect4_sp_sub_priv_iter_8192_args_kernel, metadata !175, metadata !176, metadata !193, metadata !178, metadata !194, metadata !180}
!196 = metadata !{void (<4 x float>)* @vect4_sp_mul_priv_iter_8192_args_kernel, metadata !175, metadata !176, metadata !193, metadata !178, metadata !194, metadata !180}
!197 = metadata !{void (<4 x float>)* @vect4_sp_div_priv_iter_8192_args_kernel, metadata !175, metadata !176, metadata !193, metadata !178, metadata !194, metadata !180}
!198 = metadata !{void (<4 x float>)* @vect4_sp_mad_priv_iter_8192_args_kernel, metadata !175, metadata !176, metadata !193, metadata !178, metadata !194, metadata !180}
!199 = metadata !{void (<8 x float>)* @vect8_sp_add_priv_iter_8192_args_kernel, metadata !175, metadata !176, metadata !200, metadata !178, metadata !201, metadata !180}
!200 = metadata !{metadata !"kernel_arg_type", metadata !"float8"}
!201 = metadata !{metadata !"kernel_arg_base_type", metadata !"float8"}
!202 = metadata !{void (<8 x float>)* @vect8_sp_sub_priv_iter_8192_args_kernel, metadata !175, metadata !176, metadata !200, metadata !178, metadata !201, metadata !180}
!203 = metadata !{void (<8 x float>)* @vect8_sp_mul_priv_iter_8192_args_kernel, metadata !175, metadata !176, metadata !200, metadata !178, metadata !201, metadata !180}
!204 = metadata !{void (<8 x float>)* @vect8_sp_div_priv_iter_8192_args_kernel, metadata !175, metadata !176, metadata !200, metadata !178, metadata !201, metadata !180}
!205 = metadata !{void (<8 x float>)* @vect8_sp_mad_priv_iter_8192_args_kernel, metadata !175, metadata !176, metadata !200, metadata !178, metadata !201, metadata !180}
!206 = metadata !{void (<16 x float>)* @vect16_sp_add_priv_iter_8192_args_kernel, metadata !175, metadata !176, metadata !207, metadata !178, metadata !208, metadata !180}
!207 = metadata !{metadata !"kernel_arg_type", metadata !"float16"}
!208 = metadata !{metadata !"kernel_arg_base_type", metadata !"float16"}
!209 = metadata !{void (<16 x float>)* @vect16_sp_sub_priv_iter_8192_args_kernel, metadata !175, metadata !176, metadata !207, metadata !178, metadata !208, metadata !180}
!210 = metadata !{void (<16 x float>)* @vect16_sp_mul_priv_iter_8192_args_kernel, metadata !175, metadata !176, metadata !207, metadata !178, metadata !208, metadata !180}
!211 = metadata !{void (<16 x float>)* @vect16_sp_div_priv_iter_8192_args_kernel, metadata !175, metadata !176, metadata !207, metadata !178, metadata !208, metadata !180}
!212 = metadata !{void (<16 x float>)* @vect16_sp_mad_priv_iter_8192_args_kernel, metadata !175, metadata !176, metadata !207, metadata !178, metadata !208, metadata !180}
!213 = metadata !{i32 1, i32 2}
!214 = metadata !{}
!215 = metadata !{metadata !"float", metadata !216}
!216 = metadata !{metadata !"omnipotent char", metadata !217}
!217 = metadata !{metadata !"Simple C/C++ TBAA"}
!218 = metadata !{float 2.500000e+00}
