; ModuleID = '4-example'
source_filename = "4-example"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"record.std.core:Range<Int64>" = type { i64, i64, i64, i1, i1, i1 }
%TypeInfo = type { i8*, i8, i8, i16, i32, %BitMap*, i32, i8, i8, i16, i32*, i8*, i8*, i8*, %TypeInfo*, %ExtensionDef**, i8*, i8* }
%BitMap = type { i32, [0 x i8] }
%ExtensionDef = type { i32, i8, i8, i16, i8*, i8*, i8*, i8* }

@"$has_applied_pkg_init_func" = external global i1, !LinkageType !0 #0
@has_invoked_pkg_init_literal = external global i1, !LinkageType !0 #0

define i1 @_CNat5RangeIlE7isEmptyHv(%"record.std.core:Range<Int64>"* noalias nocapture readonly %this, %TypeInfo* %outerTI) gc "cangjie" personality i32 (...)* @"__cj_personality_v0$" !dbg !7 !LinkageType !0 {
allocas:
  %0 = alloca i1, align 1
  br label %bb0

bb0:                                              ; preds = %allocas
  %1 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>"* %this, i32 0, i32 5, !dbg !12
  %2 = load i1, i1* %1, align 1, !dbg !12
  br i1 %2, label %bb3, label %bb8, !dbg !13

bb3:                                              ; preds = %bb0
  %3 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>"* %this, i32 0, i32 2, !dbg !14
  %4 = load i64, i64* %3, align 8, !dbg !14
  %icmpsgt = icmp sgt i64 %4, 0, !dbg !14
  br i1 %icmpsgt, label %bb5, label %bb4, !dbg !15

bb5:                                              ; preds = %bb3
  %5 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>"* %this, i32 0, i32 0, !dbg !16
  %6 = load i64, i64* %5, align 8, !dbg !16
  %7 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>"* %this, i32 0, i32 1, !dbg !17
  %8 = load i64, i64* %7, align 8, !dbg !17
  %icmpsgt1 = icmp sgt i64 %6, %8, !dbg !16
  store i1 %icmpsgt1, i1* %0, align 1
  %9 = load i1, i1* %0, align 1, !dbg !18
  ret i1 %9, !dbg !18

bb4:                                              ; preds = %bb3
  %10 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>"* %this, i32 0, i32 0, !dbg !19
  %11 = load i64, i64* %10, align 8, !dbg !19
  %12 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>"* %this, i32 0, i32 1, !dbg !20
  %13 = load i64, i64* %12, align 8, !dbg !20
  %icmpslt = icmp slt i64 %11, %13, !dbg !19
  store i1 %icmpslt, i1* %0, align 1
  %14 = load i1, i1* %0, align 1, !dbg !21
  ret i1 %14, !dbg !21

bb8:                                              ; preds = %bb0
  %15 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>"* %this, i32 0, i32 2, !dbg !22
  %16 = load i64, i64* %15, align 8, !dbg !22
  %icmpsgt2 = icmp sgt i64 %16, 0, !dbg !22
  br i1 %icmpsgt2, label %bb10, label %bb9, !dbg !23

bb10:                                             ; preds = %bb8
  %17 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>"* %this, i32 0, i32 0, !dbg !24
  %18 = load i64, i64* %17, align 8, !dbg !24
  %19 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>"* %this, i32 0, i32 1, !dbg !25
  %20 = load i64, i64* %19, align 8, !dbg !25
  %icmpsge = icmp sge i64 %18, %20, !dbg !24
  store i1 %icmpsge, i1* %0, align 1
  %21 = load i1, i1* %0, align 1, !dbg !26
  ret i1 %21, !dbg !26

bb9:                                              ; preds = %bb8
  %22 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>"* %this, i32 0, i32 0, !dbg !27
  %23 = load i64, i64* %22, align 8, !dbg !27
  %24 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>"* %this, i32 0, i32 1, !dbg !28
  %25 = load i64, i64* %24, align 8, !dbg !28
  %icmpsle = icmp sle i64 %23, %25, !dbg !27
  store i1 %icmpsle, i1* %0, align 1
  %26 = load i1, i1* %0, align 1, !dbg !29
  ret i1 %26, !dbg !29
}

define private i32 @"__cj_personality_v0$"(...) {
entry:
  ret i32 0
}

attributes #0 = { "CJGlobalValue" }

!llvm.module.flags = !{!1, !2, !3, !4}
!llvm.dbg.cu = !{!5}

!0 = !{!"InternalLinkage"}
!1 = !{i32 2, !"CJBC", i32 1}
!2 = !{i32 2, !"Cangjie_OPT", i32 0}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 2, !"Dwarf Version", i32 4}
!5 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !6, producer: "Cangjie Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!6 = !DIFile(filename: "4-example", directory: ".")
!7 = distinct !DISubprogram(scope: !9, file: !8, line: 41, type: !10, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !11)
!8 = !DIFile(filename: "range.cj", directory: "std.core")
!9 = !DINamespace(name: "example", scope: null)
!10 = !DISubroutineType(types: !11)
!11 = !{}
!12 = !DILocation(line: 42, column: 13, scope: !7)
!13 = !DILocation(line: 42, column: 9, scope: !7)
!14 = !DILocation(line: 43, column: 17, scope: !7)
!15 = !DILocation(line: 43, column: 13, scope: !7)
!16 = !DILocation(line: 44, column: 24, scope: !7)
!17 = !DILocation(line: 44, column: 32, scope: !7)
!18 = !DILocation(line: 44, column: 17, scope: !7)
!19 = !DILocation(line: 46, column: 20, scope: !7)
!20 = !DILocation(line: 46, column: 28, scope: !7)
!21 = !DILocation(line: 46, column: 13, scope: !7)
!22 = !DILocation(line: 48, column: 17, scope: !7)
!23 = !DILocation(line: 48, column: 13, scope: !7)
!24 = !DILocation(line: 49, column: 24, scope: !7)
!25 = !DILocation(line: 49, column: 33, scope: !7)
!26 = !DILocation(line: 49, column: 17, scope: !7)
!27 = !DILocation(line: 51, column: 20, scope: !7)
!28 = !DILocation(line: 51, column: 29, scope: !7)
!29 = !DILocation(line: 51, column: 13, scope: !7)
