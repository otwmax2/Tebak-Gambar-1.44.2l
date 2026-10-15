###### Class com.android.volley.toolbox.ClearCacheRequest (com.android.volley.toolbox.ClearCacheRequest)
.class public Lcom/android/volley/toolbox/ClearCacheRequest;
.super Lcom/android/volley/Request;
.source "ClearCacheRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/volley/Request<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final E:Lcom/android/volley/Cache;

.field private final F:Ljava/lang/Runnable;


# virtual methods
.method public N()Lcom/android/volley/Request$Priority;
    .registers 2

    .line 1
    sget-object v0, Lcom/android/volley/Request$Priority;->r:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method public T()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/volley/toolbox/ClearCacheRequest;->E:Lcom/android/volley/Cache;

    invoke-interface {v0}, Lcom/android/volley/Cache;->clear()V

    .line 2
    iget-object v0, p0, Lcom/android/volley/toolbox/ClearCacheRequest;->F:Ljava/lang/Runnable;

    if-eqz v0, :cond_17

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    iget-object v1, p0, Lcom/android/volley/toolbox/ClearCacheRequest;->F:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method protected Y(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method protected j(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method
