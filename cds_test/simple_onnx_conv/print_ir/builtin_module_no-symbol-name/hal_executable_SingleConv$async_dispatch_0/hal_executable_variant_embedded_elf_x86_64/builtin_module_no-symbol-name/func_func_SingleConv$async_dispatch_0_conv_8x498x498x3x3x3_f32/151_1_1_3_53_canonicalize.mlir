// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func @SingleConv$async_dispatch_0_conv_8x498x498x3x3x3_f32() attributes {translation_info = #iree_codegen.translation_info<pipeline = CPUDoubleTilingExpert>} {
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
  scf.forall (%arg0, %arg1) = (0, 0) to (498, 498) step (6, 6) {
    %subview = memref.subview %assume_align_3[0, %arg0, %arg1] [8, 6, 6] [1, 1, 1] : memref<8x498x498xf32, #hal.descriptor_type<storage_buffer>> to memref<8x6x6xf32, strided<[248004, 498, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
    %subview_4 = memref.subview %alloca_1[0, 0, 0] [1, 1, 6] [1, 1, 1] : memref<1x1x6xf32> to memref<6xf32, strided<[1]>>
    vector.store %cst, %subview_4[%c0] : memref<6xf32, strided<[1]>>, vector<6xf32>
    scf.for %arg2 = %c0 to %c8 step %c1 {
      %4 = vector.load %0[%arg2] : memref<8xf32>, vector<1xf32>
      scf.for %arg3 = %c0 to %c6 step %c1 {
        linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%alloca_1 : memref<1x1x6xf32>) outs(%alloca : memref<1x1x6xf32>) {
        ^bb0(%in: f32, %out: f32):
          linalg.yield %in : f32
        }
        scf.for %arg4 = %c0 to %c3 step %c1 {
          scf.for %arg5 = %c0 to %c3 step %c1 {
            %8 = affine.apply affine_map<()[s0, s1, s2] -> (s0 + s1 + s2)>()[%arg5, %arg3, %arg0]
            %subview_6 = memref.subview %assume_align_2[%arg2, %arg4, %arg5, 0] [1, 1, 1, 3] [1, 1, 1, 1] : memref<8x3x3x3xf32, #hal.descriptor_type<storage_buffer>> to memref<1x1x1x3xf32, strided<[27, 9, 3, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
            %subview_7 = memref.subview %assume_align[%arg4, %8, %arg1] [1, 1, 8] [1, 1, 1] : memref<3x500x500xf32, #hal.descriptor_type<storage_buffer>> to memref<1x1x8xf32, strided<[250000, 500, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>
            linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d3, d1 + d4, d2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d3, d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%subview_7, %subview_6 : memref<1x1x8xf32, strided<[250000, 500, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>, memref<1x1x1x3xf32, strided<[27, 9, 3, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>) outs(%alloca : memref<1x1x6xf32>) attrs =  {lowering_config = #iree_cpu.lowering_config<distribution = [8, 6, 6, 0, 0, 0], vector_common_parallel = [1, 1, 8, 0, 0, 0], vector_reduction = [0, 0, 0, 1, 1, 8]>} {
            ^bb0(%in: f32, %in_8: f32, %out: f32):
              %9 = arith.mulf %in, %in_8 : f32
              %10 = arith.addf %out, %9 : f32
              linalg.yield %10 : f32
            }
          }
        }
        %subview_5 = memref.subview %alloca[0, 0, 0] [1, 1, 6] [1, 1, 1] : memref<1x1x6xf32> to memref<6xf32, strided<[1]>>
        %5 = vector.load %subview_5[%c0] : memref<6xf32, strided<[1]>>, vector<6xf32>
        %6 = vector.broadcast %4 : vector<1xf32> to vector<6xf32>
        %7 = arith.addf %5, %6 : vector<6xf32>
        vector.store %7, %subview[%arg2, %arg3, %c0] : memref<8x6x6xf32, strided<[248004, 498, 1], offset: ?>, #hal.descriptor_type<storage_buffer>>, vector<6xf32>
      }
    }
  } {mapping = [#iree_codegen.workgroup_mapping<y>, #iree_codegen.workgroup_mapping<x>]}
  return
}

