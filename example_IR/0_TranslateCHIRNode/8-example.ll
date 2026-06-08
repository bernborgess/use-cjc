; ModuleID = '8-example'
source_filename = "8-example"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%TypeInfo = type { i8*, i8, i8, i16, i32, %BitMap*, i32, i8, i8, i16, i32*, i8*, i8*, i8*, %TypeInfo*, %ExtensionDef**, i8*, i8* }
%BitMap = type { i32, [0 x i8] }
%ExtensionDef = type { i32, i8, i8, i16, i8*, i8*, i8*, i8* }
%"record.std.core:String" = type { i8 addrspace(1)*, i32, i32 }
%Unit.Type = type {}
%"record.std.core:Array<T>" = type { i8 addrspace(1)*, i64, i64 }

@"$has_applied_pkg_init_func" = external global i1, !LinkageType !0 #0
@has_invoked_pkg_init_literal = external global i1, !LinkageType !0 #0
@Int64.ti = external global %TypeInfo #1
@"std.core:Array<Int64>.ti" = external global %TypeInfo #1
@"$const_cjstring.ciQh56PO1Hn" = private constant %"record.std.core:String" #2
@Unit.Val = weak_odr global %Unit.Type undef #0

; Function Attrs: noinline
define i64 @"_CN7example6<main>Hv"() #3 gc "cangjie" personality i32 (...)* @"__cj_personality_v0$" !dbg !7 !LinkageType !12 {
allocas:
  %0 = alloca i64, align 8
  %list = alloca %"record.std.core:Array<T>", align 8
  %1 = alloca i8 addrspace(1)*, align 8
  %2 = alloca i8 addrspace(1)*, align 8
  %val.ov = alloca { i64, i1 }, align 8
  %3 = alloca i64, align 8
  %4 = alloca %Unit.Type, align 8
  br label %bb0

bb0:                                              ; preds = %allocas
  call void @_CN7example7getListHv(%"record.std.core:Array<T>"* noalias sret(%"record.std.core:Array<T>") %list), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, align 8, !dbg !14
  %5 = call i8 addrspace(1)* @llvm.cj.alloca.generic(i8* bitcast (%TypeInfo* @Int64.ti to i8*), i32 8)
  store i8 addrspace(1)* %5, i8 addrspace(1)** %1, align 8, !dbg !14
  call void @_CNat5ArrayIG_EixHl(i8 addrspace(1)** noalias sret(i8 addrspace(1)*) %1, %"record.std.core:Array<T>"* %list, i64 0, %TypeInfo* @"std.core:Array<Int64>.ti"), !dbg !14
  %6 = load i8 addrspace(1)*, i8 addrspace(1)** %1, align 8, !dbg !14
  %7 = bitcast i8 addrspace(1)* %6 to i8* addrspace(1)*, !dbg !14
  %ti.payload = getelementptr i8*, i8* addrspace(1)* %7, i32 1, !dbg !14
  %8 = bitcast i8* addrspace(1)* %ti.payload to i64 addrspace(1)*, !dbg !14
  %9 = load i64, i64 addrspace(1)* %8, align 8, !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, align 8, !dbg !15
  %10 = call i8 addrspace(1)* @llvm.cj.alloca.generic(i8* bitcast (%TypeInfo* @Int64.ti to i8*), i32 8)
  store i8 addrspace(1)* %10, i8 addrspace(1)** %2, align 8, !dbg !15
  call void @_CNat5ArrayIG_EixHl(i8 addrspace(1)** noalias sret(i8 addrspace(1)*) %2, %"record.std.core:Array<T>"* %list, i64 1, %TypeInfo* @"std.core:Array<Int64>.ti"), !dbg !15
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %2, align 8, !dbg !15
  %12 = bitcast i8 addrspace(1)* %11 to i8* addrspace(1)*, !dbg !15
  %ti.payload1 = getelementptr i8*, i8* addrspace(1)* %12, i32 1, !dbg !15
  %13 = bitcast i8* addrspace(1)* %ti.payload1 to i64 addrspace(1)*, !dbg !15
  %14 = load i64, i64 addrspace(1)* %13, align 8, !dbg !15
  %15 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %9, i64 %14), !dbg !14
  store { i64, i1 } %15, { i64, i1 }* %val.ov, align 8, !dbg !14
  %16 = getelementptr inbounds { i64, i1 }, { i64, i1 }* %val.ov, i32 0, i32 1, !dbg !14
  %17 = load i1, i1* %16, align 1, !dbg !14
  %18 = call i1 @llvm.expect.i1(i1 %17, i1 false), !dbg !14
  br i1 %18, label %overflow, label %normal, !dbg !14

