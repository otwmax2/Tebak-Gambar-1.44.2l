###### Class k2.n (k2.n)
.class public Lk2/n;
.super Ljava/lang/Object;
.source "ImageVideoDataLoadProvider.java"

# interfaces
.implements Ls2/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls2/b<",
        "Lg2/g;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final o:Lk2/m;

.field private final p:Lz1/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz1/e<",
            "Ljava/io/File;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Lz1/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz1/f<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Lg2/h;


# direct methods
.method public constructor <init>(Ls2/b;Ls2/b;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls2/b<",
            "Ljava/io/InputStream;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ls2/b<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-interface {p1}, Ls2/b;->d()Lz1/f;

    move-result-object v0

    iput-object v0, p0, Lk2/n;->q:Lz1/f;

    .line 3
    new-instance v0, Lg2/h;

    invoke-interface {p1}, Ls2/b;->a()Lz1/b;

    move-result-object v1

    invoke-interface {p2}, Ls2/b;->a()Lz1/b;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lg2/h;-><init>(Lz1/b;Lz1/b;)V

    iput-object v0, p0, Lk2/n;->r:Lg2/h;

    .line 4
    invoke-interface {p1}, Ls2/b;->g()Lz1/e;

    move-result-object v0

    iput-object v0, p0, Lk2/n;->p:Lz1/e;

    .line 5
    new-instance v0, Lk2/m;

    invoke-interface {p1}, Ls2/b;->f()Lz1/e;

    move-result-object p1

    invoke-interface {p2}, Ls2/b;->f()Lz1/e;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lk2/m;-><init>(Lz1/e;Lz1/e;)V

    iput-object v0, p0, Lk2/n;->o:Lk2/m;

    return-void
.end method


# virtual methods
.method public a()Lz1/b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz1/b<",
            "Lg2/g;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk2/n;->r:Lg2/h;

    return-object v0
.end method

.method public d()Lz1/f;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz1/f<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk2/n;->q:Lz1/f;

    return-object v0
.end method

.method public f()Lz1/e;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz1/e<",
            "Lg2/g;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk2/n;->o:Lk2/m;

    return-object v0
.end method

.method public g()Lz1/e;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz1/e<",
            "Ljava/io/File;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk2/n;->p:Lz1/e;

    return-object v0
.end method
