###### Class com.android.volley.toolbox.RequestFuture (com.android.volley.toolbox.RequestFuture)
.class public Lcom/android/volley/toolbox/RequestFuture;
.super Ljava/lang/Object;
.source "RequestFuture.java"

# interfaces
.implements Ljava/util/concurrent/Future;
.implements Lcom/android/volley/Response$Listener;
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "TT;>;",
        "Lcom/android/volley/Response$Listener<",
        "TT;>;",
        "Lcom/android/volley/Response$ErrorListener;"
    }
.end annotation


# instance fields
.field private o:Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Request<",
            "*>;"
        }
    .end annotation
.end field

.field private p:Z

.field private q:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private r:Lcom/android/volley/VolleyError;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/volley/toolbox/RequestFuture;->p:Z

    return-void
.end method

.method private declared-synchronized d(Ljava/lang/Long;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/android/volley/toolbox/RequestFuture;->r:Lcom/android/volley/VolleyError;

    if-nez v0, :cond_5a

    .line 2
    iget-boolean v0, p0, Lcom/android/volley/toolbox/RequestFuture;->p:Z

    if-eqz v0, :cond_d

    .line 3
    iget-object p1, p0, Lcom/android/volley/toolbox/RequestFuture;->q:Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_62

    monitor-exit p0

    return-object p1

    :cond_d
    const-wide/16 v0, 0x0

    if-nez p1, :cond_1b

    .line 4
    :goto_11
    :try_start_11
    invoke-virtual {p0}, Lcom/android/volley/toolbox/RequestFuture;->isDone()Z

    move-result p1

    if-nez p1, :cond_40

    .line 5
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    goto :goto_11

    .line 6
    :cond_1b
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_40

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 8
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 9
    :goto_2c
    invoke-virtual {p0}, Lcom/android/volley/toolbox/RequestFuture;->isDone()Z

    move-result p1

    if-nez p1, :cond_40

    cmp-long p1, v0, v2

    if-gez p1, :cond_40

    sub-long v0, v2, v0

    .line 10
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    goto :goto_2c

    .line 12
    :cond_40
    iget-object p1, p0, Lcom/android/volley/toolbox/RequestFuture;->r:Lcom/android/volley/VolleyError;

    if-nez p1, :cond_52

    .line 13
    iget-boolean p1, p0, Lcom/android/volley/toolbox/RequestFuture;->p:Z

    if-eqz p1, :cond_4c

    .line 14
    iget-object p1, p0, Lcom/android/volley/toolbox/RequestFuture;->q:Ljava/lang/Object;
    :try_end_4a
    .catchall {:try_start_11 .. :try_end_4a} :catchall_62

    monitor-exit p0

    return-object p1

    .line 15
    :cond_4c
    :try_start_4c
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p1

    .line 16
    :cond_52
    new-instance p1, Ljava/util/concurrent/ExecutionException;

    iget-object v0, p0, Lcom/android/volley/toolbox/RequestFuture;->r:Lcom/android/volley/VolleyError;

    invoke-direct {p1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 17
    :cond_5a
    new-instance p1, Ljava/util/concurrent/ExecutionException;

    iget-object v0, p0, Lcom/android/volley/toolbox/RequestFuture;->r:Lcom/android/volley/VolleyError;

    invoke-direct {p1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_62
    .catchall {:try_start_4c .. :try_end_62} :catchall_62

    :catchall_62
    move-exception p1

    monitor-exit p0

    goto :goto_66

    :goto_65
    throw p1

    :goto_66
    goto :goto_65
.end method


# virtual methods
.method public declared-synchronized b(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_2
    iput-boolean v0, p0, Lcom/android/volley/toolbox/RequestFuture;->p:Z

    .line 2
    iput-object p1, p0, Lcom/android/volley/toolbox/RequestFuture;->q:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    .line 4
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Lcom/android/volley/VolleyError;)V
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iput-object p1, p0, Lcom/android/volley/toolbox/RequestFuture;->r:Lcom/android/volley/VolleyError;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 3
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized cancel(Z)Z
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object p1, p0, Lcom/android/volley/toolbox/RequestFuture;->o:Lcom/android/volley/Request;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_18

    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 2
    monitor-exit p0

    return v0

    .line 3
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Lcom/android/volley/toolbox/RequestFuture;->isDone()Z

    move-result p1

    if-nez p1, :cond_16

    .line 4
    iget-object p1, p0, Lcom/android/volley/toolbox/RequestFuture;->o:Lcom/android/volley/Request;

    invoke-virtual {p1}, Lcom/android/volley/Request;->f()V
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_18

    const/4 p1, 0x1

    .line 5
    monitor-exit p0

    return p1

    .line 6
    :cond_16
    monitor-exit p0

    return v0

    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public get()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/volley/toolbox/RequestFuture;->d(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_5} :catch_6

    return-object v0

    :catch_6
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/RequestFuture;->d(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isCancelled()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/volley/toolbox/RequestFuture;->o:Lcom/android/volley/Request;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_6
    invoke-virtual {v0}, Lcom/android/volley/Request;->T()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isDone()Z
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Lcom/android/volley/toolbox/RequestFuture;->p:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/volley/toolbox/RequestFuture;->r:Lcom/android/volley/VolleyError;

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/android/volley/toolbox/RequestFuture;->isCancelled()Z

    move-result v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_15

    if-eqz v0, :cond_10

    goto :goto_12

    :cond_10
    const/4 v0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v0, 0x1

    :goto_13
    monitor-exit p0

    return v0

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method
