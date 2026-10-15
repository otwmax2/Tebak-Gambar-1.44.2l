###### Class com.google.android.gms.internal.ads.zzfuj (com.google.android.gms.internal.ads.zzfuj)
.class public final Lcom/google/android/gms/internal/ads/zzfuj;
.super Lcom/google/android/gms/internal/ads/zzful;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# direct methods
.method public static a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfui;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfui;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfqk;->r(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzfui;-><init>(ZLcom/google/android/gms/internal/ads/zzfqk;Lcom/google/android/gms/internal/ads/zzfuh;)V

    return-object v0
.end method

.method public static b(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfui;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfui;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfqk;->r(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzfui;-><init>(ZLcom/google/android/gms/internal/ads/zzfqk;Lcom/google/android/gms/internal/ads/zzfuh;)V

    return-object v0
.end method

.method public static varargs c([Lcom/google/android/gms/internal/ads/zzfut;)Lcom/google/android/gms/internal/ads/zzfui;
    .registers 4
    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfui;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfqk;->t([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzfui;-><init>(ZLcom/google/android/gms/internal/ads/zzfqk;Lcom/google/android/gms/internal/ads/zzfuh;)V

    return-object v0
.end method

.method public static d(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfut;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzftr;

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfqk;->r(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzftr;-><init>(Lcom/google/android/gms/internal/ads/zzfqf;Z)V

    return-object v0
.end method

.method public static e(Lcom/google/android/gms/internal/ads/zzfut;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzfnj;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfut;
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfsu;

    .line 2
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfsu;-><init>(Lcom/google/android/gms/internal/ads/zzfut;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzfnj;)V

    .line 3
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/zzfva;->c(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzfsx;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzfut;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static f(Lcom/google/android/gms/internal/ads/zzfut;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzftq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfut;
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfst;

    .line 2
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfst;-><init>(Lcom/google/android/gms/internal/ads/zzfut;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzftq;)V

    .line 3
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/zzfva;->c(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzfsx;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzfut;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static g(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfut;
    .registers 2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfum;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfum;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static h(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfut;
    .registers 2

    if-nez p0, :cond_5

    .line 1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzfun;->p:Lcom/google/android/gms/internal/ads/zzfut;

    return-object p0

    .line 2
    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfun;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfun;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static i()Lcom/google/android/gms/internal/ads/zzfut;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfun;->p:Lcom/google/android/gms/internal/ads/zzfut;

    return-object v0
.end method

.method public static j(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfut;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfvj;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfvj;-><init>(Ljava/util/concurrent/Callable;)V

    .line 3
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static k(Lcom/google/android/gms/internal/ads/zzftp;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfut;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfvj;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfvj;-><init>(Lcom/google/android/gms/internal/ads/zzftp;)V

    .line 3
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static l(Lcom/google/android/gms/internal/ads/zzfut;Lcom/google/android/gms/internal/ads/zzfnj;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfut;
    .registers 4

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzftf;->x:I

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfte;

    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfte;-><init>(Lcom/google/android/gms/internal/ads/zzfut;Lcom/google/android/gms/internal/ads/zzfnj;)V

    .line 4
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzfva;->c(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzfsx;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzfut;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static m(Lcom/google/android/gms/internal/ads/zzfut;Lcom/google/android/gms/internal/ads/zzftq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfut;
    .registers 4

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzftf;->x:I

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzftd;

    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzftd;-><init>(Lcom/google/android/gms/internal/ads/zzfut;Lcom/google/android/gms/internal/ads/zzftq;)V

    .line 4
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzfva;->c(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzfsx;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzfut;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static n(Lcom/google/android/gms/internal/ads/zzfut;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzfut;
    .registers 6

    .line 1
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    .line 2
    :cond_7
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzfvg;->F(Lcom/google/android/gms/internal/ads/zzfut;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object p0

    return-object p0
.end method

.method public static o(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfvl;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 3
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "Future was expected to be done: %s"

    .line 4
    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/zzfoj;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static p(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .registers 2

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfvl;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 3
    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_16

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfty;

    .line 5
    check-cast p0, Ljava/lang/Error;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfty;-><init>(Ljava/lang/Error;)V

    throw v0

    .line 6
    :cond_16
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfvk;

    .line 7
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfvk;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static q(Lcom/google/android/gms/internal/ads/zzfut;Lcom/google/android/gms/internal/ads/zzfuf;Ljava/util/concurrent/Executor;)V
    .registers 4

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfug;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfug;-><init>(Ljava/util/concurrent/Future;Lcom/google/android/gms/internal/ads/zzfuf;)V

    .line 2
    invoke-interface {p0, v0, p2}, Lcom/google/android/gms/internal/ads/zzfut;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method
