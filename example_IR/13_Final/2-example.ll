; ModuleID = '2-example'
source_filename = "2-example"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%TypeInfo = type { i8*, i8, i8, i16, i32, %BitMap*, i32, i8, i8, i16, i32*, i8*, i8*, i8*, %TypeInfo*, %ExtensionDef**, i8*, i8* }
%BitMap = type { i32, [0 x i8] }
%ExtensionDef = type { i32, i8, i8, i16, i8*, i8*, i8*, i8* }
%ext_class_type_ver_1 = type { i8*, i16, i32, i8 }
%TypeTemplate = type { i8*, i8, i8, i16, i16, i8*, i8*, i8*, i8*, %ExtensionDef**, i16 }
%"Tuple<Int64,Int64>" = type { i64, i64 }
%"record.std.core:Array<T>" = type { i8 addrspace(1)*, i64, i64 }
%"record.std.core:Range<Int64>" = type { i64, i64, i64, i1, i1, i1 }
%Func.Type = type { i8* }
%Int64.Type = type { i64 }
%"ObjLayout.Closure<()->ccbase_r0>" = type { i8*, i8* }
%"ObjLayout.example:$ClN7example7getLineHvEL_E$0" = type { i8*, i8* }
%"record.std.core:String" = type { i8 addrspace(1)*, i32, i32 }

