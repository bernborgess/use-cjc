; ModuleID = '10-example'
source_filename = "10-example"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%TypeTemplate = type { i8*, i8, i8, i16, i16, i8*, i8*, i8*, i8*, %ExtensionDef**, i16 }
%ExtensionDef = type { i32, i8, i8, i16, i8*, i8*, i8*, i8* }
%TypeInfo = type { i8*, i8, i8, i16, i32, %BitMap*, i32, i8, i8, i16, i32*, i8*, i8*, i8*, %TypeInfo*, %ExtensionDef**, i8*, i8* }
%BitMap = type { i32, [0 x i8] }
%"record.std.core:Array<T>" = type { i8 addrspace(1)*, i64, i64 }

@"std.core:Option.tt" = external global %TypeTemplate
@"$has_applied_pkg_init_func" = external global i1, !LinkageType !0 #0
@has_invoked_pkg_init_literal = external global i1, !LinkageType !0 #0
@"RawArray<std.core:String>.ti" = linkonce_odr global %TypeInfo { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"RawArray<std.core:String>.name", i32 0, i32 0), i8 -126, i8 0, i16 0, i32 16, %BitMap* null, i32 0, i8 1, i8 0, i16 -32768, i32* null, i8* bitcast (%TypeTemplate* @RawArray.tt to i8*), i8* null, i8* null, %TypeInfo* @"std.core:String.ti", %ExtensionDef** null, i8* null, i8* null }, !RelatedType !1 #1
@"RawArray<std.core:String>.name" = private unnamed_addr constant [26 x i8] c"RawArray<std.core:String>\00", align 1 #2
@RawArray.tt = external global %TypeTemplate
@"std.core:String.ti" = external global %TypeInfo, !RelatedType !2 #1

; Function Attrs: noinline
define void @_CGP7examplefiHv() #3 gc "cangjie" personality i32 (...)* @"__cj_personality_v0$" !dbg !9 !LinkageType !0 {
bb0:
  call void @_CGPaiiiHv(), !dbg !14
  call void @_CGPatiiHv(), !dbg !14
  call void @_CGPayiiHv(), !dbg !14
  ret void, !dbg !14
}

define private i32 @"__cj_personality_v0$"(...) {
entry:
  ret i32 0
}

declare void @_CGPaiiiHv() gc "cangjie"

declare void @_CGPatiiHv() gc "cangjie"

declare void @_CGPayiiHv() gc "cangjie"

define void @"_CNat5ArrayIRNat6StringEE6<init>Hv"(%"record.std.core:Array<T>" addrspace(1)* noalias %this, i8 addrspace(1)* %"$BP", %TypeInfo* %outerTI) #4 gc "cangjie" personality i32 (...)* @"__cj_personality_v0$" !dbg !15 !LinkageType !0 {
bb0:
  %0 = getelementptr inbounds %"record.std.core:Array<T>", %"record.std.core:Array<T>" addrspace(1)* %this, i32 0, i32 1, !dbg !17
  store i64 0, i64 addrspace(1)* %0, align 8, !dbg !17
  %1 = call noalias i8 addrspace(1)* @llvm.cj.malloc.array(i8* bitcast (%TypeInfo* @"RawArray<std.core:String>.ti" to i8*), i64 0, i64 16), !dbg !18
  %2 = getelementptr inbounds %"record.std.core:Array<T>", %"record.std.core:Array<T>" addrspace(1)* %this, i32 0, i32 0, !dbg !19
  call void @llvm.cj.gcwrite.ref(i8 addrspace(1)* %1, i8 addrspace(1)* %"$BP", i8 addrspace(1)* addrspace(1)* %2), !dbg !19
  %3 = getelementptr inbounds %"record.std.core:Array<T>", %"record.std.core:Array<T>" addrspace(1)* %this, i32 0, i32 2, !dbg !20
  store i64 0, i64 addrspace(1)* %3, align 8, !dbg !20
  ret void, !dbg !21
}

declare noalias i8 addrspace(1)* @llvm.cj.malloc.array(i8*, i64, i64)

; Function Attrs: argmemonly nounwind
declare void @llvm.cj.gcwrite.ref(i8 addrspace(1)*, i8 addrspace(1)* nocapture, i8 addrspace(1)* addrspace(1)* nocapture) #5

attributes #0 = { "CJGlobalValue" }
attributes #1 = { "CFileKlass" "NotModifiableClass" }
attributes #2 = { "CJTypeName" }
attributes #3 = { noinline }
attributes #4 = { "record_mut" "thisParamHasBP" }
attributes #5 = { argmemonly nounwind }

!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.dbg.cu = !{!7}

!0 = !{!"InternalLinkage"}
!1 = !{!"ArrayLayout.std.core:String"}
!2 = !{!"record.std.core:String"}
!3 = !{i32 2, !"CJBC", i32 1}
!4 = !{i32 2, !"Cangjie_OPT", i32 0}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !8, producer: "Cangjie Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!8 = !DIFile(filename: "10-example", directory: ".")
!9 = distinct !DISubprogram(scope: !11, file: !10, type: !12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !13)
!10 = !DIFile(filename: "", directory: "")
!11 = !DINamespace(name: "example", scope: null)
!12 = !DISubroutineType(types: !13)
!13 = !{}
!14 = !DILocation(line: 0, scope: !9, isImplicitCode: true)
!15 = distinct !DISubprogram(scope: !11, file: !16, line: 28, type: !12, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !13)
!16 = !DIFile(filename: "array.cj", directory: "std.core")
!17 = !DILocation(line: 29, column: 9, scope: !15)
!18 = !DILocation(line: 30, column: 23, scope: !15)
!19 = !DILocation(line: 30, column: 9, scope: !15)
!20 = !DILocation(line: 31, column: 9, scope: !15)
!21 = !DILocation(line: 32, column: 5, scope: !15)
