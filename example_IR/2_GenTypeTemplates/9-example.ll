; ModuleID = '9-example'
source_filename = "9-example"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%TypeInfo = type { i8*, i8, i8, i16, i32, %BitMap*, i32, i8, i8, i16, i32*, i8*, i8*, i8*, %TypeInfo*, %ExtensionDef**, i8*, i8* }
%BitMap = type { i32, [0 x i8] }
%ExtensionDef = type { i32, i8, i8, i16, i8*, i8*, i8*, i8* }
%"record.std.core:String" = type { i8 addrspace(1)*, i32, i32 }
%"record.std.core:Array<T>" = type { i8 addrspace(1)*, i64, i64 }

@"std.core:Ordering.ti" = external global %TypeInfo #0
@"$has_applied_pkg_init_func" = external global i1, !LinkageType !0 #1
@has_invoked_pkg_init_literal = external global i1, !LinkageType !0 #1
@"example:$ClN7example7getListHvEL_E$0.ti" = external global %TypeInfo #0
@"$const_cjstring.fzBUmkrQ1TP" = private constant %"record.std.core:String" #2
@"std.core:String.ti" = external global %TypeInfo #0
@Int64.ti = external global %TypeInfo #0
@"std.core:Array<std.core:String>.ti" = external global %TypeInfo #0

define void @_CGFatU00000004oVJx9iiHv() gc "cangjie" personality i32 (...)* @"__cj_personality_v0$" !dbg !7 !LinkageType !0 {
bb0:
  ret void, !dbg !12
}

define private i32 @"__cj_personality_v0$"(...) {
entry:
  ret i32 0
}

define void @_CN7example7getListHv(%"record.std.core:Array<T>"* noalias sret(%"record.std.core:Array<T>") %0) gc "cangjie" personality i32 (...)* @"__cj_personality_v0$" !dbg !13 !LinkageType !15 {
allocas:
  %1 = alloca %"record.std.core:String", align 8
  %2 = alloca %"record.std.core:Array<T>", align 8
  %3 = alloca %"record.std.core:Array<T>", align 8
  br label %bb0

bb0:                                              ; preds = %allocas
  %4 = call noalias i8 addrspace(1)* @llvm.cj.malloc.object(i8* bitcast (%TypeInfo* @"example:$ClN7example7getListHvEL_E$0.ti" to i8*), i32 16), !dbg !16
  %5 = bitcast i8 addrspace(1)* %4 to i8* addrspace(1)*, !dbg !16
  %ti.payload = getelementptr i8*, i8* addrspace(1)* %5, i32 1, !dbg !16
  %6 = getelementptr inbounds i8*, i8* addrspace(1)* %ti.payload, i32 0, !dbg !16
  store i8* bitcast (void (i8 addrspace(1)**, i8 addrspace(1)*, i8 addrspace(1)*, %TypeInfo*)* @"_CCN7example7getListHvEL_E$g" to i8*), i8* addrspace(1)* %6, align 8, !dbg !16
  %7 = getelementptr inbounds i8*, i8* addrspace(1)* %ti.payload, i32 1, !dbg !16
  store i8* bitcast (i64 (i8 addrspace(1)*, %"record.std.core:String"*, %TypeInfo*)* @"_CCN7example7getListHvEL_E$i" to i8*), i8* addrspace(1)* %7, align 8, !dbg !16
  call void @_CN7example7getLineHv(%"record.std.core:String"* noalias sret(%"record.std.core:String") %1), !dbg !17
  %8 = call i1 @_CPIat6String5splitHRNatY0_EbE11removeEmptyHY3_(%"record.std.core:String"* %1, %"record.std.core:String"* @"$const_cjstring.fzBUmkrQ1TP", %TypeInfo* @"std.core:String.ti"), !dbg !17
  call void @_CNat6String5splitHRNatY0_Eb(%"record.std.core:Array<T>"* noalias sret(%"record.std.core:Array<T>") %2, %"record.std.core:String"* %1, %"record.std.core:String"* @"$const_cjstring.fzBUmkrQ1TP", i1 %8, %TypeInfo* @"std.core:String.ti"), !dbg !17
  call void @_CNat5ArrayIG_E3mapIG0_HF0G0_G_E(%"record.std.core:Array<T>"* noalias sret(%"record.std.core:Array<T>") %3, %"record.std.core:Array<T>"* %2, i8 addrspace(1)* %4, %TypeInfo* @Int64.ti, %TypeInfo* @"std.core:Array<std.core:String>.ti"), !dbg !17
  %9 = bitcast %"record.std.core:Array<T>"* %0 to i8*
  %10 = bitcast %"record.std.core:Array<T>"* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 24, i1 false)
  ret void, !dbg !17
}