normal:                                           ; preds = %bb0
  %19 = getelementptr inbounds { i64, i1 }, { i64, i1 }* %val.ov, i32 0, i32 0, !dbg !14
  %20 = load i64, i64* %19, align 8, !dbg !14
  store i64 %20, i64* %3, align 8, !dbg !14
  br label %end, !dbg !14

overflow:                                         ; preds = %bb0
  %21 = call i8 addrspace(1)* @"rt$CreateOverflowException_msg"(%"record.std.core:String"* @"$const_cjstring.ciQh56PO1Hn"), !dbg !14
  call void @llvm.cj.throw.exception(i8 addrspace(1)* %21), !dbg !14
  unreachable, !dbg !14

end:                                              ; preds = %normal
  %c = load i64, i64* %3, align 8, !dbg !14
  call void @_CNat7printlnHl(%Unit.Type* noalias sret(%Unit.Type) %4, i64 %c), !dbg !16
  store i64 0, i64* %0, align 8, !dbg !17
  %22 = load i64, i64* %0, align 8, !dbg !17
  ret i64 %22, !dbg !17
}

define private i32 @"__cj_personality_v0$"(...) {
entry:
  ret i32 0
}

declare !LinkageType !12 void @_CN7example7getListHv(%"record.std.core:Array<T>"* noalias sret(%"record.std.core:Array<T>")) gc "cangjie"

declare void @_CNat5ArrayIG_EixHl(i8 addrspace(1)** noalias sret(i8 addrspace(1)*), %"record.std.core:Array<T>"* nocapture readonly, i64, %TypeInfo*) gc "cangjie"

declare i8 addrspace(1)* @llvm.cj.alloca.generic(i8*, i32)

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #5

; Function Attrs: noinline
declare i8 addrspace(1)* @"rt$CreateOverflowException_msg"(%"record.std.core:String"* nocapture readonly) #3 gc "cangjie"

declare void @llvm.cj.throw.exception(i8 addrspace(1)*)

declare void @_CNat7printlnHl(%Unit.Type* noalias sret(%Unit.Type), i64) gc "cangjie"

attributes #0 = { "CJGlobalValue" }
attributes #1 = { "CFileKlass" "NotModifiableClass" }
attributes #2 = { "cjstring_literal" }
attributes #3 = { noinline }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }

!llvm.module.flags = !{!1, !2, !3, !4}
!llvm.dbg.cu = !{!5}

!0 = !{!"InternalLinkage"}
!1 = !{i32 2, !"CJBC", i32 1}
!2 = !{i32 2, !"Cangjie_OPT", i32 0}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 2, !"Dwarf Version", i32 4}
!5 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !6, producer: "Cangjie Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!6 = !DIFile(filename: "8-example", directory: ".")
!7 = distinct !DISubprogram(scope: !9, file: !8, line: 15, type: !10, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !11)
!8 = !DIFile(filename: "example.cj", directory: "/home/bernborgess/Documents/use-cjc")
!9 = !DINamespace(name: "example", scope: null)
!10 = !DISubroutineType(types: !11)
!11 = !{}
!12 = !{!"ExternalLinkage"}
!13 = !DILocation(line: 16, column: 16, scope: !7)
!14 = !DILocation(line: 17, column: 13, scope: !7)
!15 = !DILocation(line: 17, column: 23, scope: !7)
!16 = !DILocation(line: 18, column: 5, scope: !7)
!17 = !DILocation(line: 19, column: 5, scope: !7)
