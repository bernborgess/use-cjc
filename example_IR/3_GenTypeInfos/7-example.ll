; ModuleID = '7-example'
source_filename = "7-example"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"record.std.core:String" = type { i8 addrspace(1)*, i32, i32 }
%TypeInfo = type { i8*, i8, i8, i16, i32, %BitMap*, i32, i8, i8, i16, i32*, i8*, i8*, i8*, %TypeInfo*, %ExtensionDef**, i8*, i8* }
%BitMap = type { i32, [0 x i8] }
%ExtensionDef = type { i32, i8, i8, i16, i8*, i8*, i8*, i8* }
%"record.std.core:Range<Int64>" = type { i64, i64, i64, i1, i1, i1 }

@"$has_applied_pkg_init_func" = external global i1, !LinkageType !0 #0
@has_invoked_pkg_init_literal = external global i1, !LinkageType !0 #0
@"$const_cjstring.daAk2A5RJ4U" = private constant %"record.std.core:String" #1
@"std.core:IllegalArgumentException.ti" = external global %TypeInfo, !RelatedType !1 #2

define void @"_CNat5RangeIlE6<init>Hlllbbb"(%"record.std.core:Range<Int64>" addrspace(1)* noalias %this, i8 addrspace(1)* %"$BP", i64 %start, i64 %end, i64 %step, i1 %hasStart, i1 %hasEnd, i1 %isClosed, %TypeInfo* %outerTI) #3 gc "cangjie" personality i32 (...)* @"__cj_personality_v0$" !dbg !8 !LinkageType !0 {
bb0:
  %icmpeq = icmp eq i64 %step, 0, !dbg !13
  br i1 %icmpeq, label %bb4, label %bb3, !dbg !14

bb4:                                              ; preds = %bb0
  %0 = call noalias i8 addrspace(1)* @llvm.cj.malloc.object(i8* bitcast (%TypeInfo* @"std.core:IllegalArgumentException.ti" to i8*), i32 56), !dbg !15
  call void @"_CNat24IllegalArgumentException6<init>HRNat6StringE"(i8 addrspace(1)* %0, %"record.std.core:String"* @"$const_cjstring.daAk2A5RJ4U", %TypeInfo* @"std.core:IllegalArgumentException.ti"), !dbg !15
  call void @llvm.cj.throw.exception(i8 addrspace(1)* %0), !dbg !16
  unreachable, !dbg !16

bb3:                                              ; preds = %bb0
  %1 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>" addrspace(1)* %this, i32 0, i32 0, !dbg !17
  store i64 %start, i64 addrspace(1)* %1, align 8, !dbg !17
  %2 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>" addrspace(1)* %this, i32 0, i32 1, !dbg !18
  store i64 %end, i64 addrspace(1)* %2, align 8, !dbg !18
  %3 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>" addrspace(1)* %this, i32 0, i32 2, !dbg !19
  store i64 %step, i64 addrspace(1)* %3, align 8, !dbg !19
  %4 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>" addrspace(1)* %this, i32 0, i32 3, !dbg !20
  store i1 %hasStart, i1 addrspace(1)* %4, align 1, !dbg !20
  %5 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>" addrspace(1)* %this, i32 0, i32 4, !dbg !21
  store i1 %hasEnd, i1 addrspace(1)* %5, align 1, !dbg !21
  %6 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>" addrspace(1)* %this, i32 0, i32 5, !dbg !22
  store i1 %isClosed, i1 addrspace(1)* %6, align 1, !dbg !22
  ret void, !dbg !23
}

define private i32 @"__cj_personality_v0$"(...) {
entry:
  ret i32 0
}

declare noalias i8 addrspace(1)* @llvm.cj.malloc.object(i8*, i32)

declare void @"_CNat24IllegalArgumentException6<init>HRNat6StringE"(i8 addrspace(1)*, %"record.std.core:String"* nocapture readonly, %TypeInfo*) gc "cangjie"

declare void @llvm.cj.throw.exception(i8 addrspace(1)*)

attributes #0 = { "CJGlobalValue" }
attributes #1 = { "cjstring_literal" }
attributes #2 = { "CFileKlass" "NotModifiableClass" }
attributes #3 = { "record_mut" "thisParamHasBP" }

!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.dbg.cu = !{!6}

!0 = !{!"InternalLinkage"}
!1 = !{!"ObjLayout.std.core:IllegalArgumentException"}
!2 = !{i32 2, !"CJBC", i32 1}
!3 = !{i32 2, !"Cangjie_OPT", i32 0}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 2, !"Dwarf Version", i32 4}
!6 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !7, producer: "Cangjie Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!7 = !DIFile(filename: "7-example", directory: ".")
!8 = distinct !DISubprogram(scope: !10, file: !9, line: 24, type: !11, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !12)
!9 = !DIFile(filename: "range.cj", directory: "std.core")
!10 = !DINamespace(name: "example", scope: null)
!11 = !DISubroutineType(types: !12)
!12 = !{}
!13 = !DILocation(line: 25, column: 13, scope: !8)
!14 = !DILocation(line: 25, column: 9, scope: !8)
!15 = !DILocation(line: 26, column: 19, scope: !8)
!16 = !DILocation(line: 26, column: 13, scope: !8)
!17 = !DILocation(line: 28, column: 9, scope: !8)
!18 = !DILocation(line: 29, column: 9, scope: !8)
!19 = !DILocation(line: 30, column: 9, scope: !8)
!20 = !DILocation(line: 31, column: 9, scope: !8)
!21 = !DILocation(line: 32, column: 9, scope: !8)
!22 = !DILocation(line: 33, column: 9, scope: !8)
!23 = !DILocation(line: 34, column: 5, scope: !8)
