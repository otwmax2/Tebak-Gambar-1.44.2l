###### Class f8.k (f8.k)
.class Lf8/k;
.super Lf8/g;
.source "FileRequestHandler.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lf8/g;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static k(Landroid/net/Uri;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/media/ExifInterface;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p0, "Orientation"

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, p0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_22

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1f

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1c

    const/4 p0, 0x0

    return p0

    :cond_1c
    const/16 p0, 0x10e

    return p0

    :cond_1f
    const/16 p0, 0x5a

    return p0

    :cond_22
    const/16 p0, 0xb4

    return p0
.end method


# virtual methods
.method public c(Lf8/w;)Z
    .registers 3

    .line 1
    iget-object p1, p1, Lf8/w;->d:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "file"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f(Lf8/w;I)Lf8/y$a;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p2, Lf8/y$a;

    invoke-virtual {p0, p1}, Lf8/g;->j(Lf8/w;)Ljava/io/InputStream;

    move-result-object v0

    sget-object v1, Lf8/t$e;->q:Lf8/t$e;

    iget-object p1, p1, Lf8/w;->d:Landroid/net/Uri;

    invoke-static {p1}, Lf8/k;->k(Landroid/net/Uri;)I

    move-result p1

    const/4 v2, 0x0

    invoke-direct {p2, v2, v0, v1, p1}, Lf8/y$a;-><init>(Landroid/graphics/Bitmap;Ljava/io/InputStream;Lf8/t$e;I)V

    return-object p2
.end method
