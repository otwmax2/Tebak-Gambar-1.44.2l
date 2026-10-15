###### Class k2.g (k2.g)
.class public Lk2/g;
.super Ljava/lang/Object;
.source "FileDescriptorBitmapDataLoadProvider.java"

# interfaces
.implements Ls2/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls2/b<",
        "Landroid/os/ParcelFileDescriptor;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final o:Lz1/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz1/e<",
            "Ljava/io/File;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Lk2/h;

.field private final q:Lk2/b;

.field private final r:Lz1/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz1/b<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc2/c;Lz1/a;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lm2/c;

    new-instance v1, Lk2/q;

    invoke-direct {v1, p1, p2}, Lk2/q;-><init>(Lc2/c;Lz1/a;)V

    invoke-direct {v0, v1}, Lm2/c;-><init>(Lz1/e;)V

    iput-object v0, p0, Lk2/g;->o:Lz1/e;

    .line 3
    new-instance v0, Lk2/h;

    invoke-direct {v0, p1, p2}, Lk2/h;-><init>(Lc2/c;Lz1/a;)V

    iput-object v0, p0, Lk2/g;->p:Lk2/h;

    .line 4
    new-instance p1, Lk2/b;

    invoke-direct {p1}, Lk2/b;-><init>()V

    iput-object p1, p0, Lk2/g;->q:Lk2/b;

    .line 5
    invoke-static {}, Lj2/a;->c()Lz1/b;

    move-result-object p1

    iput-object p1, p0, Lk2/g;->r:Lz1/b;

    return-void
.end method


# virtual methods
.method public a()Lz1/b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz1/b<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk2/g;->r:Lz1/b;

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
    iget-object v0, p0, Lk2/g;->q:Lk2/b;

    return-object v0
.end method

.method public f()Lz1/e;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz1/e<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk2/g;->p:Lk2/h;

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
    iget-object v0, p0, Lk2/g;->o:Lz1/e;

    return-object v0
.end method
