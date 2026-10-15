###### Class da.e0 (da.e0)
.class public final Lda/e0;
.super Ljava/lang/Object;
.source "CompletionState.kt"


# direct methods
.method public static final a(Ljava/lang/Object;Lk9/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lk9/d<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lda/a0;

    if-eqz v0, :cond_24

    .line 2
    sget-object v0, Lh9/n;->o:Lh9/n$a;

    check-cast p0, Lda/a0;

    iget-object p0, p0, Lda/a0;->a:Ljava/lang/Throwable;

    .line 3
    invoke-static {}, Lda/s0;->d()Z

    move-result v0

    if-eqz v0, :cond_1b

    instance-of v0, p1, Lm9/e;

    if-nez v0, :cond_15

    goto :goto_1b

    .line 4
    :cond_15
    check-cast p1, Lm9/e;

    invoke-static {p0, p1}, Lkotlinx/coroutines/internal/d0;->a(Ljava/lang/Throwable;Lm9/e;)Ljava/lang/Throwable;

    move-result-object p0

    .line 5
    :cond_1b
    :goto_1b
    invoke-static {p0}, Lh9/o;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lh9/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_2a

    .line 6
    :cond_24
    sget-object p1, Lh9/n;->o:Lh9/n$a;

    invoke-static {p0}, Lh9/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2a
    return-object p0
.end method

.method public static final b(Ljava/lang/Object;Lda/m;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lda/m<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lh9/n;->b(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_20

    .line 2
    :cond_7
    new-instance p0, Lda/a0;

    .line 3
    invoke-static {}, Lda/s0;->d()Z

    move-result v1

    if-eqz v1, :cond_1a

    instance-of v1, p1, Lm9/e;

    if-nez v1, :cond_14

    goto :goto_1a

    .line 4
    :cond_14
    check-cast p1, Lm9/e;

    invoke-static {v0, p1}, Lkotlinx/coroutines/internal/d0;->a(Ljava/lang/Throwable;Lm9/e;)Ljava/lang/Throwable;

    move-result-object v0

    :cond_1a
    :goto_1a
    const/4 p1, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 5
    invoke-direct {p0, v0, p1, v1, v2}, Lda/a0;-><init>(Ljava/lang/Throwable;ZILt9/g;)V

    :goto_20
    return-object p0
.end method

.method public static final c(Ljava/lang/Object;Ls9/l;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ls9/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lh9/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lh9/n;->b(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_f

    if-eqz p1, :cond_17

    .line 2
    new-instance v0, Lda/b0;

    invoke-direct {v0, p0, p1}, Lda/b0;-><init>(Ljava/lang/Object;Ls9/l;)V

    move-object p0, v0

    goto :goto_17

    .line 3
    :cond_f
    new-instance p0, Lda/a0;

    const/4 p1, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lda/a0;-><init>(Ljava/lang/Throwable;ZILt9/g;)V

    :cond_17
    :goto_17
    return-object p0
.end method

.method public static synthetic d(Ljava/lang/Object;Ls9/l;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 1
    :cond_5
    invoke-static {p0, p1}, Lda/e0;->c(Ljava/lang/Object;Ls9/l;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
