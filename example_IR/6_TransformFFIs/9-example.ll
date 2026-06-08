; ModuleID = '9-example'
source_filename = "9-example"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%TypeInfo = type { i8*, i8, i8, i16, i32, %BitMap*, i32, i8, i8, i16, i32*, i8*, i8*, i8*, %TypeInfo*, %ExtensionDef**, i8*, i8* }
%BitMap = type { i32, [0 x i8] }
%ExtensionDef = type { i32, i8, i8, i16, i8*, i8*, i8*, i8* }
%"record.std.core:String" = type { i8 addrspace(1)*, i32, i32 }
%TypeTemplate = type { i8*, i8, i8, i16, i16, i8*, i8*, i8*, i8*, %ExtensionDef**, i16 }
%"record.std.core:Array<T>" = type { i8 addrspace(1)*, i64, i64 }

@"std.core:Ordering.ti" = external global %TypeInfo, !RelatedType !0 #0
@"$has_applied_pkg_init_func" = external global i1, !LinkageType !1 #1
@has_invoked_pkg_init_literal = external global i1, !LinkageType !1 #1
@"example:$ClN7example7getListHvEL_E$0.ti" = external global %TypeInfo, !RelatedType !2 #0
@"$const_cjstring.fzBUmkrQ1TP" = private constant %"record.std.core:String" #2
@"std.core:String.ti" = external global %TypeInfo, !RelatedType !3 #0
@Int64.ti = external global %TypeInfo, !RelatedType !4 #0
@"std.core:Array<std.core:String>.ti" = linkonce_odr global %TypeInfo { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @"std.core:Array<std.core:String>.name", i32 0, i32 0), i8 22, i8 0, i16 3, i32 24, %BitMap* null, i32 0, i8 8, i8 1, i16 -32768, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @"std.core:Array<std.core:String>.ti.offsets", i32 0, i32 0), i8* bitcast (%TypeTemplate* @"std.core:Array.tt" to i8*), i8* bitcast ([1 x %TypeInfo*]* @"std.core:Array<std.core:String>.ti.typeArgs" to i8*), i8* bitcast ([3 x %TypeInfo*]* @"std.core:Array<std.core:String>.ti.fields" to i8*), %TypeInfo* null, %ExtensionDef** null, i8* null, i8* null }, !RelatedType !5 #0
@"std.core:Array<std.core:String>.name" = private unnamed_addr constant [32 x i8] c"std.core:Array<std.core:String>\00", align 1 #3
@"RawArray<std.core:String>.ti" = linkonce_odr global %TypeInfo { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"RawArray<std.core:String>.name", i32 0, i32 0), i8 -126, i8 0, i16 0, i32 16, %BitMap* null, i32 0, i8 1, i8 0, i16 -32768, i32* null, i8* bitcast (%TypeTemplate* @RawArray.tt to i8*), i8* null, i8* null, %TypeInfo* @"std.core:String.ti", %ExtensionDef** null, i8* null, i8* null }, !RelatedType !6 #0
@"std.core:Array<std.core:String>.ti.fields" = private unnamed_addr constant [3 x %TypeInfo*] [%TypeInfo* @"RawArray<std.core:String>.ti", %TypeInfo* @Int64.ti, %TypeInfo* @Int64.ti] #4
@"std.core:Array.tt" = external global %TypeTemplate
@"std.core:Array<std.core:String>.ti.offsets" = private unnamed_addr constant [3 x i32] [i32 0, i32 8, i32 16] #5
@"std.core:Array<std.core:String>.ti.typeArgs" = private unnamed_addr constant [1 x %TypeInfo*] [%TypeInfo* @"std.core:String.ti"] #6
@"RawArray<std.core:String>.name" = private unnamed_addr constant [26 x i8] c"RawArray<std.core:String>\00", align 1 #3
@RawArray.tt = external global %TypeTemplate

