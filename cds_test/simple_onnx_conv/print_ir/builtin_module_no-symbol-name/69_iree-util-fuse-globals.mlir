// -----// IR Dump After FuseGlobalsPass (iree-util-fuse-globals) //----- //
#executable_target_embedded_elf_x86_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-x86_64", {cpu = "alderlake", cpu_features = "+prfchw,-cldemote,+avx,+aes,+sahf,+pclmul,-xop,+crc32,-amx-fp8,+xsaves,-avx512fp16,-usermsr,-sm4,-egpr,+sse4.1,-avx10.1,-avx512ifma,+xsave,+sse4.2,-tsxldtrk,-sm3,-ptwrite,-widekl,-movrs,+invpcid,+64bit,+xsavec,-avx512vpopcntdq,+cmov,-avx512vp2intersect,-avx512cd,+movbe,-avxvnniint8,-ccmp,-amx-int8,-kl,-sha512,+avxvnni,-rtm,+adx,+avx2,-hreset,+movdiri,+serialize,+vpclmulqdq,-avx512vl,-uintr,-cf,+clflushopt,-raoint,-cmpccxadd,+bmi,-amx-tile,+sse,+gfni,-avxvnniint16,-amx-fp16,-zu,-ndd,+xsaveopt,+rdrnd,-avx512f,-amx-bf16,-avx512bf16,-avx512vnni,-push2pop2,+cx8,-avx512bw,+sse3,-pku,-nf,-amx-tf32,-amx-avx512,+fsgsbase,-clzero,-mwaitx,-lwp,+lzcnt,+sha,+movdir64b,-ppx,-wbnoinvd,-enqcmd,-avxneconvert,-tbm,-pconfig,-amx-complex,+ssse3,+cx16,-avx10.2,+bmi2,+fma,+popcnt,-avxifma,+f16c,-avx512bitalg,-rdpru,+clwb,+mmx,+sse2,+rdseed,-avx512vbmi2,-prefetchi,-amx-movrs,+rdpid,-fma4,-avx512vbmi,+shstk,+vaes,+waitpkg,-sgx,+fxsr,-avx512dq,-sse4a", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, max_stack_allocation_size = 32768 : i64, native_vector_size = 32 : i64, target_triple = "x86_64-unknown-unknown-eabi-elf"}>
#map = affine_map<(d0, d1, d2, d3, d4, d5) -> (d3, d1 + d4, d2 + d5)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d3, d4, d5)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2)>
#map3 = affine_map<(d0, d1, d2) -> (d0, d1, d2)>
#map4 = affine_map<(d0, d1, d2) -> (d0)>
#device_target_local = #hal.device.target<"local", [#executable_target_embedded_elf_x86_64]> : !hal.device
module attributes {stream.affinity.default = #hal.device.affinity<@__device_0>} {
  util.global private @__device_0 = #device_target_local
  stream.executable private @SingleConv$async_dispatch_0 {
    stream.executable.export public @SingleConv$async_dispatch_0_conv_8x498x498x3x3x3_f32 workgroups() -> (index, index, index) {
      %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
      stream.return %x, %y, %z : index, index, index
    }
    builtin.module {
      func.func @SingleConv$async_dispatch_0_conv_8x498x498x3x3x3_f32(%arg0: !stream.binding, %arg1: !stream.binding, %arg2: !stream.binding) {
        %cst = arith.constant dense<[0.540064871, 1.66891348, -0.204370424, 0.173146293, -0.0351918153, -0.198536336, 0.0749602392, 0.360360771]> : tensor<8xf32>
        %cst_0 = arith.constant 0.000000e+00 : f32
        %c0 = arith.constant 0 : index
        %0 = stream.binding.subspan %arg0[%c0] : !stream.binding -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<3x500x500xf32>>
        %1 = stream.binding.subspan %arg1[%c0] : !stream.binding -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<8x3x3x3xf32>>
        %2 = stream.binding.subspan %arg2[%c0] : !stream.binding -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<8x498x498xf32>>
        %3 = iree_tensor_ext.dispatch.tensor.load %0, offsets = [0, 0, 0], sizes = [3, 500, 500], strides = [1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<3x500x500xf32>> -> tensor<3x500x500xf32>
        %4 = iree_tensor_ext.dispatch.tensor.load %1, offsets = [0, 0, 0, 0], sizes = [8, 3, 3, 3], strides = [1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<8x3x3x3xf32>> -> tensor<8x3x3x3xf32>
        %5 = tensor.empty() : tensor<8x498x498xf32>
        %6 = linalg.fill ins(%cst_0 : f32) outs(%5 : tensor<8x498x498xf32>) -> tensor<8x498x498xf32>
        %7 = linalg.generic {indexing_maps = [#map, #map1, #map2], iterator_types = ["parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%3, %4 : tensor<3x500x500xf32>, tensor<8x3x3x3xf32>) outs(%6 : tensor<8x498x498xf32>) {
        ^bb0(%in: f32, %in_1: f32, %out: f32):
          %9 = arith.mulf %in, %in_1 : f32
          %10 = arith.addf %out, %9 : f32
          linalg.yield %10 : f32
        } -> tensor<8x498x498xf32>
        %8 = linalg.generic {indexing_maps = [#map3, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%7, %cst : tensor<8x498x498xf32>, tensor<8xf32>) outs(%5 : tensor<8x498x498xf32>) {
        ^bb0(%in: f32, %in_1: f32, %out: f32):
          %9 = arith.addf %in, %in_1 : f32
          linalg.yield %9 : f32
        } -> tensor<8x498x498xf32>
        iree_tensor_ext.dispatch.tensor.store %8, %2, offsets = [0, 0, 0], sizes = [8, 498, 498], strides = [1, 1, 1] : tensor<8x498x498xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<8x498x498xf32>>
        return
      }
    }
  }
  util.global private @__constant_tensor_8x3x3x3xf32 : !stream.resource<constant>
  util.global private @__constant_tensor_8x3x3x3xf32__size : index
  util.initializer {
    %cst = stream.tensor.constant on(#hal.device.affinity<@__device_0>) : tensor<8x3x3x3xf32> in !stream.resource<constant> = dense<"0xCE861C3F58A856BF2684FE3EF869923ED0F25F3EC28410BFFF9B1CBEF2D937C0525699BFB06C733F5A4A093E748C21BF0ACB0840B977EA3FE66A1B3F060FF1BFA81D75BF094FA2BF4351F2BFDB151BBFBA7D87BF784D94BEC84A43BFFEB64BBF75B8683FCB3D803F6FBA7BBE7F805CBECF28C33FF31600BF4470ACBFC0BC48BEF09476BFD1D5923FF07E29BFC884323EA53381BF87DBC2BF32E30640C597463F29FA7DBF5CEDCEBF523EE23F8BA5EEBE2FCEADBEF1D40DC07014E73F623D153FCEF05B3EDBCD68BF6174E5BFB06419BF8C8889BF357BE7BF861A983F670EC53EA5A9E3BEB33355BE77B9233D56B9A7BF3CB832BF2AECEFBC696A873EC27F02C0938D72BEEEB61DBF03FCE4BED8433EBFFCE5AB3F34F887BE151690BE3B7B80BE597E183E2BE13A3F8EA4513C7397B43FA73BA43EA4F4113F9F339BBF657F283F8C038EBE506512C06721763E9B4EA9BEAB294CBFEE60B3BF1E9E14BFBF97BDBF1C6740BDAA2532C08B74F2BE881E293FEFA24E3E0747963F546511BFC8B9283E615C8BBEEC3E283F4CC090BFF475F1BE4673893F4C36A03FCC55CB3DDB9A0FC0861754BF8B0A993F639752BD979D6ABFB2C114BFB687EA3FEA5DC8BF9DCC41BDAE449CBEADDE4C3EAE6440C076BEB13F5B9ED3BF9BEC603FED147F3FC58E153F5B2FC5BF8F08D73CD23D9D3DCAF9F1BEE260A83EC847BD3F745A123F0564B63FBAF500BF7671F53E4A2B1BC0D2F550BEF30C8C3F1418A03EE74F893E680D5ABF43A391BE1B22593F68255D3E8E3D413D8C9497BEF94089BF72557EBD9D7F713FDA9E063EADF80A405B720B3FE05E27BF75FACA3F6725ABBFC2A493BE2B5486BE585589BFEC42863FE406CD3EAECAE63E7BE8B9BDFD5CA6BF7226C3BF4B74E3BB7F6CE4BF399D713ED4D3893DC15AFB3EA8FBFB3ED14373BF1C2E32BF0D54BFBF2C4B4BBE0FDD95BE8C5345BF1408B73F5C65E8BD096183BF553488BFB641D43FBBC9183F155A98BF41ECE63E7C6E7DBD66A8D9BFE92A12BFD140A43DE557C53FD1C4AC3F8F41D1BE2876AEBF5FF3A1BDD55B733EE3E9C8BFA2520B3E0B8B34BFD2889EBF78A73E3D52D01ABFA5C9913FFE83A83E339D89BF96998F3EC2D4BEBE2C99EDBE31ED7B3EF021E9BDA1C8593E3011543F014A27BF94EB3A3FBB8DB53E2781CF3E917ECC3E7EF8B63D0F2F0FBEE10E543E9976F7BECA20F4BF5A2E87BF"> : tensor<8x3x3x3xf32>
    %0 = stream.resource.size %cst : !stream.resource<constant>
    util.global.store %cst, @__constant_tensor_8x3x3x3xf32 : !stream.resource<constant>
    util.global.store %0, @__constant_tensor_8x3x3x3xf32__size : index
    util.return
  }
  util.func public @SingleConv$async(%arg0: !hal.buffer_view, %arg1: !hal.fence, %arg2: !hal.fence) -> !hal.buffer_view attributes {inlining_policy = #util.inline.never, iree.abi.model = "coarse-fences", iree.abi.stub} {
    %c1 = arith.constant 1 : index
    %c3 = arith.constant 3 : index
    %c500 = arith.constant 500 : index
    %__constant_tensor_8x3x3x3xf32 = util.global.load immutable @__constant_tensor_8x3x3x3xf32 : !stream.resource<constant>
    %__constant_tensor_8x3x3x3xf32__size = util.global.load immutable @__constant_tensor_8x3x3x3xf32__size : index
    %0 = stream.async.clone on(#hal.device.affinity<@__device_0>) %__constant_tensor_8x3x3x3xf32 : !stream.resource<constant>{%__constant_tensor_8x3x3x3xf32__size} -> !stream.resource<*>{%__constant_tensor_8x3x3x3xf32__size}
    %element_type_f32 = hal.element_type<f32> : i32
    %dense_row_major = hal.encoding_type<dense_row_major> : i32
    hal.buffer_view.assert<%arg0 : !hal.buffer_view> message("tensor") shape([%c1, %c3, %c500, %c500]) type(%element_type_f32) encoding(%dense_row_major)
    %1 = stream.tensor.sizeof on(#hal.device.affinity<@__device_0>) tensor<1x3x500x500xf32> : index
    %2 = stream.tensor.import on(#hal.device.affinity<@__device_0>) %arg0 : !hal.buffer_view -> tensor<1x3x500x500xf32> in !stream.resource<external>{%1}
    %3 = stream.timepoint.import on(#hal.device.affinity<@__device_0>) %arg1 : (!hal.fence) => !stream.timepoint
    %4 = stream.timepoint.await %3 => %2 : !stream.resource<external>{%1}
    %5 = stream.async.clone on(#hal.device.affinity<@__device_0>) %4 : !stream.resource<external>{%1} -> !stream.resource<*>{%1}
    %6 = stream.tensor.sizeof on(#hal.device.affinity<@__device_0>) tensor<3x500x500xf32> : index
    %7 = stream.tensor.sizeof on(#hal.device.affinity<@__device_0>) tensor<8x498x498xf32> : index
    %8 = stream.tensor.dispatch on(#hal.device.affinity<@__device_0>) @SingleConv$async_dispatch_0::@SingleConv$async_dispatch_0_conv_8x498x498x3x3x3_f32(%5, %0) : (tensor<3x500x500xf32> in !stream.resource<*>{%6}, tensor<8x3x3x3xf32> in !stream.resource<*>{%__constant_tensor_8x3x3x3xf32__size}) -> tensor<8x498x498xf32> in !stream.resource<*>{%7}
    %9 = stream.tensor.sizeof on(#hal.device.affinity<@__device_0>) tensor<1x8x498x498xf32> : index
    %result, %result_timepoint = stream.timepoint.barrier on(#hal.device.affinity<@__device_0>) %8 : !stream.resource<*>{%9} => !stream.timepoint
    stream.timepoint.chain_external on(#hal.device.affinity<@__device_0>) %result_timepoint => (%arg2 : !hal.fence)
    %10 = stream.async.clone on(#hal.device.affinity<@__device_0>) %result : !stream.resource<*>{%9} -> !stream.resource<external>{%9}
    %11 = stream.tensor.export on(#hal.device.affinity<@__device_0>) %10 : tensor<1x8x498x498xf32> in !stream.resource<external>{%9} -> !hal.buffer_view
    util.return %11 : !hal.buffer_view
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


