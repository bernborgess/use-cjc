; ModuleID = '12-example'
source_filename = "12-example"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%TypeInfo = type { i8*, i8, i8, i16, i32, %BitMap*, i32, i8, i8, i16, i32*, i8*, i8*, i8*, %TypeInfo*, %ExtensionDef**, i8*, i8* }
%BitMap = type { i32, [0 x i8] }
%ExtensionDef = type { i32, i8, i8, i16, i8*, i8*, i8*, i8* }
%"record.std.core:String" = type { i8 addrspace(1)*, i32, i32 }
%TypeTemplate = type { i8*, i8, i8, i16, i16, i8*, i8*, i8*, i8*, %ExtensionDef**, i16 }
%"enum.std.core:Option<std.core:String>" = type { i1, %"record.std.core:String" }

@"$has_applied_pkg_init_func" = external global i1, !LinkageType !0 #0
@has_invoked_pkg_init_literal = external global i1, !LinkageType !0 #0
@"example:$ClN7example7getLineHvEL_E$0.ti" = external global %TypeInfo, !RelatedType !1 #1
@"std.env:ConsoleReader.ti" = external global %TypeInfo, !RelatedType !2 #2
@"std.core:String.ti" = external global %TypeInfo, !RelatedType !3 #1
@"std.core:Option<std.core:String>.ti" = linkonce_odr global %TypeInfo { i8* getelementptr inbounds ([33 x i8], [33 x i8]* @"std.core:Option<std.core:String>.name", i32 0, i32 0), i8 23, i8 0, i16 2, i32 24, %BitMap* null, i32 0, i8 8, i8 1, i16 -32768, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @"std.core:Option<std.core:String>.ti.offsets", i32 0, i32 0), i8* bitcast (%TypeTemplate* @"std.core:Option.tt" to i8*), i8* bitcast ([1 x %TypeInfo*]* @"std.core:Option<std.core:String>.ti.typeArgs" to i8*), i8* bitcast ([2 x %TypeInfo*]* @"std.core:Option<std.core:String>.ti.fields" to i8*), %TypeInfo* null, %ExtensionDef** null, i8* null, i8* null }, !RelatedType !4 #1
@"$const_cjstring.5k+AV0uhyFK" = private constant %"record.std.core:String" #3
@"std.core:Option<std.core:String>.name" = private unnamed_addr constant [33 x i8] c"std.core:Option<std.core:String>\00", align 1 #4
@Bool.ti = external global %TypeInfo, !RelatedType !5 #1
@"std.core:Option<std.core:String>.ti.fields" = private unnamed_addr constant [2 x %TypeInfo*] [%TypeInfo* @Bool.ti, %TypeInfo* @"std.core:String.ti"] #5
@"std.core:Option.tt" = external global %TypeTemplate
@"std.core:Option<std.core:String>.ti.offsets" = private unnamed_addr constant [2 x i32] [i32 0, i32 8] #6
@"std.core:Option<std.core:String>.ti.typeArgs" = private unnamed_addr constant [1 x %TypeInfo*] [%TypeInfo* @"std.core:String.ti"] #7

