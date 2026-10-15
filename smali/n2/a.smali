###### Class n2.a (n2.a)
.class Ln2/a;
.super Ljava/lang/Object;
.source "GifBitmapProvider.java"

# interfaces
.implements Lx1/a$a;


# instance fields
.field private final a:Lc2/c;


# direct methods
.method public constructor <init>(Lc2/c;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln2/a;->a:Lc2/c;

    return-void
.end method


# virtual methods
.method public a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 5

    .line 1
    iget-object v0, p0, Ln2/a;->a:Lc2/c;

    invoke-interface {v0, p1, p2, p3}, Lc2/c;->e(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/graphics/Bitmap;)V
    .registers 3

    .line 1
    iget-object v0, p0, Ln2/a;->a:Lc2/c;

    invoke-interface {v0, p1}, Lc2/c;->a(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_b
    return-void
.end method
