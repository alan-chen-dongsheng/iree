// -----// IR Dump After CSE (cse) //----- //
func.func @SingleConv$async_dispatch_0_conv_8x498x498x3x3x3_f32() attributes {translation_info = #iree_codegen.translation_info<pipeline = CPUDoubleTilingExpert>} {
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
    %extracted_slice = tensor.extract_slice %3[0, %arg0, %arg1] [3, 8, 8] [1, 1, 1] : tensor<3x500x500xf32> to tensor<3x8x8xf32>
    %7 = tensor.empty() : tensor<8x6x6xf32>
    %8 = linalg.fill {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [1, 1, 8]>} ins(%cst : f32) outs(%7 : tensor<8x6x6xf32>) -> tensor<8x6x6xf32>
    %9 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d3, d1 + d4, d2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d3, d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%extracted_slice, %4 : tensor<3x8x8xf32>, tensor<8x3x3x3xf32>) outs(%8 : tensor<8x6x6xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<distribution = [8, 6, 6, 0, 0, 0], vector_common_parallel = [1, 1, 8, 0, 0, 0], vector_reduction = [0, 0, 0, 1, 1, 8]>} {
    ^bb0(%in: f32, %in_2: f32, %out: f32):
      %11 = arith.mulf %in, %in_2 : f32
      %12 = arith.addf %out, %11 : f32
      linalg.yield %12 : f32
    } -> tensor<8x6x6xf32>
    %extracted_slice_1 = tensor.extract_slice %arg2[0, %arg0, %arg1] [8, 6, 6] [1, 1, 1] : tensor<8x498x498xf32> to tensor<8x6x6xf32>
    %10 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%9, %cst_0 : tensor<8x6x6xf32>, tensor<8xf32>) outs(%extracted_slice_1 : tensor<8x6x6xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [1, 1, 8]>} {
    ^bb0(%in: f32, %in_2: f32, %out: f32):
      %11 = arith.addf %in, %in_2 : f32
      linalg.yield %11 : f32
    } -> tensor<8x6x6xf32>
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %10 into %arg2[0, %arg0, %arg1] [8, 6, 6] [1, 1, 1] : tensor<8x6x6xf32> into tensor<8x498x498xf32>
    }
  } {mapping = [#iree_codegen.workgroup_mapping<y>, #iree_codegen.workgroup_mapping<x>]}
  iree_codegen.store_to_buffer %6, %2 : tensor<8x498x498xf32> into memref<8x498x498xf32, #hal.descriptor_type<storage_buffer>>
  return
}

