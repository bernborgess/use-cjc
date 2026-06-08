; ModuleID = '1-example'
source_filename = "1-example"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%TypeInfo = type { i8*, i8, i8, i16, i32, %BitMap*, i32, i8, i8, i16, i32*, i8*, i8*, i8*, %TypeInfo*, %ExtensionDef**, i8*, i8* }
%BitMap = type { i32, [0 x i8] }
%ExtensionDef = type { i32, i8, i8, i16, i8*, i8*, i8*, i8* }
%"record.std.core:String" = type { i8 addrspace(1)*, i32, i32 }
%"record.std.core:Range<Int64>" = type { i64, i64, i64, i1, i1, i1 }
%"Tuple<Int64,Int64,Int64>" = type { i64, i64, i64 }

@"$has_applied_pkg_init_func" = external global i1, !LinkageType !0 #0
@has_invoked_pkg_init_literal = external global i1, !LinkageType !0 #0
@Int64.ti = external global %TypeInfo #1
@"$const_cjstring.c-J6RJj+YQj" = private constant %"record.std.core:String" #2

define i64 @_CNat5RangeIlE4lastHv(%"record.std.core:Range<Int64>"* noalias nocapture readonly %this, %TypeInfo* %outerTI) gc "cangjie" personality i32 (...)* @"__cj_personality_v0$" !dbg !7 !LinkageType !0 {
allocas:
  %0 = alloca i64, align 8
  %1 = alloca i1, align 1
  %2 = alloca %"Tuple<Int64,Int64,Int64>", align 8
  %3 = alloca %"Tuple<Int64,Int64,Int64>", align 8
  %4 = alloca %"Tuple<Int64,Int64,Int64>", align 8
  %5 = alloca i64, align 8
  %6 = alloca %"Tuple<Int64,Int64,Int64>", align 8
  br label %bb0

bb0:                                              ; preds = %allocas
  %7 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>"* %this, i32 0, i32 2, !dbg !12
  %8 = load i64, i64* %7, align 8, !dbg !12
  %icmpne = icmp ne i64 %8, 1, !dbg !12
  br i1 %icmpne, label %bb2, label %bb3, !dbg !12

bb2:                                              ; preds = %bb0
  %9 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>"* %this, i32 0, i32 2, !dbg !13
  %10 = load i64, i64* %9, align 8, !dbg !13
  %icmpne1 = icmp ne i64 %10, -1, !dbg !13
  store i1 %icmpne1, i1* %1, align 1, !dbg !13
  br label %bb4, !dbg !12

bb4:                                              ; preds = %bb3, %bb2
  %11 = load i1, i1* %1, align 1, !dbg !12
  br i1 %11, label %bb6, label %bb5, !dbg !14

bb6:                                              ; preds = %bb4
  %12 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>"* %this, i32 0, i32 2, !dbg !15
  %13 = load i64, i64* %12, align 8, !dbg !15
  %icmpsgt = icmp sgt i64 %13, 0, !dbg !15
  br i1 %icmpsgt, label %bb8, label %bb9, !dbg !16

bb8:                                              ; preds = %bb6
  %14 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>"* %this, i32 0, i32 0, !dbg !17
  %15 = load i64, i64* %14, align 8, !dbg !17
  %16 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>"* %this, i32 0, i32 1, !dbg !18
  %17 = load i64, i64* %16, align 8, !dbg !18
  %18 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>"* %this, i32 0, i32 2, !dbg !19
  %19 = load i64, i64* %18, align 8, !dbg !19
  %20 = getelementptr inbounds %"Tuple<Int64,Int64,Int64>", %"Tuple<Int64,Int64,Int64>"* %3, i32 0, i32 0, !dbg !20
  store i64 %15, i64* %20, align 8, !dbg !20
  %21 = getelementptr inbounds %"Tuple<Int64,Int64,Int64>", %"Tuple<Int64,Int64,Int64>"* %3, i32 0, i32 1, !dbg !20
  store i64 %17, i64* %21, align 8, !dbg !20
  %22 = getelementptr inbounds %"Tuple<Int64,Int64,Int64>", %"Tuple<Int64,Int64,Int64>"* %3, i32 0, i32 2, !dbg !20
  store i64 %19, i64* %22, align 8, !dbg !20
  %23 = bitcast %"Tuple<Int64,Int64,Int64>"* %2 to i8*, !dbg !16
  %24 = bitcast %"Tuple<Int64,Int64,Int64>"* %3 to i8*, !dbg !16
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 %24, i64 24, i1 false), !dbg !16
  br label %bb7, !dbg !21

