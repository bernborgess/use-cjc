; ModuleID = '13-example'
source_filename = "13-example"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%TypeInfo = type { i8*, i8, i8, i16, i32, %BitMap*, i32, i8, i8, i16, i32*, i8*, i8*, i8*, %TypeInfo*, %ExtensionDef**, i8*, i8* }
%BitMap = type { i32, [0 x i8] }
%ExtensionDef = type { i32, i8, i8, i16, i8*, i8*, i8*, i8* }
%"record.std.core:String" = type { i8 addrspace(1)*, i32, i32 }
%Int64.Type = type { i64 }
%"ObjLayout.Closure<()->ccbase_r0>" = type { i8*, i8* }
%"ObjLayout.Closure<(ccbase_p1_0)->ccbase_r1>" = type { i8*, i8* }
%"ObjLayout.example:$ClN7example7getLineHvEL_E$0" = type { i8*, i8* }
%"ObjLayout.example:$ClN7example7getListHvEL_E$0" = type { i8*, i8* }
%"record.std.core:Array<T>" = type { i8 addrspace(1)*, i64, i64 }

@Int64.ti = external global %TypeInfo, !RelatedType !0 #0

define void @"_CCN7example7getLineHvEL_E$i"(%"record.std.core:String"* noalias sret(%"record.std.core:String") %0, i8 addrspace(1)* %1, %TypeInfo* %outerTI) gc "cangjie" personality i32 (...)* @"__cj_personality_v0$" !dbg !8 {
allocas:
  %2 = alloca %"record.std.core:String", align 8
  br label %bb0

bb0:                                              ; preds = %allocas
  %3 = bitcast %"record.std.core:String"* %2 to i8*
  call void @llvm.cj.memset.p0i8(i8* align 8 %3, i8 0, i64 16, i1 false)
  call void @_CN7example7getLineHvEL_E(%"record.std.core:String"* noalias sret(%"record.std.core:String") %2, i8 addrspace(1)* %1), !dbg !13
  %4 = bitcast %"record.std.core:String"* %0 to i8*
  %5 = bitcast %"record.std.core:String"* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 %5, i64 16, i1 false)
  ret void, !dbg !13
}

define private i32 @"__cj_personality_v0$"(...) {
entry:
  ret i32 0
}

declare void @_CN7example7getLineHvEL_E(%"record.std.core:String"* noalias sret(%"record.std.core:String"), i8 addrspace(1)*) gc "cangjie"

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

define void @"_CCN7example7getListHvEL_E$g"(i8 addrspace(1)** noalias sret(i8 addrspace(1)*) %0, i8 addrspace(1)* %1, i8 addrspace(1)* %2, %TypeInfo* %outerTI) gc "cangjie" personality i32 (...)* @"__cj_personality_v0$" !dbg !14 {
allocas:
  %3 = alloca %"record.std.core:String", align 8
  br label %bb0

bb0:                                              ; preds = %allocas
  %4 = bitcast i8 addrspace(1)* %2 to i8* addrspace(1)*, !dbg !15
  %ti.payload = getelementptr i8*, i8* addrspace(1)* %4, i32 1, !dbg !15
  %5 = bitcast i8* addrspace(1)* %ti.payload to %"record.std.core:String" addrspace(1)*, !dbg !15
  %6 = bitcast %"record.std.core:String"* %3 to i8*
  call void @llvm.cj.memset.p0i8(i8* align 8 %6, i8 0, i64 16, i1 false)
  %7 = bitcast %"record.std.core:String"* %3 to i8*, !dbg !15
  %8 = bitcast %"record.std.core:String" addrspace(1)* %5 to i8 addrspace(1)*, !dbg !15
  call void @llvm.cj.gcread.struct.i64(i8* %7, i8 addrspace(1)* %2, i8 addrspace(1)* %8, i64 16), !dbg !15, !AggType !16
  %9 = call i64 @_CN7example7getListHvEL_E(i8 addrspace(1)* %1, %"record.std.core:String"* %3), !dbg !15
  %10 = call noalias i8 addrspace(1)* @llvm.cj.malloc.object(i8* bitcast (%TypeInfo* @Int64.ti to i8*), i32 8), !dbg !15
  %11 = bitcast i8 addrspace(1)* %10 to i8* addrspace(1)*, !dbg !15
  %ti.payload1 = getelementptr i8*, i8* addrspace(1)* %11, i32 1, !dbg !15
  %12 = bitcast i8* addrspace(1)* %ti.payload1 to i64 addrspace(1)*, !dbg !15
  store i64 %9, i64 addrspace(1)* %12, align 8, !dbg !15
  br label %handle_store_non_ref

handle_store_non_ref:                             ; preds = %bb0
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %0, align 8
  call void @llvm.cj.assign.generic(i8 addrspace(1)* %13, i8 addrspace(1)* %10, i8* bitcast (%TypeInfo* @Int64.ti to i8*))
  br label %store_exit

store_exit:                                       ; preds = %handle_store_non_ref
  ret void, !dbg !15
}

