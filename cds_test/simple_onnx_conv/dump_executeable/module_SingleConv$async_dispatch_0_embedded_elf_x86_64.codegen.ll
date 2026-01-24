; ModuleID = 'SingleConv$async_dispatch_0'
source_filename = "SingleConv$async_dispatch_0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-unknown-eabi-elf"

%iree_hal_executable_library_header_t = type { i32, ptr, i32, i32 }
%iree_hal_executable_dispatch_attrs_v0_t = type { i64, i16, i8, i8, i32, i32, i16, i16, i64, i64, i64, i64, i64 }
%iree_hal_executable_source_location_v0_t = type { i32, i32, ptr }
%iree_hal_executable_stage_location_table_v0_t = type { i32, ptr, ptr }
%iree_hal_executable_library_v0_t = type { ptr, %iree_hal_executable_import_table_v0_t, %iree_hal_executable_export_table_v0_t, %iree_hal_executable_constant_table_v0_t, %iree_hal_executable_source_file_table_v0_t }
%iree_hal_executable_import_table_v0_t = type { i32, ptr }
%iree_hal_executable_export_table_v0_t = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%iree_hal_executable_constant_table_v0_t = type { i32 }
%iree_hal_executable_source_file_table_v0_t = type { i32, ptr }
%iree_hal_executable_dispatch_state_v0_t = type { i32, i32, i16, i16, i32, i32, i16, i8, i8, ptr, ptr, ptr }
%iree_hal_executable_workgroup_state_v0_t = type { i32, i32, i16, i16, i32, ptr, i32 }

@__constant_8xf32 = private constant [8 x float] [float 0x3FE1483620000000, float 0x3FFAB3DEA0000000, float 0xBFCA28CF60000000, float 0x3FC629A860000000, float 0xBFA204A960000000, float 0xBFC969A380000000, float 0x3FB3309820000000, float 0x3FD71026A0000000], align 64
@0 = private constant [28 x i8] c"SingleConv$async_dispatch_0\00", align 1
@iree_hal_executable_library_query_v0_header = private constant %iree_hal_executable_library_header_t { i32 6, ptr @0, i32 0, i32 0 }
@iree_hal_executable_library_query_v0_funcs = private constant [1 x ptr] [ptr @"SingleConv$async_dispatch_0_conv_8x498x498x3x3x3_f32"]
@iree_hal_executable_library_query_v0_attrs = private constant [1 x %iree_hal_executable_dispatch_attrs_v0_t] [%iree_hal_executable_dispatch_attrs_v0_t { i64 0, i16 0, i8 0, i8 3, i32 1, i32 1, i16 1, i16 0, i64 0, i64 0, i64 0, i64 0, i64 0 }]
@1 = private constant [53 x i8] c"SingleConv$async_dispatch_0_conv_8x498x498x3x3x3_f32\00", align 1
@iree_hal_executable_library_query_v0_names = private constant [1 x ptr] [ptr @1]
@2 = private constant [119 x i8] c"/home/cds/workspace/iree/cds_test/simple_onnx_conv/dump_executeable/configured_module_SingleConv$async_dispatch_0.mlir\00", align 1
@iree_hal_executable_library_query_v0_source_locations = private constant [1 x %iree_hal_executable_source_location_v0_t] [%iree_hal_executable_source_location_v0_t { i32 3, i32 118, ptr @2 }]
@"iree_hal_executable_library_query_v0_SingleConv$async_dispatch_0_conv_8x498x498x3x3x3_f32_stage_names" = private constant [0 x ptr] zeroinitializer
@"iree_hal_executable_library_query_v0_SingleConv$async_dispatch_0_conv_8x498x498x3x3x3_f32_stage_source_locations" = private constant [0 x %iree_hal_executable_source_location_v0_t] zeroinitializer
@iree_hal_executable_library_query_v0_stage_location_tables = private constant [1 x %iree_hal_executable_stage_location_table_v0_t] [%iree_hal_executable_stage_location_table_v0_t { i32 0, ptr @"iree_hal_executable_library_query_v0_SingleConv$async_dispatch_0_conv_8x498x498x3x3x3_f32_stage_names", ptr @"iree_hal_executable_library_query_v0_SingleConv$async_dispatch_0_conv_8x498x498x3x3x3_f32_stage_source_locations" }]
@iree_hal_executable_library_query_v0 = private constant %iree_hal_executable_library_v0_t { ptr @iree_hal_executable_library_query_v0_header, %iree_hal_executable_import_table_v0_t zeroinitializer, %iree_hal_executable_export_table_v0_t { i32 1, ptr @iree_hal_executable_library_query_v0_funcs, ptr @iree_hal_executable_library_query_v0_attrs, ptr null, ptr null, ptr @iree_hal_executable_library_query_v0_names, ptr null, ptr null, ptr @iree_hal_executable_library_query_v0_source_locations, ptr @iree_hal_executable_library_query_v0_stage_location_tables }, %iree_hal_executable_constant_table_v0_t zeroinitializer, %iree_hal_executable_source_file_table_v0_t zeroinitializer }

