###### Class da.p0 (da.p0)
.class public final Lda/p0;
.super Ljava/lang/Object;
.source "CoroutineScope.kt"


# direct methods
.method public static final a(Lk9/g;)Lda/o0;
    .registers 4

    .line 1
    new-instance v0, Lkotlinx/coroutines/internal/f;

    sget-object v1, Lda/x1;->m:Lda/x1$b;

    invoke-interface {p0, v1}, Lk9/g;->b(Lk9/g$c;)Lk9/g$b;

    move-result-object v1

    if-eqz v1, :cond_b

    goto :goto_15

    :cond_b
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v1, v2}, Lda/b2;->b(Lda/x1;ILjava/lang/Object;)Lda/y;

    move-result-object v1

    invoke-interface {p0, v1}, Lk9/g;->d(Lk9/g;)Lk9/g;

    move-result-object p0

    :goto_15
    invoke-direct {v0, p0}, Lkotlinx/coroutines/internal/f;-><init>(Lk9/g;)V

    return-object v0
.end method

.method public static final b(Lda/o0;)V
    .registers 1

    .line 1
    invoke-interface {p0}, Lda/o0;->a()Lk9/g;

    move-result-object p0

    invoke-static {p0}, Lda/b2;->e(Lk9/g;)V

    return-void
.end method
