; ModuleID = '12-example'
source_filename = "12-example"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%TypeInfo = type { i8*, i8, i8, i16, i32, %BitMap*, i32, i8, i8, i16, i32*, i8*, i8*, i8*, %TypeInfo*, %ExtensionDef**, i8*, i8* }
%BitMap = type { i32, [0 x i8] }
%ExtensionDef = type { i32, i8, i8, i16, i8*, i8*, i8*, i8* }
%"record.std.core:String" = type { i8 addrspace(1)*, i32, i32 }
%"enum.std.core:Option<std.core:String>" = type { i1, %"record.std.core:String" }

@"$has_applied_pkg_init_func" = external global i1, !LinkageType !0 #0
@has_invoked_pkg_init_literal = external global i1, !LinkageType !0 #0
@"example:$ClN7example7getLineHvEL_E$0.ti" = external global %TypeInfo #1
@"std.env:ConsoleReader.ti" = external global %TypeInfo #2
@"std.core:String.ti" = external global %TypeInfo #1
@"std.core:Option<std.core:String>.ti" = external global %TypeInfo #1
@"$const_cjstring.5k+AV0uhyFK" = private constant %"record.std.core:String" #3

define void @_CN7example7getLineHv(%"record.std.core:String"* noalias sret(%"record.std.core:String") %0) gc "cangjie" personality i32 (...)* @"__cj_personality_v0$" !dbg !7 !LinkageType !12 {
allocas:
  %1 = alloca %"enum.std.core:Option<std.core:String>", align 8
  %2 = alloca i8 addrspace(1)*, align 8
  %3 = alloca %"record.std.core:String", align 8
  br label %bb0

bb0:                                              ; preds = %allocas
  %4 = call noalias i8 addrspace(1)* @llvm.cj.malloc.object(i8* bitcast (%TypeInfo* @"example:$ClN7example7getLineHvEL_E$0.ti" to i8*), i32 16), !dbg !13
  %5 = bitcast i8 addrspace(1)* %4 to i8* addrspace(1)*, !dbg !13
  %ti.payload = getelementptr i8*, i8* addrspace(1)* %5, i32 1, !dbg !13
  %6 = getelementptr inbounds i8*, i8* addrspace(1)* %ti.payload, i32 0, !dbg !13
  store i8* bitcast (void (i8 addrspace(1)**, i8 addrspace(1)*, %TypeInfo*)* @"_CCN7example7getLineHvEL_E$g" to i8*), i8* addrspace(1)* %6, align 8, !dbg !13
  %7 = getelementptr inbounds i8*, i8* addrspace(1)* %ti.payload, i32 1, !dbg !13
  store i8* bitcast (void (%"record.std.core:String"*, i8 addrspace(1)*, %TypeInfo*)* @"_CCN7example7getLineHvEL_E$i" to i8*), i8* addrspace(1)* %7, align 8, !dbg !13
  %8 = call i8 addrspace(1)* @_CNay8getStdInHv(), !dbg !14
  call void @_CNay13ConsoleReader6readlnHv(%"enum.std.core:Option<std.core:String>"* noalias sret(%"enum.std.core:Option<std.core:String>") %1, i8 addrspace(1)* %8, %TypeInfo* @"std.env:ConsoleReader.ti"), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, align 8, !dbg !14
  %9 = call i8 addrspace(1)* @llvm.cj.alloca.generic(i8* bitcast (%TypeInfo* @"std.core:String.ti" to i8*), i32 16)
  store i8 addrspace(1)* %9, i8 addrspace(1)** %2, align 8, !dbg !14
  %10 = call i8 addrspace(1)* @llvm.cj.alloca.generic(i8* bitcast (%TypeInfo* @"std.core:Option<std.core:String>.ti" to i8*), i32 24)
  %11 = bitcast i8 addrspace(1)* %10 to i8* addrspace(1)*, !dbg !14
  %ti.payload1 = getelementptr i8*, i8* addrspace(1)* %11, i32 1, !dbg !14
  %12 = bitcast i8* addrspace(1)* %ti.payload1 to %"enum.std.core:Option<std.core:String>" addrspace(1)*, !dbg !14
  %13 = bitcast %"enum.std.core:Option<std.core:String>" addrspace(1)* %12 to i8 addrspace(1)*, !dbg !14
  %14 = bitcast %"enum.std.core:Option<std.core:String>"* %1 to i8*, !dbg !14
  call void @llvm.cj.gcwrite.struct.p0i8.i64(i8 addrspace(1)* %10, i8 addrspace(1)* %13, i8* %14, i64 24), !dbg !14, !AggType !15
  call void @_CNat6OptionIG_E12getOrDefaultHF0G_E(i8 addrspace(1)** noalias sret(i8 addrspace(1)*) %2, i8 addrspace(1)* %10, i8 addrspace(1)* %4, %TypeInfo* @"std.core:Option<std.core:String>.ti"), !dbg !14
  %15 = load i8 addrspace(1)*, i8 addrspace(1)** %2, align 8, !dbg !14
  %16 = bitcast i8 addrspace(1)* %15 to i8* addrspace(1)*, !dbg !14
  %ti.payload2 = getelementptr i8*, i8* addrspace(1)* %16, i32 1, !dbg !14
  %17 = bitcast i8* addrspace(1)* %ti.payload2 to %"record.std.core:String" addrspace(1)*, !dbg !14
  %18 = bitcast %"record.std.core:String"* %3 to i8*, !dbg !14
  %19 = bitcast %"record.std.core:String" addrspace(1)* %17 to i8 addrspace(1)*, !dbg !14
  call void @llvm.cj.gcread.struct.i64(i8* %18, i8 addrspace(1)* %15, i8 addrspace(1)* %19, i64 16), !dbg !14, !AggType !16
  %20 = bitcast %"record.std.core:String"* %0 to i8*
  %21 = bitcast %"record.std.core:String"* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 16, i1 false)
  ret void, !dbg !14
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
declare void @llvm.cj.gcwrite.struct.p0i8.i64(i8 addrspace(1)*, i8 addrspace(1)* noalias nocapture writeonly, i8* noalias nocapture readonly, i64) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.cj.gcread.struct.i64(i8* writeonly, i8 addrspace(1)* noalias nocapture, i8 addrspace(1)* noalias nocapture readonly, i64) #4

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

