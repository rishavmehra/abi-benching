; ModuleID = 'linked_module'
source_filename = "linked_module"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "bpfel"

@anon.65220270c62fdab1ad2eaba25fa44411.0 = internal unnamed_addr constant [13 x i8] c"program error", align 1, !guid !0
@switch.table._RNvCs694fCHi5Tq7_26program_result_abi_minimal21remaining_instruction = internal unnamed_addr constant [24 x i64] [i64 8589934592, i64 51539607552, i64 17179869184, i64 21474836480, i64 25769803776, i64 51539607552, i64 51539607552, i64 51539607552, i64 42949672960, i64 47244640256, i64 51539607552, i64 55834574848, i64 60129542144, i64 51539607552, i64 68719476736, i64 51539607552, i64 51539607552, i64 81604378624, i64 51539607552, i64 90194313216, i64 51539607552, i64 98784247808, i64 103079215104, i64 107374182400], align 8, !guid !1

; Function Attrs: nounwind
define dso_local noundef range(i64 0, 111669149697) i64 @entrypoint(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 !guid !3 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = load i64, ptr %2, align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4)
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %88, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %7 = load i8, ptr %6, align 1, !alias.scope !4, !noundef !7
  switch i8 %7, label %8 [
    i8 0, label %10
    i8 1, label %51
    i8 3, label %37
    i8 7, label %38
    i8 8, label %39
    i8 9, label %40
    i8 12, label %41
    i8 15, label %42
    i8 17, label %43
    i8 18, label %44
    i8 20, label %45
    i8 22, label %46
  ]

8:                                                ; preds = %5
  %9 = tail call fastcc i64 @_RNvCs694fCHi5Tq7_26program_result_abi_minimal21remaining_instruction(i8 noundef %7) #4, !noalias !4
  br label %47

10:                                               ; preds = %5
  %11 = icmp sgt i64 %3, 6
  br i1 %11, label %12, label %53

12:                                               ; preds = %10
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 17
  %14 = load i8, ptr %13, align 1, !alias.scope !8, !noundef !7
  %15 = icmp ult i8 %14, 2
  br i1 %15, label %16, label %53

16:                                               ; preds = %12
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 18
  %18 = load i8, ptr %17, align 1, !alias.scope !8, !noundef !7
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %53

20:                                               ; preds = %16
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 19
  %22 = load i8, ptr %21, align 1, !alias.scope !8, !noundef !7
  %23 = icmp eq i8 %22, 1
  br i1 %23, label %24, label %53

24:                                               ; preds = %20
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %26 = load i8, ptr %25, align 1, !alias.scope !8, !noundef !7
  %27 = icmp eq i8 %26, 1
  br i1 %27, label %28, label %53

28:                                               ; preds = %24
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 21
  %30 = load i8, ptr %29, align 1, !alias.scope !8, !noundef !7
  %31 = icmp eq i8 %30, 1
  br i1 %31, label %32, label %53

32:                                               ; preds = %28
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 22
  %34 = load i8, ptr %33, align 1, !alias.scope !8, !noundef !7
  %35 = icmp eq i8 %34, 0
  %36 = select i1 %35, i64 4294967295, i64 7
  br label %47

37:                                               ; preds = %5
  br label %51

38:                                               ; preds = %5
  br label %51

39:                                               ; preds = %5
  br label %51

40:                                               ; preds = %5
  br label %51

41:                                               ; preds = %5
  br label %51

42:                                               ; preds = %5
  br label %51

43:                                               ; preds = %5
  br label %51

44:                                               ; preds = %5
  br label %51

45:                                               ; preds = %5
  br label %51

46:                                               ; preds = %5
  br label %51

47:                                               ; preds = %32, %8
  %48 = phi i64 [ %9, %8 ], [ %36, %32 ]
  %49 = and i64 %48, 4294967295
  %50 = icmp eq i64 %49, 4294967295
  br i1 %50, label %88, label %53, !prof !11

51:                                               ; preds = %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %5
  %52 = phi i64 [ 1, %5 ], [ 20, %45 ], [ 18, %44 ], [ 17, %43 ], [ 15, %42 ], [ 12, %41 ], [ 9, %40 ], [ 8, %39 ], [ 7, %38 ], [ 3, %37 ], [ 22, %46 ]
  tail call void inttoptr (i64 544561597 to ptr)(ptr noundef nonnull @anon.65220270c62fdab1ad2eaba25fa44411.0, i64 noundef 13) #5
  br label %88

