###### Class c0.a (c0.a)
.class public abstract Lc0/a;
.super Landroidx/core/view/a;
.source "ExploreByTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc0/a$c;
    }
.end annotation


# static fields
.field private static final n:Landroid/graphics/Rect;

.field private static final o:Lc0/b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc0/b$a<",
            "Landroidx/core/view/accessibility/c;",
            ">;"
        }
    .end annotation
.end field

.field private static final p:Lc0/b$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc0/b$b<",
            "Lo/h<",
            "Landroidx/core/view/accessibility/c;",
            ">;",
            "Landroidx/core/view/accessibility/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final d:Landroid/graphics/Rect;

.field private final e:Landroid/graphics/Rect;

.field private final f:Landroid/graphics/Rect;

.field private final g:[I

.field private final h:Landroid/view/accessibility/AccessibilityManager;

.field private final i:Landroid/view/View;

.field private j:Lc0/a$c;

.field k:I

.field l:I

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    const v1, 0x7fffffff

    const/high16 v2, -0x80000000

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lc0/a;->n:Landroid/graphics/Rect;

    .line 2
    new-instance v0, Lc0/a$a;

    invoke-direct {v0}, Lc0/a$a;-><init>()V

    sput-object v0, Lc0/a;->o:Lc0/b$a;

    .line 3
    new-instance v0, Lc0/a$b;

    invoke-direct {v0}, Lc0/a$b;-><init>()V

    sput-object v0, Lc0/a;->p:Lc0/b$b;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Landroidx/core/view/a;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lc0/a;->d:Landroid/graphics/Rect;

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lc0/a;->e:Landroid/graphics/Rect;

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lc0/a;->f:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 5
    iput-object v0, p0, Lc0/a;->g:[I

    const/high16 v0, -0x80000000

    .line 6
    iput v0, p0, Lc0/a;->k:I

    .line 7
    iput v0, p0, Lc0/a;->l:I

    .line 8
    iput v0, p0, Lc0/a;->m:I

    if-eqz p1, :cond_45

    .line 9
    iput-object p1, p0, Lc0/a;->i:Landroid/view/View;

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lc0/a;->h:Landroid/view/accessibility/AccessibilityManager;

    const/4 v0, 0x1

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 13
    invoke-static {p1}, Landroidx/core/view/a0;->C(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_44

    .line 14
    invoke-static {p1, v0}, Landroidx/core/view/a0;->A0(Landroid/view/View;I)V

    :cond_44
    return-void

    .line 15
    :cond_45
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "View may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static D(Landroid/view/View;ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    const/16 v1, 0x11

    const/4 v2, 0x0

    if-eq p1, v1, :cond_2e

    const/16 v1, 0x21

    if-eq p1, v1, :cond_2a

    const/16 v1, 0x42

    const/4 v3, -0x1

    if-eq p1, v1, :cond_26

    const/16 p0, 0x82

    if-ne p1, p0, :cond_1e

    .line 3
    invoke-virtual {p2, v2, v3, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_31

    .line 4
    :cond_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_26
    invoke-virtual {p2, v3, v2, v3, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_31

    .line 6
    :cond_2a
    invoke-virtual {p2, v2, p0, v0, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_31

    .line 7
    :cond_2e
    invoke-virtual {p2, v0, v2, v0, p0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_31
    return-object p2
.end method

.method private E(Landroid/graphics/Rect;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_38

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_38

    .line 2
    :cond_a
    iget-object p1, p0, Lc0/a;->i:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    move-result p1

    if-eqz p1, :cond_13

    return v0

    .line 3
    :cond_13
    iget-object p1, p0, Lc0/a;->i:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 4
    :goto_19
    instance-of v1, p1, Landroid/view/View;

    if-eqz v1, :cond_35

    .line 5
    check-cast p1, Landroid/view/View;

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-lez v1, :cond_34

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2f

    goto :goto_34

    .line 7
    :cond_2f
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_19

    :cond_34
    :goto_34
    return v0

    :cond_35
    if-eqz p1, :cond_38

    const/4 v0, 0x1

    :cond_38
    :goto_38
    return v0
.end method

.method private static F(I)I
    .registers 2

    const/16 v0, 0x13

    if-eq p0, v0, :cond_15

    const/16 v0, 0x15

    if-eq p0, v0, :cond_12

    const/16 v0, 0x16

    if-eq p0, v0, :cond_f

    const/16 p0, 0x82

    return p0

    :cond_f
    const/16 p0, 0x42

    return p0

    :cond_12
    const/16 p0, 0x11

    return p0

    :cond_15
    const/16 p0, 0x21

    return p0
.end method

.method private G(ILandroid/graphics/Rect;)Z
    .registers 12

    .line 1
    invoke-direct {p0}, Lc0/a;->y()Lo/h;

    move-result-object v7

    .line 2
    iget v0, p0, Lc0/a;->l:I

    const/high16 v8, -0x80000000

    if-ne v0, v8, :cond_c

    const/4 v0, 0x0

    goto :goto_12

    .line 3
    :cond_c
    invoke-virtual {v7, v0}, Lo/h;->g(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/view/accessibility/c;

    :goto_12
    move-object v3, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_57

    const/4 v1, 0x2

    if-eq p1, v1, :cond_57

    const/16 v0, 0x11

    if-eq p1, v0, :cond_32

    const/16 v0, 0x21

    if-eq p1, v0, :cond_32

    const/16 v0, 0x42

    if-eq p1, v0, :cond_32

    const/16 v0, 0x82

    if-ne p1, v0, :cond_2a

    goto :goto_32

    .line 4
    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_32
    :goto_32
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 6
    iget v0, p0, Lc0/a;->l:I

    if-eq v0, v8, :cond_3f

    .line 7
    invoke-direct {p0, v0, v4}, Lc0/a;->z(ILandroid/graphics/Rect;)V

    goto :goto_4a

    :cond_3f
    if-eqz p2, :cond_45

    .line 8
    invoke-virtual {v4, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_4a

    .line 9
    :cond_45
    iget-object p2, p0, Lc0/a;->i:Landroid/view/View;

    invoke-static {p2, p1, v4}, Lc0/a;->D(Landroid/view/View;ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 10
    :goto_4a
    sget-object v1, Lc0/a;->p:Lc0/b$b;

    sget-object v2, Lc0/a;->o:Lc0/b$a;

    move-object v0, v7

    move v5, p1

    invoke-static/range {v0 .. v5}, Lc0/b;->c(Ljava/lang/Object;Lc0/b$b;Lc0/b$a;Ljava/lang/Object;Landroid/graphics/Rect;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/core/view/accessibility/c;

    goto :goto_70

    .line 11
    :cond_57
    iget-object p2, p0, Lc0/a;->i:Landroid/view/View;

    .line 12
    invoke-static {p2}, Landroidx/core/view/a0;->E(Landroid/view/View;)I

    move-result p2

    if-ne p2, v0, :cond_61

    const/4 v5, 0x1

    goto :goto_63

    :cond_61
    const/4 p2, 0x0

    const/4 v5, 0x0

    .line 13
    :goto_63
    sget-object v1, Lc0/a;->p:Lc0/b$b;

    sget-object v2, Lc0/a;->o:Lc0/b$a;

    const/4 v6, 0x0

    move-object v0, v7

    move v4, p1

    invoke-static/range {v0 .. v6}, Lc0/b;->d(Ljava/lang/Object;Lc0/b$b;Lc0/b$a;Ljava/lang/Object;IZZ)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/core/view/accessibility/c;

    :goto_70
    if-nez p1, :cond_73

    goto :goto_7b

    .line 14
    :cond_73
    invoke-virtual {v7, p1}, Lo/h;->i(Ljava/lang/Object;)I

    move-result p1

    .line 15
    invoke-virtual {v7, p1}, Lo/h;->j(I)I

    move-result v8

    .line 16
    :goto_7b
    invoke-virtual {p0, v8}, Lc0/a;->T(I)Z

    move-result p1

    return p1
.end method

.method private Q(IILandroid/os/Bundle;)Z
    .registers 5

    const/4 v0, 0x1

    if-eq p2, v0, :cond_22

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1d

    const/16 v0, 0x40

    if-eq p2, v0, :cond_18

    const/16 v0, 0x80

    if-eq p2, v0, :cond_13

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lc0/a;->J(IILandroid/os/Bundle;)Z

    move-result p1

    return p1

    .line 2
    :cond_13
    invoke-direct {p0, p1}, Lc0/a;->n(I)Z

    move-result p1

    return p1

    .line 3
    :cond_18
    invoke-direct {p0, p1}, Lc0/a;->S(I)Z

    move-result p1

    return p1

    .line 4
    :cond_1d
    invoke-virtual {p0, p1}, Lc0/a;->o(I)Z

    move-result p1

    return p1

    .line 5
    :cond_22
    invoke-virtual {p0, p1}, Lc0/a;->T(I)Z

    move-result p1

    return p1
.end method

.method private R(ILandroid/os/Bundle;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lc0/a;->i:Landroid/view/View;

    invoke-static {v0, p1, p2}, Landroidx/core/view/a0;->f0(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method private S(I)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lc0/a;->h:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lc0/a;->h:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_2c

    .line 2
    :cond_12
    iget v0, p0, Lc0/a;->k:I

    if-eq v0, p1, :cond_2c

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1d

    .line 3
    invoke-direct {p0, v0}, Lc0/a;->n(I)Z

    .line 4
    :cond_1d
    iput p1, p0, Lc0/a;->k:I

    .line 5
    iget-object v0, p0, Lc0/a;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const v0, 0x8000

    .line 6
    invoke-virtual {p0, p1, v0}, Lc0/a;->U(II)Z

    const/4 p1, 0x1

    return p1

    :cond_2c
    :goto_2c
    return v1
.end method

.method private V(I)V
    .registers 4

    .line 1
    iget v0, p0, Lc0/a;->m:I

    if-ne v0, p1, :cond_5

    return-void

    .line 2
    :cond_5
    iput p1, p0, Lc0/a;->m:I

    const/16 v1, 0x80

    .line 3
    invoke-virtual {p0, p1, v1}, Lc0/a;->U(II)Z

    const/16 p1, 0x100

    .line 4
    invoke-virtual {p0, v0, p1}, Lc0/a;->U(II)Z

    return-void
.end method

.method private n(I)Z
    .registers 3

    .line 1
    iget v0, p0, Lc0/a;->k:I

    if-ne v0, p1, :cond_14

    const/high16 v0, -0x80000000

    .line 2
    iput v0, p0, Lc0/a;->k:I

    .line 3
    iget-object v0, p0, Lc0/a;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const/high16 v0, 0x10000

    .line 4
    invoke-virtual {p0, p1, v0}, Lc0/a;->U(II)Z

    const/4 p1, 0x1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method private p()Z
    .registers 4

    .line 1
    iget v0, p0, Lc0/a;->l:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_11

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lc0/a;->J(IILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method private q(II)Landroid/view/accessibility/AccessibilityEvent;
    .registers 4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_8

    .line 1
    invoke-direct {p0, p1, p2}, Lc0/a;->r(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    return-object p1

    .line 2
    :cond_8
    invoke-direct {p0, p2}, Lc0/a;->s(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    return-object p1
.end method

.method private r(II)Landroid/view/accessibility/AccessibilityEvent;
    .registers 6

    .line 1
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    .line 2
    invoke-virtual {p0, p1}, Lc0/a;->H(I)Landroidx/core/view/accessibility/c;

    move-result-object v0

    .line 3
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/core/view/accessibility/c;->v()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {v0}, Landroidx/core/view/accessibility/c;->q()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {v0}, Landroidx/core/view/accessibility/c;->I()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 6
    invoke-virtual {v0}, Landroidx/core/view/accessibility/c;->H()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    .line 7
    invoke-virtual {v0}, Landroidx/core/view/accessibility/c;->D()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 8
    invoke-virtual {v0}, Landroidx/core/view/accessibility/c;->B()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 9
    invoke-virtual {p0, p1, p2}, Lc0/a;->L(ILandroid/view/accessibility/AccessibilityEvent;)V

    .line 10
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_4a

    goto :goto_52

    .line 11
    :cond_4a
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Callbacks must add text or a content description in populateEventForVirtualViewId()"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_52
    :goto_52
    invoke-virtual {v0}, Landroidx/core/view/accessibility/c;->o()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v0, p0, Lc0/a;->i:Landroid/view/View;

    invoke-static {p2, v0, p1}, Landroidx/core/view/accessibility/e;->c(Landroid/view/accessibility/AccessibilityRecord;Landroid/view/View;I)V

    .line 14
    iget-object p1, p0, Lc0/a;->i:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method private s(I)Landroid/view/accessibility/AccessibilityEvent;
    .registers 3

    .line 1
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lc0/a;->i:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-object p1
.end method

.method private t(I)Landroidx/core/view/accessibility/c;
    .registers 9

    .line 1
    invoke-static {}, Landroidx/core/view/accessibility/c;->L()Landroidx/core/view/accessibility/c;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroidx/core/view/accessibility/c;->d0(Z)V

    .line 3
    invoke-virtual {v0, v1}, Landroidx/core/view/accessibility/c;->f0(Z)V

    const-string v2, "android.view.View"

    .line 4
    invoke-virtual {v0, v2}, Landroidx/core/view/accessibility/c;->X(Ljava/lang/CharSequence;)V

    .line 5
    sget-object v2, Lc0/a;->n:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroidx/core/view/accessibility/c;->T(Landroid/graphics/Rect;)V

    .line 6
    invoke-virtual {v0, v2}, Landroidx/core/view/accessibility/c;->U(Landroid/graphics/Rect;)V

    .line 7
    iget-object v3, p0, Lc0/a;->i:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroidx/core/view/accessibility/c;->m0(Landroid/view/View;)V

    .line 8
    invoke-virtual {p0, p1, v0}, Lc0/a;->N(ILandroidx/core/view/accessibility/c;)V

    .line 9
    invoke-virtual {v0}, Landroidx/core/view/accessibility/c;->v()Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_35

    invoke-virtual {v0}, Landroidx/core/view/accessibility/c;->q()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_2d

    goto :goto_35

    .line 10
    :cond_2d
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must add text or a content description in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_35
    :goto_35
    iget-object v3, p0, Lc0/a;->e:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroidx/core/view/accessibility/c;->l(Landroid/graphics/Rect;)V

    .line 12
    iget-object v3, p0, Lc0/a;->e:Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_143

    .line 13
    invoke-virtual {v0}, Landroidx/core/view/accessibility/c;->j()I

    move-result v3

    and-int/lit8 v4, v3, 0x40

    if-nez v4, :cond_13b

    const/16 v4, 0x80

    and-int/2addr v3, v4

    if-nez v3, :cond_133

    .line 14
    iget-object v3, p0, Lc0/a;->i:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/core/view/accessibility/c;->k0(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v3, p0, Lc0/a;->i:Landroid/view/View;

    invoke-virtual {v0, v3, p1}, Landroidx/core/view/accessibility/c;->r0(Landroid/view/View;I)V

    .line 16
    iget v3, p0, Lc0/a;->k:I

    const/4 v5, 0x0

    if-ne v3, p1, :cond_6d

    .line 17
    invoke-virtual {v0, v1}, Landroidx/core/view/accessibility/c;->R(Z)V

    .line 18
    invoke-virtual {v0, v4}, Landroidx/core/view/accessibility/c;->a(I)V

    goto :goto_75

    .line 19
    :cond_6d
    invoke-virtual {v0, v5}, Landroidx/core/view/accessibility/c;->R(Z)V

    const/16 v3, 0x40

    .line 20
    invoke-virtual {v0, v3}, Landroidx/core/view/accessibility/c;->a(I)V

    .line 21
    :goto_75
    iget v3, p0, Lc0/a;->l:I

    if-ne v3, p1, :cond_7b

    const/4 p1, 0x1

    goto :goto_7c

    :cond_7b
    const/4 p1, 0x0

    :goto_7c
    if-eqz p1, :cond_83

    const/4 v3, 0x2

    .line 22
    invoke-virtual {v0, v3}, Landroidx/core/view/accessibility/c;->a(I)V

    goto :goto_8c

    .line 23
    :cond_83
    invoke-virtual {v0}, Landroidx/core/view/accessibility/c;->E()Z

    move-result v3

    if-eqz v3, :cond_8c

    .line 24
    invoke-virtual {v0, v1}, Landroidx/core/view/accessibility/c;->a(I)V

    .line 25
    :cond_8c
    :goto_8c
    invoke-virtual {v0, p1}, Landroidx/core/view/accessibility/c;->g0(Z)V

    .line 26
    iget-object p1, p0, Lc0/a;->i:Landroid/view/View;

    iget-object v3, p0, Lc0/a;->g:[I

    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 27
    iget-object p1, p0, Lc0/a;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroidx/core/view/accessibility/c;->m(Landroid/graphics/Rect;)V

    .line 28
    iget-object p1, p0, Lc0/a;->d:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f3

    .line 29
    iget-object p1, p0, Lc0/a;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroidx/core/view/accessibility/c;->l(Landroid/graphics/Rect;)V

    .line 30
    iget p1, v0, Landroidx/core/view/accessibility/c;->b:I

    const/4 v2, -0x1

    if-eq p1, v2, :cond_d8

    .line 31
    invoke-static {}, Landroidx/core/view/accessibility/c;->L()Landroidx/core/view/accessibility/c;

    move-result-object p1

    .line 32
    iget v3, v0, Landroidx/core/view/accessibility/c;->b:I

    :goto_b3
    if-eq v3, v2, :cond_d5

    .line 33
    iget-object v4, p0, Lc0/a;->i:Landroid/view/View;

    invoke-virtual {p1, v4, v2}, Landroidx/core/view/accessibility/c;->n0(Landroid/view/View;I)V

    .line 34
    sget-object v4, Lc0/a;->n:Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Landroidx/core/view/accessibility/c;->T(Landroid/graphics/Rect;)V

    .line 35
    invoke-virtual {p0, v3, p1}, Lc0/a;->N(ILandroidx/core/view/accessibility/c;)V

    .line 36
    iget-object v3, p0, Lc0/a;->e:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Landroidx/core/view/accessibility/c;->l(Landroid/graphics/Rect;)V

    .line 37
    iget-object v3, p0, Lc0/a;->d:Landroid/graphics/Rect;

    iget-object v4, p0, Lc0/a;->e:Landroid/graphics/Rect;

    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v6, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 38
    iget v3, p1, Landroidx/core/view/accessibility/c;->b:I

    goto :goto_b3

    .line 39
    :cond_d5
    invoke-virtual {p1}, Landroidx/core/view/accessibility/c;->P()V

    .line 40
    :cond_d8
    iget-object p1, p0, Lc0/a;->d:Landroid/graphics/Rect;

    iget-object v2, p0, Lc0/a;->g:[I

    aget v2, v2, v5

    iget-object v3, p0, Lc0/a;->i:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lc0/a;->g:[I

    aget v3, v3, v1

    iget-object v4, p0, Lc0/a;->i:Landroid/view/View;

    .line 41
    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    .line 42
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 43
    :cond_f3
    iget-object p1, p0, Lc0/a;->i:Landroid/view/View;

    iget-object v2, p0, Lc0/a;->f:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_132

    .line 44
    iget-object p1, p0, Lc0/a;->f:Landroid/graphics/Rect;

    iget-object v2, p0, Lc0/a;->g:[I

    aget v2, v2, v5

    iget-object v3, p0, Lc0/a;->i:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lc0/a;->g:[I

    aget v3, v3, v1

    iget-object v4, p0, Lc0/a;->i:Landroid/view/View;

    .line 45
    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    .line 46
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 47
    iget-object p1, p0, Lc0/a;->d:Landroid/graphics/Rect;

    iget-object v2, p0, Lc0/a;->f:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_132

    .line 48
    iget-object p1, p0, Lc0/a;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroidx/core/view/accessibility/c;->U(Landroid/graphics/Rect;)V

    .line 49
    iget-object p1, p0, Lc0/a;->d:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lc0/a;->E(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_132

    .line 50
    invoke-virtual {v0, v1}, Landroidx/core/view/accessibility/c;->v0(Z)V

    :cond_132
    return-object v0

    .line 51
    :cond_133
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_13b
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :cond_143
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must set parent bounds in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_14c

    :goto_14b
    throw p1

    :goto_14c
    goto :goto_14b
.end method

.method private u()Landroidx/core/view/accessibility/c;
    .registers 7

    .line 1
    iget-object v0, p0, Lc0/a;->i:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/accessibility/c;->M(Landroid/view/View;)Landroidx/core/view/accessibility/c;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lc0/a;->i:Landroid/view/View;

    invoke-static {v1, v0}, Landroidx/core/view/a0;->d0(Landroid/view/View;Landroidx/core/view/accessibility/c;)V

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {p0, v1}, Lc0/a;->C(Ljava/util/List;)V

    .line 5
    invoke-virtual {v0}, Landroidx/core/view/accessibility/c;->n()I

    move-result v2

    if-lez v2, :cond_28

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_20

    goto :goto_28

    .line 7
    :cond_20
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Views cannot have both real and virtual children"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    :goto_28
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_2d
    if-ge v2, v3, :cond_41

    .line 9
    iget-object v4, p0, Lc0/a;->i:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroidx/core/view/accessibility/c;->c(Landroid/view/View;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_41
    return-object v0
.end method

.method private y()Lo/h;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/h<",
            "Landroidx/core/view/accessibility/c;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lc0/a;->C(Ljava/util/List;)V

    .line 3
    new-instance v1, Lo/h;

    invoke-direct {v1}, Lo/h;-><init>()V

    const/4 v2, 0x0

    .line 4
    :goto_e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1e

    .line 5
    invoke-direct {p0, v2}, Lc0/a;->t(I)Landroidx/core/view/accessibility/c;

    move-result-object v3

    .line 6
    invoke-virtual {v1, v2, v3}, Lo/h;->k(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1e
    return-object v1
.end method

.method private z(ILandroid/graphics/Rect;)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lc0/a;->H(I)Landroidx/core/view/accessibility/c;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Landroidx/core/view/accessibility/c;->l(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public final A()I
    .registers 2

    .line 1
    iget v0, p0, Lc0/a;->l:I

    return v0
.end method

.method protected abstract B(FF)I
.end method

.method protected abstract C(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method H(I)Landroidx/core/view/accessibility/c;
    .registers 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_8

    .line 1
    invoke-direct {p0}, Lc0/a;->u()Landroidx/core/view/accessibility/c;

    move-result-object p1

    return-object p1

    .line 2
    :cond_8
    invoke-direct {p0, p1}, Lc0/a;->t(I)Landroidx/core/view/accessibility/c;

    move-result-object p1

    return-object p1
.end method

.method public final I(ZILandroid/graphics/Rect;)V
    .registers 6

    .line 1
    iget v0, p0, Lc0/a;->l:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_9

    .line 2
    invoke-virtual {p0, v0}, Lc0/a;->o(I)Z

    :cond_9
    if-eqz p1, :cond_e

    .line 3
    invoke-direct {p0, p2, p3}, Lc0/a;->G(ILandroid/graphics/Rect;)Z

    :cond_e
    return-void
.end method

.method protected abstract J(IILandroid/os/Bundle;)Z
.end method

.method protected K(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2

    return-void
.end method

.method protected L(ILandroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    return-void
.end method

.method protected M(Landroidx/core/view/accessibility/c;)V
    .registers 2

    return-void
.end method

.method protected abstract N(ILandroidx/core/view/accessibility/c;)V
.end method

.method protected O(IZ)V
    .registers 3

    return-void
.end method

.method P(IILandroid/os/Bundle;)Z
    .registers 5

    const/4 v0, -0x1

    if-eq p1, v0, :cond_8

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lc0/a;->Q(IILandroid/os/Bundle;)Z

    move-result p1

    return p1

    .line 2
    :cond_8
    invoke-direct {p0, p2, p3}, Lc0/a;->R(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public final T(I)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lc0/a;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    iget-object v0, p0, Lc0/a;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    if-nez v0, :cond_12

    return v1

    .line 2
    :cond_12
    iget v0, p0, Lc0/a;->l:I

    if-ne v0, p1, :cond_17

    return v1

    :cond_17
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1e

    .line 3
    invoke-virtual {p0, v0}, Lc0/a;->o(I)Z

    .line 4
    :cond_1e
    iput p1, p0, Lc0/a;->l:I

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, p1, v0}, Lc0/a;->O(IZ)V

    const/16 v1, 0x8

    .line 6
    invoke-virtual {p0, p1, v1}, Lc0/a;->U(II)Z

    return v0
.end method

.method public final U(II)Z
    .registers 5

    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_22

    .line 1
    iget-object v1, p0, Lc0/a;->h:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_22

    .line 2
    :cond_e
    iget-object v1, p0, Lc0/a;->i:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_17

    return v0

    .line 3
    :cond_17
    invoke-direct {p0, p1, p2}, Lc0/a;->q(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lc0/a;->i:Landroid/view/View;

    invoke-static {v1, p2, p1}, Landroidx/core/view/e0;->h(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    :cond_22
    :goto_22
    return v0
.end method

.method public b(Landroid/view/View;)Landroidx/core/view/accessibility/d;
    .registers 2

    .line 1
    iget-object p1, p0, Lc0/a;->j:Lc0/a$c;

    if-nez p1, :cond_b

    .line 2
    new-instance p1, Lc0/a$c;

    invoke-direct {p1, p0}, Lc0/a$c;-><init>(Lc0/a;)V

    iput-object p1, p0, Lc0/a;->j:Lc0/a$c;

    .line 3
    :cond_b
    iget-object p1, p0, Lc0/a;->j:Lc0/a$c;

    return-object p1
.end method

.method public f(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/core/view/a;->f(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    invoke-virtual {p0, p2}, Lc0/a;->K(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public g(Landroid/view/View;Landroidx/core/view/accessibility/c;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/core/view/a;->g(Landroid/view/View;Landroidx/core/view/accessibility/c;)V

    .line 2
    invoke-virtual {p0, p2}, Lc0/a;->M(Landroidx/core/view/accessibility/c;)V

    return-void
.end method

.method public final o(I)Z
    .registers 4

    .line 1
    iget v0, p0, Lc0/a;->l:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_6

    return v1

    :cond_6
    const/high16 v0, -0x80000000

    .line 2
    iput v0, p0, Lc0/a;->l:I

    .line 3
    invoke-virtual {p0, p1, v1}, Lc0/a;->O(IZ)V

    const/16 v0, 0x8

    .line 4
    invoke-virtual {p0, p1, v0}, Lc0/a;->U(II)Z

    const/4 p1, 0x1

    return p1
.end method

.method public final v(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 1
    iget-object v0, p0, Lc0/a;->h:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lc0/a;->h:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_40

    .line 2
    :cond_12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x7

    const/4 v3, 0x1

    const/high16 v4, -0x80000000

    if-eq v0, v2, :cond_2e

    const/16 v2, 0x9

    if-eq v0, v2, :cond_2e

    const/16 p1, 0xa

    if-eq v0, p1, :cond_25

    return v1

    .line 3
    :cond_25
    iget p1, p0, Lc0/a;->m:I

    if-eq p1, v4, :cond_2d

    .line 4
    invoke-direct {p0, v4}, Lc0/a;->V(I)V

    return v3

    :cond_2d
    return v1

    .line 5
    :cond_2e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lc0/a;->B(FF)I

    move-result p1

    .line 6
    invoke-direct {p0, p1}, Lc0/a;->V(I)V

    if-eq p1, v4, :cond_40

    const/4 v1, 0x1

    :cond_40
    :goto_40
    return v1
.end method

.method public final w(Landroid/view/KeyEvent;)Z
    .registers 8

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5e

    .line 2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x3d

    const/4 v4, 0x0

    if-eq v0, v3, :cond_48

    const/16 v3, 0x42

    if-eq v0, v3, :cond_37

    packed-switch v0, :pswitch_data_60

    goto :goto_5e

    .line 3
    :pswitch_19
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 4
    invoke-static {v0}, Lc0/a;->F(I)I

    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    add-int/2addr p1, v2

    const/4 v3, 0x0

    :goto_29
    if-ge v1, p1, :cond_35

    .line 6
    invoke-direct {p0, v0, v4}, Lc0/a;->G(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_35

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x1

    goto :goto_29

    :cond_35
    move v1, v3

    goto :goto_5e

    .line 7
    :cond_37
    :pswitch_37
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_5e

    .line 9
    invoke-direct {p0}, Lc0/a;->p()Z

    const/4 v1, 0x1

    goto :goto_5e

    .line 10
    :cond_48
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_54

    const/4 p1, 0x2

    .line 11
    invoke-direct {p0, p1, v4}, Lc0/a;->G(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_5e

    .line 12
    :cond_54
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_5e

    .line 13
    invoke-direct {p0, v2, v4}, Lc0/a;->G(ILandroid/graphics/Rect;)Z

    move-result v1

    :cond_5e
    :goto_5e
    return v1

    nop

    :pswitch_data_60
    .packed-switch 0x13
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_37
    .end packed-switch
.end method

.method public final x()I
    .registers 2

    .line 1
    iget v0, p0, Lc0/a;->k:I

    return v0
.end method

###### Class c0.a.C0085a (c0.a$a)
.class final Lc0/a$a;
.super Ljava/lang/Object;
.source "ExploreByTouchHelper.java"

# interfaces
.implements Lc0/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc0/b$a<",
        "Landroidx/core/view/accessibility/c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .registers 3

    .line 1
    check-cast p1, Landroidx/core/view/accessibility/c;

    invoke-virtual {p0, p1, p2}, Lc0/a$a;->b(Landroidx/core/view/accessibility/c;Landroid/graphics/Rect;)V

    return-void
.end method

.method public b(Landroidx/core/view/accessibility/c;Landroid/graphics/Rect;)V
    .registers 3

    .line 1
    invoke-virtual {p1, p2}, Landroidx/core/view/accessibility/c;->l(Landroid/graphics/Rect;)V

    return-void
.end method

###### Class c0.a.b (c0.a$b)
.class final Lc0/a$b;
.super Ljava/lang/Object;
.source "ExploreByTouchHelper.java"

# interfaces
.implements Lc0/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc0/b$b<",
        "Lo/h<",
        "Landroidx/core/view/accessibility/c;",
        ">;",
        "Landroidx/core/view/accessibility/c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lo/h;

    invoke-virtual {p0, p1, p2}, Lc0/a$b;->c(Lo/h;I)Landroidx/core/view/accessibility/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)I
    .registers 2

    .line 1
    check-cast p1, Lo/h;

    invoke-virtual {p0, p1}, Lc0/a$b;->d(Lo/h;)I

    move-result p1

    return p1
.end method

.method public c(Lo/h;I)Landroidx/core/view/accessibility/c;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/h<",
            "Landroidx/core/view/accessibility/c;",
            ">;I)",
            "Landroidx/core/view/accessibility/c;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Lo/h;->m(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/core/view/accessibility/c;

    return-object p1
.end method

.method public d(Lo/h;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/h<",
            "Landroidx/core/view/accessibility/c;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lo/h;->l()I

    move-result p1

    return p1
.end method

###### Class c0.a.c (c0.a$c)
.class Lc0/a$c;
.super Landroidx/core/view/accessibility/d;
.source "ExploreByTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic b:Lc0/a;


# direct methods
.method constructor <init>(Lc0/a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lc0/a$c;->b:Lc0/a;

    invoke-direct {p0}, Landroidx/core/view/accessibility/d;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)Landroidx/core/view/accessibility/c;
    .registers 3

    .line 1
    iget-object v0, p0, Lc0/a$c;->b:Lc0/a;

    .line 2
    invoke-virtual {v0, p1}, Lc0/a;->H(I)Landroidx/core/view/accessibility/c;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroidx/core/view/accessibility/c;->N(Landroidx/core/view/accessibility/c;)Landroidx/core/view/accessibility/c;

    move-result-object p1

    return-object p1
.end method

.method public d(I)Landroidx/core/view/accessibility/c;
    .registers 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_8

    .line 1
    iget-object p1, p0, Lc0/a$c;->b:Lc0/a;

    iget p1, p1, Lc0/a;->k:I

    goto :goto_c

    :cond_8
    iget-object p1, p0, Lc0/a$c;->b:Lc0/a;

    iget p1, p1, Lc0/a;->l:I

    :goto_c
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_12

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_12
    invoke-virtual {p0, p1}, Lc0/a$c;->b(I)Landroidx/core/view/accessibility/c;

    move-result-object p1

    return-object p1
.end method

.method public f(IILandroid/os/Bundle;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lc0/a$c;->b:Lc0/a;

    invoke-virtual {v0, p1, p2, p3}, Lc0/a;->P(IILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
