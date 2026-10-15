###### Class androidx.constraintlayout.motion.widget.j (androidx.constraintlayout.motion.widget.j)
.class public Landroidx/constraintlayout/motion/widget/j;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "MotionLayout.java"

# interfaces
.implements Landroidx/core/view/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/j$d;,
        Landroidx/constraintlayout/motion/widget/j$c;,
        Landroidx/constraintlayout/motion/widget/j$e;
    }
.end annotation


# static fields
.field public static L0:Z


# instance fields
.field private A0:Lq/c;

.field private B0:Z

.field private C0:Landroidx/constraintlayout/motion/widget/j$c;

.field private D0:Ljava/lang/Runnable;

.field private E0:[I

.field F0:I

.field private G0:I

.field private H0:Z

.field I0:Landroidx/constraintlayout/motion/widget/j$e;

.field private J0:Z

.field K0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field M:Landroidx/constraintlayout/motion/widget/l;

.field N:Landroid/view/animation/Interpolator;

.field O:Landroid/view/animation/Interpolator;

.field P:F

.field private Q:I

.field R:I

.field private S:I

.field private T:Z

.field U:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Landroidx/constraintlayout/motion/widget/g;",
            ">;"
        }
    .end annotation
.end field

.field private V:J

.field private W:F

.field a0:F

.field b0:F

.field private c0:J

.field d0:F

.field private e0:Z

.field f0:Z

.field private g0:Landroidx/constraintlayout/motion/widget/j$d;

.field h0:I

.field private i0:Z

.field private j0:Lu/b;

.field private k0:Landroidx/constraintlayout/motion/widget/b;

.field l0:Z

.field m0:F

.field n0:F

.field o0:J

.field p0:F

.field private q0:Z

.field private r0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/h;",
            ">;"
        }
    .end annotation
.end field

.field private s0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/h;",
            ">;"
        }
    .end annotation
.end field

.field private t0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/h;",
            ">;"
        }
    .end annotation
.end field

.field private u0:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/constraintlayout/motion/widget/j$d;",
            ">;"
        }
    .end annotation
.end field

.field private v0:I

.field private w0:F

.field x0:Z

.field protected y0:Z

.field z0:F


# direct methods
.method static synthetic B(Landroidx/constraintlayout/motion/widget/j;)Landroidx/constraintlayout/motion/widget/j$c;
    .registers 1

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/j;->C0:Landroidx/constraintlayout/motion/widget/j$c;

    return-object p0
.end method

.method static synthetic C(Landroidx/constraintlayout/motion/widget/j;)I
    .registers 1

    .line 1
    iget p0, p0, Landroidx/constraintlayout/motion/widget/j;->S:I

    return p0
.end method

.method static synthetic D(Landroidx/constraintlayout/motion/widget/j;)I
    .registers 1

    .line 1
    iget p0, p0, Landroidx/constraintlayout/motion/widget/j;->Q:I

    return p0
.end method

.method private G()V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/j;->g0:Landroidx/constraintlayout/motion/widget/j$d;

    if-nez v0, :cond_e

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/j;->u0:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_76

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_76

    .line 2
    :cond_e
    iget v0, p0, Landroidx/constraintlayout/motion/widget/j;->w0:F

    iget v1, p0, Landroidx/constraintlayout/motion/widget/j;->a0:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_76

    .line 3
    iget v0, p0, Landroidx/constraintlayout/motion/widget/j;->v0:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_45

    .line 4
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/j;->g0:Landroidx/constraintlayout/motion/widget/j$d;

    if-eqz v0, :cond_27

    .line 5
    iget v3, p0, Landroidx/constraintlayout/motion/widget/j;->Q:I

    iget v4, p0, Landroidx/constraintlayout/motion/widget/j;->S:I

    invoke-interface {v0, p0, v3, v4}, Landroidx/constraintlayout/motion/widget/j$d;->b(Landroidx/constraintlayout/motion/widget/j;II)V

    .line 6
    :cond_27
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/j;->u0:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_43

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/widget/j$d;

    .line 8
    iget v4, p0, Landroidx/constraintlayout/motion/widget/j;->Q:I

    iget v5, p0, Landroidx/constraintlayout/motion/widget/j;->S:I

    invoke-interface {v3, p0, v4, v5}, Landroidx/constraintlayout/motion/widget/j$d;->b(Landroidx/constraintlayout/motion/widget/j;II)V

    goto :goto_2f

    .line 9
    :cond_43
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/j;->x0:Z

    .line 10
    :cond_45
    iput v2, p0, Landroidx/constraintlayout/motion/widget/j;->v0:I

    .line 11
    iget v0, p0, Landroidx/constraintlayout/motion/widget/j;->a0:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/j;->w0:F

    .line 12
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/j;->g0:Landroidx/constraintlayout/motion/widget/j$d;

    if-eqz v2, :cond_56

    .line 13
    iget v3, p0, Landroidx/constraintlayout/motion/widget/j;->Q:I

    iget v4, p0, Landroidx/constraintlayout/motion/widget/j;->S:I

    invoke-interface {v2, p0, v3, v4, v0}, Landroidx/constraintlayout/motion/widget/j$d;->a(Landroidx/constraintlayout/motion/widget/j;IIF)V

    .line 14
    :cond_56
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/j;->u0:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_74

    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_74

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/j$d;

    .line 16
    iget v3, p0, Landroidx/constraintlayout/motion/widget/j;->Q:I

    iget v4, p0, Landroidx/constraintlayout/motion/widget/j;->S:I

    iget v5, p0, Landroidx/constraintlayout/motion/widget/j;->a0:F

    invoke-interface {v2, p0, v3, v4, v5}, Landroidx/constraintlayout/motion/widget/j$d;->a(Landroidx/constraintlayout/motion/widget/j;IIF)V

    goto :goto_5e

    .line 17
    :cond_74
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/j;->x0:Z

    :cond_76
    return-void
.end method

.method private J()V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/j;->g0:Landroidx/constraintlayout/motion/widget/j$d;

    if-nez v0, :cond_f

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/j;->u0:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    return-void

    :cond_f
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/j;->x0:Z

    .line 3
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/j;->K0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 4
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/j;->g0:Landroidx/constraintlayout/motion/widget/j$d;

    if-eqz v2, :cond_2f

    .line 5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, p0, v3}, Landroidx/constraintlayout/motion/widget/j$d;->c(Landroidx/constraintlayout/motion/widget/j;I)V

    .line 6
    :cond_2f
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/j;->u0:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_18

    .line 7
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/widget/j$d;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, p0, v4}, Landroidx/constraintlayout/motion/widget/j$d;->c(Landroidx/constraintlayout/motion/widget/j;I)V

    goto :goto_37

    .line 9
    :cond_4b
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/j;->K0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method


# virtual methods
.method E(F)V
    .registers 2

    return-void
.end method

