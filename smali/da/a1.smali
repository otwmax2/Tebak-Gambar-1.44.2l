###### Class da.a1 (da.a1)
.class public abstract Lda/a1;
.super Lkotlinx/coroutines/scheduling/h;
.source "DispatchedTask.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/scheduling/h;"
    }
.end annotation


# instance fields
.field public q:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/h;-><init>()V

    .line 2
    iput p1, p0, Lda/a1;->q:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3

    return-void
.end method

.method public abstract b()Lk9/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk9/d<",
            "TT;>;"
        }
    .end annotation
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/Throwable;
    .registers 4

    .line 1
    instance-of v0, p1, Lda/a0;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    check-cast p1, Lda/a0;

    goto :goto_9

    :cond_8
    move-object p1, v1

    :goto_9
    if-eqz p1, :cond_d

    iget-object v1, p1, Lda/a0;->a:Ljava/lang/Throwable;

    :cond_d
    return-object v1
.end method

.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    return-object p1
.end method

.method public final f(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .registers 5

    if-nez p1, :cond_5

    if-nez p2, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_c

    if-eqz p2, :cond_c

    .line 1
    invoke-static {p1, p2}, Lh9/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_c
    if-nez p1, :cond_f

    move-object p1, p2

    .line 2
    :cond_f
    new-instance p2, Lda/r0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fatal exception in coroutines machinery for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". Please read KDoc to \'handleFatalException\' method and report this incident to maintainers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lt9/m;->b(Ljava/lang/Object;)V

    .line 4
    invoke-direct {p2, v0, p1}, Lda/r0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    invoke-virtual {p0}, Lda/a1;->b()Lk9/d;

    move-result-object p1

    invoke-interface {p1}, Lk9/d;->getContext()Lk9/g;

    move-result-object p1

    invoke-static {p1, p2}, Lda/l0;->a(Lk9/g;Ljava/lang/Throwable;)V

    return-void
.end method

.method public abstract h()Ljava/lang/Object;
.end method

.method public final run()V
    .registers 11

    .line 1
    invoke-static {}, Lda/s0;->a()Z

    move-result v0

    if-eqz v0, :cond_17

    iget v0, p0, Lda/a1;->q:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_11

    goto :goto_17

    :cond_11
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2
    :cond_17
    :goto_17
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/h;->p:Lkotlinx/coroutines/scheduling/i;

    .line 3
    :try_start_19
    invoke-virtual {p0}, Lda/a1;->b()Lk9/d;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/internal/h;

    .line 4
    iget-object v2, v1, Lkotlinx/coroutines/internal/h;->s:Lk9/d;

    .line 5
    iget-object v1, v1, Lkotlinx/coroutines/internal/h;->u:Ljava/lang/Object;

    .line 6
    invoke-interface {v2}, Lk9/d;->getContext()Lk9/g;

    move-result-object v3

    .line 7
    invoke-static {v3, v1}, Lkotlinx/coroutines/internal/i0;->c(Lk9/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 8
    sget-object v4, Lkotlinx/coroutines/internal/i0;->a:Lkotlinx/coroutines/internal/e0;

    const/4 v5, 0x0

    if-eq v1, v4, :cond_35

    .line 9
    invoke-static {v2, v3, v1}, Lda/h0;->g(Lk9/d;Lk9/g;Ljava/lang/Object;)Lda/u2;

    move-result-object v4
    :try_end_34
    .catchall {:try_start_19 .. :try_end_34} :catchall_d9

    goto :goto_36

    :cond_35
    move-object v4, v5

    .line 10
    :goto_36
    :try_start_36
    invoke-interface {v2}, Lk9/d;->getContext()Lk9/g;

    move-result-object v6

    .line 11
    invoke-virtual {p0}, Lda/a1;->h()Ljava/lang/Object;

    move-result-object v7

    .line 12
    invoke-virtual {p0, v7}, Lda/a1;->c(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v8

    if-nez v8, :cond_55

    .line 13
    iget v9, p0, Lda/a1;->q:I

    invoke-static {v9}, Lda/b1;->b(I)Z

    move-result v9

    if-eqz v9, :cond_55

    sget-object v9, Lda/x1;->m:Lda/x1$b;

    invoke-interface {v6, v9}, Lk9/g;->b(Lk9/g$c;)Lk9/g$b;

    move-result-object v6

    check-cast v6, Lda/x1;

    goto :goto_56

    :cond_55
    move-object v6, v5

    :goto_56
    if-eqz v6, :cond_85

    .line 14
    invoke-interface {v6}, Lda/x1;->c()Z

    move-result v9

    if-nez v9, :cond_85

    .line 15
    invoke-interface {v6}, Lda/x1;->j()Ljava/util/concurrent/CancellationException;

    move-result-object v6

    .line 16
    invoke-virtual {p0, v7, v6}, Lda/a1;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 17
    sget-object v7, Lh9/n;->o:Lh9/n$a;

    .line 18
    invoke-static {}, Lda/s0;->d()Z

    move-result v7

    if-eqz v7, :cond_79

    instance-of v7, v2, Lm9/e;

    if-nez v7, :cond_72

    goto :goto_79

    .line 19
    :cond_72
    move-object v7, v2

    check-cast v7, Lm9/e;

    invoke-static {v6, v7}, Lkotlinx/coroutines/internal/d0;->a(Ljava/lang/Throwable;Lm9/e;)Ljava/lang/Throwable;

    move-result-object v6

    .line 20
    :cond_79
    :goto_79
    invoke-static {v6}, Lh9/o;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lh9/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v6}, Lk9/d;->g(Ljava/lang/Object;)V

    goto :goto_a2

    :cond_85
    if-eqz v8, :cond_95

    .line 21
    sget-object v6, Lh9/n;->o:Lh9/n$a;

    invoke-static {v8}, Lh9/o;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lh9/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v6}, Lk9/d;->g(Ljava/lang/Object;)V

    goto :goto_a2

    .line 22
    :cond_95
    sget-object v6, Lh9/n;->o:Lh9/n$a;

    invoke-virtual {p0, v7}, Lda/a1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lh9/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v6}, Lk9/d;->g(Ljava/lang/Object;)V

    .line 23
    :goto_a2
    sget-object v2, Lh9/t;->a:Lh9/t;
    :try_end_a4
    .catchall {:try_start_36 .. :try_end_a4} :catchall_cc

    if-eqz v4, :cond_ac

    .line 24
    :try_start_a6
    invoke-virtual {v4}, Lda/u2;->O0()Z

    move-result v4

    if-eqz v4, :cond_af

    .line 25
    :cond_ac
    invoke-static {v3, v1}, Lkotlinx/coroutines/internal/i0;->a(Lk9/g;Ljava/lang/Object;)V
    :try_end_af
    .catchall {:try_start_a6 .. :try_end_af} :catchall_d9

    .line 26
    :cond_af
    :try_start_af
    sget-object v1, Lh9/n;->o:Lh9/n$a;

    invoke-interface {v0}, Lkotlinx/coroutines/scheduling/i;->a()V

    invoke-static {v2}, Lh9/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_b8
    .catchall {:try_start_af .. :try_end_b8} :catchall_b9

    goto :goto_c4

    :catchall_b9
    move-exception v0

    sget-object v1, Lh9/n;->o:Lh9/n$a;

    invoke-static {v0}, Lh9/o;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lh9/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 27
    :goto_c4
    invoke-static {v0}, Lh9/n;->b(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lda/a1;->f(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_f8

    :catchall_cc
    move-exception v2

    if-eqz v4, :cond_d5

    .line 28
    :try_start_cf
    invoke-virtual {v4}, Lda/u2;->O0()Z

    move-result v4

    if-eqz v4, :cond_d8

    .line 29
    :cond_d5
    invoke-static {v3, v1}, Lkotlinx/coroutines/internal/i0;->a(Lk9/g;Ljava/lang/Object;)V

    :cond_d8
    throw v2
    :try_end_d9
    .catchall {:try_start_cf .. :try_end_d9} :catchall_d9

    :catchall_d9
    move-exception v1

    .line 30
    :try_start_da
    sget-object v2, Lh9/n;->o:Lh9/n$a;

    invoke-interface {v0}, Lkotlinx/coroutines/scheduling/i;->a()V

    sget-object v0, Lh9/t;->a:Lh9/t;

    invoke-static {v0}, Lh9/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_e5
    .catchall {:try_start_da .. :try_end_e5} :catchall_e6

    goto :goto_f1

    :catchall_e6
    move-exception v0

    sget-object v2, Lh9/n;->o:Lh9/n$a;

    invoke-static {v0}, Lh9/o;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lh9/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 31
    :goto_f1
    invoke-static {v0}, Lh9/n;->b(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lda/a1;->f(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_f8
    return-void
.end method
