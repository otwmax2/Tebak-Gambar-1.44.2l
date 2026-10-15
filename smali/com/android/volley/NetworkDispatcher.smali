###### Class com.android.volley.NetworkDispatcher (com.android.volley.NetworkDispatcher)
.class public Lcom/android/volley/NetworkDispatcher;
.super Ljava/lang/Thread;
.source "NetworkDispatcher.java"


# instance fields
.field private final o:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/android/volley/Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final p:Lcom/android/volley/Network;

.field private final q:Lcom/android/volley/Cache;

.field private final r:Lcom/android/volley/ResponseDelivery;

.field private volatile s:Z


# direct methods
.method private a(Lcom/android/volley/Request;)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;)V"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_d

    .line 2
    invoke-virtual {p1}, Lcom/android/volley/Request;->Q()I

    move-result p1

    invoke-static {p1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    :cond_d
    return-void
.end method

.method private b(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Lcom/android/volley/VolleyError;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Lcom/android/volley/Request;->X(Lcom/android/volley/VolleyError;)Lcom/android/volley/VolleyError;

    move-result-object p2

    .line 2
    iget-object v0, p0, Lcom/android/volley/NetworkDispatcher;->r:Lcom/android/volley/ResponseDelivery;

    invoke-interface {v0, p1, p2}, Lcom/android/volley/ResponseDelivery;->c(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method private c()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/volley/NetworkDispatcher;->o:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/Request;

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/volley/NetworkDispatcher;->d(Lcom/android/volley/Request;)V

    return-void
.end method


# virtual methods
.method d(Lcom/android/volley/Request;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/4 v2, 0x3

    .line 2
    invoke-virtual {p1, v2}, Lcom/android/volley/Request;->Z(I)V

    const/4 v2, 0x4

    :try_start_9
    const-string v3, "network-queue-take"

    .line 3
    invoke-virtual {p1, v3}, Lcom/android/volley/Request;->e(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/android/volley/Request;->T()Z

    move-result v3

    if-eqz v3, :cond_20

    const-string v3, "network-discard-cancelled"

    .line 5
    invoke-virtual {p1, v3}, Lcom/android/volley/Request;->m(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/android/volley/Request;->V()V
    :try_end_1c
    .catch Lcom/android/volley/VolleyError; {:try_start_9 .. :try_end_1c} :catch_9b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1c} :catch_75
    .catchall {:try_start_9 .. :try_end_1c} :catchall_73

    .line 7
    invoke-virtual {p1, v2}, Lcom/android/volley/Request;->Z(I)V

    return-void

    .line 8
    :cond_20
    :try_start_20
    invoke-direct {p0, p1}, Lcom/android/volley/NetworkDispatcher;->a(Lcom/android/volley/Request;)V

    .line 9
    iget-object v3, p0, Lcom/android/volley/NetworkDispatcher;->p:Lcom/android/volley/Network;

    invoke-interface {v3, p1}, Lcom/android/volley/Network;->a(Lcom/android/volley/Request;)Lcom/android/volley/NetworkResponse;

    move-result-object v3

    const-string v4, "network-http-complete"

    .line 10
    invoke-virtual {p1, v4}, Lcom/android/volley/Request;->e(Ljava/lang/String;)V

    .line 11
    iget-boolean v4, v3, Lcom/android/volley/NetworkResponse;->e:Z

    if-eqz v4, :cond_44

    invoke-virtual {p1}, Lcom/android/volley/Request;->S()Z

    move-result v4

    if-eqz v4, :cond_44

    const-string v3, "not-modified"

    .line 12
    invoke-virtual {p1, v3}, Lcom/android/volley/Request;->m(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Lcom/android/volley/Request;->V()V
    :try_end_40
    .catch Lcom/android/volley/VolleyError; {:try_start_20 .. :try_end_40} :catch_9b
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_40} :catch_75
    .catchall {:try_start_20 .. :try_end_40} :catchall_73

    .line 14
    invoke-virtual {p1, v2}, Lcom/android/volley/Request;->Z(I)V

    return-void

    .line 15
    :cond_44
    :try_start_44
    invoke-virtual {p1, v3}, Lcom/android/volley/Request;->Y(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;

    move-result-object v3

    const-string v4, "network-parse-complete"

    .line 16
    invoke-virtual {p1, v4}, Lcom/android/volley/Request;->e(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Lcom/android/volley/Request;->f0()Z

    move-result v4

    if-eqz v4, :cond_67

    iget-object v4, v3, Lcom/android/volley/Response;->b:Lcom/android/volley/Cache$Entry;

    if-eqz v4, :cond_67

    .line 18
    iget-object v4, p0, Lcom/android/volley/NetworkDispatcher;->q:Lcom/android/volley/Cache;

    invoke-virtual {p1}, Lcom/android/volley/Request;->q()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lcom/android/volley/Response;->b:Lcom/android/volley/Cache$Entry;

    invoke-interface {v4, v5, v6}, Lcom/android/volley/Cache;->d(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V

    const-string v4, "network-cache-written"

    .line 19
    invoke-virtual {p1, v4}, Lcom/android/volley/Request;->e(Ljava/lang/String;)V

    .line 20
    :cond_67
    invoke-virtual {p1}, Lcom/android/volley/Request;->U()V

    .line 21
    iget-object v4, p0, Lcom/android/volley/NetworkDispatcher;->r:Lcom/android/volley/ResponseDelivery;

    invoke-interface {v4, p1, v3}, Lcom/android/volley/ResponseDelivery;->a(Lcom/android/volley/Request;Lcom/android/volley/Response;)V

    .line 22
    invoke-virtual {p1, v3}, Lcom/android/volley/Request;->W(Lcom/android/volley/Response;)V
    :try_end_72
    .catch Lcom/android/volley/VolleyError; {:try_start_44 .. :try_end_72} :catch_9b
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_72} :catch_75
    .catchall {:try_start_44 .. :try_end_72} :catchall_73

    goto :goto_aa

    :catchall_73
    move-exception v0

    goto :goto_ae

    :catch_75
    move-exception v3

    :try_start_76
    const-string v4, "Unhandled exception %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 23
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    new-instance v4, Lcom/android/volley/VolleyError;

    invoke-direct {v4, v3}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    .line 25
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Lcom/android/volley/VolleyError;->a(J)V

    .line 26
    iget-object v0, p0, Lcom/android/volley/NetworkDispatcher;->r:Lcom/android/volley/ResponseDelivery;

    invoke-interface {v0, p1, v4}, Lcom/android/volley/ResponseDelivery;->c(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    .line 27
    invoke-virtual {p1}, Lcom/android/volley/Request;->V()V

    goto :goto_aa

    :catch_9b
    move-exception v3

    .line 28
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Lcom/android/volley/VolleyError;->a(J)V

    .line 29
    invoke-direct {p0, p1, v3}, Lcom/android/volley/NetworkDispatcher;->b(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    .line 30
    invoke-virtual {p1}, Lcom/android/volley/Request;->V()V
    :try_end_aa
    .catchall {:try_start_76 .. :try_end_aa} :catchall_73

    .line 31
    :goto_aa
    invoke-virtual {p1, v2}, Lcom/android/volley/Request;->Z(I)V

    return-void

    :goto_ae
    invoke-virtual {p1, v2}, Lcom/android/volley/Request;->Z(I)V

    throw v0
.end method

.method public run()V
    .registers 3

    const/16 v0, 0xa

    .line 1
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2
    :goto_5
    :try_start_5
    invoke-direct {p0}, Lcom/android/volley/NetworkDispatcher;->c()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_5

    .line 3
    :catch_9
    iget-boolean v0, p0, Lcom/android/volley/NetworkDispatcher;->s:Z

    if-eqz v0, :cond_15

    .line 4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_15
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it"

    .line 5
    invoke-static {v1, v0}, Lcom/android/volley/VolleyLog;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5
.end method
