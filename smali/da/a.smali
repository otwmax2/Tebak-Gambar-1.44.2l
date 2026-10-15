###### Class da.a (da.a)
.class public abstract Lda/a;
.super Lda/e2;
.source "AbstractCoroutine.kt"

# interfaces
.implements Lk9/d;
.implements Lda/o0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lda/e2;",
        "Lk9/d<",
        "TT;>;",
        "Lda/o0;"
    }
.end annotation


# instance fields
.field private final p:Lk9/g;


# direct methods
.method public constructor <init>(Lk9/g;ZZ)V
    .registers 4

    .line 1
    invoke-direct {p0, p3}, Lda/e2;-><init>(Z)V

    if-eqz p2, :cond_10

    .line 2
    sget-object p2, Lda/x1;->m:Lda/x1$b;

    invoke-interface {p1, p2}, Lk9/g;->b(Lk9/g$c;)Lk9/g$b;

    move-result-object p2

    check-cast p2, Lda/x1;

    invoke-virtual {p0, p2}, Lda/e2;->h0(Lda/x1;)V

    .line 3
    :cond_10
    invoke-interface {p1, p0}, Lk9/g;->d(Lk9/g;)Lk9/g;

    move-result-object p1

    iput-object p1, p0, Lda/a;->p:Lk9/g;

    return-void
.end method


# virtual methods
.method protected J0(Ljava/lang/Object;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lda/e2;->J(Ljava/lang/Object;)V

    return-void
.end method

.method protected K0(Ljava/lang/Throwable;Z)V
    .registers 3

    return-void
.end method

.method protected L0(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public final M0(Lda/q0;Ljava/lang/Object;Ls9/p;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lda/q0;",
            "TR;",
            "Ls9/p<",
            "-TR;-",
            "Lk9/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p3, p2, p0}, Lda/q0;->e(Ls9/p;Ljava/lang/Object;Lk9/d;)V

    return-void
.end method

.method protected R()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lda/t0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " was cancelled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()Lk9/g;
    .registers 2

    .line 1
    iget-object v0, p0, Lda/a;->p:Lk9/g;

    return-object v0
.end method

.method public c()Z
    .registers 2

    .line 1
    invoke-super {p0}, Lda/e2;->c()Z

    move-result v0

    return v0
.end method

.method public final g(Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {p1, v0, v1, v0}, Lda/e0;->d(Ljava/lang/Object;Ls9/l;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lda/e2;->m0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    sget-object v0, Lda/f2;->b:Lkotlinx/coroutines/internal/e0;

    if-ne p1, v0, :cond_f

    return-void

    .line 3
    :cond_f
    invoke-virtual {p0, p1}, Lda/a;->J0(Ljava/lang/Object;)V

    return-void
.end method

.method public final g0(Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lda/a;->p:Lk9/g;

    invoke-static {v0, p1}, Lda/l0;->a(Lk9/g;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final getContext()Lk9/g;
    .registers 2

    .line 1
    iget-object v0, p0, Lda/a;->p:Lk9/g;

    return-object v0
.end method

.method public o0()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lda/a;->p:Lk9/g;

    invoke-static {v0}, Lda/h0;->b(Lk9/g;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    invoke-super {p0}, Lda/e2;->o0()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lda/e2;->o0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final t0(Ljava/lang/Object;)V
    .registers 3

    .line 1
    instance-of v0, p1, Lda/a0;

    if-eqz v0, :cond_10

    .line 2
    check-cast p1, Lda/a0;

    iget-object v0, p1, Lda/a0;->a:Ljava/lang/Throwable;

    invoke-virtual {p1}, Lda/a0;->a()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lda/a;->K0(Ljava/lang/Throwable;Z)V

    goto :goto_13

    .line 3
    :cond_10
    invoke-virtual {p0, p1}, Lda/a;->L0(Ljava/lang/Object;)V

    :goto_13
    return-void
.end method
