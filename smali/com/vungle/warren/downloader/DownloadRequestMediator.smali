###### Class com.vungle.warren.downloader.DownloadRequestMediator (com.vungle.warren.downloader.DownloadRequestMediator)
.class Lcom/vungle/warren/downloader/DownloadRequestMediator;
.super Ljava/lang/Object;
.source "DownloadRequestMediator.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private children:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/core/util/d<",
            "Lcom/vungle/warren/downloader/DownloadRequest;",
            "Lcom/vungle/warren/downloader/AssetDownloadListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private connectedAtomic:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final filePath:Ljava/lang/String;

.field public final isCacheable:Z

.field public final key:Ljava/lang/String;

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field public final metaPath:Ljava/lang/String;

.field public final priority:Lcom/vungle/warren/downloader/AssetPriority;

.field private runnable:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private statusAtomic:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->statusAtomic:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->children:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->connectedAtomic:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->runnable:Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    iget-object v0, p1, Lcom/vungle/warren/downloader/DownloadRequest;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->url:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->filePath:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->metaPath:Ljava/lang/String;

    .line 10
    iput-boolean p5, p0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->isCacheable:Z

    .line 11
    iput-object p6, p0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->key:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Lcom/vungle/warren/downloader/DownloadRequest;->getPriority()Lcom/vungle/warren/downloader/AssetPriority;

    move-result-object p3

    iput-object p3, p0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->priority:Lcom/vungle/warren/downloader/AssetPriority;

    .line 13
    iget-object p3, p0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->children:Ljava/util/Map;

    iget-object p4, p1, Lcom/vungle/warren/downloader/DownloadRequest;->b:Ljava/lang/String;

    new-instance p5, Landroidx/core/util/d;

    invoke-direct {p5, p1, p2}, Landroidx/core/util/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p3, p4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method declared-synchronized add(Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;)V
    .registers 6

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->children:Ljava/util/Map;

    iget-object v1, p1, Lcom/vungle/warren/downloader/DownloadRequest;->b:Ljava/lang/String;

    new-instance v2, Landroidx/core/util/d;

    invoke-direct {v2, p1, p2}, Landroidx/core/util/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 2
    monitor-exit p0

    return-void

    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method getPriority()Lcom/vungle/warren/downloader/AssetPriority;
    .registers 5

    .line 1
    new-instance v0, Lcom/vungle/warren/downloader/AssetPriority;

    const v1, 0x7fffffff

    invoke-direct {v0, v1, v1}, Lcom/vungle/warren/downloader/AssetPriority;-><init>(II)V

    .line 2
    invoke-virtual {p0}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->values()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/util/d;

    .line 3
    iget-object v2, v2, Landroidx/core/util/d;->a:Ljava/lang/Object;

    if-nez v2, :cond_21

    goto :goto_10

    .line 4
    :cond_21
    check-cast v2, Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-virtual {v2}, Lcom/vungle/warren/downloader/DownloadRequest;->getPriority()Lcom/vungle/warren/downloader/AssetPriority;

    move-result-object v2

    if-nez v2, :cond_2a

    goto :goto_10

    .line 5
    :cond_2a
    invoke-virtual {v0, v2}, Lcom/vungle/warren/downloader/AssetPriority;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_31

    goto :goto_10

    :cond_31
    move-object v0, v2

    goto :goto_10

    :cond_33
    return-object v0
.end method

.method public getRunnable()Ljava/lang/Runnable;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->runnable:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    return-object v0
.end method

.method public getStatus()I
    .registers 2
    .annotation build Lcom/vungle/warren/downloader/DownloadRequestMediator$Status;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->statusAtomic:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method is(I)Z
    .registers 3
    .param p1    # I
        .annotation build Lcom/vungle/warren/downloader/DownloadRequestMediator$Status;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->statusAtomic:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method isConnected()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->connectedAtomic:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method isPausable()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->values()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/util/d;

    .line 2
    iget-object v1, v1, Landroidx/core/util/d;->a:Ljava/lang/Object;

    if-nez v1, :cond_19

    goto :goto_8

    .line 3
    :cond_19
    check-cast v1, Lcom/vungle/warren/downloader/DownloadRequest;

    iget-boolean v1, v1, Lcom/vungle/warren/downloader/DownloadRequest;->pauseOnConnectionLost:Z

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method lock()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    return-void
.end method

.method declared-synchronized remove(Lcom/vungle/warren/downloader/DownloadRequest;)Landroidx/core/util/d;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/warren/downloader/DownloadRequest;",
            ")",
            "Landroidx/core/util/d<",
            "Lcom/vungle/warren/downloader/DownloadRequest;",
            "Lcom/vungle/warren/downloader/AssetDownloadListener;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->children:Ljava/util/Map;

    iget-object p1, p1, Lcom/vungle/warren/downloader/DownloadRequest;->b:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/core/util/d;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-object p1

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized requests()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/vungle/warren/downloader/DownloadRequest;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-virtual {p0}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->values()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/util/d;

    .line 4
    iget-object v2, v2, Landroidx/core/util/d;->a:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_22

    goto :goto_e

    .line 5
    :cond_20
    monitor-exit p0

    return-object v1

    :catchall_22
    move-exception v0

    monitor-exit p0

    goto :goto_26

    :goto_25
    throw v0

    :goto_26
    goto :goto_25
.end method

.method set(I)V
    .registers 4
    .param p1    # I
        .annotation build Lcom/vungle/warren/downloader/DownloadRequestMediator$Status;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->statusAtomic:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    return-void

    .line 2
    :cond_a
    iget-object v0, p0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->statusAtomic:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method setConnected(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->connectedAtomic:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public setRunnable(Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->runnable:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method unlock()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method declared-synchronized values()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/core/util/d<",
            "Lcom/vungle/warren/downloader/DownloadRequest;",
            "Lcom/vungle/warren/downloader/AssetDownloadListener;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->children:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-object v0

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
