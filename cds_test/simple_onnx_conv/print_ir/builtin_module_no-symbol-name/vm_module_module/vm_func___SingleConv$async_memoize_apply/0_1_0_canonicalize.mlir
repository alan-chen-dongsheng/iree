// -----// IR Dump After Canonicalizer (canonicalize) //----- //
vm.func private @__SingleConv$async_memoize_apply() -> !vm.ref<!hal.command_buffer> attributes {inlining_policy = #util.inline.never} {
  %c13 = vm.const.i32 13
  %c28 = vm.const.i32 28
  %null = vm.const.ref.zero : !vm.ref<!hal.buffer>
  %c1 = vm.const.i32 1
  %c6889 = vm.const.i32 6889
  %c2 = vm.const.i32 2
  %c3 = vm.const.i32 3
  %zero = vm.const.i32.zero
  %c7936128 = vm.const.i64 7936128
  %c896 = vm.const.i64 896
  %c3000000 = vm.const.i64 3000000
  %zero_0 = vm.const.i64.zero
  %c-1 = vm.const.i64 -1
  %__device_0 = vm.global.load.ref @__device_0 : !vm.ref<!hal.device>
  %__constant_tensor_8x3x3x3xf32 = vm.global.load.ref @__constant_tensor_8x3x3x3xf32 : !vm.ref<!hal.buffer>
  %__device_0_executable_0_SingleConv$async_dispatch_0 = vm.global.load.ref @__device_0_executable_0_SingleConv$async_dispatch_0 : !vm.ref<!hal.executable>
  %ref = vm.call @hal.command_buffer.create(%__device_0, %zero, %c3, %c-1, %c2) : (!vm.ref<!hal.device>, i32, i32, i64, i32) -> !vm.ref<!hal.command_buffer>
  vm.call.variadic @hal.command_buffer.dispatch(%ref, %__device_0_executable_0_SingleConv$async_dispatch_0, %zero, %c6889, %c1, %c1, %zero_0, [], [(%zero, %zero, %null, %zero_0, %c3000000), (%zero, %zero, %__constant_tensor_8x3x3x3xf32, %zero_0, %c896), (%zero, %c1, %null, %zero_0, %c7936128)]) : (!vm.ref<!hal.command_buffer>, !vm.ref<!hal.executable>, i32, i32, i32, i32, i64, i32 ..., tuple<i32, i32, !vm.ref<!hal.buffer>, i64, i64> ...)
  vm.call @hal.command_buffer.execution_barrier(%ref, %c28, %c13, %zero_0) : (!vm.ref<!hal.command_buffer>, i32, i32, i64) -> ()
  vm.call @hal.command_buffer.finalize(%ref) : (!vm.ref<!hal.command_buffer>) -> ()
  vm.return %ref : !vm.ref<!hal.command_buffer>
}

