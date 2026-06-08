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
%ArrayLayout.UInt8 = type { %ArrayBase, [0 x i8] }
%ArrayBase = type { i64 }
%"ObjLayout.Closure<()->ccbase_r0>" = type { i8*, i8* }
%"ObjLayout.std.core:IllegalArgumentException" = type { %"record.std.core:String", i8 addrspace(1)*, %"record.std.core:Array<T>", i8 addrspace(1)* }
%"record.std.core:Array<T>" = type { i8 addrspace(1)*, i64, i64 }
%enum.OptionLike.Ref = type { i8 addrspace(1)*, [0 x i8] }

@"$const_cjstring.daAk2A5RJ4U" = private constant %"record.std.core:String" { i8 addrspace(1)* addrspacecast (i8* bitcast ({ i8*, i64, [41 x i8] }* @"$const_cjstring_data.daAk2A5RJ4U" to i8*) to i8 addrspace(1)*), i32 0, i32 41 } #0
@"std.core:IllegalArgumentException.ti" = external global %TypeInfo, !RelatedType !0 #1
@"RawArray<UInt8>.ti" = internal global %TypeInfo { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"RawArray<UInt8>.name", i32 0, i32 0), i8 -126, i8 0, i16 0, i32 0, %BitMap* null, i32 0, i8 0, i8 0, i16 -32768, i32* null, i8* bitcast (%TypeTemplate* @RawArray.tt to i8*), i8* null, i8* null, %TypeInfo* @UInt8.ti, %ExtensionDef** null, i8* null, i8* null }, !RelatedType !1 #2
@UInt8.ti = external global %TypeInfo, !RelatedType !2 #1
@"RawArray<UInt8>.name" = private unnamed_addr constant [16 x i8] c"RawArray<UInt8>\00", align 1 #3
@RawArray.tt = external global %TypeTemplate
@"$const_cjstring_data.daAk2A5RJ4U" = private constant { i8*, i64, [41 x i8] } { i8* bitcast (%TypeInfo* @"RawArray<UInt8>.ti" to i8*), i64 41, [41 x i8] c"The value of the step should not be zero." } #4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @"0_for_keeping_some_types" to i8*)], section "llvm.metadata"

define void @"_CNat5RangeIlE6<init>Hlllbbb"(%"record.std.core:Range<Int64>" addrspace(1)* noalias %this, i8 addrspace(1)* %"$BP", i64 %start, i64 %end, i64 %step, i1 %hasStart, i1 %hasEnd, i1 %isClosed, %TypeInfo* %outerTI) #5 gc "cangjie" personality i32 (...)* @"__cj_personality_v0$" !dbg !10 {
bb0:
  %icmpeq = icmp eq i64 %step, 0, !dbg !15
  br i1 %icmpeq, label %bb4, label %bb3, !dbg !16

bb4:                                              ; preds = %bb0
  %0 = call noalias i8 addrspace(1)* @llvm.cj.malloc.object(i8* bitcast (%TypeInfo* @"std.core:IllegalArgumentException.ti" to i8*), i32 56), !dbg !17
  call void @"_CNat24IllegalArgumentException6<init>HRNat6StringE"(i8 addrspace(1)* %0, %"record.std.core:String"* @"$const_cjstring.daAk2A5RJ4U", %TypeInfo* @"std.core:IllegalArgumentException.ti"), !dbg !17
  call void @llvm.cj.throw.exception(i8 addrspace(1)* %0), !dbg !18
  unreachable, !dbg !18

