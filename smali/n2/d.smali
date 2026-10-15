###### Class n2.d (n2.d)
.class public Ln2/d;
.super Ll2/a;
.source "GifDrawableResource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ll2/a<",
        "Ln2/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ln2/b;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Ll2/a;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 2

    .line 1
    iget-object v0, p0, Ll2/a;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Ln2/b;

    invoke-virtual {v0}, Ln2/b;->stop()V

    .line 2
    iget-object v0, p0, Ll2/a;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Ln2/b;

    invoke-virtual {v0}, Ln2/b;->h()V

    return-void
.end method

.method public c()I
    .registers 3

    .line 1
    iget-object v0, p0, Ll2/a;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Ln2/b;

    invoke-virtual {v0}, Ln2/b;->d()[B

    move-result-object v0

    array-length v0, v0

    iget-object v1, p0, Ll2/a;->a:Landroid/graphics/drawable/Drawable;

    check-cast v1, Ln2/b;

    invoke-virtual {v1}, Ln2/b;->e()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lx2/h;->f(Landroid/graphics/Bitmap;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
