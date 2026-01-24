// -----// IR Dump After AffineExpandIndexOps (affine-expand-index-ops) //----- //
util.func private @__SingleConv$async_memoize_apply() -> !hal.command_buffer attributes {inlining_policy = #util.inline.never} {
  %c-1_i64 = arith.constant -1 : i64
  %c6889 = arith.constant 6889 : index
  %c2 = arith.constant 2 : index
  %c0 = arith.constant 0 : index
  %c1 = arith.constant 1 : index
  %c3000000 = arith.constant 3000000 : index
  %c896 = arith.constant 896 : index
  %c7936128 = arith.constant 7936128 : index
  %__device_0 = util.global.load immutable @__device_0 : !hal.device
  %__constant_tensor_8x3x3x3xf32 = util.global.load immutable @__constant_tensor_8x3x3x3xf32 : !hal.buffer
  %__device_0_executable_0_SingleConv$async_dispatch_0 = util.global.load immutable @__device_0_executable_0_SingleConv$async_dispatch_0 : !hal.executable
  %cmd = hal.command_buffer.create device(%__device_0 : !hal.device) mode("None") categories("Transfer|Dispatch") affinity(%c-1_i64) bindings(%c2) : !hal.command_buffer
  hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%__device_0_executable_0_SingleConv$async_dispatch_0 : !hal.executable)[%c0] workgroups([%c6889, %c1, %c1]) bindings([
    (%c0 : index)[%c0, %c3000000], 
    (%__constant_tensor_8x3x3x3xf32 : !hal.buffer)[%c0, %c896], 
    (%c1 : index)[%c0, %c7936128]
  ]) flags("None")
  hal.command_buffer.execution_barrier<%cmd : !hal.command_buffer> source("Dispatch|Transfer|CommandRetire") target("CommandIssue|Dispatch|Transfer") flags("None")
  hal.command_buffer.finalize<%cmd : !hal.command_buffer>
  util.return %cmd : !hal.command_buffer
}

