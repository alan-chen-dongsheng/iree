// -----// IR Dump After LowerAffinePass (lower-affine) //----- //
hal.executable.variant public @embedded_elf_x86_64 target(<"llvm-cpu", "embedded-elf-x86_64", {cpu = "alderlake", cpu_features = "+prfchw,-cldemote,+avx,+aes,+sahf,+pclmul,-xop,+crc32,-amx-fp8,+xsaves,-avx512fp16,-usermsr,-sm4,-egpr,+sse4.1,-avx10.1,-avx512ifma,+xsave,+sse4.2,-tsxldtrk,-sm3,-ptwrite,-widekl,-movrs,+invpcid,+64bit,+xsavec,-avx512vpopcntdq,+cmov,-avx512vp2intersect,-avx512cd,+movbe,-avxvnniint8,-ccmp,-amx-int8,-kl,-sha512,+avxvnni,-rtm,+adx,+avx2,-hreset,+movdiri,+serialize,+vpclmulqdq,-avx512vl,-uintr,-cf,+clflushopt,-raoint,-cmpccxadd,+bmi,-amx-tile,+sse,+gfni,-avxvnniint16,-amx-fp16,-zu,-ndd,+xsaveopt,+rdrnd,-avx512f,-amx-bf16,-avx512bf16,-avx512vnni,-push2pop2,+cx8,-avx512bw,+sse3,-pku,-nf,-amx-tf32,-amx-avx512,+fsgsbase,-clzero,-mwaitx,-lwp,+lzcnt,+sha,+movdir64b,-ppx,-wbnoinvd,-enqcmd,-avxneconvert,-tbm,-pconfig,-amx-complex,+ssse3,+cx16,-avx10.2,+bmi2,+fma,+popcnt,-avxifma,+f16c,-avx512bitalg,-rdpru,+clwb,+mmx,+sse2,+rdseed,-avx512vbmi2,-prefetchi,-amx-movrs,+rdpid,-fma4,-avx512vbmi,+shstk,+vaes,+waitpkg,-sgx,+fxsr,-avx512dq,-sse4a", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_triple = "x86_64-unknown-unknown-eabi-elf"}>) {
  hal.executable.export public @SingleConv$async_dispatch_0_conv_8x498x498x3x3x3_f32 ordinal(0) layout(#hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) count(%arg0: !hal.device) -> (index, index, index) {
    %c6889 = arith.constant 6889 : index
    %c1 = arith.constant 1 : index
    %c1_0 = arith.constant 1 : index
    hal.return %c6889, %c1, %c1_0 : index, index, index
  } attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
  builtin.module {
    func.func @SingleConv$async_dispatch_0_conv_8x498x498x3x3x3_f32() {
      %cst = arith.constant dense<0.000000e+00> : vector<6xf32>
      %c0 = arith.constant 0 : index
      %cst_0 = arith.constant dense<[0.540064871, 1.66891348, -0.204370424, 0.173146293, -0.0351918153, -0.198536336, 0.0749602392, 0.360360771]> : tensor<8xf32>
      %c6 = arith.constant 6 : index
      %c3 = arith.constant 3 : index
      %c1 = arith.constant 1 : index
      %c8 = arith.constant 8 : index
      %alloca = memref.alloca() {alignment = 64 : i64} : memref<1x1x6xf32>
      %alloca_1 = memref.alloca() {alignment = 64 : i64} : memref<1x1x6xf32>
      %0 = bufferization.to_buffer %cst_0 read_only : tensor<8xf32> to memref<8xf32>
      %1 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c0) flags("ReadOnly|Indirect") : memref<3x500x500xf32, #hal.descriptor_type<storage_buffer>>
      %assume_align = memref.assume_alignment %1, 64 : memref<3x500x500xf32, #hal.descriptor_type<storage_buffer>>
      %2 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c0) flags(ReadOnly) : memref<8x3x3x3xf32, #hal.descriptor_type<storage_buffer>>
      %assume_align_2 = memref.assume_alignment %2, 64 : memref<8x3x3x3xf32, #hal.descriptor_type<storage_buffer>>
      %3 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(2) alignment(64) offset(%c0) flags(Indirect) : memref<8x498x498xf32, #hal.descriptor_type<storage_buffer>>
      %assume_align_3 = memref.assume_alignment %3, 64 : memref<8x498x498xf32, #hal.descriptor_type<storage_buffer>>
      %workgroup_id_x = hal.interface.workgroup.id[0] : index
      %workgroup_count_x = hal.interface.workgroup.count[0] : index
      %c83 = arith.constant 83 : index
      %c0_4 = arith.constant 0 : index
      %4 = arith.floordivsi %workgroup_id_x, %c83 : index
      %5 = arith.remsi %workgroup_id_x, %c83 : index
      %6 = arith.cmpi slt, %5, %c0_4 : index
      %7 = arith.addi %5, %c83 overflow<nsw> : index
      %8 = arith.select %6, %7, %5 : index
      %c6_5 = arith.constant 6 : index
      %9 = arith.muli %4, %c6_5 overflow<nsw> : index
      %c6_6 = arith.constant 6 : index
      %10 = arith.muli %8, %c6_6 overflow<nsw> : index
      %subview = memref.subview %assume_align_3[0, %9, %10] [8, 6, 6] [1, 1, 1] : memref<8x498x498xf32, #hal.descriptor_type<storage_buffer>> to memref<8x6x6xf32, strided<[248004, 498, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
      %subview_7 = memref.subview %alloca_1[0, 0, 0] [1, 1, 6] [1, 1, 1] : memref<1x1x6xf32> to memref<6xf32, strided<[1]>>
      vector.store %cst, %subview_7[%c0] : memref<6xf32, strided<[1]>>, vector<6xf32>
      scf.for %arg0 = %c0 to %c8 step %c1 {
        %11 = vector.load %0[%arg0] : memref<8xf32>, vector<1xf32>
        scf.for %arg1 = %c0 to %c6 step %c1 {
          linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloca_1 : memref<1x1x6xf32>) outs(%alloca : memref<1x1x6xf32>) {
          ^bb0(%in: f32, %out: f32):
            linalg.yield %in : f32
          }
          scf.for %arg2 = %c0 to %c3 step %c1 {
            scf.for %arg3 = %c0 to %c3 step %c1 {
              %15 = arith.addi %arg3, %arg1 : index
              %16 = arith.addi %15, %9 : index
              %subview_9 = memref.subview %assume_align_2[%arg0, %arg2, %arg3, 0] [1, 1, 1, 3] [1, 1, 1, 1] : memref<8x3x3x3xf32, #hal.descriptor_type<storage_buffer>> to memref<1x1x1x3xf32, strided<[27, 9, 3, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
              %subview_10 = memref.subview %assume_align[%arg2, %16, %10] [1, 1, 8] [1, 1, 1] : memref<3x500x500xf32, #hal.descriptor_type<storage_buffer>> to memref<1x1x8xf32, strided<[250000, 500, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
              linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d3, d1 + d4, d2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d3, d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%subview_10, %subview_9 : memref<1x1x8xf32, strided<[250000, 500, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>, memref<1x1x1x3xf32, strided<[27, 9, 3, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>) outs(%alloca : memref<1x1x6xf32>) {
              ^bb0(%in: f32, %in_11: f32, %out: f32):
                %17 = arith.mulf %in, %in_11 : f32
                %18 = arith.addf %out, %17 : f32
                linalg.yield %18 : f32
              }
            }
          }
          %subview_8 = memref.subview %alloca[0, 0, 0] [1, 1, 6] [1, 1, 1] : memref<1x1x6xf32> to memref<6xf32, strided<[1]>>
          %12 = vector.load %subview_8[%c0] : memref<6xf32, strided<[1]>>, vector<6xf32>
          %13 = vector.broadcast %11 : vector<1xf32> to vector<6xf32>
          %14 = arith.addf %12, %13 : vector<6xf32>
          vector.store %14, %subview[%arg0, %arg1, %c0] : memref<8x6x6xf32, strided<[248004, 498, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>, vector<6xf32>
        }
      }
      return
    }
  }
}

