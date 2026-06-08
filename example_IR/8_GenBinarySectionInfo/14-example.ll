; ModuleID = '14-example'
source_filename = "14-example"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%TypeInfo = type { i8*, i8, i8, i16, i32, %BitMap*, i32, i8, i8, i16, i32*, i8*, i8*, i8*, %TypeInfo*, %ExtensionDef**, i8*, i8* }
%BitMap = type { i32, [0 x i8] }
%ExtensionDef = type { i32, i8, i8, i16, i8*, i8*, i8*, i8* }
%"record.std.core:String" = type { i8 addrspace(1)*, i32, i32 }
%Int64.Type = type { i64 }
%"ObjLayout.example:$ClN7example7getListHvEL_E$0" = type { i8*, i8* }

@"$has_applied_pkg_init_func" = global i1 false, align 8, !LinkageType !0, !GlobalVarType !1 #0
@has_invoked_pkg_init_literal = external global i1, !LinkageType !0 #0
@Int64.ti = external global %TypeInfo, !RelatedType !2 #1

; Function Attrs: noinline
define void @"_CGFatUstring$iiHv"() #2 gc "cangjie" personality i32 (...)* @"__cj_personality_v0$" !dbg !10 !LinkageType !0 {
bb0:
  ret void, !dbg !15
}

define private i32 @"__cj_personality_v0$"(...) {
entry:
  ret i32 0
}

define i64 @_CN7example7getListHvEL_E(i8 addrspace(1)* %0, %"record.std.core:String"* noalias nocapture readonly %s) #3 gc "cangjie" personality i32 (...)* @"__cj_personality_v0$" !dbg !16 !LinkageType !0 {
allocas:
  %1 = alloca i64, align 8
  br label %bb2

bb2:                                              ; preds = %allocas
  %2 = call i64 @_CNaiXl5parseHRNat6StringE(%"record.std.core:String"* %s, %TypeInfo* @Int64.ti, %TypeInfo* @Int64.ti), !dbg !18
  store i64 %2, i64* %1, align 8
  %3 = load i64, i64* %1, align 8, !dbg !18
  ret i64 %3, !dbg !18
}

declare i64 @_CNaiXl5parseHRNat6StringE(%"record.std.core:String"* nocapture readonly, %TypeInfo*, %TypeInfo*) gc "cangjie"

; Function Attrs: noinline
define i64 @user.main() #2 gc "cangjie" personality i32 (...)* @"__cj_personality_v0$" !dbg !19 !LinkageType !21 {
allocas:
  %0 = alloca i64, align 8
  br label %bb0

bb0:                                              ; preds = %allocas
  %1 = call i64 @"_CN7example6<main>Hv"(), !dbg !22
  store i64 %1, i64* %0, align 8
  %2 = load i64, i64* %0, align 8, !dbg !22
  ret i64 %2, !dbg !22
}

; Function Attrs: noinline
declare !LinkageType !21 i64 @"_CN7example6<main>Hv"() #2 gc "cangjie"

; Function Attrs: noinline optnone
define private void @"0_for_keeping_some_types"() #4 {
entry.unreachable:
  %0 = alloca %Int64.Type, align 8
  %1 = alloca %"ObjLayout.example:$ClN7example7getListHvEL_E$0", align 8
  %2 = alloca %"record.std.core:String", align 8
  ret void
}

attributes #0 = { "CJGlobalValue" }
attributes #1 = { "CFileKlass" "NotModifiableClass" }
attributes #2 = { noinline }
attributes #3 = { "UsedByClosure" }
attributes #4 = { noinline optnone }

!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.dbg.cu = !{!7}
!pkg_info = !{!9}
!functions = !{}
!global_variables = !{}

!0 = !{!"InternalLinkage"}
!1 = !{!"b"}
!2 = !{!"Int64.Type"}
!3 = !{i32 2, !"CJBC", i32 1}
!4 = !{i32 2, !"Cangjie_OPT", i32 0}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !8, producer: "Cangjie Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!8 = !DIFile(filename: "14-example", directory: ".")
!9 = !{i32 1, !"", !"example", !"example", !"example_example_14", !"example_example_15"}
!10 = distinct !DISubprogram(scope: !12, file: !11, type: !13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !14)
!11 = !DIFile(filename: "string.cj", directory: "std.core")
!12 = !DINamespace(name: "example", scope: null)
!13 = !DISubroutineType(types: !14)
!14 = !{}
!15 = !DILocation(line: 0, scope: !10, isImplicitCode: true)
!16 = distinct !DISubprogram(scope: !12, file: !17, line: 11, type: !13, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !14)
!17 = !DIFile(filename: "example.cj", directory: "/home/bernborgess/Documents/use-cjc")
!18 = !DILocation(line: 11, column: 36, scope: !16)
!19 = distinct !DISubprogram(scope: !12, file: !20, type: !13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !14)
!20 = !DIFile(filename: "", directory: "")
!21 = !{!"ExternalLinkage"}
!22 = !DILocation(line: 0, scope: !19, isImplicitCode: true)
