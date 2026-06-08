; ModuleID = '1-example'
source_filename = "1-example"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%TypeInfo = type { i8*, i8, i8, i16, i32, %BitMap*, i32, i8, i8, i16, i32*, i8*, i8*, i8*, %TypeInfo*, %ExtensionDef**, i8*, i8* }
%BitMap = type { i32, [0 x i8] }
%ExtensionDef = type { i32, i8, i8, i16, i8*, i8*, i8*, i8* }
%"record.std.core:String" = type { i8 addrspace(1)*, i32, i32 }
%TypeTemplate = type { i8*, i8, i8, i16, i16, i8*, i8*, i8*, i8*, %ExtensionDef**, i16 }
%"record.std.core:Range<Int64>" = type { i64, i64, i64, i1, i1, i1 }
%"Tuple<Int64,Int64,Int64>" = type { i64, i64, i64 }

@"$has_applied_pkg_init_func" = external global i1, !LinkageType !0 #0
@has_invoked_pkg_init_literal = external global i1, !LinkageType !0 #0
@Int64.ti = external global %TypeInfo, !RelatedType !1 #1
@"$const_cjstring.c-J6RJj+YQj" = private constant %"record.std.core:String" { i8 addrspace(1)* addrspacecast (i8* bitcast ({ i8*, i64, [16 x i8] }* @"$const_cjstring_data.c-J6RJj+YQj" to i8*) to i8 addrspace(1)*), i32 0, i32 16 } #2
@"RawArray<UInt8>.ti" = internal global %TypeInfo { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"RawArray<UInt8>.name", i32 0, i32 0), i8 -126, i8 0, i16 0, i32 0, %BitMap* null, i32 0, i8 0, i8 0, i16 -32768, i32* null, i8* bitcast (%TypeTemplate* @RawArray.tt to i8*), i8* null, i8* null, %TypeInfo* @UInt8.ti, %ExtensionDef** null, i8* null, i8* null }, !RelatedType !2 #3
@UInt8.ti = external global %TypeInfo, !RelatedType !3 #1
@"RawArray<UInt8>.name" = private unnamed_addr constant [16 x i8] c"RawArray<UInt8>\00", align 1 #4
@RawArray.tt = external global %TypeTemplate
@"$const_cjstring_data.c-J6RJj+YQj" = private constant { i8*, i64, [16 x i8] } { i8* bitcast (%TypeInfo* @"RawArray<UInt8>.ti" to i8*), i64 16, [16 x i8] c"Divided by zero!" } #5

define i64 @_CNat5RangeIlE4lastHv(%"record.std.core:Range<Int64>"* noalias nocapture readonly %this, %TypeInfo* %outerTI) gc "cangjie" personality i32 (...)* @"__cj_personality_v0$" !dbg !11 !LinkageType !0 {
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
  %7 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>"* %this, i32 0, i32 2, !dbg !16
  %8 = load i64, i64* %7, align 8, !dbg !16
  %icmpne = icmp ne i64 %8, 1, !dbg !16
  br i1 %icmpne, label %bb2, label %bb3, !dbg !16

bb2:                                              ; preds = %bb0
  %9 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>"* %this, i32 0, i32 2, !dbg !17
  %10 = load i64, i64* %9, align 8, !dbg !17
  %icmpne1 = icmp ne i64 %10, -1, !dbg !17
  store i1 %icmpne1, i1* %1, align 1, !dbg !17
  br label %bb4, !dbg !16

bb4:                                              ; preds = %bb3, %bb2
  %11 = load i1, i1* %1, align 1, !dbg !16
  br i1 %11, label %bb6, label %bb5, !dbg !18

bb6:                                              ; preds = %bb4
  %12 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>"* %this, i32 0, i32 2, !dbg !19
  %13 = load i64, i64* %12, align 8, !dbg !19
  %icmpsgt = icmp sgt i64 %13, 0, !dbg !19
  br i1 %icmpsgt, label %bb8, label %bb9, !dbg !20

bb8:                                              ; preds = %bb6
  %14 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>"* %this, i32 0, i32 0, !dbg !21
  %15 = load i64, i64* %14, align 8, !dbg !21
  %16 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>"* %this, i32 0, i32 1, !dbg !22
  %17 = load i64, i64* %16, align 8, !dbg !22
  %18 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>"* %this, i32 0, i32 2, !dbg !23
  %19 = load i64, i64* %18, align 8, !dbg !23
  %20 = getelementptr inbounds %"Tuple<Int64,Int64,Int64>", %"Tuple<Int64,Int64,Int64>"* %3, i32 0, i32 0, !dbg !24
  store i64 %15, i64* %20, align 8, !dbg !24
  %21 = getelementptr inbounds %"Tuple<Int64,Int64,Int64>", %"Tuple<Int64,Int64,Int64>"* %3, i32 0, i32 1, !dbg !24
  store i64 %17, i64* %21, align 8, !dbg !24
  %22 = getelementptr inbounds %"Tuple<Int64,Int64,Int64>", %"Tuple<Int64,Int64,Int64>"* %3, i32 0, i32 2, !dbg !24
  store i64 %19, i64* %22, align 8, !dbg !24
  %23 = bitcast %"Tuple<Int64,Int64,Int64>"* %2 to i8*, !dbg !20
  %24 = bitcast %"Tuple<Int64,Int64,Int64>"* %3 to i8*, !dbg !20
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 %24, i64 24, i1 false), !dbg !20
  br label %bb7, !dbg !25

