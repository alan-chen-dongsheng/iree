// -----// IR Dump After CSE (cse) //----- //
util.func public @SingleConv$async(%arg0: !hal.buffer_view, %arg1: !hal.fence, %arg2: !hal.fence) -> !hal.buffer_view attributes {inlining_policy = #util.inline.never, iree.abi.model = "coarse-fences", iree.abi.stub} {
  %cst = arith.constant dense<"0xCE861C3F58A856BF2684FE3EF869923ED0F25F3EC28410BFFF9B1CBEF2D937C0525699BFB06C733F5A4A093E748C21BF0ACB0840B977EA3FE66A1B3F060FF1BFA81D75BF094FA2BF4351F2BFDB151BBFBA7D87BF784D94BEC84A43BFFEB64BBF75B8683FCB3D803F6FBA7BBE7F805CBECF28C33FF31600BF4470ACBFC0BC48BEF09476BFD1D5923FF07E29BFC884323EA53381BF87DBC2BF32E30640C597463F29FA7DBF5CEDCEBF523EE23F8BA5EEBE2FCEADBEF1D40DC07014E73F623D153FCEF05B3EDBCD68BF6174E5BFB06419BF8C8889BF357BE7BF861A983F670EC53EA5A9E3BEB33355BE77B9233D56B9A7BF3CB832BF2AECEFBC696A873EC27F02C0938D72BEEEB61DBF03FCE4BED8433EBFFCE5AB3F34F887BE151690BE3B7B80BE597E183E2BE13A3F8EA4513C7397B43FA73BA43EA4F4113F9F339BBF657F283F8C038EBE506512C06721763E9B4EA9BEAB294CBFEE60B3BF1E9E14BFBF97BDBF1C6740BDAA2532C08B74F2BE881E293FEFA24E3E0747963F546511BFC8B9283E615C8BBEEC3E283F4CC090BFF475F1BE4673893F4C36A03FCC55CB3DDB9A0FC0861754BF8B0A993F639752BD979D6ABFB2C114BFB687EA3FEA5DC8BF9DCC41BDAE449CBEADDE4C3EAE6440C076BEB13F5B9ED3BF9BEC603FED147F3FC58E153F5B2FC5BF8F08D73CD23D9D3DCAF9F1BEE260A83EC847BD3F745A123F0564B63FBAF500BF7671F53E4A2B1BC0D2F550BEF30C8C3F1418A03EE74F893E680D5ABF43A391BE1B22593F68255D3E8E3D413D8C9497BEF94089BF72557EBD9D7F713FDA9E063EADF80A405B720B3FE05E27BF75FACA3F6725ABBFC2A493BE2B5486BE585589BFEC42863FE406CD3EAECAE63E7BE8B9BDFD5CA6BF7226C3BF4B74E3BB7F6CE4BF399D713ED4D3893DC15AFB3EA8FBFB3ED14373BF1C2E32BF0D54BFBF2C4B4BBE0FDD95BE8C5345BF1408B73F5C65E8BD096183BF553488BFB641D43FBBC9183F155A98BF41ECE63E7C6E7DBD66A8D9BFE92A12BFD140A43DE557C53FD1C4AC3F8F41D1BE2876AEBF5FF3A1BDD55B733EE3E9C8BFA2520B3E0B8B34BFD2889EBF78A73E3D52D01ABFA5C9913FFE83A83E339D89BF96998F3EC2D4BEBE2C99EDBE31ED7B3EF021E9BDA1C8593E3011543F014A27BF94EB3A3FBB8DB53E2781CF3E917ECC3E7EF8B63D0F2F0FBEE10E543E9976F7BECA20F4BF5A2E87BF"> : tensor<8x3x3x3xf32>
  %0 = hal.tensor.import wait(%arg1) => %arg0 : !hal.buffer_view -> tensor<1x3x500x500xf32>
  %1 = flow.tensor.reshape %0 : tensor<1x3x500x500xf32> -> tensor<3x500x500xf32>
  %2 = flow.dispatch.workgroups(%1, %cst) : (tensor<3x500x500xf32>, tensor<8x3x3x3xf32>) -> tensor<8x498x498xf32> =
      (%arg3: !iree_tensor_ext.dispatch.tensor<readonly:tensor<3x500x500xf32>>, %arg4: !iree_tensor_ext.dispatch.tensor<readonly:tensor<8x3x3x3xf32>>, %arg5: !iree_tensor_ext.dispatch.tensor<writeonly:tensor<8x498x498xf32>>) {
    %cst_0 = arith.constant 0.000000e+00 : f32
    %cst_1 = arith.constant dense<[0.540064871, 1.66891348, -0.204370424, 0.173146293, -0.0351918153, -0.198536336, 0.0749602392, 0.360360771]> : tensor<8xf32>
    %6 = iree_tensor_ext.dispatch.tensor.load %arg3, offsets = [0, 0, 0], sizes = [3, 500, 500], strides = [1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<3x500x500xf32>> -> tensor<3x500x500xf32>
    %7 = iree_tensor_ext.dispatch.tensor.load %arg4, offsets = [0, 0, 0, 0], sizes = [8, 3, 3, 3], strides = [1, 1, 1, 1] : !iree_tensor_ext.dispatch.tensor<readonly:tensor<8x3x3x3xf32>> -> tensor<8x3x3x3xf32>
    %8 = tensor.empty() : tensor<8x498x498xf32>
    %9 = linalg.fill ins(%cst_0 : f32) outs(%8 : tensor<8x498x498xf32>) -> tensor<8x498x498xf32>
    %10 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3, d4, d5) -> (d3, d1 + d4, d2 + d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d3, d4, d5)>, affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction", "reduction", "reduction"]} ins(%6, %7 : tensor<3x500x500xf32>, tensor<8x3x3x3xf32>) outs(%9 : tensor<8x498x498xf32>) {
    ^bb0(%in: f32, %in_2: f32, %out: f32):
      %12 = arith.mulf %in, %in_2 : f32
      %13 = arith.addf %out, %12 : f32
      linalg.yield %13 : f32
    } -> tensor<8x498x498xf32>
    %11 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%10, %cst_1 : tensor<8x498x498xf32>, tensor<8xf32>) outs(%8 : tensor<8x498x498xf32>) {
    ^bb0(%in: f32, %in_2: f32, %out: f32):
      %12 = arith.addf %in, %in_2 : f32
      linalg.yield %12 : f32
    } -> tensor<8x498x498xf32>
    iree_tensor_ext.dispatch.tensor.store %11, %arg5, offsets = [0, 0, 0], sizes = [8, 498, 498], strides = [1, 1, 1] : tensor<8x498x498xf32> -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<8x498x498xf32>>
    flow.return
  } count() -> (index, index, index) {
    %x, %y, %z = iree_tensor_ext.dispatch.workgroup_count_from_slice()
    flow.return %x, %y, %z : index, index, index
  }
  %3 = flow.tensor.reshape %2 : tensor<8x498x498xf32> -> tensor<1x8x498x498xf32>
  %4 = hal.tensor.barrier join(%3 : tensor<1x8x498x498xf32>) => %arg2 : !hal.fence
  %5 = hal.tensor.export %4 : tensor<1x8x498x498xf32> -> !hal.buffer_view
  util.return %5 : !hal.buffer_view
}

