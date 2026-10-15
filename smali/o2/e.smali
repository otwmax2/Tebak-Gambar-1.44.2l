###### Class o2.e (o2.e)
.class public Lo2/e;
.super Ljava/lang/Object;
.source "GifBitmapWrapperStreamResourceDecoder.java"

# interfaces
.implements Lz1/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz1/e<",
        "Ljava/io/InputStream;",
        "Lo2/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lz1/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz1/e<",
            "Lg2/g;",
            "Lo2/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lz1/e;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz1/e<",
            "Lg2/g;",
            "Lo2/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo2/e;->a:Lz1/e;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lo2/e;->a:Lz1/e;

    invoke-interface {v0}, Lz1/e;->a()Ljava/lang/String;

    move-result-object v0

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

    invoke-virtual {p0, p1, p2, p3}, Lo2/e;->c(Ljava/io/InputStream;II)Lb2/l;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/io/InputStream;II)Lb2/l;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "II)",
            "Lb2/l<",
            "Lo2/a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lo2/e;->a:Lz1/e;

    new-instance v1, Lg2/g;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lg2/g;-><init>(Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;)V

    invoke-interface {v0, v1, p2, p3}, Lz1/e;->b(Ljava/lang/Object;II)Lb2/l;

    move-result-object p1

    return-object p1
.end method
