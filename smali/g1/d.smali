###### Class g1.d (g1.d)
.class public Lg1/d;
.super Lg1/j0;
.source "Fade.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg1/d$b;
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lg1/j0;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lg1/j0;->m0(I)V

    return-void
.end method

.method private n0(Landroid/view/View;FF)Landroid/animation/Animator;
    .registers 6

    cmpl-float v0, p2, p3

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_6
    invoke-static {p1, p2}, Lg1/c0;->g(Landroid/view/View;F)V

    .line 2
    sget-object p2, Lg1/c0;->b:Landroid/util/Property;

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p3, v0, v1

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 3
    new-instance p3, Lg1/d$b;

    invoke-direct {p3, p1}, Lg1/d$b;-><init>(Landroid/view/View;)V

    .line 4
    invoke-virtual {p2, p3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5
    new-instance p3, Lg1/d$a;

    invoke-direct {p3, p0, p1}, Lg1/d$a;-><init>(Lg1/d;Landroid/view/View;)V

    invoke-virtual {p0, p3}, Lg1/m;->a(Lg1/m$f;)Lg1/m;

    return-object p2
.end method

.method private static o0(Lg1/s;F)F
    .registers 3

    if-eqz p0, :cond_12

    .line 1
    iget-object p0, p0, Lg1/s;->a:Ljava/util/Map;

    const-string v0, "android:fade:transitionAlpha"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    if-eqz p0, :cond_12

    .line 2
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    :cond_12
    return p1
.end method


# virtual methods
.method public h0(Landroid/view/ViewGroup;Landroid/view/View;Lg1/s;Lg1/s;)Landroid/animation/Animator;
    .registers 6

    const/4 p1, 0x0

    .line 1
    invoke-static {p3, p1}, Lg1/d;->o0(Lg1/s;F)F

    move-result p3

    const/high16 p4, 0x3f800000    # 1.0f

    cmpl-float v0, p3, p4

    if-nez v0, :cond_c

    goto :goto_d

    :cond_c
    move p1, p3

    .line 2
    :goto_d
    invoke-direct {p0, p2, p1, p4}, Lg1/d;->n0(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public j0(Landroid/view/ViewGroup;Landroid/view/View;Lg1/s;Lg1/s;)Landroid/animation/Animator;
    .registers 5

    .line 1
    invoke-static {p2}, Lg1/c0;->e(Landroid/view/View;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 2
    invoke-static {p3, p1}, Lg1/d;->o0(Lg1/s;F)F

    move-result p1

    const/4 p3, 0x0

    .line 3
    invoke-direct {p0, p2, p1, p3}, Lg1/d;->n0(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public k(Lg1/s;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lg1/j0;->k(Lg1/s;)V

    .line 2
    iget-object v0, p1, Lg1/s;->a:Ljava/util/Map;

    iget-object p1, p1, Lg1/s;->b:Landroid/view/View;

    .line 3
    invoke-static {p1}, Lg1/c0;->c(Landroid/view/View;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "android:fade:transitionAlpha"

    .line 4
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class g1.d.a (g1.d$a)
.class Lg1/d$a;
.super Lg1/n;
.source "Fade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg1/d;->n0(Landroid/view/View;FF)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lg1/d;


# direct methods
.method constructor <init>(Lg1/d;Landroid/view/View;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lg1/d$a;->b:Lg1/d;

    iput-object p2, p0, Lg1/d$a;->a:Landroid/view/View;

    invoke-direct {p0}, Lg1/n;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lg1/m;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lg1/d$a;->a:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lg1/c0;->g(Landroid/view/View;F)V

    .line 2
    iget-object v0, p0, Lg1/d$a;->a:Landroid/view/View;

    invoke-static {v0}, Lg1/c0;->a(Landroid/view/View;)V

    .line 3
    invoke-virtual {p1, p0}, Lg1/m;->R(Lg1/m$f;)Lg1/m;

    return-void
.end method

###### Class g1.d.b (g1.d$b)
.class Lg1/d$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Fade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg1/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/view/View;

.field private b:Z


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lg1/d$b;->b:Z

    .line 3
    iput-object p1, p0, Lg1/d$b;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lg1/d$b;->a:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lg1/c0;->g(Landroid/view/View;F)V

    .line 2
    iget-boolean p1, p0, Lg1/d$b;->b:Z

    if-eqz p1, :cond_12

    .line 3
    iget-object p1, p0, Lg1/d$b;->a:Landroid/view/View;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_12
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lg1/d$b;->a:Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/a0;->Q(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lg1/d$b;->a:Landroid/view/View;

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result p1

    if-nez p1, :cond_1a

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lg1/d$b;->b:Z

    .line 4
    iget-object p1, p0, Lg1/d$b;->a:Landroid/view/View;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_1a
    return-void
.end method
