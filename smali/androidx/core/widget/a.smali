###### Class androidx.core.widget.a (androidx.core.widget.a)
.class public abstract Landroidx/core/widget/a;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/widget/a$a;,
        Landroidx/core/widget/a$b;
    }
.end annotation


# static fields
.field private static final F:I


# instance fields
.field A:Z

.field B:Z

.field C:Z

.field private D:Z

.field private E:Z

.field final o:Landroidx/core/widget/a$a;

.field private final p:Landroid/view/animation/Interpolator;

.field final q:Landroid/view/View;

.field private r:Ljava/lang/Runnable;

.field private s:[F

.field private t:[F

.field private u:I

.field private v:I

.field private w:[F

.field private x:[F

.field private y:[F

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Landroidx/core/widget/a;->F:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/core/widget/a$a;

    invoke-direct {v0}, Landroidx/core/widget/a$a;-><init>()V

    iput-object v0, p0, Landroidx/core/widget/a;->o:Landroidx/core/widget/a$a;

    .line 3
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroidx/core/widget/a;->p:Landroid/view/animation/Interpolator;

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 4
    fill-array-data v1, :array_7c

    iput-object v1, p0, Landroidx/core/widget/a;->s:[F

    new-array v1, v0, [F

    .line 5
    fill-array-data v1, :array_84

    iput-object v1, p0, Landroidx/core/widget/a;->t:[F

    new-array v1, v0, [F

    .line 6
    fill-array-data v1, :array_8c

    iput-object v1, p0, Landroidx/core/widget/a;->w:[F

    new-array v1, v0, [F

    .line 7
    fill-array-data v1, :array_94

    iput-object v1, p0, Landroidx/core/widget/a;->x:[F

    new-array v0, v0, [F

    .line 8
    fill-array-data v0, :array_9c

    iput-object v0, p0, Landroidx/core/widget/a;->y:[F

    .line 9
    iput-object p1, p0, Landroidx/core/widget/a;->q:Landroid/view/View;

    .line 10
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 11
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const v0, 0x44c4e000    # 1575.0f

    mul-float v0, v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    const v2, 0x439d8000    # 315.0f

    mul-float p1, p1, v2

    add-float/2addr p1, v1

    float-to-int p1, p1

    int-to-float v0, v0

    .line 12
    invoke-virtual {p0, v0, v0}, Landroidx/core/widget/a;->y(FF)Landroidx/core/widget/a;

    int-to-float p1, p1

    .line 13
    invoke-virtual {p0, p1, p1}, Landroidx/core/widget/a;->z(FF)Landroidx/core/widget/a;

    const/4 p1, 0x1

    .line 14
    invoke-virtual {p0, p1}, Landroidx/core/widget/a;->v(I)Landroidx/core/widget/a;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 15
    invoke-virtual {p0, p1, p1}, Landroidx/core/widget/a;->x(FF)Landroidx/core/widget/a;

    const p1, 0x3e4ccccd    # 0.2f

    .line 16
    invoke-virtual {p0, p1, p1}, Landroidx/core/widget/a;->C(FF)Landroidx/core/widget/a;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 17
    invoke-virtual {p0, p1, p1}, Landroidx/core/widget/a;->D(FF)Landroidx/core/widget/a;

    .line 18
    sget p1, Landroidx/core/widget/a;->F:I

    invoke-virtual {p0, p1}, Landroidx/core/widget/a;->u(I)Landroidx/core/widget/a;

    const/16 p1, 0x1f4

    .line 19
    invoke-virtual {p0, p1}, Landroidx/core/widget/a;->B(I)Landroidx/core/widget/a;

    .line 20
    invoke-virtual {p0, p1}, Landroidx/core/widget/a;->A(I)Landroidx/core/widget/a;

    return-void

    :array_7c
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_84
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data

    :array_8c
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_94
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_9c
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data
.end method

.method private F()V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/core/widget/a;->r:Ljava/lang/Runnable;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Landroidx/core/widget/a$b;

    invoke-direct {v0, p0}, Landroidx/core/widget/a$b;-><init>(Landroidx/core/widget/a;)V

    iput-object v0, p0, Landroidx/core/widget/a;->r:Ljava/lang/Runnable;

    :cond_b
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/core/widget/a;->C:Z

    .line 4
    iput-boolean v0, p0, Landroidx/core/widget/a;->A:Z

    .line 5
    iget-boolean v1, p0, Landroidx/core/widget/a;->z:Z

    if-nez v1, :cond_21

    iget v1, p0, Landroidx/core/widget/a;->v:I

    if-lez v1, :cond_21

    .line 6
    iget-object v2, p0, Landroidx/core/widget/a;->q:Landroid/view/View;

    iget-object v3, p0, Landroidx/core/widget/a;->r:Ljava/lang/Runnable;

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Landroidx/core/view/a0;->j0(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_26

    .line 7
    :cond_21
    iget-object v1, p0, Landroidx/core/widget/a;->r:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 8
    :goto_26
    iput-boolean v0, p0, Landroidx/core/widget/a;->z:Z

    return-void
.end method

.method private e(IFFF)F
    .registers 8

    .line 1
    iget-object v0, p0, Landroidx/core/widget/a;->s:[F

    aget v0, v0, p1

    .line 2
    iget-object v1, p0, Landroidx/core/widget/a;->t:[F

    aget v1, v1, p1

    .line 3
    invoke-direct {p0, v0, p3, v1, p2}, Landroidx/core/widget/a;->r(FFFF)F

    move-result p2

    const/4 p3, 0x0

    cmpl-float v0, p2, p3

    if-nez v0, :cond_12

    return p3

    .line 4
    :cond_12
    iget-object v0, p0, Landroidx/core/widget/a;->w:[F

    aget v0, v0, p1

    .line 5
    iget-object v1, p0, Landroidx/core/widget/a;->x:[F

    aget v1, v1, p1

    .line 6
    iget-object v2, p0, Landroidx/core/widget/a;->y:[F

    aget p1, v2, p1

    mul-float v0, v0, p4

    cmpl-float p3, p2, p3

    if-lez p3, :cond_2b

    mul-float p2, p2, v0

    .line 7
    invoke-static {p2, v1, p1}, Landroidx/core/widget/a;->o(FFF)F

    move-result p1

    return p1

    :cond_2b
    neg-float p2, p2

    mul-float p2, p2, v0

    .line 8
    invoke-static {p2, v1, p1}, Landroidx/core/widget/a;->o(FFF)F

    move-result p1

    neg-float p1, p1

    return p1
.end method

.method static o(FFF)F
    .registers 4

    cmpl-float v0, p0, p2

    if-lez v0, :cond_5

    return p2

    :cond_5
    cmpg-float p2, p0, p1

    if-gez p2, :cond_a

    return p1

    :cond_a
    return p0
.end method

.method static p(III)I
    .registers 3

    if-le p0, p2, :cond_3

    return p2

    :cond_3
    if-ge p0, p1, :cond_6

    return p1

    :cond_6
    return p0
.end method

.method private q(FF)F
    .registers 8

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-nez v1, :cond_6

    return v0

    .line 1
    :cond_6
    iget v1, p0, Landroidx/core/widget/a;->u:I

    const/4 v2, 0x1

    if-eqz v1, :cond_18

    if-eq v1, v2, :cond_18

    const/4 v2, 0x2

    if-eq v1, v2, :cond_11

    goto :goto_2c

    :cond_11
    cmpg-float v1, p1, v0

    if-gez v1, :cond_2c

    neg-float p2, p2

    div-float/2addr p1, p2

    return p1

    :cond_18
    cmpg-float v3, p1, p2

    if-gez v3, :cond_2c

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, p1, v0

    if-ltz v4, :cond_25

    div-float/2addr p1, p2

    sub-float/2addr v3, p1

    return v3

    .line 2
    :cond_25
    iget-boolean p1, p0, Landroidx/core/widget/a;->C:Z

    if-eqz p1, :cond_2c

    if-ne v1, v2, :cond_2c

    return v3

    :cond_2c
    :goto_2c
    return v0
.end method

.method private r(FFFF)F
    .registers 6

    mul-float p1, p1, p2

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0, p3}, Landroidx/core/widget/a;->o(FFF)F

    move-result p1

    .line 2
    invoke-direct {p0, p4, p1}, Landroidx/core/widget/a;->q(FF)F

    move-result p3

    sub-float/2addr p2, p4

    .line 3
    invoke-direct {p0, p2, p1}, Landroidx/core/widget/a;->q(FF)F

    move-result p1

    sub-float/2addr p1, p3

    cmpg-float p2, p1, v0

    if-gez p2, :cond_1e

    .line 4
    iget-object p2, p0, Landroidx/core/widget/a;->p:Landroid/view/animation/Interpolator;

    neg-float p1, p1

    invoke-interface {p2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    neg-float p1, p1

    goto :goto_28

    :cond_1e
    cmpl-float p2, p1, v0

    if-lez p2, :cond_31

    .line 5
    iget-object p2, p0, Landroidx/core/widget/a;->p:Landroid/view/animation/Interpolator;

    invoke-interface {p2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    :goto_28
    const/high16 p2, -0x40800000    # -1.0f

    const/high16 p3, 0x3f800000    # 1.0f

    .line 6
    invoke-static {p1, p2, p3}, Landroidx/core/widget/a;->o(FFF)F

    move-result p1

    return p1

    :cond_31
    return v0
.end method

.method private s()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/core/widget/a;->A:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/core/widget/a;->C:Z

    goto :goto_d

    .line 3
    :cond_8
    iget-object v0, p0, Landroidx/core/widget/a;->o:Landroidx/core/widget/a$a;

    invoke-virtual {v0}, Landroidx/core/widget/a$a;->i()V

    :goto_d
    return-void
.end method


# virtual methods
.method public A(I)Landroidx/core/widget/a;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/widget/a;->o:Landroidx/core/widget/a$a;

    invoke-virtual {v0, p1}, Landroidx/core/widget/a$a;->j(I)V

    return-object p0
.end method

.method public B(I)Landroidx/core/widget/a;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/widget/a;->o:Landroidx/core/widget/a$a;

    invoke-virtual {v0, p1}, Landroidx/core/widget/a$a;->k(I)V

    return-object p0
.end method

.method public C(FF)Landroidx/core/widget/a;
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/core/widget/a;->s:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    .line 2
    aput p2, v0, p1

    return-object p0
.end method

.method public D(FF)Landroidx/core/widget/a;
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/core/widget/a;->w:[F

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p1, v1

    const/4 v2, 0x0

    aput p1, v0, v2

    div-float/2addr p2, v1

    const/4 p1, 0x1

    .line 2
    aput p2, v0, p1

    return-object p0
.end method

.method E()Z
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/widget/a;->o:Landroidx/core/widget/a$a;

    .line 2
    invoke-virtual {v0}, Landroidx/core/widget/a$a;->f()I

    move-result v1

    .line 3
    invoke-virtual {v0}, Landroidx/core/widget/a$a;->d()I

    move-result v0

    if-eqz v1, :cond_12

    .line 4
    invoke-virtual {p0, v1}, Landroidx/core/widget/a;->b(I)Z

    move-result v1

    if-nez v1, :cond_1a

    :cond_12
    if-eqz v0, :cond_1c

    .line 5
    invoke-virtual {p0, v0}, Landroidx/core/widget/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0
.end method

.method public abstract a(I)Z
.end method

.method public abstract b(I)Z
.end method

.method d()V
    .registers 9

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v0, v2

    .line 2
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 3
    iget-object v1, p0, Landroidx/core/widget/a;->q:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    .line 1
    iget-boolean v0, p0, Landroidx/core/widget/a;->D:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1a

    if-eq v0, v2, :cond_16

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1e

    const/4 p1, 0x3

    if-eq v0, p1, :cond_16

    goto :goto_58

    .line 3
    :cond_16
    invoke-direct {p0}, Landroidx/core/widget/a;->s()V

    goto :goto_58

    .line 4
    :cond_1a
    iput-boolean v2, p0, Landroidx/core/widget/a;->B:Z

    .line 5
    iput-boolean v1, p0, Landroidx/core/widget/a;->z:Z

    .line 6
    :cond_1e
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Landroidx/core/widget/a;->q:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    .line 7
    invoke-direct {p0, v1, v0, v3, v4}, Landroidx/core/widget/a;->e(IFFF)F

    move-result v0

    .line 8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget-object v3, p0, Landroidx/core/widget/a;->q:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 9
    invoke-direct {p0, v2, p2, p1, v3}, Landroidx/core/widget/a;->e(IFFF)F

    move-result p1

    .line 10
    iget-object p2, p0, Landroidx/core/widget/a;->o:Landroidx/core/widget/a$a;

    invoke-virtual {p2, v0, p1}, Landroidx/core/widget/a$a;->l(FF)V

    .line 11
    iget-boolean p1, p0, Landroidx/core/widget/a;->C:Z

    if-nez p1, :cond_58

    invoke-virtual {p0}, Landroidx/core/widget/a;->E()Z

    move-result p1

    if-eqz p1, :cond_58

    .line 12
    invoke-direct {p0}, Landroidx/core/widget/a;->F()V

    .line 13
    :cond_58
    :goto_58
    iget-boolean p1, p0, Landroidx/core/widget/a;->E:Z

    if-eqz p1, :cond_61

    iget-boolean p1, p0, Landroidx/core/widget/a;->C:Z

    if-eqz p1, :cond_61

    const/4 v1, 0x1

    :cond_61
    return v1
.end method

.method public abstract t(II)V
.end method

.method public u(I)Landroidx/core/widget/a;
    .registers 2

    .line 1
    iput p1, p0, Landroidx/core/widget/a;->v:I

    return-object p0
.end method

.method public v(I)Landroidx/core/widget/a;
    .registers 2

    .line 1
    iput p1, p0, Landroidx/core/widget/a;->u:I

    return-object p0
.end method

.method public w(Z)Landroidx/core/widget/a;
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/core/widget/a;->D:Z

    if-eqz v0, :cond_9

    if-nez p1, :cond_9

    .line 2
    invoke-direct {p0}, Landroidx/core/widget/a;->s()V

    .line 3
    :cond_9
    iput-boolean p1, p0, Landroidx/core/widget/a;->D:Z

    return-object p0
.end method

.method public x(FF)Landroidx/core/widget/a;
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/core/widget/a;->t:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    .line 2
    aput p2, v0, p1

    return-object p0
.end method

.method public y(FF)Landroidx/core/widget/a;
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/core/widget/a;->y:[F

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p1, v1

    const/4 v2, 0x0

    aput p1, v0, v2

    div-float/2addr p2, v1

    const/4 p1, 0x1

    .line 2
    aput p2, v0, p1

    return-object p0
.end method

.method public z(FF)Landroidx/core/widget/a;
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/core/widget/a;->x:[F

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p1, v1

    const/4 v2, 0x0

    aput p1, v0, v2

    div-float/2addr p2, v1

    const/4 p1, 0x1

    .line 2
    aput p2, v0, p1

    return-object p0
.end method

###### Class androidx.core.widget.a.C0043a (androidx.core.widget.a$a)
.class Landroidx/core/widget/a$a;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:F

.field private d:F

.field private e:J

.field private f:J

.field private g:I

.field private h:I

.field private i:J

.field private j:F

.field private k:I


# direct methods
.method constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 2
    iput-wide v0, p0, Landroidx/core/widget/a$a;->e:J

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Landroidx/core/widget/a$a;->i:J

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Landroidx/core/widget/a$a;->f:J

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/core/widget/a$a;->g:I

    .line 6
    iput v0, p0, Landroidx/core/widget/a$a;->h:I

    return-void
.end method

.method private e(J)F
    .registers 12

    .line 1
    iget-wide v0, p0, Landroidx/core/widget/a$a;->e:J

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-gez v3, :cond_8

    return v2

    .line 2
    :cond_8
    iget-wide v3, p0, Landroidx/core/widget/a$a;->i:J

    const-wide/16 v5, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    cmp-long v8, v3, v5

    if-ltz v8, :cond_29

    cmp-long v5, p1, v3

    if-gez v5, :cond_17

    goto :goto_29

    :cond_17
    sub-long/2addr p1, v3

    .line 3
    iget v0, p0, Landroidx/core/widget/a$a;->j:F

    sub-float v1, v7, v0

    long-to-float p1, p1

    iget p2, p0, Landroidx/core/widget/a$a;->k:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 4
    invoke-static {p1, v2, v7}, Landroidx/core/widget/a;->o(FFF)F

    move-result p1

    mul-float v0, v0, p1

    add-float/2addr v1, v0

    return v1

    :cond_29
    :goto_29
    sub-long/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    long-to-float p1, p1

    .line 5
    iget p2, p0, Landroidx/core/widget/a$a;->a:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-static {p1, v2, v7}, Landroidx/core/widget/a;->o(FFF)F

    move-result p1

    mul-float p1, p1, v0

    return p1
.end method

.method private g(F)F
    .registers 4

    const/high16 v0, -0x3f800000    # -4.0f

    mul-float v0, v0, p1

    mul-float v0, v0, p1

    const/high16 v1, 0x40800000    # 4.0f

    mul-float p1, p1, v1

    add-float/2addr v0, p1

    return v0
.end method


# virtual methods
.method public a()V
    .registers 6

    .line 1
    iget-wide v0, p0, Landroidx/core/widget/a$a;->f:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2c

    .line 2
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 3
    invoke-direct {p0, v0, v1}, Landroidx/core/widget/a$a;->e(J)F

    move-result v2

    .line 4
    invoke-direct {p0, v2}, Landroidx/core/widget/a$a;->g(F)F

    move-result v2

    .line 5
    iget-wide v3, p0, Landroidx/core/widget/a$a;->f:J

    sub-long v3, v0, v3

    .line 6
    iput-wide v0, p0, Landroidx/core/widget/a$a;->f:J

    long-to-float v0, v3

    mul-float v0, v0, v2

    .line 7
    iget v1, p0, Landroidx/core/widget/a$a;->c:F

    mul-float v1, v1, v0

    float-to-int v1, v1

    iput v1, p0, Landroidx/core/widget/a$a;->g:I

    .line 8
    iget v1, p0, Landroidx/core/widget/a$a;->d:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroidx/core/widget/a$a;->h:I

    return-void

    .line 9
    :cond_2c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot compute scroll delta before calling start()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/core/widget/a$a;->g:I

    return v0
.end method

.method public c()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/core/widget/a$a;->h:I

    return v0
.end method

.method public d()I
    .registers 3

    .line 1
    iget v0, p0, Landroidx/core/widget/a$a;->c:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public f()I
    .registers 3

    .line 1
    iget v0, p0, Landroidx/core/widget/a$a;->d:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public h()Z
    .registers 7

    .line 1
    iget-wide v0, p0, Landroidx/core/widget/a$a;->i:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_18

    .line 2
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/core/widget/a$a;->i:J

    iget v4, p0, Landroidx/core/widget/a$a;->k:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method public i()V
    .registers 6

    .line 1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Landroidx/core/widget/a$a;->e:J

    sub-long v2, v0, v2

    long-to-int v3, v2

    iget v2, p0, Landroidx/core/widget/a$a;->b:I

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Landroidx/core/widget/a;->p(III)I

    move-result v2

    iput v2, p0, Landroidx/core/widget/a$a;->k:I

    .line 3
    invoke-direct {p0, v0, v1}, Landroidx/core/widget/a$a;->e(J)F

    move-result v2

    iput v2, p0, Landroidx/core/widget/a$a;->j:F

    .line 4
    iput-wide v0, p0, Landroidx/core/widget/a$a;->i:J

    return-void
.end method

.method public j(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/core/widget/a$a;->b:I

    return-void
.end method

.method public k(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/core/widget/a$a;->a:I

    return-void
.end method

.method public l(FF)V
    .registers 3

    .line 1
    iput p1, p0, Landroidx/core/widget/a$a;->c:F

    .line 2
    iput p2, p0, Landroidx/core/widget/a$a;->d:F

    return-void
.end method

.method public m()V
    .registers 5

    .line 1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/core/widget/a$a;->e:J

    const-wide/16 v2, -0x1

    .line 2
    iput-wide v2, p0, Landroidx/core/widget/a$a;->i:J

    .line 3
    iput-wide v0, p0, Landroidx/core/widget/a$a;->f:J

    const/high16 v0, 0x3f000000    # 0.5f

    .line 4
    iput v0, p0, Landroidx/core/widget/a$a;->j:F

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/core/widget/a$a;->g:I

    .line 6
    iput v0, p0, Landroidx/core/widget/a$a;->h:I

    return-void
.end method

###### Class androidx.core.widget.a.b (androidx.core.widget.a$b)
.class Landroidx/core/widget/a$b;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic o:Landroidx/core/widget/a;


# direct methods
.method constructor <init>(Landroidx/core/widget/a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/core/widget/a$b;->o:Landroidx/core/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/core/widget/a$b;->o:Landroidx/core/widget/a;

    iget-boolean v1, v0, Landroidx/core/widget/a;->C:Z

    if-nez v1, :cond_7

    return-void

    .line 2
    :cond_7
    iget-boolean v1, v0, Landroidx/core/widget/a;->A:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    .line 3
    iput-boolean v2, v0, Landroidx/core/widget/a;->A:Z

    .line 4
    iget-object v0, v0, Landroidx/core/widget/a;->o:Landroidx/core/widget/a$a;

    invoke-virtual {v0}, Landroidx/core/widget/a$a;->m()V

    .line 5
    :cond_13
    iget-object v0, p0, Landroidx/core/widget/a$b;->o:Landroidx/core/widget/a;

    iget-object v0, v0, Landroidx/core/widget/a;->o:Landroidx/core/widget/a$a;

    .line 6
    invoke-virtual {v0}, Landroidx/core/widget/a$a;->h()Z

    move-result v1

    if-nez v1, :cond_49

    iget-object v1, p0, Landroidx/core/widget/a$b;->o:Landroidx/core/widget/a;

    invoke-virtual {v1}, Landroidx/core/widget/a;->E()Z

    move-result v1

    if-nez v1, :cond_26

    goto :goto_49

    .line 7
    :cond_26
    iget-object v1, p0, Landroidx/core/widget/a$b;->o:Landroidx/core/widget/a;

    iget-boolean v3, v1, Landroidx/core/widget/a;->B:Z

    if-eqz v3, :cond_31

    .line 8
    iput-boolean v2, v1, Landroidx/core/widget/a;->B:Z

    .line 9
    invoke-virtual {v1}, Landroidx/core/widget/a;->d()V

    .line 10
    :cond_31
    invoke-virtual {v0}, Landroidx/core/widget/a$a;->a()V

    .line 11
    invoke-virtual {v0}, Landroidx/core/widget/a$a;->b()I

    move-result v1

    .line 12
    invoke-virtual {v0}, Landroidx/core/widget/a$a;->c()I

    move-result v0

    .line 13
    iget-object v2, p0, Landroidx/core/widget/a$b;->o:Landroidx/core/widget/a;

    invoke-virtual {v2, v1, v0}, Landroidx/core/widget/a;->t(II)V

    .line 14
    iget-object v0, p0, Landroidx/core/widget/a$b;->o:Landroidx/core/widget/a;

    iget-object v0, v0, Landroidx/core/widget/a;->q:Landroid/view/View;

    invoke-static {v0, p0}, Landroidx/core/view/a0;->i0(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void

    .line 15
    :cond_49
    :goto_49
    iget-object v0, p0, Landroidx/core/widget/a$b;->o:Landroidx/core/widget/a;

    iput-boolean v2, v0, Landroidx/core/widget/a;->C:Z

    return-void
.end method
