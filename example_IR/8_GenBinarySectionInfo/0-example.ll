; ModuleID = '0-example'
source_filename = "0-example"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%TypeTemplate = type { i8*, i8, i8, i16, i16, i8*, i8*, i8*, i8*, %ExtensionDef**, i16 }
%ExtensionDef = type { i32, i8, i8, i16, i8*, i8*, i8*, i8* }
%Unit.Type = type {}
%TypeInfo = type { i8*, i8, i8, i16, i32, %BitMap*, i32, i8, i8, i16, i32*, i8*, i8*, i8*, %TypeInfo*, %ExtensionDef**, i8*, i8* }
%BitMap = type { i32, [0 x i8] }
%"record.std.core:String" = type { i8 addrspace(1)*, i32, i32 }
%struct._param = type { void (i8*)*, i8* }
%ArrayLayout.UInt8 = type { %ArrayBase, [0 x i8] }
%ArrayBase = type { i64 }
%"ObjLayout.Closure<()->ccbase_r0>" = type { i8*, i8* }
%"ObjLayout.std.core:Error" = type { %"record.std.core:String", i8 addrspace(1)*, %"record.std.core:Array<T>" }
%"record.std.core:Array<T>" = type { i8 addrspace(1)*, i64, i64 }
%"ObjLayout.std.core:Exception" = type { %"record.std.core:String", i8 addrspace(1)*, %"record.std.core:Array<T>", i8 addrspace(1)* }
%"ObjLayout.std.core:OutOfMemoryError" = type { %"record.std.core:String", i8 addrspace(1)*, %"record.std.core:Array<T>" }
%enum.OptionLike.Ref = type { i8 addrspace(1)*, [0 x i8] }

@Closure.tt = external global %TypeTemplate
@"$has_applied_pkg_init_func" = external global i1, !LinkageType !0 #0
@has_invoked_pkg_init_literal = external global i1, !LinkageType !0 #0
@Unit.Val = weak_odr global %Unit.Type undef #0
@cj.sdk.version = private global [27 x i8] c"1.1.0-alpha.20260608010034\00", align 1
@"std.core:OutOfMemoryError.ti" = external global %TypeInfo, !RelatedType !1 #1
@"$const_cjstring.eOeYIhisqu" = private constant %"record.std.core:String" { i8 addrspace(1)* addrspacecast (i8* bitcast ({ i8*, i64, [43 x i8] }* @"$const_cjstring_data.2Jy1zPkSpN0" to i8*) to i8 addrspace(1)*), i32 0, i32 26 } #2
@"$const_cjstring.5CeEPuGykeB" = private constant %"record.std.core:String" { i8 addrspace(1)* addrspacecast (i8* bitcast ({ i8*, i64, [43 x i8] }* @"$const_cjstring_data.2Jy1zPkSpN0" to i8*) to i8 addrspace(1)*), i32 26, i32 17 } #2
@"std.core:Error.ti" = external global %TypeInfo, !RelatedType !2 #3
@"std.core:Exception.ti" = external global %TypeInfo, !RelatedType !3 #3
@"RawArray<UInt8>.ti" = internal global %TypeInfo { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"RawArray<UInt8>.name", i32 0, i32 0), i8 -126, i8 0, i16 0, i32 0, %BitMap* null, i32 0, i8 0, i8 0, i16 -32768, i32* null, i8* bitcast (%TypeTemplate* @RawArray.tt to i8*), i8* null, i8* null, %TypeInfo* @UInt8.ti, %ExtensionDef** null, i8* null, i8* null }, !RelatedType !4 #1
@UInt8.ti = external global %TypeInfo, !RelatedType !5 #3
@"RawArray<UInt8>.name" = private unnamed_addr constant [16 x i8] c"RawArray<UInt8>\00", align 1 #4
@RawArray.tt = external global %TypeTemplate
@"$const_cjstring_data.2Jy1zPkSpN0" = private constant { i8*, i64, [43 x i8] } { i8* bitcast (%TypeInfo* @"RawArray<UInt8>.ti" to i8*), i64 43, [43 x i8] c"An exception has occurred:    Out of memory" } #5

; Function Attrs: noinline
define void @_CGP7exampleiiHv() #6 gc "cangjie" personality i32 (...)* @"__cj_personality_v0$" !dbg !14 !LinkageType !19 {
bb0:
  %0 = load i1, i1* @"$has_applied_pkg_init_func", align 1, !dbg !20
  br i1 %0, label %bb1, label %bb2, !dbg !20

bb1:                                              ; preds = %bb0
  ret void, !dbg !20

