; ModuleID = '11-example'
source_filename = "11-example"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%TypeInfo = type { i8*, i8, i8, i16, i32, %BitMap*, i32, i8, i8, i16, i32*, i8*, i8*, i8*, %TypeInfo*, %ExtensionDef**, i8*, i8* }
%BitMap = type { i32, [0 x i8] }
%ExtensionDef = type { i32, i8, i8, i16, i8*, i8*, i8*, i8* }
%"record.std.core:Array<T>" = type { i8 addrspace(1)*, i64, i64 }

@"$has_applied_pkg_init_func" = external global i1, !LinkageType !0 #0
@has_invoked_pkg_init_literal = external global i1, !LinkageType !0 #0
@"RawArray<Int64>.ti" = external global %TypeInfo #1

define void @_CGFatU000000017ij8giiHv() gc "cangjie" personality i32 (...)* @"__cj_personality_v0$" !dbg !7 !LinkageType !0 {
bb0:
  ret void, !dbg !12
}

define private i32 @"__cj_personality_v0$"(...) {
entry:
  ret i32 0
}

; Function Attrs: noinline
define void @_CGFatU00000003HBDsXiiHv() #2 gc "cangjie" personality i32 (...)* @"__cj_personality_v0$" !dbg !13 !LinkageType !0 {
bb0:
  ret void, !dbg !15
}

define void @"_CNat5ArrayIlE6<init>Hv"(%"record.std.core:Array<T>" addrspace(1)* noalias %this, i8 addrspace(1)* %"$BP", %TypeInfo* %outerTI) #3 gc "cangjie" personality i32 (...)* @"__cj_personality_v0$" !dbg !16 !LinkageType !0 {
bb0:
  %0 = getelementptr inbounds %"record.std.core:Array<T>", %"record.std.core:Array<T>" addrspace(1)* %this, i32 0, i32 1, !dbg !18
  store i64 0, i64 addrspace(1)* %0, align 8, !dbg !18
  %1 = call noalias i8 addrspace(1)* @llvm.cj.malloc.array(i8* bitcast (%TypeInfo* @"RawArray<Int64>.ti" to i8*), i64 0, i64 8), !dbg !19
  %2 = getelementptr inbounds %"record.std.core:Array<T>", %"record.std.core:Array<T>" addrspace(1)* %this, i32 0, i32 0, !dbg !20
  call void @llvm.cj.gcwrite.ref(i8 addrspace(1)* %1, i8 addrspace(1)* %"$BP", i8 addrspace(1)* addrspace(1)* %2), !dbg !20
  %3 = getelementptr inbounds %"record.std.core:Array<T>", %"record.std.core:Array<T>" addrspace(1)* %this, i32 0, i32 2, !dbg !21
  store i64 0, i64 addrspace(1)* %3, align 8, !dbg !21
  ret void, !dbg !22
}

declare noalias i8 addrspace(1)* @llvm.cj.malloc.array(i8*, i64, i64)

; Function Attrs: argmemonly nounwind
declare void @llvm.cj.gcwrite.ref(i8 addrspace(1)*, i8 addrspace(1)* nocapture, i8 addrspace(1)* addrspace(1)* nocapture) #4

attributes #0 = { "CJGlobalValue" }
attributes #1 = { "CFileKlass" "NotModifiableClass" }
attributes #2 = { noinline }
attributes #3 = { "record_mut" "thisParamHasBP" }
attributes #4 = { argmemonly nounwind }

!llvm.module.flags = !{!1, !2, !3, !4}
!llvm.dbg.cu = !{!5}

!0 = !{!"InternalLinkage"}
!1 = !{i32 2, !"CJBC", i32 1}
!2 = !{i32 2, !"Cangjie_OPT", i32 0}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 2, !"Dwarf Version", i32 4}
!5 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !6, producer: "Cangjie Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!6 = !DIFile(filename: "11-example", directory: ".")
!7 = distinct !DISubprogram(scope: !9, file: !8, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !11)
!8 = !DIFile(filename: "byte_extension.cj", directory: "std.core")
!9 = !DINamespace(name: "example", scope: null)
!10 = !DISubroutineType(types: !11)
!11 = !{}
!12 = !DILocation(line: 0, scope: !7, isImplicitCode: true)
!13 = distinct !DISubprogram(scope: !9, file: !14, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !11)
!14 = !DIFile(filename: "string_common.cj", directory: "std.core")
!15 = !DILocation(line: 0, scope: !13, isImplicitCode: true)
!16 = distinct !DISubprogram(scope: !9, file: !17, line: 28, type: !10, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !11)
!17 = !DIFile(filename: "array.cj", directory: "std.core")
!18 = !DILocation(line: 29, column: 9, scope: !16)
!19 = !DILocation(line: 30, column: 23, scope: !16)
!20 = !DILocation(line: 30, column: 9, scope: !16)
!21 = !DILocation(line: 31, column: 9, scope: !16)
!22 = !DILocation(line: 32, column: 5, scope: !16)
