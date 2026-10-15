###### Class androidx.core.view.g0 (androidx.core.view.g0)
.class public final Landroidx/core/view/g0;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/g0$b;,
        Landroidx/core/view/g0$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/lang/Runnable;

.field c:Ljava/lang/Runnable;

.field d:I


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/core/view/g0;->b:Ljava/lang/Runnable;

    .line 3
    iput-object v0, p0, Landroidx/core/view/g0;->c:Ljava/lang/Runnable;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Landroidx/core/view/g0;->d:I

    .line 5
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/core/view/g0;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic a(Landroidx/core/view/j0;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroidx/core/view/g0;->e(Landroidx/core/view/j0;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private static synthetic e(Landroidx/core/view/j0;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 1
    invoke-interface {p0, p1}, Landroidx/core/view/j0;->a(Landroid/view/View;)V

    return-void
.end method

.method private i(Landroid/view/View;Landroidx/core/view/h0;)V
    .registers 5

    if-eqz p2, :cond_f

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroidx/core/view/g0$a;

    invoke-direct {v1, p0, p2, p1}, Landroidx/core/view/g0$a;-><init>(Landroidx/core/view/g0;Landroidx/core/view/h0;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_17

    .line 2
    :cond_f
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :goto_17
    return-void
.end method


# virtual methods
.method public b(F)Landroidx/core/view/g0;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/view/g0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_11

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    :cond_11
    return-object p0
.end method

.method public c()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/g0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_11

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_11
    return-void
.end method

.method public d()J
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/view/g0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_13

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->getDuration()J

    move-result-wide v0

    return-wide v0

    :cond_13
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public f(J)Landroidx/core/view/g0;
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/core/view/g0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_11

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_11
    return-object p0
.end method

.method public g(Landroid/view/animation/Interpolator;)Landroidx/core/view/g0;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/view/g0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_11

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    :cond_11
    return-object p0
.end method

.method public h(Landroidx/core/view/h0;)Landroidx/core/view/g0;
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/core/view/g0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_21

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_14

    .line 3
    invoke-direct {p0, v0, p1}, Landroidx/core/view/g0;->i(Landroid/view/View;Landroidx/core/view/h0;)V

    goto :goto_21

    :cond_14
    const/high16 v1, 0x7e000000

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 5
    new-instance p1, Landroidx/core/view/g0$c;

    invoke-direct {p1, p0}, Landroidx/core/view/g0$c;-><init>(Landroidx/core/view/g0;)V

    invoke-direct {p0, v0, p1}, Landroidx/core/view/g0;->i(Landroid/view/View;Landroidx/core/view/h0;)V

    :cond_21
    :goto_21
    return-object p0
.end method

.method public j(J)Landroidx/core/view/g0;
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/core/view/g0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_11

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    :cond_11
    return-object p0
.end method

.method public k(Landroidx/core/view/j0;)Landroidx/core/view/g0;
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/core/view/g0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1f

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1f

    const/4 v1, 0x0

    if-eqz p1, :cond_18

    .line 3
    new-instance v1, Landroidx/core/view/f0;

    invoke-direct {v1, p1, v0}, Landroidx/core/view/f0;-><init>(Landroidx/core/view/j0;Landroid/view/View;)V

    .line 4
    :cond_18
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 5
    invoke-static {p1, v1}, Landroidx/core/view/g0$b;->a(Landroid/view/ViewPropertyAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    :cond_1f
    return-object p0
.end method

.method public l()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/g0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_11

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_11
    return-void
.end method

.method public m(F)Landroidx/core/view/g0;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/view/g0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_11

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    :cond_11
    return-object p0
.end method

###### Class androidx.core.view.g0.a (androidx.core.view.g0$a)
.class Landroidx/core/view/g0$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewPropertyAnimatorCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/view/g0;->i(Landroid/view/View;Landroidx/core/view/h0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/core/view/h0;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroidx/core/view/g0;


# direct methods
.method constructor <init>(Landroidx/core/view/g0;Landroidx/core/view/h0;Landroid/view/View;)V
    .registers 4

    .line 1
    iput-object p1, p0, Landroidx/core/view/g0$a;->c:Landroidx/core/view/g0;

    iput-object p2, p0, Landroidx/core/view/g0$a;->a:Landroidx/core/view/h0;

    iput-object p3, p0, Landroidx/core/view/g0$a;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    .line 1
    iget-object p1, p0, Landroidx/core/view/g0$a;->a:Landroidx/core/view/h0;

    iget-object v0, p0, Landroidx/core/view/g0$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Landroidx/core/view/h0;->a(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1
    iget-object p1, p0, Landroidx/core/view/g0$a;->a:Landroidx/core/view/h0;

    iget-object v0, p0, Landroidx/core/view/g0$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Landroidx/core/view/h0;->b(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 1
    iget-object p1, p0, Landroidx/core/view/g0$a;->a:Landroidx/core/view/h0;

    iget-object v0, p0, Landroidx/core/view/g0$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Landroidx/core/view/h0;->c(Landroid/view/View;)V

    return-void
.end method

###### Class androidx.core.view.g0.b (androidx.core.view.g0$b)
.class Landroidx/core/view/g0$b;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method static a(Landroid/view/ViewPropertyAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    return-object p0
.end method

###### Class androidx.core.view.g0.c (androidx.core.view.g0$c)
.class Landroidx/core/view/g0$c;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompat.java"

# interfaces
.implements Landroidx/core/view/h0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field a:Landroidx/core/view/g0;

.field b:Z


# direct methods
.method constructor <init>(Landroidx/core/view/g0;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/core/view/g0$c;->a:Landroidx/core/view/g0;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 4

    const/high16 v0, 0x7e000000

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroidx/core/view/h0;

    if-eqz v1, :cond_d

    .line 3
    check-cast v0, Landroidx/core/view/h0;

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_13

    .line 4
    invoke-interface {v0, p1}, Landroidx/core/view/h0;->a(Landroid/view/View;)V

    :cond_13
    return-void
.end method

.method public b(Landroid/view/View;)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/core/view/g0$c;->a:Landroidx/core/view/g0;

    iget v0, v0, Landroidx/core/view/g0;->d:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_f

    .line 2
    invoke-virtual {p1, v0, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3
    iget-object v0, p0, Landroidx/core/view/g0$c;->a:Landroidx/core/view/g0;

    iput v1, v0, Landroidx/core/view/g0;->d:I

    .line 4
    :cond_f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_19

    iget-boolean v0, p0, Landroidx/core/view/g0$c;->b:Z

    if-nez v0, :cond_39

    .line 5
    :cond_19
    iget-object v0, p0, Landroidx/core/view/g0$c;->a:Landroidx/core/view/g0;

    iget-object v1, v0, Landroidx/core/view/g0;->c:Ljava/lang/Runnable;

    if-eqz v1, :cond_24

    .line 6
    iput-object v2, v0, Landroidx/core/view/g0;->c:Ljava/lang/Runnable;

    .line 7
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_24
    const/high16 v0, 0x7e000000

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 9
    instance-of v1, v0, Landroidx/core/view/h0;

    if-eqz v1, :cond_31

    .line 10
    move-object v2, v0

    check-cast v2, Landroidx/core/view/h0;

    :cond_31
    if-eqz v2, :cond_36

    .line 11
    invoke-interface {v2, p1}, Landroidx/core/view/h0;->b(Landroid/view/View;)V

    :cond_36
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Landroidx/core/view/g0$c;->b:Z

    :cond_39
    return-void
.end method

.method public c(Landroid/view/View;)V
    .registers 5

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroidx/core/view/g0$c;->b:Z

    .line 2
    iget-object v0, p0, Landroidx/core/view/g0$c;->a:Landroidx/core/view/g0;

    iget v0, v0, Landroidx/core/view/g0;->d:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-le v0, v2, :cond_f

    const/4 v0, 0x2

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 4
    :cond_f
    iget-object v0, p0, Landroidx/core/view/g0$c;->a:Landroidx/core/view/g0;

    iget-object v2, v0, Landroidx/core/view/g0;->b:Ljava/lang/Runnable;

    if-eqz v2, :cond_1a

    .line 5
    iput-object v1, v0, Landroidx/core/view/g0;->b:Ljava/lang/Runnable;

    .line 6
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_1a
    const/high16 v0, 0x7e000000

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 8
    instance-of v2, v0, Landroidx/core/view/h0;

    if-eqz v2, :cond_27

    .line 9
    move-object v1, v0

    check-cast v1, Landroidx/core/view/h0;

    :cond_27
    if-eqz v1, :cond_2c

    .line 10
    invoke-interface {v1, p1}, Landroidx/core/view/h0;->c(Landroid/view/View;)V

    :cond_2c
    return-void
.end method

###### Class androidx.core.view.f0 (androidx.core.view.f0)
.class public final synthetic Landroidx/core/view/f0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Landroidx/core/view/j0;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/view/j0;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/f0;->a:Landroidx/core/view/j0;

    iput-object p2, p0, Landroidx/core/view/f0;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    iget-object v0, p0, Landroidx/core/view/f0;->a:Landroidx/core/view/j0;

    iget-object v1, p0, Landroidx/core/view/f0;->b:Landroid/view/View;

    invoke-static {v0, v1, p1}, Landroidx/core/view/g0;->a(Landroidx/core/view/j0;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method
