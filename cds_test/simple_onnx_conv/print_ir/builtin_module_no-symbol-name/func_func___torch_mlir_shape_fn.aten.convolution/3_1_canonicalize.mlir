// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func private @__torch_mlir_shape_fn.aten.convolution(%arg0: !torch.list<int>, %arg1: !torch.list<int>, %arg2: !torch.optional<list<int>>, %arg3: !torch.list<int>, %arg4: !torch.list<int>, %arg5: !torch.list<int>, %arg6: !torch.bool, %arg7: !torch.list<int>, %arg8: !torch.int) -> !torch.list<int> {
  %true = torch.constant.bool true
  %int0 = torch.constant.int 0
  %int1 = torch.constant.int 1
  %int2 = torch.constant.int 2
  %0 = torch.aten.len.t %arg5 : !torch.list<int> -> !torch.int
  %1 = torch.aten.gt.int %0, %int0 : !torch.int, !torch.int -> !torch.bool
  %2 = torch.aten.len.t %arg7 : !torch.list<int> -> !torch.int
  %3 = torch.aten.gt.int %2, %int0 : !torch.int, !torch.int -> !torch.bool
  %4 = torch.aten.len.t %arg0 : !torch.list<int> -> !torch.int
  %5 = torch.prim.ListConstruct  : () -> !torch.list<int>
  %6 = torch.prim.If %arg6 -> (!torch.int) {
    torch.prim.If.yield %int1 : !torch.int
  } else {
    torch.prim.If.yield %int0 : !torch.int
  }
  %7 = torch.aten.__getitem__.t %arg0, %int0 : !torch.list<int>, !torch.int -> !torch.int
  %8 = torch.aten.append.t %5, %7 : !torch.list<int>, !torch.int -> !torch.list<int>
  torch.prim.If %arg6 -> () {
    %10 = torch.aten.__getitem__.t %arg1, %6 : !torch.list<int>, !torch.int -> !torch.int
    %11 = torch.aten.mul.int %10, %arg8 : !torch.int, !torch.int -> !torch.int
    %12 = torch.aten.append.t %5, %11 : !torch.list<int>, !torch.int -> !torch.list<int>
    torch.prim.If.yield
  } else {
    %10 = torch.aten.__getitem__.t %arg1, %6 : !torch.list<int>, !torch.int -> !torch.int
    %11 = torch.aten.append.t %5, %10 : !torch.list<int>, !torch.int -> !torch.list<int>
    torch.prim.If.yield
  }
  %9 = torch.aten.__range_length %int2, %4, %int1 : !torch.int, !torch.int, !torch.int -> !torch.int
  torch.prim.Loop %9, %true, init() {
  ^bb0(%arg9: !torch.int):
    %10 = torch.aten.__derive_index %arg9, %int2, %int1 : !torch.int, !torch.int, !torch.int -> !torch.int
    %11 = torch.prim.If %1 -> (!torch.int) {
      %13 = torch.aten.sub.int %10, %int2 : !torch.int, !torch.int -> !torch.int
      %14 = torch.aten.__getitem__.t %arg5, %13 : !torch.list<int>, !torch.int -> !torch.int
      torch.prim.If.yield %14 : !torch.int
    } else {
      torch.prim.If.yield %int1 : !torch.int
    }
    %12 = torch.prim.If %3 -> (!torch.int) {
      %13 = torch.aten.sub.int %10, %int2 : !torch.int, !torch.int -> !torch.int
      %14 = torch.aten.__getitem__.t %arg7, %13 : !torch.list<int>, !torch.int -> !torch.int
      torch.prim.If.yield %14 : !torch.int
    } else {
      torch.prim.If.yield %int0 : !torch.int
    }
    torch.prim.If %arg6 -> () {
      %13 = torch.aten.__getitem__.t %arg1, %10 : !torch.list<int>, !torch.int -> !torch.int
      %14 = torch.aten.sub.int %13, %int1 : !torch.int, !torch.int -> !torch.int
      %15 = torch.aten.mul.int %11, %14 : !torch.int, !torch.int -> !torch.int
      %16 = torch.aten.__getitem__.t %arg0, %10 : !torch.list<int>, !torch.int -> !torch.int
      %17 = torch.aten.sub.int %16, %int1 : !torch.int, !torch.int -> !torch.int
      %18 = torch.aten.sub.int %10, %int2 : !torch.int, !torch.int -> !torch.int
      %19 = torch.aten.__getitem__.t %arg3, %18 : !torch.list<int>, !torch.int -> !torch.int
      %20 = torch.aten.mul.int %17, %19 : !torch.int, !torch.int -> !torch.int
      %21 = torch.aten.sub.int %10, %int2 : !torch.int, !torch.int -> !torch.int
      %22 = torch.aten.__getitem__.t %arg4, %21 : !torch.list<int>, !torch.int -> !torch.int
      %23 = torch.aten.mul.int %22, %int2 : !torch.int, !torch.int -> !torch.int
      %24 = torch.aten.sub.int %20, %23 : !torch.int, !torch.int -> !torch.int
      %25 = torch.aten.add.int %24, %15 : !torch.int, !torch.int -> !torch.int
      %26 = torch.aten.add.int %25, %12 : !torch.int, !torch.int -> !torch.int
      %27 = torch.aten.add.int %26, %int1 : !torch.int, !torch.int -> !torch.int
      %28 = torch.aten.append.t %5, %27 : !torch.list<int>, !torch.int -> !torch.list<int>
      torch.prim.If.yield
    } else {
      %13 = torch.aten.__getitem__.t %arg1, %10 : !torch.list<int>, !torch.int -> !torch.int
      %14 = torch.aten.sub.int %13, %int1 : !torch.int, !torch.int -> !torch.int
      %15 = torch.aten.mul.int %11, %14 : !torch.int, !torch.int -> !torch.int
      %16 = torch.aten.add.int %15, %int1 : !torch.int, !torch.int -> !torch.int
      %17 = torch.aten.__getitem__.t %arg0, %10 : !torch.list<int>, !torch.int -> !torch.int
      %18 = torch.aten.sub.int %10, %int2 : !torch.int, !torch.int -> !torch.int
      %19 = torch.aten.__getitem__.t %arg4, %18 : !torch.list<int>, !torch.int -> !torch.int
      %20 = torch.aten.mul.int %19, %int2 : !torch.int, !torch.int -> !torch.int
      %21 = torch.aten.add.int %17, %20 : !torch.int, !torch.int -> !torch.int
      %22 = torch.aten.sub.int %21, %16 : !torch.int, !torch.int -> !torch.int
      %23 = torch.aten.sub.int %10, %int2 : !torch.int, !torch.int -> !torch.int
      %24 = torch.aten.__getitem__.t %arg3, %23 : !torch.list<int>, !torch.int -> !torch.int
      %25 = torch.aten.floordiv.int %22, %24 : !torch.int, !torch.int -> !torch.int
      %26 = torch.aten.add.int %25, %int1 : !torch.int, !torch.int -> !torch.int
      %27 = torch.aten.append.t %5, %26 : !torch.list<int>, !torch.int -> !torch.list<int>
      torch.prim.If.yield
    }
    torch.prim.Loop.condition %true, iter()
  } : (!torch.int, !torch.bool) -> ()
  return %5 : !torch.list<int>
}

