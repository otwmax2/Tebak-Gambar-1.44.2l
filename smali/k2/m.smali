###### Class k2.m (k2.m)
.class public Lk2/m;
.super Ljava/lang/Object;
.source "ImageVideoBitmapDecoder.java"

# interfaces
.implements Lz1/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz1/e<",
        "Lg2/g;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lz1/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz1/e<",
            "Ljava/io/InputStream;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lz1/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz1/e<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lz1/e;Lz1/e;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz1/e<",
            "Ljava/io/InputStream;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lz1/e<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lk2/m;->a:Lz1/e;

    .line 3
    iput-object p2, p0, Lk2/m;->b:Lz1/e;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "ImageVideoBitmapDecoder.com.bumptech.glide.load.resource.bitmap"

    return-object v0
.end method

.method public bridge synthetic b(Ljava/lang/Object;II)Lb2/l;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lg2/g;

    invoke-virtual {p0, p1, p2, p3}, Lk2/m;->c(Lg2/g;II)Lb2/l;

    move-result-object p1

    return-object p1
.end method

.method public c(Lg2/g;II)Lb2/l;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg2/g;",
            "II)",
            "Lb2/l<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lg2/g;->b()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 2
    :try_start_6
    iget-object v1, p0, Lk2/m;->a:Lz1/e;

    invoke-interface {v1, v0, p2, p3}, Lz1/e;->b(Ljava/lang/Object;II)Lb2/l;

    move-result-object v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_c} :catch_d

    goto :goto_1d

    :catch_d
    move-exception v0

    const/4 v1, 0x2

    const-string v2, "ImageVideoDecoder"

    .line 3
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string v1, "Failed to load image from stream, trying FileDescriptor"

    .line 4
    invoke-static {v2, v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    if-nez v0, :cond_2b

    .line 5
    invoke-virtual {p1}, Lg2/g;->a()Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    if-eqz p1, :cond_2b

    .line 6
    iget-object v0, p0, Lk2/m;->b:Lz1/e;

    invoke-interface {v0, p1, p2, p3}, Lz1/e;->b(Ljava/lang/Object;II)Lb2/l;

    move-result-object v0

    :cond_2b
    return-object v0
.end method
