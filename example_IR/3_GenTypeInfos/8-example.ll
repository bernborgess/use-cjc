; ModuleID = '8-example'
source_filename = "8-example"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%TypeInfo = type { i8*, i8, i8, i16, i32, %BitMap*, i32, i8, i8, i16, i32*, i8*, i8*, i8*, %TypeInfo*, %ExtensionDef**, i8*, i8* }
%BitMap = type { i32, [0 x i8] }
%ExtensionDef = type { i32, i8, i8, i16, i8*, i8*, i8*, i8* }
%"record.std.core:String" = type { i8 addrspace(1)*, i32, i32 }
%Unit.Type = type {}
%TypeTemplate = type { i8*, i8, i8, i16, i16, i8*, i8*, i8*, i8*, %ExtensionDef**, i16 }
%"record.std.core:Array<T>" = type { i8 addrspace(1)*, i64, i64 }

@"$has_applied_pkg_init_func" = external global i1, !LinkageType !0 #0
@has_invoked_pkg_init_literal = external global i1, !LinkageType !0 #0
@Int64.ti = external global %TypeInfo, !RelatedType !1 #1
@"std.core:Array<Int64>.ti" = linkonce_odr global %TypeInfo { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @"std.core:Array<Int64>.name", i32 0, i32 0), i8 22, i8 0, i16 3, i32 24, %BitMap* null, i32 0, i8 8, i8 1, i16 -32768, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @"std.core:Array<Int64>.ti.offsets", i32 0, i32 0), i8* bitcast (%TypeTemplate* @"std.core:Array.tt" to i8*), i8* bitcast ([1 x %TypeInfo*]* @"std.core:Array<Int64>.ti.typeArgs" to i8*), i8* bitcast ([3 x %TypeInfo*]* @"std.core:Array<Int64>.ti.fields" to i8*), %TypeInfo* null, %ExtensionDef** null, i8* null, i8* null }, !RelatedType !2 #1
@"$const_cjstring.ciQh56PO1Hn" = private constant %"record.std.core:String" #2
@Unit.Val = weak_odr global %Unit.Type undef #0
@"std.core:Array<Int64>.name" = private unnamed_addr constant [22 x i8] c"std.core:Array<Int64>\00", align 1 #3
@"RawArray<Int64>.ti" = linkonce_odr global %TypeInfo { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"RawArray<Int64>.name", i32 0, i32 0), i8 -126, i8 0, i16 0, i32 8, %BitMap* null, i32 0, i8 1, i8 0, i16 -32768, i32* null, i8* bitcast (%TypeTemplate* @RawArray.tt to i8*), i8* null, i8* null, %TypeInfo* @Int64.ti, %ExtensionDef** null, i8* null, i8* null }, !RelatedType !3 #1
@"std.core:Array<Int64>.ti.fields" = private unnamed_addr constant [3 x %TypeInfo*] [%TypeInfo* @"RawArray<Int64>.ti", %TypeInfo* @Int64.ti, %TypeInfo* @Int64.ti] #4
@"std.core:Array.tt" = external global %TypeTemplate
@"std.core:Array<Int64>.ti.offsets" = private unnamed_addr constant [3 x i32] [i32 0, i32 8, i32 16] #5
@"std.core:Array<Int64>.ti.typeArgs" = private unnamed_addr constant [1 x %TypeInfo*] [%TypeInfo* @Int64.ti] #6
@"RawArray<Int64>.name" = private unnamed_addr constant [16 x i8] c"RawArray<Int64>\00", align 1 #3
@RawArray.tt = external global %TypeTemplate

; Function Attrs: noinline
define i64 @"_CN7example6<main>Hv"() #7 gc "cangjie" personality i32 (...)* @"__cj_personality_v0$" !dbg !10 !LinkageType !15 {
allocas:
  %0 = alloca i64, align 8
  %list = alloca %"record.std.core:Array<T>", align 8
  %1 = alloca i8 addrspace(1)*, align 8
  %2 = alloca i8 addrspace(1)*, align 8
  %val.ov = alloca { i64, i1 }, align 8
  %3 = alloca i64, align 8
  %4 = alloca %Unit.Type, align 8
  br label %bb0

