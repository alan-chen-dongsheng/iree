// -----// IR Dump After Canonicalizer (canonicalize) //----- //
util.func public @SingleConv$async(%arg0: !hal.buffer_view, %arg1: !hal.fence, %arg2: !hal.fence) -> !hal.buffer_view attributes {inlining_policy = #util.inline.never, iree.abi.model = "coarse-fences", iree.abi.stub} {
  %c1 = arith.constant 1 : index
  %c3 = arith.constant 3 : index
  %c500 = arith.constant 500 : index
  %__constant_tensor_8x3x3x3xf32 = util.global.load immutable @__constant_tensor_8x3x3x3xf32 : !stream.resource<constant>
  %__constant_tensor_8x3x3x3xf32__size = util.global.load immutable @__constant_tensor_8x3x3x3xf32__size : index
  %0 = stream.async.clone on(#hal.device.affinity<@__device_0>) %__constant_tensor_8x3x3x3xf32 : !stream.resource<constant>{%__constant_tensor_8x3x3x3xf32__size} -> !stream.resource<*>{%__constant_tensor_8x3x3x3xf32__size}
  %element_type_f32 = hal.element_type<f32> : i32
  %dense_row_major = hal.encoding_type<dense_row_major> : i32
  hal.buffer_view.assert<%arg0 : !hal.buffer_view> message("tensor") shape([%c1, %c3, %c500, %c500]) type(%element_type_f32) encoding(%dense_row_major)
  %1 = stream.tensor.sizeof on(#hal.device.affinity<@__device_0>) tensor<1x3x500x500xf32> : index
  %2 = stream.tensor.import on(#hal.device.affinity<@__device_0>) %arg0 : !hal.buffer_view -> tensor<1x3x500x500xf32> in !stream.resource<external>{%1}
  %3 = stream.timepoint.import on(#hal.device.affinity<@__device_0>) %arg1 : (!hal.fence) => !stream.timepoint
  %4 = stream.timepoint.await %3 => %2 : !stream.resource<external>{%1}
  %5 = stream.async.clone on(#hal.device.affinity<@__device_0>) %4 : !stream.resource<external>{%1} -> !stream.resource<*>{%1}
  %6 = stream.tensor.sizeof on(#hal.device.affinity<@__device_0>) tensor<3x500x500xf32> : index
  %7 = stream.tensor.sizeof on(#hal.device.affinity<@__device_0>) tensor<8x498x498xf32> : index
  %8 = stream.tensor.dispatch on(#hal.device.affinity<@__device_0>) @SingleConv$async_dispatch_0::@SingleConv$async_dispatch_0_conv_8x498x498x3x3x3_f32(%5, %0) : (tensor<3x500x500xf32> in !stream.resource<*>{%6}, tensor<8x3x3x3xf32> in !stream.resource<*>{%__constant_tensor_8x3x3x3xf32__size}) -> tensor<8x498x498xf32> in !stream.resource<*>{%7}
  %9 = stream.tensor.sizeof on(#hal.device.affinity<@__device_0>) tensor<1x8x498x498xf32> : index
  %result, %result_timepoint = stream.timepoint.barrier on(#hal.device.affinity<@__device_0>) %8 : !stream.resource<*>{%9} => !stream.timepoint
  stream.timepoint.chain_external on(#hal.device.affinity<@__device_0>) %result_timepoint => (%arg2 : !hal.fence)
  %10 = stream.async.clone on(#hal.device.affinity<@__device_0>) %result : !stream.resource<*>{%9} -> !stream.resource<external>{%9}
  %11 = stream.tensor.export on(#hal.device.affinity<@__device_0>) %10 : tensor<1x8x498x498xf32> in !stream.resource<external>{%9} -> !hal.buffer_view
  util.return %11 : !hal.buffer_view
}

