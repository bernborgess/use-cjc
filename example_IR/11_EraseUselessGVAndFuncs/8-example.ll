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
%ArrayLayout.Int64 = type { %ArrayBase, [0 x i64] }
%ArrayBase = type { i64 }
%ArrayLayout.UInt8 = type { %ArrayBase, [0 x i8] }
%Int64.Type = type { i64 }
%"ObjLayout.Closure<(ccbase_p1_0)->ccbase_r1>" = type { i8*, i8* }
%"ObjLayout.std.core:OverflowException" = type { %"record.std.core:String", i8 addrspace(1)*, %"record.std.core:Array<T>", i8 addrspace(1)* }
%enum.OptionLike.Ref = type { i8 addrspace(1)*, [0 x i8] }

@Int64.ti = external global %TypeInfo, !RelatedType !0 #0
@"std.core:Array<Int64>.ti" = linkonce_odr global %TypeInfo { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @"std.core:Array<Int64>.name", i32 0, i32 0), i8 22, i8 0, i16 3, i32 24, %BitMap* null, i32 0, i8 8, i8 1, i16 -32768, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @"std.core:Array<Int64>.ti.offsets", i32 0, i32 0), i8* bitcast (%TypeTemplate* @"std.core:Array.tt" to i8*), i8* bitcast ([1 x %TypeInfo*]* @"std.core:Array<Int64>.ti.typeArgs" to i8*), i8* bitcast ([3 x %TypeInfo*]* @"std.core:Array<Int64>.ti.fields" to i8*), %TypeInfo* null, %ExtensionDef** null, i8* null, i8* null }, !RelatedType !1 #0
@"$const_cjstring.ciQh56PO1Hn" = private constant %"record.std.core:String" { i8 addrspace(1)* addrspacecast (i8* bitcast ({ i8*, i64, [3 x i8] }* @"$const_cjstring_data.ciQh56PO1Hn" to i8*) to i8 addrspace(1)*), i32 0, i32 3 } #1
@Unit.Val = weak_odr global %Unit.Type undef #2
@"std.core:Array<Int64>.name" = private unnamed_addr constant [22 x i8] c"std.core:Array<Int64>\00", align 1 #3
@"RawArray<Int64>.ti" = linkonce_odr global %TypeInfo { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"RawArray<Int64>.name", i32 0, i32 0), i8 -126, i8 0, i16 0, i32 8, %BitMap* null, i32 0, i8 1, i8 0, i16 -32768, i32* null, i8* bitcast (%TypeTemplate* @RawArray.tt to i8*), i8* null, i8* null, %TypeInfo* @Int64.ti, %ExtensionDef** null, i8* null, i8* null }, !RelatedType !2 #0
@"std.core:Array<Int64>.ti.fields" = private unnamed_addr constant [3 x %TypeInfo*] [%TypeInfo* @"RawArray<Int64>.ti", %TypeInfo* @Int64.ti, %TypeInfo* @Int64.ti] #4
@"std.core:Array.tt" = external global %TypeTemplate
@"std.core:Array<Int64>.ti.offsets" = private unnamed_addr constant [3 x i32] [i32 0, i32 8, i32 16] #5
@"std.core:Array<Int64>.ti.typeArgs" = private unnamed_addr constant [1 x %TypeInfo*] [%TypeInfo* @Int64.ti] #6
@"RawArray<Int64>.name" = private unnamed_addr constant [16 x i8] c"RawArray<Int64>\00", align 1 #3
@RawArray.tt = external global %TypeTemplate
@"RawArray<UInt8>.ti" = internal global %TypeInfo { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"RawArray<UInt8>.name", i32 0, i32 0), i8 -126, i8 0, i16 0, i32 0, %BitMap* null, i32 0, i8 0, i8 0, i16 -32768, i32* null, i8* bitcast (%TypeTemplate* @RawArray.tt to i8*), i8* null, i8* null, %TypeInfo* @UInt8.ti, %ExtensionDef** null, i8* null, i8* null }, !RelatedType !3 #7
@UInt8.ti = external global %TypeInfo, !RelatedType !4 #0
@"RawArray<UInt8>.name" = private unnamed_addr constant [16 x i8] c"RawArray<UInt8>\00", align 1 #3
@"$const_cjstring_data.ciQh56PO1Hn" = private constant { i8*, i64, [3 x i8] } { i8* bitcast (%TypeInfo* @"RawArray<UInt8>.ti" to i8*), i64 3, [3 x i8] c"add" } #8

