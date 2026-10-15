###### Class s2.a (s2.a)
.class public Ls2/a;
.super Ljava/lang/Object;
.source "ChildLoadProvider.java"

# interfaces
.implements Ls2/f;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "Z:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ls2/f<",
        "TA;TT;TZ;TR;>;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private final o:Ls2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls2/f<",
            "TA;TT;TZ;TR;>;"
        }
    .end annotation
.end field

.field private p:Lz1/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz1/e<",
            "Ljava/io/File;",
            "TZ;>;"
        }
    .end annotation
.end field

.field private q:Lz1/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz1/e<",
            "TT;TZ;>;"
        }
    .end annotation
.end field

.field private r:Lz1/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz1/f<",
            "TZ;>;"
        }
    .end annotation
.end field

.field private s:Lp2/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp2/c<",
            "TZ;TR;>;"
        }
    .end annotation
.end field

.field private t:Lz1/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz1/b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls2/f;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls2/f<",
            "TA;TT;TZ;TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ls2/a;->o:Ls2/f;

    return-void
.end method


# virtual methods
.method public a()Lz1/b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz1/b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls2/a;->t:Lz1/b;

    if-eqz v0, :cond_5

    return-object v0

    .line 2
    :cond_5
    iget-object v0, p0, Ls2/a;->o:Ls2/f;

    invoke-interface {v0}, Ls2/b;->a()Lz1/b;

    move-result-object v0

    return-object v0
.end method

.method public b()Lp2/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lp2/c<",
            "TZ;TR;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls2/a;->s:Lp2/c;

    if-eqz v0, :cond_5

    return-object v0

    .line 2
    :cond_5
    iget-object v0, p0, Ls2/a;->o:Ls2/f;

    invoke-interface {v0}, Ls2/f;->b()Lp2/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ls2/a;->i()Ls2/a;

    move-result-object v0

    return-object v0
.end method

.method public d()Lz1/f;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz1/f<",
            "TZ;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls2/a;->r:Lz1/f;

    if-eqz v0, :cond_5

    return-object v0

    .line 2
    :cond_5
    iget-object v0, p0, Ls2/a;->o:Ls2/f;

    invoke-interface {v0}, Ls2/b;->d()Lz1/f;

    move-result-object v0

    return-object v0
.end method

.method public f()Lz1/e;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz1/e<",
            "TT;TZ;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls2/a;->q:Lz1/e;

    if-eqz v0, :cond_5

    return-object v0

    .line 2
    :cond_5
    iget-object v0, p0, Ls2/a;->o:Ls2/f;

    invoke-interface {v0}, Ls2/b;->f()Lz1/e;

    move-result-object v0

    return-object v0
.end method

.method public g()Lz1/e;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz1/e<",
            "Ljava/io/File;",
            "TZ;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls2/a;->p:Lz1/e;

    if-eqz v0, :cond_5

    return-object v0

    .line 2
    :cond_5
    iget-object v0, p0, Ls2/a;->o:Ls2/f;

    invoke-interface {v0}, Ls2/b;->g()Lz1/e;

    move-result-object v0

    return-object v0
.end method

.method public h()Lg2/l;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lg2/l<",
            "TA;TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls2/a;->o:Ls2/f;

    invoke-interface {v0}, Ls2/f;->h()Lg2/l;

    move-result-object v0

    return-object v0
.end method

.method public i()Ls2/a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ls2/a<",
            "TA;TT;TZ;TR;>;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls2/a;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public j(Lz1/e;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz1/e<",
            "TT;TZ;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ls2/a;->q:Lz1/e;

    return-void
.end method

.method public k(Lz1/b;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz1/b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ls2/a;->t:Lz1/b;

    return-void
.end method
