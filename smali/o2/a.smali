###### Class o2.a (o2.a)
.class public Lo2/a;
.super Ljava/lang/Object;
.source "GifBitmapWrapper.java"


# instance fields
.field private final a:Lb2/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/l<",
            "Ln2/b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lb2/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/l<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb2/l;Lb2/l;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb2/l<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lb2/l<",
            "Ln2/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_10

    if-nez p2, :cond_8

    goto :goto_10

    .line 2
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can only contain either a bitmap resource or a gif resource, not both"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    :goto_10
    if-nez p1, :cond_1d

    if-eqz p2, :cond_15

    goto :goto_1d

    .line 3
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must contain either a bitmap resource or a gif resource"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1d
    :goto_1d
    iput-object p1, p0, Lo2/a;->b:Lb2/l;

    .line 5
    iput-object p2, p0, Lo2/a;->a:Lb2/l;

    return-void
.end method


# virtual methods
.method public a()Lb2/l;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb2/l<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lo2/a;->b:Lb2/l;

    return-object v0
.end method

.method public b()Lb2/l;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb2/l<",
            "Ln2/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lo2/a;->a:Lb2/l;

    return-object v0
.end method

.method public c()I
    .registers 2

    .line 1
    iget-object v0, p0, Lo2/a;->b:Lb2/l;

    if-eqz v0, :cond_9

    .line 2
    invoke-interface {v0}, Lb2/l;->c()I

    move-result v0

    return v0

    .line 3
    :cond_9
    iget-object v0, p0, Lo2/a;->a:Lb2/l;

    invoke-interface {v0}, Lb2/l;->c()I

    move-result v0

    return v0
.end method