bb0:                                              ; preds = %allocas
  call void @_CN7example7getListHv(%"record.std.core:Array<T>"* noalias sret(%"record.std.core:Array<T>") %list), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, align 8, !dbg !17
  %5 = call i8 addrspace(1)* @llvm.cj.alloca.generic(i8* bitcast (%TypeInfo* @Int64.ti to i8*), i32 8)
  store i8 addrspace(1)* %5, i8 addrspace(1)** %1, align 8, !dbg !17
  call void @_CNat5ArrayIG_EixHl(i8 addrspace(1)** noalias sret(i8 addrspace(1)*) %1, %"record.std.core:Array<T>"* %list, i64 0, %TypeInfo* @"std.core:Array<Int64>.ti"), !dbg !17
  %6 = load i8 addrspace(1)*, i8 addrspace(1)** %1, align 8, !dbg !17
  %7 = bitcast i8 addrspace(1)* %6 to i8* addrspace(1)*, !dbg !17
  %ti.payload = getelementptr i8*, i8* addrspace(1)* %7, i32 1, !dbg !17
  %8 = bitcast i8* addrspace(1)* %ti.payload to i64 addrspace(1)*, !dbg !17
  %9 = load i64, i64 addrspace(1)* %8, align 8, !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, align 8, !dbg !18
  %10 = call i8 addrspace(1)* @llvm.cj.alloca.generic(i8* bitcast (%TypeInfo* @Int64.ti to i8*), i32 8)
  store i8 addrspace(1)* %10, i8 addrspace(1)** %2, align 8, !dbg !18
  call void @_CNat5ArrayIG_EixHl(i8 addrspace(1)** noalias sret(i8 addrspace(1)*) %2, %"record.std.core:Array<T>"* %list, i64 1, %TypeInfo* @"std.core:Array<Int64>.ti"), !dbg !18
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %2, align 8, !dbg !18
  %12 = bitcast i8 addrspace(1)* %11 to i8* addrspace(1)*, !dbg !18
  %ti.payload1 = getelementptr i8*, i8* addrspace(1)* %12, i32 1, !dbg !18
  %13 = bitcast i8* addrspace(1)* %ti.payload1 to i64 addrspace(1)*, !dbg !18
  %14 = load i64, i64 addrspace(1)* %13, align 8, !dbg !18
  %15 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %9, i64 %14), !dbg !17
  store { i64, i1 } %15, { i64, i1 }* %val.ov, align 8, !dbg !17
  %16 = getelementptr inbounds { i64, i1 }, { i64, i1 }* %val.ov, i32 0, i32 1, !dbg !17
  %17 = load i1, i1* %16, align 1, !dbg !17
  %18 = call i1 @llvm.expect.i1(i1 %17, i1 false), !dbg !17
  br i1 %18, label %overflow, label %normal, !dbg !17

normal:                                           ; preds = %bb0
  %19 = getelementptr inbounds { i64, i1 }, { i64, i1 }* %val.ov, i32 0, i32 0, !dbg !17
  %20 = load i64, i64* %19, align 8, !dbg !17
  store i64 %20, i64* %3, align 8, !dbg !17
  br label %end, !dbg !17

overflow:                                         ; preds = %bb0
  %21 = call i8 addrspace(1)* @"rt$CreateOverflowException_msg"(%"record.std.core:String"* @"$const_cjstring.ciQh56PO1Hn"), !dbg !17
  call void @llvm.cj.throw.exception(i8 addrspace(1)* %21), !dbg !17
  unreachable, !dbg !17

end:                                              ; preds = %normal
  %c = load i64, i64* %3, align 8, !dbg !17
  call void @_CNat7printlnHl(%Unit.Type* noalias sret(%Unit.Type) %4, i64 %c), !dbg !19
  store i64 0, i64* %0, align 8, !dbg !20
  %22 = load i64, i64* %0, align 8, !dbg !20
  ret i64 %22, !dbg !20
}

define private i32 @"__cj_personality_v0$"(...) {
entry:
  ret i32 0
}

declare !LinkageType !15 void @_CN7example7getListHv(%"record.std.core:Array<T>"* noalias sret(%"record.std.core:Array<T>")) gc "cangjie"

declare void @_CNat5ArrayIG_EixHl(i8 addrspace(1)** noalias sret(i8 addrspace(1)*), %"record.std.core:Array<T>"* nocapture readonly, i64, %TypeInfo*) gc "cangjie"

declare i8 addrspace(1)* @llvm.cj.alloca.generic(i8*, i32)

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #9

; Function Attrs: noinline
declare i8 addrspace(1)* @"rt$CreateOverflowException_msg"(%"record.std.core:String"* nocapture readonly) #7 gc "cangjie"

declare void @llvm.cj.throw.exception(i8 addrspace(1)*)

declare void @_CNat7printlnHl(%Unit.Type* noalias sret(%Unit.Type), i64) gc "cangjie"

attributes #0 = { "CJGlobalValue" }
attributes #1 = { "CFileKlass" "NotModifiableClass" }
attributes #2 = { "cjstring_literal" }
attributes #3 = { "CJTypeName" }
attributes #4 = { "CJTIFields" }
attributes #5 = { "CJTIOffsets" }
attributes #6 = { "CJTITypeArgs" }
attributes #7 = { noinline }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }

!llvm.module.flags = !{!4, !5, !6, !7}
!llvm.dbg.cu = !{!8}

!0 = !{!"InternalLinkage"}
!1 = !{!"Int64.Type"}
!2 = !{!"record.std.core:Array<T>"}
!3 = !{!"ArrayLayout.Int64"}
!4 = !{i32 2, !"CJBC", i32 1}
!5 = !{i32 2, !"Cangjie_OPT", i32 0}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 2, !"Dwarf Version", i32 4}
!8 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !9, producer: "Cangjie Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!9 = !DIFile(filename: "8-example", directory: ".")
!10 = distinct !DISubprogram(scope: !12, file: !11, line: 15, type: !13, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !14)
!11 = !DIFile(filename: "example.cj", directory: "/home/bernborgess/Documents/use-cjc")
!12 = !DINamespace(name: "example", scope: null)
!13 = !DISubroutineType(types: !14)
!14 = !{}
!15 = !{!"ExternalLinkage"}
!16 = !DILocation(line: 16, column: 16, scope: !10)
!17 = !DILocation(line: 17, column: 13, scope: !10)
!18 = !DILocation(line: 17, column: 23, scope: !10)
!19 = !DILocation(line: 18, column: 5, scope: !10)
!20 = !DILocation(line: 19, column: 5, scope: !10)
