###### Class androidx.appcompat.widget.c1 (androidx.appcompat.widget.c1)
.class Landroidx/appcompat/widget/c1;
.super Ljava/lang/Object;
.source "TooltipCompatHandler.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# static fields
.field private static y:Landroidx/appcompat/widget/c1;

.field private static z:Landroidx/appcompat/widget/c1;


# instance fields
.field private final o:Landroid/view/View;

.field private final p:Ljava/lang/CharSequence;

.field private final q:I

.field private final r:Ljava/lang/Runnable;

.field private final s:Ljava/lang/Runnable;

.field private t:I

.field private u:I

.field private v:Landroidx/appcompat/widget/d1;

.field private w:Z

.field private x:Z


# direct methods
.method private constructor <init>(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/appcompat/widget/b1;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/b1;-><init>(Landroidx/appcompat/widget/c1;)V

    iput-object v0, p0, Landroidx/appcompat/widget/c1;->r:Ljava/lang/Runnable;

    .line 3
    new-instance v0, Landroidx/appcompat/widget/a1;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/a1;-><init>(Landroidx/appcompat/widget/c1;)V

    iput-object v0, p0, Landroidx/appcompat/widget/c1;->s:Ljava/lang/Runnable;

    .line 4
    iput-object p1, p0, Landroidx/appcompat/widget/c1;->o:Landroid/view/View;

    .line 5
    iput-object p2, p0, Landroidx/appcompat/widget/c1;->p:Ljava/lang/CharSequence;

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    .line 7
    invoke-static {p2}, Landroidx/core/view/c0;->c(Landroid/view/ViewConfiguration;)I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/c1;->q:I

    .line 8
    invoke-direct {p0}, Landroidx/appcompat/widget/c1;->c()V

    .line 9
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 10
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method public static synthetic a(Landroidx/appcompat/widget/c1;)V
    .registers 1

    invoke-direct {p0}, Landroidx/appcompat/widget/c1;->e()V

    return-void
.end method

.method private b()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/c1;->o:Landroid/view/View;

    iget-object v1, p0, Landroidx/appcompat/widget/c1;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private c()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/appcompat/widget/c1;->x:Z

    return-void
.end method

.method private synthetic e()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/c1;->i(Z)V

    return-void
.end method

.method private f()V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/c1;->o:Landroid/view/View;

    iget-object v1, p0, Landroidx/appcompat/widget/c1;->r:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static g(Landroidx/appcompat/widget/c1;)V
    .registers 2

    .line 1
    sget-object v0, Landroidx/appcompat/widget/c1;->y:Landroidx/appcompat/widget/c1;

    if-eqz v0, :cond_7

    .line 2
    invoke-direct {v0}, Landroidx/appcompat/widget/c1;->b()V

    .line 3
    :cond_7
    sput-object p0, Landroidx/appcompat/widget/c1;->y:Landroidx/appcompat/widget/c1;

    if-eqz p0, :cond_e

    .line 4
    invoke-direct {p0}, Landroidx/appcompat/widget/c1;->f()V

    :cond_e
    return-void
.end method

.method public static h(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 4

    .line 1
    sget-object v0, Landroidx/appcompat/widget/c1;->y:Landroidx/appcompat/widget/c1;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-object v0, v0, Landroidx/appcompat/widget/c1;->o:Landroid/view/View;

    if-ne v0, p0, :cond_c

    .line 2
    invoke-static {v1}, Landroidx/appcompat/widget/c1;->g(Landroidx/appcompat/widget/c1;)V

    .line 3
    :cond_c
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 4
    sget-object p1, Landroidx/appcompat/widget/c1;->z:Landroidx/appcompat/widget/c1;

    if-eqz p1, :cond_1d

    iget-object v0, p1, Landroidx/appcompat/widget/c1;->o:Landroid/view/View;

    if-ne v0, p0, :cond_1d

    .line 5
    invoke-virtual {p1}, Landroidx/appcompat/widget/c1;->d()V

    .line 6
    :cond_1d
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/View;->setLongClickable(Z)V

    .line 8
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    goto :goto_2d

    .line 9
    :cond_28
    new-instance v0, Landroidx/appcompat/widget/c1;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/c1;-><init>(Landroid/view/View;Ljava/lang/CharSequence;)V

    :goto_2d
    return-void
.end method

.method private j(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 3
    iget-boolean v1, p0, Landroidx/appcompat/widget/c1;->x:Z

    const/4 v2, 0x0

    if-nez v1, :cond_29

    iget v1, p0, Landroidx/appcompat/widget/c1;->t:I

    sub-int v1, v0, v1

    .line 4
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v3, p0, Landroidx/appcompat/widget/c1;->q:I

    if-gt v1, v3, :cond_29

    iget v1, p0, Landroidx/appcompat/widget/c1;->u:I

    sub-int v1, p1, v1

    .line 5
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v3, p0, Landroidx/appcompat/widget/c1;->q:I

    if-le v1, v3, :cond_28

    goto :goto_29

    :cond_28
    return v2

    .line 6
    :cond_29
    :goto_29
    iput v0, p0, Landroidx/appcompat/widget/c1;->t:I

    .line 7
    iput p1, p0, Landroidx/appcompat/widget/c1;->u:I

    .line 8
    iput-boolean v2, p0, Landroidx/appcompat/widget/c1;->x:Z

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method d()V
    .registers 4

    .line 1
    sget-object v0, Landroidx/appcompat/widget/c1;->z:Landroidx/appcompat/widget/c1;

    const/4 v1, 0x0

    if-ne v0, p0, :cond_20

    .line 2
    sput-object v1, Landroidx/appcompat/widget/c1;->z:Landroidx/appcompat/widget/c1;

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/c1;->v:Landroidx/appcompat/widget/d1;

    if-eqz v0, :cond_19

    .line 4
    invoke-virtual {v0}, Landroidx/appcompat/widget/d1;->c()V

    .line 5
    iput-object v1, p0, Landroidx/appcompat/widget/c1;->v:Landroidx/appcompat/widget/d1;

    .line 6
    invoke-direct {p0}, Landroidx/appcompat/widget/c1;->c()V

    .line 7
    iget-object v0, p0, Landroidx/appcompat/widget/c1;->o:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_20

    :cond_19
    const-string v0, "TooltipCompatHandler"

    const-string v2, "sActiveHandler.mPopup == null"

    .line 8
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_20
    :goto_20
    sget-object v0, Landroidx/appcompat/widget/c1;->y:Landroidx/appcompat/widget/c1;

    if-ne v0, p0, :cond_27

    .line 10
    invoke-static {v1}, Landroidx/appcompat/widget/c1;->g(Landroidx/appcompat/widget/c1;)V

    .line 11
    :cond_27
    iget-object v0, p0, Landroidx/appcompat/widget/c1;->o:Landroid/view/View;

    iget-object v1, p0, Landroidx/appcompat/widget/c1;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method i(Z)V
    .registers 9

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/c1;->o:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/a0;->T(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Landroidx/appcompat/widget/c1;->g(Landroidx/appcompat/widget/c1;)V

    .line 3
    sget-object v0, Landroidx/appcompat/widget/c1;->z:Landroidx/appcompat/widget/c1;

    if-eqz v0, :cond_14

    .line 4
    invoke-virtual {v0}, Landroidx/appcompat/widget/c1;->d()V

    .line 5
    :cond_14
    sput-object p0, Landroidx/appcompat/widget/c1;->z:Landroidx/appcompat/widget/c1;

    .line 6
    iput-boolean p1, p0, Landroidx/appcompat/widget/c1;->w:Z

    .line 7
    new-instance v1, Landroidx/appcompat/widget/d1;

    iget-object p1, p0, Landroidx/appcompat/widget/c1;->o:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1}, Landroidx/appcompat/widget/d1;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/appcompat/widget/c1;->v:Landroidx/appcompat/widget/d1;

    .line 8
    iget-object v2, p0, Landroidx/appcompat/widget/c1;->o:Landroid/view/View;

    iget v3, p0, Landroidx/appcompat/widget/c1;->t:I

    iget v4, p0, Landroidx/appcompat/widget/c1;->u:I

    iget-boolean v5, p0, Landroidx/appcompat/widget/c1;->w:Z

    iget-object v6, p0, Landroidx/appcompat/widget/c1;->p:Ljava/lang/CharSequence;

    invoke-virtual/range {v1 .. v6}, Landroidx/appcompat/widget/d1;->e(Landroid/view/View;IIZLjava/lang/CharSequence;)V

    .line 9
    iget-object p1, p0, Landroidx/appcompat/widget/c1;->o:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 10
    iget-boolean p1, p0, Landroidx/appcompat/widget/c1;->w:Z

    if-eqz p1, :cond_3e

    const-wide/16 v0, 0x9c4

    goto :goto_57

    .line 11
    :cond_3e
    iget-object p1, p0, Landroidx/appcompat/widget/c1;->o:Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/a0;->N(Landroid/view/View;)I

    move-result p1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_4f

    const-wide/16 v0, 0xbb8

    .line 12
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    goto :goto_55

    :cond_4f
    const-wide/16 v0, 0x3a98

    .line 13
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    :goto_55
    int-to-long v2, p1

    sub-long/2addr v0, v2

    .line 14
    :goto_57
    iget-object p1, p0, Landroidx/appcompat/widget/c1;->o:Landroid/view/View;

    iget-object v2, p0, Landroidx/appcompat/widget/c1;->s:Ljava/lang/Runnable;

    invoke-virtual {p1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 15
    iget-object p1, p0, Landroidx/appcompat/widget/c1;->o:Landroid/view/View;

    iget-object v2, p0, Landroidx/appcompat/widget/c1;->s:Ljava/lang/Runnable;

    invoke-virtual {p1, v2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    .line 1
    iget-object p1, p0, Landroidx/appcompat/widget/c1;->v:Landroidx/appcompat/widget/d1;

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Landroidx/appcompat/widget/c1;->w:Z

    if-eqz p1, :cond_a

    return v0

    .line 2
    :cond_a
    iget-object p1, p0, Landroidx/appcompat/widget/c1;->o:Landroid/view/View;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "accessibility"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    .line 4
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p1

    if-eqz p1, :cond_25

    return v0

    .line 5
    :cond_25
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x7

    if-eq p1, v1, :cond_38

    const/16 p2, 0xa

    if-eq p1, p2, :cond_31

    goto :goto_4d

    .line 6
    :cond_31
    invoke-direct {p0}, Landroidx/appcompat/widget/c1;->c()V

    .line 7
    invoke-virtual {p0}, Landroidx/appcompat/widget/c1;->d()V

    goto :goto_4d

    .line 8
    :cond_38
    iget-object p1, p0, Landroidx/appcompat/widget/c1;->o:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_4d

    iget-object p1, p0, Landroidx/appcompat/widget/c1;->v:Landroidx/appcompat/widget/d1;

    if-nez p1, :cond_4d

    invoke-direct {p0, p2}, Landroidx/appcompat/widget/c1;->j(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 9
    invoke-static {p0}, Landroidx/appcompat/widget/c1;->g(Landroidx/appcompat/widget/c1;)V

    :cond_4d
    :goto_4d
    return v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/appcompat/widget/c1;->t:I

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroidx/appcompat/widget/c1;->u:I

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/c1;->i(Z)V

    return p1
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/c1;->d()V

    return-void
.end method

###### Class androidx.appcompat.widget.a1 (androidx.appcompat.widget.a1)
.class public final synthetic Landroidx/appcompat/widget/a1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Landroidx/appcompat/widget/c1;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/widget/c1;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/a1;->o:Landroidx/appcompat/widget/c1;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/a1;->o:Landroidx/appcompat/widget/c1;

    invoke-virtual {v0}, Landroidx/appcompat/widget/c1;->d()V

    return-void
.end method

###### Class androidx.appcompat.widget.b1 (androidx.appcompat.widget.b1)
.class public final synthetic Landroidx/appcompat/widget/b1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Landroidx/appcompat/widget/c1;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/widget/c1;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/b1;->o:Landroidx/appcompat/widget/c1;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/b1;->o:Landroidx/appcompat/widget/c1;

    invoke-static {v0}, Landroidx/appcompat/widget/c1;->a(Landroidx/appcompat/widget/c1;)V

    return-void
.end method
