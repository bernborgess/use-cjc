; ModuleID = '3-example'
source_filename = "3-example"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%TypeTemplate = type { i8*, i8, i8, i16, i16, i8*, i8*, i8*, i8*, %ExtensionDef**, i16 }
%ExtensionDef = type { i32, i8, i8, i16, i8*, i8*, i8*, i8* }
%"Tuple<Int64,Int64>" = type { i64, i64 }
%"record.std.core:Array<T>" = type { i8 addrspace(1)*, i64, i64 }
%"record.std.core:Range<Int64>" = type { i64, i64, i64, i1, i1, i1 }
%TypeInfo = type { i8*, i8, i8, i16, i32, %BitMap*, i32, i8, i8, i16, i32*, i8*, i8*, i8*, %TypeInfo*, %ExtensionDef**, i8*, i8* }
%BitMap = type { i32, [0 x i8] }

@Closure.tt = external global %TypeTemplate
@"$has_applied_pkg_init_func" = external global i1, !LinkageType !0 #0
@has_invoked_pkg_init_literal = external global i1, !LinkageType !0 #0

define void @_CNat5ArrayIlE9normalizeHRNat5RangeIlE(%"Tuple<Int64,Int64>"* noalias sret(%"Tuple<Int64,Int64>") %0, %"record.std.core:Array<T>"* noalias nocapture readonly %this, %"record.std.core:Range<Int64>"* noalias nocapture readonly %range, %TypeInfo* %outerTI) gc "cangjie" personality i32 (...)* @"__cj_personality_v0$" !dbg !7 !LinkageType !0 {
allocas:
  %start = alloca i64, align 8
  %1 = alloca i64, align 8
  %end = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i1, align 1
  %4 = alloca i64, align 8
  %5 = alloca %"Tuple<Int64,Int64>", align 8
  br label %bb0

bb0:                                              ; preds = %allocas
  %6 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>"* %range, i32 0, i32 3, !dbg !12
  %7 = load i1, i1* %6, align 1, !dbg !12
  br i1 %7, label %bb3, label %bb4, !dbg !13

bb3:                                              ; preds = %bb0
  %8 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>"* %range, i32 0, i32 0, !dbg !14
  %9 = load i64, i64* %8, align 8, !dbg !14
  store i64 %9, i64* %1, align 8, !dbg !13
  br label %bb2, !dbg !15

bb2:                                              ; preds = %bb4, %bb3
  %10 = load i64, i64* %1, align 8, !dbg !13
  store i64 %10, i64* %start, align 8, !dbg !16
  %11 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>"* %range, i32 0, i32 4, !dbg !17
  %12 = load i1, i1* %11, align 1, !dbg !17
  br i1 %12, label %bb6, label %bb7, !dbg !18

bb6:                                              ; preds = %bb2
  %13 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>"* %range, i32 0, i32 1, !dbg !19
  %14 = load i64, i64* %13, align 8, !dbg !19
  store i64 %14, i64* %2, align 8, !dbg !18
  br label %bb5, !dbg !15

bb5:                                              ; preds = %bb7, %bb6
  %15 = load i64, i64* %2, align 8, !dbg !18
  store i64 %15, i64* %end, align 8, !dbg !20
  %16 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>"* %range, i32 0, i32 5, !dbg !21
  %17 = load i1, i1* %16, align 1, !dbg !21
  br i1 %17, label %bb8, label %bb9, !dbg !21

bb8:                                              ; preds = %bb5
  %18 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>"* %range, i32 0, i32 4, !dbg !22
  %19 = load i1, i1* %18, align 1, !dbg !22
  store i1 %19, i1* %3, align 1, !dbg !22
  br label %bb10, !dbg !21

bb10:                                             ; preds = %bb9, %bb8
  %20 = load i1, i1* %3, align 1, !dbg !21
  br i1 %20, label %bb12, label %bb11, !dbg !23

bb12:                                             ; preds = %bb10
  %21 = load i64, i64* %end, align 8, !dbg !24
  %22 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>"* %range, i32 0, i32 2, !dbg !25
  %23 = load i64, i64* %22, align 8, !dbg !25
  %icmpsgt = icmp sgt i64 %23, 0, !dbg !25
  br i1 %icmpsgt, label %bb14, label %bb15, !dbg !26

bb14:                                             ; preds = %bb12
  store i64 1, i64* %4, align 8, !dbg !26
  br label %bb13, !dbg !15

bb13:                                             ; preds = %bb15, %bb14
  %24 = load i64, i64* %4, align 8, !dbg !26
  %25 = add i64 %21, %24, !dbg !24
  store i64 %25, i64* %end, align 8, !dbg !24
  br label %bb11, !dbg !15

bb11:                                             ; preds = %bb13, %bb10
  %26 = load i64, i64* %start, align 8, !dbg !27
  %27 = load i64, i64* %end, align 8, !dbg !28
  %28 = getelementptr inbounds %"Tuple<Int64,Int64>", %"Tuple<Int64,Int64>"* %5, i32 0, i32 0, !dbg !29
  store i64 %26, i64* %28, align 8, !dbg !29
  %29 = getelementptr inbounds %"Tuple<Int64,Int64>", %"Tuple<Int64,Int64>"* %5, i32 0, i32 1, !dbg !29
  store i64 %27, i64* %29, align 8, !dbg !29
  %30 = bitcast %"Tuple<Int64,Int64>"* %0 to i8*
  %31 = bitcast %"Tuple<Int64,Int64>"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 16, i1 false)
  ret void, !dbg !30

