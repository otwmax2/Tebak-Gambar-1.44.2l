###### Class da.c2 (da.c2)
.class final synthetic Lda/c2;
.super Ljava/lang/Object;
.source "Job.kt"


# direct methods
.method public static final a(Lda/x1;)Lda/y;
    .registers 2

    .line 1
    new-instance v0, Lda/a2;

    invoke-direct {v0, p0}, Lda/a2;-><init>(Lda/x1;)V

    return-object v0
.end method

.method public static synthetic b(Lda/x1;ILjava/lang/Object;)Lda/y;
    .registers 3

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_5

    const/4 p0, 0x0

    .line 1
    :cond_5
    invoke-static {p0}, Lda/b2;->a(Lda/x1;)Lda/y;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Lk9/g;Ljava/util/concurrent/CancellationException;)V
    .registers 3

    .line 1
    sget-object v0, Lda/x1;->m:Lda/x1$b;

    invoke-interface {p0, v0}, Lk9/g;->b(Lk9/g$c;)Lk9/g$b;

    move-result-object p0

    check-cast p0, Lda/x1;

    if-eqz p0, :cond_d

    invoke-interface {p0, p1}, Lda/x1;->E(Ljava/util/concurrent/CancellationException;)V

    :cond_d
    return-void
.end method

.method public static final d(Lda/x1;)V
    .registers 2

    .line 1
    invoke-interface {p0}, Lda/x1;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-interface {p0}, Lda/x1;->j()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    throw p0
.end method

.method public static final e(Lk9/g;)V
    .registers 2

    .line 1
    sget-object v0, Lda/x1;->m:Lda/x1$b;

    invoke-interface {p0, v0}, Lk9/g;->b(Lk9/g$c;)Lk9/g$b;

    move-result-object p0

    check-cast p0, Lda/x1;

    if-eqz p0, :cond_d

    invoke-static {p0}, Lda/b2;->d(Lda/x1;)V

    :cond_d
    return-void
.end method