define internal i32 @"SingleConv$async_dispatch_0_conv_8x498x498x3x3x3_f32"(ptr noalias noundef nonnull align 16 %0, ptr noalias noundef nonnull align 16 %1, ptr noalias noundef nonnull align 16 %2) #0 !dbg !3 {
  %4 = alloca float, i64 6, align 64, !dbg !79
  %5 = alloca float, i64 6, align 64, !dbg !80
  %6 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !81
  %7 = extractvalue %iree_hal_executable_dispatch_state_v0_t %6, 10, !dbg !81
  %8 = load ptr, ptr %7, align 8, !dbg !81
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 64) ], !dbg !81
  %9 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !82
  %10 = extractvalue %iree_hal_executable_dispatch_state_v0_t %9, 10, !dbg !82
  %11 = getelementptr ptr, ptr %10, i32 1, !dbg !82
  %12 = load ptr, ptr %11, align 8, !dbg !82
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 64) ], !dbg !82
  %13 = load %iree_hal_executable_dispatch_state_v0_t, ptr %1, align 8, !dbg !83
  %14 = extractvalue %iree_hal_executable_dispatch_state_v0_t %13, 10, !dbg !83
  %15 = getelementptr ptr, ptr %14, i32 2, !dbg !83
  %16 = load ptr, ptr %15, align 8, !dbg !83
  call void @llvm.assume(i1 true) [ "align"(ptr %16, i64 64) ], !dbg !83
  %17 = load %iree_hal_executable_workgroup_state_v0_t, ptr %2, align 8, !dbg !79
  %18 = extractvalue %iree_hal_executable_workgroup_state_v0_t %17, 0, !dbg !79
  %19 = zext i32 %18 to i64, !dbg !79
  %20 = sdiv i64 %19, 83, !dbg !79
  %21 = mul i64 %20, 83, !dbg !79
  %22 = icmp ne i64 %19, %21, !dbg !79
  %23 = icmp slt i64 %19, 0, !dbg !79
  %24 = and i1 %22, %23, !dbg !79
  %25 = add i64 %20, -1, !dbg !79
  %26 = select i1 %24, i64 %25, i64 %20, !dbg !79
  %27 = srem i64 %19, 83, !dbg !79
  %28 = icmp slt i64 %27, 0, !dbg !79
  %29 = add nsw i64 %27, 83, !dbg !79
  %30 = select i1 %28, i64 %29, i64 %27, !dbg !79
  %31 = mul nsw i64 %26, 6, !dbg !79
  %32 = mul nsw i64 %30, 6, !dbg !79
  %33 = getelementptr float, ptr %5, i64 0, !dbg !84
  store <6 x float> zeroinitializer, ptr %33, align 4, !dbg !84
  br label %34, !dbg !79

34:                                               ; preds = %110, %3
  %35 = phi i64 [ %111, %110 ], [ 0, %3 ], !dbg !79
  %36 = icmp slt i64 %35, 8, !dbg !79
  br i1 %36, label %37, label %112, !dbg !79

37:                                               ; preds = %34
  %38 = getelementptr float, ptr @__constant_8xf32, i64 %35, !dbg !85
  %39 = load <1 x float>, ptr %38, align 4, !dbg !85
  br label %40, !dbg !79

40:                                               ; preds = %96, %37
  %41 = phi i64 [ %109, %96 ], [ 0, %37 ], !dbg !79
  %42 = icmp slt i64 %41, 6, !dbg !79
  br i1 %42, label %43, label %110, !dbg !79

43:                                               ; preds = %46, %40
  %44 = phi i64 [ %51, %46 ], [ 0, %40 ], !dbg !79
  %45 = icmp slt i64 %44, 6, !dbg !79
  br i1 %45, label %46, label %52, !dbg !79

46:                                               ; preds = %43
  %47 = add nuw nsw i64 0, %44, !dbg !79
  %48 = getelementptr inbounds nuw float, ptr %5, i64 %47, !dbg !79
  %49 = load float, ptr %48, align 4, !dbg !79
  %50 = getelementptr inbounds nuw float, ptr %4, i64 %47, !dbg !79
  store float %49, ptr %50, align 4, !dbg !79
  %51 = add i64 %44, 1, !dbg !79
  br label %43, !dbg !79

52:                                               ; preds = %94, %43
  %53 = phi i64 [ %95, %94 ], [ 0, %43 ], !dbg !79
  %54 = icmp slt i64 %53, 3, !dbg !79
  br i1 %54, label %55, label %96, !dbg !79