53:                                               ; preds = %47, %28, %24, %20, %16, %12, %10
  %54 = phi i64 [ %48, %47 ], [ 51539607552, %12 ], [ 25769803776, %16 ], [ 0, %20 ], [ 6, %24 ], [ 3, %28 ], [ 51539607552, %10 ]
  %55 = lshr i64 %54, 32
  tail call void inttoptr (i64 544561597 to ptr)(ptr noundef nonnull @anon.65220270c62fdab1ad2eaba25fa44411.0, i64 noundef 13) #5
  %56 = and i64 %54, 4294967295
  %57 = icmp eq i64 %56, 4294967295
  br i1 %57, label %88, label %58

58:                                               ; preds = %53
  %59 = trunc i64 %54 to i32
  switch i32 %59, label %60 [
    i32 0, label %61
    i32 1, label %88
    i32 2, label %63
    i32 3, label %64
    i32 4, label %65
    i32 5, label %66
    i32 6, label %67
    i32 7, label %68
    i32 8, label %69
    i32 9, label %70
    i32 10, label %71
    i32 11, label %72
    i32 12, label %73
    i32 13, label %74
    i32 14, label %75
    i32 15, label %76
    i32 16, label %77
    i32 17, label %78
    i32 18, label %79
    i32 19, label %80
    i32 20, label %81
    i32 21, label %82
    i32 22, label %83
    i32 23, label %84
    i32 24, label %85
    i32 25, label %86
  ]

60:                                               ; preds = %58
  unreachable

61:                                               ; preds = %58
  %62 = icmp eq i64 %55, 0
  br i1 %62, label %88, label %87

63:                                               ; preds = %58
  br label %88

64:                                               ; preds = %58
  br label %88

65:                                               ; preds = %58
  br label %88

66:                                               ; preds = %58
  br label %88

67:                                               ; preds = %58
  br label %88

68:                                               ; preds = %58
  br label %88

69:                                               ; preds = %58
  br label %88

70:                                               ; preds = %58
  br label %88

71:                                               ; preds = %58
  br label %88

72:                                               ; preds = %58
  br label %88

73:                                               ; preds = %58
  br label %88

74:                                               ; preds = %58
  br label %88

75:                                               ; preds = %58
  br label %88

76:                                               ; preds = %58
  br label %88

77:                                               ; preds = %58
  br label %88

78:                                               ; preds = %58
  br label %88

79:                                               ; preds = %58
  br label %88

80:                                               ; preds = %58
  br label %88

81:                                               ; preds = %58
  br label %88

82:                                               ; preds = %58
  br label %88

83:                                               ; preds = %58
  br label %88

84:                                               ; preds = %58
  br label %88

85:                                               ; preds = %58
  br label %88

86:                                               ; preds = %58
  br label %88

87:                                               ; preds = %61
  br label %88

88:                                               ; preds = %87, %86, %85, %84, %83, %82, %81, %80, %79, %78, %77, %76, %75, %74, %73, %72, %71, %70, %69, %68, %67, %66, %65, %64, %63, %61, %58, %53, %51, %47, %1
  %89 = phi i64 [ 0, %53 ], [ 8589934592, %58 ], [ 4294967296, %61 ], [ 111669149696, %86 ], [ 12884901888, %63 ], [ 17179869184, %64 ], [ 21474836480, %65 ], [ 25769803776, %66 ], [ 30064771072, %67 ], [ 34359738368, %68 ], [ 38654705664, %69 ], [ 42949672960, %70 ], [ 47244640256, %71 ], [ 51539607552, %72 ], [ 55834574848, %73 ], [ 60129542144, %74 ], [ 64424509440, %75 ], [ 68719476736, %76 ], [ 73014444032, %77 ], [ 77309411328, %78 ], [ 81604378624, %79 ], [ 85899345920, %80 ], [ 90194313216, %81 ], [ 94489280512, %82 ], [ 98784247808, %83 ], [ 103079215104, %84 ], [ 107374182400, %85 ], [ %55, %87 ], [ 12, %1 ], [ %52, %51 ], [ 0, %47 ]
  ret i64 %89
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none)
define internal fastcc range(i64 8589934592, 107374182401) i64 @_RNvCs694fCHi5Tq7_26program_result_abi_minimal21remaining_instruction(i8 noundef %0) unnamed_addr #2 !guid !12 {
  %2 = add i8 %0, -2
  %3 = icmp ult i8 %2, 24
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = zext nneg i8 %2 to i64
  %6 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvCs694fCHi5Tq7_26program_result_abi_minimal21remaining_instruction, i64 %5
  %7 = load i64, ptr %6, align 8
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i64 [ 51539607552, %1 ], [ %7, %4 ]
  ret i64 %9
}

