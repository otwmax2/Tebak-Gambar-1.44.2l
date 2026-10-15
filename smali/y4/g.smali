###### Class y4.g (y4.g)
.class public final Ly4/g;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"


# direct methods
.method public static a(Ly4/e;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Ly4/e<",
            "TResultT;>;)TResultT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "Task must not be null"

    .line 1
    invoke-static {p0, v0}, Lv4/s;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Ly4/e;->f()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3
    invoke-static {p0}, Ly4/g;->d(Ly4/e;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_10
    new-instance v0, Ly4/v;

    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ly4/v;-><init>(Ly4/u;)V

    .line 5
    invoke-static {p0, v0}, Ly4/g;->e(Ly4/e;Ly4/w;)V

    .line 6
    invoke-virtual {v0}, Ly4/v;->a()V

    .line 7
    invoke-static {p0}, Ly4/g;->d(Ly4/e;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/Exception;)Ly4/e;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Exception;",
            ")",
            "Ly4/e<",
            "TResultT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ly4/t;

    invoke-direct {v0}, Ly4/t;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Ly4/t;->h(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static c(Ljava/lang/Object;)Ly4/e;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultT:",
            "Ljava/lang/Object;",
            ">(TResultT;)",
            "Ly4/e<",
            "TResultT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ly4/t;

    invoke-direct {v0}, Ly4/t;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Ly4/t;->i(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static d(Ly4/e;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Ly4/e<",
            "TResultT;>;)TResultT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ly4/e;->g()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2
    invoke-virtual {p0}, Ly4/e;->e()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 3
    :cond_b
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {p0}, Ly4/e;->d()Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static e(Ly4/e;Ly4/w;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly4/e<",
            "*>;",
            "Ly4/w;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Ly4/f;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Ly4/e;->c(Ljava/util/concurrent/Executor;Ly4/c;)Ly4/e;

    .line 2
    invoke-virtual {p0, v0, p1}, Ly4/e;->b(Ljava/util/concurrent/Executor;Ly4/b;)Ly4/e;

    return-void
.end method