55:                                               ; preds = %92, %52
  %56 = phi i64 [ %93, %92 ], [ 0, %52 ], !dbg !79
  %57 = icmp slt i64 %56, 3, !dbg !79
  br i1 %57, label %58, label %94, !dbg !79

58:                                               ; preds = %55
  %59 = add i64 %56, %41, !dbg !79
  %60 = add i64 %59, %31, !dbg !79
  br label %61, !dbg !79

61:                                               ; preds = %90, %58
  %62 = phi i64 [ %91, %90 ], [ 0, %58 ], !dbg !79
  %63 = icmp slt i64 %62, 6, !dbg !79
  br i1 %63, label %64, label %92, !dbg !79

64:                                               ; preds = %67, %61
  %65 = phi i64 [ %89, %67 ], [ 0, %61 ], !dbg !79
  %66 = icmp slt i64 %65, 3, !dbg !79
  br i1 %66, label %67, label %90, !dbg !79

67:                                               ; preds = %64
  %68 = add i64 %32, %62, !dbg !79
  %69 = add i64 %68, %65, !dbg !79
  %70 = mul nuw nsw i64 %53, 250000, !dbg !79
  %71 = mul nuw nsw i64 %60, 500, !dbg !79
  %72 = add nuw nsw i64 %70, %71, !dbg !79
  %73 = add nuw nsw i64 %72, %69, !dbg !79
  %74 = getelementptr inbounds nuw float, ptr %8, i64 %73, !dbg !79
  %75 = load float, ptr %74, align 4, !dbg !79
  %76 = mul nuw nsw i64 %35, 27, !dbg !79
  %77 = mul nuw nsw i64 %53, 9, !dbg !79
  %78 = add nuw nsw i64 %76, %77, !dbg !79
  %79 = mul nuw nsw i64 %56, 3, !dbg !79
  %80 = add nuw nsw i64 %78, %79, !dbg !79
  %81 = add nuw nsw i64 %80, %65, !dbg !79
  %82 = getelementptr inbounds nuw float, ptr %12, i64 %81, !dbg !79
  %83 = load float, ptr %82, align 4, !dbg !79
  %84 = add nuw nsw i64 0, %62, !dbg !79
  %85 = getelementptr inbounds nuw float, ptr %4, i64 %84, !dbg !79
  %86 = load float, ptr %85, align 4, !dbg !79
  %87 = fmul contract float %75, %83, !dbg !86
  %88 = fadd contract float %86, %87, !dbg !87
  store float %88, ptr %85, align 4, !dbg !79
  %89 = add i64 %65, 1, !dbg !79
  br label %64, !dbg !79

90:                                               ; preds = %64
  %91 = add i64 %62, 1, !dbg !79
  br label %61, !dbg !79

92:                                               ; preds = %61
  %93 = add i64 %56, 1, !dbg !79
  br label %55, !dbg !79

94:                                               ; preds = %55
  %95 = add i64 %53, 1, !dbg !79
  br label %52, !dbg !79

96:                                               ; preds = %52
  %97 = getelementptr float, ptr %4, i64 0, !dbg !85
  %98 = load <6 x float>, ptr %97, align 4, !dbg !85
  %99 = extractelement <1 x float> %39, i64 0, !dbg !88
  %100 = insertelement <6 x float> poison, float %99, i32 0, !dbg !88
  %101 = shufflevector <6 x float> %100, <6 x float> poison, <6 x i32> zeroinitializer, !dbg !88
  %102 = fadd contract <6 x float> %98, %101, !dbg !88
  %103 = add i64 %31, %41, !dbg !79
  %104 = mul i64 %35, 248004, !dbg !79
  %105 = mul i64 %103, 498, !dbg !79
  %106 = add i64 %104, %105, !dbg !79
  %107 = add i64 %106, %32, !dbg !79
  %108 = getelementptr float, ptr %16, i64 %107, !dbg !79
  store <6 x float> %102, ptr %108, align 4, !dbg !79
  %109 = add i64 %41, 1, !dbg !79
  br label %40, !dbg !79

110:                                              ; preds = %40
  %111 = add i64 %35, 1, !dbg !79
  br label %34, !dbg !79

112:                                              ; preds = %34
  ret i32 0, !dbg !89
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: uwtable
define dso_local dllexport ptr @iree_hal_executable_library_query(i32 %0, ptr %1) #2 {
entry:
  %2 = icmp eq i32 %0, 6
  %3 = select i1 %2, ptr @iree_hal_executable_library_query_v0, ptr null
  ret ptr %3
}

