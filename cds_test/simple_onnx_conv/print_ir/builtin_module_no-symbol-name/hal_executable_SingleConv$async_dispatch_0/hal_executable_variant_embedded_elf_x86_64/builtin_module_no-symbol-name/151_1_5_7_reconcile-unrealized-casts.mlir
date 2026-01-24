// -----// IR Dump After ReconcileUnrealizedCastsPass (reconcile-unrealized-casts) //----- //
module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-unknown-eabi-elf"} {
  llvm.mlir.global private constant @__constant_8xf32(dense<[0.540064871, 1.66891348, -0.204370424, 0.173146293, -0.0351918153, -0.198536336, 0.0749602392, 0.360360771]> : tensor<8xf32>) {addr_space = 0 : i32, alignment = 64 : i64} : !llvm.array<8 x f32>
  llvm.func @SingleConv$async_dispatch_0_conv_8x498x498x3x3x3_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.poison : vector<6xf32>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.mlir.constant(498 : index) : i64
    %4 = llvm.mlir.constant(248004 : index) : i64
    %5 = llvm.mlir.constant(9 : index) : i64
    %6 = llvm.mlir.constant(27 : index) : i64
    %7 = llvm.mlir.constant(64 : index) : i64
    %8 = llvm.mlir.constant(true) : i1
    %9 = llvm.mlir.constant(500 : index) : i64
    %10 = llvm.mlir.constant(250000 : index) : i64
    %11 = llvm.mlir.addressof @__constant_8xf32 : !llvm.ptr
    %12 = llvm.mlir.constant(-1 : index) : i64
    %13 = llvm.mlir.constant(8 : index) : i64
    %14 = llvm.mlir.constant(1 : index) : i64
    %15 = llvm.mlir.constant(3 : index) : i64
    %16 = llvm.mlir.constant(6 : index) : i64
    %17 = llvm.mlir.constant(83 : index) : i64
    %18 = llvm.mlir.constant(dense<0.000000e+00> : vector<6xf32>) : vector<6xf32>
    %19 = llvm.mlir.constant(0 : index) : i64
    %20 = llvm.getelementptr %11[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<8 x f32>
    %21 = llvm.alloca %16 x f32 {alignment = 64 : i64} : (i64) -> !llvm.ptr
    %22 = llvm.alloca %16 x f32 {alignment = 64 : i64} : (i64) -> !llvm.ptr
    %23 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
    %24 = llvm.extractvalue %23[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
    %25 = llvm.load %24 : !llvm.ptr -> !llvm.ptr
    llvm.intr.assume %8 ["align"(%25, %7 : !llvm.ptr, i64)] : i1
    %26 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
    %27 = llvm.extractvalue %26[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
    %28 = llvm.getelementptr %27[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
    %29 = llvm.load %28 : !llvm.ptr -> !llvm.ptr
    llvm.intr.assume %8 ["align"(%29, %7 : !llvm.ptr, i64)] : i1
    %30 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
    %31 = llvm.extractvalue %30[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
    %32 = llvm.getelementptr %31[2] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
    %33 = llvm.load %32 : !llvm.ptr -> !llvm.ptr
    llvm.intr.assume %8 ["align"(%33, %7 : !llvm.ptr, i64)] : i1
    %34 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
    %35 = llvm.extractvalue %34[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
    %36 = llvm.zext %35 : i32 to i64
    %37 = llvm.sdiv %36, %17 : i64
    %38 = llvm.mul %37, %17 : i64
    %39 = llvm.icmp "ne" %36, %38 : i64
    %40 = llvm.icmp "slt" %36, %19 : i64
    %41 = llvm.and %39, %40 : i1
    %42 = llvm.add %37, %12 : i64
    %43 = llvm.select %41, %42, %37 : i1, i64
    %44 = llvm.srem %36, %17 : i64
    %45 = llvm.icmp "slt" %44, %19 : i64
    %46 = llvm.add %44, %17 overflow<nsw> : i64
    %47 = llvm.select %45, %46, %44 : i1, i64
    %48 = llvm.mul %43, %16 overflow<nsw> : i64
    %49 = llvm.mul %47, %16 overflow<nsw> : i64
    %50 = llvm.mul %19, %16 : i64
    %51 = llvm.mul %19, %16 : i64
    %52 = llvm.add %50, %51 : i64
    %53 = llvm.add %52, %19 : i64
    %54 = llvm.getelementptr %22[%53] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %18, %54 {alignment = 4 : i64} : vector<6xf32>, !llvm.ptr
    llvm.br ^bb1(%19 : i64)
  ^bb1(%55: i64):  // 2 preds: ^bb0, ^bb16
    %56 = llvm.icmp "slt" %55, %13 : i64
    llvm.cond_br %56, ^bb2, ^bb17
  ^bb2:  // pred: ^bb1
    %57 = llvm.getelementptr %20[%55] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %58 = llvm.load %57 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
    llvm.br ^bb3(%19 : i64)
  ^bb3(%59: i64):  // 2 preds: ^bb2, ^bb15
    %60 = llvm.icmp "slt" %59, %16 : i64
    llvm.cond_br %60, ^bb4(%19 : i64), ^bb16
  ^bb4(%61: i64):  // 2 preds: ^bb3, ^bb5
    %62 = llvm.icmp "slt" %61, %16 : i64
    llvm.cond_br %62, ^bb5, ^bb6(%19 : i64)
  ^bb5:  // pred: ^bb4
    %63 = llvm.mul %19, %16 overflow<nsw, nuw> : i64
    %64 = llvm.mul %19, %16 overflow<nsw, nuw> : i64
    %65 = llvm.add %63, %64 overflow<nsw, nuw> : i64
    %66 = llvm.add %65, %61 overflow<nsw, nuw> : i64
    %67 = llvm.getelementptr inbounds|nuw %22[%66] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %68 = llvm.load %67 : !llvm.ptr -> f32
    %69 = llvm.mul %19, %16 overflow<nsw, nuw> : i64
    %70 = llvm.mul %19, %16 overflow<nsw, nuw> : i64
    %71 = llvm.add %69, %70 overflow<nsw, nuw> : i64
    %72 = llvm.add %71, %61 overflow<nsw, nuw> : i64
    %73 = llvm.getelementptr inbounds|nuw %21[%72] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %68, %73 : f32, !llvm.ptr
    %74 = llvm.add %61, %14 : i64
    llvm.br ^bb4(%74 : i64)
  ^bb6(%75: i64):  // 2 preds: ^bb4, ^bb14
    %76 = llvm.icmp "slt" %75, %15 : i64
    llvm.cond_br %76, ^bb7(%19 : i64), ^bb15
  ^bb7(%77: i64):  // 2 preds: ^bb6, ^bb13
    %78 = llvm.icmp "slt" %77, %15 : i64
    llvm.cond_br %78, ^bb8, ^bb14
  ^bb8:  // pred: ^bb7
    %79 = llvm.add %77, %59 : i64
    %80 = llvm.add %79, %48 : i64
    llvm.br ^bb9(%19 : i64)
  ^bb9(%81: i64):  // 2 preds: ^bb8, ^bb12
    %82 = llvm.icmp "slt" %81, %16 : i64
    llvm.cond_br %82, ^bb10(%19 : i64), ^bb13
  ^bb10(%83: i64):  // 2 preds: ^bb9, ^bb11
    %84 = llvm.icmp "slt" %83, %15 : i64
    llvm.cond_br %84, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %85 = llvm.add %49, %81 : i64
    %86 = llvm.add %85, %83 : i64
    %87 = llvm.mul %75, %10 overflow<nsw, nuw> : i64
    %88 = llvm.mul %80, %9 overflow<nsw, nuw> : i64
    %89 = llvm.add %87, %88 overflow<nsw, nuw> : i64
    %90 = llvm.add %89, %86 overflow<nsw, nuw> : i64
    %91 = llvm.getelementptr inbounds|nuw %25[%90] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %92 = llvm.load %91 : !llvm.ptr -> f32
    %93 = llvm.mul %55, %6 overflow<nsw, nuw> : i64
    %94 = llvm.mul %75, %5 overflow<nsw, nuw> : i64
    %95 = llvm.add %93, %94 overflow<nsw, nuw> : i64
    %96 = llvm.mul %77, %15 overflow<nsw, nuw> : i64
    %97 = llvm.add %95, %96 overflow<nsw, nuw> : i64
    %98 = llvm.add %97, %83 overflow<nsw, nuw> : i64
    %99 = llvm.getelementptr inbounds|nuw %29[%98] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %100 = llvm.load %99 : !llvm.ptr -> f32
    %101 = llvm.mul %19, %16 overflow<nsw, nuw> : i64
    %102 = llvm.mul %19, %16 overflow<nsw, nuw> : i64
    %103 = llvm.add %101, %102 overflow<nsw, nuw> : i64
    %104 = llvm.add %103, %81 overflow<nsw, nuw> : i64
    %105 = llvm.getelementptr inbounds|nuw %21[%104] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %106 = llvm.load %105 : !llvm.ptr -> f32
    %107 = llvm.fmul %92, %100 : f32
    %108 = llvm.fadd %106, %107 : f32
    %109 = llvm.mul %19, %16 overflow<nsw, nuw> : i64
    %110 = llvm.mul %19, %16 overflow<nsw, nuw> : i64
    %111 = llvm.add %109, %110 overflow<nsw, nuw> : i64
    %112 = llvm.add %111, %81 overflow<nsw, nuw> : i64
    %113 = llvm.getelementptr inbounds|nuw %21[%112] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %108, %113 : f32, !llvm.ptr
    %114 = llvm.add %83, %14 : i64
    llvm.br ^bb10(%114 : i64)
  ^bb12:  // pred: ^bb10
    %115 = llvm.add %81, %14 : i64
    llvm.br ^bb9(%115 : i64)
  ^bb13:  // pred: ^bb9
    %116 = llvm.add %77, %14 : i64
    llvm.br ^bb7(%116 : i64)
  ^bb14:  // pred: ^bb7
    %117 = llvm.add %75, %14 : i64
    llvm.br ^bb6(%117 : i64)
  ^bb15:  // pred: ^bb6
    %118 = llvm.mul %19, %16 : i64
    %119 = llvm.mul %19, %16 : i64
    %120 = llvm.add %118, %119 : i64
    %121 = llvm.add %120, %19 : i64
    %122 = llvm.getelementptr %21[%121] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    %123 = llvm.load %122 {alignment = 4 : i64} : !llvm.ptr -> vector<6xf32>
    %124 = llvm.extractelement %58[%2 : i64] : vector<1xf32>
    %125 = llvm.insertelement %124, %1[%0 : i32] : vector<6xf32>
    %126 = llvm.shufflevector %125, %1 [0, 0, 0, 0, 0, 0] : vector<6xf32> 
    %127 = llvm.fadd %123, %126 : vector<6xf32>
    %128 = llvm.add %48, %59 : i64
    %129 = llvm.mul %55, %4 : i64
    %130 = llvm.mul %128, %3 : i64
    %131 = llvm.add %129, %130 : i64
    %132 = llvm.add %131, %49 : i64
    %133 = llvm.getelementptr %33[%132] : (!llvm.ptr, i64) -> !llvm.ptr, f32
    llvm.store %127, %133 {alignment = 4 : i64} : vector<6xf32>, !llvm.ptr
    %134 = llvm.add %59, %14 : i64
    llvm.br ^bb3(%134 : i64)
  ^bb16:  // pred: ^bb3
    %135 = llvm.add %55, %14 : i64
    llvm.br ^bb1(%135 : i64)
  ^bb17:  // pred: ^bb1
    llvm.return %0 : i32
  }
}

