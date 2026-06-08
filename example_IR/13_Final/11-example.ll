; ModuleID = '11-example'
source_filename = "11-example"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%TypeInfo = type { i8*, i8, i8, i16, i32, %BitMap*, i32, i8, i8, i16, i32*, i8*, i8*, i8*, %TypeInfo*, %ExtensionDef**, i8*, i8* }
%BitMap = type { i32, [0 x i8] }
%ExtensionDef = type { i32, i8, i8, i16, i8*, i8*, i8*, i8* }
%TypeTemplate = type { i8*, i8, i8, i16, i16, i8*, i8*, i8*, i8*, %ExtensionDef**, i16 }
%"record.std.core:Array<T>" = type { i8 addrspace(1)*, i64, i64 }
%ArrayLayout.Int64 = type { %ArrayBase, [0 x i64] }
%ArrayBase = type { i64 }
%Int64.Type = type { i64 }

@"RawArray<Int64>.ti" = linkonce_odr global %TypeInfo { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"RawArray<Int64>.name", i32 0, i32 0), i8 -126, i8 0, i16 0, i32 8, %BitMap* null, i32 0, i8 1, i8 0, i16 -32768, i32* null, i8* bitcast (%TypeTemplate* @RawArray.tt to i8*), i8* null, i8* null, %TypeInfo* @Int64.ti, %ExtensionDef** null, i8* null, i8* null }, !RelatedType !0 #0
@"RawArray<Int64>.name" = private unnamed_addr constant [16 x i8] c"RawArray<Int64>\00", align 1 #1
@RawArray.tt = external global %TypeTemplate
@Int64.ti = external global %TypeInfo, !RelatedType !1 #0
@StaticGenericTIs = private global [1 x %TypeInfo*] [%TypeInfo* @"RawArray<Int64>.ti"] #2
@llvm.used = appending global [2 x i8*] [i8* bitcast (void ()* @"0_for_keeping_some_types" to i8*), i8* bitcast ([1 x %TypeInfo*]* @StaticGenericTIs to i8*)], section "llvm.metadata"

define void @_CGFatU000000017ij8giiHv() gc "cangjie" personality i32 (...)* @"__cj_personality_v0$" !dbg !9 {
bb0:
  ret void, !dbg !14
}

define private i32 @"__cj_personality_v0$"(...) {
entry:
  ret i32 0
}

; Function Attrs: noinline
define void @_CGFatU00000003HBDsXiiHv() #3 gc "cangjie" personality i32 (...)* @"__cj_personality_v0$" !dbg !15 {
bb0:
  ret void, !dbg !17
}

define void @"_CNat5ArrayIlE6<init>Hv"(%"record.std.core:Array<T>" addrspace(1)* noalias %this, i8 addrspace(1)* %"$BP", %TypeInfo* %outerTI) #4 gc "cangjie" personality i32 (...)* @"__cj_personality_v0$" !dbg !18 {
bb0:
  %0 = getelementptr inbounds %"record.std.core:Array<T>", %"record.std.core:Array<T>" addrspace(1)* %this, i32 0, i32 1, !dbg !20
  store i64 0, i64 addrspace(1)* %0, align 8, !dbg !20
  %1 = call noalias i8 addrspace(1)* @llvm.cj.malloc.array(i8* bitcast (%TypeInfo* @"RawArray<Int64>.ti" to i8*), i64 0, i64 8), !dbg !21
  %2 = getelementptr inbounds %"record.std.core:Array<T>", %"record.std.core:Array<T>" addrspace(1)* %this, i32 0, i32 0, !dbg !22
  call void @llvm.cj.gcwrite.ref(i8 addrspace(1)* %1, i8 addrspace(1)* %"$BP", i8 addrspace(1)* addrspace(1)* %2), !dbg !22
  %3 = getelementptr inbounds %"record.std.core:Array<T>", %"record.std.core:Array<T>" addrspace(1)* %this, i32 0, i32 2, !dbg !23
  store i64 0, i64 addrspace(1)* %3, align 8, !dbg !23
  ret void, !dbg !24
}

declare noalias i8 addrspace(1)* @llvm.cj.malloc.array(i8*, i64, i64)

; Function Attrs: argmemonly nounwind
declare void @llvm.cj.gcwrite.ref(i8 addrspace(1)*, i8 addrspace(1)* nocapture, i8 addrspace(1)* addrspace(1)* nocapture) #5

; Function Attrs: noinline optnone
define private void @"0_for_keeping_some_types"() #6 {
entry.unreachable:
  %0 = alloca %ArrayLayout.Int64, align 8
  %1 = alloca %Int64.Type, align 8
  %2 = alloca %"record.std.core:Array<T>", align 8
  ret void
}

attributes #0 = { "CFileKlass" "NotModifiableClass" }
attributes #1 = { "CJTypeName" }
attributes #2 = { "CFileStaticGenericTI" }
attributes #3 = { noinline }
attributes #4 = { "record_mut" "thisParamHasBP" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { noinline optnone }

!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.dbg.cu = !{!6}
!pkg_info = !{!8}
!functions = !{}
!global_variables = !{}

!0 = !{!"ArrayLayout.Int64"}
!1 = !{!"Int64.Type"}
!2 = !{i32 2, !"CJBC", i32 1}
!3 = !{i32 2, !"Cangjie_OPT", i32 0}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 2, !"Dwarf Version", i32 4}
!6 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !7, producer: "Cangjie Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!7 = !DIFile(filename: "11-example", directory: ".")
!8 = !{i32 1, !"", !"example", !"example", !"example_example_11", !"example_example_12"}
!9 = distinct !DISubprogram(scope: !11, file: !10, type: !12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !13)
!10 = !DIFile(filename: "byte_extension.cj", directory: "std.core")
!11 = !DINamespace(name: "example", scope: null)
!12 = !DISubroutineType(types: !13)
!13 = !{}
!14 = !DILocation(line: 0, scope: !9, isImplicitCode: true)
!15 = distinct !DISubprogram(scope: !11, file: !16, type: !12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !13)
!16 = !DIFile(filename: "string_common.cj", directory: "std.core")
!17 = !DILocation(line: 0, scope: !15, isImplicitCode: true)
!18 = distinct !DISubprogram(scope: !11, file: !19, line: 28, type: !12, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !13)
!19 = !DIFile(filename: "array.cj", directory: "std.core")
!20 = !DILocation(line: 29, column: 9, scope: !18)
!21 = !DILocation(line: 30, column: 23, scope: !18)
!22 = !DILocation(line: 30, column: 9, scope: !18)
!23 = !DILocation(line: 31, column: 9, scope: !18)
!24 = !DILocation(line: 32, column: 5, scope: !18)