attributes #0 = { "frame-pointer"="all" "hot" "no-builtins" "nonlazybind" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) "frame-pointer"="all" "hot" "no-builtins" "nonlazybind" }
attributes #2 = { uwtable "nonlazybind" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C17, file: !1, producer: "IREE", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "configured_module_SingleConv$async_dispatch_0.mlir", directory: "/home/cds/workspace/iree/cds_test/simple_onnx_conv/dump_executeable")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "SingleConv$async_dispatch_0_conv_8x498x498x3x3x3_f32", linkageName: "SingleConv$async_dispatch_0_conv_8x498x498x3x3x3_f32", scope: !1, file: !1, line: 1, type: !4, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!4 = !DISubroutineType(cc: DW_CC_normal, types: !5)
!5 = !{!6, !7, !38, !67}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "iree_hal_executable_environment_v0_t", baseType: !10)
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_executable_environment_v0_t", scope: !11, file: !11, line: 246, size: 768, elements: !12)
!11 = !DIFile(filename: "runtime/src/iree/hal/local/executable_library.h", directory: ".")
!12 = !{!13, !21, !24, !27, !29}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "constants", baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!16 = !DICompositeType(tag: DW_TAG_array_type, scope: !11, file: !11, line: 227, baseType: !17, size: 2048, elements: !19)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", baseType: !18)
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !{!20}
!20 = !DISubrange(count: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "import_thunk", baseType: !22, size: 64, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIBasicType(name: "void", encoding: DW_ATE_address)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "import_funcs", baseType: !25, size: 64, offset: 128)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "import_contexts", baseType: !28, size: 64, offset: 192)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "processor", baseType: !30, offset: 256)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_processor_v0_t", scope: !11, file: !11, line: 227, size: 512, elements: !31)
!31 = !{!32}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "data", baseType: !33)
!33 = !DICompositeType(tag: DW_TAG_array_type, scope: !11, file: !11, line: 227, baseType: !34, size: 512, elements: !36)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", baseType: !35)
!35 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!36 = !{!37}
!37 = !DISubrange(count: 8)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "iree_hal_executable_dispatch_state_v0_t", baseType: !41)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_executable_dispatch_state_v0_t", scope: !11, file: !11, line: 275, size: 384, elements: !42)
!42 = !{!43, !44, !45, !48, !49, !50, !51, !52, !55, !56, !57, !62}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_size_x", baseType: !17, size: 32)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_size_y", baseType: !17, size: 32, offset: 32)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_size_z", baseType: !46, size: 16, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", baseType: !47)
!47 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "constant_count", baseType: !46, size: 16, offset: 80)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_count_x", baseType: !17, size: 32, offset: 96)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_count_y", baseType: !17, size: 32, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_count_z", baseType: !46, size: 16, offset: 160)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "max_concurrency", baseType: !53, size: 8, offset: 176)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", baseType: !54)
!54 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "binding_count", baseType: !53, size: 8, offset: 184)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "constants", baseType: !14, size: 64, offset: 192)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "binding_ptrs", baseType: !58, size: 64, offset: 256)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!60 = !DICompositeType(tag: DW_TAG_array_type, scope: !11, file: !11, line: 227, baseType: !61, size: 4096, elements: !19)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "binding_lengths", baseType: !63, size: 64, offset: 320)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!65 = !DICompositeType(tag: DW_TAG_array_type, scope: !11, file: !11, line: 227, baseType: !66, size: 4096, elements: !19)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", baseType: !34)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "iree_hal_executable_workgroup_state_v0_t", baseType: !70)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iree_hal_executable_workgroup_state_v0_t", scope: !11, file: !11, line: 321, size: 256, elements: !71)
!71 = !{!72, !73, !74, !75, !76, !77, !78}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_id_x", baseType: !17, size: 32)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_id_y", baseType: !17, size: 32, offset: 32)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "workgroup_id_z", baseType: !46, size: 16, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", baseType: !46, size: 16, offset: 80)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "processor_id", baseType: !17, size: 32, offset: 96)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "local_memory", baseType: !22, size: 64, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "local_memory_size", baseType: !17, size: 32, offset: 192)
!79 = !DILocation(line: 19, column: 8, scope: !3)
!80 = !DILocation(line: 18, column: 8, scope: !3)
!81 = !DILocation(line: 12, column: 8, scope: !3)
!82 = !DILocation(line: 13, column: 8, scope: !3)
!83 = !DILocation(line: 14, column: 8, scope: !3)
!84 = !DILocation(line: 9, column: 8, scope: !3)
!85 = !DILocation(line: 25, column: 8, scope: !3)
!86 = !DILocation(line: 21, column: 10, scope: !3)
!87 = !DILocation(line: 22, column: 10, scope: !3)
!88 = !DILocation(line: 27, column: 10, scope: !3)
!89 = !DILocation(line: 31, column: 8, scope: !3)
