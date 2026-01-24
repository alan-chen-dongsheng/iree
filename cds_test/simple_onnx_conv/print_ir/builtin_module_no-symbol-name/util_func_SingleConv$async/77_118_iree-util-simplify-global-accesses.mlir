// -----// IR Dump After SimplifyGlobalAccessesPass (iree-util-simplify-global-accesses) //----- //
util.func public @SingleConv$async(%arg0: !hal.buffer_view, %arg1: !hal.fence, %arg2: !hal.fence) -> !hal.buffer_view attributes {inlining_policy = #util.inline.never, iree.abi.model = "coarse-fences", iree.abi.stub} {
  %__constant_tensor_8x3x3x3xf32 = util.global.load immutable @__constant_tensor_8x3x3x3xf32 : !stream.resource<constant>
  %__constant_tensor_8x3x3x3xf32__size = util.global.load immutable @__constant_tensor_8x3x3x3xf32__size : index
  %c0 = arith.constant 0 : index
  %c7936128 = arith.constant 7936128 : index
  %c3000000 = arith.constant 3000000 : index
  %c500 = arith.constant 500 : index
  %c3 = arith.constant 3 : index
  %c1 = arith.constant 1 : index
  %0 = stream.async.clone on(#hal.device.affinity<@__device_0>) %__constant_tensor_8x3x3x3xf32 : !stream.resource<constant>{%__constant_tensor_8x3x3x3xf32__size} -> !stream.resource<*>{%__constant_tensor_8x3x3x3xf32__size}
  %element_type_f32 = hal.element_type<f32> : i32
  %dense_row_major = hal.encoding_type<dense_row_major> : i32
  hal.buffer_view.assert<%arg0 : !hal.buffer_view> message("tensor") shape([%c1, %c3, %c500, %c500]) type(%element_type_f32) encoding(%dense_row_major)
  %1 = stream.tensor.import on(#hal.device.affinity<@__device_0>) %arg0 : !hal.buffer_view -> tensor<1x3x500x500xf32> in !stream.resource<external>{%c3000000}
  %2 = stream.timepoint.import on(#hal.device.affinity<@__device_0>) %arg1 : (!hal.fence) => !stream.timepoint
  %3 = stream.timepoint.await %2 => %1 : !stream.resource<external>{%c3000000}
  %4 = stream.async.clone on(#hal.device.affinity<@__device_0>) %3 : !stream.resource<external>{%c3000000} -> !stream.resource<*>{%c3000000}
  %5 = stream.async.dispatch on(#hal.device.affinity<@__device_0>) @SingleConv$async_dispatch_0::@SingleConv$async_dispatch_0_conv_8x498x498x3x3x3_f32(%4[%c0 to %c3000000 for %c3000000], %0[%c0 to %__constant_tensor_8x3x3x3xf32__size for %__constant_tensor_8x3x3x3xf32__size]) : (!stream.resource<*>{%c3000000}, !stream.resource<*>{%__constant_tensor_8x3x3x3xf32__size}) -> !stream.resource<*>{%c7936128}
  %result, %result_timepoint = stream.timepoint.barrier on(#hal.device.affinity<@__device_0>) %5 : !stream.resource<*>{%c7936128} => !stream.timepoint
  stream.timepoint.chain_external on(#hal.device.affinity<@__device_0>) %result_timepoint => (%arg2 : !hal.fence)
  %6 = stream.async.clone on(#hal.device.affinity<@__device_0>) %result : !stream.resource<*>{%c7936128} -> !stream.resource<external>{%c7936128}
  %7 = stream.tensor.export on(#hal.device.affinity<@__device_0>) %6 : tensor<1x8x498x498xf32> in !stream.resource<external>{%c7936128} -> !hal.buffer_view
  util.return %7 : !hal.buffer_view
}

