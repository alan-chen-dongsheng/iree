// -----// IR Dump After CSE (cse) //----- //
vm.module public @module {
  vm.global.ref private mutable @__device_0 : !vm.ref<!hal.device>
  vm.global.ref private mutable @__device_0_executable_0_SingleConv$async_dispatch_0 : !vm.ref<!hal.executable>
  vm.global.ref private mutable @__constant_tensor_8x3x3x3xf32 : !vm.ref<!hal.buffer>
  vm.global.ref private mutable @__SingleConv$async_memoize_result_0_device_0 : !vm.ref<!hal.command_buffer>
  vm.rodata private @_utf8_hal_device_id_C6650FF277232B5A {alignment = 1 : i64} "hal.device.id"
  vm.rodata private @_utf8_local_1A8FF0278D7661D8 {alignment = 1 : i64} "local*"
  vm.rodata private @_utf8_hal_executable_format_E03EECB63A2AAF52 {alignment = 1 : i64} "hal.executable.format"
  vm.rodata private @_utf8_embedded_elf_x86_64_FF16E34B4A5F9C83 {alignment = 1 : i64} "embedded-elf-x86_64"
  vm.rodata private @SingleConv_async_dispatch_0_embedded_elf_x86_64 {alignment = 16 : i64, mime_type = "application/x-elf"} dense<"0x7F454C4602010100000000000000000003003E000100000000000000000000004000000000000000580C00000000000000000000400038000700400015001300060000000400000040000000000000004000000000000000400000000000000088010000000000008801000000000000080000000000000001000000040000000000000000000000000000000000000000000000000000000C050000000000000C0500000000000000100000000000000100000005000000100500000000000010150000000000001015000000000000F101000000000000F10100000000000000100000000000000100000006000000100700000000000010270000000000001027000000000000A001000000000000F00800000000000000100000000000000200000006000000F007000000000000F027000000000000F027000000000000C000000000000000C000000000000000080000000000000052E5746404000000100700000000000010270000000000001027000000000000A001000000000000F008000000000000010000000000000051E57464060000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000012000700F016000000000000110000000000000002000000020000000000000001000000000000000000000000697265655F68616C5F65786563757461626C655F6C6962726172795F717565727900000000000018270000000000000800000000000000A00300000000000028270000000000000800000000000000101500000000000030270000000000000800000000000000000400000000000040270000000000000800000000000000350400000000000058270000000000000800000000000000B00400000000000060270000000000000800000000000000B00400000000000070270000000000000800000000000000102700000000000090270000000000000800000000000000282700000000000098270000000000000800000000000000C003000000000000B02700000000000008000000000000003027000000000000C82700000000000008000000000000003827000000000000D0270000000000000800000000000000502700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000B1410A3FF59ED53F7B4651BE434D313E4B2510BD1C4D4BBEC184993D3581B83E53696E676C65436F6E76246173796E635F64697370617463685F3000000000000000000000000000000000030100000001000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000053696E676C65436F6E76246173796E635F64697370617463685F305F636F6E765F3878343938783439387833783378335F663332002F686F6D652F6364732F776F726B73706163652F697265652F6364735F746573742F73696D706C655F6F6E6E785F636F6E762F64756D705F6578656375746561626C652F636F6E666967757265645F6D6F64756C655F53696E676C65436F6E76246173796E635F64697370617463685F302E6D6C697200000000001400000000000000017A5200017810011B0C070890010000280000001C00000040100000D301000000410E108602430D065483078C068D058E048F0303B7010C070800001000000048000000F411000011000000000000000000000000000000554889E54157415641554154534883E4C04881EC00010000488B7620488B46088B0A4869D11F72593148C1EA246BFA5329F98D3C128D3C7F48897C2438C5F857C0C1E1038D0C49488B7E104801CF48897C24284869D2E02E00004801CA4803164889542420C5F82984248000000048C78424900000000000000031C90F1F4000488D15E9EDFFFFC4E27D18048A48894C24304C69C910230F004C034C24284C8B4424204531DB662E0F1F84000000000031C966666666662E0F1F840000000000C5FA108C8C80000000C5FA114C8C4048FFC14883F90675E8488B4C2438498D1C0B4989C64C89C64531E4660F1F4400004D89F54989F231D20F1F8400000000004D89D731FF66662E0F1F840000000000C5FA104CBC4031C90F1F840000000000C4C17A10148FC4C269B94C8D0048FFC14883F90375EAC5FA114CBC4048FFC74983C7044883FF0675C748FFC24981C2D00700004983C50C4883FA0375A349FFC44881C640420F004983C6244983FC030F857BFFFFFFC5FC584C24404869CBC8070000C4E37D19CA01C4C17813540910C4C178110C0949FFC34981C0D00700004983FB060F8507FFFFFF488B4C243048FFC14883C06C4883F9080F85C1FEFFFF31C0488D65D85B415C415D415E415F5DC5F877C3CCCCCCCCCCCCCCCCCCCCCCCCCC31C083FF06488D0D74100000480F44C1C300000000000000000000000000000006000000000000000000000000000000000000000000000000000000000000000000000000000000030000007600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001E000000000000000800000000000000FBFFFF6F000000000100000000000000070000000000000038020000000000000800000000000000200100000000000009000000000000001800000000000000F9FFFF6F000000000C000000000000000600000000000000C8010000000000000B000000000000001800000000000000050000000000000010020000000000000A0000000000000023000000000000000400000000000000F80100000000000000000000000000000000000000000000011101250E1305030E10171B0EB44219110112060000022E001101120640186E0E030E3A0B3B0B49133F190000032400030E3E0B0B0B0000004B0000000400000000000801B00000002C000000000000000000330000001015000000000000D3010000021015000000000000D30100000156770000007700000001014700000003AC000000050400636F6E666967757265645F6D6F64756C655F53696E676C65436F6E76246173796E635F64697370617463685F302E6D6C6972002F686F6D652F6364732F776F726B73706163652F697265652F6364735F746573742F73696D706C655F6F6E6E785F636F6E762F64756D705F6578656375746561626C650053696E676C65436F6E76246173796E635F64697370617463685F305F636F6E765F3878343938783439387833783378335F66333200696E74004952454500470000000200000000004F0000002A00000053696E676C65436F6E76246173796E635F64697370617463685F305F636F6E765F3878343938783439387833783378335F6633320000000000160000000200000000004F00000047000000696E740000000000B500000004004A000000010101FB0E0D00010101010000000100000100636F6E666967757265645F6D6F64756C655F53696E676C65436F6E76246173796E635F64697370617463685F302E6D6C6972000000000000090210150000000000000105080A030B08744B50037608BA030A4A0376022401060377086606031308BA06036DC8060313089006036D0874060313024801050A69050871050A02481A050803786606036D022E0103135806030C0812060B66020E00010149524545000000000000000000000000000000000000000000000000002300000000020900F02700000000000000000000000000000100000012000700F0160000000000001100000000000000002E64796E73796D002E68617368002E64796E737472002E72656C612E64796E002E726F64617461002E65685F6672616D65002E74657874002E646174612E72656C2E726F002E64796E616D6963002E72656C726F5F70616464696E67002E64656275675F616262726576002E64656275675F696E666F002E64656275675F737472002E64656275675F7075626E616D6573002E64656275675F7075627479706573002E64656275675F6C696E65002E636F6D6D656E74002E73796D746162002E7368737472746162002E7374727461620000697265655F68616C5F65786563757461626C655F6C6962726172795F7175657279005F44594E414D494300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000B0000000200000000000000C801000000000000C801000000000000300000000000000003000000010000000800000000000000180000000000000009000000050000000200000000000000F801000000000000F80100000000000018000000000000000100000000000000040000000000000004000000000000000F000000030000000200000000000000100200000000000010020000000000002300000000000000000000000000000001000000000000000000000000000000170000000400000002000000000000003802000000000000380200000000000020010000000000000100000000000000080000000000000018000000000000002100000001000000120000000000000080030000000000008003000000000000300100000000000000000000000000004000000000000000000000000000000029000000010000000200000000000000B004000000000000B0040000000000005C000000000000000000000000000000080000000000000000000000000000003300000001000000060000000000000010150000000000001005000000000000F1010000000000000000000000000000100000000000000000000000000000003900000001000000030000000000000010270000000000001007000000000000E00000000000000000000000000000001000000000000000000000000000000046000000060000000300000000000000F027000000000000F007000000000000C0000000000000000300000000000000080000000000000010000000000000004F000000080000000300000000000000B028000000000000B00800000000000050070000000000000000000000000000010000000000000000000000000000005E0000000100000000000000000000000000000000000000B00800000000000039000000000000000000000000000000010000000000000000000000000000006C0000000100000000000000000000000000000000000000E9080000000000004F000000000000000000000000000000010000000000000000000000000000007800000001000000300000000000000000000000000000003809000000000000B500000000000000000000000000000001000000000000000100000000000000830000000100000000000000000000000000000000000000ED090000000000004B00000000000000000000000000000001000000000000000000000000000000930000000100000000000000000000000000000000000000380A0000000000001A00000000000000000000000000000001000000000000000000000000000000A30000000100000000000000000000000000000000000000520A000000000000B900000000000000000000000000000001000000000000000000000000000000AF00000001000000300000000000000000000000000000000B0B0000000000000500000000000000000000000000000001000000000000000100000000000000B80000000200000000000000000000000000000000000000100B0000000000004800000000000000140000000200000008000000000000001800000000000000C00000000300000000000000000000000000000000000000580B000000000000D200000000000000000000000000000001000000000000000000000000000000CA00000003000000000000000000000000000000000000002A0C0000000000002C00000000000000000000000000000001000000000000000000000000000000"> : vector<4504xi8>
  vm.rodata private @_const {alignment = 64 : i64} #util.composite<896xi8, [
    dense<"0xCE861C3F58A856BF2684FE3EF869923ED0F25F3EC28410BFFF9B1CBEF2D937C0525699BFB06C733F5A4A093E748C21BF0ACB0840B977EA3FE66A1B3F060FF1BFA81D75BF094FA2BF4351F2BFDB151BBFBA7D87BF784D94BEC84A43BFFEB64BBF75B8683FCB3D803F6FBA7BBE7F805CBECF28C33FF31600BF4470ACBFC0BC48BEF09476BFD1D5923FF07E29BFC884323EA53381BF87DBC2BF32E30640C597463F29FA7DBF5CEDCEBF523EE23F8BA5EEBE2FCEADBEF1D40DC07014E73F623D153FCEF05B3EDBCD68BF6174E5BFB06419BF8C8889BF357BE7BF861A983F670EC53EA5A9E3BEB33355BE77B9233D56B9A7BF3CB832BF2AECEFBC696A873EC27F02C0938D72BEEEB61DBF03FCE4BED8433EBFFCE5AB3F34F887BE151690BE3B7B80BE597E183E2BE13A3F8EA4513C7397B43FA73BA43EA4F4113F9F339BBF657F283F8C038EBE506512C06721763E9B4EA9BEAB294CBFEE60B3BF1E9E14BFBF97BDBF1C6740BDAA2532C08B74F2BE881E293FEFA24E3E0747963F546511BFC8B9283E615C8BBEEC3E283F4CC090BFF475F1BE4673893F4C36A03FCC55CB3DDB9A0FC0861754BF8B0A993F639752BD979D6ABFB2C114BFB687EA3FEA5DC8BF9DCC41BDAE449CBEADDE4C3EAE6440C076BEB13F5B9ED3BF9BEC603FED147F3FC58E153F5B2FC5BF8F08D73CD23D9D3DCAF9F1BEE260A83EC847BD3F745A123F0564B63FBAF500BF7671F53E4A2B1BC0D2F550BEF30C8C3F1418A03EE74F893E680D5ABF43A391BE1B22593F68255D3E8E3D413D8C9497BEF94089BF72557EBD9D7F713FDA9E063EADF80A405B720B3FE05E27BF75FACA3F6725ABBFC2A493BE2B5486BE585589BFEC42863FE406CD3EAECAE63E7BE8B9BDFD5CA6BF7226C3BF4B74E3BB7F6CE4BF399D713ED4D3893DC15AFB3EA8FBFB3ED14373BF1C2E32BF0D54BFBF2C4B4BBE0FDD95BE8C5345BF1408B73F5C65E8BD096183BF553488BFB641D43FBBC9183F155A98BF41ECE63E7C6E7DBD66A8D9BFE92A12BFD140A43DE557C53FD1C4AC3F8F41D1BE2876AEBF5FF3A1BDD55B733EE3E9C8BFA2520B3E0B8B34BFD2889EBF78A73E3D52D01ABFA5C9913FFE83A83E339D89BF96998F3EC2D4BEBE2C99EDBE31ED7B3EF021E9BDA1C8593E3011543F014A27BF94EB3A3FBB8DB53E2781CF3E917ECC3E7EF8B63D0F2F0FBEE10E543E9976F7BECA20F4BF5A2E87BF"> : tensor<8x3x3x3xf32>,
    dense<0> : vector<32xi8>,
]>
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
  vm.rodata private @_utf8_tensor_FC1814BC4A58F22A {alignment = 1 : i64} "tensor"
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
    %__device_0 = vm.global.load.ref @__device_0 : !vm.ref<!hal.device>
    %__SingleConv$async_memoize_result_0_device_0 = vm.global.load.ref @__SingleConv$async_memoize_result_0_device_0 : !vm.ref<!hal.command_buffer>
    %_utf8_tensor_FC1814BC4A58F22A = vm.const.ref.rodata @_utf8_tensor_FC1814BC4A58F22A : !vm.buffer
    vm.call.variadic @hal.buffer_view.assert(%arg0, %_utf8_tensor_FC1814BC4A58F22A, %c553648160, %c1, [%c1_0, %c3, %c500, %c500]) : (!vm.ref<!hal.buffer_view>, !vm.buffer, i32, i32, i64 ...)
    %ref = vm.call @hal.buffer_view.buffer(%arg0) {nosideeffects} : (!vm.ref<!hal.buffer_view>) -> !vm.ref<!hal.buffer>
    %ref_1 = vm.call @hal.device.allocator(%__device_0) {nosideeffects} : (!vm.ref<!hal.device>) -> !vm.ref<!hal.allocator>
    vm.call @hal.buffer.assert(%ref, %_utf8_tensor_FC1814BC4A58F22A, %ref_1, %c3000000, %c16, %c3075) : (!vm.ref<!hal.buffer>, !vm.buffer, !vm.ref<!hal.allocator>, i64, i32, i32) -> ()
    %ref_2 = vm.call @hal.fence.create(%__device_0, %zero) : (!vm.ref<!hal.device>, i64) -> !vm.ref<!hal.fence>
    %ref_3 = vm.call @hal.device.queue.alloca(%__device_0, %c-1, %arg1, %ref_2, %zero, %c48, %c3075, %c7936128, %zero) : (!vm.ref<!hal.device>, i64, !vm.ref<!hal.fence>, !vm.ref<!hal.fence>, i64, i32, i32, i64, i64) -> !vm.ref<!hal.buffer>
    vm.call.variadic @hal.device.queue.execute.indirect(%__device_0, %c-1, %ref_2, %arg2, %__SingleConv$async_memoize_result_0_device_0, %zero, [(%ref, %zero, %c3000000), (%ref_3, %zero, %c7936128)]) : (!vm.ref<!hal.device>, i64, !vm.ref<!hal.fence>, !vm.ref<!hal.fence>, !vm.ref<!hal.command_buffer>, i64, tuple<!vm.ref<!hal.buffer>, i64, i64> ...)
    %ref_4 = vm.call.variadic @hal.buffer_view.create(%ref_3, %zero, %c7936128, %c553648160, %c1, [%c1_0, %c8, %c498, %c498]) {nosideeffects} : (!vm.ref<!hal.buffer>, i64, i64, i32, i32, i64 ...) -> !vm.ref<!hal.buffer_view>
    vm.return %ref_4 : !vm.ref<!hal.buffer_view>
  }
  vm.export @SingleConv$async attributes {iree.abi.model = "coarse-fences", iree.abi.stub}
  vm.import private @hal.ex.file.from_memory(%device : !vm.ref<!hal.device>, %queue_affinity : i64, %access : i32, %buffer : !vm.buffer, %offset : i64, %length : i64, %flags : i32) -> !vm.ref<!hal.file>
  vm.import private @hal.allocator.allocate(%allocator : !vm.ref<!hal.allocator>, %queue_affinity : i64, %memory_types : i32, %buffer_usage : i32, %allocation_size : i64) -> !vm.ref<!hal.buffer>
  vm.import private @hal.allocator.import(%allocator : !vm.ref<!hal.allocator>, %try : i32, %queue_affinity : i64, %memory_types : i32, %buffer_usage : i32, %source : !vm.buffer, %offset : i64, %length : i64) -> !vm.ref<!hal.buffer>
  vm.import private @hal.buffer.assert(%buffer : !vm.ref<!hal.buffer>, %message : !vm.buffer, %allocator : !vm.ref<!hal.allocator>, %minimum_length : i64, %memory_types : i32, %buffer_usage : i32)
  vm.import private @hal.buffer_view.create(%buffer : !vm.ref<!hal.buffer>, %source_offset : i64, %source_length : i64, %element_type : i32, %encoding_type : i32, %shape : i64 ...) -> !vm.ref<!hal.buffer_view> attributes {nosideeffects}
  vm.import private @hal.buffer_view.assert(%buffer_view : !vm.ref<!hal.buffer_view>, %message : !vm.buffer, %element_type : i32, %encoding_type : i32, %shape : i64 ...)
  vm.import private @hal.buffer_view.buffer(%buffer_view : !vm.ref<!hal.buffer_view>) -> !vm.ref<!hal.buffer> attributes {nosideeffects}
  vm.import private @hal.command_buffer.create(%device : !vm.ref<!hal.device>, %modes : i32, %command_categories : i32, %queue_affinity : i64, %binding_capacity : i32) -> !vm.ref<!hal.command_buffer> attributes {minimum_version = 6 : i32}
  vm.import private @hal.command_buffer.finalize(%command_buffer : !vm.ref<!hal.command_buffer>)
  vm.import private @hal.command_buffer.execution_barrier(%command_buffer : !vm.ref<!hal.command_buffer>, %source_stage_mask : i32, %target_stage_mask : i32, %flags : i64)
  vm.import private @hal.command_buffer.dispatch(%command_buffer : !vm.ref<!hal.command_buffer>, %executable : !vm.ref<!hal.executable>, %entry_point : i32, %workgroup_x : i32, %workgroup_y : i32, %workgroup_z : i32, %flags : i64, %constants : i32 ..., %bindings : tuple<i32, i32, !vm.ref<!hal.buffer>, i64, i64> ...)
  vm.import private @hal.device.allocator(%device : !vm.ref<!hal.device>) -> !vm.ref<!hal.allocator> attributes {nosideeffects}
  vm.import private @hal.device.query.i64(%device : !vm.ref<!hal.device>, %category : !vm.buffer, %key : !vm.buffer) -> (i32, i64) attributes {nosideeffects}
  vm.import private @hal.device.queue.alloca(%device : !vm.ref<!hal.device>, %queue_affinity : i64, %wait_fence : !vm.ref<!hal.fence>, %signal_fence : !vm.ref<!hal.fence>, %pool : i64, %memory_types : i32, %buffer_usage : i32, %allocation_size : i64, %flags : i64) -> !vm.ref<!hal.buffer>
  vm.import private @hal.device.queue.read(%device : !vm.ref<!hal.device>, %queue_affinity : i64, %wait_fence : !vm.ref<!hal.fence>, %signal_fence : !vm.ref<!hal.fence>, %source_file : !vm.ref<!hal.file>, %source_offset : i64, %target_buffer : !vm.ref<!hal.buffer>, %target_offset : i64, %length : i64, %flags : i64)
  vm.import private @hal.device.queue.execute.indirect(%device : !vm.ref<!hal.device>, %queue_affinity : i64, %wait_fence : !vm.ref<!hal.fence>, %signal_fence : !vm.ref<!hal.fence>, %command_buffer : !vm.ref<!hal.command_buffer>, %flags : i64, %binding_table : tuple<!vm.ref<!hal.buffer>, i64, i64> ...)
  vm.import private @hal.devices.count() -> i32 attributes {nosideeffects}
  vm.import private @hal.devices.get(%index : i32) -> !vm.ref<!hal.device> attributes {nosideeffects}
  vm.import private @hal.executable.create(%device : !vm.ref<!hal.device>, %queue_affinity : i64, %executable_format : !vm.buffer, %executable_data : !vm.buffer, %constants : !vm.buffer) -> !vm.ref<!hal.executable> attributes {nosideeffects}
  vm.import private @hal.fence.create(%device : !vm.ref<!hal.device>, %flags : i64) -> !vm.ref<!hal.fence>
  vm.import private @hal.fence.await(%timeout_millis : i32, %flags : i64, %fences : !vm.ref<!hal.fence> ...) -> i32 attributes {vm.yield}
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
  vm.export @SingleConv attributes {iree.abi.stub}
  vm.export @__init
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
}

