// -----// IR Dump After Canonicalizer (canonicalize) //----- //
vm.func private @SingleConv$async(%arg0: !vm.ref<!hal.buffer_view>, %arg1: !vm.ref<!hal.fence>, %arg2: !vm.ref<!hal.fence>) -> !vm.ref<!hal.buffer_view> attributes {inlining_policy = #util.inline.never} {
  %c16 = vm.const.i32 16
  %c1 = vm.const.i32 1
  %c553648160 = vm.const.i32 553648160
  %c3075 = vm.const.i32 3075
  %c48 = vm.const.i32 48
  %zero = vm.const.i64.zero
  %c7936128 = vm.const.i64 7936128
  %c3000000 = vm.const.i64 3000000
  %c500 = vm.const.i64 500
  %c3 = vm.const.i64 3
  %c1_0 = vm.const.i64 1
  %c-1 = vm.const.i64 -1
  %c8 = vm.const.i64 8
  %c498 = vm.const.i64 498
  %__device_0 = vm.global.load.ref immutable @__device_0 : !vm.ref<!hal.device>
  %__SingleConv$async_memoize_result_0_device_0 = vm.global.load.ref immutable @__SingleConv$async_memoize_result_0_device_0 : !vm.ref<!hal.command_buffer>
  %_utf8_tensor_FC1814BC4A58F22A = vm.const.ref.rodata @_utf8_tensor_FC1814BC4A58F22A : !vm.buffer
  vm.call.variadic @hal.buffer_view.assert(%arg0, %_utf8_tensor_FC1814BC4A58F22A, %c553648160, %c1, [%c1_0, %c3, %c500, %c500]) : (!vm.ref<!hal.buffer_view>, !vm.buffer, i32, i32, i64 ...)
  %ref = vm.call @hal.buffer_view.buffer(%arg0) {nosideeffects} : (!vm.ref<!hal.buffer_view>) -> !vm.ref<!hal.buffer>
  %ref_1 = vm.call @hal.device.allocator(%__device_0) {nosideeffects} : (!vm.ref<!hal.device>) -> !vm.ref<!hal.allocator>
  %_utf8_tensor_FC1814BC4A58F22A_2 = vm.const.ref.rodata @_utf8_tensor_FC1814BC4A58F22A : !vm.buffer
  vm.call @hal.buffer.assert(%ref, %_utf8_tensor_FC1814BC4A58F22A_2, %ref_1, %c3000000, %c16, %c3075) : (!vm.ref<!hal.buffer>, !vm.buffer, !vm.ref<!hal.allocator>, i64, i32, i32) -> ()
  %ref_3 = vm.call @hal.fence.create(%__device_0, %zero) : (!vm.ref<!hal.device>, i64) -> !vm.ref<!hal.fence>
  %ref_4 = vm.call @hal.device.queue.alloca(%__device_0, %c-1, %arg1, %ref_3, %zero, %c48, %c3075, %c7936128, %zero) : (!vm.ref<!hal.device>, i64, !vm.ref<!hal.fence>, !vm.ref<!hal.fence>, i64, i32, i32, i64, i64) -> !vm.ref<!hal.buffer>
  vm.call.variadic @hal.device.queue.execute.indirect(%__device_0, %c-1, %ref_3, %arg2, %__SingleConv$async_memoize_result_0_device_0, %zero, [(%ref, %zero, %c3000000), (%ref_4, %zero, %c7936128)]) : (!vm.ref<!hal.device>, i64, !vm.ref<!hal.fence>, !vm.ref<!hal.fence>, !vm.ref<!hal.command_buffer>, i64, tuple<!vm.ref<!hal.buffer>, i64, i64> ...)
  %ref_5 = vm.call.variadic @hal.buffer_view.create(%ref_4, %zero, %c7936128, %c553648160, %c1, [%c1_0, %c8, %c498, %c498]) {nosideeffects} : (!vm.ref<!hal.buffer>, i64, i64, i32, i32, i64 ...) -> !vm.ref<!hal.buffer_view>
  vm.return %ref_5 : !vm.ref<!hal.buffer_view>
}

