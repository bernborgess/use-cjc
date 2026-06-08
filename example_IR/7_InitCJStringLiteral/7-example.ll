; ModuleID = '7-example'
source_filename = "7-example"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"record.std.core:String" = type { i8 addrspace(1)*, i32, i32 }
%TypeInfo = type { i8*, i8, i8, i16, i32, %BitMap*, i32, i8, i8, i16, i32*, i8*, i8*, i8*, %TypeInfo*, %ExtensionDef**, i8*, i8* }
%BitMap = type { i32, [0 x i8] }
%ExtensionDef = type { i32, i8, i8, i16, i8*, i8*, i8*, i8* }
%TypeTemplate = type { i8*, i8, i8, i16, i16, i8*, i8*, i8*, i8*, %ExtensionDef**, i16 }
%"record.std.core:Range<Int64>" = type { i64, i64, i64, i1, i1, i1 }

@"$has_applied_pkg_init_func" = external global i1, !LinkageType !0 #0
@has_invoked_pkg_init_literal = external global i1, !LinkageType !0 #0
@"$const_cjstring.daAk2A5RJ4U" = private constant %"record.std.core:String" { i8 addrspace(1)* addrspacecast (i8* bitcast ({ i8*, i64, [41 x i8] }* @"$const_cjstring_data.daAk2A5RJ4U" to i8*) to i8 addrspace(1)*), i32 0, i32 41 } #1
@"std.core:IllegalArgumentException.ti" = external global %TypeInfo, !RelatedType !1 #2
@"RawArray<UInt8>.ti" = internal global %TypeInfo { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"RawArray<UInt8>.name", i32 0, i32 0), i8 -126, i8 0, i16 0, i32 0, %BitMap* null, i32 0, i8 0, i8 0, i16 -32768, i32* null, i8* bitcast (%TypeTemplate* @RawArray.tt to i8*), i8* null, i8* null, %TypeInfo* @UInt8.ti, %ExtensionDef** null, i8* null, i8* null }, !RelatedType !2 #3
@UInt8.ti = external global %TypeInfo, !RelatedType !3 #2
@"RawArray<UInt8>.name" = private unnamed_addr constant [16 x i8] c"RawArray<UInt8>\00", align 1 #4
@RawArray.tt = external global %TypeTemplate
@"$const_cjstring_data.daAk2A5RJ4U" = private constant { i8*, i64, [41 x i8] } { i8* bitcast (%TypeInfo* @"RawArray<UInt8>.ti" to i8*), i64 41, [41 x i8] c"The value of the step should not be zero." } #5

define void @"_CNat5RangeIlE6<init>Hlllbbb"(%"record.std.core:Range<Int64>" addrspace(1)* noalias %this, i8 addrspace(1)* %"$BP", i64 %start, i64 %end, i64 %step, i1 %hasStart, i1 %hasEnd, i1 %isClosed, %TypeInfo* %outerTI) #6 gc "cangjie" personality i32 (...)* @"__cj_personality_v0$" !dbg !11 !LinkageType !0 {
bb0:
  %icmpeq = icmp eq i64 %step, 0, !dbg !16
  br i1 %icmpeq, label %bb4, label %bb3, !dbg !17

bb4:                                              ; preds = %bb0
  %0 = call noalias i8 addrspace(1)* @llvm.cj.malloc.object(i8* bitcast (%TypeInfo* @"std.core:IllegalArgumentException.ti" to i8*), i32 56), !dbg !18
  call void @"_CNat24IllegalArgumentException6<init>HRNat6StringE"(i8 addrspace(1)* %0, %"record.std.core:String"* @"$const_cjstring.daAk2A5RJ4U", %TypeInfo* @"std.core:IllegalArgumentException.ti"), !dbg !18
  call void @llvm.cj.throw.exception(i8 addrspace(1)* %0), !dbg !19
  unreachable, !dbg !19

bb3:                                              ; preds = %bb0
  %1 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>" addrspace(1)* %this, i32 0, i32 0, !dbg !20
  store i64 %start, i64 addrspace(1)* %1, align 8, !dbg !20
  %2 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>" addrspace(1)* %this, i32 0, i32 1, !dbg !21
  store i64 %end, i64 addrspace(1)* %2, align 8, !dbg !21
  %3 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>" addrspace(1)* %this, i32 0, i32 2, !dbg !22
  store i64 %step, i64 addrspace(1)* %3, align 8, !dbg !22
  %4 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>" addrspace(1)* %this, i32 0, i32 3, !dbg !23
  store i1 %hasStart, i1 addrspace(1)* %4, align 1, !dbg !23
  %5 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>" addrspace(1)* %this, i32 0, i32 4, !dbg !24
  store i1 %hasEnd, i1 addrspace(1)* %5, align 1, !dbg !24
  %6 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>" addrspace(1)* %this, i32 0, i32 5, !dbg !25
  store i1 %isClosed, i1 addrspace(1)* %6, align 1, !dbg !25
  ret void, !dbg !26
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
attributes #3 = { "CFileKlass" }
attributes #4 = { "CJTypeName" }
attributes #5 = { "cjstring_data" }
attributes #6 = { "record_mut" "thisParamHasBP" }

!llvm.module.flags = !{!4, !5, !6, !7}
!llvm.dbg.cu = !{!8}
!pkg_info = !{!10}
!functions = !{}
!global_variables = !{}

!0 = !{!"InternalLinkage"}
!1 = !{!"ObjLayout.std.core:IllegalArgumentException"}
!2 = !{!"ArrayLayout.UInt8"}
!3 = !{!"UInt8.Type"}
!4 = !{i32 2, !"CJBC", i32 1}
!5 = !{i32 2, !"Cangjie_OPT", i32 0}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 2, !"Dwarf Version", i32 4}
!8 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !9, producer: "Cangjie Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!9 = !DIFile(filename: "7-example", directory: ".")
!10 = !{i32 1, !"", !"example", !"example", !"example_example_7", !"example_example_8"}
!11 = distinct !DISubprogram(scope: !13, file: !12, line: 24, type: !14, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !15)
!12 = !DIFile(filename: "range.cj", directory: "std.core")
!13 = !DINamespace(name: "example", scope: null)
!14 = !DISubroutineType(types: !15)
!15 = !{}
!16 = !DILocation(line: 25, column: 13, scope: !11)
!17 = !DILocation(line: 25, column: 9, scope: !11)
!18 = !DILocation(line: 26, column: 19, scope: !11)
!19 = !DILocation(line: 26, column: 13, scope: !11)
!20 = !DILocation(line: 28, column: 9, scope: !11)
!21 = !DILocation(line: 29, column: 9, scope: !11)
!22 = !DILocation(line: 30, column: 9, scope: !11)
!23 = !DILocation(line: 31, column: 9, scope: !11)
!24 = !DILocation(line: 32, column: 9, scope: !11)
!25 = !DILocation(line: 33, column: 9, scope: !11)
!26 = !DILocation(line: 34, column: 5, scope: !11)