define void @_CGFatU00000004oVJx9iiHv() gc "cangjie" personality i32 (...)* @"__cj_personality_v0$" !dbg !14 !LinkageType !1 {
bb0:
  ret void, !dbg !19
}

define private i32 @"__cj_personality_v0$"(...) {
entry:
  ret i32 0
}

define void @_CN7example7getListHv(%"record.std.core:Array<T>"* noalias sret(%"record.std.core:Array<T>") %0) gc "cangjie" personality i32 (...)* @"__cj_personality_v0$" !dbg !20 !LinkageType !22 {
allocas:
  %1 = alloca %"record.std.core:String", align 8
  %2 = alloca %"record.std.core:Array<T>", align 8
  %3 = alloca %"record.std.core:Array<T>", align 8
  br label %bb0

bb0:                                              ; preds = %allocas
  %4 = call noalias i8 addrspace(1)* @llvm.cj.malloc.object(i8* bitcast (%TypeInfo* @"example:$ClN7example7getListHvEL_E$0.ti" to i8*), i32 16), !dbg !23
  %5 = bitcast i8 addrspace(1)* %4 to i8* addrspace(1)*, !dbg !23
  %ti.payload = getelementptr i8*, i8* addrspace(1)* %5, i32 1, !dbg !23
  %6 = getelementptr inbounds i8*, i8* addrspace(1)* %ti.payload, i32 0, !dbg !23
  store i8* bitcast (void (i8 addrspace(1)**, i8 addrspace(1)*, i8 addrspace(1)*, %TypeInfo*)* @"_CCN7example7getListHvEL_E$g" to i8*), i8* addrspace(1)* %6, align 8, !dbg !23
  %7 = getelementptr inbounds i8*, i8* addrspace(1)* %ti.payload, i32 1, !dbg !23
  store i8* bitcast (i64 (i8 addrspace(1)*, %"record.std.core:String"*, %TypeInfo*)* @"_CCN7example7getListHvEL_E$i" to i8*), i8* addrspace(1)* %7, align 8, !dbg !23
  %8 = bitcast %"record.std.core:String"* %1 to i8*
  call void @llvm.cj.memset.p0i8(i8* align 8 %8, i8 0, i64 16, i1 false)
  call void @_CN7example7getLineHv(%"record.std.core:String"* noalias sret(%"record.std.core:String") %1), !dbg !24
  %9 = call i1 @_CPIat6String5splitHRNatY0_EbE11removeEmptyHY3_(%"record.std.core:String"* %1, %"record.std.core:String"* @"$const_cjstring.fzBUmkrQ1TP", %TypeInfo* @"std.core:String.ti"), !dbg !24
  %10 = bitcast %"record.std.core:Array<T>"* %2 to i8*
  call void @llvm.cj.memset.p0i8(i8* align 8 %10, i8 0, i64 24, i1 false)
  call void @_CNat6String5splitHRNatY0_Eb(%"record.std.core:Array<T>"* noalias sret(%"record.std.core:Array<T>") %2, %"record.std.core:String"* %1, %"record.std.core:String"* @"$const_cjstring.fzBUmkrQ1TP", i1 %9, %TypeInfo* @"std.core:String.ti"), !dbg !24
  %11 = bitcast %"record.std.core:Array<T>"* %3 to i8*
  call void @llvm.cj.memset.p0i8(i8* align 8 %11, i8 0, i64 24, i1 false)
  call void @_CNat5ArrayIG_E3mapIG0_HF0G0_G_E(%"record.std.core:Array<T>"* noalias sret(%"record.std.core:Array<T>") %3, %"record.std.core:Array<T>"* %2, i8 addrspace(1)* %4, %TypeInfo* @Int64.ti, %TypeInfo* @"std.core:Array<std.core:String>.ti"), !dbg !24
  %12 = bitcast %"record.std.core:Array<T>"* %0 to i8*
  %13 = bitcast %"record.std.core:Array<T>"* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 24, i1 false)
  ret void, !dbg !24
}

