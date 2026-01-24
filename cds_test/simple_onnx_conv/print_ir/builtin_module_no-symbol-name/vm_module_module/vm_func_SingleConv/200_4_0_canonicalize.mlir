// -----// IR Dump After Canonicalizer (canonicalize) //----- //
vm.func private @SingleConv(%arg0: !vm.ref<!hal.buffer_view>) -> !vm.ref<!hal.buffer_view> {
  %null = vm.const.ref.zero : !vm.ref<!hal.fence>
  %c-1 = vm.const.i32 -1
  %zero = vm.const.i64.zero
  %zero_0 = vm.const.i32.zero
  %ref = vm.call @hal.devices.get(%zero_0) {nosideeffects} : (i32) -> !vm.ref<!hal.device>
  %ref_1 = vm.call @hal.fence.create(%ref, %zero) : (!vm.ref<!hal.device>, i64) -> !vm.ref<!hal.fence>
  %ref_2 = vm.call @SingleConv$async(%arg0, %null, %ref_1) : (!vm.ref<!hal.buffer_view>, !vm.ref<!hal.fence>, !vm.ref<!hal.fence>) -> !vm.ref<!hal.buffer_view>
  %0 = vm.call.variadic @hal.fence.await(%c-1, %zero, [%ref_1]) : (i32, i64, !vm.ref<!hal.fence> ...) -> i32
  vm.return %ref_2 : !vm.ref<!hal.buffer_view>
}