define void @_CN7example7getLineHv(%"record.std.core:String"* noalias sret(%"record.std.core:String") %0) gc "cangjie" personality i32 (...)* @"__cj_personality_v0$" !dbg !12 !LinkageType !17 {
allocas:
  %1 = alloca %"enum.std.core:Option<std.core:String>", align 8
  %2 = alloca i8 addrspace(1)*, align 8
  %3 = alloca %"record.std.core:String", align 8
  br label %bb0

bb0:                                              ; preds = %allocas
  %4 = call noalias i8 addrspace(1)* @llvm.cj.malloc.object(i8* bitcast (%TypeInfo* @"example:$ClN7example7getLineHvEL_E$0.ti" to i8*), i32 16), !dbg !18
  %5 = bitcast i8 addrspace(1)* %4 to i8* addrspace(1)*, !dbg !18
  %ti.payload = getelementptr i8*, i8* addrspace(1)* %5, i32 1, !dbg !18
  %6 = getelementptr inbounds i8*, i8* addrspace(1)* %ti.payload, i32 0, !dbg !18
  store i8* bitcast (void (i8 addrspace(1)**, i8 addrspace(1)*, %TypeInfo*)* @"_CCN7example7getLineHvEL_E$g" to i8*), i8* addrspace(1)* %6, align 8, !dbg !18
  %7 = getelementptr inbounds i8*, i8* addrspace(1)* %ti.payload, i32 1, !dbg !18
  store i8* bitcast (void (%"record.std.core:String"*, i8 addrspace(1)*, %TypeInfo*)* @"_CCN7example7getLineHvEL_E$i" to i8*), i8* addrspace(1)* %7, align 8, !dbg !18
  %8 = call i8 addrspace(1)* @_CNay8getStdInHv(), !dbg !19
  %9 = bitcast %"enum.std.core:Option<std.core:String>"* %1 to i8*
  call void @llvm.cj.memset.p0i8(i8* align 8 %9, i8 0, i64 24, i1 false)
  call void @_CNay13ConsoleReader6readlnHv(%"enum.std.core:Option<std.core:String>"* noalias sret(%"enum.std.core:Option<std.core:String>") %1, i8 addrspace(1)* %8, %TypeInfo* @"std.env:ConsoleReader.ti"), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, align 8, !dbg !19
  %10 = call i8 addrspace(1)* @llvm.cj.alloca.generic(i8* bitcast (%TypeInfo* @"std.core:String.ti" to i8*), i32 16)
  store i8 addrspace(1)* %10, i8 addrspace(1)** %2, align 8, !dbg !19
  %11 = call i8 addrspace(1)* @llvm.cj.alloca.generic(i8* bitcast (%TypeInfo* @"std.core:Option<std.core:String>.ti" to i8*), i32 24)
  %12 = bitcast i8 addrspace(1)* %11 to i8* addrspace(1)*, !dbg !19
  %ti.payload1 = getelementptr i8*, i8* addrspace(1)* %12, i32 1, !dbg !19
  %13 = bitcast i8* addrspace(1)* %ti.payload1 to %"enum.std.core:Option<std.core:String>" addrspace(1)*, !dbg !19
  %14 = bitcast %"enum.std.core:Option<std.core:String>" addrspace(1)* %13 to i8 addrspace(1)*, !dbg !19
  %15 = bitcast %"enum.std.core:Option<std.core:String>"* %1 to i8*, !dbg !19
  call void @llvm.cj.gcwrite.struct.p0i8.i64(i8 addrspace(1)* %11, i8 addrspace(1)* %14, i8* %15, i64 24), !dbg !19, !AggType !4
  call void @_CNat6OptionIG_E12getOrDefaultHF0G_E(i8 addrspace(1)** noalias sret(i8 addrspace(1)*) %2, i8 addrspace(1)* %11, i8 addrspace(1)* %4, %TypeInfo* @"std.core:Option<std.core:String>.ti"), !dbg !19
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %2, align 8, !dbg !19
  %17 = bitcast i8 addrspace(1)* %16 to i8* addrspace(1)*, !dbg !19
  %ti.payload2 = getelementptr i8*, i8* addrspace(1)* %17, i32 1, !dbg !19
  %18 = bitcast i8* addrspace(1)* %ti.payload2 to %"record.std.core:String" addrspace(1)*, !dbg !19
  %19 = bitcast %"record.std.core:String"* %3 to i8*
  call void @llvm.cj.memset.p0i8(i8* align 8 %19, i8 0, i64 16, i1 false)
  %20 = bitcast %"record.std.core:String"* %3 to i8*, !dbg !19
  %21 = bitcast %"record.std.core:String" addrspace(1)* %18 to i8 addrspace(1)*, !dbg !19
  call void @llvm.cj.gcread.struct.i64(i8* %20, i8 addrspace(1)* %16, i8 addrspace(1)* %21, i64 16), !dbg !19, !AggType !3
  %22 = bitcast %"record.std.core:String"* %0 to i8*
  %23 = bitcast %"record.std.core:String"* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 16, i1 false)
  ret void, !dbg !19
}

define private i32 @"__cj_personality_v0$"(...) {
entry:
  ret i32 0
}

declare noalias i8 addrspace(1)* @llvm.cj.malloc.object(i8*, i32)

declare !LinkageType !0 void @"_CCN7example7getLineHvEL_E$g"(i8 addrspace(1)** noalias sret(i8 addrspace(1)*), i8 addrspace(1)*, %TypeInfo*) gc "cangjie"

