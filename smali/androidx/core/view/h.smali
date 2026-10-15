###### Class androidx.core.view.h (androidx.core.view.h)
.class public final Landroidx/core/view/h;
.super Ljava/lang/Object;
.source "MarginLayoutParamsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/h$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_b

    .line 2
    invoke-static {p0}, Landroidx/core/view/h$a;->b(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result p0

    return p0

    .line 3
    :cond_b
    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    return p0
.end method

.method public static b(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_b

    .line 2
    invoke-static {p0}, Landroidx/core/view/h$a;->c(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result p0

    return p0

    .line 3
    :cond_b
    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    return p0
.end method

.method public static c(Landroid/view/ViewGroup$MarginLayoutParams;I)V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_a

    .line 2
    invoke-static {p0, p1}, Landroidx/core/view/h$a;->g(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    goto :goto_c

    .line 3
    :cond_a
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_c
    return-void
.end method

.method public static d(Landroid/view/ViewGroup$MarginLayoutParams;I)V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_a

    .line 2
    invoke-static {p0, p1}, Landroidx/core/view/h$a;->h(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    goto :goto_c

    .line 3
    :cond_a
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_c
    return-void
.end method

###### Class androidx.core.view.h.a (androidx.core.view.h$a)
.class Landroidx/core/view/h$a;
.super Ljava/lang/Object;
.source "MarginLayoutParamsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method static a(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getLayoutDirection()I

    move-result p0

    return p0
.end method

.method static b(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p0

    return p0
.end method

.method static c(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result p0

    return p0
.end method

.method static d(Landroid/view/ViewGroup$MarginLayoutParams;)Z
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->isMarginRelative()Z

    move-result p0

    return p0
.end method

.method static e(Landroid/view/ViewGroup$MarginLayoutParams;I)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->resolveLayoutDirection(I)V

    return-void
.end method

.method static f(Landroid/view/ViewGroup$MarginLayoutParams;I)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setLayoutDirection(I)V

    return-void
.end method

.method static g(Landroid/view/ViewGroup$MarginLayoutParams;I)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    return-void
.end method

.method static h(Landroid/view/ViewGroup$MarginLayoutParams;I)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    return-void
.end method
