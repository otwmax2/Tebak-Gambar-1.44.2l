###### Class k2.h (k2.h)
.class public Lk2/h;
.super Ljava/lang/Object;
.source "FileDescriptorBitmapDecoder.java"

# interfaces
.implements Lz1/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz1/e<",
        "Landroid/os/ParcelFileDescriptor;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lk2/s;

.field private final b:Lc2/c;

.field private c:Lz1/a;


# direct methods
.method public constructor <init>(Lc2/c;Lz1/a;)V
    .registers 4

    .line 1
    new-instance v0, Lk2/s;

    invoke-direct {v0}, Lk2/s;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lk2/h;-><init>(Lk2/s;Lc2/c;Lz1/a;)V

    return-void
.end method

.method public constructor <init>(Lk2/s;Lc2/c;Lz1/a;)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lk2/h;->a:Lk2/s;

    .line 4
    iput-object p2, p0, Lk2/h;->b:Lc2/c;

    .line 5
    iput-object p3, p0, Lk2/h;->c:Lz1/a;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "FileDescriptorBitmapDecoder.com.bumptech.glide.load.data.bitmap"

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
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0, p1, p2, p3}, Lk2/h;->c(Landroid/os/ParcelFileDescriptor;II)Lb2/l;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/os/ParcelFileDescriptor;II)Lb2/l;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
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
    iget-object v0, p0, Lk2/h;->a:Lk2/s;

    iget-object v2, p0, Lk2/h;->b:Lc2/c;

    iget-object v5, p0, Lk2/h;->c:Lz1/a;

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lk2/s;->b(Landroid/os/ParcelFileDescriptor;Lc2/c;IILz1/a;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lk2/h;->b:Lc2/c;

    invoke-static {p1, p2}, Lk2/c;->d(Landroid/graphics/Bitmap;Lc2/c;)Lk2/c;

    move-result-object p1

    return-object p1
.end method
