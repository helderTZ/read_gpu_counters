; ModuleID = '/tmp/qt_temp.jG8245'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024"
target triple = "spir64-unknown-unknown"

define cc76 void @vect2_sp_add_kernel(<2 x float> addrspace(1)* nocapture %a, <2 x float> addrspace(1)* nocapture %b) nounwind {
  %1 = tail call cc75 i64 @_Z13get_global_idj(i32 0) nounwind readnone
  %sext = shl i64 %1, 32
  %2 = ashr exact i64 %sext, 32
  %3 = getelementptr inbounds <2 x float> addrspace(1)* %a, i64 %2
  %4 = load <2 x float> addrspace(1)* %3, align 8, !tbaa !10
  %5 = getelementptr inbounds <2 x float> addrspace(1)* %b, i64 %2
  %6 = load <2 x float> addrspace(1)* %5, align 8, !tbaa !10
  %7 = fadd <2 x float> %4, %6
  store <2 x float> %7, <2 x float> addrspace(1)* %3, align 8, !tbaa !10
  ret void
}

declare cc75 i64 @_Z13get_global_idj(i32) nounwind readnone

!opencl.kernels = !{!0}
!opencl.enable.FP_CONTRACT = !{}
!opencl.spir.version = !{!8}
!opencl.ocl.version = !{!8}
!opencl.used.extensions = !{!9}
!opencl.used.optional.core.features = !{!9}
!opencl.compiler.options = !{!9}

!0 = metadata !{void (<2 x float> addrspace(1)*, <2 x float> addrspace(1)*)* @vect2_sp_add_kernel, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6, metadata !7}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"float2*", metadata !"float2*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_base_type", metadata !"float2*", metadata !"float2*"}
!6 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b"}
!7 = metadata !{metadata !"vec_type_hint", <2 x float> undef, i32 1}
!8 = metadata !{i32 1, i32 2}
!9 = metadata !{}
!10 = metadata !{metadata !"omnipotent char", metadata !11}
!11 = metadata !{metadata !"Simple C/C++ TBAA"}