bb2:                                              ; preds = %bb0
  store i1 true, i1* @"$has_applied_pkg_init_func", align 1
  call void @_CGP7examplefiHv(), !dbg !20
  call void @llvm.cj.pre.initialize.package(i8* null), !dbg !20
  call void @_CGFatU00000003HBDsXiiHv(), !dbg !20
  call void @_CGFatU00000004oVJx9iiHv(), !dbg !20
  call void @"_CGFatUstring$iiHv"(), !dbg !20
  call void @"_CGFatUduration$iiHv"(), !dbg !20
  call void @_CGFatU000000017ij8giiHv(), !dbg !20
  ret void, !dbg !20
}

define private i32 @"__cj_personality_v0$"(...) {
entry:
  ret i32 0
}

; Function Attrs: noinline
declare !LinkageType !0 void @_CGP7examplefiHv() #6 gc "cangjie"

; Function Attrs: nounwind
declare void @llvm.cj.pre.initialize.package(i8*) #7

; Function Attrs: noinline
declare !LinkageType !0 void @_CGFatU00000003HBDsXiiHv() #6 gc "cangjie"

declare !LinkageType !0 void @_CGFatU00000004oVJx9iiHv() gc "cangjie"

; Function Attrs: noinline
declare !LinkageType !0 void @"_CGFatUstring$iiHv"() #6 gc "cangjie"

; Function Attrs: noinline
declare !LinkageType !0 void @"_CGFatUduration$iiHv"() #6 gc "cangjie"

declare !LinkageType !0 void @_CGFatU000000017ij8giiHv() gc "cangjie"

; Function Attrs: noinline
define void @_CGP7exampleilHv() #6 gc "cangjie" personality i32 (...)* @"__cj_personality_v0$" !dbg !21 !LinkageType !19 {
bb0:
  %0 = load i1, i1* @has_invoked_pkg_init_literal, align 1, !dbg !22
  br i1 %0, label %bb1, label %bb2, !dbg !22

bb1:                                              ; preds = %bb0
  ret void, !dbg !22

bb2:                                              ; preds = %bb0
  store i1 true, i1* @has_invoked_pkg_init_literal, align 1
  call void @_CGP7exampleflHv(), !dbg !22
  ret void, !dbg !22
}

; Function Attrs: noinline
declare !LinkageType !0 void @_CGP7exampleflHv() #6 gc "cangjie"

; Function Attrs: noinline
declare !LinkageType !19 i64 @user.main() #6 gc "cangjie"

define void @main(i32 %argc, i8** %argv) {
entry:
  call void @CJ_MRT_CjRuntimeInit()
  call void @CJ_MRT_SetCommandLineArgs(i32 %argc, i8** %argv)
  call void @CJ_MRT_CjRuntimeStart(i32 ()* @"cj_entry$")
  ret void
}

declare void @CJ_MRT_CjRuntimeInit()

declare void @CJ_MRT_SetCommandLineArgs(i32, i8**)

