// -----// IR Dump After SimplifyGlobalAccessesPass (iree-util-simplify-global-accesses) //----- //
util.func private @__SingleConv$async_memoize_apply(%arg0: !hal.device, %arg1: i64, %arg2: !hal.buffer) -> !hal.command_buffer attributes {inlining_policy = #util.inline.never} {
  %c6889 = arith.constant 6889 : index
  %c2 = arith.constant 2 : index
  %c0 = arith.constant 0 : index
  %c1 = arith.constant 1 : index
  %c3000000 = arith.constant 3000000 : index
  %c896 = arith.constant 896 : index
  %c7936128 = arith.constant 7936128 : index
  %cmd = hal.command_buffer.create device(%arg0 : !hal.device) mode("None") categories("Transfer|Dispatch") affinity(%arg1) bindings(%c2) : !hal.command_buffer
  %exe = hal.executable.lookup device(%arg0 : !hal.device) executable(@SingleConv$async_dispatch_0) : !hal.executable
  %ordinal = hal.executable.export.ordinal target(@SingleConv$async_dispatch_0::@embedded_elf_x86_64::@SingleConv$async_dispatch_0_conv_8x498x498x3x3x3_f32) : index
  hal.command_buffer.dispatch<%cmd : !hal.command_buffer> target(%exe : !hal.executable)[%ordinal] workgroups([%c6889, %c1, %c1]) bindings([
    (%c0 : index)[%c0, %c3000000], 
    (%arg2 : !hal.buffer)[%c0, %c896], 
    (%c1 : index)[%c0, %c7936128]
  ]) flags("None")
  hal.command_buffer.execution_barrier<%cmd : !hal.command_buffer> source("Dispatch|Transfer|CommandRetire") target("CommandIssue|Dispatch|Transfer") flags("None")
  hal.command_buffer.finalize<%cmd : !hal.command_buffer>
  util.return %cmd : !hal.command_buffer
}