declare noalias i8 addrspace(1)* @llvm.cj.malloc.object(i8*, i32)

declare !LinkageType !1 void @"_CCN7example7getListHvEL_E$g"(i8 addrspace(1)** noalias sret(i8 addrspace(1)*), i8 addrspace(1)*, i8 addrspace(1)*, %TypeInfo*) gc "cangjie"

declare !LinkageType !1 i64 @"_CCN7example7getListHvEL_E$i"(i8 addrspace(1)*, %"record.std.core:String"* nocapture readonly, %TypeInfo*) gc "cangjie"

declare !LinkageType !22 void @_CN7example7getLineHv(%"record.std.core:String"* noalias sret(%"record.std.core:String")) gc "cangjie"

declare i1 @_CPIat6String5splitHRNatY0_EbE11removeEmptyHY3_(%"record.std.core:String"* nocapture readonly, %"record.std.core:String"* nocapture readonly, %TypeInfo*) gc "cangjie"

declare void @_CNat6String5splitHRNatY0_Eb(%"record.std.core:Array<T>"* noalias sret(%"record.std.core:Array<T>"), %"record.std.core:String"* nocapture readonly, %"record.std.core:String"* nocapture readonly, i1, %TypeInfo*) gc "cangjie"

declare void @_CNat5ArrayIG_E3mapIG0_HF0G0_G_E(%"record.std.core:Array<T>"* noalias sret(%"record.std.core:Array<T>"), %"record.std.core:Array<T>"* nocapture readonly, i8 addrspace(1)*, %TypeInfo*, %TypeInfo*) gc "cangjie"

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: argmemonly nounwind writeonly
declare void @llvm.cj.memset.p0i8(i8* nocapture writeonly, i8, i64, i1) #9

attributes #0 = { "CFileKlass" "NotModifiableClass" }
attributes #1 = { "CJGlobalValue" }
attributes #2 = { "cjstring_literal" }
attributes #3 = { "CJTypeName" }
attributes #4 = { "CJTIFields" }
attributes #5 = { "CJTIOffsets" }
attributes #6 = { "CJTITypeArgs" }
attributes #7 = { argmemonly nocallback nofree nounwind willreturn }
attributes #8 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #9 = { argmemonly nounwind writeonly }

!llvm.module.flags = !{!7, !8, !9, !10}
!llvm.dbg.cu = !{!11}
!pkg_info = !{!13}
!functions = !{}
!global_variables = !{}

!0 = !{!"enum.Trivial"}
!1 = !{!"InternalLinkage"}
!2 = !{!"ObjLayout.example:$ClN7example7getListHvEL_E$0"}
!3 = !{!"record.std.core:String"}
!4 = !{!"Int64.Type"}
!5 = !{!"record.std.core:Array<T>"}
!6 = !{!"ArrayLayout.std.core:String"}
!7 = !{i32 2, !"CJBC", i32 1}
!8 = !{i32 2, !"Cangjie_OPT", i32 0}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 2, !"Dwarf Version", i32 4}
!11 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !12, producer: "Cangjie Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!12 = !DIFile(filename: "9-example", directory: ".")
!13 = !{i32 1, !"", !"example", !"example", !"example_example_9", !"example_example_10"}
!14 = distinct !DISubprogram(scope: !16, file: !15, type: !17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !18)
!15 = !DIFile(filename: "string_builder.cj", directory: "std.core")
!16 = !DINamespace(name: "example", scope: null)
!17 = !DISubroutineType(types: !18)
!18 = !{}
!19 = !DILocation(line: 0, scope: !14, isImplicitCode: true)
!20 = distinct !DISubprogram(scope: !16, file: !21, line: 10, type: !17, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !18)
!21 = !DIFile(filename: "example.cj", directory: "/home/bernborgess/Documents/use-cjc")
!22 = !{!"ExternalLinkage"}
!23 = !DILocation(line: 0, scope: !20, isImplicitCode: true)
!24 = !DILocation(line: 11, column: 5, scope: !20)
