// -----// IR Dump After EliminateEmptyTensorsPass (iree-eliminate-empty-tensors) //----- //
func.func @SingleConv$async_dispatch_0_conv_8x498x498x3x3x3_f32() attributes {translation_info = #iree_codegen.translation_info<pipeline = CPUDoubleTilingExpert>} {
  %cst = arith.constant dense<0.000000e+00> : vector<1x1x6xf32>
  %0 = ub.poison : f32
  %c8 = arith.constant 8 : index
  %c1 = arith.constant 1 : index
  %c3 = arith.constant 3 : index
  %c6 = arith.constant 6 : index
  %cst_0 = arith.constant dense<[0.540064871, 1.66891348, -0.204370424, 0.173146293, -0.0351918153, -0.198536336, 0.0749602392, 0.360360771]> : tensor<8xf32>
  %c0 = arith.constant 0 : index
  %1 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c0) flags("ReadOnly|Indirect") : memref<3x500x500xf32, #hal.descriptor_type<storage_buffer>>
  %2 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c0) flags(ReadOnly) : memref<8x3x3x3xf32, #hal.descriptor_type<storage_buffer>>
  %3 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(2) alignment(64) offset(%c0) flags(Indirect) : memref<8x498x498xf32, #hal.descriptor_type<storage_buffer>>
  %4 = iree_codegen.load_from_buffer %1 : memref<3x500x500xf32, #hal.descriptor_type<storage_buffer>> -> tensor<3x500x500xf32>
  %5 = iree_codegen.load_from_buffer %2 : memref<8x3x3x3xf32, #hal.descriptor_type<storage_buffer>> -> tensor<8x3x3x3xf32>
  %6 = iree_codegen.load_from_buffer %3 : memref<8x498x498xf32, #hal.descriptor_type<storage_buffer>> -> tensor<8x498x498xf32>
  %7 = tensor.empty() : tensor<8x498x498xf32>
  %8 = scf.forall (%arg0, %arg1) = (0, 0) to (498, 498) step (6, 6) shared_outs(%arg2 = %6) -> (tensor<8x498x498xf32>) {
    %extracted_slice = tensor.extract_slice %arg2[0, %arg0, %arg1] [8, 6, 6] [1, 1, 1] : tensor<8x498x498xf32> to tensor<8x6x6xf32>
    %9 = tensor.empty() : tensor<1x1x6xf32>
    %10 = vector.transfer_write %cst, %9[%c0, %c0, %c0] {in_bounds = [true, true, true]} : vector<1x1x6xf32>, tensor<1x1x6xf32>
    %11 = scf.for %arg3 = %c0 to %c8 step %c1 iter_args(%arg4 = %extracted_slice) -> (tensor<8x6x6xf32>) {
      %12 = vector.transfer_read %cst_0[%arg3], %0 {in_bounds = [true]} : tensor<8xf32>, vector<1xf32>
      %13 = vector.broadcast %12 : vector<1xf32> to vector<1x1x6xf32>
      %14 = scf.for %arg5 = %c0 to %c6 step %c1 iter_args(%arg6 = %arg4) -> (tensor<8x6x6xf32>) {
        %15 = scf.for %arg7 = %c0 to %c3 step %c1 iter_args(%arg8 = %10) -> (tensor<1x1x6xf32>) {
          %19 = scf.for %arg9 = %c0 to %c3 step %c1 iter_args(%arg10 = %arg8) -> (tensor<1x1x6xf32>) {
            %20 = affine.apply affine_map<()[s0, s1, s2] -> (s0 + s1 + s2)>()[%arg9, %arg5, %arg0]
            %extracted_slice_1 = tensor.extract_slice %5[%arg3, %arg7, %arg9, 0] [1, 1, 1, 3] [1, 1, 1, 1] : tensor<8x3x3x3xf32> to tensor<1x1x1x3xf32>
            %extracted_slice_2 = tensor.extract_slice %4[%arg7, %20, %arg1] [1, 1, 8] [1, 1, 1] : tensor<3x500x500xf32> to tensor<1x1x8xf32>
            %21 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d3, d1 + d4, d2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d3, d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%extracted_slice_2, %extracted_slice_1 : tensor<1x1x8xf32>, tensor<1x1x1x3xf32>) outs(%arg10 : tensor<1x1x6xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<distribution = [8, 6, 6, 0, 0, 0], vector_common_parallel = [1, 1, 8, 0, 0, 0], vector_reduction = [0, 0, 0, 1, 1, 8]>} {
            ^bb0(%in: f32, %in_3: f32, %out: f32):
              %22 = arith.mulf %in, %in_3 : f32
              %23 = arith.addf %out, %22 : f32
              linalg.yield %23 : f32
            } -> tensor<1x1x6xf32>
            scf.yield %21 : tensor<1x1x6xf32>
          }
          scf.yield %19 : tensor<1x1x6xf32>
        }
        %16 = vector.transfer_read %15[%c0, %c0, %c0], %0 {in_bounds = [true, true, true]} : tensor<1x1x6xf32>, vector<1x1x6xf32>
        %17 = arith.addf %16, %13 : vector<1x1x6xf32>
        %18 = vector.transfer_write %17, %arg6[%arg3, %arg5, %c0] {in_bounds = [true, true, true]} : vector<1x1x6xf32>, tensor<8x6x6xf32>
        scf.yield %18 : tensor<8x6x6xf32>
      }
      scf.yield %14 : tensor<8x6x6xf32>
    }
    scf.forall.in_parallel {
      tensor.parallel_insert_slice %11 into %arg2[0, %arg0, %arg1] [8, 6, 6] [1, 1, 1] : tensor<8x6x6xf32> into tensor<8x498x498xf32>
    }
  } {mapping = [#iree_codegen.workgroup_mapping<y>, #iree_codegen.workgroup_mapping<x>]}
  iree_codegen.store_to_buffer %8, %3 : tensor<8x498x498xf32> into memref<8x498x498xf32, #hal.descriptor_type<storage_buffer>>
  return
}