@"example:$ClN7example7getLineHvEL_E$0.ti" = global %TypeInfo { i8* getelementptr inbounds ([37 x i8], [37 x i8]* @"example:$ClN7example7getLineHvEL_E$0.name", i32 0, i32 0), i8 -128, i8 0, i16 2, i32 16, %BitMap* null, i32 0, i8 8, i8 0, i16 -32768, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @"example:$ClN7example7getLineHvEL_E$0.ti.offsets", i32 0, i32 0), i8* null, i8* null, i8* bitcast ([2 x %TypeInfo*]* @"example:$ClN7example7getLineHvEL_E$0.ti.fields" to i8*), %TypeInfo* @"Closure<()->std.core:String>.ti", %ExtensionDef** null, i8* null, i8* null }, !RelatedType !0 #0
@"example:$ClN7example7getLineHvEL_E$0.name" = private unnamed_addr constant [37 x i8] c"example:$ClN7example7getLineHvEL_E$0\00", align 1 #1
@Int64.ti = external global %TypeInfo, !RelatedType !1 #2
@"example:$ClN7example7getLineHvEL_E$0.ti.fields" = private unnamed_addr constant [2 x %TypeInfo*] [%TypeInfo* @Int64.ti, %TypeInfo* @Int64.ti] #3
@"example:$ClN7example7getLineHvEL_E$0.ti.offsets" = private unnamed_addr constant [2 x i32] [i32 0, i32 8] #4
@"Closure<()->std.core:String>.ti" = linkonce_odr global %TypeInfo { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @"Closure<()->std.core:String>.name", i32 0, i32 0), i8 -125, i8 0, i16 2, i32 16, %BitMap* null, i32 0, i8 8, i8 1, i16 -32768, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @"Closure<()->std.core:String>.ti.offsets", i32 0, i32 0), i8* bitcast (%TypeTemplate* @Closure.tt to i8*), i8* bitcast ([1 x %TypeInfo*]* @"Closure<()->std.core:String>.ti.typeArgs" to i8*), i8* bitcast ([2 x %TypeInfo*]* @"Closure<()->std.core:String>.ti.fields" to i8*), %TypeInfo* null, %ExtensionDef** null, i8* null, i8* null }, !RelatedType !2 #0
@"ext_example:$ClN7example7getLineHvEL_E$0.ti" = private unnamed_addr constant %ext_class_type_ver_1 { i8* bitcast (%TypeInfo* @"example:$ClN7example7getLineHvEL_E$0.ti" to i8*), i16 1, i32 24, i8 1 } #5
@"Closure<()->std.core:String>.name" = private unnamed_addr constant [29 x i8] c"Closure<()->std.core:String>\00", align 1 #1
@"Closure<()->std.core:String>.ti.fields" = private unnamed_addr constant [2 x %TypeInfo*] [%TypeInfo* @Int64.ti, %TypeInfo* @Int64.ti] #3
@Closure.tt = external global %TypeTemplate
@"Closure<()->std.core:String>.ti.offsets" = private unnamed_addr constant [2 x i32] [i32 0, i32 8] #4
@"()->std.core:String.ti" = linkonce_odr global %TypeInfo { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @"()->std.core:String.name", i32 0, i32 0), i8 19, i8 0, i16 0, i32 8, %BitMap* null, i32 0, i8 8, i8 1, i16 -32768, i32* null, i8* bitcast (%TypeTemplate* @CFunc.tt to i8*), i8* bitcast ([1 x %TypeInfo*]* @"()->std.core:String.ti.typeArgs" to i8*), i8* null, %TypeInfo* null, %ExtensionDef** null, i8* null, i8* null }, !RelatedType !3 #2
@"Closure<()->std.core:String>.ti.typeArgs" = private unnamed_addr constant [1 x %TypeInfo*] [%TypeInfo* @"()->std.core:String.ti"] #6
@"ext_Closure<()->std.core:String>.ti" = private unnamed_addr constant %ext_class_type_ver_1 { i8* bitcast (%TypeInfo* @"Closure<()->std.core:String>.ti" to i8*), i16 1, i32 24, i8 1 } #5
@"()->std.core:String.name" = private unnamed_addr constant [20 x i8] c"()->std.core:String\00", align 1 #1
@CFunc.tt = external global %TypeTemplate
@"std.core:String.ti" = external global %TypeInfo, !RelatedType !4 #2
@"()->std.core:String.ti.typeArgs" = private unnamed_addr constant [1 x %TypeInfo*] [%TypeInfo* @"std.core:String.ti"] #6
@StaticGenericTIs = private global [2 x %TypeInfo*] [%TypeInfo* @"()->std.core:String.ti", %TypeInfo* @"Closure<()->std.core:String>.ti"] #7
@llvm.used = appending global [4 x i8*] [i8* bitcast (void ()* @"0_for_keeping_some_types" to i8*), i8* bitcast ([2 x %TypeInfo*]* @StaticGenericTIs to i8*), i8* bitcast (%ext_class_type_ver_1* @"ext_Closure<()->std.core:String>.ti" to i8*), i8* bitcast (%ext_class_type_ver_1* @"ext_example:$ClN7example7getLineHvEL_E$0.ti" to i8*)], section "llvm.metadata"

