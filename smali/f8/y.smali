###### Class f8.y (f8.y)
.class public abstract Lf8/y;
.super Ljava/lang/Object;
.source "RequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf8/y$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(IIIILandroid/graphics/BitmapFactory$Options;Lf8/w;)V
    .registers 8

    if-gt p3, p1, :cond_7

    if-le p2, p0, :cond_5

    goto :goto_7

    :cond_5
    const/4 p0, 0x1

    goto :goto_3d

    :cond_7
    :goto_7
    if-nez p1, :cond_13

    int-to-float p1, p2

    int-to-float p0, p0

    div-float/2addr p1, p0

    float-to-double p0, p1

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    :goto_11
    double-to-int p0, p0

    goto :goto_3d

    :cond_13
    if-nez p0, :cond_1e

    int-to-float p0, p3

    int-to-float p1, p1

    div-float/2addr p0, p1

    float-to-double p0, p0

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    goto :goto_11

    :cond_1e
    int-to-float p3, p3

    int-to-float p1, p1

    div-float/2addr p3, p1

    float-to-double v0, p3

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    int-to-float p2, p2

    int-to-float p0, p0

    div-float/2addr p2, p0

    float-to-double p2, p2

    .line 4
    invoke-static {p2, p3}, Ljava/lang/Math;->floor(D)D

    move-result-wide p2

    double-to-int p0, p2

    .line 5
    iget-boolean p2, p5, Lf8/w;->k:Z

    if-eqz p2, :cond_39

    .line 6
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_3d

    .line 7
    :cond_39
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 8
    :goto_3d
    iput p0, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p0, 0x0

    .line 9
    iput-boolean p0, p4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    return-void
.end method

.method static b(IILandroid/graphics/BitmapFactory$Options;Lf8/w;)V
    .registers 10

    .line 1
    iget v2, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move v0, p0

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lf8/y;->a(IIIILandroid/graphics/BitmapFactory$Options;Lf8/w;)V

    return-void
.end method

.method static d(Lf8/w;)Landroid/graphics/BitmapFactory$Options;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lf8/w;->c()Z

    move-result v0

    .line 2
    iget-object v1, p0, Lf8/w;->q:Landroid/graphics/Bitmap$Config;

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    const/4 v2, 0x0

    if-nez v0, :cond_10

    if-eqz v1, :cond_1d

    .line 3
    :cond_10
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 4
    iput-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v1, :cond_1d

    .line 5
    iget-object p0, p0, Lf8/w;->q:Landroid/graphics/Bitmap$Config;

    iput-object p0, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    :cond_1d
    return-object v2
.end method

.method static g(Landroid/graphics/BitmapFactory$Options;)Z
    .registers 1

    if-eqz p0, :cond_8

    .line 1
    iget-boolean p0, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method


# virtual methods
.method public abstract c(Lf8/w;)Z
.end method

.method e()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public abstract f(Lf8/w;I)Lf8/y$a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method h(ZLandroid/net/NetworkInfo;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method i()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

###### Class f8.y.a (f8.y$a)
.class public final Lf8/y$a;
.super Ljava/lang/Object;
.source "RequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf8/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lf8/t$e;

.field private final b:Landroid/graphics/Bitmap;

.field private final c:Ljava/io/InputStream;

.field private final d:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lf8/t$e;)V
    .registers 5

    const-string v0, "bitmap == null"

    .line 1
    invoke-static {p1, v0}, Lf8/e0;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lf8/y$a;-><init>(Landroid/graphics/Bitmap;Ljava/io/InputStream;Lf8/t$e;I)V

    return-void
.end method

.method constructor <init>(Landroid/graphics/Bitmap;Ljava/io/InputStream;Lf8/t$e;I)V
    .registers 8

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    const/4 v2, 0x1

    goto :goto_a

    :cond_9
    const/4 v2, 0x0

    :goto_a
    if-eqz p2, :cond_d

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    xor-int/2addr v0, v2

    if-eqz v0, :cond_22

    .line 4
    iput-object p1, p0, Lf8/y$a;->b:Landroid/graphics/Bitmap;

    .line 5
    iput-object p2, p0, Lf8/y$a;->c:Ljava/io/InputStream;

    const-string p1, "loadedFrom == null"

    .line 6
    invoke-static {p3, p1}, Lf8/e0;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf8/t$e;

    iput-object p1, p0, Lf8/y$a;->a:Lf8/t$e;

    .line 7
    iput p4, p0, Lf8/y$a;->d:I

    return-void

    .line 8
    :cond_22
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public constructor <init>(Ljava/io/InputStream;Lf8/t$e;)V
    .registers 5

    const-string v0, "stream == null"

    .line 2
    invoke-static {p1, v0}, Lf8/e0;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lf8/y$a;-><init>(Landroid/graphics/Bitmap;Ljava/io/InputStream;Lf8/t$e;I)V

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .registers 2

    .line 1
    iget-object v0, p0, Lf8/y$a;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method b()I
    .registers 2

    .line 1
    iget v0, p0, Lf8/y$a;->d:I

    return v0
.end method

.method public c()Lf8/t$e;
    .registers 2

    .line 1
    iget-object v0, p0, Lf8/y$a;->a:Lf8/t$e;

    return-object v0
.end method

.method public d()Ljava/io/InputStream;
    .registers 2

    .line 1
    iget-object v0, p0, Lf8/y$a;->c:Ljava/io/InputStream;

    return-object v0
.end method
