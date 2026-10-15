###### Class e1.a (e1.a)
.class public Le1/a;
.super Landroid/graphics/drawable/Drawable;
.source "CircularProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le1/a$c;
    }
.end annotation


# static fields
.field private static final u:Landroid/view/animation/Interpolator;

.field private static final v:Landroid/view/animation/Interpolator;

.field private static final w:[I


# instance fields
.field private final o:Le1/a$c;

.field private p:F

.field private q:Landroid/content/res/Resources;

.field private r:Landroid/animation/Animator;

.field s:F

.field t:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Le1/a;->u:Landroid/view/animation/Interpolator;

    .line 2
    new-instance v0, Lp0/b;

    invoke-direct {v0}, Lp0/b;-><init>()V

    sput-object v0, Le1/a;->v:Landroid/view/animation/Interpolator;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/high16 v2, -0x1000000

    aput v2, v0, v1

    .line 3
    sput-object v0, Le1/a;->w:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    invoke-static {p1}, Landroidx/core/util/h;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Le1/a;->q:Landroid/content/res/Resources;

    .line 3
    new-instance p1, Le1/a$c;

    invoke-direct {p1}, Le1/a$c;-><init>()V

    iput-object p1, p0, Le1/a;->o:Le1/a$c;

    .line 4
    sget-object v0, Le1/a;->w:[I

    invoke-virtual {p1, v0}, Le1/a$c;->s([I)V

    const/high16 p1, 0x40200000    # 2.5f

    .line 5
    invoke-virtual {p0, p1}, Le1/a;->f(F)V

    .line 6
    invoke-direct {p0}, Le1/a;->g()V

    return-void
.end method

.method private a(FLe1/a$c;)V
    .registers 7

    .line 1
    invoke-virtual {p0, p1, p2}, Le1/a;->h(FLe1/a$c;)V

    .line 2
    invoke-virtual {p2}, Le1/a$c;->j()F

    move-result v0

    const v1, 0x3f4ccccd    # 0.8f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float v0, v0

    .line 3
    invoke-virtual {p2}, Le1/a$c;->k()F

    move-result v1

    .line 4
    invoke-virtual {p2}, Le1/a$c;->i()F

    move-result v2

    const v3, 0x3c23d70a    # 0.01f

    sub-float/2addr v2, v3

    invoke-virtual {p2}, Le1/a$c;->k()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    .line 5
    invoke-virtual {p2, v1}, Le1/a$c;->w(F)V

    .line 6
    invoke-virtual {p2}, Le1/a$c;->i()F

    move-result v1

    invoke-virtual {p2, v1}, Le1/a$c;->t(F)V

    .line 7
    invoke-virtual {p2}, Le1/a$c;->j()F

    move-result v1

    .line 8
    invoke-virtual {p2}, Le1/a$c;->j()F

    move-result v2

    sub-float/2addr v0, v2

    mul-float v0, v0, p1

    add-float/2addr v1, v0

    .line 9
    invoke-virtual {p2, v1}, Le1/a$c;->u(F)V

    return-void
.end method

.method private c(FII)I
    .registers 10

    shr-int/lit8 v0, p2, 0x18

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 p2, p2, 0xff

    shr-int/lit8 v3, p3, 0x18

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v4, p3, 0x10

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v5, p3, 0x8

    and-int/lit16 v5, v5, 0xff

    and-int/lit16 p3, p3, 0xff

    sub-int/2addr v3, v0

    int-to-float v3, v3

    mul-float v3, v3, p1

    float-to-int v3, v3

    add-int/2addr v0, v3

    shl-int/lit8 v0, v0, 0x18

    sub-int/2addr v4, v1

    int-to-float v3, v4

    mul-float v3, v3, p1

    float-to-int v3, v3

    add-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    sub-int/2addr v5, v2

    int-to-float v1, v5

    mul-float v1, v1, p1

    float-to-int v1, v1

    add-int/2addr v2, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    sub-int/2addr p3, p2

    int-to-float p3, p3

    mul-float p1, p1, p3

    float-to-int p1, p1

    add-int/2addr p2, p1

    or-int p1, v0, p2

    return p1
.end method

.method private e(F)V
    .registers 2

    .line 1
    iput p1, p0, Le1/a;->p:F

    return-void
.end method

.method private g()V
    .registers 4

    .line 1
    iget-object v0, p0, Le1/a;->o:Le1/a$c;

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 2
    fill-array-data v1, :array_2c

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 3
    new-instance v2, Le1/a$a;

    invoke-direct {v2, p0, v0}, Le1/a$a;-><init>(Le1/a;Le1/a$c;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v2, -0x1

    .line 4
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 6
    sget-object v2, Le1/a;->u:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 7
    new-instance v2, Le1/a$b;

    invoke-direct {v2, p0, v0}, Le1/a$b;-><init>(Le1/a;Le1/a$c;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 8
    iput-object v1, p0, Le1/a;->r:Landroid/animation/Animator;

    return-void

    :array_2c
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method b(FLe1/a$c;Z)V
    .registers 11

    .line 1
    iget-boolean v0, p0, Le1/a;->t:Z

    if-eqz v0, :cond_8

    .line 2
    invoke-direct {p0, p1, p2}, Le1/a;->a(FLe1/a$c;)V

    goto :goto_61

    :cond_8
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-nez v1, :cond_10

    if-eqz p3, :cond_61

    .line 3
    :cond_10
    invoke-virtual {p2}, Le1/a$c;->j()F

    move-result p3

    const v1, 0x3c23d70a    # 0.01f

    const v2, 0x3f4a3d71    # 0.79f

    const/high16 v3, 0x3f000000    # 0.5f

    cmpg-float v4, p1, v3

    if-gez v4, :cond_31

    div-float v0, p1, v3

    .line 4
    invoke-virtual {p2}, Le1/a$c;->k()F

    move-result v3

    .line 5
    sget-object v4, Le1/a;->v:Landroid/view/animation/Interpolator;

    .line 6
    invoke-interface {v4, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float v0, v0, v2

    add-float/2addr v0, v1

    add-float/2addr v0, v3

    goto :goto_48

    :cond_31
    sub-float v4, p1, v3

    div-float/2addr v4, v3

    .line 7
    invoke-virtual {p2}, Le1/a$c;->k()F

    move-result v3

    add-float/2addr v3, v2

    .line 8
    sget-object v5, Le1/a;->v:Landroid/view/animation/Interpolator;

    .line 9
    invoke-interface {v5, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    sub-float/2addr v0, v4

    mul-float v0, v0, v2

    add-float/2addr v0, v1

    sub-float v0, v3, v0

    move v6, v3

    move v3, v0

    move v0, v6

    :goto_48
    const v1, 0x3e570a3c    # 0.20999998f

    mul-float v1, v1, p1

    add-float/2addr p3, v1

    const/high16 v1, 0x43580000    # 216.0f

    .line 10
    iget v2, p0, Le1/a;->s:F

    add-float/2addr p1, v2

    mul-float p1, p1, v1

    .line 11
    invoke-virtual {p2, v3}, Le1/a$c;->w(F)V

    .line 12
    invoke-virtual {p2, v0}, Le1/a$c;->t(F)V

    .line 13
    invoke-virtual {p2, p3}, Le1/a$c;->u(F)V

    .line 14
    invoke-direct {p0, p1}, Le1/a;->e(F)V

    :cond_61
    :goto_61
    return-void
.end method

.method public d(F)V
    .registers 3

    .line 1
    iget-object v0, p0, Le1/a;->o:Le1/a$c;

    invoke-virtual {v0, p1}, Le1/a$c;->o(F)V

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3
    iget v1, p0, Le1/a;->p:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 4
    iget-object v1, p0, Le1/a;->o:Le1/a$c;

    invoke-virtual {v1, p1, v0}, Le1/a$c;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public f(F)V
    .registers 3

    .line 1
    iget-object v0, p0, Le1/a;->o:Le1/a$c;

    invoke-virtual {v0, p1}, Le1/a$c;->x(F)V

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public getAlpha()I
    .registers 2

    .line 1
    iget-object v0, p0, Le1/a;->o:Le1/a$c;

    invoke-virtual {v0}, Le1/a$c;->c()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x3

    return v0
.end method

.method h(FLe1/a$c;)V
    .registers 5

    const/high16 v0, 0x3f400000    # 0.75f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1a

    sub-float/2addr p1, v0

    const/high16 v0, 0x3e800000    # 0.25f

    div-float/2addr p1, v0

    .line 1
    invoke-virtual {p2}, Le1/a$c;->h()I

    move-result v0

    .line 2
    invoke-virtual {p2}, Le1/a$c;->e()I

    move-result v1

    .line 3
    invoke-direct {p0, p1, v0, v1}, Le1/a;->c(FII)I

    move-result p1

    invoke-virtual {p2, p1}, Le1/a$c;->p(I)V

    goto :goto_21

    .line 4
    :cond_1a
    invoke-virtual {p2}, Le1/a$c;->h()I

    move-result p1

    invoke-virtual {p2, p1}, Le1/a$c;->p(I)V

    :goto_21
    return-void
.end method

.method public isRunning()Z
    .registers 2

    .line 1
    iget-object v0, p0, Le1/a;->r:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Le1/a;->o:Le1/a$c;

    invoke-virtual {v0, p1}, Le1/a$c;->n(I)V

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 1
    iget-object v0, p0, Le1/a;->o:Le1/a$c;

    invoke-virtual {v0, p1}, Le1/a$c;->q(Landroid/graphics/ColorFilter;)V

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public start()V
    .registers 4

    .line 1
    iget-object v0, p0, Le1/a;->r:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2
    iget-object v0, p0, Le1/a;->o:Le1/a$c;

    invoke-virtual {v0}, Le1/a$c;->y()V

    .line 3
    iget-object v0, p0, Le1/a;->o:Le1/a$c;

    invoke-virtual {v0}, Le1/a$c;->d()F

    move-result v0

    iget-object v1, p0, Le1/a;->o:Le1/a$c;

    invoke-virtual {v1}, Le1/a$c;->g()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Le1/a;->t:Z

    .line 5
    iget-object v0, p0, Le1/a;->r:Landroid/animation/Animator;

    const-wide/16 v1, 0x29a

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 6
    iget-object v0, p0, Le1/a;->r:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_41

    .line 7
    :cond_2a
    iget-object v0, p0, Le1/a;->o:Le1/a$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Le1/a$c;->r(I)V

    .line 8
    iget-object v0, p0, Le1/a;->o:Le1/a$c;

    invoke-virtual {v0}, Le1/a$c;->m()V

    .line 9
    iget-object v0, p0, Le1/a;->r:Landroid/animation/Animator;

    const-wide/16 v1, 0x534

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 10
    iget-object v0, p0, Le1/a;->r:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :goto_41
    return-void
.end method

.method public stop()V
    .registers 3

    .line 1
    iget-object v0, p0, Le1/a;->r:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Le1/a;->e(F)V

    .line 3
    iget-object v0, p0, Le1/a;->o:Le1/a$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Le1/a$c;->v(Z)V

    .line 4
    iget-object v0, p0, Le1/a;->o:Le1/a$c;

    invoke-virtual {v0, v1}, Le1/a$c;->r(I)V

    .line 5
    iget-object v0, p0, Le1/a;->o:Le1/a$c;

    invoke-virtual {v0}, Le1/a$c;->m()V

    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

###### Class e1.a.C0150a (e1.a$a)
.class Le1/a$a;
.super Ljava/lang/Object;
.source "CircularProgressDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le1/a;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Le1/a$c;

.field final synthetic b:Le1/a;


# direct methods
.method constructor <init>(Le1/a;Le1/a$c;)V
    .registers 3

    .line 1
    iput-object p1, p0, Le1/a$a;->b:Le1/a;

    iput-object p2, p0, Le1/a$a;->a:Le1/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2
    iget-object v0, p0, Le1/a$a;->b:Le1/a;

    iget-object v1, p0, Le1/a$a;->a:Le1/a$c;

    invoke-virtual {v0, p1, v1}, Le1/a;->h(FLe1/a$c;)V

    .line 3
    iget-object v0, p0, Le1/a$a;->b:Le1/a;

    iget-object v1, p0, Le1/a$a;->a:Le1/a$c;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Le1/a;->b(FLe1/a$c;Z)V

    .line 4
    iget-object p1, p0, Le1/a$a;->b:Le1/a;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

###### Class e1.a.b (e1.a$b)
.class Le1/a$b;
.super Ljava/lang/Object;
.source "CircularProgressDrawable.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le1/a;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Le1/a$c;

.field final synthetic b:Le1/a;


# direct methods
.method constructor <init>(Le1/a;Le1/a$c;)V
    .registers 3

    .line 1
    iput-object p1, p0, Le1/a$b;->b:Le1/a;

    iput-object p2, p0, Le1/a$b;->a:Le1/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 6

    .line 1
    iget-object v0, p0, Le1/a$b;->b:Le1/a;

    iget-object v1, p0, Le1/a$b;->a:Le1/a$c;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Le1/a;->b(FLe1/a$c;Z)V

    .line 2
    iget-object v0, p0, Le1/a$b;->a:Le1/a$c;

    invoke-virtual {v0}, Le1/a$c;->y()V

    .line 3
    iget-object v0, p0, Le1/a$b;->a:Le1/a$c;

    invoke-virtual {v0}, Le1/a$c;->l()V

    .line 4
    iget-object v0, p0, Le1/a$b;->b:Le1/a;

    iget-boolean v1, v0, Le1/a;->t:Z

    if-eqz v1, :cond_2e

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, v0, Le1/a;->t:Z

    .line 6
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    const-wide/16 v2, 0x534

    .line 7
    invoke-virtual {p1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 8
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 9
    iget-object p1, p0, Le1/a$b;->a:Le1/a$c;

    invoke-virtual {p1, v1}, Le1/a$c;->v(Z)V

    goto :goto_33

    .line 10
    :cond_2e
    iget p1, v0, Le1/a;->s:F

    add-float/2addr p1, v2

    iput p1, v0, Le1/a;->s:F

    :goto_33
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 1
    iget-object p1, p0, Le1/a$b;->b:Le1/a;

    const/4 v0, 0x0

    iput v0, p1, Le1/a;->s:F

    return-void
.end method

###### Class e1.a.c (e1.a$c)
.class Le1/a$c;
.super Ljava/lang/Object;
.source "CircularProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field final a:Landroid/graphics/RectF;

.field final b:Landroid/graphics/Paint;

.field final c:Landroid/graphics/Paint;

.field final d:Landroid/graphics/Paint;

.field e:F

.field f:F

.field g:F

.field h:F

.field i:[I

.field j:I

.field k:F

.field l:F

.field m:F

.field n:Z

.field o:Landroid/graphics/Path;

.field p:F

.field q:F

.field r:I

.field s:I

.field t:I

.field u:I


# direct methods
.method constructor <init>()V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Le1/a$c;->a:Landroid/graphics/RectF;

    .line 3
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Le1/a$c;->b:Landroid/graphics/Paint;

    .line 4
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Le1/a$c;->c:Landroid/graphics/Paint;

    .line 5
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Le1/a$c;->d:Landroid/graphics/Paint;

    const/4 v3, 0x0

    .line 6
    iput v3, p0, Le1/a$c;->e:F

    .line 7
    iput v3, p0, Le1/a$c;->f:F

    .line 8
    iput v3, p0, Le1/a$c;->g:F

    const/high16 v3, 0x40a00000    # 5.0f

    .line 9
    iput v3, p0, Le1/a$c;->h:F

    const/high16 v3, 0x3f800000    # 1.0f

    .line 10
    iput v3, p0, Le1/a$c;->p:F

    const/16 v3, 0xff

    .line 11
    iput v3, p0, Le1/a$c;->t:I

    .line 12
    sget-object v3, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/4 v3, 0x1

    .line 13
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 14
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 15
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 16
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v0, 0x0

    .line 17
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 11

    .line 1
    iget-object v6, p0, Le1/a$c;->a:Landroid/graphics/RectF;

    .line 2
    iget v0, p0, Le1/a$c;->q:F

    iget v1, p0, Le1/a$c;->h:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v1, v0

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_2e

    .line 3
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iget v1, p0, Le1/a$c;->r:I

    int-to-float v1, v1

    iget v3, p0, Le1/a$c;->p:F

    mul-float v1, v1, v3

    div-float/2addr v1, v2

    iget v3, p0, Le1/a$c;->h:F

    div-float/2addr v3, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    sub-float v1, v0, v1

    .line 4
    :cond_2e
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v1

    .line 5
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v1

    .line 6
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v1

    .line 7
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p2, v1

    .line 8
    invoke-virtual {v6, v0, v3, v4, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 9
    iget p2, p0, Le1/a$c;->e:F

    iget v0, p0, Le1/a$c;->g:F

    add-float/2addr p2, v0

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float p2, p2, v1

    .line 10
    iget v3, p0, Le1/a$c;->f:F

    add-float/2addr v3, v0

    mul-float v3, v3, v1

    sub-float v7, v3, p2

    .line 11
    iget-object v0, p0, Le1/a$c;->b:Landroid/graphics/Paint;

    iget v1, p0, Le1/a$c;->u:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    iget-object v0, p0, Le1/a$c;->b:Landroid/graphics/Paint;

    iget v1, p0, Le1/a$c;->t:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 13
    iget v0, p0, Le1/a$c;->h:F

    div-float/2addr v0, v2

    .line 14
    invoke-virtual {v6, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 15
    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, v2

    iget-object v2, p0, Le1/a$c;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v4, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    neg-float v0, v0

    .line 16
    invoke-virtual {v6, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    const/4 v4, 0x0

    .line 17
    iget-object v5, p0, Le1/a$c;->b:Landroid/graphics/Paint;

    move-object v0, p1

    move-object v1, v6

    move v2, p2

    move v3, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 18
    invoke-virtual {p0, p1, p2, v7, v6}, Le1/a$c;->b(Landroid/graphics/Canvas;FFLandroid/graphics/RectF;)V

    return-void
.end method

.method b(Landroid/graphics/Canvas;FFLandroid/graphics/RectF;)V
    .registers 12

    .line 1
    iget-boolean v0, p0, Le1/a$c;->n:Z

    if-eqz v0, :cond_92

    .line 2
    iget-object v0, p0, Le1/a$c;->o:Landroid/graphics/Path;

    if-nez v0, :cond_15

    .line 3
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Le1/a$c;->o:Landroid/graphics/Path;

    .line 4
    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    goto :goto_18

    .line 5
    :cond_15
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 6
    :goto_18
    invoke-virtual {p4}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 7
    iget v2, p0, Le1/a$c;->r:I

    int-to-float v2, v2

    iget v3, p0, Le1/a$c;->p:F

    mul-float v2, v2, v3

    div-float/2addr v2, v1

    .line 8
    iget-object v3, p0, Le1/a$c;->o:Landroid/graphics/Path;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 9
    iget-object v3, p0, Le1/a$c;->o:Landroid/graphics/Path;

    iget v5, p0, Le1/a$c;->r:I

    int-to-float v5, v5

    iget v6, p0, Le1/a$c;->p:F

    mul-float v5, v5, v6

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 10
    iget-object v3, p0, Le1/a$c;->o:Landroid/graphics/Path;

    iget v4, p0, Le1/a$c;->r:I

    int-to-float v4, v4

    iget v5, p0, Le1/a$c;->p:F

    mul-float v4, v4, v5

    div-float/2addr v4, v1

    iget v6, p0, Le1/a$c;->s:I

    int-to-float v6, v6

    mul-float v6, v6, v5

    invoke-virtual {v3, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 11
    iget-object v3, p0, Le1/a$c;->o:Landroid/graphics/Path;

    invoke-virtual {p4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    add-float/2addr v0, v4

    sub-float/2addr v0, v2

    .line 12
    invoke-virtual {p4}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget v4, p0, Le1/a$c;->h:F

    div-float/2addr v4, v1

    add-float/2addr v2, v4

    .line 13
    invoke-virtual {v3, v0, v2}, Landroid/graphics/Path;->offset(FF)V

    .line 14
    iget-object v0, p0, Le1/a$c;->o:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 15
    iget-object v0, p0, Le1/a$c;->c:Landroid/graphics/Paint;

    iget v1, p0, Le1/a$c;->u:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 16
    iget-object v0, p0, Le1/a$c;->c:Landroid/graphics/Paint;

    iget v1, p0, Le1/a$c;->t:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 17
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    add-float/2addr p2, p3

    .line 18
    invoke-virtual {p4}, Landroid/graphics/RectF;->centerX()F

    move-result p3

    .line 19
    invoke-virtual {p4}, Landroid/graphics/RectF;->centerY()F

    move-result p4

    .line 20
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 21
    iget-object p2, p0, Le1/a$c;->o:Landroid/graphics/Path;

    iget-object p3, p0, Le1/a$c;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 22
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_92
    return-void
.end method

.method c()I
    .registers 2

    .line 1
    iget v0, p0, Le1/a$c;->t:I

    return v0
.end method

.method d()F
    .registers 2

    .line 1
    iget v0, p0, Le1/a$c;->f:F

    return v0
.end method

.method e()I
    .registers 3

    .line 1
    iget-object v0, p0, Le1/a$c;->i:[I

    invoke-virtual {p0}, Le1/a$c;->f()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method f()I
    .registers 3

    .line 1
    iget v0, p0, Le1/a$c;->j:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Le1/a$c;->i:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    return v0
.end method

.method g()F
    .registers 2

    .line 1
    iget v0, p0, Le1/a$c;->e:F

    return v0
.end method

.method h()I
    .registers 3

    .line 1
    iget-object v0, p0, Le1/a$c;->i:[I

    iget v1, p0, Le1/a$c;->j:I

    aget v0, v0, v1

    return v0
.end method

.method i()F
    .registers 2

    .line 1
    iget v0, p0, Le1/a$c;->l:F

    return v0
.end method

.method j()F
    .registers 2

    .line 1
    iget v0, p0, Le1/a$c;->m:F

    return v0
.end method

.method k()F
    .registers 2

    .line 1
    iget v0, p0, Le1/a$c;->k:F

    return v0
.end method

.method l()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Le1/a$c;->f()I

    move-result v0

    invoke-virtual {p0, v0}, Le1/a$c;->r(I)V

    return-void
.end method

.method m()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Le1/a$c;->k:F

    .line 2
    iput v0, p0, Le1/a$c;->l:F

    .line 3
    iput v0, p0, Le1/a$c;->m:F

    .line 4
    invoke-virtual {p0, v0}, Le1/a$c;->w(F)V

    .line 5
    invoke-virtual {p0, v0}, Le1/a$c;->t(F)V

    .line 6
    invoke-virtual {p0, v0}, Le1/a$c;->u(F)V

    return-void
.end method

.method n(I)V
    .registers 2

    .line 1
    iput p1, p0, Le1/a$c;->t:I

    return-void
.end method

.method o(F)V
    .registers 2

    .line 1
    iput p1, p0, Le1/a$c;->q:F

    return-void
.end method

.method p(I)V
    .registers 2

    .line 1
    iput p1, p0, Le1/a$c;->u:I

    return-void
.end method

.method q(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 1
    iget-object v0, p0, Le1/a$c;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method r(I)V
    .registers 3

    .line 1
    iput p1, p0, Le1/a$c;->j:I

    .line 2
    iget-object v0, p0, Le1/a$c;->i:[I

    aget p1, v0, p1

    iput p1, p0, Le1/a$c;->u:I

    return-void
.end method

.method s([I)V
    .registers 2

    .line 1
    iput-object p1, p0, Le1/a$c;->i:[I

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Le1/a$c;->r(I)V

    return-void
.end method

.method t(F)V
    .registers 2

    .line 1
    iput p1, p0, Le1/a$c;->f:F

    return-void
.end method

.method u(F)V
    .registers 2

    .line 1
    iput p1, p0, Le1/a$c;->g:F

    return-void
.end method

.method v(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Le1/a$c;->n:Z

    if-eq v0, p1, :cond_6

    .line 2
    iput-boolean p1, p0, Le1/a$c;->n:Z

    :cond_6
    return-void
.end method

.method w(F)V
    .registers 2

    .line 1
    iput p1, p0, Le1/a$c;->e:F

    return-void
.end method

.method x(F)V
    .registers 3

    .line 1
    iput p1, p0, Le1/a$c;->h:F

    .line 2
    iget-object v0, p0, Le1/a$c;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method y()V
    .registers 2

    .line 1
    iget v0, p0, Le1/a$c;->e:F

    iput v0, p0, Le1/a$c;->k:F

    .line 2
    iget v0, p0, Le1/a$c;->f:F

    iput v0, p0, Le1/a$c;->l:F

    .line 3
    iget v0, p0, Le1/a$c;->g:F

    iput v0, p0, Le1/a$c;->m:F

    return-void
.end method