define void @_CNat5ArrayIRNat6StringEE9normalizeHRNat5RangeIlE(%"Tuple<Int64,Int64>"* noalias sret(%"Tuple<Int64,Int64>") %0, %"record.std.core:Array<T>"* noalias nocapture readonly %this, %"record.std.core:Range<Int64>"* noalias nocapture readonly %range, %TypeInfo* %outerTI) gc "cangjie" personality i32 (...)* @"__cj_personality_v0$" !dbg !12 {
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
  %6 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>"* %range, i32 0, i32 3, !dbg !17
  %7 = load i1, i1* %6, align 1, !dbg !17
  br i1 %7, label %bb3, label %bb4, !dbg !18

bb3:                                              ; preds = %bb0
  %8 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>"* %range, i32 0, i32 0, !dbg !19
  %9 = load i64, i64* %8, align 8, !dbg !19
  store i64 %9, i64* %1, align 8, !dbg !18
  br label %bb2, !dbg !20

bb2:                                              ; preds = %bb4, %bb3
  %10 = load i64, i64* %1, align 8, !dbg !18
  store i64 %10, i64* %start, align 8, !dbg !21
  %11 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>"* %range, i32 0, i32 4, !dbg !22
  %12 = load i1, i1* %11, align 1, !dbg !22
  br i1 %12, label %bb6, label %bb7, !dbg !23

bb6:                                              ; preds = %bb2
  %13 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>"* %range, i32 0, i32 1, !dbg !24
  %14 = load i64, i64* %13, align 8, !dbg !24
  store i64 %14, i64* %2, align 8, !dbg !23
  br label %bb5, !dbg !20

bb5:                                              ; preds = %bb7, %bb6
  %15 = load i64, i64* %2, align 8, !dbg !23
  store i64 %15, i64* %end, align 8, !dbg !25
  %16 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>"* %range, i32 0, i32 5, !dbg !26
  %17 = load i1, i1* %16, align 1, !dbg !26
  br i1 %17, label %bb8, label %bb9, !dbg !26

bb8:                                              ; preds = %bb5
  %18 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>"* %range, i32 0, i32 4, !dbg !27
  %19 = load i1, i1* %18, align 1, !dbg !27
  store i1 %19, i1* %3, align 1, !dbg !27
  br label %bb10, !dbg !26

bb10:                                             ; preds = %bb9, %bb8
  %20 = load i1, i1* %3, align 1, !dbg !26
  br i1 %20, label %bb12, label %bb11, !dbg !28

bb12:                                             ; preds = %bb10
  %21 = load i64, i64* %end, align 8, !dbg !29
  %22 = getelementptr inbounds %"record.std.core:Range<Int64>", %"record.std.core:Range<Int64>"* %range, i32 0, i32 2, !dbg !30
  %23 = load i64, i64* %22, align 8, !dbg !30
  %icmpsgt = icmp sgt i64 %23, 0, !dbg !30
  br i1 %icmpsgt, label %bb14, label %bb15, !dbg !31

bb14:                                             ; preds = %bb12
  store i64 1, i64* %4, align 8, !dbg !31
  br label %bb13, !dbg !20

bb13:                                             ; preds = %bb15, %bb14
  %24 = load i64, i64* %4, align 8, !dbg !31
  %25 = add i64 %21, %24, !dbg !29
  store i64 %25, i64* %end, align 8, !dbg !29
  br label %bb11, !dbg !20

bb11:                                             ; preds = %bb13, %bb10
  %26 = load i64, i64* %start, align 8, !dbg !32
  %27 = load i64, i64* %end, align 8, !dbg !33
  %28 = getelementptr inbounds %"Tuple<Int64,Int64>", %"Tuple<Int64,Int64>"* %5, i32 0, i32 0, !dbg !34
  store i64 %26, i64* %28, align 8, !dbg !34
  %29 = getelementptr inbounds %"Tuple<Int64,Int64>", %"Tuple<Int64,Int64>"* %5, i32 0, i32 1, !dbg !34
  store i64 %27, i64* %29, align 8, !dbg !34
  %30 = bitcast %"Tuple<Int64,Int64>"* %0 to i8*
  %31 = bitcast %"Tuple<Int64,Int64>"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 16, i1 false)
  ret void, !dbg !35

bb15:                                             ; preds = %bb12
  store i64 -1, i64* %4, align 8, !dbg !31
  br label %bb13, !dbg !20

bb9:                                              ; preds = %bb5
  store i1 false, i1* %3, align 1, !dbg !26
  br label %bb10, !dbg !26

bb7:                                              ; preds = %bb2
  %32 = getelementptr inbounds %"record.std.core:Array<T>", %"record.std.core:Array<T>"* %this, i32 0, i32 2, !dbg !36
  %33 = load i64, i64* %32, align 8, !dbg !36
  store i64 %33, i64* %2, align 8, !dbg !23
  br label %bb5, !dbg !20

bb4:                                              ; preds = %bb0
  store i64 0, i64* %1, align 8, !dbg !18
  br label %bb2, !dbg !20
}

