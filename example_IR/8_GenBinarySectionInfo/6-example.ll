; ModuleID = '6-example'
source_filename = "6-example"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%TypeTemplate = type { i8*, i8, i8, i16, i16, i8*, i8*, i8*, i8*, %ExtensionDef**, i16 }
%ExtensionDef = type { i32, i8, i8, i16, i8*, i8*, i8*, i8* }
%"record.std.core:Array<T>" = type { i8 addrspace(1)*, i64, i64 }
%TypeInfo = type { i8*, i8, i8, i16, i32, %BitMap*, i32, i8, i8, i16, i32*, i8*, i8*, i8*, %TypeInfo*, %ExtensionDef**, i8*, i8* }
%BitMap = type { i32, [0 x i8] }
%"ObjLayout.Closure<(ccbase_p2_0,ccbase_p2_1)->ccbase_r2>" = type { i8*, i8* }

@Closure.tt = external global %TypeTemplate
@"$has_applied_pkg_init_func" = external global i1, !LinkageType !0 #0
@has_invoked_pkg_init_literal = external global i1, !LinkageType !0 #0

define i1 @_CNat5ArrayIlE7isLegalHll(%"record.std.core:Array<T>"* noalias nocapture readonly %this, i64 %start_, i64 %end_, %TypeInfo* %outerTI) gc "cangjie" personality i32 (...)* @"__cj_personality_v0$" !dbg !8 !LinkageType !0 {
allocas:
  %0 = alloca i1, align 1
  %1 = alloca i1, align 1
  %2 = alloca i1, align 1
  br label %bb0

bb0:                                              ; preds = %allocas
  %icmpsle = icmp sle i64 0, %start_, !dbg !13
  br i1 %icmpsle, label %bb2, label %bb3, !dbg !13

bb2:                                              ; preds = %bb0
  %icmpsle1 = icmp sle i64 %start_, %end_, !dbg !14
  store i1 %icmpsle1, i1* %1, align 1, !dbg !14
  br label %bb4, !dbg !13

bb4:                                              ; preds = %bb3, %bb2
  %3 = load i1, i1* %1, align 1, !dbg !13
  br i1 %3, label %bb5, label %bb6, !dbg !13

bb5:                                              ; preds = %bb4
  %4 = getelementptr inbounds %"record.std.core:Array<T>", %"record.std.core:Array<T>"* %this, i32 0, i32 2, !dbg !15
  %5 = load i64, i64* %4, align 8, !dbg !15
  %icmpsle2 = icmp sle i64 %end_, %5, !dbg !16
  store i1 %icmpsle2, i1* %2, align 1, !dbg !16
  br label %bb7, !dbg !13

bb7:                                              ; preds = %bb6, %bb5
  %6 = load i1, i1* %2, align 1, !dbg !13
  store i1 %6, i1* %0, align 1
  %7 = load i1, i1* %0, align 1, !dbg !13
  ret i1 %7, !dbg !13

bb6:                                              ; preds = %bb4
  store i1 false, i1* %2, align 1, !dbg !13
  br label %bb7, !dbg !13

bb3:                                              ; preds = %bb0
  store i1 false, i1* %1, align 1, !dbg !13
  br label %bb4, !dbg !13
}

define private i32 @"__cj_personality_v0$"(...) {
entry:
  ret i32 0
}

; Function Attrs: noinline optnone
define private void @"0_for_keeping_some_types"() #1 {
entry.unreachable:
  %0 = alloca %"ObjLayout.Closure<(ccbase_p2_0,ccbase_p2_1)->ccbase_r2>", align 8
  %1 = alloca %"record.std.core:Array<T>", align 8
  ret void
}

attributes #0 = { "CJGlobalValue" }
attributes #1 = { noinline optnone }

!llvm.module.flags = !{!1, !2, !3, !4}
!llvm.dbg.cu = !{!5}
!pkg_info = !{!7}
!functions = !{}
!global_variables = !{}

!0 = !{!"InternalLinkage"}
!1 = !{i32 2, !"CJBC", i32 1}
!2 = !{i32 2, !"Cangjie_OPT", i32 0}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 2, !"Dwarf Version", i32 4}
!5 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !6, producer: "Cangjie Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!6 = !DIFile(filename: "6-example", directory: ".")
!7 = !{i32 1, !"", !"example", !"example", !"example_example_6", !"example_example_7"}
!8 = distinct !DISubprogram(scope: !10, file: !9, line: 223, type: !11, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !12)
!9 = !DIFile(filename: "array.cj", directory: "std.core")
!10 = !DINamespace(name: "example", scope: null)
!11 = !DISubroutineType(types: !12)
!12 = !{}
!13 = !DILocation(line: 224, column: 9, scope: !8)
!14 = !DILocation(line: 224, column: 24, scope: !8)
!15 = !DILocation(line: 224, column: 50, scope: !8)
!16 = !DILocation(line: 224, column: 42, scope: !8)
