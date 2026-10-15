###### Class y8.b (y8.b)
.class public Ly8/b;
.super Ljava/lang/Object;
.source "BindingAdapters.java"


# direct methods
.method public static a(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lv1/g;->v(Landroid/content/Context;)Lv1/j;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lv1/j;->x(Ljava/lang/String;)Lv1/d;

    move-result-object p1

    if-eqz p2, :cond_15

    .line 3
    invoke-virtual {p1, p2}, Lv1/c;->R(Landroid/graphics/drawable/Drawable;)Lv1/c;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p2}, Lv1/c;->K(Landroid/graphics/drawable/Drawable;)Lv1/c;

    .line 5
    :cond_15
    invoke-virtual {p1}, Lv1/c;->I()Lv1/c;

    move-result-object p1

    sget-object p2, Lb2/b;->q:Lb2/b;

    .line 6
    invoke-virtual {p1, p2}, Lv1/c;->H(Lb2/b;)Lv1/c;

    move-result-object p1

    .line 7
    invoke-virtual {p1, p0}, Lv1/c;->p(Landroid/widget/ImageView;)Lv2/j;

    return-void
.end method