define i32 @"cj_entry$"() gc "cangjie" personality i32 (...)* @"__cj_personality_v0$" {
allocas:
  %0 = alloca %Unit.Type, align 8
  %1 = alloca %Unit.Type, align 8
  %2 = alloca %Unit.Type, align 8
  %3 = alloca %Unit.Type, align 8
  %4 = alloca %Unit.Type, align 8
  %5 = alloca %Unit.Type, align 8
  %6 = alloca %Unit.Type, align 8
  br label %entry

entry:                                            ; preds = %allocas
  call void @CJ_MCC_CheckThreadLocalDataOffset()
  invoke void @_CGP7exampleiiHv()
          to label %normalDest unwind label %unwindDest

normalDest:                                       ; preds = %entry
  %7 = invoke i64 @user.main()
          to label %normalDest1 unwind label %unwindDest

normalDest1:                                      ; preds = %normalDest
  invoke void @_CNat27CJ_CORE_ExecAtexitCallbacksHv(%Unit.Type* noalias sret(%Unit.Type) %0)
          to label %normalDest2 unwind label %unwindDest

normalDest2:                                      ; preds = %normalDest1
  %8 = icmp slt i64 %7, -2147483648
  %9 = icmp sgt i64 %7, 2147483647
  %10 = or i1 %8, %9
  br i1 %10, label %min.bb, label %check.over

min.bb:                                           ; preds = %normalDest2
  br i1 %8, label %check.over, label %max.bb

max.bb:                                           ; preds = %min.bb
  br label %check.over

check.over:                                       ; preds = %max.bb, %min.bb, %normalDest2
  %result = phi i64 [ %7, %normalDest2 ], [ -2147483648, %min.bb ], [ 2147483647, %max.bb ]
  %11 = trunc i64 %result to i32
  ret i32 %11

unwindDest:                                       ; preds = %normalDest1, %normalDest, %entry
  %12 = landingpad token
          catch i8* null
  %13 = call i8* @llvm.cj.get.exception.wrapper()
  %14 = call i8 addrspace(1)* @llvm.cj.post.throw.exception(i8* %13)
  %15 = bitcast i8 addrspace(1)* %14 to i8* addrspace(1)*
  %16 = load i8*, i8* addrspace(1)* %15, align 8
  %17 = call i1 @llvm.cj.is.subtype(i8* %16, i8* bitcast (%TypeInfo* @"std.core:OutOfMemoryError.ti" to i8*))
  br i1 %17, label %is.OOM, label %judge.Error

is.OOM:                                           ; preds = %unwindDest
  invoke void @_CNat8eprintlnHRNat6StringE(%Unit.Type* noalias sret(%Unit.Type) %1, %"record.std.core:String"* @"$const_cjstring.eOeYIhisqu")
          to label %normalDest3 unwind label %rethrow

normalDest3:                                      ; preds = %is.OOM
  invoke void @_CNat8eprintlnHRNat6StringE(%Unit.Type* noalias sret(%Unit.Type) %2, %"record.std.core:String"* @"$const_cjstring.5CeEPuGykeB")
          to label %normalDest4 unwind label %rethrow

normalDest4:                                      ; preds = %normalDest3
  br label %judge.end

judge.Error:                                      ; preds = %unwindDest
  %18 = bitcast i8 addrspace(1)* %14 to i8* addrspace(1)*
  %19 = load i8*, i8* addrspace(1)* %18, align 8
  %20 = call i1 @llvm.cj.is.subtype(i8* %19, i8* bitcast (%TypeInfo* @"std.core:Error.ti" to i8*))
  br i1 %20, label %is.Error, label %judge.Exception

is.Error:                                         ; preds = %judge.Error
  %21 = bitcast i8 addrspace(1)* %14 to %TypeInfo* addrspace(1)*
  %ti = load %TypeInfo*, %TypeInfo* addrspace(1)* %21, align 8, !invariant.load !18
  %22 = bitcast %TypeInfo* %ti to i8*
  %23 = call i8* @llvm.cj.get.vtable.func(i8* %22, i64 1, i64 2, i8* bitcast (%TypeInfo* @"std.core:Error.ti" to i8*)), !IntroType !23
  %24 = bitcast i8* %23 to void (%Unit.Type*, i8 addrspace(1)*)*
  invoke void %24(%Unit.Type* noalias sret(%Unit.Type) %3, i8 addrspace(1)* %14)
          to label %normalDest5 unwind label %rethrow

normalDest5:                                      ; preds = %is.Error
  br label %judge.end

judge.Exception:                                  ; preds = %judge.Error
  %25 = bitcast i8 addrspace(1)* %14 to i8* addrspace(1)*
  %26 = load i8*, i8* addrspace(1)* %25, align 8
  %27 = call i1 @llvm.cj.is.subtype(i8* %26, i8* bitcast (%TypeInfo* @"std.core:Exception.ti" to i8*))
  br i1 %27, label %is.Exception, label %judge.end

is.Exception:                                     ; preds = %judge.Exception
  invoke void @_CNat15handleExceptionHCNat9ExceptionE(%Unit.Type* noalias sret(%Unit.Type) %4, i8 addrspace(1)* %14)
          to label %normalDest6 unwind label %rethrow

normalDest6:                                      ; preds = %is.Exception
  br label %judge.end

judge.end:                                        ; preds = %normalDest6, %judge.Exception, %normalDest5, %normalDest4
  call void @_CNat27CJ_CORE_ExecAtexitCallbacksHv(%Unit.Type* noalias sret(%Unit.Type) %5)
  ret i32 1

rethrow:                                          ; preds = %is.Exception, %is.Error, %normalDest3, %is.OOM
  %28 = landingpad token
          catch i8* null
  call void @_CNat27CJ_CORE_ExecAtexitCallbacksHv(%Unit.Type* noalias sret(%Unit.Type) %6)
  ret i32 1
}

declare !LinkageType !19 void @CJ_MCC_CheckThreadLocalDataOffset()

declare void @_CNat27CJ_CORE_ExecAtexitCallbacksHv(%Unit.Type* noalias sret(%Unit.Type)) gc "cangjie"

; Function Attrs: nounwind
declare i8* @llvm.cj.get.exception.wrapper() #7

; Function Attrs: nounwind
declare i8 addrspace(1)* @llvm.cj.post.throw.exception(i8*) #7

; Function Attrs: nounwind readnone speculatable willreturn
declare i1 @llvm.cj.is.subtype(i8* nocapture, i8* nocapture) #8

