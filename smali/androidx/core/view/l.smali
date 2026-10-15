###### Class androidx.core.view.l (androidx.core.view.l)
.class public final Landroidx/core/view/l;
.super Ljava/lang/Object;
.source "MenuItemCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/l$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/view/MenuItem;Landroidx/core/view/b;)Landroid/view/MenuItem;
    .registers 3

    .line 1
    instance-of v0, p0, Lx/b;

    if-eqz v0, :cond_b

    .line 2
    check-cast p0, Lx/b;

    invoke-interface {p0, p1}, Lx/b;->a(Landroidx/core/view/b;)Lx/b;

    move-result-object p0

    return-object p0

    :cond_b
    const-string p1, "MenuItemCompat"

    const-string v0, "setActionProvider: item does not implement SupportMenuItem; ignoring"

    .line 3
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static b(Landroid/view/MenuItem;CI)V
    .registers 5

    .line 1
    instance-of v0, p0, Lx/b;

    if-eqz v0, :cond_a

    .line 2
    check-cast p0, Lx/b;

    invoke-interface {p0, p1, p2}, Lx/b;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    goto :goto_13

    .line 3
    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_13

    .line 4
    invoke-static {p0, p1, p2}, Landroidx/core/view/l$a;->g(Landroid/view/MenuItem;CI)Landroid/view/MenuItem;

    :cond_13
    :goto_13
    return-void
.end method

.method public static c(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V
    .registers 4

    .line 1
    instance-of v0, p0, Lx/b;

    if-eqz v0, :cond_a

    .line 2
    check-cast p0, Lx/b;

    invoke-interface {p0, p1}, Lx/b;->setContentDescription(Ljava/lang/CharSequence;)Lx/b;

    goto :goto_13

    .line 3
    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_13

    .line 4
    invoke-static {p0, p1}, Landroidx/core/view/l$a;->h(Landroid/view/MenuItem;Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_13
    :goto_13
    return-void
.end method

.method public static d(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)V
    .registers 4

    .line 1
    instance-of v0, p0, Lx/b;

    if-eqz v0, :cond_a

    .line 2
    check-cast p0, Lx/b;

    invoke-interface {p0, p1}, Lx/b;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    goto :goto_13

    .line 3
    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_13

    .line 4
    invoke-static {p0, p1}, Landroidx/core/view/l$a;->i(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    :cond_13
    :goto_13
    return-void
.end method

.method public static e(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)V
    .registers 4

    .line 1
    instance-of v0, p0, Lx/b;

    if-eqz v0, :cond_a

    .line 2
    check-cast p0, Lx/b;

    invoke-interface {p0, p1}, Lx/b;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    goto :goto_13

    .line 3
    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_13

    .line 4
    invoke-static {p0, p1}, Landroidx/core/view/l$a;->j(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    :cond_13
    :goto_13
    return-void
.end method

.method public static f(Landroid/view/MenuItem;CI)V
    .registers 5

    .line 1
    instance-of v0, p0, Lx/b;

    if-eqz v0, :cond_a

    .line 2
    check-cast p0, Lx/b;

    invoke-interface {p0, p1, p2}, Lx/b;->setNumericShortcut(CI)Landroid/view/MenuItem;

    goto :goto_13

    .line 3
    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_13

    .line 4
    invoke-static {p0, p1, p2}, Landroidx/core/view/l$a;->k(Landroid/view/MenuItem;CI)Landroid/view/MenuItem;

    :cond_13
    :goto_13
    return-void
.end method

.method public static g(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V
    .registers 4

    .line 1
    instance-of v0, p0, Lx/b;

    if-eqz v0, :cond_a

    .line 2
    check-cast p0, Lx/b;

    invoke-interface {p0, p1}, Lx/b;->setTooltipText(Ljava/lang/CharSequence;)Lx/b;

    goto :goto_13

    .line 3
    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_13

    .line 4
    invoke-static {p0, p1}, Landroidx/core/view/l$a;->m(Landroid/view/MenuItem;Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_13
    :goto_13
    return-void
.end method

###### Class androidx.core.view.l.a (androidx.core.view.l$a)
.class Landroidx/core/view/l$a;
.super Ljava/lang/Object;
.source "MenuItemCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method static a(Landroid/view/MenuItem;)I
    .registers 1

    .line 1
    invoke-interface {p0}, Landroid/view/MenuItem;->getAlphabeticModifiers()I

    move-result p0

    return p0
.end method

.method static b(Landroid/view/MenuItem;)Ljava/lang/CharSequence;
    .registers 1

    .line 1
    invoke-interface {p0}, Landroid/view/MenuItem;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static c(Landroid/view/MenuItem;)Landroid/content/res/ColorStateList;
    .registers 1

    .line 1
    invoke-interface {p0}, Landroid/view/MenuItem;->getIconTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method static d(Landroid/view/MenuItem;)Landroid/graphics/PorterDuff$Mode;
    .registers 1

    .line 1
    invoke-interface {p0}, Landroid/view/MenuItem;->getIconTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    return-object p0
.end method

.method static e(Landroid/view/MenuItem;)I
    .registers 1

    .line 1
    invoke-interface {p0}, Landroid/view/MenuItem;->getNumericModifiers()I

    move-result p0

    return p0
.end method

.method static f(Landroid/view/MenuItem;)Ljava/lang/CharSequence;
    .registers 1

    .line 1
    invoke-interface {p0}, Landroid/view/MenuItem;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static g(Landroid/view/MenuItem;CI)Landroid/view/MenuItem;
    .registers 3

    .line 1
    invoke-interface {p0, p1, p2}, Landroid/view/MenuItem;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    move-result-object p0

    return-object p0
.end method

.method static h(Landroid/view/MenuItem;Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 2

    .line 1
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p0

    return-object p0
.end method

.method static i(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;
    .registers 2

    .line 1
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    move-result-object p0

    return-object p0
.end method

.method static j(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;
    .registers 2

    .line 1
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    move-result-object p0

    return-object p0
.end method

.method static k(Landroid/view/MenuItem;CI)Landroid/view/MenuItem;
    .registers 3

    .line 1
    invoke-interface {p0, p1, p2}, Landroid/view/MenuItem;->setNumericShortcut(CI)Landroid/view/MenuItem;

    move-result-object p0

    return-object p0
.end method

.method static l(Landroid/view/MenuItem;CCII)Landroid/view/MenuItem;
    .registers 5

    .line 1
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/view/MenuItem;->setShortcut(CCII)Landroid/view/MenuItem;

    move-result-object p0

    return-object p0
.end method

.method static m(Landroid/view/MenuItem;Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 2

    .line 1
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p0

    return-object p0
.end method