define void @_CN7example7getLineHvEL_E(%"record.std.core:String"* noalias sret(%"record.std.core:String") %0, i8 addrspace(1)* %1) #6 gc "cangjie" personality i32 (...)* @"__cj_personality_v0$" !dbg !17 !LinkageType !0 {
bb2:
  %2 = bitcast %"record.std.core:String"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 bitcast (%"record.std.core:String"* @"$const_cjstring.5k+AV0uhyFK" to i8*), i64 16, i1 false)
  ret void, !dbg !18
}

attributes #0 = { "CJGlobalValue" }
attributes #1 = { "CFileKlass" "NotModifiableClass" }
attributes #2 = { "CFileKlass" }
attributes #3 = { "cjstring_literal" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { argmemonly nocallback nofree nounwind willreturn }
attributes #6 = { "UsedByClosure" }

!llvm.module.flags = !{!1, !2, !3, !4}
!llvm.dbg.cu = !{!5}

!0 = !{!"InternalLinkage"}
!1 = !{i32 2, !"CJBC", i32 1}
!2 = !{i32 2, !"Cangjie_OPT", i32 0}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 2, !"Dwarf Version", i32 4}
!5 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !6, producer: "Cangjie Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!6 = !DIFile(filename: "12-example", directory: ".")
!7 = distinct !DISubprogram(scope: !9, file: !8, line: 6, type: !10, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !11)
!8 = !DIFile(filename: "example.cj", directory: "/home/bernborgess/Documents/use-cjc")
!9 = !DINamespace(name: "example", scope: null)
!10 = !DISubroutineType(types: !11)
!11 = !{}
!12 = !{!"ExternalLinkage"}
!13 = !DILocation(line: 0, scope: !7, isImplicitCode: true)
!14 = !DILocation(line: 7, column: 5, scope: !7)
!15 = !{!"enum.std.core:Option<std.core:String>"}
!16 = !{!"record.std.core:String"}
!17 = distinct !DISubprogram(scope: !9, file: !8, line: 7, type: !10, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !11)
!18 = !DILocation(line: 7, column: 42, scope: !17)
