###### Class k2.d (k2.d)
.class public abstract Lk2/d;
.super Ljava/lang/Object;
.source "BitmapTransformation.java"

# interfaces
.implements Lz1/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz1/g<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lc2/c;


# direct methods
.method public constructor <init>(Lc2/c;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lk2/d;->a:Lc2/c;

    return-void
.end method


# virtual methods
.method public final b(Lb2/l;II)Lb2/l;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb2/l<",
            "Landroid/graphics/Bitmap;",
            ">;II)",
            "Lb2/l<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p2, p3}, Lx2/h;->l(II)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2
    invoke-interface {p1}, Lb2/l;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const/high16 v1, -0x80000000

    if-ne p2, v1, :cond_14

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    :cond_14
    if-ne p3, v1, :cond_1a

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    .line 5
    :cond_1a
    iget-object v1, p0, Lk2/d;->a:Lc2/c;

    invoke-virtual {p0, v1, v0, p2, p3}, Lk2/d;->c(Lc2/c;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 6
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_27

    goto :goto_2d

    .line 7
    :cond_27
    iget-object p1, p0, Lk2/d;->a:Lc2/c;

    invoke-static {p2, p1}, Lk2/c;->d(Landroid/graphics/Bitmap;Lc2/c;)Lk2/c;

    move-result-object p1

    :goto_2d
    return-object p1

    .line 8
    :cond_2e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot apply transformation on width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " or height: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " less than or equal to zero and not Target.SIZE_ORIGINAL"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract c(Lc2/c;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
.end method