; Function Attrs: nounwind
define weak hidden noundef ptr @memcpy(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #3 !guid !13 {
  %4 = icmp ugt i64 %2, 15
  br i1 %4, label %5, label %11

5:                                                ; preds = %3
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 0, %6
  %8 = and i64 %7, 7
  %9 = getelementptr i8, ptr %0, i64 %8
  %10 = icmp ult ptr %0, %9
  br i1 %10, label %.preheader9, label %.loopexit10

11:                                               ; preds = %.loopexit6, %3
  %12 = phi i64 [ %40, %.loopexit6 ], [ %2, %3 ]
  %13 = phi ptr [ %39, %.loopexit6 ], [ %1, %3 ]
  %14 = phi ptr [ %23, %.loopexit6 ], [ %0, %3 ]
  %15 = getelementptr i8, ptr %14, i64 %12
  %16 = icmp ult ptr %14, %15
  br i1 %16, label %.preheader, label %.loopexit

.loopexit10:                                      ; preds = %.preheader9, %5
  %17 = getelementptr i8, ptr %1, i64 %8
  %18 = sub nuw i64 %2, %8
  %19 = and i64 %18, -8
  %20 = ptrtoint ptr %17 to i64
  %21 = and i64 %20, 7
  %22 = icmp eq i64 %21, 0
  %23 = getelementptr i8, ptr %9, i64 %19
  %24 = icmp ult ptr %9, %23
  br i1 %22, label %31, label %32

.preheader9:                                      ; preds = %5, %.preheader9
  %25 = phi ptr [ %28, %.preheader9 ], [ %0, %5 ]
  %26 = phi ptr [ %29, %.preheader9 ], [ %1, %5 ]
  %27 = load i8, ptr %26, align 1, !noundef !7
  store i8 %27, ptr %25, align 1
  %28 = getelementptr i8, ptr %25, i64 1
  %29 = getelementptr i8, ptr %26, i64 1
  %30 = icmp ult ptr %28, %9
  br i1 %30, label %.preheader9, label %.loopexit10

31:                                               ; preds = %.loopexit10
  br i1 %24, label %.preheader5, label %.loopexit6

32:                                               ; preds = %.loopexit10
  br i1 %24, label %.preheader7, label %.loopexit6

.preheader5:                                      ; preds = %31, %.preheader5
  %33 = phi ptr [ %36, %.preheader5 ], [ %9, %31 ]
  %34 = phi ptr [ %37, %.preheader5 ], [ %17, %31 ]
  %35 = load i64, ptr %34, align 8, !noundef !7
  store i64 %35, ptr %33, align 8
  %36 = getelementptr i8, ptr %33, i64 8
  %37 = getelementptr i8, ptr %34, i64 8
  %38 = icmp ult ptr %36, %23
  br i1 %38, label %.preheader5, label %.loopexit6

.loopexit6:                                       ; preds = %.preheader7, %.preheader5, %32, %31
  %39 = getelementptr i8, ptr %17, i64 %19
  %40 = and i64 %18, 7
  br label %11

.preheader7:                                      ; preds = %32, %.preheader7
  %41 = phi ptr [ %44, %.preheader7 ], [ %9, %32 ]
  %42 = phi ptr [ %45, %.preheader7 ], [ %17, %32 ]
  %43 = load i64, ptr %42, align 1
  store i64 %43, ptr %41, align 8
  %44 = getelementptr i8, ptr %41, i64 8
  %45 = getelementptr i8, ptr %42, i64 8
  %46 = icmp ult ptr %44, %23
  br i1 %46, label %.preheader7, label %.loopexit6

.preheader:                                       ; preds = %11, %.preheader
  %47 = phi ptr [ %50, %.preheader ], [ %14, %11 ]
  %48 = phi ptr [ %51, %.preheader ], [ %13, %11 ]
  %49 = load i8, ptr %48, align 1, !noundef !7
  store i8 %49, ptr %47, align 1
  %50 = getelementptr i8, ptr %47, i64 1
  %51 = getelementptr i8, ptr %48, i64 1
  %52 = icmp ult ptr %50, %15
  br i1 %52, label %.preheader, label %.loopexit

.loopexit:                                        ; preds = %.preheader, %11
  ret ptr %0
}