bb7:                                              ; preds = %bb9, %bb8
  %25 = bitcast %"Tuple<Int64,Int64,Int64>"* %4 to i8*, !dbg !20
  %26 = bitcast %"Tuple<Int64,Int64,Int64>"* %2 to i8*, !dbg !20
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 24, i1 false), !dbg !20
  %27 = getelementptr inbounds %"Tuple<Int64,Int64,Int64>", %"Tuple<Int64,Int64,Int64>"* %4, i32 0, i32 0, !dbg !25
  %lower = load i64, i64* %27, align 8, !dbg !25
  %28 = getelementptr inbounds %"Tuple<Int64,Int64,Int64>", %"Tuple<Int64,Int64,Int64>"* %4, i32 0, i32 1, !dbg !25
  %upper = load i64, i64* %28, align 8, !dbg !25
  %29 = getelementptr inbounds %"Tuple<Int64,Int64,Int64>", %"Tuple<Int64,Int64,Int64>"* %4, i32 0, i32 2, !dbg !25
  %absStep = load i64, i64* %29, align 8, !dbg !25
  %30 = call i64 @_CNatXl8positionHv(i64 %upper, %TypeInfo* @Int64.ti), !dbg !26
  %31 = call i64 @_CNatXl8positionHv(i64 %lower, %TypeInfo* @Int64.ti), !dbg !27
  %gap = sub i64 %30, %31, !dbg !26
  %32 = icmp eq i64 %absStep, 0, !dbg !28
  br i1 %32, label %divisorIs0, label %divisorIsNot0, !dbg !28

divisorIs0:                                       ; preds = %bb7
  %33 = call i8 addrspace(1)* @"rt$CreateArithmeticException_msg"(%"record.std.core:String"* @"$const_cjstring.c-J6RJj+YQj"), !dbg !28
  call void @llvm.cj.throw.exception(i8 addrspace(1)* %33), !dbg !28
  unreachable, !dbg !28

divisorIsNot0:                                    ; preds = %bb7
  %rem = urem i64 %gap, %absStep, !dbg !28
  %icmpne2 = icmp ne i64 %rem, 0, !dbg !29
  br i1 %icmpne2, label %bb11, label %bb5, !dbg !30

bb11:                                             ; preds = %divisorIsNot0
  %34 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>"* %this, i32 0, i32 2, !dbg !31
  %35 = load i64, i64* %34, align 8, !dbg !31
  %icmpsgt3 = icmp sgt i64 %35, 0, !dbg !31
  br i1 %icmpsgt3, label %bb13, label %bb15, !dbg !32