; Function Attrs: argmemonly nounwind
declare void @llvm.cj.gcread.struct.i64(i8* writeonly, i8 addrspace(1)* noalias nocapture, i8 addrspace(1)* noalias nocapture readonly, i64) #2

declare i64 @_CN7example7getListHvEL_E(i8 addrspace(1)*, %"record.std.core:String"* nocapture readonly) gc "cangjie"

declare noalias i8 addrspace(1)* @llvm.cj.malloc.object(i8*, i32)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.cj.assign.generic(i8 addrspace(1)* noalias nocapture, i8 addrspace(1)* noalias nocapture readonly, i8* noalias nocapture readonly) #3

; Function Attrs: noinline
define void @"_CGFatUduration$iiHv"() #4 gc "cangjie" personality i32 (...)* @"__cj_personality_v0$" !dbg !17 {
bb0:
  ret void, !dbg !19
}

; Function Attrs: argmemonly nounwind writeonly
declare void @llvm.cj.memset.p0i8(i8* nocapture writeonly, i8, i64, i1) #5

; Function Attrs: noinline optnone
define private void @"0_for_keeping_some_types"() #6 {
entry.unreachable:
  %0 = alloca %Int64.Type, align 8
  %1 = alloca %"ObjLayout.Closure<()->ccbase_r0>", align 8
  %2 = alloca %"ObjLayout.Closure<(ccbase_p1_0)->ccbase_r1>", align 8
  %3 = alloca %"ObjLayout.example:$ClN7example7getLineHvEL_E$0", align 8
  %4 = alloca %"ObjLayout.example:$ClN7example7getListHvEL_E$0", align 8
  %5 = alloca %"record.std.core:Array<T>", align 8
  %6 = alloca %"record.std.core:String", align 8
  ret void
}

attributes #0 = { "CFileKlass" "NotModifiableClass" }
attributes #1 = { argmemonly nocallback nofree nounwind willreturn }
attributes #2 = { argmemonly nounwind }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noinline }
attributes #5 = { argmemonly nounwind writeonly }
attributes #6 = { noinline optnone }

!llvm.module.flags = !{!1, !2, !3, !4}
!llvm.dbg.cu = !{!5}
!pkg_info = !{!7}
!functions = !{}
!global_variables = !{}

!0 = !{!"Int64.Type"}
!1 = !{i32 2, !"CJBC", i32 1}
!2 = !{i32 2, !"Cangjie_OPT", i32 0}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 2, !"Dwarf Version", i32 4}
!5 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !6, producer: "Cangjie Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!6 = !DIFile(filename: "13-example", directory: ".")
!7 = !{i32 1, !"", !"example", !"example", !"example_example_13", !"example_example_14"}
!8 = distinct !DISubprogram(scope: !10, file: !9, line: 1, type: !11, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !12)
!9 = !DIFile(filename: "", directory: "")
!10 = !DINamespace(name: "example", scope: null)
!11 = !DISubroutineType(types: !12)
!12 = !{}
!13 = !DILocation(line: 0, scope: !8, isImplicitCode: true)
!14 = distinct !DISubprogram(scope: !10, file: !9, line: 1, type: !11, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !12)
!15 = !DILocation(line: 0, scope: !14, isImplicitCode: true)
!16 = !{!"record.std.core:String"}
!17 = distinct !DISubprogram(scope: !10, file: !18, type: !11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !12)
!18 = !DIFile(filename: "duration.cj", directory: "std.core")
!19 = !DILocation(line: 0, scope: !17, isImplicitCode: true)