bb7:                                              ; preds = %bb9, %bb8
  %25 = bitcast %"Tuple<Int64,Int64,Int64>"* %4 to i8*, !dbg !16
  %26 = bitcast %"Tuple<Int64,Int64,Int64>"* %2 to i8*, !dbg !16
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 24, i1 false), !dbg !16
  %27 = getelementptr inbounds %"Tuple<Int64,Int64,Int64>", %"Tuple<Int64,Int64,Int64>"* %4, i32 0, i32 0, !dbg !21
  %lower = load i64, i64* %27, align 8, !dbg !21
  %28 = getelementptr inbounds %"Tuple<Int64,Int64,Int64>", %"Tuple<Int64,Int64,Int64>"* %4, i32 0, i32 1, !dbg !21
  %upper = load i64, i64* %28, align 8, !dbg !21
  %29 = getelementptr inbounds %"Tuple<Int64,Int64,Int64>", %"Tuple<Int64,Int64,Int64>"* %4, i32 0, i32 2, !dbg !21
  %absStep = load i64, i64* %29, align 8, !dbg !21
  %30 = call i64 @_CNatXl8positionHv(i64 %upper, %TypeInfo* @Int64.ti), !dbg !22
  %31 = call i64 @_CNatXl8positionHv(i64 %lower, %TypeInfo* @Int64.ti), !dbg !23
  %gap = sub i64 %30, %31, !dbg !22
  %32 = icmp eq i64 %absStep, 0, !dbg !24
  br i1 %32, label %divisorIs0, label %divisorIsNot0, !dbg !24

divisorIs0:                                       ; preds = %bb7
  %33 = call i8 addrspace(1)* @"rt$CreateArithmeticException_msg"(%"record.std.core:String"* @"$const_cjstring.c-J6RJj+YQj"), !dbg !24
  call void @llvm.cj.throw.exception(i8 addrspace(1)* %33), !dbg !24
  unreachable, !dbg !24

divisorIsNot0:                                    ; preds = %bb7
  %rem = urem i64 %gap, %absStep, !dbg !24
  %icmpne2 = icmp ne i64 %rem, 0, !dbg !25
  br i1 %icmpne2, label %bb11, label %bb5, !dbg !26

end:                                              ; No predecessors!

bb11:                                             ; preds = %divisorIsNot0
  %34 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>"* %this, i32 0, i32 2, !dbg !27
  %35 = load i64, i64* %34, align 8, !dbg !27
  %icmpsgt3 = icmp sgt i64 %35, 0, !dbg !27
  br i1 %icmpsgt3, label %bb13, label %bb15, !dbg !28

bb13:                                             ; preds = %bb11
  %36 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>"* %this, i32 0, i32 1, !dbg !29
  %37 = load i64, i64* %36, align 8, !dbg !29
  %Neg = sub i64 0, %rem, !dbg !30
  %38 = call i64 @_CNatXl4nextHl(i64 %37, i64 %Neg, %TypeInfo* @Int64.ti), !dbg !29
  store i64 %38, i64* %0, align 8
  %39 = load i64, i64* %0, align 8, !dbg !31
  ret i64 %39, !dbg !31

bb15:                                             ; preds = %bb11
  %40 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>"* %this, i32 0, i32 1, !dbg !32
  %41 = load i64, i64* %40, align 8, !dbg !32
  %42 = call i64 @_CNatXl4nextHl(i64 %41, i64 %rem, %TypeInfo* @Int64.ti), !dbg !32
  store i64 %42, i64* %0, align 8
  %43 = load i64, i64* %0, align 8, !dbg !33
  ret i64 %43, !dbg !33

bb5:                                              ; preds = %divisorIsNot0, %bb4
  %44 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>"* %this, i32 0, i32 5, !dbg !34
  %45 = load i1, i1* %44, align 1, !dbg !34
  br i1 %45, label %bb18, label %bb19, !dbg !35

bb18:                                             ; preds = %bb5
  %46 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>"* %this, i32 0, i32 1, !dbg !36
  %47 = load i64, i64* %46, align 8, !dbg !36
  store i64 %47, i64* %5, align 8, !dbg !35
  br label %bb17, !dbg !21

bb17:                                             ; preds = %bb19, %bb18
  %48 = load i64, i64* %5, align 8, !dbg !35
  store i64 %48, i64* %0, align 8
  %49 = load i64, i64* %0, align 8, !dbg !35
  ret i64 %49, !dbg !35

bb19:                                             ; preds = %bb5
  %50 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>"* %this, i32 0, i32 1, !dbg !37
  %51 = load i64, i64* %50, align 8, !dbg !37
  %52 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>"* %this, i32 0, i32 2, !dbg !38
  %53 = load i64, i64* %52, align 8, !dbg !38
  %Neg4 = sub i64 0, %53, !dbg !39
  %54 = call i64 @_CNatXl4nextHl(i64 %51, i64 %Neg4, %TypeInfo* @Int64.ti), !dbg !37
  store i64 %54, i64* %5, align 8, !dbg !35
  br label %bb17, !dbg !21

