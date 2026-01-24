// -----// IR Dump After Canonicalizer (canonicalize) //----- //
util.func public @SingleConv$async(%arg0: !hal.buffer_view, %arg1: !hal.fence, %arg2: !hal.fence) -> !hal.buffer_view attributes {inlining_policy = #util.inline.never, iree.abi.model = "coarse-fences", iree.abi.stub} {
  %c0 = arith.constant 0 : index
  %c7936128 = arith.constant 7936128 : index
  %c3000000 = arith.constant 3000000 : index
  %c500 = arith.constant 500 : index
  %c3 = arith.constant 3 : index
  %c1 = arith.constant 1 : index
  %c864 = arith.constant 864 : index
  %c896 = arith.constant 896 : index
  %__constant_tensor_8x3x3x3xf32 = util.global.load immutable @__constant_tensor_8x3x3x3xf32 : !stream.resource<constant>
  %element_type_f32 = hal.element_type<f32> : i32
  %dense_row_major = hal.encoding_type<dense_row_major> : i32
  hal.buffer_view.assert<%arg0 : !hal.buffer_view> message("tensor") shape([%c1, %c3, %c500, %c500]) type(%element_type_f32) encoding(%dense_row_major)
  %0 = stream.tensor.import on(#hal.device.affinity<@__device_0>) %arg0 : !hal.buffer_view -> tensor<1x3x500x500xf32> in !stream.resource<external>{%c3000000}
  %1 = stream.timepoint.import on(#hal.device.affinity<@__device_0>) %arg1 : (!hal.fence) => !stream.timepoint
  %result, %result_timepoint = stream.resource.alloca uninitialized on(#hal.device.affinity<@__device_0>) await(%1) => !stream.resource<external>{%c7936128} => !stream.timepoint
  %2 = stream.cmd.execute on(#hal.device.affinity<@__device_0>) await(%result_timepoint) => with(%0 as %arg3: !stream.resource<external>{%c3000000}, %__constant_tensor_8x3x3x3xf32 as %arg4: !stream.resource<constant>{%c896}, %result as %arg5: !stream.resource<external>{%c7936128}) {
    stream.cmd.dispatch @SingleConv$async_dispatch_0::@SingleConv$async_dispatch_0_conv_8x498x498x3x3x3_f32 {
      ro %arg3[%c0 for %c3000000] : !stream.resource<external>{%c3000000},
      ro %arg4[%c0 for %c864] : !stream.resource<constant>{%c896},
      wo %arg5[%c0 for %c7936128] : !stream.resource<external>{%c7936128}
    }
  } => !stream.timepoint
  stream.timepoint.chain_external on(#hal.device.affinity<@__device_0>) %2 => (%arg2 : !hal.fence)
  %3 = stream.tensor.export on(#hal.device.affinity<@__device_0>) %result : tensor<1x8x498x498xf32> in !stream.resource<external>{%c7936128} -> !hal.buffer_view
  util.return %3 : !hal.buffer_view
}

