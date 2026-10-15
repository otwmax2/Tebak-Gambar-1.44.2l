###### Class da.u2 (da.u2)
.class public final Lda/u2;
.super Lkotlinx/coroutines/internal/c0;
.source "CoroutineContext.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/internal/c0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private r:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lh9/m<",
            "Lk9/g;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lk9/g;Lk9/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk9/g;",
            "Lk9/d<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lda/v2;->o:Lda/v2;

    invoke-interface {p1, v0}, Lk9/g;->b(Lk9/g$c;)Lk9/g$b;

    move-result-object v1

    if-nez v1, :cond_d

    invoke-interface {p1, v0}, Lk9/g;->d(Lk9/g;)Lk9/g;

    move-result-object v0

    goto :goto_e

    :cond_d
    move-object v0, p1

    :goto_e
    invoke-direct {p0, v0, p2}, Lkotlinx/coroutines/internal/c0;-><init>(Lk9/g;Lk9/d;)V

    .line 2
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lda/u2;->r:Ljava/lang/ThreadLocal;

    .line 3
    invoke-interface {p2}, Lk9/d;->getContext()Lk9/g;

    move-result-object p2

    sget-object v0, Lk9/e;->n:Lk9/e$b;

    invoke-interface {p2, v0}, Lk9/g;->b(Lk9/g$c;)Lk9/g$b;

    move-result-object p2

    instance-of p2, p2, Lda/i0;

    if-nez p2, :cond_31

    const/4 p2, 0x0

    .line 4
    invoke-static {p1, p2}, Lkotlinx/coroutines/internal/i0;->c(Lk9/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 5
    invoke-static {p1, p2}, Lkotlinx/coroutines/internal/i0;->a(Lk9/g;Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0, p1, p2}, Lda/u2;->P0(Lk9/g;Ljava/lang/Object;)V

    :cond_31
    return-void
.end method


# virtual methods
.method protected J0(Ljava/lang/Object;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lda/u2;->r:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh9/m;

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lh9/m;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk9/g;

    invoke-virtual {v0}, Lh9/m;->b()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-static {v2, v0}, Lkotlinx/coroutines/internal/i0;->a(Lk9/g;Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lda/u2;->r:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 4
    :cond_1d
    iget-object v0, p0, Lkotlinx/coroutines/internal/c0;->q:Lk9/d;

    invoke-static {p1, v0}, Lda/e0;->a(Ljava/lang/Object;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lkotlinx/coroutines/internal/c0;->q:Lk9/d;

    .line 6
    invoke-interface {v0}, Lk9/d;->getContext()Lk9/g;

    move-result-object v2

    .line 7
    invoke-static {v2, v1}, Lkotlinx/coroutines/internal/i0;->c(Lk9/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 8
    sget-object v4, Lkotlinx/coroutines/internal/i0;->a:Lkotlinx/coroutines/internal/e0;

    if-eq v3, v4, :cond_35

    .line 9
    invoke-static {v0, v2, v3}, Lda/h0;->g(Lk9/d;Lk9/g;Ljava/lang/Object;)Lda/u2;

    move-result-object v1

    .line 10
    :cond_35
    :try_start_35
    iget-object v0, p0, Lkotlinx/coroutines/internal/c0;->q:Lk9/d;

    invoke-interface {v0, p1}, Lk9/d;->g(Ljava/lang/Object;)V

    .line 11
    sget-object p1, Lh9/t;->a:Lh9/t;
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_48

    if-eqz v1, :cond_44

    .line 12
    invoke-virtual {v1}, Lda/u2;->O0()Z

    move-result p1

    if-eqz p1, :cond_47

    .line 13
    :cond_44
    invoke-static {v2, v3}, Lkotlinx/coroutines/internal/i0;->a(Lk9/g;Ljava/lang/Object;)V

    :cond_47
    return-void

    :catchall_48
    move-exception p1

    if-eqz v1, :cond_51

    .line 14
    invoke-virtual {v1}, Lda/u2;->O0()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 15
    :cond_51
    invoke-static {v2, v3}, Lkotlinx/coroutines/internal/i0;->a(Lk9/g;Ljava/lang/Object;)V

    :cond_54
    throw p1
.end method

.method public final O0()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lda/u2;->r:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_a
    iget-object v0, p0, Lda/u2;->r:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final P0(Lk9/g;Ljava/lang/Object;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lda/u2;->r:Ljava/lang/ThreadLocal;

    invoke-static {p1, p2}, Lh9/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lh9/m;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method