bb15:                                             ; preds = %bb12
  store i64 -1, i64* %4, align 8, !dbg !26
  br label %bb13, !dbg !15

bb9:                                              ; preds = %bb5
  store i1 false, i1* %3, align 1, !dbg !21
  br label %bb10, !dbg !21

bb7:                                              ; preds = %bb2
  %32 = getelementptr inbounds %"record.std.core:Array<T>", %"record.std.core:Array<T>"* %this, i32 0, i32 2, !dbg !31
  %33 = load i64, i64* %32, align 8, !dbg !31
  store i64 %33, i64* %2, align 8, !dbg !18
  br label %bb5, !dbg !15

bb4:                                              ; preds = %bb0
  store i64 0, i64* %1, align 8, !dbg !13
  br label %bb2, !dbg !15
}

define private i32 @"__cj_personality_v0$"(...) {
entry:
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { "CJGlobalValue" }
attributes #1 = { argmemonly nocallback nofree nounwind willreturn }

!llvm.module.flags = !{!1, !2, !3, !4}
!llvm.dbg.cu = !{!5}

!0 = !{!"InternalLinkage"}
!1 = !{i32 2, !"CJBC", i32 1}
!2 = !{i32 2, !"Cangjie_OPT", i32 0}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 2, !"Dwarf Version", i32 4}
!5 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !6, producer: "Cangjie Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!6 = !DIFile(filename: "3-example", directory: ".")
!7 = distinct !DISubprogram(scope: !9, file: !8, line: 230, type: !10, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !11)
!8 = !DIFile(filename: "array.cj", directory: "std.core")
!9 = !DINamespace(name: "example", scope: null)
!10 = !DISubroutineType(types: !11)
!11 = !{}
!12 = !DILocation(line: 231, column: 25, scope: !7)
!13 = !DILocation(line: 231, column: 21, scope: !7)
!14 = !DILocation(line: 232, column: 13, scope: !7)
!15 = !DILocation(line: 0, scope: !7, isImplicitCode: true)
!16 = !DILocation(line: 231, column: 9, scope: !7)
!17 = !DILocation(line: 236, column: 23, scope: !7)
!18 = !DILocation(line: 236, column: 19, scope: !7)
!19 = !DILocation(line: 237, column: 13, scope: !7)
!20 = !DILocation(line: 236, column: 9, scope: !7)
!21 = !DILocation(line: 241, column: 13, scope: !7)
!22 = !DILocation(line: 241, column: 31, scope: !7)
!23 = !DILocation(line: 241, column: 9, scope: !7)
!24 = !DILocation(line: 242, column: 13, scope: !7)
!25 = !DILocation(line: 242, column: 24, scope: !7)
!26 = !DILocation(line: 242, column: 20, scope: !7)
!27 = !DILocation(line: 248, column: 17, scope: !7)
!28 = !DILocation(line: 248, column: 24, scope: !7)
!29 = !DILocation(line: 248, column: 16, scope: !7)
!30 = !DILocation(line: 248, column: 9, scope: !7)
!31 = !DILocation(line: 239, column: 13, scope: !7)
