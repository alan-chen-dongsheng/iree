// -----// IR Dump After ElideRedundantCommandsPass (iree-hal-elide-redundant-commands) //----- //
util.initializer {
  %c-1_i64 = arith.constant -1 : i64
  %__device_0 = util.global.load immutable @__device_0 : !hal.device
  %__constant_tensor_8x3x3x3xf32 = util.global.load immutable @__constant_tensor_8x3x3x3xf32 : !hal.buffer
  %0 = util.call @__SingleConv$async_memoize_apply(%__device_0, %c-1_i64, %__constant_tensor_8x3x3x3xf32) : (!hal.device, i64, !hal.buffer) -> !hal.command_buffer
  util.global.store %0, @__SingleConv$async_memoize_result_0_device_0 : !hal.command_buffer
  util.return
}

