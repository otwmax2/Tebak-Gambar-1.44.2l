###### Class v2.d (v2.d)
.class public Lv2/d;
.super Lv2/e;
.source "GlideDrawableImageViewTarget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lv2/e<",
        "Ll2/b;",
        ">;"
    }
.end annotation


# instance fields
.field private t:I

.field private u:Ll2/b;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .registers 3

    const/4 v0, -0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lv2/d;-><init>(Landroid/widget/ImageView;I)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;I)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lv2/e;-><init>(Landroid/widget/ImageView;)V

    .line 3
    iput p2, p0, Lv2/d;->t:I

    return-void
.end method


# virtual methods
.method public b()V
    .registers 2

    .line 1
    iget-object v0, p0, Lv2/d;->u:Ll2/b;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    :cond_7
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;Lu2/c;)V
    .registers 3

    .line 1
    check-cast p1, Ll2/b;

    invoke-virtual {p0, p1, p2}, Lv2/d;->p(Ll2/b;Lu2/c;)V

    return-void
.end method

.method public h()V
    .registers 2

    .line 1
    iget-object v0, p0, Lv2/d;->u:Ll2/b;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    :cond_7
    return-void
.end method

.method protected bridge synthetic o(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ll2/b;

    invoke-virtual {p0, p1}, Lv2/d;->q(Ll2/b;)V

    return-void
.end method

.method public p(Ll2/b;Lu2/c;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll2/b;",
            "Lu2/c<",
            "-",
            "Ll2/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ll2/b;->b()Z

    move-result v0

    if-nez v0, :cond_49

    .line 2
    iget-object v0, p0, Lv2/k;->p:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lv2/k;->p:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v0, v2

    .line 4
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v3, 0x3d4ccccd    # 0.05f

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_49

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_49

    .line 5
    new-instance v0, Lv2/i;

    iget-object v1, p0, Lv2/k;->p:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lv2/i;-><init>(Ll2/b;I)V

    move-object p1, v0

    .line 6
    :cond_49
    invoke-super {p0, p1, p2}, Lv2/e;->c(Ljava/lang/Object;Lu2/c;)V

    .line 7
    iput-object p1, p0, Lv2/d;->u:Ll2/b;

    .line 8
    iget p2, p0, Lv2/d;->t:I

    invoke-virtual {p1, p2}, Ll2/b;->c(I)V

    .line 9
    invoke-interface {p1}, Landroid/graphics/drawable/Animatable;->start()V

    return-void
.end method

.method protected q(Ll2/b;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lv2/k;->p:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
