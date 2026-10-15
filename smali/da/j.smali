###### Class da.j (da.j)
.class final synthetic Lda/j;
.super Ljava/lang/Object;
.source "Builders.common.kt"


# direct methods
.method public static final a(Lda/o0;Lk9/g;Lda/q0;Ls9/p;)Lda/x1;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lda/o0;",
            "Lk9/g;",
            "Lda/q0;",
            "Ls9/p<",
            "-",
            "Lda/o0;",
            "-",
            "Lk9/d<",
            "-",
            "Lh9/t;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lda/x1;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lda/h0;->d(Lda/o0;Lk9/g;)Lk9/g;

    move-result-object p0

    .line 2
    invoke-virtual {p2}, Lda/q0;->f()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 3
    new-instance p1, Lda/g2;

    invoke-direct {p1, p0, p3}, Lda/g2;-><init>(Lk9/g;Ls9/p;)V

    goto :goto_16

    .line 4
    :cond_10
    new-instance p1, Lda/o2;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lda/o2;-><init>(Lk9/g;Z)V

    .line 5
    :goto_16
    invoke-virtual {p1, p2, p1, p3}, Lda/a;->M0(Lda/q0;Ljava/lang/Object;Ls9/p;)V

    return-object p1
.end method

.method public static synthetic b(Lda/o0;Lk9/g;Lda/q0;Ls9/p;ILjava/lang/Object;)Lda/x1;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    .line 1
    sget-object p1, Lk9/h;->o:Lk9/h;

    :cond_6
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_c

    .line 2
    sget-object p2, Lda/q0;->o:Lda/q0;

    .line 3
    :cond_c
    invoke-static {p0, p1, p2, p3}, Lda/h;->a(Lda/o0;Lk9/g;Lda/q0;Ls9/p;)Lda/x1;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Lk9/g;Ls9/p;Lk9/d;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lk9/g;",
            "Ls9/p<",
            "-",
            "Lda/o0;",
            "-",
            "Lk9/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lk9/d<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lk9/d;->getContext()Lk9/g;

    move-result-object v0

    .line 2
    invoke-static {v0, p0}, Lda/h0;->e(Lk9/g;Lk9/g;)Lk9/g;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lda/b2;->e(Lk9/g;)V

    if-ne p0, v0, :cond_17

    .line 4
    new-instance v0, Lkotlinx/coroutines/internal/c0;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/internal/c0;-><init>(Lk9/g;Lk9/d;)V

    .line 5
    invoke-static {v0, v0, p1}, Lha/b;->b(Lkotlinx/coroutines/internal/c0;Ljava/lang/Object;Ls9/p;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_51

    .line 6
    :cond_17
    sget-object v1, Lk9/e;->n:Lk9/e$b;

    invoke-interface {p0, v1}, Lk9/g;->b(Lk9/g$c;)Lk9/g$b;

    move-result-object v2

    invoke-interface {v0, v1}, Lk9/g;->b(Lk9/g$c;)Lk9/g$b;

    move-result-object v0

    invoke-static {v2, v0}, Lt9/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 7
    new-instance v0, Lda/u2;

    invoke-direct {v0, p0, p2}, Lda/u2;-><init>(Lk9/g;Lk9/d;)V

    const/4 v1, 0x0

    .line 8
    invoke-static {p0, v1}, Lkotlinx/coroutines/internal/i0;->c(Lk9/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 9
    :try_start_31
    invoke-static {v0, v0, p1}, Lha/b;->b(Lkotlinx/coroutines/internal/c0;Ljava/lang/Object;Ls9/p;)Ljava/lang/Object;

    move-result-object p1
    :try_end_35
    .catchall {:try_start_31 .. :try_end_35} :catchall_3a

    .line 10
    invoke-static {p0, v1}, Lkotlinx/coroutines/internal/i0;->a(Lk9/g;Ljava/lang/Object;)V

    move-object p0, p1

    goto :goto_51

    :catchall_3a
    move-exception p1

    invoke-static {p0, v1}, Lkotlinx/coroutines/internal/i0;->a(Lk9/g;Ljava/lang/Object;)V

    throw p1

    .line 11
    :cond_3f
    new-instance v0, Lda/z0;

    invoke-direct {v0, p0, p2}, Lda/z0;-><init>(Lk9/g;Lk9/d;)V

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, v0

    move-object v4, v0

    .line 12
    invoke-static/range {v2 .. v7}, Lha/a;->d(Ls9/p;Ljava/lang/Object;Lk9/d;Ls9/l;ILjava/lang/Object;)V

    .line 13
    invoke-virtual {v0}, Lda/z0;->O0()Ljava/lang/Object;

    move-result-object p0

    .line 14
    :goto_51
    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_5a

    invoke-static {p2}, Lm9/h;->c(Lk9/d;)V

    :cond_5a
    return-object p0
.end method
