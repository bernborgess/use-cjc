; ModuleID = '14-example'
source_filename = "14-example"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%TypeInfo = type { i8*, i8, i8, i16, i32, %BitMap*, i32, i8, i8, i16, i32*, i8*, i8*, i8*, %TypeInfo*, %ExtensionDef**, i8*, i8* }
%BitMap = type { i32, [0 x i8] }
%ExtensionDef = type { i32, i8, i8, i16, i8*, i8*, i8*, i8* }
%"record.std.core:String" = type { i8 addrspace(1)*, i32, i32 }

@"$has_applied_pkg_init_func" = global i1 false, align 8, !LinkageType !0, !GlobalVarType !1 #0
@has_invoked_pkg_init_literal = external global i1, !LinkageType !0 #0
@Int64.ti = external global %TypeInfo, !RelatedType !2 #1

; Function Attrs: noinline
define void @"_CGFatUstring$iiHv"() #2 gc "cangjie" personality i32 (...)* @"__cj_personality_v0$" !dbg !9 !LinkageType !0 {
bb0:
  ret void, !dbg !14
}

define private i32 @"__cj_personality_v0$"(...) {
entry:
  ret i32 0
}

define i64 @_CN7example7getListHvEL_E(i8 addrspace(1)* %0, %"record.std.core:String"* noalias nocapture readonly %s) #3 gc "cangjie" personality i32 (...)* @"__cj_personality_v0$" !dbg !15 !LinkageType !0 {
allocas:
  %1 = alloca i64, align 8
  br label %bb2

bb2:                                              ; preds = %allocas
  %2 = call i64 @_CNaiXl5parseHRNat6StringE(%"record.std.core:String"* %s, %TypeInfo* @Int64.ti, %TypeInfo* @Int64.ti), !dbg !17
  store i64 %2, i64* %1, align 8
  %3 = load i64, i64* %1, align 8, !dbg !17
  ret i64 %3, !dbg !17
}

declare i64 @_CNaiXl5parseHRNat6StringE(%"record.std.core:String"* nocapture readonly, %TypeInfo*, %TypeInfo*) gc "cangjie"

; Function Attrs: noinline
define i64 @user.main() #2 gc "cangjie" personality i32 (...)* @"__cj_personality_v0$" !dbg !18 !LinkageType !20 {
allocas:
  %0 = alloca i64, align 8
  br label %bb0

bb0:                                              ; preds = %allocas
  %1 = call i64 @"_CN7example6<main>Hv"(), !dbg !21
  store i64 %1, i64* %0, align 8
  %2 = load i64, i64* %0, align 8, !dbg !21
  ret i64 %2, !dbg !21
}

; Function Attrs: noinline
declare !LinkageType !20 i64 @"_CN7example6<main>Hv"() #2 gc "cangjie"

attributes #0 = { "CJGlobalValue" }
attributes #1 = { "CFileKlass" "NotModifiableClass" }
attributes #2 = { noinline }
attributes #3 = { "UsedByClosure" }

!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.dbg.cu = !{!7}

!0 = !{!"InternalLinkage"}
!1 = !{!"b"}
!2 = !{!"Int64.Type"}
!3 = !{i32 2, !"CJBC", i32 1}
!4 = !{i32 2, !"Cangjie_OPT", i32 0}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !8, producer: "Cangjie Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!8 = !DIFile(filename: "14-example", directory: ".")
!9 = distinct !DISubprogram(scope: !11, file: !10, type: !12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !13)
!10 = !DIFile(filename: "string.cj", directory: "std.core")
!11 = !DINamespace(name: "example", scope: null)
!12 = !DISubroutineType(types: !13)
!13 = !{}
!14 = !DILocation(line: 0, scope: !9, isImplicitCode: true)
!15 = distinct !DISubprogram(scope: !11, file: !16, line: 11, type: !12, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !13)
!16 = !DIFile(filename: "example.cj", directory: "/home/bernborgess/Documents/use-cjc")
!17 = !DILocation(line: 11, column: 36, scope: !15)
!18 = distinct !DISubprogram(scope: !11, file: !19, type: !12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !13)
!19 = !DIFile(filename: "", directory: "")
!20 = !{!"ExternalLinkage"}
!21 = !DILocation(line: 0, scope: !18, isImplicitCode: true)
