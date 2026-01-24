// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func @SingleConv$async_dispatch_0_conv_8x498x498x3x3x3_f32() {
  %c83 = arith.constant 83 : index
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
  %1 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c0) flags("ReadOnly|Indirect") : memref<3x500x500xf32>
  %assume_align = memref.assume_alignment %1, 64 : memref<3x500x500xf32>
  %2 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c0) flags(ReadOnly) : memref<8x3x3x3xf32>
  %assume_align_2 = memref.assume_alignment %2, 64 : memref<8x3x3x3xf32>
  %3 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(2) alignment(64) offset(%c0) flags(Indirect) : memref<8x498x498xf32>
  %assume_align_3 = memref.assume_alignment %3, 64 : memref<8x498x498xf32>
  %workgroup_id_x = hal.interface.workgroup.id[0] : index
  %4 = arith.floordivsi %workgroup_id_x, %c83 : index
  %5 = arith.remsi %workgroup_id_x, %c83 : index
  %6 = arith.cmpi slt, %5, %c0 : index
  %7 = arith.addi %5, %c83 overflow<nsw> : index
  %8 = arith.select %6, %7, %5 : index
  %9 = arith.muli %4, %c6 overflow<nsw> : index
  %10 = arith.muli %8, %c6 overflow<nsw> : index
  %subview = memref.subview %assume_align_3[0, %9, %10] [8, 6, 6] [1, 1, 1] : memref<8x498x498xf32> to memref<8x6x6xf32, strided<[248004, 498, 1], offset: ?>>
  %subview_4 = memref.subview %alloca_1[0, 0, 0] [1, 1, 6] [1, 1, 1] : memref<1x1x6xf32> to memref<6xf32, strided<[1]>>
  vector.store %cst, %subview_4[%c0] : memref<6xf32, strided<[1]>>, vector<6xf32>
  scf.for %arg0 = %c0 to %c8 step %c1 {
    %11 = vector.load %0[%arg0] : memref<8xf32>, vector<1xf32>
    scf.for %arg1 = %c0 to %c6 step %c1 {
      scf.for %arg2 = %c0 to %c6 step %c1 {
        %15 = memref.load %alloca_1[%c0, %c0, %arg2] : memref<1x1x6xf32>
        memref.store %15, %alloca[%c0, %c0, %arg2] : memref<1x1x6xf32>
      }
      scf.for %arg2 = %c0 to %c3 step %c1 {
        scf.for %arg3 = %c0 to %c3 step %c1 {
          %15 = arith.addi %arg3, %arg1 : index
          %16 = arith.addi %15, %9 : index
          %subview_6 = memref.subview %assume_align_2[%arg0, %arg2, %arg3, 0] [1, 1, 1, 3] [1, 1, 1, 1] : memref<8x3x3x3xf32> to memref<1x1x1x3xf32, strided<[27, 9, 3, 1], offset: ?>>
          %subview_7 = memref.subview %assume_align[%arg2, %16, %10] [1, 1, 8] [1, 1, 1] : memref<3x500x500xf32> to memref<1x1x8xf32, strided<[250000, 500, 1], offset: ?>>
          scf.for %arg4 = %c0 to %c6 step %c1 {
            scf.for %arg5 = %c0 to %c3 step %c1 {
              %17 = affine.apply affine_map<(d0, d1) -> (d0 + d1)>(%arg4, %arg5)
              %18 = memref.load %subview_7[%c0, %c0, %17] : memref<1x1x8xf32, strided<[250000, 500, 1], offset: ?>>
              %19 = memref.load %subview_6[%c0, %c0, %c0, %arg5] : memref<1x1x1x3xf32, strided<[27, 9, 3, 1], offset: ?>>
              %20 = memref.load %alloca[%c0, %c0, %arg4] : memref<1x1x6xf32>
              %21 = arith.mulf %18, %19 : f32
              %22 = arith.addf %20, %21 : f32
              memref.store %22, %alloca[%c0, %c0, %arg4] : memref<1x1x6xf32>
            }
          }
        }
      }
      %subview_5 = memref.subview %alloca[0, 0, 0] [1, 1, 6] [1, 1, 1] : memref<1x1x6xf32> to memref<6xf32, strided<[1]>>
      %12 = vector.load %subview_5[%c0] : memref<6xf32, strided<[1]>>, vector<6xf32>
      %13 = vector.broadcast %11 : vector<1xf32> to vector<6xf32>
      %14 = arith.addf %12, %13 : vector<6xf32>
      vector.store %14, %subview[%arg0, %arg1, %c0] : memref<8x6x6xf32, strided<[248004, 498, 1], offset: ?>>, vector<6xf32>
    }
  }
  return
}

