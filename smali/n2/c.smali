###### Class n2.c (n2.c)
.class public Ln2/c;
.super Ljava/lang/Object;
.source "GifDrawableLoadProvider.java"

# interfaces
.implements Ls2/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls2/b<",
        "Ljava/io/InputStream;",
        "Ln2/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final o:Ln2/i;

.field private final p:Ln2/j;

.field private final q:Lg2/o;

.field private final r:Lm2/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm2/c<",
            "Ln2/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc2/c;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ln2/i;

    invoke-direct {v0, p1, p2}, Ln2/i;-><init>(Landroid/content/Context;Lc2/c;)V

    iput-object v0, p0, Ln2/c;->o:Ln2/i;

    .line 3
    new-instance p1, Lm2/c;

    invoke-direct {p1, v0}, Lm2/c;-><init>(Lz1/e;)V

    iput-object p1, p0, Ln2/c;->r:Lm2/c;

    .line 4
    new-instance p1, Ln2/j;

    invoke-direct {p1, p2}, Ln2/j;-><init>(Lc2/c;)V

    iput-object p1, p0, Ln2/c;->p:Ln2/j;

    .line 5
    new-instance p1, Lg2/o;

    invoke-direct {p1}, Lg2/o;-><init>()V

    iput-object p1, p0, Ln2/c;->q:Lg2/o;

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
    iget-object v0, p0, Ln2/c;->q:Lg2/o;

    return-object v0
.end method

.method public d()Lz1/f;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz1/f<",
            "Ln2/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln2/c;->p:Ln2/j;

    return-object v0
.end method

.method public f()Lz1/e;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz1/e<",
            "Ljava/io/InputStream;",
            "Ln2/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln2/c;->o:Ln2/i;

    return-object v0
.end method

.method public g()Lz1/e;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz1/e<",
            "Ljava/io/File;",
            "Ln2/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln2/c;->r:Lm2/c;

    return-object v0
.end method
