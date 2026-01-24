// -----// IR Dump After IREEExpandStridedMetadataPass (iree-codegen-expand-strided-metadata) //----- //
func.func @SingleConv$async_dispatch_0_conv_8x498x498x3x3x3_f32() {
  %c8 = arith.constant 8 : index
  %c1 = arith.constant 1 : index
  %c3 = arith.constant 3 : index
  %c6 = arith.constant 6 : index
  %c83 = arith.constant 83 : index
  %cst = arith.constant dense<0.000000e+00> : vector<6xf32>
  %c0 = arith.constant 0 : index
  %0 = memref.get_global @__constant_8xf32 : memref<8xf32>
  %alloca = memref.alloca() {alignment = 64 : i64} : memref<1x1x6xf32>
  %alloca_0 = memref.alloca() {alignment = 64 : i64} : memref<1x1x6xf32>
  %1 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(0) alignment(64) offset(%c0) flags("ReadOnly|Indirect") : memref<3x500x500xf32>
  %assume_align = memref.assume_alignment %1, 64 : memref<3x500x500xf32>
  %2 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(1) alignment(64) offset(%c0) flags(ReadOnly) : memref<8x3x3x3xf32>
  %assume_align_1 = memref.assume_alignment %2, 64 : memref<8x3x3x3xf32>
  %3 = hal.interface.binding.subspan layout(<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>) binding(2) alignment(64) offset(%c0) flags(Indirect) : memref<8x498x498xf32>
  %assume_align_2 = memref.assume_alignment %3, 64 : memref<8x498x498xf32>
  %workgroup_id_x = hal.interface.workgroup.id[0] : index
  %4 = arith.floordivsi %workgroup_id_x, %c83 : index
  %5 = arith.remsi %workgroup_id_x, %c83 : index
  %6 = arith.cmpi slt, %5, %c0 : index
  %7 = arith.addi %5, %c83 overflow<nsw> : index
  %8 = arith.select %6, %7, %5 : index
  %9 = arith.muli %4, %c6 overflow<nsw> : index
  %10 = arith.muli %8, %c6 overflow<nsw> : index
  vector.store %cst, %alloca_0[%c0, %c0, %c0] : memref<1x1x6xf32>, vector<6xf32>
  scf.for %arg0 = %c0 to %c8 step %c1 {
    %11 = vector.load %0[%arg0] : memref<8xf32>, vector<1xf32>
    scf.for %arg1 = %c0 to %c6 step %c1 {
      scf.for %arg2 = %c0 to %c6 step %c1 {
        %16 = memref.load %alloca_0[%c0, %c0, %arg2] : memref<1x1x6xf32>
        memref.store %16, %alloca[%c0, %c0, %arg2] : memref<1x1x6xf32>
      }
      scf.for %arg2 = %c0 to %c3 step %c1 {
        scf.for %arg3 = %c0 to %c3 step %c1 {
          %16 = arith.addi %arg3, %arg1 : index
          %17 = arith.addi %16, %9 : index
          scf.for %arg4 = %c0 to %c6 step %c1 {
            scf.for %arg5 = %c0 to %c3 step %c1 {
              %18 = affine.apply affine_map<(d0, d1)[s0] -> (d0 + d1 + s0)>(%arg4, %arg5)[%10]
              %19 = memref.load %assume_align[%arg2, %17, %18] : memref<3x500x500xf32>
              %20 = memref.load %assume_align_1[%arg0, %arg2, %arg3, %arg5] : memref<8x3x3x3xf32>
              %21 = memref.load %alloca[%c0, %c0, %arg4] : memref<1x1x6xf32>
              %22 = arith.mulf %19, %20 : f32
              %23 = arith.addf %21, %22 : f32
              memref.store %23, %alloca[%c0, %c0, %arg4] : memref<1x1x6xf32>
            }
          }
        }
      }
      %12 = vector.load %alloca[%c0, %c0, %c0] : memref<1x1x6xf32>, vector<6xf32>
      %13 = vector.broadcast %11 : vector<1xf32> to vector<6xf32>
      %14 = arith.addf %12, %13 : vector<6xf32>
      %15 = affine.apply affine_map<()[s0, s1] -> (s0 + s1)>()[%9, %arg1]
      vector.store %14, %assume_align_2[%arg0, %15, %10] : memref<8x498x498xf32>, vector<6xf32>
    }
  }
  return
}