declare noalias i8 addrspace(1)* @llvm.cj.malloc.object(i8*, i32)

declare !LinkageType !0 void @"_CCN7example7getListHvEL_E$g"(i8 addrspace(1)** noalias sret(i8 addrspace(1)*), i8 addrspace(1)*, i8 addrspace(1)*, %TypeInfo*) gc "cangjie"

declare !LinkageType !0 i64 @"_CCN7example7getListHvEL_E$i"(i8 addrspace(1)*, %"record.std.core:String"* nocapture readonly, %TypeInfo*) gc "cangjie"

declare !LinkageType !15 void @_CN7example7getLineHv(%"record.std.core:String"* noalias sret(%"record.std.core:String")) gc "cangjie"

declare i1 @_CPIat6String5splitHRNatY0_EbE11removeEmptyHY3_(%"record.std.core:String"* nocapture readonly, %"record.std.core:String"* nocapture readonly, %TypeInfo*) gc "cangjie"

declare void @_CNat6String5splitHRNatY0_Eb(%"record.std.core:Array<T>"* noalias sret(%"record.std.core:Array<T>"), %"record.std.core:String"* nocapture readonly, %"record.std.core:String"* nocapture readonly, i1, %TypeInfo*) gc "cangjie"

declare void @_CNat5ArrayIG_E3mapIG0_HF0G0_G_E(%"record.std.core:Array<T>"* noalias sret(%"record.std.core:Array<T>"), %"record.std.core:Array<T>"* nocapture readonly, i8 addrspace(1)*, %TypeInfo*, %TypeInfo*) gc "cangjie"

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { "CFileKlass" "NotModifiableClass" }
attributes #1 = { "CJGlobalValue" }
attributes #2 = { "cjstring_literal" }
attributes #3 = { argmemonly nocallback nofree nounwind willreturn }

!llvm.module.flags = !{!1, !2, !3, !4}
!llvm.dbg.cu = !{!5}

!0 = !{!"InternalLinkage"}
!1 = !{i32 2, !"CJBC", i32 1}
!2 = !{i32 2, !"Cangjie_OPT", i32 0}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 2, !"Dwarf Version", i32 4}
!5 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !6, producer: "Cangjie Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!6 = !DIFile(filename: "9-example", directory: ".")
!7 = distinct !DISubprogram(scope: !9, file: !8, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !11)
!8 = !DIFile(filename: "string_builder.cj", directory: "std.core")
!9 = !DINamespace(name: "example", scope: null)
!10 = !DISubroutineType(types: !11)
!11 = !{}
!12 = !DILocation(line: 0, scope: !7, isImplicitCode: true)
!13 = distinct !DISubprogram(scope: !9, file: !14, line: 10, type: !10, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !11)
!14 = !DIFile(filename: "example.cj", directory: "/home/bernborgess/Documents/use-cjc")
!15 = !{!"ExternalLinkage"}
!16 = !DILocation(line: 0, scope: !13, isImplicitCode: true)
!17 = !DILocation(line: 11, column: 5, scope: !13)