; Function Attrs: nounwind
define weak hidden noundef ptr @memset(ptr noundef %0, i32 noundef %1, i64 noundef %2) unnamed_addr #3 !guid !14 {
  %4 = trunc i32 %1 to i8
  %5 = icmp ugt i64 %2, 15
  br i1 %5, label %6, label %12

6:                                                ; preds = %3
  %7 = ptrtoint ptr %0 to i64
  %8 = sub i64 0, %7
  %9 = and i64 %8, 7
  %10 = getelementptr i8, ptr %0, i64 %9
  %11 = icmp ult ptr %0, %10
  br i1 %11, label %.preheader6, label %.loopexit7

12:                                               ; preds = %.loopexit5, %3
  %13 = phi i64 [ %28, %.loopexit5 ], [ %2, %3 ]
  %14 = phi ptr [ %23, %.loopexit5 ], [ %0, %3 ]
  %15 = getelementptr i8, ptr %14, i64 %13
  %16 = icmp ult ptr %14, %15
  br i1 %16, label %.preheader, label %.loopexit

.loopexit7:                                       ; preds = %.preheader6, %6
  %17 = and i32 %1, 255
  %18 = mul nuw i32 %17, 16843009
  %19 = zext i32 %18 to i64
  %20 = mul nuw i64 %19, 4294967297
  %21 = sub nuw i64 %2, %9
  %22 = and i64 %21, -8
  %23 = getelementptr i8, ptr %10, i64 %22
  %24 = icmp ult ptr %10, %23
  br i1 %24, label %.preheader4, label %.loopexit5

.preheader4:                                      ; preds = %.loopexit7, %.preheader4
  %25 = phi ptr [ %26, %.preheader4 ], [ %10, %.loopexit7 ]
  store i64 %20, ptr %25, align 8
  %26 = getelementptr i8, ptr %25, i64 8
  %27 = icmp ult ptr %26, %23
  br i1 %27, label %.preheader4, label %.loopexit5

.loopexit5:                                       ; preds = %.preheader4, %.loopexit7
  %28 = and i64 %21, 7
  br label %12

.preheader6:                                      ; preds = %6, %.preheader6
  %29 = phi ptr [ %30, %.preheader6 ], [ %0, %6 ]
  store i8 %4, ptr %29, align 1
  %30 = getelementptr i8, ptr %29, i64 1
  %31 = icmp ult ptr %30, %10
  br i1 %31, label %.preheader6, label %.loopexit7

.preheader:                                       ; preds = %12, %.preheader
  %32 = phi ptr [ %33, %.preheader ], [ %14, %12 ]
  store i8 %4, ptr %32, align 1
  %33 = getelementptr i8, ptr %32, i64 1
  %34 = icmp ult ptr %33, %15
  br i1 %34, label %.preheader, label %.loopexit

.loopexit:                                        ; preds = %.preheader, %12
  ret ptr %0
}

; Function Attrs: nounwind
define weak hidden noundef i32 @memcmp(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 !guid !15 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %.loopexit, label %.preheader

5:                                                ; preds = %.preheader
  %6 = add nuw i64 %8, 1
  %7 = icmp ult i64 %6, %2
  br i1 %7, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %3, %5
  %8 = phi i64 [ %6, %5 ], [ 0, %3 ]
  %9 = getelementptr i8, ptr %0, i64 %8
  %10 = load i8, ptr %9, align 1, !noundef !7
  %11 = getelementptr i8, ptr %1, i64 %8
  %12 = load i8, ptr %11, align 1, !noundef !7
  %13 = icmp eq i8 %10, %12
  br i1 %13, label %5, label %15

.loopexit:                                        ; preds = %5, %15, %3
  %14 = phi i32 [ %18, %15 ], [ 0, %3 ], [ 0, %5 ]
  ret i32 %14

15:                                               ; preds = %.preheader
  %16 = zext i8 %10 to i32
  %17 = zext i8 %12 to i32
  %18 = sub nsw i32 %16, %17
  br label %.loopexit
}