define private i32 @"__cj_personality_v0$"(...) {
entry:
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noinline optnone
define private void @"0_for_keeping_some_types"() #9 {
entry.unreachable:
  %0 = alloca %Func.Type, align 8
  %1 = alloca %Int64.Type, align 8
  %2 = alloca %"ObjLayout.Closure<()->ccbase_r0>", align 8
  %3 = alloca %"ObjLayout.example:$ClN7example7getLineHvEL_E$0", align 8
  %4 = alloca %"Tuple<Int64,Int64>", align 8
  %5 = alloca %"record.std.core:Array<T>", align 8
  %6 = alloca %"record.std.core:Range<Int64>", align 8
  %7 = alloca %"record.std.core:String", align 8
  ret void
}

attributes #0 = { "CFileKlass" "HasExtPart" "NotModifiableClass" }
attributes #1 = { "CJTypeName" }
attributes #2 = { "CFileKlass" "NotModifiableClass" }
attributes #3 = { "CJTIFields" }
attributes #4 = { "CJTIOffsets" }
attributes #5 = { "CFileTIExt" }
attributes #6 = { "CJTITypeArgs" }
attributes #7 = { "CFileStaticGenericTI" }
attributes #8 = { argmemonly nocallback nofree nounwind willreturn }
attributes #9 = { noinline optnone }

!llvm.module.flags = !{!5, !6, !7, !8}
!llvm.dbg.cu = !{!9}
!pkg_info = !{!11}
!functions = !{}
!global_variables = !{}

!0 = !{!"ObjLayout.example:$ClN7example7getLineHvEL_E$0"}
!1 = !{!"Int64.Type"}
!2 = !{!"ObjLayout.Closure<()->ccbase_r0>"}
!3 = !{!"Func.Type"}
!4 = !{!"record.std.core:String"}
!5 = !{i32 2, !"CJBC", i32 1}
!6 = !{i32 2, !"Cangjie_OPT", i32 0}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 2, !"Dwarf Version", i32 4}
!9 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !10, producer: "Cangjie Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!10 = !DIFile(filename: "2-example", directory: ".")
!11 = !{i32 1, !"", !"example", !"example", !"example_example_2", !"example_example_3"}
!12 = distinct !DISubprogram(scope: !14, file: !13, line: 230, type: !15, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !16)
!13 = !DIFile(filename: "array.cj", directory: "std.core")
!14 = !DINamespace(name: "example", scope: null)
!15 = !DISubroutineType(types: !16)
!16 = !{}
!17 = !DILocation(line: 231, column: 25, scope: !12)
!18 = !DILocation(line: 231, column: 21, scope: !12)
!19 = !DILocation(line: 232, column: 13, scope: !12)
!20 = !DILocation(line: 0, scope: !12, isImplicitCode: true)
!21 = !DILocation(line: 231, column: 9, scope: !12)
!22 = !DILocation(line: 236, column: 23, scope: !12)
!23 = !DILocation(line: 236, column: 19, scope: !12)
!24 = !DILocation(line: 237, column: 13, scope: !12)
!25 = !DILocation(line: 236, column: 9, scope: !12)
!26 = !DILocation(line: 241, column: 13, scope: !12)
!27 = !DILocation(line: 241, column: 31, scope: !12)
!28 = !DILocation(line: 241, column: 9, scope: !12)
!29 = !DILocation(line: 242, column: 13, scope: !12)
!30 = !DILocation(line: 242, column: 24, scope: !12)
!31 = !DILocation(line: 242, column: 20, scope: !12)
!32 = !DILocation(line: 248, column: 17, scope: !12)
!33 = !DILocation(line: 248, column: 24, scope: !12)
!34 = !DILocation(line: 248, column: 16, scope: !12)
!35 = !DILocation(line: 248, column: 9, scope: !12)
!36 = !DILocation(line: 239, column: 13, scope: !12)
