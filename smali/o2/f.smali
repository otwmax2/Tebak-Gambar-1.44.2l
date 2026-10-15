###### Class o2.f (o2.f)
.class public Lo2/f;
.super Ljava/lang/Object;
.source "GifBitmapWrapperTransformation.java"

# interfaces
.implements Lz1/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz1/g<",
        "Lo2/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lz1/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz1/g<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lz1/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz1/g<",
            "Ln2/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc2/c;Lz1/g;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc2/c;",
            "Lz1/g<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ln2/e;

    invoke-direct {v0, p2, p1}, Ln2/e;-><init>(Lz1/g;Lc2/c;)V

    invoke-direct {p0, p2, v0}, Lo2/f;-><init>(Lz1/g;Lz1/g;)V

    return-void
.end method

.method constructor <init>(Lz1/g;Lz1/g;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz1/g<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lz1/g<",
            "Ln2/b;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lo2/f;->a:Lz1/g;

    .line 4
    iput-object p2, p0, Lo2/f;->b:Lz1/g;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lo2/f;->a:Lz1/g;

    invoke-interface {v0}, Lz1/g;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Lb2/l;II)Lb2/l;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb2/l<",
            "Lo2/a;",
            ">;II)",
            "Lb2/l<",
            "Lo2/a;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lb2/l;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo2/a;

    invoke-virtual {v0}, Lo2/a;->a()Lb2/l;

    move-result-object v0

    .line 2
    invoke-interface {p1}, Lb2/l;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo2/a;

    invoke-virtual {v1}, Lo2/a;->b()Lb2/l;

    move-result-object v1

    if-eqz v0, :cond_39

    .line 3
    iget-object v2, p0, Lo2/f;->a:Lz1/g;

    if-eqz v2, :cond_39

    .line 4
    invoke-interface {v2, v0, p2, p3}, Lz1/g;->b(Lb2/l;II)Lb2/l;

    move-result-object p2

    .line 5
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5d

    .line 6
    new-instance p3, Lo2/a;

    invoke-interface {p1}, Lb2/l;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo2/a;

    invoke-virtual {p1}, Lo2/a;->b()Lb2/l;

    move-result-object p1

    invoke-direct {p3, p2, p1}, Lo2/a;-><init>(Lb2/l;Lb2/l;)V

    .line 7
    new-instance p1, Lo2/b;

    invoke-direct {p1, p3}, Lo2/b;-><init>(Lo2/a;)V

    return-object p1

    :cond_39
    if-eqz v1, :cond_5d

    .line 8
    iget-object v0, p0, Lo2/f;->b:Lz1/g;

    if-eqz v0, :cond_5d

    .line 9
    invoke-interface {v0, v1, p2, p3}, Lz1/g;->b(Lb2/l;II)Lb2/l;

    move-result-object p2

    .line 10
    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5d

    .line 11
    new-instance p3, Lo2/a;

    invoke-interface {p1}, Lb2/l;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo2/a;

    invoke-virtual {p1}, Lo2/a;->a()Lb2/l;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Lo2/a;-><init>(Lb2/l;Lb2/l;)V

    .line 12
    new-instance p1, Lo2/b;

    invoke-direct {p1, p3}, Lo2/b;-><init>(Lo2/a;)V

    :cond_5d
    return-object p1
.end method
