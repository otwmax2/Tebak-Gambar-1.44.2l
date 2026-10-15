###### Class v2.e (v2.e)
.class public abstract Lv2/e;
.super Lv2/k;
.source "ImageViewTarget.java"

# interfaces
.implements Lu2/c$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Lv2/k<",
        "Landroid/widget/ImageView;",
        "TZ;>;",
        "Lu2/c$a;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lv2/k;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;Lu2/c;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;",
            "Lu2/c<",
            "-TZ;>;)V"
        }
    .end annotation

    if-eqz p2, :cond_8

    .line 1
    invoke-interface {p2, p1, p0}, Lu2/c;->a(Ljava/lang/Object;Lu2/c$a;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 2
    :cond_8
    invoke-virtual {p0, p1}, Lv2/e;->o(Ljava/lang/Object;)V

    :cond_b
    return-void
.end method

.method public d(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lv2/k;->p:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public e()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-object v0, p0, Lv2/k;->p:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lv2/k;->p:Landroid/view/View;

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public j(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lv2/k;->p:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public l(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lv2/k;->p:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected abstract o(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;)V"
        }
    .end annotation
.end method
