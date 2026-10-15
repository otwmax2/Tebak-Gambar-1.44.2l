###### Class o2.d (o2.d)
.class public Lo2/d;
.super Ljava/lang/Object;
.source "GifBitmapWrapperResourceEncoder.java"

# interfaces
.implements Lz1/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz1/f<",
        "Lo2/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lz1/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz1/f<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lz1/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz1/f<",
            "Ln2/b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lz1/f;Lz1/f;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz1/f<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lz1/f<",
            "Ln2/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo2/d;->a:Lz1/f;

    .line 3
    iput-object p2, p0, Lo2/d;->b:Lz1/f;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lo2/d;->c:Ljava/lang/String;

    if-nez v0, :cond_21

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo2/d;->a:Lz1/f;

    invoke-interface {v1}, Lz1/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo2/d;->b:Lz1/f;

    invoke-interface {v1}, Lz1/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo2/d;->c:Ljava/lang/String;

    .line 3
    :cond_21
    iget-object v0, p0, Lo2/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic b(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .registers 3

    .line 1
    check-cast p1, Lb2/l;

    invoke-virtual {p0, p1, p2}, Lo2/d;->c(Lb2/l;Ljava/io/OutputStream;)Z

    move-result p1

    return p1
.end method

.method public c(Lb2/l;Ljava/io/OutputStream;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb2/l<",
            "Lo2/a;",
            ">;",
            "Ljava/io/OutputStream;",
            ")Z"
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
    iget-object p1, p0, Lo2/d;->a:Lz1/f;

    invoke-interface {p1, v0, p2}, Lz1/b;->b(Ljava/lang/Object;Ljava/io/OutputStream;)Z

    move-result p1

    return p1

    .line 4
    :cond_13
    iget-object v0, p0, Lo2/d;->b:Lz1/f;

    invoke-virtual {p1}, Lo2/a;->b()Lb2/l;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lz1/b;->b(Ljava/lang/Object;Ljava/io/OutputStream;)Z

    move-result p1

    return p1
.end method