bb13:                                             ; preds = %bb11
  %36 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>"* %this, i32 0, i32 1, !dbg !33
  %37 = load i64, i64* %36, align 8, !dbg !33
  %Neg = sub i64 0, %rem, !dbg !34
  %38 = call i64 @_CNatXl4nextHl(i64 %37, i64 %Neg, %TypeInfo* @Int64.ti), !dbg !33
  store i64 %38, i64* %0, align 8
  %39 = load i64, i64* %0, align 8, !dbg !35
  ret i64 %39, !dbg !35

bb15:                                             ; preds = %bb11
  %40 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>"* %this, i32 0, i32 1, !dbg !36
  %41 = load i64, i64* %40, align 8, !dbg !36
  %42 = call i64 @_CNatXl4nextHl(i64 %41, i64 %rem, %TypeInfo* @Int64.ti), !dbg !36
  store i64 %42, i64* %0, align 8
  %43 = load i64, i64* %0, align 8, !dbg !37
  ret i64 %43, !dbg !37

bb5:                                              ; preds = %divisorIsNot0, %bb4
  %44 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>"* %this, i32 0, i32 5, !dbg !38
  %45 = load i1, i1* %44, align 1, !dbg !38
  br i1 %45, label %bb18, label %bb19, !dbg !39

bb18:                                             ; preds = %bb5
  %46 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>"* %this, i32 0, i32 1, !dbg !40
  %47 = load i64, i64* %46, align 8, !dbg !40
  store i64 %47, i64* %5, align 8, !dbg !39
  br label %bb17, !dbg !25

bb17:                                             ; preds = %bb19, %bb18
  %48 = load i64, i64* %5, align 8, !dbg !39
  store i64 %48, i64* %0, align 8
  %49 = load i64, i64* %0, align 8, !dbg !39
  ret i64 %49, !dbg !39

bb19:                                             ; preds = %bb5
  %50 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>"* %this, i32 0, i32 1, !dbg !41
  %51 = load i64, i64* %50, align 8, !dbg !41
  %52 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>"* %this, i32 0, i32 2, !dbg !42
  %53 = load i64, i64* %52, align 8, !dbg !42
  %Neg4 = sub i64 0, %53, !dbg !43
  %54 = call i64 @_CNatXl4nextHl(i64 %51, i64 %Neg4, %TypeInfo* @Int64.ti), !dbg !41
  store i64 %54, i64* %5, align 8, !dbg !39
  br label %bb17, !dbg !25

bb9:                                              ; preds = %bb6
  %55 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>"* %this, i32 0, i32 1, !dbg !44
  %56 = load i64, i64* %55, align 8, !dbg !44
  %57 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>"* %this, i32 0, i32 0, !dbg !45
  %58 = load i64, i64* %57, align 8, !dbg !45
  %59 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>"* %this, i32 0, i32 2, !dbg !46
  %60 = load i64, i64* %59, align 8, !dbg !46
  %Neg5 = sub i64 0, %60, !dbg !47
  %61 = getelementptr inbounds %"Tuple<Int64,Int64,Int64>", %"Tuple<Int64,Int64,Int64>"* %6, i32 0, i32 0, !dbg !48
  store i64 %56, i64* %61, align 8, !dbg !48
  %62 = getelementptr inbounds %"Tuple<Int64,Int64,Int64>", %"Tuple<Int64,Int64,Int64>"* %6, i32 0, i32 1, !dbg !48
  store i64 %58, i64* %62, align 8, !dbg !48
  %63 = getelementptr inbounds %"Tuple<Int64,Int64,Int64>", %"Tuple<Int64,Int64,Int64>"* %6, i32 0, i32 2, !dbg !48
  store i64 %Neg5, i64* %63, align 8, !dbg !48
  %64 = bitcast %"Tuple<Int64,Int64,Int64>"* %2 to i8*, !dbg !20
  %65 = bitcast %"Tuple<Int64,Int64,Int64>"* %6 to i8*, !dbg !20
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %64, i8* align 8 %65, i64 24, i1 false), !dbg !20
  br label %bb7, !dbg !25

bb3:                                              ; preds = %bb0
  store i1 false, i1* %1, align 1, !dbg !16
  br label %bb4, !dbg !16
}