; Function Attrs: noinline
define i64 @"_CN7example6<main>Hv"() #9 gc "cangjie" personality i32 (...)* @"__cj_personality_v0$" !dbg !12 {
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
  %5 = bitcast %"record.std.core:Array<T>"* %list to i8*
  call void @llvm.cj.memset.p0i8(i8* align 8 %5, i8 0, i64 24, i1 false)
  call void @_CN7example7getListHv(%"record.std.core:Array<T>"* noalias sret(%"record.std.core:Array<T>") %list), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, align 8, !dbg !18
  %6 = call i8 addrspace(1)* @llvm.cj.alloca.generic(i8* bitcast (%TypeInfo* @Int64.ti to i8*), i32 8)
  store i8 addrspace(1)* %6, i8 addrspace(1)** %1, align 8, !dbg !18
  call void @_CNat5ArrayIG_EixHl(i8 addrspace(1)** noalias sret(i8 addrspace(1)*) %1, %"record.std.core:Array<T>"* %list, i64 0, %TypeInfo* @"std.core:Array<Int64>.ti"), !dbg !18
  %7 = load i8 addrspace(1)*, i8 addrspace(1)** %1, align 8, !dbg !18
  %8 = bitcast i8 addrspace(1)* %7 to i8* addrspace(1)*, !dbg !18
  %ti.payload = getelementptr i8*, i8* addrspace(1)* %8, i32 1, !dbg !18
  %9 = bitcast i8* addrspace(1)* %ti.payload to i64 addrspace(1)*, !dbg !18
  %10 = load i64, i64 addrspace(1)* %9, align 8, !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, align 8, !dbg !19
  %11 = call i8 addrspace(1)* @llvm.cj.alloca.generic(i8* bitcast (%TypeInfo* @Int64.ti to i8*), i32 8)
  store i8 addrspace(1)* %11, i8 addrspace(1)** %2, align 8, !dbg !19
  call void @_CNat5ArrayIG_EixHl(i8 addrspace(1)** noalias sret(i8 addrspace(1)*) %2, %"record.std.core:Array<T>"* %list, i64 1, %TypeInfo* @"std.core:Array<Int64>.ti"), !dbg !19
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %2, align 8, !dbg !19
  %13 = bitcast i8 addrspace(1)* %12 to i8* addrspace(1)*, !dbg !19
  %ti.payload1 = getelementptr i8*, i8* addrspace(1)* %13, i32 1, !dbg !19
  %14 = bitcast i8* addrspace(1)* %ti.payload1 to i64 addrspace(1)*, !dbg !19
  %15 = load i64, i64 addrspace(1)* %14, align 8, !dbg !19
  %16 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %10, i64 %15), !dbg !18
  store { i64, i1 } %16, { i64, i1 }* %val.ov, align 8, !dbg !18
  %17 = getelementptr inbounds { i64, i1 }, { i64, i1 }* %val.ov, i32 0, i32 1, !dbg !18
  %18 = load i1, i1* %17, align 1, !dbg !18
  %19 = call i1 @llvm.expect.i1(i1 %18, i1 false), !dbg !18
  br i1 %19, label %overflow, label %normal, !dbg !18

normal:                                           ; preds = %bb0
  %20 = getelementptr inbounds { i64, i1 }, { i64, i1 }* %val.ov, i32 0, i32 0, !dbg !18
  %21 = load i64, i64* %20, align 8, !dbg !18
  store i64 %21, i64* %3, align 8, !dbg !18
  br label %end, !dbg !18

overflow:                                         ; preds = %bb0
  %22 = call i8 addrspace(1)* @"rt$CreateOverflowException_msg"(%"record.std.core:String"* @"$const_cjstring.ciQh56PO1Hn"), !dbg !18
  call void @llvm.cj.throw.exception(i8 addrspace(1)* %22), !dbg !18
  unreachable, !dbg !18

