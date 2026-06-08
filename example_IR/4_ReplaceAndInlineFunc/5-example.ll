; ModuleID = '5-example'
source_filename = "5-example"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%TypeInfo = type { i8*, i8, i8, i16, i32, %BitMap*, i32, i8, i8, i16, i32*, i8*, i8*, i8*, %TypeInfo*, %ExtensionDef**, i8*, i8* }
%BitMap = type { i32, [0 x i8] }
%ExtensionDef = type { i32, i8, i8, i16, i8*, i8*, i8*, i8* }
%ext_class_type_ver_1 = type { i8*, i16, i32, i8 }
%TypeTemplate = type { i8*, i8, i8, i16, i16, i8*, i8*, i8*, i8*, %ExtensionDef**, i16 }
%"record.std.core:Array<T>" = type { i8 addrspace(1)*, i64, i64 }

@"example:$ClN7example7getListHvEL_E$0.ti" = global %TypeInfo { i8* getelementptr inbounds ([37 x i8], [37 x i8]* @"example:$ClN7example7getListHvEL_E$0.name", i32 0, i32 0), i8 -128, i8 0, i16 2, i32 16, %BitMap* null, i32 0, i8 8, i8 0, i16 -32768, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @"example:$ClN7example7getListHvEL_E$0.ti.offsets", i32 0, i32 0), i8* null, i8* null, i8* bitcast ([2 x %TypeInfo*]* @"example:$ClN7example7getListHvEL_E$0.ti.fields" to i8*), %TypeInfo* @"Closure<(std.core:String)->Int64>.ti", %ExtensionDef** null, i8* null, i8* null }, !LinkageType !0, !RelatedType !1 #0
@"$has_applied_pkg_init_func" = external global i1, !LinkageType !0 #1
@has_invoked_pkg_init_literal = external global i1, !LinkageType !0 #1
@"example:$ClN7example7getListHvEL_E$0.name" = private unnamed_addr constant [37 x i8] c"example:$ClN7example7getListHvEL_E$0\00", align 1 #2
@Int64.ti = external global %TypeInfo, !RelatedType !2 #3
@"example:$ClN7example7getListHvEL_E$0.ti.fields" = private unnamed_addr constant [2 x %TypeInfo*] [%TypeInfo* @Int64.ti, %TypeInfo* @Int64.ti] #4
@"example:$ClN7example7getListHvEL_E$0.ti.offsets" = private unnamed_addr constant [2 x i32] [i32 0, i32 8] #5
@"Closure<(std.core:String)->Int64>.ti" = linkonce_odr global %TypeInfo { i8* getelementptr inbounds ([34 x i8], [34 x i8]* @"Closure<(std.core:String)->Int64>.name", i32 0, i32 0), i8 -125, i8 0, i16 2, i32 16, %BitMap* null, i32 0, i8 8, i8 1, i16 -32768, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @"Closure<(std.core:String)->Int64>.ti.offsets", i32 0, i32 0), i8* bitcast (%TypeTemplate* @Closure.tt to i8*), i8* bitcast ([1 x %TypeInfo*]* @"Closure<(std.core:String)->Int64>.ti.typeArgs" to i8*), i8* bitcast ([2 x %TypeInfo*]* @"Closure<(std.core:String)->Int64>.ti.fields" to i8*), %TypeInfo* null, %ExtensionDef** null, i8* null, i8* null }, !RelatedType !3 #0
@"ext_example:$ClN7example7getListHvEL_E$0.ti" = private unnamed_addr constant %ext_class_type_ver_1 { i8* bitcast (%TypeInfo* @"example:$ClN7example7getListHvEL_E$0.ti" to i8*), i16 1, i32 24, i8 1 } #6
@"Closure<(std.core:String)->Int64>.name" = private unnamed_addr constant [34 x i8] c"Closure<(std.core:String)->Int64>\00", align 1 #2
@"Closure<(std.core:String)->Int64>.ti.fields" = private unnamed_addr constant [2 x %TypeInfo*] [%TypeInfo* @Int64.ti, %TypeInfo* @Int64.ti] #4
@Closure.tt = external global %TypeTemplate
@"Closure<(std.core:String)->Int64>.ti.offsets" = private unnamed_addr constant [2 x i32] [i32 0, i32 8] #5
@"(std.core:String)->Int64.ti" = linkonce_odr global %TypeInfo { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @"(std.core:String)->Int64.name", i32 0, i32 0), i8 19, i8 0, i16 0, i32 8, %BitMap* null, i32 0, i8 8, i8 2, i16 -32768, i32* null, i8* bitcast (%TypeTemplate* @CFunc.tt to i8*), i8* bitcast ([2 x %TypeInfo*]* @"(std.core:String)->Int64.ti.typeArgs" to i8*), i8* null, %TypeInfo* null, %ExtensionDef** null, i8* null, i8* null }, !RelatedType !4 #3
@"Closure<(std.core:String)->Int64>.ti.typeArgs" = private unnamed_addr constant [1 x %TypeInfo*] [%TypeInfo* @"(std.core:String)->Int64.ti"] #7
@"ext_Closure<(std.core:String)->Int64>.ti" = private unnamed_addr constant %ext_class_type_ver_1 { i8* bitcast (%TypeInfo* @"Closure<(std.core:String)->Int64>.ti" to i8*), i16 1, i32 24, i8 1 } #6
@"(std.core:String)->Int64.name" = private unnamed_addr constant [25 x i8] c"(std.core:String)->Int64\00", align 1 #2
@CFunc.tt = external global %TypeTemplate
@"std.core:String.ti" = external global %TypeInfo, !RelatedType !5 #3
@"(std.core:String)->Int64.ti.typeArgs" = private unnamed_addr constant [2 x %TypeInfo*] [%TypeInfo* @Int64.ti, %TypeInfo* @"std.core:String.ti"] #7

