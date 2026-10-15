###### Class k2.q (k2.q)
.class public Lk2/q;
.super Ljava/lang/Object;
.source "StreamBitmapDecoder.java"

# interfaces
.implements Lz1/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz1/e<",
        "Ljava/io/InputStream;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lk2/f;

.field private b:Lc2/c;

.field private c:Lz1/a;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lc2/c;Lz1/a;)V
    .registers 4

    .line 1
    sget-object v0, Lk2/f;->c:Lk2/f;

    invoke-direct {p0, v0, p1, p2}, Lk2/q;-><init>(Lk2/f;Lc2/c;Lz1/a;)V

    return-void
.end method

.method public constructor <init>(Lk2/f;Lc2/c;Lz1/a;)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lk2/q;->a:Lk2/f;

    .line 4
    iput-object p2, p0, Lk2/q;->b:Lc2/c;

    .line 5
    iput-object p3, p0, Lk2/q;->c:Lz1/a;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lk2/q;->d:Ljava/lang/String;

    if-nez v0, :cond_26

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StreamBitmapDecoder.com.bumptech.glide.load.resource.bitmap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk2/q;->a:Lk2/f;

    invoke-interface {v1}, Lk2/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk2/q;->c:Lz1/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lk2/q;->d:Ljava/lang/String;

    .line 3
    :cond_26
    iget-object v0, p0, Lk2/q;->d:Ljava/lang/String;

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
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2, p3}, Lk2/q;->c(Ljava/io/InputStream;II)Lb2/l;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/io/InputStream;II)Lb2/l;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "II)",
            "Lb2/l<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk2/q;->a:Lk2/f;

    iget-object v2, p0, Lk2/q;->b:Lc2/c;

    iget-object v5, p0, Lk2/q;->c:Lz1/a;

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lk2/f;->b(Ljava/io/InputStream;Lc2/c;IILz1/a;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lk2/q;->b:Lc2/c;

    invoke-static {p1, p2}, Lk2/c;->d(Landroid/graphics/Bitmap;Lc2/c;)Lk2/c;

    move-result-object p1

    return-object p1
.end method
