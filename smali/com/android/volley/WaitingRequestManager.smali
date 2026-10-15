###### Class com.android.volley.WaitingRequestManager (com.android.volley.WaitingRequestManager)
.class Lcom/android/volley/WaitingRequestManager;
.super Ljava/lang/Object;
.source "WaitingRequestManager.java"

# interfaces
.implements Lcom/android/volley/Request$NetworkRequestCompleteListener;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/volley/Request<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/android/volley/ResponseDelivery;

.field private final c:Lcom/android/volley/RequestQueue;

.field private final d:Lcom/android/volley/CacheDispatcher;

.field private final e:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/android/volley/Request<",
            "*>;>;"
        }
    .end annotation
.end field


# virtual methods
.method public declared-synchronized a(Lcom/android/volley/Request;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-virtual {p1}, Lcom/android/volley/Request;->q()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/android/volley/WaitingRequestManager;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_6b

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6b

    .line 4
    sget-boolean v1, Lcom/android/volley/VolleyLog;->b:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2f

    const-string v1, "%d waiting requests for cacheKey=%s; resend to network"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    aput-object p1, v4, v2

    .line 6
    invoke-static {v1, v4}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    :cond_2f
    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/volley/Request;

    .line 8
    iget-object v4, p0, Lcom/android/volley/WaitingRequestManager;->a:Ljava/util/Map;

    invoke-interface {v4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {v1, p0}, Lcom/android/volley/Request;->b0(Lcom/android/volley/Request$NetworkRequestCompleteListener;)V

    .line 10
    iget-object p1, p0, Lcom/android/volley/WaitingRequestManager;->c:Lcom/android/volley/RequestQueue;

    if-eqz p1, :cond_45

    .line 11
    invoke-virtual {p1, v1}, Lcom/android/volley/RequestQueue;->h(Lcom/android/volley/Request;)V

    goto :goto_6b

    .line 12
    :cond_45
    iget-object p1, p0, Lcom/android/volley/WaitingRequestManager;->d:Lcom/android/volley/CacheDispatcher;

    if-eqz p1, :cond_6b

    iget-object p1, p0, Lcom/android/volley/WaitingRequestManager;->e:Ljava/util/concurrent/BlockingQueue;
    :try_end_4b
    .catchall {:try_start_1 .. :try_end_4b} :catchall_6d

    if-eqz p1, :cond_6b

    .line 13
    :try_start_4d
    invoke-interface {p1, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_50
    .catch Ljava/lang/InterruptedException; {:try_start_4d .. :try_end_50} :catch_51
    .catchall {:try_start_4d .. :try_end_50} :catchall_6d

    goto :goto_6b

    :catch_51
    move-exception p1

    :try_start_52
    const-string v0, "Couldn\'t add request to queue. %s"

    new-array v1, v2, [Ljava/lang/Object;

    .line 14
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Lcom/android/volley/VolleyLog;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 16
    iget-object p1, p0, Lcom/android/volley/WaitingRequestManager;->d:Lcom/android/volley/CacheDispatcher;

    invoke-virtual {p1}, Lcom/android/volley/CacheDispatcher;->d()V
    :try_end_6b
    .catchall {:try_start_52 .. :try_end_6b} :catchall_6d

    .line 17
    :cond_6b
    :goto_6b
    monitor-exit p0

    return-void

    :catchall_6d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(Lcom/android/volley/Request;Lcom/android/volley/Response;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Lcom/android/volley/Response<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p2, Lcom/android/volley/Response;->b:Lcom/android/volley/Cache$Entry;

    if-eqz v0, :cond_4f

    invoke-virtual {v0}, Lcom/android/volley/Cache$Entry;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_4f

    .line 2
    :cond_b
    invoke-virtual {p1}, Lcom/android/volley/Request;->q()Ljava/lang/String;

    move-result-object p1

    .line 3
    monitor-enter p0

    .line 4
    :try_start_10
    iget-object v0, p0, Lcom/android/volley/WaitingRequestManager;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 5
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_4c

    if-eqz v0, :cond_4b

    .line 6
    sget-boolean v1, Lcom/android/volley/VolleyLog;->b:Z

    if-eqz v1, :cond_35

    const-string v1, "Releasing %d waiting requests for cacheKey=%s."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 8
    invoke-static {v1, v2}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    :cond_35
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_39
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/Request;

    .line 10
    iget-object v1, p0, Lcom/android/volley/WaitingRequestManager;->b:Lcom/android/volley/ResponseDelivery;

    invoke-interface {v1, v0, p2}, Lcom/android/volley/ResponseDelivery;->a(Lcom/android/volley/Request;Lcom/android/volley/Response;)V

    goto :goto_39

    :cond_4b
    return-void

    :catchall_4c
    move-exception p1

    .line 11
    :try_start_4d
    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw p1

    .line 12
    :cond_4f
    :goto_4f
    invoke-virtual {p0, p1}, Lcom/android/volley/WaitingRequestManager;->a(Lcom/android/volley/Request;)V

    return-void
.end method

.method declared-synchronized c(Lcom/android/volley/Request;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-virtual {p1}, Lcom/android/volley/Request;->q()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/volley/WaitingRequestManager;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3a

    .line 3
    iget-object v1, p0, Lcom/android/volley/WaitingRequestManager;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1e

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_1e
    const-string v4, "waiting-for-response"

    .line 5
    invoke-virtual {p1, v4}, Lcom/android/volley/Request;->e(Ljava/lang/String;)V

    .line 6
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object p1, p0, Lcom/android/volley/WaitingRequestManager;->a:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-boolean p1, Lcom/android/volley/VolleyLog;->b:Z

    if-eqz p1, :cond_38

    const-string p1, "Request for cacheKey=%s is in flight, putting on hold."

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v3

    .line 9
    invoke-static {p1, v1}, Lcom/android/volley/VolleyLog;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_52

    .line 10
    :cond_38
    monitor-exit p0

    return v2

    .line 11
    :cond_3a
    :try_start_3a
    iget-object v1, p0, Lcom/android/volley/WaitingRequestManager;->a:Ljava/util/Map;

    const/4 v4, 0x0

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {p1, p0}, Lcom/android/volley/Request;->b0(Lcom/android/volley/Request$NetworkRequestCompleteListener;)V

    .line 13
    sget-boolean p1, Lcom/android/volley/VolleyLog;->b:Z

    if-eqz p1, :cond_50

    const-string p1, "new request, sending to network %s"

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v3

    .line 14
    invoke-static {p1, v1}, Lcom/android/volley/VolleyLog;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_50
    .catchall {:try_start_3a .. :try_end_50} :catchall_52

    .line 15
    :cond_50
    monitor-exit p0

    return v3

    :catchall_52
    move-exception p1

    monitor-exit p0

    throw p1
.end method
