// -----// IR Dump After Canonicalizer (canonicalize) //----- //
vm.func private @__init() {
  %null = vm.const.ref.zero : !vm.buffer
  %c1 = vm.const.i32 1
  %null_0 = vm.const.ref.zero : !vm.ref<!hal.fence>
  %c896 = vm.const.i64 896
  %zero = vm.const.i64.zero
  %c527363 = vm.const.i32 527363
  %c48 = vm.const.i32 48
  %zero_1 = vm.const.i32.zero
  %c-1 = vm.const.i32 -1
  %c14 = vm.const.i32 14
  %c-1_2 = vm.const.i64 -1
  %c18 = vm.const.i32 18
  %c1_3 = vm.const.i64 1
  %null_4 = vm.const.ref.zero : !vm.ref<!hal.device>
  %0 = vm.call @hal.devices.count() {nosideeffects} : () -> i32
  %1 = vm.ext.i32.i64.s %0 : i32 -> i64
  vm.br ^bb1(%zero, %zero, %null_4 : i64, i64, !vm.ref<!hal.device>)
^bb1(%2: i64, %3: i64, %4: !vm.ref<!hal.device>):  // 2 preds: ^bb0, ^bb4
  %rnz = vm.cmp.nz.ref %4 : !vm.ref<!hal.device>
  %5 = vm.xor.i32 %rnz, %c1 : i32
  %slt = vm.cmp.lt.i64.s %2, %1 : i64
  %6 = vm.and.i32 %5, %slt : i32
  vm.cond_br %6, ^bb2, ^bb5
^bb2:  // pred: ^bb1
  %7 = vm.trunc.i64.i32 %2 : i64 -> i32
  %ref = vm.call @hal.devices.get(%7) {nosideeffects} : (i32) -> !vm.ref<!hal.device>
  %_utf8_hal_device_id_C6650FF277232B5A = vm.const.ref.rodata @_utf8_hal_device_id_C6650FF277232B5A : !vm.buffer
  %_utf8_local_1A8FF0278D7661D8 = vm.const.ref.rodata @_utf8_local_1A8FF0278D7661D8 : !vm.buffer
  %8:2 = vm.call @hal.device.query.i64(%ref, %_utf8_hal_device_id_C6650FF277232B5A, %_utf8_local_1A8FF0278D7661D8) {nosideeffects} : (!vm.ref<!hal.device>, !vm.buffer, !vm.buffer) -> (i32, i64)
  %nz = vm.cmp.nz.i64 %8#1 : i64
  %9 = vm.select.i32 %8#0, %nz, %zero_1 : i32
  vm.cond_br %9, ^bb3, ^bb4(%zero_1 : i32)
^bb3:  // pred: ^bb2
  %_utf8_hal_executable_format_E03EECB63A2AAF52 = vm.const.ref.rodata @_utf8_hal_executable_format_E03EECB63A2AAF52 : !vm.buffer
  %_utf8_embedded_elf_x86_64_FF16E34B4A5F9C83 = vm.const.ref.rodata @_utf8_embedded_elf_x86_64_FF16E34B4A5F9C83 : !vm.buffer
  %10:2 = vm.call @hal.device.query.i64(%ref, %_utf8_hal_executable_format_E03EECB63A2AAF52, %_utf8_embedded_elf_x86_64_FF16E34B4A5F9C83) {nosideeffects} : (!vm.ref<!hal.device>, !vm.buffer, !vm.buffer) -> (i32, i64)
  %nz_5 = vm.cmp.nz.i64 %10#1 : i64
  %11 = vm.select.i32 %10#0, %nz_5, %zero_1 : i32
  vm.br ^bb4(%11 : i32)
^bb4(%12: i32):  // 2 preds: ^bb2, ^bb3
  %eq = vm.cmp.eq.i64 %3, %zero : i64
  %13 = vm.select.i64 %12, %c1_3, %zero : i64
  %14 = vm.add.i64 %3, %13 : i64
  %15 = vm.and.i32 %12, %eq : i32
  %ref_6 = vm.select.ref %15, %ref, %null_4 : !vm.ref<!hal.device>
  %16 = vm.add.i64 %2, %c1_3 : i64
  vm.br ^bb1(%16, %14, %ref_6 : i64, i64, !vm.ref<!hal.device>)
^bb5:  // pred: ^bb1
  vm.cond_br %5, ^bb6, ^bb7
^bb6:  // pred: ^bb5
  vm.fail %c18, "HAL device `__device_0` not found or unavailable: #hal.device.target<\22local\22, [#hal.executable.target<\22llvm-cpu\22, \22embedded-elf-x86_64\22, {cpu = \22alderlake\22, cpu_features = \22+prfchw,-cldemote,+avx,+aes,+sahf,+pclmul,-xop,+crc32,-amx-fp8,+xsaves,-avx512fp16,-usermsr,-sm4,-egpr,+sse4.1,-avx10.1,-avx512ifma,+xsave,+sse4.2,-tsxldtrk,-sm3,-ptwrite,-widekl,-movrs,+invpcid,+64bit,+xsavec,-avx512vpopcntdq,+cmov,-avx512vp2intersect,-avx512cd,+movbe,-avxvnniint8,-ccmp,-amx-int8,-kl,-sha512,+avxvnni,-rtm,+adx,+avx2,-hreset,+movdiri,+serialize,+vpclmulqdq,-avx512vl,-uintr,-cf,+clflushopt,-raoint,-cmpccxadd,+bmi,-amx-tile,+sse,+gfni,-avxvnniint16,-amx-fp16,-zu,-ndd,+xsaveopt,+rdrnd,-avx512f,-amx-bf16,-avx512bf16,-avx512vnni,-push2pop2,+cx8,-avx512bw,+sse3,-pku,-nf,-amx-tf32,-amx-avx512,+fsgsbase,-clzero,-mwaitx,-lwp,+lzcnt,+sha,+movdir64b,-ppx,-wbnoinvd,-enqcmd,-avxneconvert,-tbm,-pconfig,-amx-complex,+ssse3,+cx16,-avx10.2,+bmi2,+fma,+popcnt,-avxifma,+f16c,-avx512bitalg,-rdpru,+clwb,+mmx,+sse2,+rdseed,-avx512vbmi2,-prefetchi,-amx-movrs,+rdpid,-fma4,-avx512vbmi,+shstk,+vaes,+waitpkg,-sgx,+fxsr,-avx512dq,-sse4a\22, data_layout = \22e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128\22, iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_triple = \22x86_64-unknown-unknown-eabi-elf\22}>]>"
^bb7:  // pred: ^bb5
  %_utf8_hal_executable_format_E03EECB63A2AAF52_7 = vm.const.ref.rodata @_utf8_hal_executable_format_E03EECB63A2AAF52 : !vm.buffer
  %_utf8_embedded_elf_x86_64_FF16E34B4A5F9C83_8 = vm.const.ref.rodata @_utf8_embedded_elf_x86_64_FF16E34B4A5F9C83 : !vm.buffer
  %17:2 = vm.call @hal.device.query.i64(%4, %_utf8_hal_executable_format_E03EECB63A2AAF52_7, %_utf8_embedded_elf_x86_64_FF16E34B4A5F9C83_8) {nosideeffects} : (!vm.ref<!hal.device>, !vm.buffer, !vm.buffer) -> (i32, i64)
  %nz_9 = vm.cmp.nz.i64 %17#1 : i64
  %18 = vm.select.i32 %17#0, %nz_9, %zero_1 : i32
  %19 = vm.select.i64 %18, %zero, %c-1_2 : i64
  %eq_10 = vm.cmp.eq.i64 %19, %zero : i64
  vm.global.store.ref %4, @__device_0 : !vm.ref<!hal.device>
  vm.cond_br %eq_10, ^bb8, ^bb9
^bb8:  // pred: ^bb7
  %SingleConv_async_dispatch_0_embedded_elf_x86_64 = vm.const.ref.rodata @SingleConv_async_dispatch_0_embedded_elf_x86_64 : !vm.buffer
  %ref_11 = vm.call @hal.executable.create(%4, %c-1_2, %_utf8_embedded_elf_x86_64_FF16E34B4A5F9C83_8, %SingleConv_async_dispatch_0_embedded_elf_x86_64, %null) {nosideeffects} : (!vm.ref<!hal.device>, i64, !vm.buffer, !vm.buffer, !vm.buffer) -> !vm.ref<!hal.executable>
  %__device_0 = vm.global.load.ref @__device_0 : !vm.ref<!hal.device>
  %_const = vm.const.ref.rodata @_const : !vm.buffer
  %ref_12 = vm.call @hal.device.allocator(%__device_0) {nosideeffects} : (!vm.ref<!hal.device>) -> !vm.ref<!hal.allocator>
  %ref_13 = vm.call @hal.allocator.import(%ref_12, %c1, %c-1_2, %c48, %c527363, %_const, %zero, %c896) : (!vm.ref<!hal.allocator>, i32, i64, i32, i32, !vm.buffer, i64, i64) -> !vm.ref<!hal.buffer>
  %rnz_14 = vm.cmp.nz.ref %ref_13 : !vm.ref<!hal.buffer>
  vm.global.store.ref %ref_11, @__device_0_executable_0_SingleConv$async_dispatch_0 : !vm.ref<!hal.executable>
  vm.cond_br %rnz_14, ^bb11(%null_0, %ref_13 : !vm.ref<!hal.fence>, !vm.ref<!hal.buffer>), ^bb10
^bb9:  // pred: ^bb7
  vm.fail %c14, "HAL device `__device_0` does not support any variant of executable `SingleConv$async_dispatch_0`; available formats: [embedded-elf-x86_64]"
^bb10:  // pred: ^bb8
  %ref_15 = vm.call @hal.allocator.allocate(%ref_12, %c-1_2, %c48, %c527363, %c896) : (!vm.ref<!hal.allocator>, i64, i32, i32, i64) -> !vm.ref<!hal.buffer>
  %ref_16 = vm.call @hal.ex.file.from_memory(%__device_0, %c-1_2, %c1, %_const, %zero, %c896, %zero_1) : (!vm.ref<!hal.device>, i64, i32, !vm.buffer, i64, i64, i32) -> !vm.ref<!hal.file>
  %ref_17 = vm.call @hal.fence.create(%__device_0, %zero) : (!vm.ref<!hal.device>, i64) -> !vm.ref<!hal.fence>
  vm.call @hal.device.queue.read(%__device_0, %c-1_2, %null_0, %ref_17, %ref_16, %zero, %ref_15, %zero, %c896, %zero) : (!vm.ref<!hal.device>, i64, !vm.ref<!hal.fence>, !vm.ref<!hal.fence>, !vm.ref<!hal.file>, i64, !vm.ref<!hal.buffer>, i64, i64, i64) -> ()
  vm.br ^bb11(%ref_17, %ref_15 : !vm.ref<!hal.fence>, !vm.ref<!hal.buffer>)
^bb11(%20: !vm.ref<!hal.fence>, %21: !vm.ref<!hal.buffer>):  // 2 preds: ^bb8, ^bb10
  %22 = vm.call.variadic @hal.fence.await(%c-1, %zero, [%20]) : (i32, i64, !vm.ref<!hal.fence> ...) -> i32
  vm.cond_br %22, ^bb13, ^bb12
^bb12:  // pred: ^bb11
  vm.global.store.ref %21, @__constant_tensor_8x3x3x3xf32 : !vm.ref<!hal.buffer>
  %ref_18 = vm.call @__SingleConv$async_memoize_apply() : () -> !vm.ref<!hal.command_buffer>
  vm.global.store.ref %ref_18, @__SingleConv$async_memoize_result_0_device_0 : !vm.ref<!hal.command_buffer>
  vm.return
^bb13:  // pred: ^bb11
  vm.fail %22, "failed to wait on timepoint"
}

