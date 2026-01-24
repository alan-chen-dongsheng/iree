// -----// IR Dump After StripDebugOpsPass (iree-util-strip-debug-ops) //----- //
flow.executable private @SingleConv$async_dispatch_0 {
  flow.executable.export public @SingleConv$async_dispatch_0_conv_8x498x498x3x3x3_f32 workgroups() -> (index, index, index) {
    %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
    flow.return %x, %y, %z : index, index, index
  }
  builtin.module {
    func.func @SingleConv$async_dispatch_0_conv_8x498x498x3x3x3_f32(%arg0: !iree_tensor_ext.dispatch.tensor<readonly:tensor<3x500x500xf32>>, %arg1: !iree_tensor_ext.dispatch.tensor<readonly:tensor<8x3x3x3xf32>>, %arg2: !iree_tensor_ext.dispatch.tensor<writeonly:tensor<8x498x498xf32>>) {
      %cst = arith.constant 0.000000e+00 : f32
      %cst_0 = arith.constant dense<[0.540064871, 1.66891348, -0.204370424, 0.173146293, -0.0351918153, -0.198536336, 0.0749602392, 0.360360771]> : tensor<8xf32>
      %0 = iree_tensor_ext.dispatch.tensor.load %arg0, offsets = [0, 0, 0], sizes = [3, 500, 500], strides = [1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<3x500x500xf32>> -> tensor<3x500x500xf32>
      %1 = iree_tensor_ext.dispatch.tensor.load %arg1, offsets = [0, 0, 0, 0], sizes = [8, 3, 3, 3], strides = [1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<8x3x3x3xf32>> -> tensor<8x3x3x3xf32>
      %2 = tensor.empty() : tensor<8x498x498xf32>
      %3 = linalg.fill ins(%cst : f32) outs(%2 : tensor<8x498x498xf32>) -> tensor<8x498x498xf32>
      %4 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d3, d1 + d4, d2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d3, d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%0, %1 : tensor<3x500x500xf32>, tensor<8x3x3x3xf32>) outs(%3 : tensor<8x498x498xf32>) {
      ^bb0(%in: f32, %in_1: f32, %out: f32):
        %6 = arith.mulf %in, %in_1 : f32
        %7 = arith.addf %out, %6 : f32
        linalg.yield %7 : f32
      } -> tensor<8x498x498xf32>
      %5 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%4, %cst_0 : tensor<8x498x498xf32>, tensor<8xf32>) outs(%2 : tensor<8x498x498xf32>) {
      ^bb0(%in: f32, %in_1: f32, %out: f32):
        %6 = arith.addf %in, %in_1 : f32
        linalg.yield %6 : f32
      } -> tensor<8x498x498xf32>
      iree_tensor_ext.dispatch.tensor.store %5, %arg2, offsets = [0, 0, 0], sizes = [8, 498, 498], strides = [1, 1, 1] : tensor<8x498x498xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<8x498x498xf32>>
      return
    }
  }
}