define private i32 @"__cj_personality_v0$"(...) {
entry:
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

declare i64 @_CNatXl8positionHv(i64, %TypeInfo*) gc "cangjie"

; Function Attrs: noinline
declare i8 addrspace(1)* @"rt$CreateArithmeticException_msg"(%"record.std.core:String"* nocapture readonly) #7 gc "cangjie"

declare void @llvm.cj.throw.exception(i8 addrspace(1)*)

declare i64 @_CNatXl4nextHl(i64, i64, %TypeInfo*) gc "cangjie"

attributes #0 = { "CJGlobalValue" }
attributes #1 = { "CFileKlass" "NotModifiableClass" }
attributes #2 = { "cjstring_literal" }
attributes #3 = { "CFileKlass" }
attributes #4 = { "CJTypeName" }
attributes #5 = { "cjstring_data" }
attributes #6 = { argmemonly nocallback nofree nounwind willreturn }
attributes #7 = { noinline }

!llvm.module.flags = !{!4, !5, !6, !7}
!llvm.dbg.cu = !{!8}
!pkg_info = !{!10}
!functions = !{}
!global_variables = !{}

!0 = !{!"InternalLinkage"}
!1 = !{!"Int64.Type"}
!2 = !{!"ArrayLayout.UInt8"}
!3 = !{!"UInt8.Type"}
!4 = !{i32 2, !"CJBC", i32 1}
!5 = !{i32 2, !"Cangjie_OPT", i32 0}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 2, !"Dwarf Version", i32 4}
!8 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !9, producer: "Cangjie Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!9 = !DIFile(filename: "1-example", directory: ".")
!10 = !{i32 1, !"", !"example", !"example", !"example_example_1", !"example_example_2"}
!11 = distinct !DISubprogram(scope: !13, file: !12, line: 61, type: !14, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !15)
!12 = !DIFile(filename: "range.cj", directory: "std.core")
!13 = !DINamespace(name: "example", scope: null)
!14 = !DISubroutineType(types: !15)
!15 = !{}
!16 = !DILocation(line: 62, column: 13, scope: !11)
!17 = !DILocation(line: 62, column: 26, scope: !11)
!18 = !DILocation(line: 62, column: 9, scope: !11)
!19 = !DILocation(line: 63, column: 47, scope: !11)
!20 = !DILocation(line: 63, column: 43, scope: !11)
!21 = !DILocation(line: 64, column: 18, scope: !11)
!22 = !DILocation(line: 64, column: 25, scope: !11)
!23 = !DILocation(line: 64, column: 30, scope: !11)
!24 = !DILocation(line: 64, column: 17, scope: !11)
!25 = !DILocation(line: 0, scope: !11, isImplicitCode: true)
!26 = !DILocation(line: 68, column: 30, scope: !11)
!27 = !DILocation(line: 68, column: 49, scope: !11)
!28 = !DILocation(line: 69, column: 29, scope: !11)
!29 = !DILocation(line: 70, column: 17, scope: !11)
!30 = !DILocation(line: 70, column: 13, scope: !11)
!31 = !DILocation(line: 71, column: 21, scope: !11)
!32 = !DILocation(line: 71, column: 17, scope: !11)
!33 = !DILocation(line: 72, column: 28, scope: !11)
!34 = !DILocation(line: 72, column: 37, scope: !11)
!35 = !DILocation(line: 72, column: 21, scope: !11)
!36 = !DILocation(line: 74, column: 28, scope: !11)
!37 = !DILocation(line: 74, column: 21, scope: !11)
!38 = !DILocation(line: 78, column: 13, scope: !11)
!39 = !DILocation(line: 78, column: 9, scope: !11)
!40 = !DILocation(line: 79, column: 13, scope: !11)
!41 = !DILocation(line: 81, column: 13, scope: !11)
!42 = !DILocation(line: 81, column: 23, scope: !11)
!43 = !DILocation(line: 81, column: 22, scope: !11)
!44 = !DILocation(line: 66, column: 18, scope: !11)
!45 = !DILocation(line: 66, column: 23, scope: !11)
!46 = !DILocation(line: 66, column: 31, scope: !11)
!47 = !DILocation(line: 66, column: 30, scope: !11)
!48 = !DILocation(line: 66, column: 17, scope: !11)
