// -----// IR Dump After SCFToControlFlowPass (convert-scf-to-cf) //----- //
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
  cf.br ^bb1(%c0 : index)
^bb1(%11: index):  // 2 preds: ^bb0, ^bb20
  %12 = arith.cmpi slt, %11, %c8 : index
  cf.cond_br %12, ^bb2, ^bb21
^bb2:  // pred: ^bb1
  %13 = vector.load %0[%11] : memref<8xf32>, vector<1xf32>
  cf.br ^bb3(%c0 : index)
^bb3(%14: index):  // 2 preds: ^bb2, ^bb19
  %15 = arith.cmpi slt, %14, %c6 : index
  cf.cond_br %15, ^bb4, ^bb20
^bb4:  // pred: ^bb3
  cf.br ^bb5(%c0 : index)
^bb5(%16: index):  // 2 preds: ^bb4, ^bb6
  %17 = arith.cmpi slt, %16, %c6 : index
  cf.cond_br %17, ^bb6, ^bb7
^bb6:  // pred: ^bb5
  %18 = memref.load %alloca_0[%c0, %c0, %16] : memref<1x1x6xf32>
  memref.store %18, %alloca[%c0, %c0, %16] : memref<1x1x6xf32>
  %19 = arith.addi %16, %c1 : index
  cf.br ^bb5(%19 : index)
^bb7:  // pred: ^bb5
  cf.br ^bb8(%c0 : index)
^bb8(%20: index):  // 2 preds: ^bb7, ^bb18
  %21 = arith.cmpi slt, %20, %c3 : index
  cf.cond_br %21, ^bb9, ^bb19
^bb9:  // pred: ^bb8
  cf.br ^bb10(%c0 : index)
^bb10(%22: index):  // 2 preds: ^bb9, ^bb17
  %23 = arith.cmpi slt, %22, %c3 : index
  cf.cond_br %23, ^bb11, ^bb18
^bb11:  // pred: ^bb10
  %24 = arith.addi %22, %14 : index
  %25 = arith.addi %24, %9 : index
  cf.br ^bb12(%c0 : index)
^bb12(%26: index):  // 2 preds: ^bb11, ^bb16
  %27 = arith.cmpi slt, %26, %c6 : index
  cf.cond_br %27, ^bb13, ^bb17
^bb13:  // pred: ^bb12
  cf.br ^bb14(%c0 : index)
^bb14(%28: index):  // 2 preds: ^bb13, ^bb15
  %29 = arith.cmpi slt, %28, %c3 : index
  cf.cond_br %29, ^bb15, ^bb16
^bb15:  // pred: ^bb14
  %30 = affine.apply affine_map<(d0, d1)[s0] -> (d0 + d1 + s0)>(%26, %28)[%10]
  %31 = memref.load %assume_align[%20, %25, %30] : memref<3x500x500xf32>
  %32 = memref.load %assume_align_1[%11, %20, %22, %28] : memref<8x3x3x3xf32>
  %33 = memref.load %alloca[%c0, %c0, %26] : memref<1x1x6xf32>
  %34 = arith.mulf %31, %32 : f32
  %35 = arith.addf %33, %34 : f32
  memref.store %35, %alloca[%c0, %c0, %26] : memref<1x1x6xf32>
  %36 = arith.addi %28, %c1 : index
  cf.br ^bb14(%36 : index)
^bb16:  // pred: ^bb14
  %37 = arith.addi %26, %c1 : index
  cf.br ^bb12(%37 : index)
^bb17:  // pred: ^bb12
  %38 = arith.addi %22, %c1 : index
  cf.br ^bb10(%38 : index)
^bb18:  // pred: ^bb10
  %39 = arith.addi %20, %c1 : index
  cf.br ^bb8(%39 : index)
^bb19:  // pred: ^bb8
  %40 = vector.load %alloca[%c0, %c0, %c0] : memref<1x1x6xf32>, vector<6xf32>
  %41 = vector.broadcast %13 : vector<1xf32> to vector<6xf32>
  %42 = arith.addf %40, %41 : vector<6xf32>
  %43 = affine.apply affine_map<()[s0, s1] -> (s0 + s1)>()[%9, %14]
  vector.store %42, %assume_align_2[%11, %43, %10] : memref<8x498x498xf32>, vector<6xf32>
  %44 = arith.addi %14, %c1 : index
  cf.br ^bb3(%44 : index)
^bb20:  // pred: ^bb3
  %45 = arith.addi %11, %c1 : index
  cf.br ^bb1(%45 : index)
^bb21:  // pred: ^bb1
  return
}

