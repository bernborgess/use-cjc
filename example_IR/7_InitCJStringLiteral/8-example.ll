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
@"$const_cjstring.ciQh56PO1Hn" = private constant %"record.std.core:String" { i8 addrspace(1)* addrspacecast (i8* bitcast ({ i8*, i64, [3 x i8] }* @"$const_cjstring_data.ciQh56PO1Hn" to i8*) to i8 addrspace(1)*), i32 0, i32 3 } #2
@Unit.Val = weak_odr global %Unit.Type undef #0
@"std.core:Array<Int64>.name" = private unnamed_addr constant [22 x i8] c"std.core:Array<Int64>\00", align 1 #3
@"RawArray<Int64>.ti" = linkonce_odr global %TypeInfo { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"RawArray<Int64>.name", i32 0, i32 0), i8 -126, i8 0, i16 0, i32 8, %BitMap* null, i32 0, i8 1, i8 0, i16 -32768, i32* null, i8* bitcast (%TypeTemplate* @RawArray.tt to i8*), i8* null, i8* null, %TypeInfo* @Int64.ti, %ExtensionDef** null, i8* null, i8* null }, !RelatedType !3 #1
@"std.core:Array<Int64>.ti.fields" = private unnamed_addr constant [3 x %TypeInfo*] [%TypeInfo* @"RawArray<Int64>.ti", %TypeInfo* @Int64.ti, %TypeInfo* @Int64.ti] #4
@"std.core:Array.tt" = external global %TypeTemplate
@"std.core:Array<Int64>.ti.offsets" = private unnamed_addr constant [3 x i32] [i32 0, i32 8, i32 16] #5
@"std.core:Array<Int64>.ti.typeArgs" = private unnamed_addr constant [1 x %TypeInfo*] [%TypeInfo* @Int64.ti] #6
@"RawArray<Int64>.name" = private unnamed_addr constant [16 x i8] c"RawArray<Int64>\00", align 1 #3
@RawArray.tt = external global %TypeTemplate
@"RawArray<UInt8>.ti" = internal global %TypeInfo { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"RawArray<UInt8>.name", i32 0, i32 0), i8 -126, i8 0, i16 0, i32 0, %BitMap* null, i32 0, i8 0, i8 0, i16 -32768, i32* null, i8* bitcast (%TypeTemplate* @RawArray.tt to i8*), i8* null, i8* null, %TypeInfo* @UInt8.ti, %ExtensionDef** null, i8* null, i8* null }, !RelatedType !4 #7
@UInt8.ti = external global %TypeInfo, !RelatedType !5 #1
@"RawArray<UInt8>.name" = private unnamed_addr constant [16 x i8] c"RawArray<UInt8>\00", align 1 #3
@"$const_cjstring_data.ciQh56PO1Hn" = private constant { i8*, i64, [3 x i8] } { i8* bitcast (%TypeInfo* @"RawArray<UInt8>.ti" to i8*), i64 3, [3 x i8] c"add" } #8

; Function Attrs: noinline
define i64 @"_CN7example6<main>Hv"() #9 gc "cangjie" personality i32 (...)* @"__cj_personality_v0$" !dbg !13 !LinkageType !18 {
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
  call void @_CN7example7getListHv(%"record.std.core:Array<T>"* noalias sret(%"record.std.core:Array<T>") %list), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, align 8, !dbg !20
  %6 = call i8 addrspace(1)* @llvm.cj.alloca.generic(i8* bitcast (%TypeInfo* @Int64.ti to i8*), i32 8)
  store i8 addrspace(1)* %6, i8 addrspace(1)** %1, align 8, !dbg !20
  call void @_CNat5ArrayIG_EixHl(i8 addrspace(1)** noalias sret(i8 addrspace(1)*) %1, %"record.std.core:Array<T>"* %list, i64 0, %TypeInfo* @"std.core:Array<Int64>.ti"), !dbg !20
  %7 = load i8 addrspace(1)*, i8 addrspace(1)** %1, align 8, !dbg !20
  %8 = bitcast i8 addrspace(1)* %7 to i8* addrspace(1)*, !dbg !20
  %ti.payload = getelementptr i8*, i8* addrspace(1)* %8, i32 1, !dbg !20
  %9 = bitcast i8* addrspace(1)* %ti.payload to i64 addrspace(1)*, !dbg !20
  %10 = load i64, i64 addrspace(1)* %9, align 8, !dbg !20
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, align 8, !dbg !21
  %11 = call i8 addrspace(1)* @llvm.cj.alloca.generic(i8* bitcast (%TypeInfo* @Int64.ti to i8*), i32 8)
  store i8 addrspace(1)* %11, i8 addrspace(1)** %2, align 8, !dbg !21
  call void @_CNat5ArrayIG_EixHl(i8 addrspace(1)** noalias sret(i8 addrspace(1)*) %2, %"record.std.core:Array<T>"* %list, i64 1, %TypeInfo* @"std.core:Array<Int64>.ti"), !dbg !21
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %2, align 8, !dbg !21
  %13 = bitcast i8 addrspace(1)* %12 to i8* addrspace(1)*, !dbg !21
  %ti.payload1 = getelementptr i8*, i8* addrspace(1)* %13, i32 1, !dbg !21
  %14 = bitcast i8* addrspace(1)* %ti.payload1 to i64 addrspace(1)*, !dbg !21
  %15 = load i64, i64 addrspace(1)* %14, align 8, !dbg !21
  %16 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %10, i64 %15), !dbg !20
  store { i64, i1 } %16, { i64, i1 }* %val.ov, align 8, !dbg !20
  %17 = getelementptr inbounds { i64, i1 }, { i64, i1 }* %val.ov, i32 0, i32 1, !dbg !20
  %18 = load i1, i1* %17, align 1, !dbg !20
  %19 = call i1 @llvm.expect.i1(i1 %18, i1 false), !dbg !20
  br i1 %19, label %overflow, label %normal, !dbg !20

