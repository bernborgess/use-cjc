; ModuleID = '13-example'
source_filename = "13-example"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%TypeInfo = type { i8*, i8, i8, i16, i32, %BitMap*, i32, i8, i8, i16, i32*, i8*, i8*, i8*, %TypeInfo*, %ExtensionDef**, i8*, i8* }
%BitMap = type { i32, [0 x i8] }
%ExtensionDef = type { i32, i8, i8, i16, i8*, i8*, i8*, i8* }
%"record.std.core:String" = type { i8 addrspace(1)*, i32, i32 }

@"$has_applied_pkg_init_func" = external global i1, !LinkageType !0 #0
@has_invoked_pkg_init_literal = external global i1, !LinkageType !0 #0
@Int64.ti = external global %TypeInfo, !RelatedType !1 #1

define void @"_CCN7example7getLineHvEL_E$i"(%"record.std.core:String"* noalias sret(%"record.std.core:String") %0, i8 addrspace(1)* %1, %TypeInfo* %outerTI) gc "cangjie" personality i32 (...)* @"__cj_personality_v0$" !dbg !9 !LinkageType !0 {
allocas:
  %2 = alloca %"record.std.core:String", align 8
  br label %bb0

bb0:                                              ; preds = %allocas
  %3 = bitcast %"record.std.core:String"* %2 to i8*
  call void @llvm.cj.memset.p0i8(i8* align 8 %3, i8 0, i64 16, i1 false)
  call void @_CN7example7getLineHvEL_E(%"record.std.core:String"* noalias sret(%"record.std.core:String") %2, i8 addrspace(1)* %1), !dbg !14
  %4 = bitcast %"record.std.core:String"* %0 to i8*
  %5 = bitcast %"record.std.core:String"* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 %5, i64 16, i1 false)
  ret void, !dbg !14
}

define private i32 @"__cj_personality_v0$"(...) {
entry:
  ret i32 0
}

declare !LinkageType !0 void @_CN7example7getLineHvEL_E(%"record.std.core:String"* noalias sret(%"record.std.core:String"), i8 addrspace(1)*) gc "cangjie"

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

define void @"_CCN7example7getListHvEL_E$g"(i8 addrspace(1)** noalias sret(i8 addrspace(1)*) %0, i8 addrspace(1)* %1, i8 addrspace(1)* %2, %TypeInfo* %outerTI) gc "cangjie" personality i32 (...)* @"__cj_personality_v0$" !dbg !15 !LinkageType !0 {
allocas:
  %3 = alloca %"record.std.core:String", align 8
  br label %bb0

bb0:                                              ; preds = %allocas
  %4 = bitcast i8 addrspace(1)* %2 to i8* addrspace(1)*, !dbg !16
  %ti.payload = getelementptr i8*, i8* addrspace(1)* %4, i32 1, !dbg !16
  %5 = bitcast i8* addrspace(1)* %ti.payload to %"record.std.core:String" addrspace(1)*, !dbg !16
  %6 = bitcast %"record.std.core:String"* %3 to i8*
  call void @llvm.cj.memset.p0i8(i8* align 8 %6, i8 0, i64 16, i1 false)
  %7 = bitcast %"record.std.core:String"* %3 to i8*, !dbg !16
  %8 = bitcast %"record.std.core:String" addrspace(1)* %5 to i8 addrspace(1)*, !dbg !16
  call void @llvm.cj.gcread.struct.i64(i8* %7, i8 addrspace(1)* %2, i8 addrspace(1)* %8, i64 16), !dbg !16, !AggType !17
  %9 = call i64 @_CN7example7getListHvEL_E(i8 addrspace(1)* %1, %"record.std.core:String"* %3), !dbg !16
  %10 = call noalias i8 addrspace(1)* @llvm.cj.malloc.object(i8* bitcast (%TypeInfo* @Int64.ti to i8*), i32 8), !dbg !16
  %11 = bitcast i8 addrspace(1)* %10 to i8* addrspace(1)*, !dbg !16
  %ti.payload1 = getelementptr i8*, i8* addrspace(1)* %11, i32 1, !dbg !16
  %12 = bitcast i8* addrspace(1)* %ti.payload1 to i64 addrspace(1)*, !dbg !16
  store i64 %9, i64 addrspace(1)* %12, align 8, !dbg !16
  br label %handle_store_non_ref

handle_store_non_ref:                             ; preds = %bb0
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %0, align 8
  call void @llvm.cj.assign.generic(i8 addrspace(1)* %13, i8 addrspace(1)* %10, i8* bitcast (%TypeInfo* @Int64.ti to i8*))
  br label %store_exit

store_exit:                                       ; preds = %handle_store_non_ref
  ret void, !dbg !16
}

; Function Attrs: argmemonly nounwind
declare void @llvm.cj.gcread.struct.i64(i8* writeonly, i8 addrspace(1)* noalias nocapture, i8 addrspace(1)* noalias nocapture readonly, i64) #3

declare !LinkageType !0 i64 @_CN7example7getListHvEL_E(i8 addrspace(1)*, %"record.std.core:String"* nocapture readonly) gc "cangjie"

declare noalias i8 addrspace(1)* @llvm.cj.malloc.object(i8*, i32)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.cj.assign.generic(i8 addrspace(1)* noalias nocapture, i8 addrspace(1)* noalias nocapture readonly, i8* noalias nocapture readonly) #4

; Function Attrs: noinline
define void @"_CGFatUduration$iiHv"() #5 gc "cangjie" personality i32 (...)* @"__cj_personality_v0$" !dbg !18 !LinkageType !0 {
bb0:
  ret void, !dbg !20
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: argmemonly nounwind writeonly
declare void @llvm.cj.memset.p0i8(i8* nocapture writeonly, i8, i64, i1) #7

attributes #0 = { "CJGlobalValue" }
attributes #1 = { "CFileKlass" "NotModifiableClass" }
attributes #2 = { argmemonly nocallback nofree nounwind willreturn }
attributes #3 = { argmemonly nounwind }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { noinline }
attributes #6 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly nounwind writeonly }

!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.dbg.cu = !{!6}
!pkg_info = !{!8}
!functions = !{}
!global_variables = !{}

!0 = !{!"InternalLinkage"}
!1 = !{!"Int64.Type"}
!2 = !{i32 2, !"CJBC", i32 1}
!3 = !{i32 2, !"Cangjie_OPT", i32 0}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 2, !"Dwarf Version", i32 4}
!6 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !7, producer: "Cangjie Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!7 = !DIFile(filename: "13-example", directory: ".")
!8 = !{i32 1, !"", !"example", !"example", !"example_example_13", !"example_example_14"}
!9 = distinct !DISubprogram(scope: !11, file: !10, line: 1, type: !12, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !13)
!10 = !DIFile(filename: "", directory: "")
!11 = !DINamespace(name: "example", scope: null)
!12 = !DISubroutineType(types: !13)
!13 = !{}
!14 = !DILocation(line: 0, scope: !9, isImplicitCode: true)
!15 = distinct !DISubprogram(scope: !11, file: !10, line: 1, type: !12, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !13)
!16 = !DILocation(line: 0, scope: !15, isImplicitCode: true)
!17 = !{!"record.std.core:String"}
!18 = distinct !DISubprogram(scope: !11, file: !19, type: !12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !13)
!19 = !DIFile(filename: "duration.cj", directory: "std.core")
!20 = !DILocation(line: 0, scope: !18, isImplicitCode: true)
