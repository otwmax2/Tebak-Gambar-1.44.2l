###### Class k2.p (k2.p)
.class public Lk2/p;
.super Ljava/lang/Object;
.source "StreamBitmapDataLoadProvider.java"

# interfaces
.implements Ls2/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls2/b<",
        "Ljava/io/InputStream;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final o:Lk2/q;

.field private final p:Lk2/b;

.field private final q:Lg2/o;

.field private final r:Lm2/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm2/c<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc2/c;Lz1/a;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lg2/o;

    invoke-direct {v0}, Lg2/o;-><init>()V

    iput-object v0, p0, Lk2/p;->q:Lg2/o;

    .line 3
    new-instance v0, Lk2/q;

    invoke-direct {v0, p1, p2}, Lk2/q;-><init>(Lc2/c;Lz1/a;)V

    iput-object v0, p0, Lk2/p;->o:Lk2/q;

    .line 4
    new-instance p1, Lk2/b;

    invoke-direct {p1}, Lk2/b;-><init>()V

    iput-object p1, p0, Lk2/p;->p:Lk2/b;

    .line 5
    new-instance p1, Lm2/c;

    invoke-direct {p1, v0}, Lm2/c;-><init>(Lz1/e;)V

    iput-object p1, p0, Lk2/p;->r:Lm2/c;

    return-void
.end method


# virtual methods
.method public a()Lz1/b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz1/b<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk2/p;->q:Lg2/o;

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
    iget-object v0, p0, Lk2/p;->p:Lk2/b;

    return-object v0
.end method

.method public f()Lz1/e;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz1/e<",
            "Ljava/io/InputStream;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk2/p;->o:Lk2/q;

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
    iget-object v0, p0, Lk2/p;->r:Lm2/c;

    return-object v0
.end method
