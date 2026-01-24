// -----// IR Dump After ArithExpandOpsPass (arith-expand) //----- //
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
  %4 = arith.divsi %workgroup_id_x, %c83 : index
  %5 = arith.muli %4, %c83 : index
  %6 = arith.cmpi ne, %workgroup_id_x, %5 : index
  %c0_3 = arith.constant 0 : index
  %7 = arith.cmpi slt, %workgroup_id_x, %c0_3 : index
  %8 = arith.cmpi slt, %c83, %c0_3 : index
  %9 = arith.cmpi ne, %7, %8 : i1
  %10 = arith.andi %6, %9 : i1
  %c-1 = arith.constant -1 : index
  %11 = arith.addi %4, %c-1 : index
  %12 = arith.select %10, %11, %4 : index
  %13 = arith.remsi %workgroup_id_x, %c83 : index
  %14 = arith.cmpi slt, %13, %c0 : index
  %15 = arith.addi %13, %c83 overflow<nsw> : index
  %16 = arith.select %14, %15, %13 : index
  %17 = arith.muli %12, %c6 overflow<nsw> : index
  %18 = arith.muli %16, %c6 overflow<nsw> : index
  vector.store %cst, %alloca_0[%c0, %c0, %c0] : memref<1x1x6xf32>, vector<6xf32>
  cf.br ^bb1(%c0 : index)
^bb1(%19: index):  // 2 preds: ^bb0, ^bb16
  %20 = arith.cmpi slt, %19, %c8 : index
  cf.cond_br %20, ^bb2, ^bb17
^bb2:  // pred: ^bb1
  %21 = vector.load %0[%19] : memref<8xf32>, vector<1xf32>
  cf.br ^bb3(%c0 : index)
^bb3(%22: index):  // 2 preds: ^bb2, ^bb15
  %23 = arith.cmpi slt, %22, %c6 : index
  cf.cond_br %23, ^bb4(%c0 : index), ^bb16
^bb4(%24: index):  // 2 preds: ^bb3, ^bb5
  %25 = arith.cmpi slt, %24, %c6 : index
  cf.cond_br %25, ^bb5, ^bb6(%c0 : index)
^bb5:  // pred: ^bb4
  %26 = memref.load %alloca_0[%c0, %c0, %24] : memref<1x1x6xf32>
  memref.store %26, %alloca[%c0, %c0, %24] : memref<1x1x6xf32>
  %27 = arith.addi %24, %c1 : index
  cf.br ^bb4(%27 : index)
^bb6(%28: index):  // 2 preds: ^bb4, ^bb14
  %29 = arith.cmpi slt, %28, %c3 : index
  cf.cond_br %29, ^bb7(%c0 : index), ^bb15
^bb7(%30: index):  // 2 preds: ^bb6, ^bb13
  %31 = arith.cmpi slt, %30, %c3 : index
  cf.cond_br %31, ^bb8, ^bb14
^bb8:  // pred: ^bb7
  %32 = arith.addi %30, %22 : index
  %33 = arith.addi %32, %17 : index
  cf.br ^bb9(%c0 : index)
^bb9(%34: index):  // 2 preds: ^bb8, ^bb12
  %35 = arith.cmpi slt, %34, %c6 : index
  cf.cond_br %35, ^bb10(%c0 : index), ^bb13
^bb10(%36: index):  // 2 preds: ^bb9, ^bb11
  %37 = arith.cmpi slt, %36, %c3 : index
  cf.cond_br %37, ^bb11, ^bb12
^bb11:  // pred: ^bb10
  %38 = affine.apply affine_map<()[s0, s1, s2] -> (s0 + s1 + s2)>()[%18, %34, %36]
  %39 = memref.load %assume_align[%28, %33, %38] : memref<3x500x500xf32>
  %40 = memref.load %assume_align_1[%19, %28, %30, %36] : memref<8x3x3x3xf32>
  %41 = memref.load %alloca[%c0, %c0, %34] : memref<1x1x6xf32>
  %42 = arith.mulf %39, %40 : f32
  %43 = arith.addf %41, %42 : f32
  memref.store %43, %alloca[%c0, %c0, %34] : memref<1x1x6xf32>
  %44 = arith.addi %36, %c1 : index
  cf.br ^bb10(%44 : index)
^bb12:  // pred: ^bb10
  %45 = arith.addi %34, %c1 : index
  cf.br ^bb9(%45 : index)
^bb13:  // pred: ^bb9
  %46 = arith.addi %30, %c1 : index
  cf.br ^bb7(%46 : index)
^bb14:  // pred: ^bb7
  %47 = arith.addi %28, %c1 : index
  cf.br ^bb6(%47 : index)
^bb15:  // pred: ^bb6
  %48 = vector.load %alloca[%c0, %c0, %c0] : memref<1x1x6xf32>, vector<6xf32>
  %49 = vector.broadcast %21 : vector<1xf32> to vector<6xf32>
  %50 = arith.addf %48, %49 : vector<6xf32>
  %51 = affine.apply affine_map<()[s0, s1] -> (s0 + s1)>()[%17, %22]
  vector.store %50, %assume_align_2[%19, %51, %18] : memref<8x498x498xf32>, vector<6xf32>
  %52 = arith.addi %22, %c1 : index
  cf.br ^bb3(%52 : index)
^bb16:  // pred: ^bb3
  %53 = arith.addi %19, %c1 : index
  cf.br ^bb1(%53 : index)
^bb17:  // pred: ^bb1
  return
}

