###### Class ha.a (ha.a)
.class public final Lha/a;
.super Ljava/lang/Object;
.source "Cancellable.kt"


# direct methods
.method private static final a(Lk9/d;Ljava/lang/Throwable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk9/d<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lh9/n;->o:Lh9/n$a;

    invoke-static {p1}, Lh9/o;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lh9/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lk9/d;->g(Ljava/lang/Object;)V

    .line 2
    throw p1
.end method

.method public static final b(Lk9/d;Lk9/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk9/d<",
            "-",
            "Lh9/t;",
            ">;",
            "Lk9/d<",
            "*>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Ll9/b;->b(Lk9/d;)Lk9/d;

    move-result-object p0

    sget-object v0, Lh9/n;->o:Lh9/n$a;

    sget-object v0, Lh9/t;->a:Lh9/t;

    invoke-static {v0}, Lh9/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, Lkotlinx/coroutines/internal/i;->c(Lk9/d;Ljava/lang/Object;Ls9/l;ILjava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_12

    goto :goto_16

    :catchall_12
    move-exception p0

    .line 2
    invoke-static {p1, p0}, Lha/a;->a(Lk9/d;Ljava/lang/Throwable;)V

    :goto_16
    return-void
.end method

.method public static final c(Ls9/p;Ljava/lang/Object;Lk9/d;Ls9/l;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ls9/p<",
            "-TR;-",
            "Lk9/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;TR;",
            "Lk9/d<",
            "-TT;>;",
            "Ls9/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lh9/t;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2}, Ll9/b;->a(Ls9/p;Ljava/lang/Object;Lk9/d;)Lk9/d;

    move-result-object p0

    invoke-static {p0}, Ll9/b;->b(Lk9/d;)Lk9/d;

    move-result-object p0

    sget-object p1, Lh9/n;->o:Lh9/n$a;

    sget-object p1, Lh9/t;->a:Lh9/t;

    invoke-static {p1}, Lh9/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1, p3}, Lkotlinx/coroutines/internal/i;->b(Lk9/d;Ljava/lang/Object;Ls9/l;)V
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    goto :goto_18

    :catchall_14
    move-exception p0

    .line 2
    invoke-static {p2, p0}, Lha/a;->a(Lk9/d;Ljava/lang/Throwable;)V

    :goto_18
    return-void
.end method

.method public static synthetic d(Ls9/p;Ljava/lang/Object;Lk9/d;Ls9/l;ILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    .line 1
    :cond_5
    invoke-static {p0, p1, p2, p3}, Lha/a;->c(Ls9/p;Ljava/lang/Object;Lk9/d;Ls9/l;)V

    return-void
.end method
