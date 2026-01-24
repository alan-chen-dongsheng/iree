// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func @SingleConv$async_dispatch_0_conv_8x498x498x3x3x3_f32() {
  %c-1 = arith.constant -1 : index
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
  %4 = arith.divsi %workgroup_id_x, %c83 : index
  %5 = arith.muli %4, %c83 : index
  %6 = arith.cmpi ne, %workgroup_id_x, %5 : index
  %7 = arith.cmpi slt, %workgroup_id_x, %c0 : index
  %8 = arith.andi %6, %7 : i1
  %9 = arith.addi %4, %c-1 : index
  %10 = arith.select %8, %9, %4 : index
  %11 = arith.remsi %workgroup_id_x, %c83 : index
  %12 = arith.cmpi slt, %11, %c0 : index
  %13 = arith.addi %11, %c83 overflow<nsw> : index
  %14 = arith.select %12, %13, %11 : index
  %15 = arith.muli %10, %c6 overflow<nsw> : index
  %16 = arith.muli %14, %c6 overflow<nsw> : index
  vector.store %cst, %alloca_0[%c0, %c0, %c0] : memref<1x1x6xf32>, vector<6xf32>
  cf.br ^bb1(%c0 : index)
^bb1(%17: index):  // 2 preds: ^bb0, ^bb16
  %18 = arith.cmpi slt, %17, %c8 : index
  cf.cond_br %18, ^bb2, ^bb17
^bb2:  // pred: ^bb1
  %19 = vector.load %0[%17] : memref<8xf32>, vector<1xf32>
  cf.br ^bb3(%c0 : index)
^bb3(%20: index):  // 2 preds: ^bb2, ^bb15
  %21 = arith.cmpi slt, %20, %c6 : index
  cf.cond_br %21, ^bb4(%c0 : index), ^bb16
^bb4(%22: index):  // 2 preds: ^bb3, ^bb5
  %23 = arith.cmpi slt, %22, %c6 : index
  cf.cond_br %23, ^bb5, ^bb6(%c0 : index)
^bb5:  // pred: ^bb4
  %24 = memref.load %alloca_0[%c0, %c0, %22] : memref<1x1x6xf32>
  memref.store %24, %alloca[%c0, %c0, %22] : memref<1x1x6xf32>
  %25 = arith.addi %22, %c1 : index
  cf.br ^bb4(%25 : index)
^bb6(%26: index):  // 2 preds: ^bb4, ^bb14
  %27 = arith.cmpi slt, %26, %c3 : index
  cf.cond_br %27, ^bb7(%c0 : index), ^bb15
^bb7(%28: index):  // 2 preds: ^bb6, ^bb13
  %29 = arith.cmpi slt, %28, %c3 : index
  cf.cond_br %29, ^bb8, ^bb14
^bb8:  // pred: ^bb7
  %30 = arith.addi %28, %20 : index
  %31 = arith.addi %30, %15 : index
  cf.br ^bb9(%c0 : index)
^bb9(%32: index):  // 2 preds: ^bb8, ^bb12
  %33 = arith.cmpi slt, %32, %c6 : index
  cf.cond_br %33, ^bb10(%c0 : index), ^bb13
^bb10(%34: index):  // 2 preds: ^bb9, ^bb11
  %35 = arith.cmpi slt, %34, %c3 : index
  cf.cond_br %35, ^bb11, ^bb12
^bb11:  // pred: ^bb10
  %36 = affine.apply affine_map<()[s0, s1, s2] -> (s0 + s1 + s2)>()[%16, %32, %34]
  %37 = memref.load %assume_align[%26, %31, %36] : memref<3x500x500xf32>
  %38 = memref.load %assume_align_1[%17, %26, %28, %34] : memref<8x3x3x3xf32>
  %39 = memref.load %alloca[%c0, %c0, %32] : memref<1x1x6xf32>
  %40 = arith.mulf %37, %38 : f32
  %41 = arith.addf %39, %40 : f32
  memref.store %41, %alloca[%c0, %c0, %32] : memref<1x1x6xf32>
  %42 = arith.addi %34, %c1 : index
  cf.br ^bb10(%42 : index)
^bb12:  // pred: ^bb10
  %43 = arith.addi %32, %c1 : index
  cf.br ^bb9(%43 : index)
^bb13:  // pred: ^bb9
  %44 = arith.addi %28, %c1 : index
  cf.br ^bb7(%44 : index)
^bb14:  // pred: ^bb7
  %45 = arith.addi %26, %c1 : index
  cf.br ^bb6(%45 : index)
^bb15:  // pred: ^bb6
  %46 = vector.load %alloca[%c0, %c0, %c0] : memref<1x1x6xf32>, vector<6xf32>
  %47 = vector.broadcast %19 : vector<1xf32> to vector<6xf32>
  %48 = arith.addf %46, %47 : vector<6xf32>
  %49 = affine.apply affine_map<()[s0, s1] -> (s0 + s1)>()[%15, %20]
  vector.store %48, %assume_align_2[%17, %49, %16] : memref<8x498x498xf32>, vector<6xf32>
  %50 = arith.addi %20, %c1 : index
  cf.br ^bb3(%50 : index)
^bb16:  // pred: ^bb3
  %51 = arith.addi %17, %c1 : index
  cf.br ^bb1(%51 : index)
^bb17:  // pred: ^bb1
  return
}

