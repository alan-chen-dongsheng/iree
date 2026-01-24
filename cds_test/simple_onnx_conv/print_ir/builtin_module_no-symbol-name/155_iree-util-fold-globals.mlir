// -----// IR Dump After FoldGlobalsPass (iree-util-fold-globals) //----- //
#composite_of_896b = #util.composite<896xi8, [
    dense<"0xCE861C3F58A856BF2684FE3EF869923ED0F25F3EC28410BFFF9B1CBEF2D937C0525699BFB06C733F5A4A093E748C21BF0ACB0840B977EA3FE66A1B3F060FF1BFA81D75BF094FA2BF4351F2BFDB151BBFBA7D87BF784D94BEC84A43BFFEB64BBF75B8683FCB3D803F6FBA7BBE7F805CBECF28C33FF31600BF4470ACBFC0BC48BEF09476BFD1D5923FF07E29BFC884323EA53381BF87DBC2BF32E30640C597463F29FA7DBF5CEDCEBF523EE23F8BA5EEBE2FCEADBEF1D40DC07014E73F623D153FCEF05B3EDBCD68BF6174E5BFB06419BF8C8889BF357BE7BF861A983F670EC53EA5A9E3BEB33355BE77B9233D56B9A7BF3CB832BF2AECEFBC696A873EC27F02C0938D72BEEEB61DBF03FCE4BED8433EBFFCE5AB3F34F887BE151690BE3B7B80BE597E183E2BE13A3F8EA4513C7397B43FA73BA43EA4F4113F9F339BBF657F283F8C038EBE506512C06721763E9B4EA9BEAB294CBFEE60B3BF1E9E14BFBF97BDBF1C6740BDAA2532C08B74F2BE881E293FEFA24E3E0747963F546511BFC8B9283E615C8BBEEC3E283F4CC090BFF475F1BE4673893F4C36A03FCC55CB3DDB9A0FC0861754BF8B0A993F639752BD979D6ABFB2C114BFB687EA3FEA5DC8BF9DCC41BDAE449CBEADDE4C3EAE6440C076BEB13F5B9ED3BF9BEC603FED147F3FC58E153F5B2FC5BF8F08D73CD23D9D3DCAF9F1BEE260A83EC847BD3F745A123F0564B63FBAF500BF7671F53E4A2B1BC0D2F550BEF30C8C3F1418A03EE74F893E680D5ABF43A391BE1B22593F68255D3E8E3D413D8C9497BEF94089BF72557EBD9D7F713FDA9E063EADF80A405B720B3FE05E27BF75FACA3F6725ABBFC2A493BE2B5486BE585589BFEC42863FE406CD3EAECAE63E7BE8B9BDFD5CA6BF7226C3BF4B74E3BB7F6CE4BF399D713ED4D3893DC15AFB3EA8FBFB3ED14373BF1C2E32BF0D54BFBF2C4B4BBE0FDD95BE8C5345BF1408B73F5C65E8BD096183BF553488BFB641D43FBBC9183F155A98BF41ECE63E7C6E7DBD66A8D9BFE92A12BFD140A43DE557C53FD1C4AC3F8F41D1BE2876AEBF5FF3A1BDD55B733EE3E9C8BFA2520B3E0B8B34BFD2889EBF78A73E3D52D01ABFA5C9913FFE83A83E339D89BF96998F3EC2D4BEBE2C99EDBE31ED7B3EF021E9BDA1C8593E3011543F014A27BF94EB3A3FBB8DB53E2781CF3E917ECC3E7EF8B63D0F2F0FBEE10E543E9976F7BECA20F4BF5A2E87BF"> : tensor<8x3x3x3xf32>,
    dense<0> : vector<32xi8>,
]>
#executable_target_embedded_elf_x86_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-x86_64", {cpu = "alderlake", cpu_features = "+prfchw,-cldemote,+avx,+aes,+sahf,+pclmul,-xop,+crc32,-amx-fp8,+xsaves,-avx512fp16,-usermsr,-sm4,-egpr,+sse4.1,-avx10.1,-avx512ifma,+xsave,+sse4.2,-tsxldtrk,-sm3,-ptwrite,-widekl,-movrs,+invpcid,+64bit,+xsavec,-avx512vpopcntdq,+cmov,-avx512vp2intersect,-avx512cd,+movbe,-avxvnniint8,-ccmp,-amx-int8,-kl,-sha512,+avxvnni,-rtm,+adx,+avx2,-hreset,+movdiri,+serialize,+vpclmulqdq,-avx512vl,-uintr,-cf,+clflushopt,-raoint,-cmpccxadd,+bmi,-amx-tile,+sse,+gfni,-avxvnniint16,-amx-fp16,-zu,-ndd,+xsaveopt,+rdrnd,-avx512f,-amx-bf16,-avx512bf16,-avx512vnni,-push2pop2,+cx8,-avx512bw,+sse3,-pku,-nf,-amx-tf32,-amx-avx512,+fsgsbase,-clzero,-mwaitx,-lwp,+lzcnt,+sha,+movdir64b,-ppx,-wbnoinvd,-enqcmd,-avxneconvert,-tbm,-pconfig,-amx-complex,+ssse3,+cx16,-avx10.2,+bmi2,+fma,+popcnt,-avxifma,+f16c,-avx512bitalg,-rdpru,+clwb,+mmx,+sse2,+rdseed,-avx512vbmi2,-prefetchi,-amx-movrs,+rdpid,-fma4,-avx512vbmi,+shstk,+vaes,+waitpkg,-sgx,+fxsr,-avx512dq,-sse4a", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_triple = "x86_64-unknown-unknown-eabi-elf"}>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, ReadOnly>, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_x86_64]> : !hal.device
module {
  util.global private @__device_0 = #device_target_local
  util.global private @__constant_tensor_8x3x3x3xf32 : !hal.buffer
  util.initializer {
    %0 = util.null : !hal.fence
    %c896 = arith.constant 896 : index
    %c0_i64 = arith.constant 0 : i64
    %c0 = arith.constant 0 : index
    %buffer_usage = hal.buffer_usage<"TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage|SharingImmutable"> : i32
    %memory_type = hal.memory_type<"DeviceVisible|DeviceLocal"> : i32
    %c-1_i64 = arith.constant -1 : i64
    %c0_i32 = arith.constant 0 : i32
    %c-1_i32 = arith.constant -1 : i32
    %__device_0 = util.global.load immutable @__device_0 : !hal.device
    %buffer_cst = util.buffer.constant {alignment = 64 : index} : !util.buffer = #composite_of_896b
    %allocator = hal.device.allocator<%__device_0 : !hal.device> : !hal.allocator
    %did_import, %mapped = hal.allocator.import<%allocator : !hal.allocator> source(%buffer_cst : !util.buffer)[%c0, %c896] affinity(%c-1_i64) type(%memory_type) usage(%buffer_usage) : i1, !hal.buffer
    cf.cond_br %did_import, ^bb2(%0, %mapped : !hal.fence, !hal.buffer), ^bb1
  ^bb1:  // pred: ^bb0
    %memory_types, %buffer_usage_0 = hal.allocator.resolve_memory_properties for(#hal.device.affinity<@__device_0>) lifetime(constant) : i32, i32
    %buffer = hal.allocator.allocate<%allocator : !hal.allocator> affinity(%c-1_i64) type(%memory_types) usage(%buffer_usage_0) : !hal.buffer{%c896}
    %memory_file = hal.ex.file.from_memory device(%__device_0 : !hal.device) affinity(%c-1_i64) access(Read) buffer(%buffer_cst : !util.buffer)[%c0 for %c896] flags(%c0_i32) : !hal.file
    %fence = hal.fence.create device(%__device_0 : !hal.device) flags("None") : !hal.fence
    hal.device.queue.read<%__device_0 : !hal.device> affinity(%c-1_i64) wait(%0) signal(%fence) source(%memory_file : !hal.file)[%c0_i64] target(%buffer : !hal.buffer)[%c0] length(%c896) flags("None")
    cf.br ^bb2(%fence, %buffer : !hal.fence, !hal.buffer)
  ^bb2(%1: !hal.fence, %2: !hal.buffer):  // 2 preds: ^bb0, ^bb1
    %status = hal.fence.await until([%1]) timeout_millis(%c-1_i32) flags("None") : i32
    util.status.check_ok %status, "failed to wait on timepoint"
    util.global.store %2, @__constant_tensor_8x3x3x3xf32 : !hal.buffer
    util.return
  }
  hal.executable private @SingleConv$async_dispatch_0 {
    hal.executable.variant public @embedded_elf_x86_64 target(#executable_target_embedded_elf_x86_64) {
      hal.executable.export public @SingleConv$async_dispatch_0_conv_8x498x498x3x3x3_f32 ordinal(0) layout(#pipeline_layout) attributes {workgroup_size = [1 : index, 1 : index, 1 : index]}
      builtin.module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-unknown-eabi-elf"} {
        llvm.mlir.global private constant @__constant_8xf32(dense<[0.540064871, 1.66891348, -0.204370424, 0.173146293, -0.0351918153, -0.198536336, 0.0749602392, 0.360360771]> : tensor<8xf32>) {addr_space = 0 : i32, alignment = 64 : i64, sym_visibility = "private"} : !llvm.array<8 x f32>
        llvm.func @SingleConv$async_dispatch_0_conv_8x498x498x3x3x3_f32(%arg0: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg1: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}, %arg2: !llvm.ptr {llvm.align = 16 : i64, llvm.noalias, llvm.nonnull, llvm.noundef}) -> i32 {
          %0 = llvm.mlir.constant(0 : i32) : i32
          %1 = llvm.mlir.poison : vector<6xf32>
          %2 = llvm.mlir.constant(0 : i64) : i64
          %3 = llvm.mlir.constant(498 : index) : i64
          %4 = llvm.mlir.constant(248004 : index) : i64
          %5 = llvm.mlir.constant(9 : index) : i64
          %6 = llvm.mlir.constant(27 : index) : i64
          %7 = llvm.mlir.constant(64 : index) : i64
          %8 = llvm.mlir.constant(true) : i1
          %9 = llvm.mlir.constant(500 : index) : i64
          %10 = llvm.mlir.constant(250000 : index) : i64
          %11 = llvm.mlir.addressof @__constant_8xf32 : !llvm.ptr
          %12 = llvm.mlir.constant(-1 : index) : i64
          %13 = llvm.mlir.constant(8 : index) : i64
          %14 = llvm.mlir.constant(1 : index) : i64
          %15 = llvm.mlir.constant(3 : index) : i64
          %16 = llvm.mlir.constant(6 : index) : i64
          %17 = llvm.mlir.constant(83 : index) : i64
          %18 = llvm.mlir.constant(dense<0.000000e+00> : vector<6xf32>) : vector<6xf32>
          %19 = llvm.mlir.constant(0 : index) : i64
          %20 = llvm.getelementptr %11[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<8 x f32>
          %21 = llvm.alloca %16 x f32 {alignment = 64 : i64} : (i64) -> !llvm.ptr
          %22 = llvm.alloca %16 x f32 {alignment = 64 : i64} : (i64) -> !llvm.ptr
          %23 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %24 = llvm.extractvalue %23[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %25 = llvm.load %24 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %8 ["align"(%25, %7 : !llvm.ptr, i64)] : i1
          %26 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %27 = llvm.extractvalue %26[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %28 = llvm.getelementptr %27[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %29 = llvm.load %28 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %8 ["align"(%29, %7 : !llvm.ptr, i64)] : i1
          %30 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)>
          %31 = llvm.extractvalue %30[10] : !llvm.struct<"iree_hal_executable_dispatch_state_v0_t", (i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr)> 
          %32 = llvm.getelementptr %31[2] : (!llvm.ptr) -> !llvm.ptr, !llvm.ptr
          %33 = llvm.load %32 : !llvm.ptr -> !llvm.ptr
          llvm.intr.assume %8 ["align"(%33, %7 : !llvm.ptr, i64)] : i1
          %34 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)>
          %35 = llvm.extractvalue %34[0] : !llvm.struct<"iree_hal_executable_workgroup_state_v0_t", (i32, i32, i16, i16, i32, ptr, i32)> 
          %36 = llvm.zext %35 : i32 to i64
          %37 = llvm.sdiv %36, %17 : i64
          %38 = llvm.mul %37, %17 : i64
          %39 = llvm.icmp "ne" %36, %38 : i64
          %40 = llvm.icmp "slt" %36, %19 : i64
          %41 = llvm.and %39, %40 : i1
          %42 = llvm.add %37, %12 : i64
          %43 = llvm.select %41, %42, %37 : i1, i64
          %44 = llvm.srem %36, %17 : i64
          %45 = llvm.icmp "slt" %44, %19 : i64
          %46 = llvm.add %44, %17 overflow<nsw> : i64
          %47 = llvm.select %45, %46, %44 : i1, i64
          %48 = llvm.mul %43, %16 overflow<nsw> : i64
          %49 = llvm.mul %47, %16 overflow<nsw> : i64
          %50 = llvm.mul %19, %16 : i64
          %51 = llvm.add %50, %50 : i64
          %52 = llvm.add %51, %19 : i64
          %53 = llvm.getelementptr %22[%52] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %18, %53 {alignment = 4 : i64} : vector<6xf32>, !llvm.ptr
          llvm.br ^bb1(%19 : i64)
        ^bb1(%54: i64):  // 2 preds: ^bb0, ^bb16
          %55 = llvm.icmp "slt" %54, %13 : i64
          llvm.cond_br %55, ^bb2, ^bb17
        ^bb2:  // pred: ^bb1
          %56 = llvm.getelementptr %20[%54] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %57 = llvm.load %56 {alignment = 4 : i64} : !llvm.ptr -> vector<1xf32>
          llvm.br ^bb3(%19 : i64)
        ^bb3(%58: i64):  // 2 preds: ^bb2, ^bb15
          %59 = llvm.icmp "slt" %58, %16 : i64
          llvm.cond_br %59, ^bb4(%19 : i64), ^bb16
        ^bb4(%60: i64):  // 2 preds: ^bb3, ^bb5
          %61 = llvm.icmp "slt" %60, %16 : i64
          llvm.cond_br %61, ^bb5, ^bb6(%19 : i64)
        ^bb5:  // pred: ^bb4
          %62 = llvm.mul %19, %16 overflow<nsw, nuw> : i64
          %63 = llvm.add %62, %62 overflow<nsw, nuw> : i64
          %64 = llvm.add %63, %60 overflow<nsw, nuw> : i64
          %65 = llvm.getelementptr inbounds|nuw %22[%64] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %66 = llvm.load %65 : !llvm.ptr -> f32
          %67 = llvm.getelementptr inbounds|nuw %21[%64] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %66, %67 : f32, !llvm.ptr
          %68 = llvm.add %60, %14 : i64
          llvm.br ^bb4(%68 : i64)
        ^bb6(%69: i64):  // 2 preds: ^bb4, ^bb14
          %70 = llvm.icmp "slt" %69, %15 : i64
          llvm.cond_br %70, ^bb7(%19 : i64), ^bb15
        ^bb7(%71: i64):  // 2 preds: ^bb6, ^bb13
          %72 = llvm.icmp "slt" %71, %15 : i64
          llvm.cond_br %72, ^bb8, ^bb14
        ^bb8:  // pred: ^bb7
          %73 = llvm.add %71, %58 : i64
          %74 = llvm.add %73, %48 : i64
          llvm.br ^bb9(%19 : i64)
        ^bb9(%75: i64):  // 2 preds: ^bb8, ^bb12
          %76 = llvm.icmp "slt" %75, %16 : i64
          llvm.cond_br %76, ^bb10(%19 : i64), ^bb13
        ^bb10(%77: i64):  // 2 preds: ^bb9, ^bb11
          %78 = llvm.icmp "slt" %77, %15 : i64
          llvm.cond_br %78, ^bb11, ^bb12
        ^bb11:  // pred: ^bb10
          %79 = llvm.add %49, %75 : i64
          %80 = llvm.add %79, %77 : i64
          %81 = llvm.mul %69, %10 overflow<nsw, nuw> : i64
          %82 = llvm.mul %74, %9 overflow<nsw, nuw> : i64
          %83 = llvm.add %81, %82 overflow<nsw, nuw> : i64
          %84 = llvm.add %83, %80 overflow<nsw, nuw> : i64
          %85 = llvm.getelementptr inbounds|nuw %25[%84] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %86 = llvm.load %85 : !llvm.ptr -> f32
          %87 = llvm.mul %54, %6 overflow<nsw, nuw> : i64
          %88 = llvm.mul %69, %5 overflow<nsw, nuw> : i64
          %89 = llvm.add %87, %88 overflow<nsw, nuw> : i64
          %90 = llvm.mul %71, %15 overflow<nsw, nuw> : i64
          %91 = llvm.add %89, %90 overflow<nsw, nuw> : i64
          %92 = llvm.add %91, %77 overflow<nsw, nuw> : i64
          %93 = llvm.getelementptr inbounds|nuw %29[%92] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %94 = llvm.load %93 : !llvm.ptr -> f32
          %95 = llvm.mul %19, %16 overflow<nsw, nuw> : i64
          %96 = llvm.add %95, %95 overflow<nsw, nuw> : i64
          %97 = llvm.add %96, %75 overflow<nsw, nuw> : i64
          %98 = llvm.getelementptr inbounds|nuw %21[%97] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %99 = llvm.load %98 : !llvm.ptr -> f32
          %100 = llvm.fmul %86, %94 {fastmathFlags = #llvm.fastmath<contract>} : f32
          %101 = llvm.fadd %99, %100 {fastmathFlags = #llvm.fastmath<contract>} : f32
          llvm.store %101, %98 : f32, !llvm.ptr
          %102 = llvm.add %77, %14 : i64
          llvm.br ^bb10(%102 : i64)
        ^bb12:  // pred: ^bb10
          %103 = llvm.add %75, %14 : i64
          llvm.br ^bb9(%103 : i64)
        ^bb13:  // pred: ^bb9
          %104 = llvm.add %71, %14 : i64
          llvm.br ^bb7(%104 : i64)
        ^bb14:  // pred: ^bb7
          %105 = llvm.add %69, %14 : i64
          llvm.br ^bb6(%105 : i64)
        ^bb15:  // pred: ^bb6
          %106 = llvm.getelementptr %21[%52] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          %107 = llvm.load %106 {alignment = 4 : i64} : !llvm.ptr -> vector<6xf32>
          %108 = llvm.extractelement %57[%2 : i64] : vector<1xf32>
          %109 = llvm.insertelement %108, %1[%0 : i32] : vector<6xf32>
          %110 = llvm.shufflevector %109, %1 [0, 0, 0, 0, 0, 0] : vector<6xf32> 
          %111 = llvm.fadd %107, %110 {fastmathFlags = #llvm.fastmath<contract>} : vector<6xf32>
          %112 = llvm.add %48, %58 : i64
          %113 = llvm.mul %54, %4 : i64
          %114 = llvm.mul %112, %3 : i64
          %115 = llvm.add %113, %114 : i64
          %116 = llvm.add %115, %49 : i64
          %117 = llvm.getelementptr %33[%116] : (!llvm.ptr, i64) -> !llvm.ptr, f32
          llvm.store %111, %117 {alignment = 4 : i64} : vector<6xf32>, !llvm.ptr
          %118 = llvm.add %58, %14 : i64
          llvm.br ^bb3(%118 : i64)
        ^bb16:  // pred: ^bb3
          %119 = llvm.add %54, %14 : i64
          llvm.br ^bb1(%119 : i64)
        ^bb17:  // pred: ^bb1
          llvm.return %0 : i32
        }
      }
    }
  }
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
  util.global private @__SingleConv$async_memoize_result_0_device_0 : !hal.command_buffer
  util.initializer {
    %c-1_i64 = arith.constant -1 : i64
    %__device_0 = util.global.load immutable @__device_0 : !hal.device
    %__constant_tensor_8x3x3x3xf32 = util.global.load immutable @__constant_tensor_8x3x3x3xf32 : !hal.buffer
    %0 = util.call @__SingleConv$async_memoize_apply(%__device_0, %c-1_i64, %__constant_tensor_8x3x3x3xf32) : (!hal.device, i64, !hal.buffer) -> !hal.command_buffer
    util.global.store %0, @__SingleConv$async_memoize_result_0_device_0 : !hal.command_buffer
    util.return
  }
  util.func private @__SingleConv$async_memoize_lookup(%arg0: !hal.device, %arg1: i64) -> !hal.command_buffer {
    %0 = util.null : !hal.command_buffer
    %__device_0 = util.global.load immutable @__device_0 : !hal.device
    %1 = util.cmp.eq %arg0, %__device_0 : !hal.device
    %2 = scf.if %1 -> (!hal.command_buffer) {
      %__SingleConv$async_memoize_result_0_device_0 = util.global.load immutable @__SingleConv$async_memoize_result_0_device_0 : !hal.command_buffer
      scf.yield %__SingleConv$async_memoize_result_0_device_0 : !hal.command_buffer
    } else {
      scf.yield %0 : !hal.command_buffer
    }
    util.return %2 : !hal.command_buffer
  }
  util.func public @SingleConv$async(%arg0: !hal.buffer_view, %arg1: !hal.fence, %arg2: !hal.fence) -> !hal.buffer_view attributes {inlining_policy = #util.inline.never, iree.abi.model = "coarse-fences", iree.abi.stub} {
    %c0 = arith.constant 0 : index
    %c7936128 = arith.constant 7936128 : index
    %c3000000 = arith.constant 3000000 : index
    %c500 = arith.constant 500 : index
    %c3 = arith.constant 3 : index
    %c1 = arith.constant 1 : index
    %c-1_i64 = arith.constant -1 : i64
    %c0_i64 = arith.constant 0 : i64
    %c8 = arith.constant 8 : index
    %c498 = arith.constant 498 : index
    %__device_0 = util.global.load immutable @__device_0 : !hal.device
    %element_type_f32 = hal.element_type<f32> : i32
    %dense_row_major = hal.encoding_type<dense_row_major> : i32
    hal.buffer_view.assert<%arg0 : !hal.buffer_view> message("tensor") shape([%c1, %c3, %c500, %c500]) type(%element_type_f32) encoding(%dense_row_major)
    %buffer = hal.buffer_view.buffer<%arg0 : !hal.buffer_view> : !hal.buffer
    %allocator = hal.device.allocator<%__device_0 : !hal.device> : !hal.allocator
    hal.buffer.assert<%buffer : !hal.buffer> message("tensor") allocator(%allocator : !hal.allocator) minimum_length(%c3000000) type(DeviceVisible) usage("TransferSource|TransferTarget|Transfer|DispatchStorageRead|DispatchStorageWrite|DispatchStorage")
    %memory_types, %buffer_usage = hal.allocator.resolve_memory_properties for(#hal.device.affinity<@__device_0>) lifetime(external) : i32, i32
    %fence = hal.fence.create device(%__device_0 : !hal.device) flags("None") : !hal.fence
    %transient_buffer = hal.device.queue.alloca<%__device_0 : !hal.device> affinity(%c-1_i64) wait(%arg1) signal(%fence) pool(%c0_i64) type(%memory_types) usage(%buffer_usage) flags("None") : !hal.buffer{%c7936128}
    %0 = util.call @__SingleConv$async_memoize_lookup(%__device_0, %c-1_i64) : (!hal.device, i64) -> !hal.command_buffer
    hal.device.queue.execute.indirect<%__device_0 : !hal.device> affinity(%c-1_i64) wait(%fence) signal(%arg2) commands(%0) bindings([
      (%buffer : !hal.buffer)[%c0, %c3000000], 
      (%transient_buffer : !hal.buffer)[%c0, %c7936128]
    ]) flags("None")
    %view = hal.buffer_view.create buffer(%transient_buffer : !hal.buffer)[%c0, %c7936128] shape([%c1, %c8, %c498, %c498]) type(%element_type_f32) encoding(%dense_row_major) : !hal.buffer_view
    util.return %view : !hal.buffer_view
  }
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
}


