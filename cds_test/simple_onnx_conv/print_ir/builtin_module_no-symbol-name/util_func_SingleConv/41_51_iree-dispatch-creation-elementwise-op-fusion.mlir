// -----// IR Dump After ElementwiseOpFusionPass (iree-dispatch-creation-elementwise-op-fusion) //----- //
util.func public @SingleConv(%arg0: !hal.buffer_view) -> !hal.buffer_view attributes {iree.abi.stub} {
  %0 = util.null : !hal.fence
  %c-1_i32 = arith.constant -1 : i32
  %c0 = arith.constant 0 : index
  %device_0 = hal.devices.get %c0 : !hal.device
  %fence = hal.fence.create device(%device_0 : !hal.device) flags("None") : !hal.fence
  %1 = util.call @SingleConv$async(%arg0, %0, %fence) : (!hal.buffer_view, !hal.fence, !hal.fence) -> !hal.buffer_view
  %status = hal.fence.await until([%fence]) timeout_millis(%c-1_i32) flags("None") : i32
  util.return %1 : !hal.buffer_view
}

