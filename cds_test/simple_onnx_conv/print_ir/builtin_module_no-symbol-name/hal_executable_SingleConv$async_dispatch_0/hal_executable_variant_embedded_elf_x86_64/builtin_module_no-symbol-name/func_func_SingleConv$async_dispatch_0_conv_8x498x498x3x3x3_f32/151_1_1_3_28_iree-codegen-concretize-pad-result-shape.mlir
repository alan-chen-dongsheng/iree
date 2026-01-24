// -----// IR Dump After ConcretizePadResultShapePass (iree-codegen-concretize-pad-result-shape) //----- //
func.func @SingleConv$async_dispatch_0_conv_8x498x498x3x3x3_f32() attributes {translation_info = #iree_codegen.translation_info<pipeline = CPUDoubleTilingExpert>} {
  %c1 = arith.constant 1 : index
  %c3 = arith.constant 3 : index
  %c6 = arith.constant 6 : index
  %cst = arith.constant 0.000000e+00 : f32
  %cst_0 = arith.constant dense<[0.540064871, 1.66891348, -0.204370424, 0.173146293, -0.0351918153, -0.198536336, 0.0749602392, 0.360360771]> : tensor<8xf32>
  %c0 = arith.constant 0 : index
  %0 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c0) flags("ReadOnly|Indirect") : memref<3x500x500xf32, #hal.descriptor_type<storage_buffer>>
  %1 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c0) flags(ReadOnly) : memref<8x3x3x3xf32, #hal.descriptor_type<storage_buffer>>
  %2 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(2) alignment(64) offset(%c0) flags(Indirect) : memref<8x498x498xf32, #hal.descriptor_type<storage_buffer>>
  %3 = iree_codegen.load_from_buffer %0 : memref<3x500x500xf32, #hal.descriptor_type<storage_buffer>> -> tensor<3x500x500xf32>
  %4 = iree_codegen.load_from_buffer %1 : memref<8x3x3x3xf32, #hal.descriptor_type<storage_buffer>> -> tensor<8x3x3x3xf32>
  %5 = tensor.empty() : tensor<8x498x498xf32>
  %6 = scf.forall (%arg0, %arg1) = (0, 0) to (498, 498) step (6, 6) shared_outs(%arg2 = %5) -> (tensor<8x498x498xf32>) {
    %extracted_slice = tensor.extract_slice %arg2[0, %arg0, %arg1] [8, 6, 6] [1, 1, 1] : tensor<8x498x498xf32> to tensor<8x6x6xf32>
    %7 = scf.forall (%arg3, %arg4) in (8, 6) shared_outs(%arg5 = %extracted_slice) -> (tensor<8x6x6xf32>) {
      %8 = tensor.empty() : tensor<1x1x6xf32>
      %9 = linalg.fill {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [1, 1, 8]>} ins(%cst : f32) outs(%8 : tensor<1x1x6xf32>) -> tensor<1x1x6xf32>
      %10 = scf.for %arg6 = %c0 to %c3 step %c1 iter_args(%arg7 = %9) -> (tensor<1x1x6xf32>) {
        %12 = scf.for %arg8 = %c0 to %c3 step %c1 iter_args(%arg9 = %arg7) -> (tensor<1x1x6xf32>) {
          %13 = affine.apply affine_map<()[s0, s1, s2] -> (s0 + s1 + s2)>()[%arg8, %arg4, %arg0]
          %extracted_slice_3 = tensor.extract_slice %3[%arg6, %13, %arg1] [1, 1, 8] [1, 1, 1] : tensor<3x500x500xf32> to tensor<1x1x8xf32>
          %extracted_slice_4 = tensor.extract_slice %4[%arg3, %arg6, %arg8, 0] [1, 1, 1, 3] [1, 1, 1, 1] : tensor<8x3x3x3xf32> to tensor<1x1x1x3xf32>
          %14 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d3, d1 + d4, d2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d3, d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%extracted_slice_3, %extracted_slice_4 : tensor<1x1x8xf32>, tensor<1x1x1x3xf32>) outs(%arg9 : tensor<1x1x6xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<distribution = [8, 6, 6, 0, 0, 0], vector_common_parallel = [1, 1, 8, 0, 0, 0], vector_reduction = [0, 0, 0, 1, 1, 8]>} {
          ^bb0(%in: f32, %in_5: f32, %out: f32):
            %15 = arith.mulf %in, %in_5 : f32
            %16 = arith.addf %out, %15 : f32
            linalg.yield %16 : f32
          } -> tensor<1x1x6xf32>
          scf.yield %14 : tensor<1x1x6xf32>
        }
        scf.yield %12 : tensor<1x1x6xf32>
      }
      %extracted_slice_1 = tensor.extract_slice %cst_0[%arg3] [1] [1] : tensor<8xf32> to tensor<1xf32>
      %extracted_slice_2 = tensor.extract_slice %arg5[%arg3, %arg4, 0] [1, 1, 6] [1, 1, 1] : tensor<8x6x6xf32> to tensor<1x1x6xf32>
      %11 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%10, %extracted_slice_1 : tensor<1x1x6xf32>, tensor<1xf32>) outs(%extracted_slice_2 : tensor<1x1x6xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [1, 1, 8]>} {
      ^bb0(%in: f32, %in_3: f32, %out: f32):
        %12 = arith.addf %in, %in_3 : f32
        linalg.yield %12 : f32
      } -> tensor<1x1x6xf32>
      %cast = tensor.cast %11 : tensor<1x1x6xf32> to tensor<1x1x?xf32>
      scf.forall.in_parallel {
        tensor.parallel_insert_slice %cast into %arg5[%arg3, %arg4, %c0] [1, 1, %c6] [1, 1, 1] : tensor<1x1x?xf32> into tensor<8x6x6xf32>
      }
    }
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %7 into %arg2[0, %arg0, %arg1] [8, 6, 6] [1, 1, 1] : tensor<8x6x6xf32> into tensor<8x498x498xf32>
    }
  } {mapping = [#iree_codegen.workgroup_mapping<y>, #iree_codegen.workgroup_mapping<x>]}
  iree_codegen.store_to_buffer %6, %2 : tensor<8x498x498xf32> into memref<8x498x498xf32, #hal.descriptor_type<storage_buffer>>
  return
}