define i1 @_CNat5ArrayIRNat6StringEE7isLegalHll(%"record.std.core:Array<T>"* noalias nocapture readonly %this, i64 %start_, i64 %end_, %TypeInfo* %outerTI) gc "cangjie" personality i32 (...)* @"__cj_personality_v0$" !dbg !12 !LinkageType !0 {
allocas:
  %0 = alloca i1, align 1
  %1 = alloca i1, align 1
  %2 = alloca i1, align 1
  br label %bb0

bb0:                                              ; preds = %allocas
  %icmpsle = icmp sle i64 0, %start_, !dbg !17
  br i1 %icmpsle, label %bb2, label %bb3, !dbg !17

bb2:                                              ; preds = %bb0
  %icmpsle1 = icmp sle i64 %start_, %end_, !dbg !18
  store i1 %icmpsle1, i1* %1, align 1, !dbg !18
  br label %bb4, !dbg !17

bb4:                                              ; preds = %bb3, %bb2
  %3 = load i1, i1* %1, align 1, !dbg !17
  br i1 %3, label %bb5, label %bb6, !dbg !17

bb5:                                              ; preds = %bb4
  %4 = getelementptr inbounds %"record.std.core:Array<T>", %"record.std.core:Array<T>"* %this, i32 0, i32 2, !dbg !19
  %5 = load i64, i64* %4, align 8, !dbg !19
  %icmpsle2 = icmp sle i64 %end_, %5, !dbg !20
  store i1 %icmpsle2, i1* %2, align 1, !dbg !20
  br label %bb7, !dbg !17

bb7:                                              ; preds = %bb6, %bb5
  %6 = load i1, i1* %2, align 1, !dbg !17
  store i1 %6, i1* %0, align 1
  %7 = load i1, i1* %0, align 1, !dbg !17
  ret i1 %7, !dbg !17

bb6:                                              ; preds = %bb4
  store i1 false, i1* %2, align 1, !dbg !17
  br label %bb7, !dbg !17

bb3:                                              ; preds = %bb0
  store i1 false, i1* %1, align 1, !dbg !17
  br label %bb4, !dbg !17
}

define private i32 @"__cj_personality_v0$"(...) {
entry:
  ret i32 0
}

attributes #0 = { "CFileKlass" "HasExtPart" "NotModifiableClass" }
attributes #1 = { "CJGlobalValue" }
attributes #2 = { "CJTypeName" }
attributes #3 = { "CFileKlass" "NotModifiableClass" }
attributes #4 = { "CJTIFields" }
attributes #5 = { "CJTIOffsets" }
attributes #6 = { "CFileTIExt" }
attributes #7 = { "CJTITypeArgs" }

!llvm.module.flags = !{!6, !7, !8, !9}
!llvm.dbg.cu = !{!10}

!0 = !{!"InternalLinkage"}
!1 = !{!"ObjLayout.example:$ClN7example7getListHvEL_E$0"}
!2 = !{!"Int64.Type"}
!3 = !{!"ObjLayout.Closure<(ccbase_p1_0)->ccbase_r1>"}
!4 = !{!"Func.Type"}
!5 = !{!"record.std.core:String"}
!6 = !{i32 2, !"CJBC", i32 1}
!7 = !{i32 2, !"Cangjie_OPT", i32 0}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 2, !"Dwarf Version", i32 4}
!10 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !11, producer: "Cangjie Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!11 = !DIFile(filename: "5-example", directory: ".")
!12 = distinct !DISubprogram(scope: !14, file: !13, line: 223, type: !15, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !16)
!13 = !DIFile(filename: "array.cj", directory: "std.core")
!14 = !DINamespace(name: "example", scope: null)
!15 = !DISubroutineType(types: !16)
!16 = !{}
!17 = !DILocation(line: 224, column: 9, scope: !12)
!18 = !DILocation(line: 224, column: 24, scope: !12)
!19 = !DILocation(line: 224, column: 50, scope: !12)
!20 = !DILocation(line: 224, column: 42, scope: !12)
