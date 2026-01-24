// -----// IR Dump After BufferizeDispatchTensorLoadStorePass (iree-codegen-bufferize-dispatch-tensor-load-store) //----- //
func.func @SingleConv$async_dispatch_0_conv_8x498x498x3x3x3_f32() attributes {translation_info = #iree_codegen.translation_info<pipeline = CPUDoubleTilingExpert>} {
  %cst = arith.constant 0.000000e+00 : f32
  %cst_0 = arith.constant dense<[0.540064871, 1.66891348, -0.204370424, 0.173146293, -0.0351918153, -0.198536336, 0.0749602392, 0.360360771]> : tensor<8xf32>
  %c0 = arith.constant 0 : index
  %0 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c0) flags("ReadOnly|Indirect") : memref<3x500x500xf32, #hal.descriptor_type<storage_buffer>>
  %1 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c0) flags("ReadOnly|Indirect") : !iree_tensor_ext.dispatch.tensor<readonly:tensor<3x500x500xf32>>
  %2 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c0) flags(ReadOnly) : memref<8x3x3x3xf32, #hal.descriptor_type<storage_buffer>>
  %3 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c0) flags(ReadOnly) : !iree_tensor_ext.dispatch.tensor<readonly:tensor<8x3x3x3xf32>>
  %4 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(2) alignment(64) offset(%c0) flags(Indirect) : memref<8x498x498xf32, #hal.descriptor_type<storage_buffer>>
  %5 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(2) alignment(64) offset(%c0) flags(Indirect) : !iree_tensor_ext.dispatch.tensor<writeonly:tensor<8x498x498xf32>>
  %6 = iree_codegen.load_from_buffer %0 : memref<3x500x500xf32, #hal.descriptor_type<storage_buffer>> -> tensor<3x500x500xf32>
  %7 = iree_codegen.load_from_buffer %2 : memref<8x3x3x3xf32, #hal.descriptor_type<storage_buffer>> -> tensor<8x3x3x3xf32>
  %8 = tensor.empty() : tensor<8x498x498xf32>
  %9 = scf.forall (%arg0, %arg1) = (0, 0) to (498, 498) step (6, 6) shared_outs(%arg2 = %8) -> (tensor<8x498x498xf32>) {
    %extracted_slice = tensor.extract_slice %6[0, %arg0, %arg1] [3, 8, 8] [1, 1, 1] : tensor<3x500x500xf32> to tensor<3x8x8xf32>
    %10 = tensor.empty() : tensor<8x6x6xf32>
    %11 = linalg.fill {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [1, 1, 8]>} ins(%cst : f32) outs(%10 : tensor<8x6x6xf32>) -> tensor<8x6x6xf32>
    %12 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d3, d1 + d4, d2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d3, d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%extracted_slice, %7 : tensor<3x8x8xf32>, tensor<8x3x3x3xf32>) outs(%11 : tensor<8x6x6xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<distribution = [8, 6, 6, 0, 0, 0], vector_common_parallel = [1, 1, 8, 0, 0, 0], vector_reduction = [0, 0, 0, 1, 1, 8]>} {
    ^bb0(%in: f32, %in_2: f32, %out: f32):
      %14 = arith.mulf %in, %in_2 : f32
      %15 = arith.addf %out, %14 : f32
      linalg.yield %15 : f32
    } -> tensor<8x6x6xf32>
    %extracted_slice_1 = tensor.extract_slice %arg2[0, %arg0, %arg1] [8, 6, 6] [1, 1, 1] : tensor<8x498x498xf32> to tensor<8x6x6xf32>
    %13 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%12, %cst_0 : tensor<8x6x6xf32>, tensor<8xf32>) outs(%extracted_slice_1 : tensor<8x6x6xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<vector_common_parallel = [1, 1, 8]>} {
    ^bb0(%in: f32, %in_2: f32, %out: f32):
      %14 = arith.addf %in, %in_2 : f32
      linalg.yield %14 : f32
    } -> tensor<8x6x6xf32>
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %13 into %arg2[0, %arg0, %arg1] [8, 6, 6] [1, 1, 1] : tensor<8x6x6xf32> into tensor<8x498x498xf32>
    }
  } {mapping = [#iree_codegen.workgroup_mapping<y>, #iree_codegen.workgroup_mapping<x>]}
  iree_codegen.store_to_buffer %9, %4 : tensor<8x498x498xf32> into memref<8x498x498xf32, #hal.descriptor_type<storage_buffer>>
  return
}

