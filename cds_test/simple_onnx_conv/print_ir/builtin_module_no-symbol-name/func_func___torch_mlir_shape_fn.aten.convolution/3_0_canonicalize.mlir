// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func private @__torch_mlir_shape_fn.aten.convolution(%arg0: !torch.list<int>, %arg1: !torch.list<int>, %arg2: !torch.optional<list<int>>, %arg3: !torch.list<int>, %arg4: !torch.list<int>, %arg5: !torch.list<int>, %arg6: !torch.bool, %arg7: !torch.list<int>, %arg8: !torch.int) -> !torch.list<int> {
  %0 = call @__torch__.torch.jit._shape_functions.conv_forwards(%arg0, %arg1, %arg2, %arg3, %arg4, %arg5, %arg6, %arg7, %arg8) : (!torch.list<int>, !torch.list<int>, !torch.optional<list<int>>, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.list<int>, !torch.int) -> !torch.list<int>
  return %0 : !torch.list<int>
}

