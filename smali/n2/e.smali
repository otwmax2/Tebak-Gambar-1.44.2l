###### Class n2.e (n2.e)
.class public Ln2/e;
.super Ljava/lang/Object;
.source "GifDrawableTransformation.java"

# interfaces
.implements Lz1/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz1/g<",
        "Ln2/b;",
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

.field private final b:Lc2/c;


# direct methods
.method public constructor <init>(Lz1/g;Lc2/c;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz1/g<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lc2/c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln2/e;->a:Lz1/g;

    .line 3
    iput-object p2, p0, Ln2/e;->b:Lc2/c;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ln2/e;->a:Lz1/g;

    invoke-interface {v0}, Lz1/g;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Lb2/l;II)Lb2/l;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb2/l<",
            "Ln2/b;",
            ">;II)",
            "Lb2/l<",
            "Ln2/b;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lb2/l;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln2/b;

    .line 2
    invoke-interface {p1}, Lb2/l;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln2/b;

    invoke-virtual {v1}, Ln2/b;->e()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3
    new-instance v2, Lk2/c;

    iget-object v3, p0, Ln2/e;->b:Lc2/c;

    invoke-direct {v2, v1, v3}, Lk2/c;-><init>(Landroid/graphics/Bitmap;Lc2/c;)V

    .line 4
    iget-object v3, p0, Ln2/e;->a:Lz1/g;

    invoke-interface {v3, v2, p2, p3}, Lz1/g;->b(Lb2/l;II)Lb2/l;

    move-result-object p2

    .line 5
    invoke-interface {p2}, Lb2/l;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    .line 6
    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_35

    .line 7
    new-instance p1, Ln2/d;

    new-instance p3, Ln2/b;

    iget-object v1, p0, Ln2/e;->a:Lz1/g;

    invoke-direct {p3, v0, p2, v1}, Ln2/b;-><init>(Ln2/b;Landroid/graphics/Bitmap;Lz1/g;)V

    invoke-direct {p1, p3}, Ln2/d;-><init>(Ln2/b;)V

    :cond_35
    return-object p1
.end method
