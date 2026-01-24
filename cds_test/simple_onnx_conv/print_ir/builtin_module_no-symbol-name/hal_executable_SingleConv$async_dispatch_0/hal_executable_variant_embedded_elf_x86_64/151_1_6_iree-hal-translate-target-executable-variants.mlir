// -----// IR Dump After TranslateTargetExecutableVariantsPass (iree-hal-translate-target-executable-variants) //----- //
hal.executable.variant public @embedded_elf_x86_64 target(<"llvm-cpu", "embedded-elf-x86_64", {cpu = "alderlake", cpu_features = "+prfchw,-cldemote,+avx,+aes,+sahf,+pclmul,-xop,+crc32,-amx-fp8,+xsaves,-avx512fp16,-usermsr,-sm4,-egpr,+sse4.1,-avx10.1,-avx512ifma,+xsave,+sse4.2,-tsxldtrk,-sm3,-ptwrite,-widekl,-movrs,+invpcid,+64bit,+xsavec,-avx512vpopcntdq,+cmov,-avx512vp2intersect,-avx512cd,+movbe,-avxvnniint8,-ccmp,-amx-int8,-kl,-sha512,+avxvnni,-rtm,+adx,+avx2,-hreset,+movdiri,+serialize,+vpclmulqdq,-avx512vl,-uintr,-cf,+clflushopt,-raoint,-cmpccxadd,+bmi,-amx-tile,+sse,+gfni,-avxvnniint16,-amx-fp16,-zu,-ndd,+xsaveopt,+rdrnd,-avx512f,-amx-bf16,-avx512bf16,-avx512vnni,-push2pop2,+cx8,-avx512bw,+sse3,-pku,-nf,-amx-tf32,-amx-avx512,+fsgsbase,-clzero,-mwaitx,-lwp,+lzcnt,+sha,+movdir64b,-ppx,-wbnoinvd,-enqcmd,-avxneconvert,-tbm,-pconfig,-amx-complex,+ssse3,+cx16,-avx10.2,+bmi2,+fma,+popcnt,-avxifma,+f16c,-avx512bitalg,-rdpru,+clwb,+mmx,+sse2,+rdseed,-avx512vbmi2,-prefetchi,-amx-movrs,+rdpid,-fma4,-avx512vbmi,+shstk,+vaes,+waitpkg,-sgx,+fxsr,-avx512dq,-sse4a", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_triple = "x86_64-unknown-unknown-eabi-elf"}>) {
  hal.executable.export public @SingleConv$async_dispatch_0_conv_8x498x498x3x3x3_f32 ordinal(0) layout(#hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
    %c6889 = arith.constant 6889 : index
    %c1 = arith.constant 1 : index
    %c1_0 = arith.constant 1 : index
    hal.return %c6889, %c1, %c1_0 : index, index, index
  } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
  builtin.module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-unknown-eabi-elf"} {
    llvm.mlir.global private constant @__constant_8xf32(dense<[0.540064871, 1.66891348, -0.204370424, 0.173146293, -0.0351918153, -0.198536336, 0.0749602392, 0.360360771]> : tensor<8xf32>) {addr_space = 0 : i32, alignment = 64 : i64, sym_visibility = "private"} : !llvm.array<8 x f32>
    llvm.func @SingleConv$async_dispatch_0_conv_8x498x498x3x3x3_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
      %0 = llvm.mlir.constant(0 : i32) : i32
      %1 = llvm.mlir.poison : vector<6xf32>
      %2 = llvm.mlir.constant(0 : i64) : i64
      %3 = llvm.mlir.constant(498 : index) : i64
      %4 = llvm.mlir.constant(248004 : index) : i64
      %5 = llvm.mlir.constant(9 : index) : i64
      %6 = llvm.mlir.constant(27 : index) : i64
      %7 = llvm.mlir.constant(64 : index) : i64
      %8 = llvm.mlir.constant(true) : i1
      %9 = llvm.mlir.constant(500 : index) : i64
      %10 = llvm.mlir.constant(250000 : index) : i64
      %11 = llvm.mlir.addressof @__constant_8xf32 : !llvm.ptr
      %12 = llvm.mlir.constant(-1 : index) : i64
      %13 = llvm.mlir.constant(8 : index) : i64
      %14 = llvm.mlir.constant(1 : index) : i64
      %15 = llvm.mlir.constant(3 : index) : i64
      %16 = llvm.mlir.constant(6 : index) : i64
      %17 = llvm.mlir.constant(83 : index) : i64
      %18 = llvm.mlir.constant(dense<0.000000e+00> : vector<6xf32>) : vector<6xf32>
      %19 = llvm.mlir.constant(0 : index) : i64
      %20 = llvm.getelementptr %11[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<8 x f32>
      %21 = llvm.alloca %16 x f32 {alignment = 64 : i64} : (i64) -> !llvm.ptr
      %22 = llvm.alloca %16 x f32 {alignment = 64 : i64} : (i64) -> !llvm.ptr
      %23 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
      %24 = llvm.extractvalue %23[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
      %25 = llvm.load %24 : !llvm.ptr -> !llvm.ptr
      llvm.intr.assume %8 ["align"(%25, %7 : !llvm.ptr, i64)] : i1
      %26 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
      %27 = llvm.extractvalue %26[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
      %28 = llvm.getelementptr %27[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
      %29 = llvm.load %28 : !llvm.ptr -> !llvm.ptr
      llvm.intr.assume %8 ["align"(%29, %7 : !llvm.ptr, i64)] : i1
      %30 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
      %31 = llvm.extractvalue %30[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
      %32 = llvm.getelementptr %31[2] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
      %33 = llvm.load %32 : !llvm.ptr -> !llvm.ptr
      llvm.intr.assume %8 ["align"(%33, %7 : !llvm.ptr, i64)] : i1
      %34 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
      %35 = llvm.extractvalue %34[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
      %36 = llvm.zext %35 : i32 to i64
      %37 = llvm.sdiv %36, %17 : i64
      %38 = llvm.mul %37, %17 : i64
      %39 = llvm.icmp "ne" %36, %38 : i64
      %40 = llvm.icmp "slt" %36, %19 : i64
      %41 = llvm.and %39, %40 : i1
      %42 = llvm.add %37, %12 : i64
      %43 = llvm.select %41, %42, %37 : i1, i64
      %44 = llvm.srem %36, %17 : i64
      %45 = llvm.icmp "slt" %44, %19 : i64
      %46 = llvm.add %44, %17 overflow<nsw> : i64
      %47 = llvm.select %45, %46, %44 : i1, i64
      %48 = llvm.mul %43, %16 overflow<nsw> : i64
      %49 = llvm.mul %47, %16 overflow<nsw> : i64
      %50 = llvm.mul %19, %16 : i64
      %51 = llvm.add %50, %50 : i64
      %52 = llvm.add %51, %19 : i64
      %53 = llvm.getelementptr %22[%52] : (!llvm.ptr, i64) -> !llvm.ptr, f32
      llvm.store %18, %53 {alignment = 4 : i64} : vector<6xf32>, !llvm.ptr
      llvm.br ^bb1(%19 : i64)
    ^bb1(%54: i64):  // 2 preds: ^bb0, ^bb16
      %55 = llvm.icmp "slt" %54, %13 : i64
      llvm.cond_br %55, ^bb2, ^bb17
    ^bb2:  // pred: ^bb1
      %56 = llvm.getelementptr %20[%54] : (!llvm.ptr, i64) -> !llvm.ptr, f32
      %57 = llvm.load %56 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
      llvm.br ^bb3(%19 : i64)
    ^bb3(%58: i64):  // 2 preds: ^bb2, ^bb15
      %59 = llvm.icmp "slt" %58, %16 : i64
      llvm.cond_br %59, ^bb4(%19 : i64), ^bb16
    ^bb4(%60: i64):  // 2 preds: ^bb3, ^bb5
      %61 = llvm.icmp "slt" %60, %16 : i64
      llvm.cond_br %61, ^bb5, ^bb6(%19 : i64)
    ^bb5:  // pred: ^bb4
      %62 = llvm.mul %19, %16 overflow<nsw, nuw> : i64
      %63 = llvm.add %62, %62 overflow<nsw, nuw> : i64
      %64 = llvm.add %63, %60 overflow<nsw, nuw> : i64
      %65 = llvm.getelementptr inbounds|nuw %22[%64] : (!llvm.ptr, i64) -> !llvm.ptr, f32
      %66 = llvm.load %65 : !llvm.ptr -> f32
      %67 = llvm.getelementptr inbounds|nuw %21[%64] : (!llvm.ptr, i64) -> !llvm.ptr, f32
      llvm.store %66, %67 : f32, !llvm.ptr
      %68 = llvm.add %60, %14 : i64
      llvm.br ^bb4(%68 : i64)
    ^bb6(%69: i64):  // 2 preds: ^bb4, ^bb14
      %70 = llvm.icmp "slt" %69, %15 : i64
      llvm.cond_br %70, ^bb7(%19 : i64), ^bb15
    ^bb7(%71: i64):  // 2 preds: ^bb6, ^bb13
      %72 = llvm.icmp "slt" %71, %15 : i64
      llvm.cond_br %72, ^bb8, ^bb14
    ^bb8:  // pred: ^bb7
      %73 = llvm.add %71, %58 : i64
      %74 = llvm.add %73, %48 : i64
      llvm.br ^bb9(%19 : i64)
    ^bb9(%75: i64):  // 2 preds: ^bb8, ^bb12
      %76 = llvm.icmp "slt" %75, %16 : i64
      llvm.cond_br %76, ^bb10(%19 : i64), ^bb13
    ^bb10(%77: i64):  // 2 preds: ^bb9, ^bb11
      %78 = llvm.icmp "slt" %77, %15 : i64
      llvm.cond_br %78, ^bb11, ^bb12
    ^bb11:  // pred: ^bb10
      %79 = llvm.add %49, %75 : i64
      %80 = llvm.add %79, %77 : i64
      %81 = llvm.mul %69, %10 overflow<nsw, nuw> : i64
      %82 = llvm.mul %74, %9 overflow<nsw, nuw> : i64
      %83 = llvm.add %81, %82 overflow<nsw, nuw> : i64
      %84 = llvm.add %83, %80 overflow<nsw, nuw> : i64
      %85 = llvm.getelementptr inbounds|nuw %25[%84] : (!llvm.ptr, i64) -> !llvm.ptr, f32
      %86 = llvm.load %85 : !llvm.ptr -> f32
      %87 = llvm.mul %54, %6 overflow<nsw, nuw> : i64
      %88 = llvm.mul %69, %5 overflow<nsw, nuw> : i64
      %89 = llvm.add %87, %88 overflow<nsw, nuw> : i64
      %90 = llvm.mul %71, %15 overflow<nsw, nuw> : i64
      %91 = llvm.add %89, %90 overflow<nsw, nuw> : i64
      %92 = llvm.add %91, %77 overflow<nsw, nuw> : i64
      %93 = llvm.getelementptr inbounds|nuw %29[%92] : (!llvm.ptr, i64) -> !llvm.ptr, f32
      %94 = llvm.load %93 : !llvm.ptr -> f32
      %95 = llvm.mul %19, %16 overflow<nsw, nuw> : i64
      %96 = llvm.add %95, %95 overflow<nsw, nuw> : i64
      %97 = llvm.add %96, %75 overflow<nsw, nuw> : i64
      %98 = llvm.getelementptr inbounds|nuw %21[%97] : (!llvm.ptr, i64) -> !llvm.ptr, f32
      %99 = llvm.load %98 : !llvm.ptr -> f32
      %100 = llvm.fmul %86, %94 {fastmathFlags = #llvm.fastmath<contract>} : f32
      %101 = llvm.fadd %99, %100 {fastmathFlags = #llvm.fastmath<contract>} : f32
      llvm.store %101, %98 : f32, !llvm.ptr
      %102 = llvm.add %77, %14 : i64
      llvm.br ^bb10(%102 : i64)
    ^bb12:  // pred: ^bb10
      %103 = llvm.add %75, %14 : i64
      llvm.br ^bb9(%103 : i64)
    ^bb13:  // pred: ^bb9
      %104 = llvm.add %71, %14 : i64
      llvm.br ^bb7(%104 : i64)
    ^bb14:  // pred: ^bb7
      %105 = llvm.add %69, %14 : i64
      llvm.br ^bb6(%105 : i64)
    ^bb15:  // pred: ^bb6
      %106 = llvm.getelementptr %21[%52] : (!llvm.ptr, i64) -> !llvm.ptr, f32
      %107 = llvm.load %106 {alignment = 4 : i64} : !llvm.ptr -> vector<6xf32>
      %108 = llvm.extractelement %57[%2 : i64] : vector<1xf32>
      %109 = llvm.insertelement %108, %1[%0 : i32] : vector<6xf32>
      %110 = llvm.shufflevector %109, %1 [0, 0, 0, 0, 0, 0] : vector<6xf32> 
      %111 = llvm.fadd %107, %110 {fastmathFlags = #llvm.fastmath<contract>} : vector<6xf32>
      %112 = llvm.add %48, %58 : i64
      %113 = llvm.mul %54, %4 : i64
      %114 = llvm.mul %112, %3 : i64
      %115 = llvm.add %113, %114 : i64
      %116 = llvm.add %115, %49 : i64
      %117 = llvm.getelementptr %33[%116] : (!llvm.ptr, i64) -> !llvm.ptr, f32
      llvm.store %111, %117 {alignment = 4 : i64} : vector<6xf32>, !llvm.ptr
      %118 = llvm.add %58, %14 : i64
      llvm.br ^bb3(%118 : i64)
    ^bb16:  // pred: ^bb3
      %119 = llvm.add %54, %14 : i64
      llvm.br ^bb1(%119 : i64)
    ^bb17:  // pred: ^bb1
      llvm.return %0 : i32
    }
  }
}

