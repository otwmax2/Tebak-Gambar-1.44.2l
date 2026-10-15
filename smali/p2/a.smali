###### Class p2.a (p2.a)
.class public Lp2/a;
.super Ljava/lang/Object;
.source "GifBitmapWrapperDrawableTranscoder.java"

# interfaces
.implements Lp2/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lp2/c<",
        "Lo2/a;",
        "Ll2/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lp2/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp2/c<",
            "Landroid/graphics/Bitmap;",
            "Lk2/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lp2/c;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp2/c<",
            "Landroid/graphics/Bitmap;",
            "Lk2/j;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lp2/a;->a:Lp2/c;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "GifBitmapWrapperDrawableTranscoder.com.bumptech.glide.load.resource.transcode"

    return-object v0
.end method

.method public b(Lb2/l;)Lb2/l;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb2/l<",
            "Lo2/a;",
            ">;)",
            "Lb2/l<",
            "Ll2/b;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lb2/l;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo2/a;

    .line 2
    invoke-virtual {p1}, Lo2/a;->a()Lb2/l;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 3
    iget-object p1, p0, Lp2/a;->a:Lp2/c;

    invoke-interface {p1, v0}, Lp2/c;->b(Lb2/l;)Lb2/l;

    move-result-object p1

    goto :goto_17

    .line 4
    :cond_13
    invoke-virtual {p1}, Lo2/a;->b()Lb2/l;

    move-result-object p1

    :goto_17
    return-object p1
.end method