.method F(Z)V
    .registers 24

    move-object/from16 v0, p0

    .line 1
    iget-wide v1, v0, Landroidx/constraintlayout/motion/widget/j;->c0:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_10

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/j;->getNanoTime()J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/constraintlayout/motion/widget/j;->c0:J

    .line 3
    :cond_10
    iget v1, v0, Landroidx/constraintlayout/motion/widget/j;->b0:F

    const/4 v2, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    cmpl-float v5, v1, v4

    if-lez v5, :cond_20

    cmpg-float v5, v1, v3

    if-gez v5, :cond_20

    .line 4
    iput v2, v0, Landroidx/constraintlayout/motion/widget/j;->R:I

    .line 5
    :cond_20
    iget-boolean v5, v0, Landroidx/constraintlayout/motion/widget/j;->q0:Z

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v5, :cond_32

    iget-boolean v5, v0, Landroidx/constraintlayout/motion/widget/j;->f0:Z

    if-eqz v5, :cond_211

    if-nez p1, :cond_32

    iget v5, v0, Landroidx/constraintlayout/motion/widget/j;->d0:F

    cmpl-float v5, v5, v1

    if-eqz v5, :cond_211

    .line 6
    :cond_32
    iget v5, v0, Landroidx/constraintlayout/motion/widget/j;->d0:F

    sub-float/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v1

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/j;->getNanoTime()J

    move-result-wide v8

    .line 8
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/j;->N:Landroid/view/animation/Interpolator;

    instance-of v10, v5, Landroidx/constraintlayout/motion/widget/i;

    const v11, 0x3089705f    # 1.0E-9f

    if-nez v10, :cond_53

    .line 9
    iget-wide v12, v0, Landroidx/constraintlayout/motion/widget/j;->c0:J

    sub-long v12, v8, v12

    long-to-float v10, v12

    mul-float v10, v10, v1

    mul-float v10, v10, v11

    iget v12, v0, Landroidx/constraintlayout/motion/widget/j;->W:F

    div-float/2addr v10, v12

    goto :goto_54

    :cond_53
    const/4 v10, 0x0

    .line 10
    :goto_54
    iget v12, v0, Landroidx/constraintlayout/motion/widget/j;->b0:F

    add-float/2addr v12, v10

    .line 11
    iget-boolean v13, v0, Landroidx/constraintlayout/motion/widget/j;->e0:Z

    if-eqz v13, :cond_5d

    .line 12
    iget v12, v0, Landroidx/constraintlayout/motion/widget/j;->d0:F

    :cond_5d
    cmpl-float v13, v1, v4

    if-lez v13, :cond_67

    .line 13
    iget v13, v0, Landroidx/constraintlayout/motion/widget/j;->d0:F

    cmpl-float v13, v12, v13

    if-gez v13, :cond_71

    :cond_67
    cmpg-float v13, v1, v4

    if-gtz v13, :cond_77

    iget v13, v0, Landroidx/constraintlayout/motion/widget/j;->d0:F

    cmpg-float v13, v12, v13

    if-gtz v13, :cond_77

    .line 14
    :cond_71
    iget v12, v0, Landroidx/constraintlayout/motion/widget/j;->d0:F

    .line 15
    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/j;->f0:Z

    const/4 v13, 0x1

    goto :goto_78

    :cond_77
    const/4 v13, 0x0

    .line 16
    :goto_78
    iput v12, v0, Landroidx/constraintlayout/motion/widget/j;->b0:F

    .line 17
    iput v12, v0, Landroidx/constraintlayout/motion/widget/j;->a0:F

    .line 18
    iput-wide v8, v0, Landroidx/constraintlayout/motion/widget/j;->c0:J

    const v14, 0x3727c5ac    # 1.0E-5f

    const/4 v15, 0x0

    if-eqz v5, :cond_f2

    if-nez v13, :cond_f2

    .line 19
    iget-boolean v13, v0, Landroidx/constraintlayout/motion/widget/j;->i0:Z

    if-eqz v13, :cond_d2

    .line 20
    iget-wide v12, v0, Landroidx/constraintlayout/motion/widget/j;->V:J

    sub-long v12, v8, v12

    long-to-float v10, v12

    mul-float v10, v10, v11

    .line 21
    invoke-interface {v5, v10}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    .line 22
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/j;->N:Landroid/view/animation/Interpolator;

    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/j;->j0:Lu/b;

    if-eq v10, v11, :cond_d1

    .line 23
    iput v5, v0, Landroidx/constraintlayout/motion/widget/j;->b0:F

    .line 24
    iput-wide v8, v0, Landroidx/constraintlayout/motion/widget/j;->c0:J

    .line 25
    instance-of v8, v10, Landroidx/constraintlayout/motion/widget/i;

    if-eqz v8, :cond_f0

    .line 26
    check-cast v10, Landroidx/constraintlayout/motion/widget/i;

    invoke-virtual {v10}, Landroidx/constraintlayout/motion/widget/i;->a()F

    move-result v8

    .line 27
    iput v8, v0, Landroidx/constraintlayout/motion/widget/j;->P:F

    .line 28
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, v0, Landroidx/constraintlayout/motion/widget/j;->W:F

    mul-float v9, v9, v10

    cmpg-float v9, v9, v14

    cmpl-float v9, v8, v4

    if-lez v9, :cond_c3

    cmpl-float v9, v5, v3

    if-ltz v9, :cond_c3

    .line 29
    iput v3, v0, Landroidx/constraintlayout/motion/widget/j;->b0:F

    .line 30
    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/j;->f0:Z

    const/high16 v5, 0x3f800000    # 1.0f

    :cond_c3
    cmpg-float v8, v8, v4

    if-gez v8, :cond_f0

    cmpg-float v8, v5, v4

    if-gtz v8, :cond_f0

    .line 31
    iput v4, v0, Landroidx/constraintlayout/motion/widget/j;->b0:F

    .line 32
    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/j;->f0:Z

    const/4 v12, 0x0

    goto :goto_f4

    .line 33
    :cond_d1
    throw v15

    .line 34
    :cond_d2
    invoke-interface {v5, v12}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    .line 35
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/j;->N:Landroid/view/animation/Interpolator;

    instance-of v9, v8, Landroidx/constraintlayout/motion/widget/i;

    if-eqz v9, :cond_e5

    .line 36
    check-cast v8, Landroidx/constraintlayout/motion/widget/i;

    invoke-virtual {v8}, Landroidx/constraintlayout/motion/widget/i;->a()F

    move-result v8

    iput v8, v0, Landroidx/constraintlayout/motion/widget/j;->P:F

    goto :goto_f0

    :cond_e5
    add-float/2addr v12, v10

    .line 37
    invoke-interface {v8, v12}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v8

    sub-float/2addr v8, v5

    mul-float v8, v8, v1

    div-float/2addr v8, v10

    .line 38
    iput v8, v0, Landroidx/constraintlayout/motion/widget/j;->P:F

    :cond_f0
    :goto_f0
    move v12, v5

    goto :goto_f4

    .line 39
    :cond_f2
    iput v10, v0, Landroidx/constraintlayout/motion/widget/j;->P:F

    .line 40
    :goto_f4
    iget v5, v0, Landroidx/constraintlayout/motion/widget/j;->P:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v14

    if-lez v5, :cond_103

    .line 41
    sget-object v5, Landroidx/constraintlayout/motion/widget/j$e;->q:Landroidx/constraintlayout/motion/widget/j$e;

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/motion/widget/j;->setState(Landroidx/constraintlayout/motion/widget/j$e;)V

    :cond_103
    cmpl-float v5, v1, v4

    if-lez v5, :cond_10d

    .line 42
    iget v5, v0, Landroidx/constraintlayout/motion/widget/j;->d0:F

    cmpl-float v5, v12, v5

    if-gez v5, :cond_117

    :cond_10d
    cmpg-float v5, v1, v4

    if-gtz v5, :cond_11b

    iget v5, v0, Landroidx/constraintlayout/motion/widget/j;->d0:F

    cmpg-float v5, v12, v5

    if-gtz v5, :cond_11b

    .line 43
    :cond_117
    iget v12, v0, Landroidx/constraintlayout/motion/widget/j;->d0:F

    .line 44
    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/j;->f0:Z

    :cond_11b
    cmpl-float v5, v12, v3

    if-gez v5, :cond_123

    cmpg-float v5, v12, v4

    if-gtz v5, :cond_12a

    .line 45
    :cond_123
    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/j;->f0:Z

    .line 46
    sget-object v5, Landroidx/constraintlayout/motion/widget/j$e;->r:Landroidx/constraintlayout/motion/widget/j$e;

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/motion/widget/j;->setState(Landroidx/constraintlayout/motion/widget/j$e;)V

    .line 47
    :cond_12a
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 48
    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/j;->q0:Z

    .line 49
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/j;->getNanoTime()J

    move-result-wide v8

    .line 50
    iput v12, v0, Landroidx/constraintlayout/motion/widget/j;->z0:F

    .line 51
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/j;->O:Landroid/view/animation/Interpolator;

    if-nez v10, :cond_13c

    move v10, v12

    goto :goto_140

    :cond_13c
    invoke-interface {v10, v12}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v10

    .line 52
    :goto_140
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/j;->O:Landroid/view/animation/Interpolator;

    if-eqz v11, :cond_158

    .line 53
    iget v13, v0, Landroidx/constraintlayout/motion/widget/j;->W:F

    div-float v13, v1, v13

    add-float/2addr v13, v12

    invoke-interface {v11, v13}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v11

    iput v11, v0, Landroidx/constraintlayout/motion/widget/j;->P:F

    .line 54
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/j;->O:Landroid/view/animation/Interpolator;

    invoke-interface {v13, v12}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v13

    sub-float/2addr v11, v13

    iput v11, v0, Landroidx/constraintlayout/motion/widget/j;->P:F

    :cond_158
    const/4 v11, 0x0

    :goto_159
    if-ge v11, v5, :cond_182

    .line 55
    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 56
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/j;->U:Ljava/util/HashMap;

    invoke-virtual {v14, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v16, v14

    check-cast v16, Landroidx/constraintlayout/motion/widget/g;

    if-eqz v16, :cond_17e

    .line 57
    iget-boolean v14, v0, Landroidx/constraintlayout/motion/widget/j;->q0:Z

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/j;->A0:Lq/c;

    move-object/from16 v17, v13

    move/from16 v18, v10

    move-wide/from16 v19, v8

    move-object/from16 v21, v7

    invoke-virtual/range {v16 .. v21}, Landroidx/constraintlayout/motion/widget/g;->c(Landroid/view/View;FJLq/c;)Z

    move-result v7

    or-int/2addr v7, v14

    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/j;->q0:Z

    :cond_17e
    add-int/lit8 v11, v11, 0x1

    const/4 v7, 0x0

    goto :goto_159

    :cond_182
    cmpl-float v5, v1, v4

    if-lez v5, :cond_18c

    .line 58
    iget v5, v0, Landroidx/constraintlayout/motion/widget/j;->d0:F

    cmpl-float v5, v12, v5

    if-gez v5, :cond_196

    :cond_18c
    cmpg-float v5, v1, v4

    if-gtz v5, :cond_198

    iget v5, v0, Landroidx/constraintlayout/motion/widget/j;->d0:F

    cmpg-float v5, v12, v5

    if-gtz v5, :cond_198

    :cond_196
    const/4 v5, 0x1

    goto :goto_199

    :cond_198
    const/4 v5, 0x0

    .line 59
    :goto_199
    iget-boolean v7, v0, Landroidx/constraintlayout/motion/widget/j;->q0:Z

    if-nez v7, :cond_1a8

    iget-boolean v7, v0, Landroidx/constraintlayout/motion/widget/j;->f0:Z

    if-nez v7, :cond_1a8

    if-eqz v5, :cond_1a8

    .line 60
    sget-object v7, Landroidx/constraintlayout/motion/widget/j$e;->r:Landroidx/constraintlayout/motion/widget/j$e;

    invoke-virtual {v0, v7}, Landroidx/constraintlayout/motion/widget/j;->setState(Landroidx/constraintlayout/motion/widget/j$e;)V

    .line 61
    :cond_1a8
    iget-boolean v7, v0, Landroidx/constraintlayout/motion/widget/j;->y0:Z

    if-eqz v7, :cond_1af

    .line 62
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/j;->requestLayout()V

    .line 63
    :cond_1af
    iget-boolean v7, v0, Landroidx/constraintlayout/motion/widget/j;->q0:Z

    xor-int/2addr v5, v6

    or-int/2addr v5, v7

    iput-boolean v5, v0, Landroidx/constraintlayout/motion/widget/j;->q0:Z

    cmpg-float v7, v12, v4

    if-gtz v7, :cond_1c5

    .line 64
    iget v7, v0, Landroidx/constraintlayout/motion/widget/j;->Q:I

    if-eq v7, v2, :cond_1c5

    .line 65
    iget v2, v0, Landroidx/constraintlayout/motion/widget/j;->R:I

    if-ne v2, v7, :cond_1c2

    goto :goto_1c5

    .line 66
    :cond_1c2
    iput v7, v0, Landroidx/constraintlayout/motion/widget/j;->R:I

    .line 67
    throw v15

    :cond_1c5
    :goto_1c5
    float-to-double v7, v12

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v7, v9

    if-ltz v2, :cond_1d6

    .line 68
    iget v2, v0, Landroidx/constraintlayout/motion/widget/j;->R:I

    iget v7, v0, Landroidx/constraintlayout/motion/widget/j;->S:I

    if-ne v2, v7, :cond_1d3

    goto :goto_1d6

    .line 69
    :cond_1d3
    iput v7, v0, Landroidx/constraintlayout/motion/widget/j;->R:I

    .line 70
    throw v15

    :cond_1d6
    :goto_1d6
    if-nez v5, :cond_1f3

    .line 71
    iget-boolean v2, v0, Landroidx/constraintlayout/motion/widget/j;->f0:Z

    if-eqz v2, :cond_1dd

    goto :goto_1f3

    :cond_1dd
    cmpl-float v2, v1, v4

    if-lez v2, :cond_1e5

    cmpl-float v2, v12, v3

    if-eqz v2, :cond_1ed

    :cond_1e5
    cmpg-float v2, v1, v4

    if-gez v2, :cond_1f6

    cmpl-float v2, v12, v4

    if-nez v2, :cond_1f6

    .line 72
    :cond_1ed
    sget-object v2, Landroidx/constraintlayout/motion/widget/j$e;->r:Landroidx/constraintlayout/motion/widget/j$e;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/motion/widget/j;->setState(Landroidx/constraintlayout/motion/widget/j$e;)V

    goto :goto_1f6

    .line 73
    :cond_1f3
    :goto_1f3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 74
    :cond_1f6
    :goto_1f6
    iget-boolean v2, v0, Landroidx/constraintlayout/motion/widget/j;->q0:Z

    if-nez v2, :cond_211

    iget-boolean v2, v0, Landroidx/constraintlayout/motion/widget/j;->f0:Z

    if-nez v2, :cond_211

    cmpl-float v2, v1, v4

    if-lez v2, :cond_206

    cmpl-float v2, v12, v3

    if-eqz v2, :cond_20e

    :cond_206
    cmpg-float v1, v1, v4

    if-gez v1, :cond_211

    cmpl-float v1, v12, v4

    if-nez v1, :cond_211

    .line 75
    :cond_20e
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/j;->I()V

    .line 76
    :cond_211
    iget v1, v0, Landroidx/constraintlayout/motion/widget/j;->b0:F

    cmpl-float v2, v1, v3

    if-ltz v2, :cond_223

    .line 77
    iget v1, v0, Landroidx/constraintlayout/motion/widget/j;->R:I

    iget v2, v0, Landroidx/constraintlayout/motion/widget/j;->S:I

    if-eq v1, v2, :cond_21e

    goto :goto_21f

    :cond_21e
    const/4 v6, 0x0

    .line 78
    :goto_21f
    iput v2, v0, Landroidx/constraintlayout/motion/widget/j;->R:I

    :goto_221
    move v7, v6

    goto :goto_233

    :cond_223
    cmpg-float v1, v1, v4

    if-gtz v1, :cond_232

    .line 79
    iget v1, v0, Landroidx/constraintlayout/motion/widget/j;->R:I

    iget v2, v0, Landroidx/constraintlayout/motion/widget/j;->Q:I

    if-eq v1, v2, :cond_22e

    goto :goto_22f

    :cond_22e
    const/4 v6, 0x0

    .line 80
    :goto_22f
    iput v2, v0, Landroidx/constraintlayout/motion/widget/j;->R:I

    goto :goto_221

    :cond_232
    const/4 v7, 0x0

    .line 81
    :goto_233
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/j;->J0:Z

    or-int/2addr v1, v7

    iput-boolean v1, v0, Landroidx/constraintlayout/motion/widget/j;->J0:Z

    if-eqz v7, :cond_241

    .line 82
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/j;->B0:Z

    if-nez v1, :cond_241

    .line 83
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/j;->requestLayout()V

    .line 84
    :cond_241
    iget v1, v0, Landroidx/constraintlayout/motion/widget/j;->b0:F

    iput v1, v0, Landroidx/constraintlayout/motion/widget/j;->a0:F

    return-void
.end method

.method protected H()V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/j;->g0:Landroidx/constraintlayout/motion/widget/j$d;

    const/4 v1, 0x1

    if-nez v0, :cond_f

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/j;->u0:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_42

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_42

    .line 2
    :cond_f
    iget v0, p0, Landroidx/constraintlayout/motion/widget/j;->v0:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_42

    .line 3
    iget v0, p0, Landroidx/constraintlayout/motion/widget/j;->R:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/j;->v0:I

    .line 4
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/j;->K0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    .line 5
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/j;->K0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_33

    :cond_32
    const/4 v0, -0x1

    .line 6
    :goto_33
    iget v3, p0, Landroidx/constraintlayout/motion/widget/j;->R:I

    if-eq v0, v3, :cond_42

    if-eq v3, v2, :cond_42

    .line 7
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/j;->K0:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_42
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/j;->J()V

    .line 9
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/j;->D0:Ljava/lang/Runnable;

    if-eqz v0, :cond_4c

    .line 10
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 11
    :cond_4c
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/j;->E0:[I

    if-eqz v0, :cond_66

    iget v2, p0, Landroidx/constraintlayout/motion/widget/j;->F0:I

    if-lez v2, :cond_66

    const/4 v2, 0x0

    .line 12
    aget v0, v0, v2

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/j;->O(I)V

    .line 13
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/j;->E0:[I

    array-length v3, v0

    sub-int/2addr v3, v1

    invoke-static {v0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    iget v0, p0, Landroidx/constraintlayout/motion/widget/j;->F0:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/constraintlayout/motion/widget/j;->F0:I

    :cond_66
    return-void
.end method

.method I()V
    .registers 1

    return-void
.end method

.method public K(FF)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/j;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/j;->C0:Landroidx/constraintlayout/motion/widget/j$c;

    if-nez v0, :cond_11

    .line 3
    new-instance v0, Landroidx/constraintlayout/motion/widget/j$c;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/j$c;-><init>(Landroidx/constraintlayout/motion/widget/j;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/j;->C0:Landroidx/constraintlayout/motion/widget/j$c;

    .line 4
    :cond_11
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/j;->C0:Landroidx/constraintlayout/motion/widget/j$c;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/j$c;->e(F)V

    .line 5
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/j;->C0:Landroidx/constraintlayout/motion/widget/j$c;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/j$c;->h(F)V

    return-void

    .line 6
    :cond_1c
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/j;->setProgress(F)V

    .line 7
    sget-object v0, Landroidx/constraintlayout/motion/widget/j$e;->q:Landroidx/constraintlayout/motion/widget/j$e;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/j;->setState(Landroidx/constraintlayout/motion/widget/j$e;)V

    .line 8
    iput p2, p0, Landroidx/constraintlayout/motion/widget/j;->P:F

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    cmpl-float v2, p2, v1

    if-eqz v2, :cond_37

    cmpl-float p1, p2, v1

    if-lez p1, :cond_32

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    .line 9
    :goto_33
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/j;->E(F)V

    goto :goto_4a

    :cond_37
    cmpl-float p2, p1, v1

    if-eqz p2, :cond_4a

    cmpl-float p2, p1, v0

    if-eqz p2, :cond_4a

    const/high16 p2, 0x3f000000    # 0.5f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_46

    goto :goto_47

    :cond_46
    const/4 v0, 0x0

    .line 10
    :goto_47
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/j;->E(F)V

    :cond_4a
    :goto_4a
    return-void
.end method

.method public L(III)V
    .registers 5

    .line 1
    sget-object v0, Landroidx/constraintlayout/motion/widget/j$e;->p:Landroidx/constraintlayout/motion/widget/j$e;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/j;->setState(Landroidx/constraintlayout/motion/widget/j$e;)V

    .line 2
    iput p1, p0, Landroidx/constraintlayout/motion/widget/j;->R:I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroidx/constraintlayout/motion/widget/j;->Q:I

    .line 4
    iput v0, p0, Landroidx/constraintlayout/motion/widget/j;->S:I

    .line 5
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->y:Landroidx/constraintlayout/widget/c;

    if-eqz v0, :cond_15

    int-to-float p2, p2

    int-to-float p3, p3

    .line 6
    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/widget/c;->d(IFF)V

    :cond_15
    return-void
.end method

.method public M(II)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/j;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/j;->C0:Landroidx/constraintlayout/motion/widget/j$c;

    if-nez v0, :cond_11

    .line 3
    new-instance v0, Landroidx/constraintlayout/motion/widget/j$c;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/j$c;-><init>(Landroidx/constraintlayout/motion/widget/j;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/j;->C0:Landroidx/constraintlayout/motion/widget/j$c;

    .line 4
    :cond_11
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/j;->C0:Landroidx/constraintlayout/motion/widget/j$c;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/j$c;->f(I)V

    .line 5
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/j;->C0:Landroidx/constraintlayout/motion/widget/j$c;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/j$c;->d(I)V

    :cond_1b
    return-void
.end method

.method public N()V
    .registers 2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/j;->E(F)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/j;->D0:Ljava/lang/Runnable;

    return-void
.end method

.method public O(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/j;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_17

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/j;->C0:Landroidx/constraintlayout/motion/widget/j$c;

    if-nez v0, :cond_11

    .line 3
    new-instance v0, Landroidx/constraintlayout/motion/widget/j$c;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/j$c;-><init>(Landroidx/constraintlayout/motion/widget/j;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/j;->C0:Landroidx/constraintlayout/motion/widget/j$c;

    .line 4
    :cond_11
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/j;->C0:Landroidx/constraintlayout/motion/widget/j$c;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/j$c;->d(I)V

    return-void

    :cond_17
    const/4 v0, -0x1

    .line 5
    invoke-virtual {p0, p1, v0, v0}, Landroidx/constraintlayout/motion/widget/j;->P(III)V

    return-void
.end method

.method public P(III)V
    .registers 5

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/constraintlayout/motion/widget/j;->Q(IIII)V

    return-void
.end method

.method public Q(IIII)V
    .registers 8

    .line 1
    iget p2, p0, Landroidx/constraintlayout/motion/widget/j;->R:I

    if-ne p2, p1, :cond_5

    return-void

    .line 2
    :cond_5
    iget p3, p0, Landroidx/constraintlayout/motion/widget/j;->Q:I

    const/high16 v0, 0x447a0000    # 1000.0f

    const/4 v1, 0x0

    if-ne p3, p1, :cond_16

    .line 3
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/motion/widget/j;->E(F)V

    if-lez p4, :cond_15

    int-to-float p1, p4

    div-float/2addr p1, v0

    .line 4
    iput p1, p0, Landroidx/constraintlayout/motion/widget/j;->W:F

    :cond_15
    return-void

    .line 5
    :cond_16
    iget p3, p0, Landroidx/constraintlayout/motion/widget/j;->S:I

    const/high16 v2, 0x3f800000    # 1.0f

    if-ne p3, p1, :cond_26

    .line 6
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/motion/widget/j;->E(F)V

    if-lez p4, :cond_25

    int-to-float p1, p4

    div-float/2addr p1, v0

    .line 7
    iput p1, p0, Landroidx/constraintlayout/motion/widget/j;->W:F

    :cond_25
    return-void

    .line 8
    :cond_26
    iput p1, p0, Landroidx/constraintlayout/motion/widget/j;->S:I

    const/4 p3, -0x1

    if-eq p2, p3, :cond_3d

    .line 9
    invoke-virtual {p0, p2, p1}, Landroidx/constraintlayout/motion/widget/j;->M(II)V

    .line 10
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/motion/widget/j;->E(F)V

    .line 11
    iput v1, p0, Landroidx/constraintlayout/motion/widget/j;->b0:F

    .line 12
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/j;->N()V

    if-lez p4, :cond_3c

    int-to-float p1, p4

    div-float/2addr p1, v0

    .line 13
    iput p1, p0, Landroidx/constraintlayout/motion/widget/j;->W:F

    :cond_3c
    return-void

    :cond_3d
    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/j;->i0:Z

    .line 15
    iput v2, p0, Landroidx/constraintlayout/motion/widget/j;->d0:F

    .line 16
    iput v1, p0, Landroidx/constraintlayout/motion/widget/j;->a0:F

    .line 17
    iput v1, p0, Landroidx/constraintlayout/motion/widget/j;->b0:F

    .line 18
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/j;->getNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/constraintlayout/motion/widget/j;->c0:J

    .line 19
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/j;->getNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/constraintlayout/motion/widget/j;->V:J

    .line 20
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/j;->e0:Z

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/j;->N:Landroid/view/animation/Interpolator;

    if-ne p4, p3, :cond_5a

    .line 22
    throw p1

    .line 23
    :cond_5a
    iput p3, p0, Landroidx/constraintlayout/motion/widget/j;->Q:I

    .line 24
    throw p1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/j;->t0:Ljava/util/ArrayList;

    if-eqz v0, :cond_18

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/h;

    .line 3
    invoke-virtual {v1, p1}, Landroidx/constraintlayout/motion/widget/h;->w(Landroid/graphics/Canvas;)V

    goto :goto_8

    :cond_18
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/j;->F(Z)V

    .line 5
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getConstraintSetIds()[I
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentState()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/j;->R:I

    return v0
.end method

.method public getDefinedTransitions()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/l$a;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDesignTool()Landroidx/constraintlayout/motion/widget/b;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/j;->k0:Landroidx/constraintlayout/motion/widget/b;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Landroidx/constraintlayout/motion/widget/b;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/b;-><init>(Landroidx/constraintlayout/motion/widget/j;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/j;->k0:Landroidx/constraintlayout/motion/widget/b;

    .line 3
    :cond_b
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/j;->k0:Landroidx/constraintlayout/motion/widget/b;

    return-object v0
.end method

.method public getEndState()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/j;->S:I

    return v0
.end method

.method protected getNanoTime()J
    .registers 3

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getProgress()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/j;->b0:F

    return v0
.end method

.method public getScene()Landroidx/constraintlayout/motion/widget/l;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/j;->M:Landroidx/constraintlayout/motion/widget/l;

    return-object v0
.end method

.method public getStartState()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/j;->Q:I

    return v0
.end method

.method public getTargetPosition()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/j;->d0:F

    return v0
.end method

.method public getTransitionState()Landroid/os/Bundle;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/j;->C0:Landroidx/constraintlayout/motion/widget/j$c;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Landroidx/constraintlayout/motion/widget/j$c;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/j$c;-><init>(Landroidx/constraintlayout/motion/widget/j;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/j;->C0:Landroidx/constraintlayout/motion/widget/j$c;

    .line 3
    :cond_b
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/j;->C0:Landroidx/constraintlayout/motion/widget/j$c;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/j$c;->c()V

    .line 4
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/j;->C0:Landroidx/constraintlayout/motion/widget/j$c;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/j$c;->b()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getTransitionTimeMs()J
    .registers 3

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/j;->W:F

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float v0, v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method public getVelocity()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/j;->P:F

    return v0
.end method

.method public isAttachedToWindow()Z
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_b

    .line 2
    invoke-super {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    return v0

    .line 3
    :cond_b
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public j(Landroid/view/View;IIIII[I)V
    .registers 8

    .line 1
    iget-boolean p1, p0, Landroidx/constraintlayout/motion/widget/j;->l0:Z

    const/4 p6, 0x0

    if-nez p1, :cond_9

    if-nez p2, :cond_9

    if-eqz p3, :cond_14

    .line 2
    :cond_9
    aget p1, p7, p6

    add-int/2addr p1, p4

    aput p1, p7, p6

    const/4 p1, 0x1

    .line 3
    aget p2, p7, p1

    add-int/2addr p2, p5

    aput p2, p7, p1

    .line 4
    :cond_14
    iput-boolean p6, p0, Landroidx/constraintlayout/motion/widget/j;->l0:Z

    return-void
.end method

.method public k(Landroid/view/View;IIIII)V
    .registers 7

    return-void
.end method

.method public l(Landroid/view/View;Landroid/view/View;II)Z
    .registers 5

    const/4 p1, 0x0

    return p1
.end method

.method public m(Landroid/view/View;Landroid/view/View;II)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/j;->getNanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/constraintlayout/motion/widget/j;->o0:J

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Landroidx/constraintlayout/motion/widget/j;->p0:F

    .line 3
    iput p1, p0, Landroidx/constraintlayout/motion/widget/j;->m0:F

    .line 4
    iput p1, p0, Landroidx/constraintlayout/motion/widget/j;->n0:F

    return-void
.end method

.method public n(Landroid/view/View;I)V
    .registers 3

    return-void
.end method

.method public o(Landroid/view/View;II[II)V
    .registers 6

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_15

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 4
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/j;->G0:I

    .line 5
    :cond_15
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/j;->I()V

    .line 6
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/j;->C0:Landroidx/constraintlayout/motion/widget/j$c;

    if-eqz v0, :cond_2c

    .line 7
    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/j;->H0:Z

    if-eqz v1, :cond_29

    .line 8
    new-instance v0, Landroidx/constraintlayout/motion/widget/j$a;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/j$a;-><init>(Landroidx/constraintlayout/motion/widget/j;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_2c

    .line 9
    :cond_29
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/j$c;->a()V

    :cond_2c
    :goto_2c
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method protected onLayout(ZIIII)V
    .registers 7

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/j;->B0:Z

    const/4 v0, 0x0

    .line 2
    :try_start_4
    invoke-super/range {p0 .. p5}, Landroidx/constraintlayout/widget/ConstraintLayout;->onLayout(ZIIII)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_a

    .line 3
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/j;->B0:Z

    return-void

    :catchall_a
    move-exception p1

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/j;->B0:Z

    .line 4
    throw p1
.end method

.method protected onMeasure(II)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .registers 5

    const/4 p1, 0x0

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 2

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onViewAdded(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    .line 2
    instance-of v0, p1, Landroidx/constraintlayout/motion/widget/h;

    if-eqz v0, :cond_5b

    .line 3
    check-cast p1, Landroidx/constraintlayout/motion/widget/h;

    .line 4
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/j;->u0:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_14

    .line 5
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/j;->u0:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    :cond_14
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/j;->u0:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/h;->v()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 8
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/j;->r0:Ljava/util/ArrayList;

    if-nez v0, :cond_2a

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/j;->r0:Ljava/util/ArrayList;

    .line 10
    :cond_2a
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/j;->r0:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_2f
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/h;->u()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 12
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/j;->s0:Ljava/util/ArrayList;

    if-nez v0, :cond_40

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/j;->s0:Ljava/util/ArrayList;

    .line 14
    :cond_40
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/j;->s0:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_45
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/h;->t()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 16
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/j;->t0:Ljava/util/ArrayList;

    if-nez v0, :cond_56

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/j;->t0:Ljava/util/ArrayList;

    .line 18
    :cond_56
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/j;->t0:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5b
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/j;->r0:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    :cond_a
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/j;->s0:Ljava/util/ArrayList;

    if-eqz v0, :cond_11

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_11
    return-void
.end method

.method public requestLayout()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/j;->y0:Z

    if-nez v0, :cond_7

    .line 2
    iget v0, p0, Landroidx/constraintlayout/motion/widget/j;->R:I

    const/4 v1, -0x1

    .line 3
    :cond_7
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setDebugMode(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/j;->h0:I

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setDelayedApplicationOfInitialState(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/j;->H0:Z

    return-void
.end method

.method public setInteractionEnabled(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/j;->T:Z

    return-void
.end method

.method public setInterpolatedProgress(F)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/j;->setProgress(F)V

    return-void
.end method

.method public setOnHide(F)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/j;->s0:Ljava/util/ArrayList;

    if-eqz v0, :cond_19

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_19

    .line 3
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/j;->s0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/h;

    .line 4
    invoke-virtual {v2, p1}, Landroidx/constraintlayout/motion/widget/h;->setProgress(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_19
    return-void
.end method

.method public setOnShow(F)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/j;->r0:Ljava/util/ArrayList;

    if-eqz v0, :cond_19

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_19

    .line 3
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/j;->r0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/h;

    .line 4
    invoke-virtual {v2, p1}, Landroidx/constraintlayout/motion/widget/h;->setProgress(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_19
    return-void
.end method

.method public setProgress(F)V
    .registers 6

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-ltz v2, :cond_b

    cmpl-float v2, p1, v0

    if-lez v2, :cond_12

    :cond_b
    const-string v2, "MotionLayout"

    const-string v3, "Warning! Progress is defined for values between 0.0 and 1.0 inclusive"

    .line 1
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_12
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/j;->isAttachedToWindow()Z

    move-result v2

    if-nez v2, :cond_29

    .line 3
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/j;->C0:Landroidx/constraintlayout/motion/widget/j$c;

    if-nez v0, :cond_23

    .line 4
    new-instance v0, Landroidx/constraintlayout/motion/widget/j$c;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/j$c;-><init>(Landroidx/constraintlayout/motion/widget/j;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/j;->C0:Landroidx/constraintlayout/motion/widget/j$c;

    .line 5
    :cond_23
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/j;->C0:Landroidx/constraintlayout/motion/widget/j$c;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/j$c;->e(F)V

    return-void

    :cond_29
    cmpg-float v2, p1, v1

    if-gtz v2, :cond_4e

    .line 6
    iget p1, p0, Landroidx/constraintlayout/motion/widget/j;->b0:F

    cmpl-float p1, p1, v0

    if-nez p1, :cond_3e

    iget p1, p0, Landroidx/constraintlayout/motion/widget/j;->R:I

    iget v0, p0, Landroidx/constraintlayout/motion/widget/j;->S:I

    if-ne p1, v0, :cond_3e

    .line 7
    sget-object p1, Landroidx/constraintlayout/motion/widget/j$e;->q:Landroidx/constraintlayout/motion/widget/j$e;

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/j;->setState(Landroidx/constraintlayout/motion/widget/j$e;)V

    .line 8
    :cond_3e
    iget p1, p0, Landroidx/constraintlayout/motion/widget/j;->Q:I

    iput p1, p0, Landroidx/constraintlayout/motion/widget/j;->R:I

    .line 9
    iget p1, p0, Landroidx/constraintlayout/motion/widget/j;->b0:F

    cmpl-float p1, p1, v1

    if-nez p1, :cond_7b

    .line 10
    sget-object p1, Landroidx/constraintlayout/motion/widget/j$e;->r:Landroidx/constraintlayout/motion/widget/j$e;

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/j;->setState(Landroidx/constraintlayout/motion/widget/j$e;)V

    goto :goto_7b

    :cond_4e
    cmpl-float p1, p1, v0

    if-ltz p1, :cond_73

    .line 11
    iget p1, p0, Landroidx/constraintlayout/motion/widget/j;->b0:F

    cmpl-float p1, p1, v1

    if-nez p1, :cond_63

    iget p1, p0, Landroidx/constraintlayout/motion/widget/j;->R:I

    iget v1, p0, Landroidx/constraintlayout/motion/widget/j;->Q:I

    if-ne p1, v1, :cond_63

    .line 12
    sget-object p1, Landroidx/constraintlayout/motion/widget/j$e;->q:Landroidx/constraintlayout/motion/widget/j$e;

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/j;->setState(Landroidx/constraintlayout/motion/widget/j$e;)V

    .line 13
    :cond_63
    iget p1, p0, Landroidx/constraintlayout/motion/widget/j;->S:I

    iput p1, p0, Landroidx/constraintlayout/motion/widget/j;->R:I

    .line 14
    iget p1, p0, Landroidx/constraintlayout/motion/widget/j;->b0:F

    cmpl-float p1, p1, v0

    if-nez p1, :cond_7b

    .line 15
    sget-object p1, Landroidx/constraintlayout/motion/widget/j$e;->r:Landroidx/constraintlayout/motion/widget/j$e;

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/j;->setState(Landroidx/constraintlayout/motion/widget/j$e;)V

    goto :goto_7b

    :cond_73
    const/4 p1, -0x1

    .line 16
    iput p1, p0, Landroidx/constraintlayout/motion/widget/j;->R:I

    .line 17
    sget-object p1, Landroidx/constraintlayout/motion/widget/j$e;->q:Landroidx/constraintlayout/motion/widget/j$e;

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/j;->setState(Landroidx/constraintlayout/motion/widget/j$e;)V

    :cond_7b
    :goto_7b
    return-void
.end method

.method public setScene(Landroidx/constraintlayout/motion/widget/l;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->r()Z

    const/4 p1, 0x0

    throw p1
.end method

.method setStartState(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/j;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/j;->C0:Landroidx/constraintlayout/motion/widget/j$c;

    if-nez v0, :cond_11

    .line 3
    new-instance v0, Landroidx/constraintlayout/motion/widget/j$c;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/j$c;-><init>(Landroidx/constraintlayout/motion/widget/j;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/j;->C0:Landroidx/constraintlayout/motion/widget/j$c;

    .line 4
    :cond_11
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/j;->C0:Landroidx/constraintlayout/motion/widget/j$c;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/j$c;->f(I)V

    .line 5
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/j;->C0:Landroidx/constraintlayout/motion/widget/j$c;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/j$c;->d(I)V

    return-void

    .line 6
    :cond_1c
    iput p1, p0, Landroidx/constraintlayout/motion/widget/j;->R:I

    return-void
.end method

.method setState(Landroidx/constraintlayout/motion/widget/j$e;)V
    .registers 6

    .line 1
    sget-object v0, Landroidx/constraintlayout/motion/widget/j$e;->r:Landroidx/constraintlayout/motion/widget/j$e;

    if-ne p1, v0, :cond_a

    iget v1, p0, Landroidx/constraintlayout/motion/widget/j;->R:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_a

    return-void

    .line 2
    :cond_a
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/j;->I0:Landroidx/constraintlayout/motion/widget/j$e;

    .line 3
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/j;->I0:Landroidx/constraintlayout/motion/widget/j$e;

    .line 4
    sget-object v2, Landroidx/constraintlayout/motion/widget/j$e;->q:Landroidx/constraintlayout/motion/widget/j$e;

    if-ne v1, v2, :cond_17

    if-ne p1, v2, :cond_17

    .line 5
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/j;->G()V

    .line 6
    :cond_17
    sget-object v3, Landroidx/constraintlayout/motion/widget/j$b;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2f

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2f

    const/4 v2, 0x3

    if-eq v1, v2, :cond_29

    goto :goto_39

    :cond_29
    if-ne p1, v0, :cond_39

    .line 7
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/j;->H()V

    goto :goto_39

    :cond_2f
    if-ne p1, v2, :cond_34

    .line 8
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/j;->G()V

    :cond_34
    if-ne p1, v0, :cond_39

    .line 9
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/j;->H()V

    :cond_39
    :goto_39
    return-void
.end method

.method public setTransition(I)V
    .registers 2

    return-void
.end method

.method protected setTransition(Landroidx/constraintlayout/motion/widget/l$a;)V
    .registers 2

    const/4 p1, 0x0

    .line 1
    throw p1
.end method

.method public setTransitionDuration(I)V
    .registers 3

    const-string p1, "MotionLayout"

    const-string v0, "MotionScene not defined"

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setTransitionListener(Landroidx/constraintlayout/motion/widget/j$d;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/j;->g0:Landroidx/constraintlayout/motion/widget/j$d;

    return-void
.end method

.method public setTransitionState(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/j;->C0:Landroidx/constraintlayout/motion/widget/j$c;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Landroidx/constraintlayout/motion/widget/j$c;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/j$c;-><init>(Landroidx/constraintlayout/motion/widget/j;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/j;->C0:Landroidx/constraintlayout/motion/widget/j$c;

    .line 3
    :cond_b
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/j;->C0:Landroidx/constraintlayout/motion/widget/j$c;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/j$c;->g(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/j;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 5
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/j;->C0:Landroidx/constraintlayout/motion/widget/j$c;

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/j$c;->a()V

    :cond_1b
    return-void
.end method

.method protected t(I)V
    .registers 2

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->y:Landroidx/constraintlayout/widget/c;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Landroidx/constraintlayout/motion/widget/j;->Q:I

    invoke-static {v0, v2}, Landroidx/constraintlayout/motion/widget/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/constraintlayout/motion/widget/j;->S:I

    .line 3
    invoke-static {v0, v2}, Landroidx/constraintlayout/motion/widget/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (pos:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/constraintlayout/motion/widget/j;->b0:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " Dpos/Dt:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/constraintlayout/motion/widget/j;->P:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class androidx.constraintlayout.motion.widget.j.a (androidx.constraintlayout.motion.widget.j$a)
.class Landroidx/constraintlayout/motion/widget/j$a;
.super Ljava/lang/Object;
.source "MotionLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/constraintlayout/motion/widget/j;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Landroidx/constraintlayout/motion/widget/j;


# direct methods
.method constructor <init>(Landroidx/constraintlayout/motion/widget/j;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/j$a;->o:Landroidx/constraintlayout/motion/widget/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/j$a;->o:Landroidx/constraintlayout/motion/widget/j;

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/j;->B(Landroidx/constraintlayout/motion/widget/j;)Landroidx/constraintlayout/motion/widget/j$c;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/j$c;->a()V

    return-void
.end method

###### Class androidx.constraintlayout.motion.widget.j.b (androidx.constraintlayout.motion.widget.j$b)
.class synthetic Landroidx/constraintlayout/motion/widget/j$b;
.super Ljava/lang/Object;
.source "MotionLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Landroidx/constraintlayout/motion/widget/j$e;->values()[Landroidx/constraintlayout/motion/widget/j$e;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroidx/constraintlayout/motion/widget/j$b;->a:[I

    :try_start_9
    sget-object v1, Landroidx/constraintlayout/motion/widget/j$e;->o:Landroidx/constraintlayout/motion/widget/j$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Landroidx/constraintlayout/motion/widget/j$b;->a:[I

    sget-object v1, Landroidx/constraintlayout/motion/widget/j$e;->p:Landroidx/constraintlayout/motion/widget/j$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Landroidx/constraintlayout/motion/widget/j$b;->a:[I

    sget-object v1, Landroidx/constraintlayout/motion/widget/j$e;->q:Landroidx/constraintlayout/motion/widget/j$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Landroidx/constraintlayout/motion/widget/j$b;->a:[I

    sget-object v1, Landroidx/constraintlayout/motion/widget/j$e;->r:Landroidx/constraintlayout/motion/widget/j$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    return-void
.end method

###### Class androidx.constraintlayout.motion.widget.j.c (androidx.constraintlayout.motion.widget.j$c)
.class Landroidx/constraintlayout/motion/widget/j$c;
.super Ljava/lang/Object;
.source "MotionLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:F

.field b:F

.field c:I

.field d:I

.field final e:Ljava/lang/String;

.field final f:Ljava/lang/String;

.field final g:Ljava/lang/String;

.field final h:Ljava/lang/String;

.field final synthetic i:Landroidx/constraintlayout/motion/widget/j;


# direct methods
.method constructor <init>(Landroidx/constraintlayout/motion/widget/j;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/j$c;->i:Landroidx/constraintlayout/motion/widget/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 2
    iput p1, p0, Landroidx/constraintlayout/motion/widget/j$c;->a:F

    .line 3
    iput p1, p0, Landroidx/constraintlayout/motion/widget/j$c;->b:F

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Landroidx/constraintlayout/motion/widget/j$c;->c:I

    .line 5
    iput p1, p0, Landroidx/constraintlayout/motion/widget/j$c;->d:I

    const-string p1, "motion.progress"

    .line 6
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/j$c;->e:Ljava/lang/String;

    const-string p1, "motion.velocity"

    .line 7
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/j$c;->f:Ljava/lang/String;

    const-string p1, "motion.StartState"

    .line 8
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/j$c;->g:Ljava/lang/String;

    const-string p1, "motion.EndState"

    .line 9
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/j$c;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a()V
    .registers 5

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/j$c;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    iget v2, p0, Landroidx/constraintlayout/motion/widget/j$c;->d:I

    if-eq v2, v1, :cond_29

    :cond_9
    if-ne v0, v1, :cond_13

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/j$c;->i:Landroidx/constraintlayout/motion/widget/j;

    iget v2, p0, Landroidx/constraintlayout/motion/widget/j$c;->d:I

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/motion/widget/j;->O(I)V

    goto :goto_22

    .line 3
    :cond_13
    iget v2, p0, Landroidx/constraintlayout/motion/widget/j$c;->d:I

    if-ne v2, v1, :cond_1d

    .line 4
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/j$c;->i:Landroidx/constraintlayout/motion/widget/j;

    invoke-virtual {v2, v0, v1, v1}, Landroidx/constraintlayout/motion/widget/j;->L(III)V

    goto :goto_22

    .line 5
    :cond_1d
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/j$c;->i:Landroidx/constraintlayout/motion/widget/j;

    invoke-virtual {v3, v0, v2}, Landroidx/constraintlayout/motion/widget/j;->M(II)V

    .line 6
    :goto_22
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/j$c;->i:Landroidx/constraintlayout/motion/widget/j;

    sget-object v2, Landroidx/constraintlayout/motion/widget/j$e;->p:Landroidx/constraintlayout/motion/widget/j$e;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/motion/widget/j;->setState(Landroidx/constraintlayout/motion/widget/j$e;)V

    .line 7
    :cond_29
    iget v0, p0, Landroidx/constraintlayout/motion/widget/j$c;->b:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 8
    iget v0, p0, Landroidx/constraintlayout/motion/widget/j$c;->a:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_3a

    return-void

    .line 9
    :cond_3a
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/j$c;->i:Landroidx/constraintlayout/motion/widget/j;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/j$c;->a:F

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/j;->setProgress(F)V

    return-void

    .line 10
    :cond_42
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/j$c;->i:Landroidx/constraintlayout/motion/widget/j;

    iget v2, p0, Landroidx/constraintlayout/motion/widget/j$c;->a:F

    iget v3, p0, Landroidx/constraintlayout/motion/widget/j$c;->b:F

    invoke-virtual {v0, v2, v3}, Landroidx/constraintlayout/motion/widget/j;->K(FF)V

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 11
    iput v0, p0, Landroidx/constraintlayout/motion/widget/j$c;->a:F

    .line 12
    iput v0, p0, Landroidx/constraintlayout/motion/widget/j$c;->b:F

    .line 13
    iput v1, p0, Landroidx/constraintlayout/motion/widget/j$c;->c:I

    .line 14
    iput v1, p0, Landroidx/constraintlayout/motion/widget/j$c;->d:I

    return-void
.end method

.method public b()Landroid/os/Bundle;
    .registers 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget v1, p0, Landroidx/constraintlayout/motion/widget/j$c;->a:F

    const-string v2, "motion.progress"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 3
    iget v1, p0, Landroidx/constraintlayout/motion/widget/j$c;->b:F

    const-string v2, "motion.velocity"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 4
    iget v1, p0, Landroidx/constraintlayout/motion/widget/j$c;->c:I

    const-string v2, "motion.StartState"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5
    iget v1, p0, Landroidx/constraintlayout/motion/widget/j$c;->d:I

    const-string v2, "motion.EndState"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public c()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/j$c;->i:Landroidx/constraintlayout/motion/widget/j;

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/j;->C(Landroidx/constraintlayout/motion/widget/j;)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/j$c;->d:I

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/j$c;->i:Landroidx/constraintlayout/motion/widget/j;

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/j;->D(Landroidx/constraintlayout/motion/widget/j;)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/j$c;->c:I

    .line 3
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/j$c;->i:Landroidx/constraintlayout/motion/widget/j;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/j;->getVelocity()F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/j$c;->b:F

    .line 4
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/j$c;->i:Landroidx/constraintlayout/motion/widget/j;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/j;->getProgress()F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/j$c;->a:F

    return-void
.end method

.method public d(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/j$c;->d:I

    return-void
.end method

.method public e(F)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/j$c;->a:F

    return-void
.end method

.method public f(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/j$c;->c:I

    return-void
.end method

.method public g(Landroid/os/Bundle;)V
    .registers 3

    const-string v0, "motion.progress"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/j$c;->a:F

    const-string v0, "motion.velocity"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/j$c;->b:F

    const-string v0, "motion.StartState"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/j$c;->c:I

    const-string v0, "motion.EndState"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/j$c;->d:I

    return-void
.end method

.method public h(F)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/j$c;->b:F

    return-void
.end method

###### Class androidx.constraintlayout.motion.widget.j.d (androidx.constraintlayout.motion.widget.j$d)
.class public interface abstract Landroidx/constraintlayout/motion/widget/j$d;
.super Ljava/lang/Object;
.source "MotionLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "d"
.end annotation


# virtual methods
.method public abstract a(Landroidx/constraintlayout/motion/widget/j;IIF)V
.end method

.method public abstract b(Landroidx/constraintlayout/motion/widget/j;II)V
.end method

.method public abstract c(Landroidx/constraintlayout/motion/widget/j;I)V
.end method

###### Class androidx.constraintlayout.motion.widget.j.e (androidx.constraintlayout.motion.widget.j$e)
.class final enum Landroidx/constraintlayout/motion/widget/j$e;
.super Ljava/lang/Enum;
.source "MotionLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/constraintlayout/motion/widget/j$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum o:Landroidx/constraintlayout/motion/widget/j$e;

.field public static final enum p:Landroidx/constraintlayout/motion/widget/j$e;

.field public static final enum q:Landroidx/constraintlayout/motion/widget/j$e;

.field public static final enum r:Landroidx/constraintlayout/motion/widget/j$e;

.field private static final synthetic s:[Landroidx/constraintlayout/motion/widget/j$e;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 1
    new-instance v0, Landroidx/constraintlayout/motion/widget/j$e;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/motion/widget/j$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/motion/widget/j$e;->o:Landroidx/constraintlayout/motion/widget/j$e;

    .line 2
    new-instance v1, Landroidx/constraintlayout/motion/widget/j$e;

    const-string v3, "SETUP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroidx/constraintlayout/motion/widget/j$e;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/constraintlayout/motion/widget/j$e;->p:Landroidx/constraintlayout/motion/widget/j$e;

    .line 3
    new-instance v3, Landroidx/constraintlayout/motion/widget/j$e;

    const-string v5, "MOVING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroidx/constraintlayout/motion/widget/j$e;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/constraintlayout/motion/widget/j$e;->q:Landroidx/constraintlayout/motion/widget/j$e;

    .line 4
    new-instance v5, Landroidx/constraintlayout/motion/widget/j$e;

    const-string v7, "FINISHED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroidx/constraintlayout/motion/widget/j$e;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroidx/constraintlayout/motion/widget/j$e;->r:Landroidx/constraintlayout/motion/widget/j$e;

    const/4 v7, 0x4

    new-array v7, v7, [Landroidx/constraintlayout/motion/widget/j$e;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Landroidx/constraintlayout/motion/widget/j$e;->s:[Landroidx/constraintlayout/motion/widget/j$e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/constraintlayout/motion/widget/j$e;
    .registers 2

    .line 1
    const-class v0, Landroidx/constraintlayout/motion/widget/j$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/motion/widget/j$e;

    return-object p0
.end method

.method public static values()[Landroidx/constraintlayout/motion/widget/j$e;
    .registers 1

    .line 1
    sget-object v0, Landroidx/constraintlayout/motion/widget/j$e;->s:[Landroidx/constraintlayout/motion/widget/j$e;

    invoke-virtual {v0}, [Landroidx/constraintlayout/motion/widget/j$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/motion/widget/j$e;

    return-object v0
.end method
