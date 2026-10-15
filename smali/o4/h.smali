###### Class o4.h (o4.h)
.class public Lo4/h;
.super Ljava/lang/Object;
.source "MaterialShapeUtils.java"


# direct methods
.method static a(I)Lo4/d;
    .registers 2

    if-eqz p0, :cond_10

    const/4 v0, 0x1

    if-eq p0, v0, :cond_a

    .line 1
    invoke-static {}, Lo4/h;->b()Lo4/d;

    move-result-object p0

    return-object p0

    .line 2
    :cond_a
    new-instance p0, Lo4/e;

    invoke-direct {p0}, Lo4/e;-><init>()V

    return-object p0

    .line 3
    :cond_10
    new-instance p0, Lo4/j;

    invoke-direct {p0}, Lo4/j;-><init>()V

    return-object p0
.end method

.method static b()Lo4/d;
    .registers 1

    .line 1
    new-instance v0, Lo4/j;

    invoke-direct {v0}, Lo4/j;-><init>()V

    return-object v0
.end method

.method static c()Lo4/f;
    .registers 1

    .line 1
    new-instance v0, Lo4/f;

    invoke-direct {v0}, Lo4/f;-><init>()V

    return-object v0
.end method

.method public static d(Landroid/view/View;F)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 2
    instance-of v0, p0, Lo4/g;

    if-eqz v0, :cond_d

    .line 3
    check-cast p0, Lo4/g;

    invoke-virtual {p0, p1}, Lo4/g;->V(F)V

    :cond_d
    return-void
.end method

.method public static e(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lo4/g;

    if-eqz v1, :cond_d

    .line 3
    check-cast v0, Lo4/g;

    invoke-static {p0, v0}, Lo4/h;->f(Landroid/view/View;Lo4/g;)V

    :cond_d
    return-void
.end method

.method public static f(Landroid/view/View;Lo4/g;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Lo4/g;->O()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2
    invoke-static {p0}, Lcom/google/android/material/internal/k;->c(Landroid/view/View;)F

    move-result p0

    invoke-virtual {p1, p0}, Lo4/g;->Z(F)V

    :cond_d
    return-void
.end method