bb3:                                              ; preds = %bb0
  %1 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>" addrspace(1)* %this, i32 0, i32 0, !dbg !19
  store i64 %start, i64 addrspace(1)* %1, align 8, !dbg !19
  %2 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>" addrspace(1)* %this, i32 0, i32 1, !dbg !20
  store i64 %end, i64 addrspace(1)* %2, align 8, !dbg !20
  %3 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>" addrspace(1)* %this, i32 0, i32 2, !dbg !21
  store i64 %step, i64 addrspace(1)* %3, align 8, !dbg !21
  %4 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>" addrspace(1)* %this, i32 0, i32 3, !dbg !22
  store i1 %hasStart, i1 addrspace(1)* %4, align 1, !dbg !22
  %5 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>" addrspace(1)* %this, i32 0, i32 4, !dbg !23
  store i1 %hasEnd, i1 addrspace(1)* %5, align 1, !dbg !23
  %6 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>" addrspace(1)* %this, i32 0, i32 5, !dbg !24
  store i1 %isClosed, i1 addrspace(1)* %6, align 1, !dbg !24
  ret void, !dbg !25
}

define private i32 @"__cj_personality_v0$"(...) {
entry:
  ret i32 0
}

declare noalias i8 addrspace(1)* @llvm.cj.malloc.object(i8*, i32)

declare void @"_CNat24IllegalArgumentException6<init>HRNat6StringE"(i8 addrspace(1)*, %"record.std.core:String"* nocapture readonly, %TypeInfo*) gc "cangjie"

declare void @llvm.cj.throw.exception(i8 addrspace(1)*)

; Function Attrs: noinline optnone
define private void @"0_for_keeping_some_types"() #6 {
entry.unreachable:
  %0 = alloca %ArrayLayout.UInt8, align 8
  %1 = alloca %"ObjLayout.Closure<()->ccbase_r0>", align 8
  %2 = alloca %"ObjLayout.std.core:IllegalArgumentException", align 8
  %3 = alloca %enum.OptionLike.Ref, align 8
  %4 = alloca %"record.std.core:Array<T>", align 8
  %5 = alloca %"record.std.core:Range<Int64>", align 8
  %6 = alloca %"record.std.core:String", align 8
  ret void
}

attributes #0 = { "cjstring_literal" }
attributes #1 = { "CFileKlass" "NotModifiableClass" }
attributes #2 = { "CFileKlass" }
attributes #3 = { "CJTypeName" }
attributes #4 = { "cjstring_data" }
attributes #5 = { "record_mut" "thisParamHasBP" }
attributes #6 = { noinline optnone }

!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.dbg.cu = !{!7}
!pkg_info = !{!9}
!functions = !{}
!global_variables = !{}

!0 = !{!"ObjLayout.std.core:IllegalArgumentException"}
!1 = !{!"ArrayLayout.UInt8"}
!2 = !{!"UInt8.Type"}
!3 = !{i32 2, !"CJBC", i32 1}
!4 = !{i32 2, !"Cangjie_OPT", i32 0}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !8, producer: "Cangjie Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!8 = !DIFile(filename: "7-example", directory: ".")
!9 = !{i32 1, !"", !"example", !"example", !"example_example_7", !"example_example_8"}
!10 = distinct !DISubprogram(scope: !12, file: !11, line: 24, type: !13, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !14)
!11 = !DIFile(filename: "range.cj", directory: "std.core")
!12 = !DINamespace(name: "example", scope: null)
!13 = !DISubroutineType(types: !14)
!14 = !{}
!15 = !DILocation(line: 25, column: 13, scope: !10)
!16 = !DILocation(line: 25, column: 9, scope: !10)
!17 = !DILocation(line: 26, column: 19, scope: !10)
!18 = !DILocation(line: 26, column: 13, scope: !10)
!19 = !DILocation(line: 28, column: 9, scope: !10)
!20 = !DILocation(line: 29, column: 9, scope: !10)
!21 = !DILocation(line: 30, column: 9, scope: !10)
!22 = !DILocation(line: 31, column: 9, scope: !10)
!23 = !DILocation(line: 32, column: 9, scope: !10)
!24 = !DILocation(line: 33, column: 9, scope: !10)
!25 = !DILocation(line: 34, column: 5, scope: !10)
