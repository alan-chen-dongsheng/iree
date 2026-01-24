// -----// IR Dump After Canonicalizer (canonicalize) //----- //
util.func public @SingleConv$async(%arg0: !hal.buffer_view, %arg1: !hal.fence, %arg2: !hal.fence) -> !hal.buffer_view attributes {inlining_policy = #util.inline.never, iree.abi.model = "coarse-fences", iree.abi.stub} {
  %c498 = arith.constant 498 : index
  %c8 = arith.constant 8 : index
  %c0_i64 = arith.constant 0 : i64
  %c-1_i64 = arith.constant -1 : i64
  %c1 = arith.constant 1 : index
  %c3 = arith.constant 3 : index
  %c500 = arith.constant 500 : index
  %c3000000 = arith.constant 3000000 : index
  %c7936128 = arith.constant 7936128 : index
  %c0 = arith.constant 0 : index
  %element_type_f32 = hal.element_type<f32> : i32
  %dense_row_major = hal.encoding_type<dense_row_major> : i32
  hal.buffer_view.assert<%arg0 : !hal.buffer_view> message("tensor") shape([%c1, %c3, %c500, %c500]) type(%element_type_f32) encoding(%dense_row_major)
  %buffer = hal.buffer_view.buffer<%arg0 : !hal.buffer_view> : !hal.buffer
  %__device_0 = util.global.load immutable @__device_0 : !hal.device
  %allocator = hal.device.allocator<%__device_0 : !hal.device> : !hal.allocator
  hal.buffer.assert<%buffer : !hal.buffer> message("tensor") allocator(%allocator : !hal.allocator) minimum_length(%c3000000) type(DeviceVisible) usage("TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage")
  %memory_types, %buffer_usage = hal.allocator.resolve_memory_properties for(#hal.device.affinity<@__device_0>) lifetime(external) : i32, i32
  %__device_0_0 = util.global.load immutable @__device_0 : !hal.device
  %fence = hal.fence.create device(%__device_0_0 : !hal.device) flags("None") : !hal.fence
  %transient_buffer = hal.device.queue.alloca<%__device_0_0 : !hal.device> affinity(%c-1_i64) wait(%arg1) signal(%fence) pool(%c0_i64) type(%memory_types) usage(%buffer_usage) flags("None") : !hal.buffer{%c7936128}
  %__device_0_1 = util.global.load immutable @__device_0 : !hal.device
  %0 = util.call @__SingleConv$async_memoize_lookup(%__device_0_1, %c-1_i64) : (!hal.device, i64) -> !hal.command_buffer
  hal.device.queue.execute.indirect<%__device_0_1 : !hal.device> affinity(%c-1_i64) wait(%fence) signal(%arg2) commands(%0) bindings([
    (%buffer : !hal.buffer)[%c0, %c3000000], 
    (%transient_buffer : !hal.buffer)[%c0, %c7936128]
  ]) flags("None")
  %dense_row_major_2 = hal.encoding_type<dense_row_major> : i32
  %element_type_f32_3 = hal.element_type<f32> : i32
  %view = hal.buffer_view.create buffer(%transient_buffer : !hal.buffer)[%c0, %c7936128] shape([%c1, %c8, %c498, %c498]) type(%element_type_f32_3) encoding(%dense_row_major_2) : !hal.buffer_view
  util.return %view : !hal.buffer_view
}

