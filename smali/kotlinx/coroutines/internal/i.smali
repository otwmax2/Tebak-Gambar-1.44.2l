###### Class kotlinx.coroutines.internal.i (kotlinx.coroutines.internal.i)
.class public final Lkotlinx/coroutines/internal/i;
.super Ljava/lang/Object;
.source "DispatchedContinuation.kt"


# static fields
.field private static final a:Lkotlinx/coroutines/internal/e0;

.field public static final b:Lkotlinx/coroutines/internal/e0;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lkotlinx/coroutines/internal/e0;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/e0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/i;->a:Lkotlinx/coroutines/internal/e0;

    .line 2
    new-instance v0, Lkotlinx/coroutines/internal/e0;

    const-string v1, "REUSABLE_CLAIMED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/e0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/i;->b:Lkotlinx/coroutines/internal/e0;

    return-void
.end method

.method public static final synthetic a()Lkotlinx/coroutines/internal/e0;
    .registers 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/internal/i;->a:Lkotlinx/coroutines/internal/e0;

    return-object v0
.end method

.method public static final b(Lk9/d;Ljava/lang/Object;Ls9/l;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lk9/d<",
            "-TT;>;",
            "Ljava/lang/Object;",
            "Ls9/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lh9/t;",
            ">;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lkotlinx/coroutines/internal/h;

    if-eqz v0, :cond_ba

    check-cast p0, Lkotlinx/coroutines/internal/h;

    .line 2
    invoke-static {p1, p2}, Lda/e0;->c(Ljava/lang/Object;Ls9/l;)Ljava/lang/Object;

    move-result-object p2

    .line 3
    iget-object v0, p0, Lkotlinx/coroutines/internal/h;->r:Lda/i0;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/h;->getContext()Lk9/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lda/i0;->o(Lk9/g;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_26

    .line 4
    iput-object p2, p0, Lkotlinx/coroutines/internal/h;->t:Ljava/lang/Object;

    .line 5
    iput v1, p0, Lda/a1;->q:I

    .line 6
    iget-object p1, p0, Lkotlinx/coroutines/internal/h;->r:Lda/i0;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/h;->getContext()Lk9/g;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Lda/i0;->m(Lk9/g;Ljava/lang/Runnable;)V

    goto/16 :goto_bd

    .line 7
    :cond_26
    invoke-static {}, Lda/s0;->a()Z

    move-result v0

    .line 8
    sget-object v0, Lda/s2;->a:Lda/s2;

    invoke-virtual {v0}, Lda/s2;->b()Lda/h1;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lda/h1;->L()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 10
    iput-object p2, p0, Lkotlinx/coroutines/internal/h;->t:Ljava/lang/Object;

    .line 11
    iput v1, p0, Lda/a1;->q:I

    .line 12
    invoke-virtual {v0, p0}, Lda/h1;->H(Lda/a1;)V

    goto/16 :goto_bd

    .line 13
    :cond_3f
    invoke-virtual {v0, v1}, Lda/h1;->J(Z)V

    const/4 v2, 0x0

    .line 14
    :try_start_43
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/h;->getContext()Lk9/g;

    move-result-object v3

    sget-object v4, Lda/x1;->m:Lda/x1$b;

    invoke-interface {v3, v4}, Lk9/g;->b(Lk9/g$c;)Lk9/g$b;

    move-result-object v3

    check-cast v3, Lda/x1;

    if-eqz v3, :cond_6d

    .line 15
    invoke-interface {v3}, Lda/x1;->c()Z

    move-result v4

    if-nez v4, :cond_6d

    .line 16
    invoke-interface {v3}, Lda/x1;->j()Ljava/util/concurrent/CancellationException;

    move-result-object v3

    .line 17
    invoke-virtual {p0, p2, v3}, Lkotlinx/coroutines/internal/h;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 18
    sget-object p2, Lh9/n;->o:Lh9/n$a;

    invoke-static {v3}, Lh9/o;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lh9/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p2}, Lk9/d;->g(Ljava/lang/Object;)V

    const/4 p2, 0x1

    goto :goto_6e

    :cond_6d
    const/4 p2, 0x0

    :goto_6e
    if-nez p2, :cond_a6

    .line 19
    iget-object p2, p0, Lkotlinx/coroutines/internal/h;->s:Lk9/d;

    iget-object v3, p0, Lkotlinx/coroutines/internal/h;->u:Ljava/lang/Object;

    .line 20
    invoke-interface {p2}, Lk9/d;->getContext()Lk9/g;

    move-result-object v4

    .line 21
    invoke-static {v4, v3}, Lkotlinx/coroutines/internal/i0;->c(Lk9/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 22
    sget-object v5, Lkotlinx/coroutines/internal/i0;->a:Lkotlinx/coroutines/internal/e0;

    if-eq v3, v5, :cond_85

    .line 23
    invoke-static {p2, v4, v3}, Lda/h0;->g(Lk9/d;Lk9/g;Ljava/lang/Object;)Lda/u2;

    move-result-object p2
    :try_end_84
    .catchall {:try_start_43 .. :try_end_84} :catchall_ad

    goto :goto_86

    :cond_85
    move-object p2, v2

    .line 24
    :goto_86
    :try_start_86
    iget-object v5, p0, Lkotlinx/coroutines/internal/h;->s:Lk9/d;

    invoke-interface {v5, p1}, Lk9/d;->g(Ljava/lang/Object;)V

    .line 25
    sget-object p1, Lh9/t;->a:Lh9/t;
    :try_end_8d
    .catchall {:try_start_86 .. :try_end_8d} :catchall_99

    if-eqz p2, :cond_95

    .line 26
    :try_start_8f
    invoke-virtual {p2}, Lda/u2;->O0()Z

    move-result p1

    if-eqz p1, :cond_a6

    .line 27
    :cond_95
    invoke-static {v4, v3}, Lkotlinx/coroutines/internal/i0;->a(Lk9/g;Ljava/lang/Object;)V

    goto :goto_a6

    :catchall_99
    move-exception p1

    if-eqz p2, :cond_a2

    .line 28
    invoke-virtual {p2}, Lda/u2;->O0()Z

    move-result p2

    if-eqz p2, :cond_a5

    .line 29
    :cond_a2
    invoke-static {v4, v3}, Lkotlinx/coroutines/internal/i0;->a(Lk9/g;Ljava/lang/Object;)V

    :cond_a5
    throw p1

    .line 30
    :cond_a6
    :goto_a6
    invoke-virtual {v0}, Lda/h1;->O()Z

    move-result p1
    :try_end_aa
    .catchall {:try_start_8f .. :try_end_aa} :catchall_ad

    if-nez p1, :cond_a6

    goto :goto_b1

    :catchall_ad
    move-exception p1

    .line 31
    :try_start_ae
    invoke-virtual {p0, p1, v2}, Lda/a1;->f(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_b1
    .catchall {:try_start_ae .. :try_end_b1} :catchall_b5

    .line 32
    :goto_b1
    invoke-virtual {v0, v1}, Lda/h1;->x(Z)V

    goto :goto_bd

    :catchall_b5
    move-exception p0

    invoke-virtual {v0, v1}, Lda/h1;->x(Z)V

    throw p0

    .line 33
    :cond_ba
    invoke-interface {p0, p1}, Lk9/d;->g(Ljava/lang/Object;)V

    :goto_bd
    return-void
.end method

.method public static synthetic c(Lk9/d;Ljava/lang/Object;Ls9/l;ILjava/lang/Object;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 1
    :cond_5
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/internal/i;->b(Lk9/d;Ljava/lang/Object;Ls9/l;)V

    return-void
.end method