bb9:                                              ; preds = %bb6
  %55 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>"* %this, i32 0, i32 1, !dbg !40
  %56 = load i64, i64* %55, align 8, !dbg !40
  %57 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>"* %this, i32 0, i32 0, !dbg !41
  %58 = load i64, i64* %57, align 8, !dbg !41
  %59 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>"* %this, i32 0, i32 2, !dbg !42
  %60 = load i64, i64* %59, align 8, !dbg !42
  %Neg5 = sub i64 0, %60, !dbg !43
  %61 = getelementptr inbounds %"Tuple<Int64,Int64,Int64>", %"Tuple<Int64,Int64,Int64>"* %6, i32 0, i32 0, !dbg !44
  store i64 %56, i64* %61, align 8, !dbg !44
  %62 = getelementptr inbounds %"Tuple<Int64,Int64,Int64>", %"Tuple<Int64,Int64,Int64>"* %6, i32 0, i32 1, !dbg !44
  store i64 %58, i64* %62, align 8, !dbg !44
  %63 = getelementptr inbounds %"Tuple<Int64,Int64,Int64>", %"Tuple<Int64,Int64,Int64>"* %6, i32 0, i32 2, !dbg !44
  store i64 %Neg5, i64* %63, align 8, !dbg !44
  %64 = bitcast %"Tuple<Int64,Int64,Int64>"* %2 to i8*, !dbg !16
  %65 = bitcast %"Tuple<Int64,Int64,Int64>"* %6 to i8*, !dbg !16
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %64, i8* align 8 %65, i64 24, i1 false), !dbg !16
  br label %bb7, !dbg !21

bb3:                                              ; preds = %bb0
  store i1 false, i1* %1, align 1, !dbg !12
  br label %bb4, !dbg !12
}

define private i32 @"__cj_personality_v0$"(...) {
entry:
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare i64 @_CNatXl8positionHv(i64, %TypeInfo*) gc "cangjie"

; Function Attrs: noinline
declare i8 addrspace(1)* @"rt$CreateArithmeticException_msg"(%"record.std.core:String"* nocapture readonly) #4 gc "cangjie"

declare void @llvm.cj.throw.exception(i8 addrspace(1)*)

declare i64 @_CNatXl4nextHl(i64, i64, %TypeInfo*) gc "cangjie"

attributes #0 = { "CJGlobalValue" }
attributes #1 = { "CFileKlass" "NotModifiableClass" }
attributes #2 = { "cjstring_literal" }
attributes #3 = { argmemonly nocallback nofree nounwind willreturn }
attributes #4 = { noinline }

!llvm.module.flags = !{!1, !2, !3, !4}
!llvm.dbg.cu = !{!5}

!0 = !{!"InternalLinkage"}
!1 = !{i32 2, !"CJBC", i32 1}
!2 = !{i32 2, !"Cangjie_OPT", i32 0}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 2, !"Dwarf Version", i32 4}
!5 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !6, producer: "Cangjie Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!6 = !DIFile(filename: "1-example", directory: ".")
!7 = distinct !DISubprogram(scope: !9, file: !8, line: 61, type: !10, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !11)
!8 = !DIFile(filename: "range.cj", directory: "std.core")
!9 = !DINamespace(name: "example", scope: null)
!10 = !DISubroutineType(types: !11)
!11 = !{}
!12 = !DILocation(line: 62, column: 13, scope: !7)
!13 = !DILocation(line: 62, column: 26, scope: !7)
!14 = !DILocation(line: 62, column: 9, scope: !7)
!15 = !DILocation(line: 63, column: 47, scope: !7)
!16 = !DILocation(line: 63, column: 43, scope: !7)
!17 = !DILocation(line: 64, column: 18, scope: !7)
!18 = !DILocation(line: 64, column: 25, scope: !7)
!19 = !DILocation(line: 64, column: 30, scope: !7)
!20 = !DILocation(line: 64, column: 17, scope: !7)
!21 = !DILocation(line: 0, scope: !7, isImplicitCode: true)
!22 = !DILocation(line: 68, column: 30, scope: !7)
!23 = !DILocation(line: 68, column: 49, scope: !7)
!24 = !DILocation(line: 69, column: 29, scope: !7)
!25 = !DILocation(line: 70, column: 17, scope: !7)
!26 = !DILocation(line: 70, column: 13, scope: !7)
!27 = !DILocation(line: 71, column: 21, scope: !7)
!28 = !DILocation(line: 71, column: 17, scope: !7)
!29 = !DILocation(line: 72, column: 28, scope: !7)
!30 = !DILocation(line: 72, column: 37, scope: !7)
!31 = !DILocation(line: 72, column: 21, scope: !7)
!32 = !DILocation(line: 74, column: 28, scope: !7)
!33 = !DILocation(line: 74, column: 21, scope: !7)
!34 = !DILocation(line: 78, column: 13, scope: !7)
!35 = !DILocation(line: 78, column: 9, scope: !7)
!36 = !DILocation(line: 79, column: 13, scope: !7)
!37 = !DILocation(line: 81, column: 13, scope: !7)
!38 = !DILocation(line: 81, column: 23, scope: !7)
!39 = !DILocation(line: 81, column: 22, scope: !7)
!40 = !DILocation(line: 66, column: 18, scope: !7)
!41 = !DILocation(line: 66, column: 23, scope: !7)
!42 = !DILocation(line: 66, column: 31, scope: !7)
!43 = !DILocation(line: 66, column: 30, scope: !7)
!44 = !DILocation(line: 66, column: 17, scope: !7)
