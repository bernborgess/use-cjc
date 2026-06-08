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

@Closure.tt = external global %TypeTemplate
@"$has_applied_pkg_init_func" = external global i1, !LinkageType !0 #0
@has_invoked_pkg_init_literal = external global i1, !LinkageType !0 #0
@Unit.Val = weak_odr global %Unit.Type undef #0
@cj.sdk.version = private global [27 x i8] c"1.1.0-alpha.20260608010034\00", align 1
@"std.core:OutOfMemoryError.ti" = external global %TypeInfo, !RelatedType !1 #1
@"$const_cjstring.eOeYIhisqu" = private constant %"record.std.core:String" #2
@"$const_cjstring.5CeEPuGykeB" = private constant %"record.std.core:String" #2
@"std.core:Error.ti" = external global %TypeInfo, !RelatedType !2 #3
@"std.core:Exception.ti" = external global %TypeInfo, !RelatedType !3 #3

; Function Attrs: noinline
define void @_CGP7exampleiiHv() #4 gc "cangjie" personality i32 (...)* @"__cj_personality_v0$" !dbg !11 !LinkageType !16 {
bb0:
  %0 = load i1, i1* @"$has_applied_pkg_init_func", align 1, !dbg !17
  br i1 %0, label %bb1, label %bb2, !dbg !17

bb1:                                              ; preds = %bb0
  ret void, !dbg !17

bb2:                                              ; preds = %bb0
  store i1 true, i1* @"$has_applied_pkg_init_func", align 1
  call void @_CGP7examplefiHv(), !dbg !17
  call void @llvm.cj.pre.initialize.package(i8* null), !dbg !17
  call void @_CGFatU00000003HBDsXiiHv(), !dbg !17
  call void @_CGFatU00000004oVJx9iiHv(), !dbg !17
  call void @"_CGFatUstring$iiHv"(), !dbg !17
  call void @"_CGFatUduration$iiHv"(), !dbg !17
  call void @_CGFatU000000017ij8giiHv(), !dbg !17
  ret void, !dbg !17
}

define private i32 @"__cj_personality_v0$"(...) {
entry:
  ret i32 0
}

; Function Attrs: noinline
declare !LinkageType !0 void @_CGP7examplefiHv() #4 gc "cangjie"

; Function Attrs: nounwind
declare void @llvm.cj.pre.initialize.package(i8*) #5

; Function Attrs: noinline
declare !LinkageType !0 void @_CGFatU00000003HBDsXiiHv() #4 gc "cangjie"

declare !LinkageType !0 void @_CGFatU00000004oVJx9iiHv() gc "cangjie"

; Function Attrs: noinline
declare !LinkageType !0 void @"_CGFatUstring$iiHv"() #4 gc "cangjie"

; Function Attrs: noinline
declare !LinkageType !0 void @"_CGFatUduration$iiHv"() #4 gc "cangjie"

declare !LinkageType !0 void @_CGFatU000000017ij8giiHv() gc "cangjie"

; Function Attrs: noinline
define void @_CGP7exampleilHv() #4 gc "cangjie" personality i32 (...)* @"__cj_personality_v0$" !dbg !18 !LinkageType !16 {
bb0:
  %0 = load i1, i1* @has_invoked_pkg_init_literal, align 1, !dbg !19
  br i1 %0, label %bb1, label %bb2, !dbg !19

bb1:                                              ; preds = %bb0
  ret void, !dbg !19

bb2:                                              ; preds = %bb0
  store i1 true, i1* @has_invoked_pkg_init_literal, align 1
  call void @_CGP7exampleflHv(), !dbg !19
  ret void, !dbg !19
}

; Function Attrs: noinline
declare !LinkageType !0 void @_CGP7exampleflHv() #4 gc "cangjie"