; Function Attrs: nounwind
define weak hidden noundef i32 @bcmp(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #3 !guid !16 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %.loopexit, label %.preheader

5:                                                ; preds = %.preheader
  %6 = add nuw i64 %8, 1
  %7 = icmp ult i64 %6, %2
  br i1 %7, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %3, %5
  %8 = phi i64 [ %6, %5 ], [ 0, %3 ]
  %9 = getelementptr i8, ptr %0, i64 %8
  %10 = load i8, ptr %9, align 1, !noundef !7
  %11 = getelementptr i8, ptr %1, i64 %8
  %12 = load i8, ptr %11, align 1, !noundef !7
  %13 = icmp eq i8 %10, %12
  br i1 %13, label %5, label %15

.loopexit:                                        ; preds = %5, %15, %3
  %14 = phi i32 [ %18, %15 ], [ 0, %3 ], [ 0, %5 ]
  ret i32 %14

15:                                               ; preds = %.preheader
  %16 = zext i8 %10 to i32
  %17 = zext i8 %12 to i32
  %18 = sub nsw i32 %16, %17
  br label %.loopexit
}

; Function Attrs: nounwind
define weak hidden noundef ptr @memmove(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #3 !guid !17 {
  %4 = ptrtoint ptr %0 to i64
  %5 = ptrtoint ptr %1 to i64
  %6 = sub i64 %4, %5
  %7 = icmp ult i64 %6, %2
  br i1 %7, label %8, label %62

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i64 %2
  %10 = getelementptr i8, ptr %1, i64 %2
  %11 = icmp ugt i64 %2, 15
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = ptrtoint ptr %9 to i64
  %14 = and i64 %13, 7
  %15 = sub nsw i64 0, %14
  %16 = getelementptr i8, ptr %9, i64 %15
  %17 = icmp ult ptr %16, %9
  br i1 %17, label %.preheader12.i, label %.loopexit13.i

18:                                               ; preds = %.loopexit9.i, %8
  %19 = phi ptr [ %32, %.loopexit9.i ], [ %9, %8 ]
  %20 = phi ptr [ %54, %.loopexit9.i ], [ %10, %8 ]
  %21 = phi i64 [ %55, %.loopexit9.i ], [ %2, %8 ]
  %22 = sub nsw i64 0, %21
  %23 = getelementptr i8, ptr %19, i64 %22
  %24 = icmp ult ptr %23, %19
  br i1 %24, label %.preheader.i, label %_RNvNtCs2DZVCmNqM39_17compiler_builtins3mem7memmove.exit

.loopexit13.i:                                    ; preds = %.preheader12.i, %12
  %25 = getelementptr i8, ptr %10, i64 %15
  %26 = sub nuw i64 %2, %14
  %27 = and i64 %26, -8
  %28 = ptrtoint ptr %25 to i64
  %29 = and i64 %28, 7
  %30 = icmp eq i64 %29, 0
  %31 = sub i64 0, %27
  %32 = getelementptr i8, ptr %16, i64 %31
  %33 = icmp ult ptr %32, %16
  br i1 %30, label %40, label %41

.preheader12.i:                                   ; preds = %12, %.preheader12.i
  %34 = phi ptr [ %36, %.preheader12.i ], [ %9, %12 ]
  %35 = phi ptr [ %37, %.preheader12.i ], [ %10, %12 ]
  %36 = getelementptr i8, ptr %34, i64 -1
  %37 = getelementptr i8, ptr %35, i64 -1
  %38 = load i8, ptr %37, align 1, !noundef !7
  store i8 %38, ptr %36, align 1
  %39 = icmp ult ptr %16, %36
  br i1 %39, label %.preheader12.i, label %.loopexit13.i

40:                                               ; preds = %.loopexit13.i
  br i1 %33, label %.preheader8.i, label %.loopexit9.i

41:                                               ; preds = %.loopexit13.i
  br i1 %33, label %.preheader10.i, label %.loopexit9.i

.preheader10.i:                                   ; preds = %41, %.preheader10.i
  %42 = phi ptr [ %44, %.preheader10.i ], [ %16, %41 ]
  %43 = phi ptr [ %45, %.preheader10.i ], [ %25, %41 ]
  %44 = getelementptr i8, ptr %42, i64 -8
  %45 = getelementptr i8, ptr %43, i64 -8
  %46 = load i64, ptr %45, align 1
  store i64 %46, ptr %44, align 8
  %47 = icmp ult ptr %32, %44
  br i1 %47, label %.preheader10.i, label %.loopexit9.i

.preheader8.i:                                    ; preds = %40, %.preheader8.i
  %48 = phi ptr [ %50, %.preheader8.i ], [ %16, %40 ]
  %49 = phi ptr [ %51, %.preheader8.i ], [ %25, %40 ]
  %50 = getelementptr i8, ptr %48, i64 -8
  %51 = getelementptr i8, ptr %49, i64 -8
  %52 = load i64, ptr %51, align 8, !noundef !7
  store i64 %52, ptr %50, align 8
  %53 = icmp ult ptr %32, %50
  br i1 %53, label %.preheader8.i, label %.loopexit9.i

.loopexit9.i:                                     ; preds = %.preheader10.i, %.preheader8.i, %41, %40
  %54 = getelementptr i8, ptr %25, i64 %31
  %55 = and i64 %26, 7
  br label %18

.preheader.i:                                     ; preds = %18, %.preheader.i
  %56 = phi ptr [ %59, %.preheader.i ], [ %20, %18 ]
  %57 = phi ptr [ %58, %.preheader.i ], [ %19, %18 ]
  %58 = getelementptr i8, ptr %57, i64 -1
  %59 = getelementptr i8, ptr %56, i64 -1
  %60 = load i8, ptr %59, align 1, !noundef !7
  store i8 %60, ptr %58, align 1
  %61 = icmp ult ptr %23, %58
  br i1 %61, label %.preheader.i, label %_RNvNtCs2DZVCmNqM39_17compiler_builtins3mem7memmove.exit

62:                                               ; preds = %3
  %63 = icmp ugt i64 %2, 15
  br i1 %63, label %64, label %69

64:                                               ; preds = %62
  %65 = sub i64 0, %4
  %66 = and i64 %65, 7
  %67 = getelementptr i8, ptr %0, i64 %66
  %68 = icmp ult ptr %0, %67
  br i1 %68, label %.preheader20.i, label %.loopexit21.i

69:                                               ; preds = %.loopexit17.i, %62
  %70 = phi i64 [ %98, %.loopexit17.i ], [ %2, %62 ]
  %71 = phi ptr [ %97, %.loopexit17.i ], [ %1, %62 ]
  %72 = phi ptr [ %81, %.loopexit17.i ], [ %0, %62 ]
  %73 = getelementptr i8, ptr %72, i64 %70
  %74 = icmp ult ptr %72, %73
  br i1 %74, label %.preheader14.i, label %_RNvNtCs2DZVCmNqM39_17compiler_builtins3mem7memmove.exit

.loopexit21.i:                                    ; preds = %.preheader20.i, %64
  %75 = getelementptr i8, ptr %1, i64 %66
  %76 = sub nuw i64 %2, %66
  %77 = and i64 %76, -8
  %78 = ptrtoint ptr %75 to i64
  %79 = and i64 %78, 7
  %80 = icmp eq i64 %79, 0
  %81 = getelementptr i8, ptr %67, i64 %77
  %82 = icmp ult ptr %67, %81
  br i1 %80, label %89, label %90

.preheader20.i:                                   ; preds = %64, %.preheader20.i
  %83 = phi ptr [ %86, %.preheader20.i ], [ %0, %64 ]
  %84 = phi ptr [ %87, %.preheader20.i ], [ %1, %64 ]
  %85 = load i8, ptr %84, align 1, !noundef !7
  store i8 %85, ptr %83, align 1
  %86 = getelementptr i8, ptr %83, i64 1
  %87 = getelementptr i8, ptr %84, i64 1
  %88 = icmp ult ptr %86, %67
  br i1 %88, label %.preheader20.i, label %.loopexit21.i

89:                                               ; preds = %.loopexit21.i
  br i1 %82, label %.preheader16.i, label %.loopexit17.i

90:                                               ; preds = %.loopexit21.i
  br i1 %82, label %.preheader18.i, label %.loopexit17.i

.preheader16.i:                                   ; preds = %89, %.preheader16.i
  %91 = phi ptr [ %94, %.preheader16.i ], [ %67, %89 ]
  %92 = phi ptr [ %95, %.preheader16.i ], [ %75, %89 ]
  %93 = load i64, ptr %92, align 8, !noundef !7
  store i64 %93, ptr %91, align 8
  %94 = getelementptr i8, ptr %91, i64 8
  %95 = getelementptr i8, ptr %92, i64 8
  %96 = icmp ult ptr %94, %81
  br i1 %96, label %.preheader16.i, label %.loopexit17.i

.loopexit17.i:                                    ; preds = %.preheader18.i, %.preheader16.i, %90, %89
  %97 = getelementptr i8, ptr %75, i64 %77
  %98 = and i64 %76, 7
  br label %69

.preheader18.i:                                   ; preds = %90, %.preheader18.i
  %99 = phi ptr [ %102, %.preheader18.i ], [ %67, %90 ]
  %100 = phi ptr [ %103, %.preheader18.i ], [ %75, %90 ]
  %101 = load i64, ptr %100, align 1
  store i64 %101, ptr %99, align 8
  %102 = getelementptr i8, ptr %99, i64 8
  %103 = getelementptr i8, ptr %100, i64 8
  %104 = icmp ult ptr %102, %81
  br i1 %104, label %.preheader18.i, label %.loopexit17.i

.preheader14.i:                                   ; preds = %69, %.preheader14.i
  %105 = phi ptr [ %108, %.preheader14.i ], [ %72, %69 ]
  %106 = phi ptr [ %109, %.preheader14.i ], [ %71, %69 ]
  %107 = load i8, ptr %106, align 1, !noundef !7
  store i8 %107, ptr %105, align 1
  %108 = getelementptr i8, ptr %105, i64 1
  %109 = getelementptr i8, ptr %106, i64 1
  %110 = icmp ult ptr %108, %73
  br i1 %110, label %.preheader14.i, label %_RNvNtCs2DZVCmNqM39_17compiler_builtins3mem7memmove.exit

_RNvNtCs2DZVCmNqM39_17compiler_builtins3mem7memmove.exit: ; preds = %.preheader14.i, %.preheader.i, %18, %69
  ret ptr %0
}

