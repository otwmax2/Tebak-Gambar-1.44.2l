###### Class k2.e (k2.e)
.class public Lk2/e;
.super Lk2/d;
.source "CenterCrop.java"


# direct methods
.method public constructor <init>(Lc2/c;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lk2/d;-><init>(Lc2/c;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "CenterCrop.com.bumptech.glide.load.resource.bitmap"

    return-object v0
.end method

.method protected c(Lc2/c;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 6

    .line 1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    goto :goto_d

    :cond_b
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_d
    invoke-interface {p1, p3, p4, v0}, Lc2/c;->b(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2
    invoke-static {v0, p2, p3, p4}, Lk2/r;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz v0, :cond_22

    if-eq v0, p2, :cond_22

    .line 3
    invoke-interface {p1, v0}, Lc2/c;->a(Landroid/graphics/Bitmap;)Z

    move-result p1

    if-nez p1, :cond_22

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_22
    return-object p2
.end method
