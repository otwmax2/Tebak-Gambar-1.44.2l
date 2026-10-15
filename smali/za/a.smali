###### Class za.a (za.a)
.class public Lza/a;
.super Ljava/lang/Object;
.source "MultiTouchController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lza/a$a;,
        Lza/a$c;,
        Lza/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static A:Ljava/lang/reflect/Method; = null

.field private static B:Ljava/lang/reflect/Method; = null

.field private static C:Ljava/lang/reflect/Method; = null

.field private static D:Ljava/lang/reflect/Method; = null

.field private static E:I = 0x6

.field private static F:I = 0x8

.field private static final G:[F

.field private static final H:[F

.field private static final I:[F

.field private static final J:[I

.field public static final v:Z

.field private static w:Ljava/lang/reflect/Method;

.field private static x:Ljava/lang/reflect/Method;

.field private static y:Ljava/lang/reflect/Method;

.field private static z:Ljava/lang/reflect/Method;


# instance fields
.field a:Lza/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lza/a$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private b:Lza/a$b;

.field private c:Lza/a$b;

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:Z

.field private k:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private l:Lza/a$c;

.field private m:J

.field private n:J

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:F

.field private u:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    :try_start_2
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getPointerCount"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lza/a;->w:Ljava/lang/reflect/Method;

    .line 2
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getPointerId"

    new-array v4, v0, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lza/a;->x:Ljava/lang/reflect/Method;

    .line 3
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getPressure"

    new-array v4, v0, [Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lza/a;->y:Ljava/lang/reflect/Method;

    .line 4
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getHistoricalX"

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/Class;

    aput-object v5, v6, v1

    aput-object v5, v6, v0

    invoke-virtual {v2, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lza/a;->z:Ljava/lang/reflect/Method;

    .line 5
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getHistoricalY"

    new-array v6, v4, [Ljava/lang/Class;

    aput-object v5, v6, v1

    aput-object v5, v6, v0

    invoke-virtual {v2, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lza/a;->A:Ljava/lang/reflect/Method;

    .line 6
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getHistoricalPressure"

    new-array v4, v4, [Ljava/lang/Class;

    aput-object v5, v4, v1

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lza/a;->B:Ljava/lang/reflect/Method;

    .line 7
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getX"

    new-array v4, v0, [Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lza/a;->C:Ljava/lang/reflect/Method;

    .line 8
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getY"

    new-array v4, v0, [Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lza/a;->D:Ljava/lang/reflect/Method;
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_79} :catch_7a

    goto :goto_83

    :catch_7a
    move-exception v0

    const-string v2, "MultiTouchController"

    const-string v3, "static initializer failed"

    .line 9
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 10
    :goto_83
    sput-boolean v0, Lza/a;->v:Z

    if-eqz v0, :cond_a4

    .line 11
    :try_start_87
    const-class v0, Landroid/view/MotionEvent;

    const-string v1, "ACTION_POINTER_UP"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lza/a;->E:I

    .line 12
    const-class v0, Landroid/view/MotionEvent;

    const-string v2, "ACTION_POINTER_INDEX_SHIFT"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lza/a;->F:I
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_a4} :catch_a4

    :catch_a4
    :cond_a4
    const/16 v0, 0x14

    new-array v1, v0, [F

    .line 13
    sput-object v1, Lza/a;->G:[F

    new-array v1, v0, [F

    .line 14
    sput-object v1, Lza/a;->H:[F

    new-array v1, v0, [F

    .line 15
    sput-object v1, Lza/a;->I:[F

    new-array v0, v0, [I

    .line 16
    sput-object v0, Lza/a;->J:[I

    return-void
.end method

.method public constructor <init>(Lza/a$a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lza/a$a<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lza/a;-><init>(Lza/a$a;Z)V

    return-void
.end method

.method public constructor <init>(Lza/a$a;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lza/a$a<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lza/a;->k:Ljava/lang/Object;

    .line 4
    new-instance v0, Lza/a$c;

    invoke-direct {v0}, Lza/a$c;-><init>()V

    iput-object v0, p0, Lza/a;->l:Lza/a$c;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lza/a;->u:I

    .line 6
    new-instance v0, Lza/a$b;

    invoke-direct {v0}, Lza/a$b;-><init>()V

    iput-object v0, p0, Lza/a;->b:Lza/a$b;

    .line 7
    new-instance v0, Lza/a$b;

    invoke-direct {v0}, Lza/a$b;-><init>()V

    iput-object v0, p0, Lza/a;->c:Lza/a$b;

    .line 8
    iput-boolean p2, p0, Lza/a;->j:Z

    .line 9
    iput-object p1, p0, Lza/a;->a:Lza/a$a;

    return-void
.end method

.method private a()V
    .registers 4

    .line 1
    iget-object v0, p0, Lza/a;->k:Ljava/lang/Object;

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    iget-object v1, p0, Lza/a;->a:Lza/a$a;

    iget-object v2, p0, Lza/a;->l:Lza/a$c;

    invoke-interface {v1, v0, v2}, Lza/a$a;->c(Ljava/lang/Object;Lza/a$c;)V

    .line 3
    iget-object v0, p0, Lza/a;->l:Lza/a$c;

    invoke-static {v0}, Lza/a$c;->a(Lza/a$c;)Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_19

    :goto_16
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_2b

    :cond_19
    iget-object v0, p0, Lza/a;->l:Lza/a$c;

    invoke-static {v0}, Lza/a$c;->d(Lza/a$c;)F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_25

    goto :goto_16

    :cond_25
    iget-object v0, p0, Lza/a;->l:Lza/a$c;

    invoke-static {v0}, Lza/a$c;->d(Lza/a$c;)F

    move-result v0

    :goto_2b
    div-float/2addr v1, v0

    .line 4
    invoke-direct {p0}, Lza/a;->c()V

    .line 5
    iget v0, p0, Lza/a;->d:F

    iget-object v2, p0, Lza/a;->l:Lza/a$c;

    invoke-static {v2}, Lza/a$c;->e(Lza/a$c;)F

    move-result v2

    sub-float/2addr v0, v2

    mul-float v0, v0, v1

    iput v0, p0, Lza/a;->o:F

    .line 6
    iget v0, p0, Lza/a;->e:F

    iget-object v2, p0, Lza/a;->l:Lza/a$c;

    invoke-static {v2}, Lza/a$c;->f(Lza/a$c;)F

    move-result v2

    sub-float/2addr v0, v2

    mul-float v0, v0, v1

    iput v0, p0, Lza/a;->p:F

    .line 7
    iget-object v0, p0, Lza/a;->l:Lza/a$c;

    invoke-static {v0}, Lza/a$c;->d(Lza/a$c;)F

    move-result v0

    iget v1, p0, Lza/a;->f:F

    div-float/2addr v0, v1

    iput v0, p0, Lza/a;->q:F

    .line 8
    iget-object v0, p0, Lza/a;->l:Lza/a$c;

    invoke-static {v0}, Lza/a$c;->g(Lza/a$c;)F

    move-result v0

    iget v1, p0, Lza/a;->g:F

    div-float/2addr v0, v1

    iput v0, p0, Lza/a;->s:F

    .line 9
    iget-object v0, p0, Lza/a;->l:Lza/a$c;

    invoke-static {v0}, Lza/a$c;->h(Lza/a$c;)F

    move-result v0

    iget v1, p0, Lza/a;->h:F

    div-float/2addr v0, v1

    iput v0, p0, Lza/a;->t:F

    .line 10
    iget-object v0, p0, Lza/a;->l:Lza/a$c;

    invoke-static {v0}, Lza/a$c;->i(Lza/a$c;)F

    move-result v0

    iget v1, p0, Lza/a;->i:F

    sub-float/2addr v0, v1

    iput v0, p0, Lza/a;->r:F

    return-void
.end method

.method private b(I[F[F[F[IIZJ)V
    .registers 21

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lza/a;->c:Lza/a$b;

    .line 2
    iget-object v2, v0, Lza/a;->b:Lza/a$b;

    iput-object v2, v0, Lza/a;->c:Lza/a$b;

    .line 3
    iput-object v1, v0, Lza/a;->b:Lza/a$b;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-wide/from16 v9, p8

    .line 4
    invoke-static/range {v1 .. v10}, Lza/a$b;->b(Lza/a$b;I[F[F[F[IIZJ)V

    .line 5
    invoke-direct {p0}, Lza/a;->d()V

    return-void
.end method

.method private c()V
    .registers 4

    .line 1
    iget-object v0, p0, Lza/a;->b:Lza/a$b;

    invoke-virtual {v0}, Lza/a$b;->i()F

    move-result v0

    iput v0, p0, Lza/a;->d:F

    .line 2
    iget-object v0, p0, Lza/a;->b:Lza/a$b;

    invoke-virtual {v0}, Lza/a$b;->j()F

    move-result v0

    iput v0, p0, Lza/a;->e:F

    .line 3
    iget-object v0, p0, Lza/a;->l:Lza/a$c;

    invoke-static {v0}, Lza/a$c;->a(Lza/a$c;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1b

    const/4 v0, 0x0

    goto :goto_21

    :cond_1b
    iget-object v0, p0, Lza/a;->b:Lza/a$b;

    invoke-virtual {v0}, Lza/a$b;->e()F

    move-result v0

    :goto_21
    const v2, 0x41aa6666    # 21.3f

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lza/a;->f:F

    .line 4
    iget-object v0, p0, Lza/a;->l:Lza/a$c;

    invoke-static {v0}, Lza/a$c;->b(Lza/a$c;)Z

    move-result v0

    if-nez v0, :cond_34

    const/4 v0, 0x0

    goto :goto_3a

    :cond_34
    iget-object v0, p0, Lza/a;->b:Lza/a$b;

    invoke-virtual {v0}, Lza/a$b;->h()F

    move-result v0

    :goto_3a
    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lza/a;->g:F

    .line 5
    iget-object v0, p0, Lza/a;->l:Lza/a$c;

    invoke-static {v0}, Lza/a$c;->b(Lza/a$c;)Z

    move-result v0

    if-nez v0, :cond_4c

    const/4 v0, 0x0

    goto :goto_52

    :cond_4c
    iget-object v0, p0, Lza/a;->b:Lza/a$b;

    invoke-virtual {v0}, Lza/a$b;->g()F

    move-result v0

    :goto_52
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lza/a;->h:F

    .line 6
    iget-object v0, p0, Lza/a;->l:Lza/a$c;

    invoke-static {v0}, Lza/a$c;->c(Lza/a$c;)Z

    move-result v0

    if-nez v0, :cond_61

    goto :goto_67

    :cond_61
    iget-object v0, p0, Lza/a;->b:Lza/a$b;

    invoke-virtual {v0}, Lza/a$b;->d()F

    move-result v1

    :goto_67
    iput v1, p0, Lza/a;->i:F

    return-void
.end method

.method private d()V
    .registers 8

    .line 1
    iget v0, p0, Lza/a;->u:I

    const/4 v1, 0x1

    if-eqz v0, :cond_10e

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-wide/16 v5, 0x14

    if-eq v0, v1, :cond_cd

    if-eq v0, v4, :cond_10

    goto/16 :goto_138

    .line 2
    :cond_10
    iget-object v0, p0, Lza/a;->b:Lza/a$b;

    invoke-virtual {v0}, Lza/a$b;->l()Z

    move-result v0

    if-eqz v0, :cond_a7

    iget-object v0, p0, Lza/a;->b:Lza/a$b;

    invoke-virtual {v0}, Lza/a$b;->k()Z

    move-result v0

    if-nez v0, :cond_22

    goto/16 :goto_a7

    .line 3
    :cond_22
    iget-object v0, p0, Lza/a;->b:Lza/a$b;

    invoke-virtual {v0}, Lza/a$b;->i()F

    move-result v0

    iget-object v1, p0, Lza/a;->c:Lza/a$b;

    invoke-virtual {v1}, Lza/a$b;->i()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41f00000    # 30.0f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_97

    iget-object v0, p0, Lza/a;->b:Lza/a$b;

    .line 4
    invoke-virtual {v0}, Lza/a$b;->j()F

    move-result v0

    iget-object v2, p0, Lza/a;->c:Lza/a$b;

    invoke-virtual {v2}, Lza/a$b;->j()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_97

    iget-object v0, p0, Lza/a;->b:Lza/a$b;

    .line 5
    invoke-virtual {v0}, Lza/a$b;->h()F

    move-result v0

    iget-object v1, p0, Lza/a;->c:Lza/a$b;

    invoke-virtual {v1}, Lza/a$b;->h()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    const/high16 v2, 0x42200000    # 40.0f

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_97

    iget-object v0, p0, Lza/a;->b:Lza/a$b;

    .line 6
    invoke-virtual {v0}, Lza/a$b;->g()F

    move-result v0

    iget-object v3, p0, Lza/a;->c:Lza/a$b;

    invoke-virtual {v3}, Lza/a$b;->g()F

    move-result v3

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float v0, v0, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_81

    goto :goto_97

    .line 7
    :cond_81
    iget-object v0, p0, Lza/a;->b:Lza/a$b;

    invoke-static {v0}, Lza/a$b;->a(Lza/a$b;)J

    move-result-wide v0

    iget-wide v2, p0, Lza/a;->n:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_92

    .line 8
    invoke-direct {p0}, Lza/a;->a()V

    goto/16 :goto_138

    .line 9
    :cond_92
    invoke-direct {p0}, Lza/a;->f()V

    goto/16 :goto_138

    .line 10
    :cond_97
    :goto_97
    invoke-direct {p0}, Lza/a;->a()V

    .line 11
    iget-object v0, p0, Lza/a;->b:Lza/a$b;

    invoke-virtual {v0}, Lza/a$b;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lza/a;->m:J

    add-long/2addr v0, v5

    .line 12
    iput-wide v0, p0, Lza/a;->n:J

    goto/16 :goto_138

    .line 13
    :cond_a7
    :goto_a7
    iget-object v0, p0, Lza/a;->b:Lza/a$b;

    invoke-virtual {v0}, Lza/a$b;->k()Z

    move-result v0

    if-nez v0, :cond_bc

    .line 14
    iput v3, p0, Lza/a;->u:I

    .line 15
    iget-object v0, p0, Lza/a;->a:Lza/a$a;

    iput-object v2, p0, Lza/a;->k:Ljava/lang/Object;

    iget-object v1, p0, Lza/a;->b:Lza/a$b;

    invoke-interface {v0, v2, v1}, Lza/a$a;->a(Ljava/lang/Object;Lza/a$b;)V

    goto/16 :goto_138

    .line 16
    :cond_bc
    iput v1, p0, Lza/a;->u:I

    .line 17
    invoke-direct {p0}, Lza/a;->a()V

    .line 18
    iget-object v0, p0, Lza/a;->b:Lza/a$b;

    invoke-virtual {v0}, Lza/a$b;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lza/a;->m:J

    add-long/2addr v0, v5

    .line 19
    iput-wide v0, p0, Lza/a;->n:J

    goto :goto_138

    .line 20
    :cond_cd
    iget-object v0, p0, Lza/a;->b:Lza/a$b;

    invoke-virtual {v0}, Lza/a$b;->k()Z

    move-result v0

    if-nez v0, :cond_e1

    .line 21
    iput v3, p0, Lza/a;->u:I

    .line 22
    iget-object v0, p0, Lza/a;->a:Lza/a$a;

    iput-object v2, p0, Lza/a;->k:Ljava/lang/Object;

    iget-object v1, p0, Lza/a;->b:Lza/a$b;

    invoke-interface {v0, v2, v1}, Lza/a$a;->a(Ljava/lang/Object;Lza/a$b;)V

    goto :goto_138

    .line 23
    :cond_e1
    iget-object v0, p0, Lza/a;->b:Lza/a$b;

    invoke-virtual {v0}, Lza/a$b;->l()Z

    move-result v0

    if-eqz v0, :cond_fa

    .line 24
    iput v4, p0, Lza/a;->u:I

    .line 25
    invoke-direct {p0}, Lza/a;->a()V

    .line 26
    iget-object v0, p0, Lza/a;->b:Lza/a$b;

    invoke-virtual {v0}, Lza/a$b;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lza/a;->m:J

    add-long/2addr v0, v5

    .line 27
    iput-wide v0, p0, Lza/a;->n:J

    goto :goto_138

    .line 28
    :cond_fa
    iget-object v0, p0, Lza/a;->b:Lza/a$b;

    invoke-virtual {v0}, Lza/a$b;->c()J

    move-result-wide v0

    iget-wide v2, p0, Lza/a;->n:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_10a

    .line 29
    invoke-direct {p0}, Lza/a;->a()V

    goto :goto_138

    .line 30
    :cond_10a
    invoke-direct {p0}, Lza/a;->f()V

    goto :goto_138

    .line 31
    :cond_10e
    iget-object v0, p0, Lza/a;->b:Lza/a$b;

    invoke-virtual {v0}, Lza/a$b;->k()Z

    move-result v0

    if-eqz v0, :cond_138

    .line 32
    iget-object v0, p0, Lza/a;->a:Lza/a$a;

    iget-object v2, p0, Lza/a;->b:Lza/a$b;

    invoke-interface {v0, v2}, Lza/a$a;->b(Lza/a$b;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lza/a;->k:Ljava/lang/Object;

    if-eqz v0, :cond_138

    .line 33
    iput v1, p0, Lza/a;->u:I

    .line 34
    iget-object v1, p0, Lza/a;->a:Lza/a$a;

    iget-object v2, p0, Lza/a;->b:Lza/a$b;

    invoke-interface {v1, v0, v2}, Lza/a$a;->a(Ljava/lang/Object;Lza/a$b;)V

    .line 35
    invoke-direct {p0}, Lza/a;->a()V

    .line 36
    iget-object v0, p0, Lza/a;->b:Lza/a$b;

    invoke-virtual {v0}, Lza/a$b;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lza/a;->n:J

    iput-wide v0, p0, Lza/a;->m:J

    :cond_138
    :goto_138
    return-void
.end method

.method private f()V
    .registers 11

    .line 1
    iget-object v0, p0, Lza/a;->k:Ljava/lang/Object;

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    iget-object v0, p0, Lza/a;->l:Lza/a$c;

    invoke-static {v0}, Lza/a$c;->a(Lza/a$c;)Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_10

    goto :goto_22

    :cond_10
    iget-object v0, p0, Lza/a;->l:Lza/a$c;

    invoke-static {v0}, Lza/a$c;->d(Lza/a$c;)F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1c

    goto :goto_22

    :cond_1c
    iget-object v0, p0, Lza/a;->l:Lza/a$c;

    invoke-static {v0}, Lza/a$c;->d(Lza/a$c;)F

    move-result v1

    .line 3
    :goto_22
    invoke-direct {p0}, Lza/a;->c()V

    .line 4
    iget v0, p0, Lza/a;->d:F

    iget v2, p0, Lza/a;->o:F

    mul-float v2, v2, v1

    sub-float v4, v0, v2

    .line 5
    iget v0, p0, Lza/a;->e:F

    iget v2, p0, Lza/a;->p:F

    mul-float v2, v2, v1

    sub-float v5, v0, v2

    .line 6
    iget v0, p0, Lza/a;->q:F

    iget v1, p0, Lza/a;->f:F

    mul-float v6, v0, v1

    .line 7
    iget v0, p0, Lza/a;->s:F

    iget v1, p0, Lza/a;->g:F

    mul-float v7, v0, v1

    .line 8
    iget v0, p0, Lza/a;->t:F

    iget v1, p0, Lza/a;->h:F

    mul-float v8, v0, v1

    .line 9
    iget v0, p0, Lza/a;->r:F

    iget v1, p0, Lza/a;->i:F

    add-float v9, v0, v1

    .line 10
    iget-object v3, p0, Lza/a;->l:Lza/a$c;

    invoke-virtual/range {v3 .. v9}, Lza/a$c;->p(FFFFFF)V

    .line 11
    iget-object v0, p0, Lza/a;->a:Lza/a$a;

    iget-object v1, p0, Lza/a;->k:Ljava/lang/Object;

    iget-object v2, p0, Lza/a;->l:Lza/a$c;

    iget-object v3, p0, Lza/a;->b:Lza/a$b;

    invoke-interface {v0, v1, v2, v3}, Lza/a$a;->d(Ljava/lang/Object;Lza/a$c;Lza/a$b;)Z

    return-void
.end method


# virtual methods
.method public e(Landroid/view/MotionEvent;)Z
    .registers 22

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    const/4 v12, 0x0

    .line 1
    :try_start_5
    sget-boolean v1, Lza/a;->v:Z

    const/4 v13, 0x1

    if-eqz v1, :cond_1a

    sget-object v1, Lza/a;->w:Ljava/lang/reflect/Method;

    new-array v2, v12, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v14, v1

    goto :goto_1b

    :cond_1a
    const/4 v14, 0x1

    .line 2
    :goto_1b
    iget v1, v11, Lza/a;->u:I

    if-nez v1, :cond_26

    iget-boolean v1, v11, Lza/a;->j:Z

    if-nez v1, :cond_26

    if-ne v14, v13, :cond_26

    return v12

    .line 3
    :cond_26
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v15

    .line 4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v1

    div-int v9, v1, v14

    const/4 v10, 0x0

    :goto_31
    if-gt v10, v9, :cond_16a

    if-ge v10, v9, :cond_37

    const/4 v1, 0x1

    goto :goto_38

    :cond_37
    const/4 v1, 0x0

    .line 5
    :goto_38
    sget-boolean v2, Lza/a;->v:Z

    const/4 v3, 0x2

    if-eqz v2, :cond_f3

    if-ne v14, v13, :cond_41

    goto/16 :goto_f3

    :cond_41
    const/16 v2, 0x14

    .line 6
    invoke-static {v14, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v4, 0x0

    :goto_48
    if-ge v4, v2, :cond_120

    .line 7
    sget-object v5, Lza/a;->x:Ljava/lang/reflect/Method;

    new-array v6, v13, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v12

    invoke-virtual {v5, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 8
    sget-object v6, Lza/a;->J:[I

    aput v5, v6, v4

    .line 9
    sget-object v5, Lza/a;->G:[F

    if-eqz v1, :cond_7b

    sget-object v6, Lza/a;->z:Ljava/lang/reflect/Method;

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v13

    invoke-virtual {v6, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_89

    :cond_7b
    sget-object v6, Lza/a;->C:Ljava/lang/reflect/Method;

    new-array v7, v13, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-virtual {v6, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :goto_89
    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    aput v6, v5, v4

    .line 10
    sget-object v5, Lza/a;->H:[F

    if-eqz v1, :cond_aa

    sget-object v6, Lza/a;->A:Ljava/lang/reflect/Method;

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v13

    invoke-virtual {v6, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_b8

    :cond_aa
    sget-object v6, Lza/a;->D:Ljava/lang/reflect/Method;

    new-array v7, v13, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-virtual {v6, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :goto_b8
    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    aput v6, v5, v4

    .line 11
    sget-object v5, Lza/a;->I:[F

    if-eqz v1, :cond_d9

    sget-object v6, Lza/a;->B:Ljava/lang/reflect/Method;

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v13

    invoke-virtual {v6, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_e7

    .line 12
    :cond_d9
    sget-object v6, Lza/a;->y:Ljava/lang/reflect/Method;

    new-array v7, v13, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-virtual {v6, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :goto_e7
    check-cast v6, Ljava/lang/Float;

    .line 13
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_48

    .line 14
    :cond_f3
    :goto_f3
    sget-object v2, Lza/a;->G:[F

    if-eqz v1, :cond_fc

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v4

    goto :goto_100

    :cond_fc
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    :goto_100
    aput v4, v2, v12

    .line 15
    sget-object v2, Lza/a;->H:[F

    if-eqz v1, :cond_10b

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v4

    goto :goto_10f

    :cond_10b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    :goto_10f
    aput v4, v2, v12

    .line 16
    sget-object v2, Lza/a;->I:[F

    if-eqz v1, :cond_11a

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getHistoricalPressure(I)F

    move-result v4

    goto :goto_11e

    :cond_11a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v4

    :goto_11e
    aput v4, v2, v12

    .line 17
    :cond_120
    sget-object v4, Lza/a;->G:[F

    sget-object v5, Lza/a;->H:[F

    sget-object v6, Lza/a;->I:[F

    sget-object v7, Lza/a;->J:[I

    if-eqz v1, :cond_12c

    const/4 v8, 0x2

    goto :goto_12d

    :cond_12c
    move v8, v15

    :goto_12d
    if-nez v1, :cond_142

    if-eq v15, v13, :cond_13f

    .line 18
    sget v2, Lza/a;->F:I

    shl-int v2, v13, v2

    sub-int/2addr v2, v13

    and-int/2addr v2, v15

    sget v3, Lza/a;->E:I

    if-eq v2, v3, :cond_13f

    const/4 v2, 0x3

    if-eq v15, v2, :cond_13f

    goto :goto_142

    :cond_13f
    const/16 v16, 0x0

    goto :goto_144

    :cond_142
    :goto_142
    const/16 v16, 0x1

    :goto_144
    if-eqz v1, :cond_14b

    .line 19
    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v1

    goto :goto_14f

    :cond_14b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    :goto_14f
    move-wide/from16 v17, v1

    move-object/from16 v1, p0

    move v2, v14

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move v7, v8

    move/from16 v8, v16

    move/from16 v16, v9

    move/from16 v19, v10

    move-wide/from16 v9, v17

    .line 20
    invoke-direct/range {v1 .. v10}, Lza/a;->b(I[F[F[F[IIZJ)V
    :try_end_164
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_164} :catch_16b

    add-int/lit8 v10, v19, 0x1

    move/from16 v9, v16

    goto/16 :goto_31

    :cond_16a
    return v13

    :catch_16b
    move-exception v0

    const-string v1, "MultiTouchController"

    const-string v2, "onTouchEvent() failed"

    .line 21
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v12
.end method

###### Class za.a.InterfaceC0311a (za.a$a)
.class public interface abstract Lza/a$a;
.super Ljava/lang/Object;
.source "MultiTouchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lza/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/Object;Lza/a$b;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lza/a$b;",
            ")V"
        }
    .end annotation
.end method

.method public abstract b(Lza/a$b;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lza/a$b;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract c(Ljava/lang/Object;Lza/a$c;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lza/a$c;",
            ")V"
        }
    .end annotation
.end method

.method public abstract d(Ljava/lang/Object;Lza/a$c;Lza/a$b;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lza/a$c;",
            "Lza/a$b;",
            ")Z"
        }
    .end annotation
.end method

###### Class za.a.b (za.a$b)
.class public Lza/a$b;
.super Ljava/lang/Object;
.source "MultiTouchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lza/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private b:[F

.field private c:[F

.field private d:[F

.field private e:[I

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:I

.field private t:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    new-array v1, v0, [F

    .line 2
    iput-object v1, p0, Lza/a$b;->b:[F

    new-array v1, v0, [F

    .line 3
    iput-object v1, p0, Lza/a$b;->c:[F

    new-array v1, v0, [F

    .line 4
    iput-object v1, p0, Lza/a$b;->d:[F

    new-array v0, v0, [I

    .line 5
    iput-object v0, p0, Lza/a$b;->e:[I

    return-void
.end method

.method static synthetic a(Lza/a$b;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lza/a$b;->t:J

    return-wide v0
.end method

.method static synthetic b(Lza/a$b;I[F[F[F[IIZJ)V
    .registers 10

    .line 1
    invoke-direct/range {p0 .. p9}, Lza/a$b;->n(I[F[F[F[IIZJ)V

    return-void
.end method

.method private m(I)I
    .registers 7

    const/4 v0, 0x0

    const v1, 0x8000

    const/16 v2, 0xf

    :goto_6
    shl-int/lit8 v3, v0, 0x1

    add-int/2addr v3, v1

    add-int/lit8 v4, v2, -0x1

    shl-int v2, v3, v2

    if-lt p1, v2, :cond_11

    add-int/2addr v0, v1

    sub-int/2addr p1, v2

    :cond_11
    shr-int/lit8 v1, v1, 0x1

    if-gtz v1, :cond_16

    return v0

    :cond_16
    move v2, v4

    goto :goto_6
.end method

.method private n(I[F[F[F[IIZJ)V
    .registers 11

    .line 1
    iput-wide p8, p0, Lza/a$b;->t:J

    .line 2
    iput p6, p0, Lza/a$b;->s:I

    .line 3
    iput p1, p0, Lza/a$b;->a:I

    const/4 p6, 0x0

    const/4 p8, 0x0

    :goto_8
    if-ge p8, p1, :cond_25

    .line 4
    iget-object p9, p0, Lza/a$b;->b:[F

    aget v0, p2, p8

    aput v0, p9, p8

    .line 5
    iget-object p9, p0, Lza/a$b;->c:[F

    aget v0, p3, p8

    aput v0, p9, p8

    .line 6
    iget-object p9, p0, Lza/a$b;->d:[F

    aget v0, p4, p8

    aput v0, p9, p8

    .line 7
    iget-object p9, p0, Lza/a$b;->e:[I

    aget v0, p5, p8

    aput v0, p9, p8

    add-int/lit8 p8, p8, 0x1

    goto :goto_8

    .line 8
    :cond_25
    iput-boolean p7, p0, Lza/a$b;->n:Z

    const/4 p5, 0x2

    const/4 p7, 0x1

    if-lt p1, p5, :cond_2d

    const/4 p1, 0x1

    goto :goto_2e

    :cond_2d
    const/4 p1, 0x0

    .line 9
    :goto_2e
    iput-boolean p1, p0, Lza/a$b;->o:Z

    if-eqz p1, :cond_66

    .line 10
    aget p1, p2, p6

    aget p5, p2, p7

    add-float/2addr p1, p5

    const/high16 p5, 0x3f000000    # 0.5f

    mul-float p1, p1, p5

    iput p1, p0, Lza/a$b;->f:F

    .line 11
    aget p1, p3, p6

    aget p8, p3, p7

    add-float/2addr p1, p8

    mul-float p1, p1, p5

    iput p1, p0, Lza/a$b;->g:F

    .line 12
    aget p1, p4, p6

    aget p4, p4, p7

    add-float/2addr p1, p4

    mul-float p1, p1, p5

    iput p1, p0, Lza/a$b;->h:F

    .line 13
    aget p1, p2, p7

    aget p2, p2, p6

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lza/a$b;->i:F

    .line 14
    aget p1, p3, p7

    aget p2, p3, p6

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lza/a$b;->j:F

    goto :goto_77

    .line 15
    :cond_66
    aget p1, p2, p6

    iput p1, p0, Lza/a$b;->f:F

    .line 16
    aget p1, p3, p6

    iput p1, p0, Lza/a$b;->g:F

    .line 17
    aget p1, p4, p6

    iput p1, p0, Lza/a$b;->h:F

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lza/a$b;->j:F

    iput p1, p0, Lza/a$b;->i:F

    .line 19
    :goto_77
    iput-boolean p6, p0, Lza/a$b;->r:Z

    iput-boolean p6, p0, Lza/a$b;->q:Z

    iput-boolean p6, p0, Lza/a$b;->p:Z

    return-void
.end method


# virtual methods
.method public c()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lza/a$b;->t:J

    return-wide v0
.end method

.method public d()F
    .registers 7

    .line 1
    iget-boolean v0, p0, Lza/a$b;->r:Z

    if-nez v0, :cond_27

    .line 2
    iget-boolean v0, p0, Lza/a$b;->o:Z

    const/4 v1, 0x1

    if-nez v0, :cond_d

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lza/a$b;->m:F

    goto :goto_25

    .line 4
    :cond_d
    iget-object v0, p0, Lza/a$b;->c:[F

    aget v2, v0, v1

    const/4 v3, 0x0

    aget v0, v0, v3

    sub-float/2addr v2, v0

    float-to-double v4, v2

    iget-object v0, p0, Lza/a$b;->b:[F

    aget v2, v0, v1

    aget v0, v0, v3

    sub-float/2addr v2, v0

    float-to-double v2, v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v0, v2

    iput v0, p0, Lza/a$b;->m:F

    .line 5
    :goto_25
    iput-boolean v1, p0, Lza/a$b;->r:Z

    .line 6
    :cond_27
    iget v0, p0, Lza/a$b;->m:F

    return v0
.end method

.method public e()F
    .registers 4

    .line 1
    iget-boolean v0, p0, Lza/a$b;->q:Z

    if-nez v0, :cond_3a

    .line 2
    iget-boolean v0, p0, Lza/a$b;->o:Z

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 3
    iput v1, p0, Lza/a$b;->k:F

    goto :goto_37

    .line 4
    :cond_c
    invoke-virtual {p0}, Lza/a$b;->f()F

    move-result v0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_15

    goto :goto_23

    :cond_15
    const/high16 v1, 0x43800000    # 256.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 5
    invoke-direct {p0, v0}, Lza/a$b;->m(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41800000    # 16.0f

    div-float v1, v0, v1

    :goto_23
    iput v1, p0, Lza/a$b;->k:F

    .line 6
    iget v0, p0, Lza/a$b;->i:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_2d

    .line 7
    iput v0, p0, Lza/a$b;->k:F

    .line 8
    :cond_2d
    iget v0, p0, Lza/a$b;->k:F

    iget v1, p0, Lza/a$b;->j:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_37

    .line 9
    iput v1, p0, Lza/a$b;->k:F

    :cond_37
    :goto_37
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lza/a$b;->q:Z

    .line 11
    :cond_3a
    iget v0, p0, Lza/a$b;->k:F

    return v0
.end method

.method public f()F
    .registers 3

    .line 1
    iget-boolean v0, p0, Lza/a$b;->p:Z

    if-nez v0, :cond_18

    .line 2
    iget-boolean v0, p0, Lza/a$b;->o:Z

    if-eqz v0, :cond_12

    iget v0, p0, Lza/a$b;->i:F

    mul-float v0, v0, v0

    iget v1, p0, Lza/a$b;->j:F

    mul-float v1, v1, v1

    add-float/2addr v0, v1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    iput v0, p0, Lza/a$b;->l:F

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lza/a$b;->p:Z

    .line 4
    :cond_18
    iget v0, p0, Lza/a$b;->l:F

    return v0
.end method

.method public g()F
    .registers 2

    .line 1
    iget-boolean v0, p0, Lza/a$b;->o:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lza/a$b;->j:F

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public h()F
    .registers 2

    .line 1
    iget-boolean v0, p0, Lza/a$b;->o:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lza/a$b;->i:F

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public i()F
    .registers 2

    .line 1
    iget v0, p0, Lza/a$b;->f:F

    return v0
.end method

.method public j()F
    .registers 2

    .line 1
    iget v0, p0, Lza/a$b;->g:F

    return v0
.end method

.method public k()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lza/a$b;->n:Z

    return v0
.end method

.method public l()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lza/a$b;->o:Z

    return v0
.end method

###### Class za.a.c (za.a$c)
.class public Lza/a$c;
.super Ljava/lang/Object;
.source "MultiTouchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lza/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:Z

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lza/a$c;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lza/a$c;->g:Z

    return p0
.end method

.method static synthetic b(Lza/a$c;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lza/a$c;->h:Z

    return p0
.end method

.method static synthetic c(Lza/a$c;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lza/a$c;->i:Z

    return p0
.end method

.method static synthetic d(Lza/a$c;)F
    .registers 1

    .line 1
    iget p0, p0, Lza/a$c;->c:F

    return p0
.end method

.method static synthetic e(Lza/a$c;)F
    .registers 1

    .line 1
    iget p0, p0, Lza/a$c;->a:F

    return p0
.end method

.method static synthetic f(Lza/a$c;)F
    .registers 1

    .line 1
    iget p0, p0, Lza/a$c;->b:F

    return p0
.end method

.method static synthetic g(Lza/a$c;)F
    .registers 1

    .line 1
    iget p0, p0, Lza/a$c;->d:F

    return p0
.end method

.method static synthetic h(Lza/a$c;)F
    .registers 1

    .line 1
    iget p0, p0, Lza/a$c;->e:F

    return p0
.end method

.method static synthetic i(Lza/a$c;)F
    .registers 1

    .line 1
    iget p0, p0, Lza/a$c;->f:F

    return p0
.end method


# virtual methods
.method public j()F
    .registers 2

    .line 1
    iget-boolean v0, p0, Lza/a$c;->i:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_8

    :cond_6
    iget v0, p0, Lza/a$c;->f:F

    :goto_8
    return v0
.end method

.method public k()F
    .registers 2

    .line 1
    iget-boolean v0, p0, Lza/a$c;->g:Z

    if-nez v0, :cond_7

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_9

    :cond_7
    iget v0, p0, Lza/a$c;->c:F

    :goto_9
    return v0
.end method

.method public l()F
    .registers 2

    .line 1
    iget-boolean v0, p0, Lza/a$c;->h:Z

    if-nez v0, :cond_7

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_9

    :cond_7
    iget v0, p0, Lza/a$c;->d:F

    :goto_9
    return v0
.end method

.method public m()F
    .registers 2

    .line 1
    iget-boolean v0, p0, Lza/a$c;->h:Z

    if-nez v0, :cond_7

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_9

    :cond_7
    iget v0, p0, Lza/a$c;->e:F

    :goto_9
    return v0
.end method

.method public n()F
    .registers 2

    .line 1
    iget v0, p0, Lza/a$c;->a:F

    return v0
.end method

.method public o()F
    .registers 2

    .line 1
    iget v0, p0, Lza/a$c;->b:F

    return v0
.end method

.method protected p(FFFFFF)V
    .registers 8

    .line 1
    iput p1, p0, Lza/a$c;->a:F

    .line 2
    iput p2, p0, Lza/a$c;->b:F

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 p2, 0x0

    cmpl-float v0, p3, p2

    if-nez v0, :cond_d

    const/high16 p3, 0x3f800000    # 1.0f

    .line 3
    :cond_d
    iput p3, p0, Lza/a$c;->c:F

    cmpl-float p3, p4, p2

    if-nez p3, :cond_15

    const/high16 p4, 0x3f800000    # 1.0f

    .line 4
    :cond_15
    iput p4, p0, Lza/a$c;->d:F

    cmpl-float p2, p5, p2

    if-nez p2, :cond_1d

    const/high16 p5, 0x3f800000    # 1.0f

    .line 5
    :cond_1d
    iput p5, p0, Lza/a$c;->e:F

    .line 6
    iput p6, p0, Lza/a$c;->f:F

    return-void
.end method

.method public q(FFZFZFFZF)V
    .registers 10

    .line 1
    iput p1, p0, Lza/a$c;->a:F

    .line 2
    iput p2, p0, Lza/a$c;->b:F

    .line 3
    iput-boolean p3, p0, Lza/a$c;->g:Z

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 p2, 0x0

    cmpl-float p3, p4, p2

    if-nez p3, :cond_f

    const/high16 p4, 0x3f800000    # 1.0f

    .line 4
    :cond_f
    iput p4, p0, Lza/a$c;->c:F

    .line 5
    iput-boolean p5, p0, Lza/a$c;->h:Z

    cmpl-float p3, p6, p2

    if-nez p3, :cond_19

    const/high16 p6, 0x3f800000    # 1.0f

    .line 6
    :cond_19
    iput p6, p0, Lza/a$c;->d:F

    cmpl-float p2, p7, p2

    if-nez p2, :cond_21

    const/high16 p7, 0x3f800000    # 1.0f

    .line 7
    :cond_21
    iput p7, p0, Lza/a$c;->e:F

    .line 8
    iput-boolean p8, p0, Lza/a$c;->i:Z

    .line 9
    iput p9, p0, Lza/a$c;->f:F

    return-void
.end method