; Function Attrs: noinline
declare !LinkageType !16 i64 @user.main() #4 gc "cangjie"

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
  %ti = load %TypeInfo*, %TypeInfo* addrspace(1)* %21, align 8, !invariant.load !15
  %22 = bitcast %TypeInfo* %ti to i8*
  %23 = call i8* @llvm.cj.get.vtable.func(i8* %22, i64 1, i64 2, i8* bitcast (%TypeInfo* @"std.core:Error.ti" to i8*)), !IntroType !20
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

declare !LinkageType !16 void @CJ_MCC_CheckThreadLocalDataOffset()

declare void @_CNat27CJ_CORE_ExecAtexitCallbacksHv(%Unit.Type* noalias sret(%Unit.Type)) gc "cangjie"

; Function Attrs: nounwind
declare i8* @llvm.cj.get.exception.wrapper() #5

; Function Attrs: nounwind
declare i8 addrspace(1)* @llvm.cj.post.throw.exception(i8*) #5

; Function Attrs: nounwind readnone speculatable willreturn
declare i1 @llvm.cj.is.subtype(i8* nocapture, i8* nocapture) #6

declare void @_CNat8eprintlnHRNat6StringE(%Unit.Type* noalias sret(%Unit.Type), %"record.std.core:String"* nocapture readonly) gc "cangjie"

; Function Attrs: nounwind
declare i8* @llvm.cj.get.vtable.func(i8*, i64, i64, i8*) #5

declare void @_CNat15handleExceptionHCNat9ExceptionE(%Unit.Type* noalias sret(%Unit.Type), i8 addrspace(1)*) gc "cangjie"

declare void @CJ_MRT_CjRuntimeStart(i32 ()*)

; Function Attrs: noinline
define void @_CGP7exampleirHv(i8* %param) #4 gc "cangjie" personality i32 (...)* @"__cj_personality_v0$" !LinkageType !16 {
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
define void @_CGP7exampleifHv() #4 gc "cangjie" personality i32 (...)* @"__cj_personality_v0$" !LinkageType !16 {
entry:
  store i1 false, i1* @has_invoked_pkg_init_literal, align 1
  store i1 false, i1* @"$has_applied_pkg_init_func", align 1
  ret void
}

; Function Attrs: noinline
define private void @wrapper.F0uPuE(void (i8*)* %0, i8* %1) #7 {
entry:
  call void %0(i8* %1)
  ret void
}

attributes #0 = { "CJGlobalValue" }
attributes #1 = { "CFileKlass" }
attributes #2 = { "cjstring_literal" }
attributes #3 = { "CFileKlass" "NotModifiableClass" }
attributes #4 = { noinline }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone speculatable willreturn }
attributes #7 = { noinline "cj2c" }

!llvm.module.flags = !{!4, !5, !6, !7}
!llvm.dbg.cu = !{!8}
!pkg_init_func = !{!10}

!0 = !{!"InternalLinkage"}
!1 = !{!"ObjLayout.std.core:OutOfMemoryError"}
!2 = !{!"ObjLayout.std.core:Error"}
!3 = !{!"ObjLayout.std.core:Exception"}
!4 = !{i32 2, !"CJBC", i32 1}
!5 = !{i32 2, !"Cangjie_OPT", i32 0}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 2, !"Dwarf Version", i32 4}
!8 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !9, producer: "Cangjie Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!9 = !DIFile(filename: "0-example", directory: ".")
!10 = !{!"_CGP7exampleiiHv"}
!11 = distinct !DISubprogram(scope: !13, file: !12, type: !14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !15)
!12 = !DIFile(filename: "", directory: "")
!13 = !DINamespace(name: "example", scope: null)
!14 = !DISubroutineType(types: !15)
!15 = !{}
!16 = !{!"ExternalLinkage"}
!17 = !DILocation(line: 0, scope: !11, isImplicitCode: true)
!18 = distinct !DISubprogram(scope: !13, file: !12, type: !14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !15)
!19 = !DILocation(line: 0, scope: !18, isImplicitCode: true)
!20 = !{!"std.core:Error"}
