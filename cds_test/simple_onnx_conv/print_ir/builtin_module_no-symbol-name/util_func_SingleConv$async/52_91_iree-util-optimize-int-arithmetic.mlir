// -----// IR Dump After OptimizeIntArithmeticPass (iree-util-optimize-int-arithmetic) //----- //
util.func public @SingleConv$async(%arg0: !hal.buffer_view, %arg1: !hal.fence, %arg2: !hal.fence) -> !hal.buffer_view attributes {inlining_policy = #util.inline.never, iree.abi.model = "coarse-fences", iree.abi.stub} {
  %__constant_tensor_8x3x3x3xf32 = util.global.load immutable @__constant_tensor_8x3x3x3xf32 : tensor<8x3x3x3xf32>
  %0 = hal.tensor.import wait(%arg1) => %arg0 : !hal.buffer_view -> tensor<1x3x500x500xf32>
  %1 = flow.tensor.reshape %0 : tensor<1x3x500x500xf32> -> tensor<3x500x500xf32>
  %2 = flow.dispatch @SingleConv$async_dispatch_0::@SingleConv$async_dispatch_0_conv_8x498x498x3x3x3_f32(%1, %__constant_tensor_8x3x3x3xf32) : (tensor<3x500x500xf32>, tensor<8x3x3x3xf32>) -> tensor<8x498x498xf32>
  %3 = flow.tensor.reshape %2 : tensor<8x498x498xf32> -> tensor<1x8x498x498xf32>
  %4 = hal.tensor.barrier join(%3 : tensor<1x8x498x498xf32>) => %arg2 : !hal.fence
  %5 = hal.tensor.export %4 : tensor<1x8x498x498xf32> -> !hal.buffer_view
  util.return %5 : !hal.buffer_view
}