declare void @_CNat8eprintlnHRNat6StringE(%Unit.Type* noalias sret(%Unit.Type), %"record.std.core:String"* nocapture readonly) gc "cangjie"

; Function Attrs: nounwind
declare i8* @llvm.cj.get.vtable.func(i8*, i64, i64, i8*) #7

declare void @_CNat15handleExceptionHCNat9ExceptionE(%Unit.Type* noalias sret(%Unit.Type), i8 addrspace(1)*) gc "cangjie"

declare void @CJ_MRT_CjRuntimeStart(i32 ()*)

; Function Attrs: noinline
define void @_CGP7exampleirHv(i8* %param) #6 gc "cangjie" personality i32 (...)* @"__cj_personality_v0$" !LinkageType !19 {
entry:
  call void @_CGP7exampleifHv()
  call void @_CGP7exampleilHv()
  call void @_CGP7exampleiiHv()
  %0 = bitcast i8* %param to %struct._param*
  %1 = getelementptr inbounds %struct._param, %struct._param* %0, i32 0, i32 0
  %2 = load void (i8*)*, void (i8*)** %1, align 8
  %3 = getelementptr inbounds %struct._param, %struct._param* %0, i32 0, i32 1
  %4 = load i8*, i8** %3, align 8
  call void @wrapper.F0uPuE(void (i8*)* %2, i8* %4)
  ret void
}

; Function Attrs: noinline
define void @_CGP7exampleifHv() #6 gc "cangjie" personality i32 (...)* @"__cj_personality_v0$" !LinkageType !19 {
entry:
  store i1 false, i1* @has_invoked_pkg_init_literal, align 1
  store i1 false, i1* @"$has_applied_pkg_init_func", align 1
  ret void
}

; Function Attrs: noinline
define private void @wrapper.F0uPuE(void (i8*)* %0, i8* %1) #9 {
entry:
  call void %0(i8* %1)
  ret void
}

; Function Attrs: noinline optnone
define private void @"0_for_keeping_some_types"() #10 {
entry.unreachable:
  %0 = alloca %ArrayLayout.UInt8, align 8
  %1 = alloca %"ObjLayout.Closure<()->ccbase_r0>", align 8
  %2 = alloca %"ObjLayout.std.core:Error", align 8
  %3 = alloca %"ObjLayout.std.core:Exception", align 8
  %4 = alloca %"ObjLayout.std.core:OutOfMemoryError", align 8
  %5 = alloca %enum.OptionLike.Ref, align 8
  %6 = alloca %"record.std.core:Array<T>", align 8
  %7 = alloca %"record.std.core:String", align 8
  ret void
}

attributes #0 = { "CJGlobalValue" }
attributes #1 = { "CFileKlass" }
attributes #2 = { "cjstring_literal" }
attributes #3 = { "CFileKlass" "NotModifiableClass" }
attributes #4 = { "CJTypeName" }
attributes #5 = { "cjstring_data" }
attributes #6 = { noinline }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone speculatable willreturn }
attributes #9 = { noinline "cj2c" }
attributes #10 = { noinline optnone }

!llvm.module.flags = !{!6, !7, !8, !9}
!llvm.dbg.cu = !{!10}
!pkg_init_func = !{!12}
!pkg_info = !{!13}
!functions = !{}
!global_variables = !{}

!0 = !{!"InternalLinkage"}
!1 = !{!"ObjLayout.std.core:OutOfMemoryError"}
!2 = !{!"ObjLayout.std.core:Error"}
!3 = !{!"ObjLayout.std.core:Exception"}
!4 = !{!"ArrayLayout.UInt8"}
!5 = !{!"UInt8.Type"}
!6 = !{i32 2, !"CJBC", i32 1}
!7 = !{i32 2, !"Cangjie_OPT", i32 0}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 2, !"Dwarf Version", i32 4}
!10 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !11, producer: "Cangjie Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!11 = !DIFile(filename: "0-example", directory: ".")
!12 = !{!"_CGP7exampleiiHv"}
!13 = !{i32 1, !"", !"example", !"example", !"example_example_0", !"example_example_1"}
!14 = distinct !DISubprogram(scope: !16, file: !15, type: !17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !18)
!15 = !DIFile(filename: "", directory: "")
!16 = !DINamespace(name: "example", scope: null)
!17 = !DISubroutineType(types: !18)
!18 = !{}
!19 = !{!"ExternalLinkage"}
!20 = !DILocation(line: 0, scope: !14, isImplicitCode: true)
!21 = distinct !DISubprogram(scope: !16, file: !15, type: !17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !18)
!22 = !DILocation(line: 0, scope: !21, isImplicitCode: true)
!23 = !{!"std.core:Error"}
