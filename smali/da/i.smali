###### Class da.i (da.i)
.class final synthetic Lda/i;
.super Ljava/lang/Object;
.source "Builders.kt"


# direct methods
.method public static final a(Lk9/g;Ls9/p;)Ljava/lang/Object;
    .registers 6
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
            ">;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 2
    sget-object v1, Lk9/e;->n:Lk9/e$b;

    invoke-interface {p0, v1}, Lk9/g;->b(Lk9/g$c;)Lk9/g$b;

    move-result-object v1

    check-cast v1, Lk9/e;

    if-nez v1, :cond_1f

    .line 3
    sget-object v1, Lda/s2;->a:Lda/s2;

    invoke-virtual {v1}, Lda/s2;->b()Lda/h1;

    move-result-object v1

    .line 4
    sget-object v2, Lda/q1;->o:Lda/q1;

    invoke-interface {p0, v1}, Lk9/g;->d(Lk9/g;)Lk9/g;

    move-result-object p0

    invoke-static {v2, p0}, Lda/h0;->d(Lda/o0;Lk9/g;)Lk9/g;

    move-result-object p0

    goto :goto_42

    .line 5
    :cond_1f
    instance-of v2, v1, Lda/h1;

    const/4 v3, 0x0

    if-eqz v2, :cond_27

    check-cast v1, Lda/h1;

    goto :goto_28

    :cond_27
    move-object v1, v3

    :goto_28
    if-eqz v1, :cond_36

    invoke-virtual {v1}, Lda/h1;->P()Z

    move-result v2

    if-eqz v2, :cond_31

    move-object v3, v1

    :cond_31
    if-nez v3, :cond_34

    goto :goto_36

    :cond_34
    move-object v1, v3

    goto :goto_3c

    .line 6
    :cond_36
    :goto_36
    sget-object v1, Lda/s2;->a:Lda/s2;

    invoke-virtual {v1}, Lda/s2;->a()Lda/h1;

    move-result-object v1

    .line 7
    :goto_3c
    sget-object v2, Lda/q1;->o:Lda/q1;

    invoke-static {v2, p0}, Lda/h0;->d(Lda/o0;Lk9/g;)Lk9/g;

    move-result-object p0

    .line 8
    :goto_42
    new-instance v2, Lda/f;

    invoke-direct {v2, p0, v0, v1}, Lda/f;-><init>(Lk9/g;Ljava/lang/Thread;Lda/h1;)V

    .line 9
    sget-object p0, Lda/q0;->o:Lda/q0;

    invoke-virtual {v2, p0, v2, p1}, Lda/a;->M0(Lda/q0;Ljava/lang/Object;Ls9/p;)V

    .line 10
    invoke-virtual {v2}, Lda/f;->N0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lk9/g;Ls9/p;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    .line 1
    sget-object p0, Lk9/h;->o:Lk9/h;

    .line 2
    :cond_6
    invoke-static {p0, p1}, Lda/h;->c(Lk9/g;Ls9/p;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
