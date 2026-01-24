// -----// IR Dump After ReifyShapeCalculations (torch-reify-shape-calculations) //----- //
module {
  func.func private @__torch__.torch.jit._shape_functions.conv_forwards(%arg0: !torch.list<int>, %arg1: !torch.list<int>, %arg2: !torch.optional<list<int>>, %arg3: !torch.list<int>, %arg4: !torch.list<int>, %arg5: !torch.list<int>, %arg6: !torch.bool, %arg7: !torch.list<int>, %arg8: !torch.int) -> !torch.list<int> {
    %true = torch.constant.bool true
    %int0 = torch.constant.int 0
    %int1 = torch.constant.int 1
    %int2 = torch.constant.int 2
    %0 = torch.aten.len.t %arg5 : !torch.list<int> -> !torch.int
    %1 = torch.aten.gt.int %0, %int0 : !torch.int, !torch.int -> !torch.bool
    %2 = torch.aten.len.t %arg7 : !torch.list<int> -> !torch.int
    %3 = torch.aten.gt.int %2, %int0 : !torch.int, !torch.int -> !torch.bool
    %4 = torch.aten.len.t %arg0 : !torch.list<int> -> !torch.int
    %5 = torch.prim.ListConstruct  : () -> !torch.list<int>
    %6 = torch.prim.If %arg6 -> (!torch.int) {
      torch.prim.If.yield %int1 : !torch.int
    } else {
      torch.prim.If.yield %int0 : !torch.int
    }
    %7 = torch.aten.__getitem__.t %arg0, %int0 : !torch.list<int>, !torch.int -> !torch.int
    %8 = torch.aten.append.t %5, %7 : !torch.list<int>, !torch.int -> !torch.list<int>
    torch.prim.If %arg6 -> () {
      %10 = torch.aten.__getitem__.t %arg1, %6 : !torch.list<int>, !torch.int -> !torch.int
      %11 = torch.aten.mul.int %10, %arg8 : !torch.int, !torch.int -> !torch.int
      %12 = torch.aten.append.t %5, %11 : !torch.list<int>, !torch.int -> !torch.list<int>
      torch.prim.If.yield
    } else {
      %10 = torch.aten.__getitem__.t %arg1, %6 : !torch.list<int>, !torch.int -> !torch.int
      %11 = torch.aten.append.t %5, %10 : !torch.list<int>, !torch.int -> !torch.list<int>
      torch.prim.If.yield
    }
    %9 = torch.aten.__range_length %int2, %4, %int1 : !torch.int, !torch.int, !torch.int -> !torch.int
    torch.prim.Loop %9, %true, init() {
    ^bb0(%arg9: !torch.int):
      %10 = torch.aten.__derive_index %arg9, %int2, %int1 : !torch.int, !torch.int, !torch.int -> !torch.int
      %11 = torch.prim.If %1 -> (!torch.int) {
        %13 = torch.aten.sub.int %10, %int2 : !torch.int, !torch.int -> !torch.int
        %14 = torch.aten.__getitem__.t %arg5, %13 : !torch.list<int>, !torch.int -> !torch.int
        torch.prim.If.yield %14 : !torch.int
      } else {
        torch.prim.If.yield %int1 : !torch.int
      }
      %12 = torch.prim.If %3 -> (!torch.int) {
        %13 = torch.aten.sub.int %10, %int2 : !torch.int, !torch.int -> !torch.int
        %14 = torch.aten.__getitem__.t %arg7, %13 : !torch.list<int>, !torch.int -> !torch.int
        torch.prim.If.yield %14 : !torch.int
      } else {
        torch.prim.If.yield %int0 : !torch.int
      }
      torch.prim.If %arg6 -> () {
        %13 = torch.aten.__getitem__.t %arg1, %10 : !torch.list<int>, !torch.int -> !torch.int
        %14 = torch.aten.sub.int %13, %int1 : !torch.int, !torch.int -> !torch.int
        %15 = torch.aten.mul.int %11, %14 : !torch.int, !torch.int -> !torch.int
        %16 = torch.aten.__getitem__.t %arg0, %10 : !torch.list<int>, !torch.int -> !torch.int
        %17 = torch.aten.sub.int %16, %int1 : !torch.int, !torch.int -> !torch.int
        %18 = torch.aten.sub.int %10, %int2 : !torch.int, !torch.int -> !torch.int
        %19 = torch.aten.__getitem__.t %arg3, %18 : !torch.list<int>, !torch.int -> !torch.int
        %20 = torch.aten.mul.int %17, %19 : !torch.int, !torch.int -> !torch.int
        %21 = torch.aten.sub.int %10, %int2 : !torch.int, !torch.int -> !torch.int
        %22 = torch.aten.__getitem__.t %arg4, %21 : !torch.list<int>, !torch.int -> !torch.int
        %23 = torch.aten.mul.int %22, %int2 : !torch.int, !torch.int -> !torch.int
        %24 = torch.aten.sub.int %20, %23 : !torch.int, !torch.int -> !torch.int
        %25 = torch.aten.add.int %24, %15 : !torch.int, !torch.int -> !torch.int
        %26 = torch.aten.add.int %25, %12 : !torch.int, !torch.int -> !torch.int
        %27 = torch.aten.add.int %26, %int1 : !torch.int, !torch.int -> !torch.int
        %28 = torch.aten.append.t %5, %27 : !torch.list<int>, !torch.int -> !torch.list<int>
        torch.prim.If.yield
      } else {
        %13 = torch.aten.__getitem__.t %arg1, %10 : !torch.list<int>, !torch.int -> !torch.int
        %14 = torch.aten.sub.int %13, %int1 : !torch.int, !torch.int -> !torch.int
        %15 = torch.aten.mul.int %11, %14 : !torch.int, !torch.int -> !torch.int
        %16 = torch.aten.add.int %15, %int1 : !torch.int, !torch.int -> !torch.int
        %17 = torch.aten.__getitem__.t %arg0, %10 : !torch.list<int>, !torch.int -> !torch.int
        %18 = torch.aten.sub.int %10, %int2 : !torch.int, !torch.int -> !torch.int
        %19 = torch.aten.__getitem__.t %arg4, %18 : !torch.list<int>, !torch.int -> !torch.int
        %20 = torch.aten.mul.int %19, %int2 : !torch.int, !torch.int -> !torch.int
        %21 = torch.aten.add.int %17, %20 : !torch.int, !torch.int -> !torch.int
        %22 = torch.aten.sub.int %21, %16 : !torch.int, !torch.int -> !torch.int
        %23 = torch.aten.sub.int %10, %int2 : !torch.int, !torch.int -> !torch.int
        %24 = torch.aten.__getitem__.t %arg3, %23 : !torch.list<int>, !torch.int -> !torch.int
        %25 = torch.aten.floordiv.int %22, %24 : !torch.int, !torch.int -> !torch.int
        %26 = torch.aten.add.int %25, %int1 : !torch.int, !torch.int -> !torch.int
        %27 = torch.aten.append.t %5, %26 : !torch.list<int>, !torch.int -> !torch.list<int>
        torch.prim.If.yield
      }
      torch.prim.Loop.condition %true, iter()
    } : (!torch.int, !torch.bool) -> ()
    return %5 : !torch.list<int>
  }
  func.func private @__torch_mlir_shape_fn.aten.convolution(%arg0: !torch.list<int>, %arg1: !torch.list<int>, %arg2: !torch.optional<list<int>>, %arg3: !torch.list<int>, %arg4: !torch.list<int>, %arg5: !torch.list<int>, %arg6: !torch.bool, %arg7: !torch.list<int>, %arg8: !torch.int) -> !torch.list<int> {
    %0 = call @__torch__.torch.jit._shape_functions.conv_forwards(%arg0, %arg1, %arg2, %arg3, %arg4, %arg5, %arg6, %arg7, %arg8) : (!torch.list<int>, !torch.list<int>, !torch.optional<list<int>>, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.list<int>, !torch.int) -> !torch.list<int>
    return %0 : !torch.list<int>
  }
  func.func @SingleConv(%arg0: !torch.vtensor<[1,3,500,500],f32>) -> !torch.vtensor<[1,8,498,498],f32> attributes {torch.onnx_meta.ir_version = 13 : si64, torch.onnx_meta.opset_version = 25 : si64, torch.onnx_meta.producer_name = "single_conv_example", torch.onnx_meta.producer_version = ""} {
    %false = torch.constant.bool false
    %int1 = torch.constant.int 1
    %0 = torch.vtensor.literal(dense<"0xCE861C3F58A856BF2684FE3EF869923ED0F25F3EC28410BFFF9B1CBEF2D937C0525699BFB06C733F5A4A093E748C21BF0ACB0840B977EA3FE66A1B3F060FF1BFA81D75BF094FA2BF4351F2BFDB151BBFBA7D87BF784D94BEC84A43BFFEB64BBF75B8683FCB3D803F6FBA7BBE7F805CBECF28C33FF31600BF4470ACBFC0BC48BEF09476BFD1D5923FF07E29BFC884323EA53381BF87DBC2BF32E30640C597463F29FA7DBF5CEDCEBF523EE23F8BA5EEBE2FCEADBEF1D40DC07014E73F623D153FCEF05B3EDBCD68BF6174E5BFB06419BF8C8889BF357BE7BF861A983F670EC53EA5A9E3BEB33355BE77B9233D56B9A7BF3CB832BF2AECEFBC696A873EC27F02C0938D72BEEEB61DBF03FCE4BED8433EBFFCE5AB3F34F887BE151690BE3B7B80BE597E183E2BE13A3F8EA4513C7397B43FA73BA43EA4F4113F9F339BBF657F283F8C038EBE506512C06721763E9B4EA9BEAB294CBFEE60B3BF1E9E14BFBF97BDBF1C6740BDAA2532C08B74F2BE881E293FEFA24E3E0747963F546511BFC8B9283E615C8BBEEC3E283F4CC090BFF475F1BE4673893F4C36A03FCC55CB3DDB9A0FC0861754BF8B0A993F639752BD979D6ABFB2C114BFB687EA3FEA5DC8BF9DCC41BDAE449CBEADDE4C3EAE6440C076BEB13F5B9ED3BF9BEC603FED147F3FC58E153F5B2FC5BF8F08D73CD23D9D3DCAF9F1BEE260A83EC847BD3F745A123F0564B63FBAF500BF7671F53E4A2B1BC0D2F550BEF30C8C3F1418A03EE74F893E680D5ABF43A391BE1B22593F68255D3E8E3D413D8C9497BEF94089BF72557EBD9D7F713FDA9E063EADF80A405B720B3FE05E27BF75FACA3F6725ABBFC2A493BE2B5486BE585589BFEC42863FE406CD3EAECAE63E7BE8B9BDFD5CA6BF7226C3BF4B74E3BB7F6CE4BF399D713ED4D3893DC15AFB3EA8FBFB3ED14373BF1C2E32BF0D54BFBF2C4B4BBE0FDD95BE8C5345BF1408B73F5C65E8BD096183BF553488BFB641D43FBBC9183F155A98BF41ECE63E7C6E7DBD66A8D9BFE92A12BFD140A43DE557C53FD1C4AC3F8F41D1BE2876AEBF5FF3A1BDD55B733EE3E9C8BFA2520B3E0B8B34BFD2889EBF78A73E3D52D01ABFA5C9913FFE83A83E339D89BF96998F3EC2D4BEBE2C99EDBE31ED7B3EF021E9BDA1C8593E3011543F014A27BF94EB3A3FBB8DB53E2781CF3E917ECC3E7EF8B63D0F2F0FBEE10E543E9976F7BECA20F4BF5A2E87BF"> : tensor<8x3x3x3xf32>) : !torch.vtensor<[8,3,3,3],f32>
    %1 = torch.vtensor.literal(dense<[0.540064871, 1.66891348, -0.204370424, 0.173146293, -0.0351918153, -0.198536336, 0.0749602392, 0.360360771]> : tensor<8xf32>) : !torch.vtensor<[8],f32>
    %int0 = torch.constant.int 0
    %2 = torch.prim.ListConstruct %int0, %int0 : (!torch.int, !torch.int) -> !torch.list<int>
    %3 = torch.prim.ListConstruct %int1, %int1 : (!torch.int, !torch.int) -> !torch.list<int>
    %4 = torch.prim.ListConstruct %int1, %int1 : (!torch.int, !torch.int) -> !torch.list<int>
    %5 = torch.prim.ListConstruct %int0, %int0 : (!torch.int, !torch.int) -> !torch.list<int>
    %6 = torch.shape.calculate {
      %7 = torch.aten.convolution %arg0, %0, %1, %4, %2, %3, %false, %5, %int1 : !torch.vtensor<[1,3,500,500],f32>, !torch.vtensor<[8,3,3,3],f32>, !torch.vtensor<[8],f32>, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.list<int>, !torch.int -> !torch.vtensor<[1,8,498,498],f32>
      torch.shape.calculate.yield %7 : !torch.vtensor<[1,8,498,498],f32>
    } shapes {
      %7 = torch.aten.size %arg0 : !torch.vtensor<[1,3,500,500],f32> -> !torch.list<int>
      %8 = torch.aten.size %0 : !torch.vtensor<[8,3,3,3],f32> -> !torch.list<int>
      %9 = torch.aten.size %1 : !torch.vtensor<[8],f32> -> !torch.list<int>
      %10 = torch.derefine %9 : !torch.list<int> to !torch.optional<list<int>>
      %11 = func.call @__torch_mlir_shape_fn.aten.convolution(%7, %8, %10, %4, %2, %3, %false, %5, %int1) : (!torch.list<int>, !torch.list<int>, !torch.optional<list<int>>, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.list<int>, !torch.int) -> !torch.list<int>
      torch.shape.calculate.yield.shapes %11 : !torch.list<int>
    } : !torch.vtensor<[1,8,498,498],f32>
    return %6 : !torch.vtensor<[1,8,498,498],f32>
  }
}