attributes #0 = { nounwind "target-cpu"="v4" "target-features"="+allows-misaligned-mem-access" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) "target-cpu"="v4" "target-features"="+allows-misaligned-mem-access" }
attributes #3 = { nounwind "no-builtins" "target-cpu"="v4" "target-features"="+allows-misaligned-mem-access" }
attributes #4 = { noinline nounwind }
attributes #5 = { nounwind }

!llvm.ident = !{!2}

!0 = !{i64 8268557144258066880}
!1 = !{i64 -6356183606120917172}
!2 = !{!"rustc version 1.100.0-nightly (e71c0f1e3 2026-08-18)"}
!3 = !{i64 -7939022165058540050}
!4 = !{!5}
!5 = distinct !{!5, !6, !"_RNvCs694fCHi5Tq7_26program_result_abi_minimal19process_instruction: argument 0"}
!6 = distinct !{!6, !"_RNvCs694fCHi5Tq7_26program_result_abi_minimal19process_instruction"}
!7 = !{}
!8 = !{!9, !5}
!9 = distinct !{!9, !10, !"_RNvCs694fCHi5Tq7_26program_result_abi_minimal12success_path: argument 0"}
!10 = distinct !{!10, !"_RNvCs694fCHi5Tq7_26program_result_abi_minimal12success_path"}
!11 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!12 = !{i64 -1691914524486186625}
!13 = !{i64 3893303423671325810}
!14 = !{i64 -2741574704065975695}
!15 = !{i64 -4679550853048924350}
!16 = !{i64 8597674443648877653}
!17 = !{i64 -306081897096246147}