end:                                              ; preds = %normal
  %c = load i64, i64* %3, align 8, !dbg !18
  call void @_CNat7printlnHl(%Unit.Type* noalias sret(%Unit.Type) %4, i64 %c), !dbg !20
  store i64 0, i64* %0, align 8, !dbg !21
  %23 = load i64, i64* %0, align 8, !dbg !21
  ret i64 %23, !dbg !21
}

define private i32 @"__cj_personality_v0$"(...) {
entry:
  ret i32 0
}

declare void @_CN7example7getListHv(%"record.std.core:Array<T>"* noalias sret(%"record.std.core:Array<T>")) gc "cangjie"

declare void @_CNat5ArrayIG_EixHl(i8 addrspace(1)** noalias sret(i8 addrspace(1)*), %"record.std.core:Array<T>"* nocapture readonly, i64, %TypeInfo*) gc "cangjie"

declare i8 addrspace(1)* @llvm.cj.alloca.generic(i8*, i32)

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #11

; Function Attrs: noinline
declare i8 addrspace(1)* @"rt$CreateOverflowException_msg"(%"record.std.core:String"* nocapture readonly) #9 gc "cangjie"

declare void @llvm.cj.throw.exception(i8 addrspace(1)*)

declare void @_CNat7printlnHl(%Unit.Type* noalias sret(%Unit.Type), i64) gc "cangjie"

; Function Attrs: argmemonly nounwind writeonly
declare void @llvm.cj.memset.p0i8(i8* nocapture writeonly, i8, i64, i1) #12

; Function Attrs: noinline optnone
define private void @"0_for_keeping_some_types"() #13 {
entry.unreachable:
  %0 = alloca %ArrayLayout.Int64, align 8
  %1 = alloca %ArrayLayout.UInt8, align 8
  %2 = alloca %Int64.Type, align 8
  %3 = alloca %"ObjLayout.Closure<(ccbase_p1_0)->ccbase_r1>", align 8
  %4 = alloca %"ObjLayout.std.core:OverflowException", align 8
  %5 = alloca %enum.OptionLike.Ref, align 8
  %6 = alloca %"record.std.core:Array<T>", align 8
  %7 = alloca %"record.std.core:String", align 8
  ret void
}

attributes #0 = { "CFileKlass" "NotModifiableClass" }
attributes #1 = { "cjstring_literal" }
attributes #2 = { "CJGlobalValue" }
attributes #3 = { "CJTypeName" }
attributes #4 = { "CJTIFields" }
attributes #5 = { "CJTIOffsets" }
attributes #6 = { "CJTITypeArgs" }
attributes #7 = { "CFileKlass" }
attributes #8 = { "cjstring_data" }
attributes #9 = { noinline }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { argmemonly nounwind writeonly }
attributes #13 = { noinline optnone }

!llvm.module.flags = !{!5, !6, !7, !8}
!llvm.dbg.cu = !{!9}
!pkg_info = !{!11}
!functions = !{}
!global_variables = !{}

!0 = !{!"Int64.Type"}
!1 = !{!"record.std.core:Array<T>"}
!2 = !{!"ArrayLayout.Int64"}
!3 = !{!"ArrayLayout.UInt8"}
!4 = !{!"UInt8.Type"}
!5 = !{i32 2, !"CJBC", i32 1}
!6 = !{i32 2, !"Cangjie_OPT", i32 0}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 2, !"Dwarf Version", i32 4}
!9 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !10, producer: "Cangjie Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!10 = !DIFile(filename: "8-example", directory: ".")
!11 = !{i32 1, !"", !"example", !"example", !"example_example_8", !"example_example_9"}
!12 = distinct !DISubprogram(scope: !14, file: !13, line: 15, type: !15, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !16)
!13 = !DIFile(filename: "example.cj", directory: "/home/bernborgess/Documents/use-cjc")
!14 = !DINamespace(name: "example", scope: null)
!15 = !DISubroutineType(types: !16)
!16 = !{}
!17 = !DILocation(line: 16, column: 16, scope: !12)
!18 = !DILocation(line: 17, column: 13, scope: !12)
!19 = !DILocation(line: 17, column: 23, scope: !12)
!20 = !DILocation(line: 18, column: 5, scope: !12)
!21 = !DILocation(line: 19, column: 5, scope: !12)
