###### Class k2.k (k2.k)
.class public Lk2/k;
.super Ll2/a;
.source "GlideBitmapDrawableResource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ll2/a<",
        "Lk2/j;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lc2/c;


# direct methods
.method public constructor <init>(Lk2/j;Lc2/c;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Ll2/a;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iput-object p2, p0, Lk2/k;->b:Lc2/c;

    return-void
.end method


# virtual methods
.method public b()V
    .registers 3

    .line 1
    iget-object v0, p0, Lk2/k;->b:Lc2/c;

    iget-object v1, p0, Ll2/a;->a:Landroid/graphics/drawable/Drawable;

    check-cast v1, Lk2/j;

    invoke-virtual {v1}, Lk2/j;->d()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, v1}, Lc2/c;->a(Landroid/graphics/Bitmap;)Z

    return-void
.end method

.method public c()I
    .registers 2

    .line 1
    iget-object v0, p0, Ll2/a;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lk2/j;

    invoke-virtual {v0}, Lk2/j;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lx2/h;->f(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method