normal:                                           ; preds = %bb0
  %20 = getelementptr inbounds { i64, i1 }, { i64, i1 }* %val.ov, i32 0, i32 0, !dbg !20
  %21 = load i64, i64* %20, align 8, !dbg !20
  store i64 %21, i64* %3, align 8, !dbg !20
  br label %end, !dbg !20

overflow:                                         ; preds = %bb0
  %22 = call i8 addrspace(1)* @"rt$CreateOverflowException_msg"(%"record.std.core:String"* @"$const_cjstring.ciQh56PO1Hn"), !dbg !20
  call void @llvm.cj.throw.exception(i8 addrspace(1)* %22), !dbg !20
  unreachable, !dbg !20

end:                                              ; preds = %normal
  %c = load i64, i64* %3, align 8, !dbg !20
  call void @_CNat7printlnHl(%Unit.Type* noalias sret(%Unit.Type) %4, i64 %c), !dbg !22
  store i64 0, i64* %0, align 8, !dbg !23
  %23 = load i64, i64* %0, align 8, !dbg !23
  ret i64 %23, !dbg !23
}

define private i32 @"__cj_personality_v0$"(...) {
entry:
  ret i32 0
}

declare !LinkageType !18 void @_CN7example7getListHv(%"record.std.core:Array<T>"* noalias sret(%"record.std.core:Array<T>")) gc "cangjie"

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

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: argmemonly nounwind writeonly
declare void @llvm.cj.memset.p0i8(i8* nocapture writeonly, i8, i64, i1) #13

attributes #0 = { "CJGlobalValue" }
attributes #1 = { "CFileKlass" "NotModifiableClass" }
attributes #2 = { "cjstring_literal" }
attributes #3 = { "CJTypeName" }
attributes #4 = { "CJTIFields" }
attributes #5 = { "CJTIOffsets" }
attributes #6 = { "CJTITypeArgs" }
attributes #7 = { "CFileKlass" }
attributes #8 = { "cjstring_data" }
attributes #9 = { noinline }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #13 = { argmemonly nounwind writeonly }

!llvm.module.flags = !{!6, !7, !8, !9}
!llvm.dbg.cu = !{!10}
!pkg_info = !{!12}
!functions = !{}
!global_variables = !{}

!0 = !{!"InternalLinkage"}
!1 = !{!"Int64.Type"}
!2 = !{!"record.std.core:Array<T>"}
!3 = !{!"ArrayLayout.Int64"}
!4 = !{!"ArrayLayout.UInt8"}
!5 = !{!"UInt8.Type"}
!6 = !{i32 2, !"CJBC", i32 1}
!7 = !{i32 2, !"Cangjie_OPT", i32 0}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 2, !"Dwarf Version", i32 4}
!10 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !11, producer: "Cangjie Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!11 = !DIFile(filename: "8-example", directory: ".")
!12 = !{i32 1, !"", !"example", !"example", !"example_example_8", !"example_example_9"}
!13 = distinct !DISubprogram(scope: !15, file: !14, line: 15, type: !16, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !17)
!14 = !DIFile(filename: "example.cj", directory: "/home/bernborgess/Documents/use-cjc")
!15 = !DINamespace(name: "example", scope: null)
!16 = !DISubroutineType(types: !17)
!17 = !{}
!18 = !{!"ExternalLinkage"}
!19 = !DILocation(line: 16, column: 16, scope: !13)
!20 = !DILocation(line: 17, column: 13, scope: !13)
!21 = !DILocation(line: 17, column: 23, scope: !13)
!22 = !DILocation(line: 18, column: 5, scope: !13)
!23 = !DILocation(line: 19, column: 5, scope: !13)