declare !LinkageType !0 void @"_CCN7example7getLineHvEL_E$i"(%"record.std.core:String"* noalias sret(%"record.std.core:String"), i8 addrspace(1)*, %TypeInfo*) gc "cangjie"

declare i8 addrspace(1)* @_CNay8getStdInHv() gc "cangjie"

declare void @_CNay13ConsoleReader6readlnHv(%"enum.std.core:Option<std.core:String>"* noalias sret(%"enum.std.core:Option<std.core:String>"), i8 addrspace(1)*, %TypeInfo*) gc "cangjie"

declare void @_CNat6OptionIG_E12getOrDefaultHF0G_E(i8 addrspace(1)** noalias sret(i8 addrspace(1)*), i8 addrspace(1)*, i8 addrspace(1)*, %TypeInfo*) gc "cangjie"

declare i8 addrspace(1)* @llvm.cj.alloca.generic(i8*, i32)

; Function Attrs: argmemonly nounwind
declare void @llvm.cj.gcwrite.struct.p0i8.i64(i8 addrspace(1)*, i8 addrspace(1)* noalias nocapture writeonly, i8* noalias nocapture readonly, i64) #8

; Function Attrs: argmemonly nounwind
declare void @llvm.cj.gcread.struct.i64(i8* writeonly, i8 addrspace(1)* noalias nocapture, i8 addrspace(1)* noalias nocapture readonly, i64) #8

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #9

define void @_CN7example7getLineHvEL_E(%"record.std.core:String"* noalias sret(%"record.std.core:String") %0, i8 addrspace(1)* %1) #10 gc "cangjie" personality i32 (...)* @"__cj_personality_v0$" !dbg !20 !LinkageType !0 {
bb2:
  %2 = bitcast %"record.std.core:String"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 bitcast (%"record.std.core:String"* @"$const_cjstring.5k+AV0uhyFK" to i8*), i64 16, i1 false)
  ret void, !dbg !21
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: argmemonly nounwind writeonly
declare void @llvm.cj.memset.p0i8(i8* nocapture writeonly, i8, i64, i1) #12

attributes #0 = { "CJGlobalValue" }
attributes #1 = { "CFileKlass" "NotModifiableClass" }
attributes #2 = { "CFileKlass" }
attributes #3 = { "cjstring_literal" }
attributes #4 = { "CJTypeName" }
attributes #5 = { "CJTIFields" }
attributes #6 = { "CJTIOffsets" }
attributes #7 = { "CJTITypeArgs" }
attributes #8 = { argmemonly nounwind }
attributes #9 = { argmemonly nocallback nofree nounwind willreturn }
attributes #10 = { "UsedByClosure" }
attributes #11 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #12 = { argmemonly nounwind writeonly }

!llvm.module.flags = !{!6, !7, !8, !9}
!llvm.dbg.cu = !{!10}

!0 = !{!"InternalLinkage"}
!1 = !{!"ObjLayout.example:$ClN7example7getLineHvEL_E$0"}
!2 = !{!"ObjLayout.std.env:ConsoleReader"}
!3 = !{!"record.std.core:String"}
!4 = !{!"enum.std.core:Option<std.core:String>"}
!5 = !{!"Bool.Type"}
!6 = !{i32 2, !"CJBC", i32 1}
!7 = !{i32 2, !"Cangjie_OPT", i32 0}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 2, !"Dwarf Version", i32 4}
!10 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !11, producer: "Cangjie Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!11 = !DIFile(filename: "12-example", directory: ".")
!12 = distinct !DISubprogram(scope: !14, file: !13, line: 6, type: !15, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !16)
!13 = !DIFile(filename: "example.cj", directory: "/home/bernborgess/Documents/use-cjc")
!14 = !DINamespace(name: "example", scope: null)
!15 = !DISubroutineType(types: !16)
!16 = !{}
!17 = !{!"ExternalLinkage"}
!18 = !DILocation(line: 0, scope: !12, isImplicitCode: true)
!19 = !DILocation(line: 7, column: 5, scope: !12)
!20 = distinct !DISubprogram(scope: !14, file: !13, line: 7, type: !15, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !16)
!21 = !DILocation(line: 7, column: 42, scope: !20)
