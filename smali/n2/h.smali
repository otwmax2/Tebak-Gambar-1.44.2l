###### Class n2.h (n2.h)
.class Ln2/h;
.super Ljava/lang/Object;
.source "GifFrameResourceDecoder.java"

# interfaces
.implements Lz1/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz1/e<",
        "Lx1/a;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lc2/c;


# direct methods
.method public constructor <init>(Lc2/c;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln2/h;->a:Lc2/c;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "GifFrameResourceDecoder.com.bumptech.glide.load.resource.gif"

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
    check-cast p1, Lx1/a;

    invoke-virtual {p0, p1, p2, p3}, Ln2/h;->c(Lx1/a;II)Lb2/l;

    move-result-object p1

    return-object p1
.end method

.method public c(Lx1/a;II)Lb2/l;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx1/a;",
            "II)",
            "Lb2/l<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lx1/a;->i()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2
    iget-object p2, p0, Ln2/h;->a:Lc2/c;

    invoke-static {p1, p2}, Lk2/c;->d(Landroid/graphics/Bitmap;Lc2/c;)Lk2/c;

    move-result-object p1

    return-object p1
.end method
