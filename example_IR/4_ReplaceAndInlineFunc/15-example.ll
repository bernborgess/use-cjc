; ModuleID = '15-example'
source_filename = "15-example"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%TypeInfo = type { i8*, i8, i8, i16, i32, %BitMap*, i32, i8, i8, i16, i32*, i8*, i8*, i8*, %TypeInfo*, %ExtensionDef**, i8*, i8* }
%BitMap = type { i32, [0 x i8] }
%ExtensionDef = type { i32, i8, i8, i16, i8*, i8*, i8*, i8* }
%"record.std.core:String" = type { i8 addrspace(1)*, i32, i32 }

@"$has_applied_pkg_init_func" = external global i1, !LinkageType !0 #0
@has_invoked_pkg_init_literal = global i1 false, align 8, !LinkageType !0, !GlobalVarType !1 #0
@"std.core:String.ti" = external global %TypeInfo, !RelatedType !2 #1

define void @"_CCN7example7getLineHvEL_E$g"(i8 addrspace(1)** noalias sret(i8 addrspace(1)*) %0, i8 addrspace(1)* %1, %TypeInfo* %outerTI) gc "cangjie" personality i32 (...)* @"__cj_personality_v0$" !dbg !9 !LinkageType !0 {
allocas:
  %2 = alloca %"record.std.core:String", align 8
  br label %bb0

bb0:                                              ; preds = %allocas
  %3 = bitcast %"record.std.core:String"* %2 to i8*
  call void @llvm.cj.memset.p0i8(i8* align 8 %3, i8 0, i64 16, i1 false)
  call void @_CN7example7getLineHvEL_E(%"record.std.core:String"* noalias sret(%"record.std.core:String") %2, i8 addrspace(1)* %1), !dbg !14
  %4 = call noalias i8 addrspace(1)* @llvm.cj.malloc.object(i8* bitcast (%TypeInfo* @"std.core:String.ti" to i8*), i32 16), !dbg !14
  %5 = bitcast i8 addrspace(1)* %4 to i8* addrspace(1)*, !dbg !14
  %ti.payload = getelementptr i8*, i8* addrspace(1)* %5, i32 1, !dbg !14
  %6 = bitcast i8* addrspace(1)* %ti.payload to %"record.std.core:String" addrspace(1)*, !dbg !14
  %7 = bitcast %"record.std.core:String" addrspace(1)* %6 to i8 addrspace(1)*, !dbg !14
  %8 = bitcast %"record.std.core:String"* %2 to i8*, !dbg !14
  call void @llvm.cj.gcwrite.struct.p0i8.i64(i8 addrspace(1)* %4, i8 addrspace(1)* %7, i8* %8, i64 16), !dbg !14, !AggType !2
  br label %handle_store_non_ref

handle_store_non_ref:                             ; preds = %bb0
  %9 = load i8 addrspace(1)*, i8 addrspace(1)** %0, align 8
  call void @llvm.cj.assign.generic(i8 addrspace(1)* %9, i8 addrspace(1)* %4, i8* bitcast (%TypeInfo* @"std.core:String.ti" to i8*))
  br label %store_exit

store_exit:                                       ; preds = %handle_store_non_ref
  ret void, !dbg !14
}

define private i32 @"__cj_personality_v0$"(...) {
entry:
  ret i32 0
}

declare !LinkageType !0 void @_CN7example7getLineHvEL_E(%"record.std.core:String"* noalias sret(%"record.std.core:String"), i8 addrspace(1)*) gc "cangjie"

declare noalias i8 addrspace(1)* @llvm.cj.malloc.object(i8*, i32)

; Function Attrs: argmemonly nounwind
declare void @llvm.cj.gcwrite.struct.p0i8.i64(i8 addrspace(1)*, i8 addrspace(1)* noalias nocapture writeonly, i8* noalias nocapture readonly, i64) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.cj.assign.generic(i8 addrspace(1)* noalias nocapture, i8 addrspace(1)* noalias nocapture readonly, i8* noalias nocapture readonly) #3

define i64 @"_CCN7example7getListHvEL_E$i"(i8 addrspace(1)* %0, %"record.std.core:String"* noalias nocapture readonly %1, %TypeInfo* %outerTI) gc "cangjie" personality i32 (...)* @"__cj_personality_v0$" !dbg !15 !LinkageType !0 {
allocas:
  %2 = alloca i64, align 8
  br label %bb0

bb0:                                              ; preds = %allocas
  %3 = call i64 @_CN7example7getListHvEL_E(i8 addrspace(1)* %0, %"record.std.core:String"* %1), !dbg !16
  store i64 %3, i64* %2, align 8
  %4 = load i64, i64* %2, align 8, !dbg !16
  ret i64 %4, !dbg !16
}

declare !LinkageType !0 i64 @_CN7example7getListHvEL_E(i8 addrspace(1)*, %"record.std.core:String"* nocapture readonly) gc "cangjie"

; Function Attrs: noinline
define void @_CGP7exampleflHv() #4 gc "cangjie" personality i32 (...)* @"__cj_personality_v0$" !dbg !17 !LinkageType !0 {
bb0:
  call void @_CGPaiilHv(), !dbg !18
  call void @_CGPatilHv(), !dbg !18
  call void @_CGPayilHv(), !dbg !18
  ret void, !dbg !18
}

declare void @_CGPaiilHv() gc "cangjie"

declare void @_CGPatilHv() gc "cangjie"

declare void @_CGPayilHv() gc "cangjie"

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: argmemonly nounwind writeonly
declare void @llvm.cj.memset.p0i8(i8* nocapture writeonly, i8, i64, i1) #6

attributes #0 = { "CJGlobalValue" }
attributes #1 = { "CFileKlass" "NotModifiableClass" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noinline }
attributes #5 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly nounwind writeonly }

!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.dbg.cu = !{!7}

!0 = !{!"InternalLinkage"}
!1 = !{!"b"}
!2 = !{!"record.std.core:String"}
!3 = !{i32 2, !"CJBC", i32 1}
!4 = !{i32 2, !"Cangjie_OPT", i32 0}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !8, producer: "Cangjie Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!8 = !DIFile(filename: "15-example", directory: ".")
!9 = distinct !DISubprogram(scope: !11, file: !10, line: 1, type: !12, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !13)
!10 = !DIFile(filename: "", directory: "")
!11 = !DINamespace(name: "example", scope: null)
!12 = !DISubroutineType(types: !13)
!13 = !{}
!14 = !DILocation(line: 0, scope: !9, isImplicitCode: true)
!15 = distinct !DISubprogram(scope: !11, file: !10, line: 1, type: !12, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !13)
!16 = !DILocation(line: 0, scope: !15, isImplicitCode: true)
!17 = distinct !DISubprogram(scope: !11, file: !10, type: !12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !13)
!18 = !DILocation(line: 0, scope: !17, isImplicitCode: true)
