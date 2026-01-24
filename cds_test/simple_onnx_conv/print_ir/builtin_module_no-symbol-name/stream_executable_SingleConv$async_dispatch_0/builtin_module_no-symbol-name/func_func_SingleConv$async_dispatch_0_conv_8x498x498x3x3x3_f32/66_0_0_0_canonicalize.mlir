// -----// IR Dump After Canonicalizer (canonicalize) //----- //
func.func @SingleConv$async_dispatch_0_conv_8x498x498x3x3x3_f32(%arg0: !stream.binding, %arg1: !stream.binding, %arg2: !stream.binding) {
  %cst = arith.constant dense<[0.540064871, 1.66891348, -0.204370424, 0.173146293, -0.0351918153, -0.198536336, 0.0749602392, 0.360360771]> : tensor<8xf32>
  %cst_0 = arith.constant 0.000000e+00 : f32
  %c0 = arith.constant 0 : index
  %0 = stream.binding.subspan %arg0[%c0] : !stream.binding -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<3x500x500xf32>>
  %1 = stream.binding.subspan %arg1[%c0] : !stream.binding -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<8x3x3x3xf32>>
  %2 = stream.binding.subspan %arg2[%c0] : !stream.binding -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<8x498x498xf32>>
  %3 = iree_tensor_ext.dispatch.tensor.load %0, offsets = [0, 0, 0], sizes = [3, 500, 500], strides = [1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<3x500x500xf32>> -> tensor<3x500x500xf32>
  %4 = iree_tensor_ext.dispatch.tensor.load %1, offsets = [0, 0, 0, 0], sizes = [8, 3, 3, 3], strides = [1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<8x3x3x3xf32>> -> tensor<8x3x3x3xf32>
  %5 = tensor.empty() : tensor<8x498x498xf32>
  %6 = linalg.fill ins(%cst_0 : f32) outs(%5 : tensor<8x498x498xf32>) -> tensor<8x498x498xf32>
  %7 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d3, d1 + d4, d2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d3, d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%3, %4 : tensor<3x500x500xf32>, tensor<8x3x3x3xf32>) outs(%6 : tensor<8x498x498xf32>) {
  ^bb0(%in: f32, %in_1: f32, %out: f32):
    %9 = arith.mulf %in, %in_1 : f32
    %10 = arith.addf %out, %9 : f32
    linalg.yield %10 : f32
  } -> tensor<8x498x498xf32>
  %8 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%7, %cst : tensor<8x498x498xf32>, tensor<8xf32>) outs(%5 : tensor<8x498x498xf32>) {
  ^bb0(%in: f32, %in_1: f32, %out: f32):
    %9 = arith.addf %in, %in_1 : f32
    linalg.yield %9 : f32
  } -> tensor<8x498x498xf32>
  iree_tensor_ext.dispatch.tensor.store %8, %2, offsets = [0, 0, 0], sizes = [8, 498, 498], strides = [1, 1, 1] : tensor<8x498x498xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<8x498x498xf32>>
  return
}

