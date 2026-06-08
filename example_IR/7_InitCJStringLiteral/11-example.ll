; ModuleID = '11-example'
source_filename = "11-example"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%TypeInfo = type { i8*, i8, i8, i16, i32, %BitMap*, i32, i8, i8, i16, i32*, i8*, i8*, i8*, %TypeInfo*, %ExtensionDef**, i8*, i8* }
%BitMap = type { i32, [0 x i8] }
%ExtensionDef = type { i32, i8, i8, i16, i8*, i8*, i8*, i8* }
%TypeTemplate = type { i8*, i8, i8, i16, i16, i8*, i8*, i8*, i8*, %ExtensionDef**, i16 }
%"record.std.core:Array<T>" = type { i8 addrspace(1)*, i64, i64 }

@"$has_applied_pkg_init_func" = external global i1, !LinkageType !0 #0
@has_invoked_pkg_init_literal = external global i1, !LinkageType !0 #0
@"RawArray<Int64>.ti" = linkonce_odr global %TypeInfo { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"RawArray<Int64>.name", i32 0, i32 0), i8 -126, i8 0, i16 0, i32 8, %BitMap* null, i32 0, i8 1, i8 0, i16 -32768, i32* null, i8* bitcast (%TypeTemplate* @RawArray.tt to i8*), i8* null, i8* null, %TypeInfo* @Int64.ti, %ExtensionDef** null, i8* null, i8* null }, !RelatedType !1 #1
@"RawArray<Int64>.name" = private unnamed_addr constant [16 x i8] c"RawArray<Int64>\00", align 1 #2
@RawArray.tt = external global %TypeTemplate
@Int64.ti = external global %TypeInfo, !RelatedType !2 #1

define void @_CGFatU000000017ij8giiHv() gc "cangjie" personality i32 (...)* @"__cj_personality_v0$" !dbg !10 !LinkageType !0 {
bb0:
  ret void, !dbg !15
}

define private i32 @"__cj_personality_v0$"(...) {
entry:
  ret i32 0
}

; Function Attrs: noinline
define void @_CGFatU00000003HBDsXiiHv() #3 gc "cangjie" personality i32 (...)* @"__cj_personality_v0$" !dbg !16 !LinkageType !0 {
bb0:
  ret void, !dbg !18
}

define void @"_CNat5ArrayIlE6<init>Hv"(%"record.std.core:Array<T>" addrspace(1)* noalias %this, i8 addrspace(1)* %"$BP", %TypeInfo* %outerTI) #4 gc "cangjie" personality i32 (...)* @"__cj_personality_v0$" !dbg !19 !LinkageType !0 {
bb0:
  %0 = getelementptr inbounds %"record.std.core:Array<T>", %"record.std.core:Array<T>" addrspace(1)* %this, i32 0, i32 1, !dbg !21
  store i64 0, i64 addrspace(1)* %0, align 8, !dbg !21
  %1 = call noalias i8 addrspace(1)* @llvm.cj.malloc.array(i8* bitcast (%TypeInfo* @"RawArray<Int64>.ti" to i8*), i64 0, i64 8), !dbg !22
  %2 = getelementptr inbounds %"record.std.core:Array<T>", %"record.std.core:Array<T>" addrspace(1)* %this, i32 0, i32 0, !dbg !23
  call void @llvm.cj.gcwrite.ref(i8 addrspace(1)* %1, i8 addrspace(1)* %"$BP", i8 addrspace(1)* addrspace(1)* %2), !dbg !23
  %3 = getelementptr inbounds %"record.std.core:Array<T>", %"record.std.core:Array<T>" addrspace(1)* %this, i32 0, i32 2, !dbg !24
  store i64 0, i64 addrspace(1)* %3, align 8, !dbg !24
  ret void, !dbg !25
}

declare noalias i8 addrspace(1)* @llvm.cj.malloc.array(i8*, i64, i64)

; Function Attrs: argmemonly nounwind
declare void @llvm.cj.gcwrite.ref(i8 addrspace(1)*, i8 addrspace(1)* nocapture, i8 addrspace(1)* addrspace(1)* nocapture) #5

attributes #0 = { "CJGlobalValue" }
attributes #1 = { "CFileKlass" "NotModifiableClass" }
attributes #2 = { "CJTypeName" }
attributes #3 = { noinline }
attributes #4 = { "record_mut" "thisParamHasBP" }
attributes #5 = { argmemonly nounwind }

!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.dbg.cu = !{!7}
!pkg_info = !{!9}
!functions = !{}
!global_variables = !{}

!0 = !{!"InternalLinkage"}
!1 = !{!"ArrayLayout.Int64"}
!2 = !{!"Int64.Type"}
!3 = !{i32 2, !"CJBC", i32 1}
!4 = !{i32 2, !"Cangjie_OPT", i32 0}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !8, producer: "Cangjie Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!8 = !DIFile(filename: "11-example", directory: ".")
!9 = !{i32 1, !"", !"example", !"example", !"example_example_11", !"example_example_12"}
!10 = distinct !DISubprogram(scope: !12, file: !11, type: !13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !14)
!11 = !DIFile(filename: "byte_extension.cj", directory: "std.core")
!12 = !DINamespace(name: "example", scope: null)
!13 = !DISubroutineType(types: !14)
!14 = !{}
!15 = !DILocation(line: 0, scope: !10, isImplicitCode: true)
!16 = distinct !DISubprogram(scope: !12, file: !17, type: !13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !14)
!17 = !DIFile(filename: "string_common.cj", directory: "std.core")
!18 = !DILocation(line: 0, scope: !16, isImplicitCode: true)
!19 = distinct !DISubprogram(scope: !12, file: !20, line: 28, type: !13, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !14)
!20 = !DIFile(filename: "array.cj", directory: "std.core")
!21 = !DILocation(line: 29, column: 9, scope: !19)
!22 = !DILocation(line: 30, column: 23, scope: !19)
!23 = !DILocation(line: 30, column: 9, scope: !19)
!24 = !DILocation(line: 31, column: 9, scope: !19)
!25 = !DILocation(line: 32, column: 5, scope: !19)
