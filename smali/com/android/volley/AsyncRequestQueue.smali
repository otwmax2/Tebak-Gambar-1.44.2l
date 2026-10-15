###### Class com.android.volley.AsyncRequestQueue (com.android.volley.AsyncRequestQueue)
.class public Lcom/android/volley/AsyncRequestQueue;
.super Lcom/android/volley/RequestQueue;
.source "AsyncRequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/AsyncRequestQueue$ThrowingCache;,
        Lcom/android/volley/AsyncRequestQueue$Builder;,
        Lcom/android/volley/AsyncRequestQueue$ExecutorFactory;,
        Lcom/android/volley/AsyncRequestQueue$CachePutTask;,
        Lcom/android/volley/AsyncRequestQueue$NetworkParseTask;,
        Lcom/android/volley/AsyncRequestQueue$NetworkTask;,
        Lcom/android/volley/AsyncRequestQueue$ParseErrorTask;,
        Lcom/android/volley/AsyncRequestQueue$CacheParseTask;,
        Lcom/android/volley/AsyncRequestQueue$CacheTask;
    }
.end annotation


# instance fields
.field private final i:Lcom/android/volley/AsyncCache;

.field private final j:Lcom/android/volley/AsyncNetwork;

.field private k:Ljava/util/concurrent/ExecutorService;

.field private l:Ljava/util/concurrent/ExecutorService;

.field private final m:Lcom/android/volley/WaitingRequestManager;

.field private final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/volley/Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field private volatile o:Z

.field private final p:Ljava/lang/Object;


# direct methods
.method static synthetic i(Lcom/android/volley/AsyncRequestQueue;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/volley/AsyncRequestQueue;->s()V

    return-void
.end method

.method static synthetic j(Lcom/android/volley/AsyncRequestQueue;)Lcom/android/volley/AsyncCache;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/volley/AsyncRequestQueue;->i:Lcom/android/volley/AsyncCache;

    return-object p0
.end method

.method static synthetic k(Lcom/android/volley/AsyncRequestQueue;)Ljava/util/concurrent/ExecutorService;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/volley/AsyncRequestQueue;->k:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic l(Lcom/android/volley/AsyncRequestQueue;Lcom/android/volley/Cache$Entry;Lcom/android/volley/Request;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/volley/AsyncRequestQueue;->r(Lcom/android/volley/Cache$Entry;Lcom/android/volley/Request;)V

    return-void
.end method

.method static synthetic m(Lcom/android/volley/AsyncRequestQueue;)Lcom/android/volley/WaitingRequestManager;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/volley/AsyncRequestQueue;->m:Lcom/android/volley/WaitingRequestManager;

    return-object p0
.end method

.method static synthetic n(Lcom/android/volley/AsyncRequestQueue;)Ljava/util/concurrent/ExecutorService;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/volley/AsyncRequestQueue;->l:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic o(Lcom/android/volley/AsyncRequestQueue;)Lcom/android/volley/AsyncNetwork;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/volley/AsyncRequestQueue;->j:Lcom/android/volley/AsyncNetwork;

    return-object p0
.end method

.method static synthetic p(Lcom/android/volley/AsyncRequestQueue;Lcom/android/volley/Request;Lcom/android/volley/Response;Z)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/volley/AsyncRequestQueue;->q(Lcom/android/volley/Request;Lcom/android/volley/Response;Z)V

    return-void
.end method

.method private q(Lcom/android/volley/Request;Lcom/android/volley/Response;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Lcom/android/volley/Response<",
            "*>;Z)V"
        }
    .end annotation

    if-eqz p3, :cond_7

    const-string p3, "network-cache-written"

    .line 1
    invoke-virtual {p1, p3}, Lcom/android/volley/Request;->e(Ljava/lang/String;)V

    .line 2
    :cond_7
    invoke-virtual {p1}, Lcom/android/volley/Request;->U()V

    .line 3
    invoke-virtual {p0}, Lcom/android/volley/RequestQueue;->e()Lcom/android/volley/ResponseDelivery;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lcom/android/volley/ResponseDelivery;->a(Lcom/android/volley/Request;Lcom/android/volley/Response;)V

    .line 4
    invoke-virtual {p1, p2}, Lcom/android/volley/Request;->W(Lcom/android/volley/Response;)V

    return-void
.end method

.method private r(Lcom/android/volley/Cache$Entry;Lcom/android/volley/Request;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Cache$Entry;",
            "Lcom/android/volley/Request<",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_13

    const-string p1, "cache-miss"

    .line 1
    invoke-virtual {p2, p1}, Lcom/android/volley/Request;->e(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/android/volley/AsyncRequestQueue;->m:Lcom/android/volley/WaitingRequestManager;

    invoke-virtual {p1, p2}, Lcom/android/volley/WaitingRequestManager;->c(Lcom/android/volley/Request;)Z

    move-result p1

    if-nez p1, :cond_12

    .line 3
    invoke-virtual {p0, p2}, Lcom/android/volley/AsyncRequestQueue;->h(Lcom/android/volley/Request;)V

    :cond_12
    return-void

    .line 4
    :cond_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 5
    invoke-virtual {p1, v4, v5}, Lcom/android/volley/Cache$Entry;->b(J)Z

    move-result v0

    if-eqz v0, :cond_31

    const-string v0, "cache-hit-expired"

    .line 6
    invoke-virtual {p2, v0}, Lcom/android/volley/Request;->e(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2, p1}, Lcom/android/volley/Request;->a0(Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Request;

    .line 8
    iget-object p1, p0, Lcom/android/volley/AsyncRequestQueue;->m:Lcom/android/volley/WaitingRequestManager;

    invoke-virtual {p1, p2}, Lcom/android/volley/WaitingRequestManager;->c(Lcom/android/volley/Request;)Z

    move-result p1

    if-nez p1, :cond_30

    .line 9
    invoke-virtual {p0, p2}, Lcom/android/volley/AsyncRequestQueue;->h(Lcom/android/volley/Request;)V

    :cond_30
    return-void

    .line 10
    :cond_31
    iget-object v6, p0, Lcom/android/volley/AsyncRequestQueue;->l:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;-><init>(Lcom/android/volley/AsyncRequestQueue;Lcom/android/volley/Request;Lcom/android/volley/Cache$Entry;J)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private s()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/volley/AsyncRequestQueue;->n:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    iget-object v2, p0, Lcom/android/volley/AsyncRequestQueue;->n:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v2, 0x1

    .line 4
    iput-boolean v2, p0, Lcom/android/volley/AsyncRequestQueue;->o:Z

    .line 5
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_28

    .line 6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/volley/Request;

    .line 7
    invoke-virtual {p0, v1}, Lcom/android/volley/AsyncRequestQueue;->b(Lcom/android/volley/Request;)V

    goto :goto_17

    :cond_27
    return-void

    :catchall_28
    move-exception v1

    .line 8
    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    goto :goto_2c

    :goto_2b
    throw v1

    :goto_2c
    goto :goto_2b
.end method


# virtual methods
.method b(Lcom/android/volley/Request;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/Request<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/android/volley/AsyncRequestQueue;->o:Z

    if-nez v0, :cond_17

    .line 2
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_7
    iget-boolean v1, p0, Lcom/android/volley/AsyncRequestQueue;->o:Z

    if-nez v1, :cond_12

    .line 4
    iget-object v1, p0, Lcom/android/volley/AsyncRequestQueue;->n:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    monitor-exit v0

    return-void

    .line 6
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p1

    .line 7
    :cond_17
    :goto_17
    invoke-virtual {p1}, Lcom/android/volley/Request;->f0()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 8
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue;->i:Lcom/android/volley/AsyncCache;

    if-eqz v0, :cond_2c

    .line 9
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue;->k:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/volley/AsyncRequestQueue$CacheTask;

    invoke-direct {v1, p0, p1}, Lcom/android/volley/AsyncRequestQueue$CacheTask;-><init>(Lcom/android/volley/AsyncRequestQueue;Lcom/android/volley/Request;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_3a

    .line 10
    :cond_2c
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue;->l:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/volley/AsyncRequestQueue$CacheTask;

    invoke-direct {v1, p0, p1}, Lcom/android/volley/AsyncRequestQueue$CacheTask;-><init>(Lcom/android/volley/AsyncRequestQueue;Lcom/android/volley/Request;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_3a

    .line 11
    :cond_37
    invoke-virtual {p0, p1}, Lcom/android/volley/AsyncRequestQueue;->h(Lcom/android/volley/Request;)V

    :goto_3a
    return-void
.end method

.method h(Lcom/android/volley/Request;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/Request<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue;->k:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/volley/AsyncRequestQueue$NetworkTask;

    invoke-direct {v1, p0, p1}, Lcom/android/volley/AsyncRequestQueue$NetworkTask;-><init>(Lcom/android/volley/AsyncRequestQueue;Lcom/android/volley/Request;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.android.volley.AsyncRequestQueue.AnonymousClass1 (com.android.volley.AsyncRequestQueue$1)
.class Lcom/android/volley/AsyncRequestQueue$1;
.super Ljava/lang/Object;
.source "AsyncRequestQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:Lcom/android/volley/AsyncRequestQueue;


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue$1;->o:Lcom/android/volley/AsyncRequestQueue;

    invoke-static {v0}, Lcom/android/volley/AsyncRequestQueue;->j(Lcom/android/volley/AsyncRequestQueue;)Lcom/android/volley/AsyncCache;

    move-result-object v0

    new-instance v1, Lcom/android/volley/AsyncRequestQueue$1$1;

    invoke-direct {v1, p0}, Lcom/android/volley/AsyncRequestQueue$1$1;-><init>(Lcom/android/volley/AsyncRequestQueue$1;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/AsyncCache;->b(Lcom/android/volley/AsyncCache$OnWriteCompleteCallback;)V

    return-void
.end method

###### Class com.android.volley.AsyncRequestQueue.AnonymousClass1.C01011 (com.android.volley.AsyncRequestQueue$1$1)
.class Lcom/android/volley/AsyncRequestQueue$1$1;
.super Ljava/lang/Object;
.source "AsyncRequestQueue.java"

# interfaces
.implements Lcom/android/volley/AsyncCache$OnWriteCompleteCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/AsyncRequestQueue$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/volley/AsyncRequestQueue$1;


# direct methods
.method constructor <init>(Lcom/android/volley/AsyncRequestQueue$1;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/volley/AsyncRequestQueue$1$1;->a:Lcom/android/volley/AsyncRequestQueue$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue$1$1;->a:Lcom/android/volley/AsyncRequestQueue$1;

    iget-object v0, v0, Lcom/android/volley/AsyncRequestQueue$1;->o:Lcom/android/volley/AsyncRequestQueue;

    invoke-static {v0}, Lcom/android/volley/AsyncRequestQueue;->i(Lcom/android/volley/AsyncRequestQueue;)V

    return-void
.end method

###### Class com.android.volley.AsyncRequestQueue.AnonymousClass2 (com.android.volley.AsyncRequestQueue$2)
.class Lcom/android/volley/AsyncRequestQueue$2;
.super Ljava/lang/Object;
.source "AsyncRequestQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:Lcom/android/volley/AsyncRequestQueue;


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue$2;->o:Lcom/android/volley/AsyncRequestQueue;

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->d()Lcom/android/volley/Cache;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/volley/Cache;->b()V

    .line 2
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue$2;->o:Lcom/android/volley/AsyncRequestQueue;

    invoke-static {v0}, Lcom/android/volley/AsyncRequestQueue;->k(Lcom/android/volley/AsyncRequestQueue;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/android/volley/AsyncRequestQueue$2$1;

    invoke-direct {v1, p0}, Lcom/android/volley/AsyncRequestQueue$2$1;-><init>(Lcom/android/volley/AsyncRequestQueue$2;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.android.volley.AsyncRequestQueue.AnonymousClass2.AnonymousClass1 (com.android.volley.AsyncRequestQueue$2$1)
.class Lcom/android/volley/AsyncRequestQueue$2$1;
.super Ljava/lang/Object;
.source "AsyncRequestQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/AsyncRequestQueue$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/android/volley/AsyncRequestQueue$2;


# direct methods
.method constructor <init>(Lcom/android/volley/AsyncRequestQueue$2;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/volley/AsyncRequestQueue$2$1;->o:Lcom/android/volley/AsyncRequestQueue$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue$2$1;->o:Lcom/android/volley/AsyncRequestQueue$2;

    iget-object v0, v0, Lcom/android/volley/AsyncRequestQueue$2;->o:Lcom/android/volley/AsyncRequestQueue;

    invoke-static {v0}, Lcom/android/volley/AsyncRequestQueue;->i(Lcom/android/volley/AsyncRequestQueue;)V

    return-void
.end method

###### Class com.android.volley.AsyncRequestQueue.AnonymousClass3 (com.android.volley.AsyncRequestQueue$3)
.class Lcom/android/volley/AsyncRequestQueue$3;
.super Ljava/lang/Object;
.source "AsyncRequestQueue.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;Ljava/lang/Runnable;)I
    .registers 4

    .line 1
    instance-of v0, p1, Lcom/android/volley/RequestTask;

    if-eqz v0, :cond_13

    .line 2
    instance-of v0, p2, Lcom/android/volley/RequestTask;

    if-eqz v0, :cond_11

    .line 3
    check-cast p1, Lcom/android/volley/RequestTask;

    check-cast p2, Lcom/android/volley/RequestTask;

    invoke-virtual {p1, p2}, Lcom/android/volley/RequestTask;->a(Lcom/android/volley/RequestTask;)I

    move-result p1

    return p1

    :cond_11
    const/4 p1, 0x1

    return p1

    .line 4
    :cond_13
    instance-of p1, p2, Lcom/android/volley/RequestTask;

    if-eqz p1, :cond_19

    const/4 p1, -0x1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    :goto_1a
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p1, Ljava/lang/Runnable;

    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {p0, p1, p2}, Lcom/android/volley/AsyncRequestQueue$3;->a(Ljava/lang/Runnable;Ljava/lang/Runnable;)I

    move-result p1

    return p1
.end method

###### Class com.android.volley.AsyncRequestQueue.Builder (com.android.volley.AsyncRequestQueue$Builder)
.class public Lcom/android/volley/AsyncRequestQueue$Builder;
.super Ljava/lang/Object;
.source "AsyncRequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/AsyncRequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

###### Class com.android.volley.AsyncRequestQueue.Builder.AnonymousClass1 (com.android.volley.AsyncRequestQueue$Builder$1)
.class Lcom/android/volley/AsyncRequestQueue$Builder$1;
.super Lcom/android/volley/AsyncRequestQueue$ExecutorFactory;
.source "AsyncRequestQueue.java"

###### Class com.android.volley.AsyncRequestQueue.Builder.AnonymousClass1.ThreadFactoryC01021 (com.android.volley.AsyncRequestQueue$Builder$1$1)
.class Lcom/android/volley/AsyncRequestQueue$Builder$1$1;
.super Ljava/lang/Object;
.source "AsyncRequestQueue.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field final synthetic a:Ljava/lang/String;


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 4

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Volley-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/volley/AsyncRequestQueue$Builder$1$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-object p1
.end method

###### Class com.android.volley.AsyncRequestQueue.CacheParseTask (com.android.volley.AsyncRequestQueue$CacheParseTask)
.class Lcom/android/volley/AsyncRequestQueue$CacheParseTask;
.super Lcom/android/volley/RequestTask;
.source "AsyncRequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/AsyncRequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CacheParseTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/volley/RequestTask<",
        "TT;>;"
    }
.end annotation


# instance fields
.field p:Lcom/android/volley/Cache$Entry;

.field q:J

.field final synthetic r:Lcom/android/volley/AsyncRequestQueue;


# direct methods
.method constructor <init>(Lcom/android/volley/AsyncRequestQueue;Lcom/android/volley/Request;Lcom/android/volley/Cache$Entry;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "TT;>;",
            "Lcom/android/volley/Cache$Entry;",
            "J)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;->r:Lcom/android/volley/AsyncRequestQueue;

    .line 2
    invoke-direct {p0, p2}, Lcom/android/volley/RequestTask;-><init>(Lcom/android/volley/Request;)V

    .line 3
    iput-object p3, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;->p:Lcom/android/volley/Cache$Entry;

    .line 4
    iput-wide p4, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;->q:J

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/android/volley/RequestTask;->o:Lcom/android/volley/Request;

    const-string v1, "cache-hit"

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->e(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/android/volley/RequestTask;->o:Lcom/android/volley/Request;

    new-instance v8, Lcom/android/volley/NetworkResponse;

    iget-object v1, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;->p:Lcom/android/volley/Cache$Entry;

    iget-object v3, v1, Lcom/android/volley/Cache$Entry;->a:[B

    iget-object v7, v1, Lcom/android/volley/Cache$Entry;->h:Ljava/util/List;

    const/16 v2, 0xc8

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/volley/NetworkResponse;-><init>(I[BZJLjava/util/List;)V

    .line 3
    invoke-virtual {v0, v8}, Lcom/android/volley/Request;->Y(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/android/volley/RequestTask;->o:Lcom/android/volley/Request;

    const-string v2, "cache-hit-parsed"

    invoke-virtual {v1, v2}, Lcom/android/volley/Request;->e(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;->p:Lcom/android/volley/Cache$Entry;

    iget-wide v2, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;->q:J

    invoke-virtual {v1, v2, v3}, Lcom/android/volley/Cache$Entry;->c(J)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 6
    iget-object v1, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;->r:Lcom/android/volley/AsyncRequestQueue;

    invoke-virtual {v1}, Lcom/android/volley/RequestQueue;->e()Lcom/android/volley/ResponseDelivery;

    move-result-object v1

    iget-object v2, p0, Lcom/android/volley/RequestTask;->o:Lcom/android/volley/Request;

    invoke-interface {v1, v2, v0}, Lcom/android/volley/ResponseDelivery;->a(Lcom/android/volley/Request;Lcom/android/volley/Response;)V

    goto :goto_76

    .line 7
    :cond_3b
    iget-object v1, p0, Lcom/android/volley/RequestTask;->o:Lcom/android/volley/Request;

    const-string v2, "cache-hit-refresh-needed"

    invoke-virtual {v1, v2}, Lcom/android/volley/Request;->e(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/android/volley/RequestTask;->o:Lcom/android/volley/Request;

    iget-object v2, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;->p:Lcom/android/volley/Cache$Entry;

    invoke-virtual {v1, v2}, Lcom/android/volley/Request;->a0(Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Request;

    const/4 v1, 0x1

    .line 9
    iput-boolean v1, v0, Lcom/android/volley/Response;->d:Z

    .line 10
    iget-object v1, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;->r:Lcom/android/volley/AsyncRequestQueue;

    invoke-static {v1}, Lcom/android/volley/AsyncRequestQueue;->m(Lcom/android/volley/AsyncRequestQueue;)Lcom/android/volley/WaitingRequestManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/volley/RequestTask;->o:Lcom/android/volley/Request;

    invoke-virtual {v1, v2}, Lcom/android/volley/WaitingRequestManager;->c(Lcom/android/volley/Request;)Z

    move-result v1

    if-nez v1, :cond_6b

    .line 11
    iget-object v1, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;->r:Lcom/android/volley/AsyncRequestQueue;

    invoke-virtual {v1}, Lcom/android/volley/RequestQueue;->e()Lcom/android/volley/ResponseDelivery;

    move-result-object v1

    iget-object v2, p0, Lcom/android/volley/RequestTask;->o:Lcom/android/volley/Request;

    new-instance v3, Lcom/android/volley/AsyncRequestQueue$CacheParseTask$1;

    invoke-direct {v3, p0}, Lcom/android/volley/AsyncRequestQueue$CacheParseTask$1;-><init>(Lcom/android/volley/AsyncRequestQueue$CacheParseTask;)V

    .line 12
    invoke-interface {v1, v2, v0, v3}, Lcom/android/volley/ResponseDelivery;->b(Lcom/android/volley/Request;Lcom/android/volley/Response;Ljava/lang/Runnable;)V

    goto :goto_76

    .line 13
    :cond_6b
    iget-object v1, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;->r:Lcom/android/volley/AsyncRequestQueue;

    invoke-virtual {v1}, Lcom/android/volley/RequestQueue;->e()Lcom/android/volley/ResponseDelivery;

    move-result-object v1

    iget-object v2, p0, Lcom/android/volley/RequestTask;->o:Lcom/android/volley/Request;

    invoke-interface {v1, v2, v0}, Lcom/android/volley/ResponseDelivery;->a(Lcom/android/volley/Request;Lcom/android/volley/Response;)V

    :goto_76
    return-void
.end method

###### Class com.android.volley.AsyncRequestQueue.CacheParseTask.AnonymousClass1 (com.android.volley.AsyncRequestQueue$CacheParseTask$1)
.class Lcom/android/volley/AsyncRequestQueue$CacheParseTask$1;
.super Ljava/lang/Object;
.source "AsyncRequestQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/AsyncRequestQueue$CacheParseTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/android/volley/AsyncRequestQueue$CacheParseTask;


# direct methods
.method constructor <init>(Lcom/android/volley/AsyncRequestQueue$CacheParseTask;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask$1;->o:Lcom/android/volley/AsyncRequestQueue$CacheParseTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask$1;->o:Lcom/android/volley/AsyncRequestQueue$CacheParseTask;

    iget-object v1, v0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;->r:Lcom/android/volley/AsyncRequestQueue;

    iget-object v0, v0, Lcom/android/volley/RequestTask;->o:Lcom/android/volley/Request;

    invoke-virtual {v1, v0}, Lcom/android/volley/AsyncRequestQueue;->h(Lcom/android/volley/Request;)V

    return-void
.end method

###### Class com.android.volley.AsyncRequestQueue.CachePutTask (com.android.volley.AsyncRequestQueue$CachePutTask)
.class Lcom/android/volley/AsyncRequestQueue$CachePutTask;
.super Lcom/android/volley/RequestTask;
.source "AsyncRequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/AsyncRequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CachePutTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/volley/RequestTask<",
        "TT;>;"
    }
.end annotation


# instance fields
.field p:Lcom/android/volley/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response<",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic q:Lcom/android/volley/AsyncRequestQueue;


# direct methods
.method constructor <init>(Lcom/android/volley/AsyncRequestQueue;Lcom/android/volley/Request;Lcom/android/volley/Response;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "TT;>;",
            "Lcom/android/volley/Response<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/volley/AsyncRequestQueue$CachePutTask;->q:Lcom/android/volley/AsyncRequestQueue;

    .line 2
    invoke-direct {p0, p2}, Lcom/android/volley/RequestTask;-><init>(Lcom/android/volley/Request;)V

    .line 3
    iput-object p3, p0, Lcom/android/volley/AsyncRequestQueue$CachePutTask;->p:Lcom/android/volley/Response;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue$CachePutTask;->q:Lcom/android/volley/AsyncRequestQueue;

    invoke-static {v0}, Lcom/android/volley/AsyncRequestQueue;->j(Lcom/android/volley/AsyncRequestQueue;)Lcom/android/volley/AsyncCache;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 2
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue$CachePutTask;->q:Lcom/android/volley/AsyncRequestQueue;

    invoke-static {v0}, Lcom/android/volley/AsyncRequestQueue;->j(Lcom/android/volley/AsyncRequestQueue;)Lcom/android/volley/AsyncCache;

    move-result-object v0

    iget-object v1, p0, Lcom/android/volley/RequestTask;->o:Lcom/android/volley/Request;

    .line 3
    invoke-virtual {v1}, Lcom/android/volley/Request;->q()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/volley/AsyncRequestQueue$CachePutTask;->p:Lcom/android/volley/Response;

    iget-object v2, v2, Lcom/android/volley/Response;->b:Lcom/android/volley/Cache$Entry;

    new-instance v3, Lcom/android/volley/AsyncRequestQueue$CachePutTask$1;

    invoke-direct {v3, p0}, Lcom/android/volley/AsyncRequestQueue$CachePutTask$1;-><init>(Lcom/android/volley/AsyncRequestQueue$CachePutTask;)V

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/volley/AsyncCache;->c(Ljava/lang/String;Lcom/android/volley/Cache$Entry;Lcom/android/volley/AsyncCache$OnWriteCompleteCallback;)V

    goto :goto_3e

    .line 5
    :cond_21
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue$CachePutTask;->q:Lcom/android/volley/AsyncRequestQueue;

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->d()Lcom/android/volley/Cache;

    move-result-object v0

    iget-object v1, p0, Lcom/android/volley/RequestTask;->o:Lcom/android/volley/Request;

    invoke-virtual {v1}, Lcom/android/volley/Request;->q()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/volley/AsyncRequestQueue$CachePutTask;->p:Lcom/android/volley/Response;

    iget-object v2, v2, Lcom/android/volley/Response;->b:Lcom/android/volley/Cache$Entry;

    invoke-interface {v0, v1, v2}, Lcom/android/volley/Cache;->d(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V

    .line 6
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue$CachePutTask;->q:Lcom/android/volley/AsyncRequestQueue;

    iget-object v1, p0, Lcom/android/volley/RequestTask;->o:Lcom/android/volley/Request;

    iget-object v2, p0, Lcom/android/volley/AsyncRequestQueue$CachePutTask;->p:Lcom/android/volley/Response;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/volley/AsyncRequestQueue;->p(Lcom/android/volley/AsyncRequestQueue;Lcom/android/volley/Request;Lcom/android/volley/Response;Z)V

    :goto_3e
    return-void
.end method

###### Class com.android.volley.AsyncRequestQueue.CachePutTask.AnonymousClass1 (com.android.volley.AsyncRequestQueue$CachePutTask$1)
.class Lcom/android/volley/AsyncRequestQueue$CachePutTask$1;
.super Ljava/lang/Object;
.source "AsyncRequestQueue.java"

# interfaces
.implements Lcom/android/volley/AsyncCache$OnWriteCompleteCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/AsyncRequestQueue$CachePutTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/volley/AsyncRequestQueue$CachePutTask;


# direct methods
.method constructor <init>(Lcom/android/volley/AsyncRequestQueue$CachePutTask;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/volley/AsyncRequestQueue$CachePutTask$1;->a:Lcom/android/volley/AsyncRequestQueue$CachePutTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue$CachePutTask$1;->a:Lcom/android/volley/AsyncRequestQueue$CachePutTask;

    iget-object v1, v0, Lcom/android/volley/AsyncRequestQueue$CachePutTask;->q:Lcom/android/volley/AsyncRequestQueue;

    iget-object v2, v0, Lcom/android/volley/RequestTask;->o:Lcom/android/volley/Request;

    iget-object v0, v0, Lcom/android/volley/AsyncRequestQueue$CachePutTask;->p:Lcom/android/volley/Response;

    const/4 v3, 0x1

    invoke-static {v1, v2, v0, v3}, Lcom/android/volley/AsyncRequestQueue;->p(Lcom/android/volley/AsyncRequestQueue;Lcom/android/volley/Request;Lcom/android/volley/Response;Z)V

    return-void
.end method

###### Class com.android.volley.AsyncRequestQueue.CacheTask (com.android.volley.AsyncRequestQueue$CacheTask)
.class Lcom/android/volley/AsyncRequestQueue$CacheTask;
.super Lcom/android/volley/RequestTask;
.source "AsyncRequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/AsyncRequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CacheTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/volley/RequestTask<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic p:Lcom/android/volley/AsyncRequestQueue;


# direct methods
.method constructor <init>(Lcom/android/volley/AsyncRequestQueue;Lcom/android/volley/Request;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/volley/AsyncRequestQueue$CacheTask;->p:Lcom/android/volley/AsyncRequestQueue;

    .line 2
    invoke-direct {p0, p2}, Lcom/android/volley/RequestTask;-><init>(Lcom/android/volley/Request;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/volley/RequestTask;->o:Lcom/android/volley/Request;

    invoke-virtual {v0}, Lcom/android/volley/Request;->T()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2
    iget-object v0, p0, Lcom/android/volley/RequestTask;->o:Lcom/android/volley/Request;

    const-string v1, "cache-discard-canceled"

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->m(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_10
    iget-object v0, p0, Lcom/android/volley/RequestTask;->o:Lcom/android/volley/Request;

    const-string v1, "cache-queue-take"

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->e(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue$CacheTask;->p:Lcom/android/volley/AsyncRequestQueue;

    invoke-static {v0}, Lcom/android/volley/AsyncRequestQueue;->j(Lcom/android/volley/AsyncRequestQueue;)Lcom/android/volley/AsyncCache;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 5
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue$CacheTask;->p:Lcom/android/volley/AsyncRequestQueue;

    invoke-static {v0}, Lcom/android/volley/AsyncRequestQueue;->j(Lcom/android/volley/AsyncRequestQueue;)Lcom/android/volley/AsyncCache;

    move-result-object v0

    iget-object v1, p0, Lcom/android/volley/RequestTask;->o:Lcom/android/volley/Request;

    .line 6
    invoke-virtual {v1}, Lcom/android/volley/Request;->q()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/volley/AsyncRequestQueue$CacheTask$1;

    invoke-direct {v2, p0}, Lcom/android/volley/AsyncRequestQueue$CacheTask$1;-><init>(Lcom/android/volley/AsyncRequestQueue$CacheTask;)V

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/android/volley/AsyncCache;->a(Ljava/lang/String;Lcom/android/volley/AsyncCache$OnGetCompleteCallback;)V

    goto :goto_4b

    .line 8
    :cond_34
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue$CacheTask;->p:Lcom/android/volley/AsyncRequestQueue;

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->d()Lcom/android/volley/Cache;

    move-result-object v0

    iget-object v1, p0, Lcom/android/volley/RequestTask;->o:Lcom/android/volley/Request;

    invoke-virtual {v1}, Lcom/android/volley/Request;->q()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/volley/Cache;->a(Ljava/lang/String;)Lcom/android/volley/Cache$Entry;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/volley/AsyncRequestQueue$CacheTask;->p:Lcom/android/volley/AsyncRequestQueue;

    iget-object v2, p0, Lcom/android/volley/RequestTask;->o:Lcom/android/volley/Request;

    invoke-static {v1, v0, v2}, Lcom/android/volley/AsyncRequestQueue;->l(Lcom/android/volley/AsyncRequestQueue;Lcom/android/volley/Cache$Entry;Lcom/android/volley/Request;)V

    :goto_4b
    return-void
.end method

###### Class com.android.volley.AsyncRequestQueue.CacheTask.AnonymousClass1 (com.android.volley.AsyncRequestQueue$CacheTask$1)
.class Lcom/android/volley/AsyncRequestQueue$CacheTask$1;
.super Ljava/lang/Object;
.source "AsyncRequestQueue.java"

# interfaces
.implements Lcom/android/volley/AsyncCache$OnGetCompleteCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/AsyncRequestQueue$CacheTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/volley/AsyncRequestQueue$CacheTask;


# direct methods
.method constructor <init>(Lcom/android/volley/AsyncRequestQueue$CacheTask;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/volley/AsyncRequestQueue$CacheTask$1;->a:Lcom/android/volley/AsyncRequestQueue$CacheTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/volley/Cache$Entry;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue$CacheTask$1;->a:Lcom/android/volley/AsyncRequestQueue$CacheTask;

    iget-object v1, v0, Lcom/android/volley/AsyncRequestQueue$CacheTask;->p:Lcom/android/volley/AsyncRequestQueue;

    iget-object v0, v0, Lcom/android/volley/RequestTask;->o:Lcom/android/volley/Request;

    invoke-static {v1, p1, v0}, Lcom/android/volley/AsyncRequestQueue;->l(Lcom/android/volley/AsyncRequestQueue;Lcom/android/volley/Cache$Entry;Lcom/android/volley/Request;)V

    return-void
.end method

###### Class com.android.volley.AsyncRequestQueue.ExecutorFactory (com.android.volley.AsyncRequestQueue$ExecutorFactory)
.class public abstract Lcom/android/volley/AsyncRequestQueue$ExecutorFactory;
.super Ljava/lang/Object;
.source "AsyncRequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/AsyncRequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ExecutorFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.android.volley.AsyncRequestQueue.NetworkParseTask (com.android.volley.AsyncRequestQueue$NetworkParseTask)
.class Lcom/android/volley/AsyncRequestQueue$NetworkParseTask;
.super Lcom/android/volley/RequestTask;
.source "AsyncRequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/AsyncRequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkParseTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/volley/RequestTask<",
        "TT;>;"
    }
.end annotation


# instance fields
.field p:Lcom/android/volley/NetworkResponse;

.field final synthetic q:Lcom/android/volley/AsyncRequestQueue;


# direct methods
.method constructor <init>(Lcom/android/volley/AsyncRequestQueue;Lcom/android/volley/Request;Lcom/android/volley/NetworkResponse;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "TT;>;",
            "Lcom/android/volley/NetworkResponse;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/volley/AsyncRequestQueue$NetworkParseTask;->q:Lcom/android/volley/AsyncRequestQueue;

    .line 2
    invoke-direct {p0, p2}, Lcom/android/volley/RequestTask;-><init>(Lcom/android/volley/Request;)V

    .line 3
    iput-object p3, p0, Lcom/android/volley/AsyncRequestQueue$NetworkParseTask;->p:Lcom/android/volley/NetworkResponse;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/volley/RequestTask;->o:Lcom/android/volley/Request;

    iget-object v1, p0, Lcom/android/volley/AsyncRequestQueue$NetworkParseTask;->p:Lcom/android/volley/NetworkResponse;

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->Y(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/volley/RequestTask;->o:Lcom/android/volley/Request;

    const-string v2, "network-parse-complete"

    invoke-virtual {v1, v2}, Lcom/android/volley/Request;->e(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/android/volley/RequestTask;->o:Lcom/android/volley/Request;

    invoke-virtual {v1}, Lcom/android/volley/Request;->f0()Z

    move-result v1

    if-eqz v1, :cond_49

    iget-object v1, v0, Lcom/android/volley/Response;->b:Lcom/android/volley/Cache$Entry;

    if-eqz v1, :cond_49

    .line 4
    iget-object v1, p0, Lcom/android/volley/AsyncRequestQueue$NetworkParseTask;->q:Lcom/android/volley/AsyncRequestQueue;

    invoke-static {v1}, Lcom/android/volley/AsyncRequestQueue;->j(Lcom/android/volley/AsyncRequestQueue;)Lcom/android/volley/AsyncCache;

    move-result-object v1

    if-eqz v1, :cond_36

    .line 5
    iget-object v1, p0, Lcom/android/volley/AsyncRequestQueue$NetworkParseTask;->q:Lcom/android/volley/AsyncRequestQueue;

    invoke-static {v1}, Lcom/android/volley/AsyncRequestQueue;->k(Lcom/android/volley/AsyncRequestQueue;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/android/volley/AsyncRequestQueue$CachePutTask;

    iget-object v3, p0, Lcom/android/volley/AsyncRequestQueue$NetworkParseTask;->q:Lcom/android/volley/AsyncRequestQueue;

    iget-object v4, p0, Lcom/android/volley/RequestTask;->o:Lcom/android/volley/Request;

    invoke-direct {v2, v3, v4, v0}, Lcom/android/volley/AsyncRequestQueue$CachePutTask;-><init>(Lcom/android/volley/AsyncRequestQueue;Lcom/android/volley/Request;Lcom/android/volley/Response;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_51

    .line 6
    :cond_36
    iget-object v1, p0, Lcom/android/volley/AsyncRequestQueue$NetworkParseTask;->q:Lcom/android/volley/AsyncRequestQueue;

    invoke-static {v1}, Lcom/android/volley/AsyncRequestQueue;->n(Lcom/android/volley/AsyncRequestQueue;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/android/volley/AsyncRequestQueue$CachePutTask;

    iget-object v3, p0, Lcom/android/volley/AsyncRequestQueue$NetworkParseTask;->q:Lcom/android/volley/AsyncRequestQueue;

    iget-object v4, p0, Lcom/android/volley/RequestTask;->o:Lcom/android/volley/Request;

    invoke-direct {v2, v3, v4, v0}, Lcom/android/volley/AsyncRequestQueue$CachePutTask;-><init>(Lcom/android/volley/AsyncRequestQueue;Lcom/android/volley/Request;Lcom/android/volley/Response;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_51

    .line 7
    :cond_49
    iget-object v1, p0, Lcom/android/volley/AsyncRequestQueue$NetworkParseTask;->q:Lcom/android/volley/AsyncRequestQueue;

    iget-object v2, p0, Lcom/android/volley/RequestTask;->o:Lcom/android/volley/Request;

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/android/volley/AsyncRequestQueue;->p(Lcom/android/volley/AsyncRequestQueue;Lcom/android/volley/Request;Lcom/android/volley/Response;Z)V

    :goto_51
    return-void
.end method

###### Class com.android.volley.AsyncRequestQueue.NetworkTask (com.android.volley.AsyncRequestQueue$NetworkTask)
.class Lcom/android/volley/AsyncRequestQueue$NetworkTask;
.super Lcom/android/volley/RequestTask;
.source "AsyncRequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/AsyncRequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/volley/RequestTask<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic p:Lcom/android/volley/AsyncRequestQueue;


# direct methods
.method constructor <init>(Lcom/android/volley/AsyncRequestQueue;Lcom/android/volley/Request;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/volley/AsyncRequestQueue$NetworkTask;->p:Lcom/android/volley/AsyncRequestQueue;

    .line 2
    invoke-direct {p0, p2}, Lcom/android/volley/RequestTask;-><init>(Lcom/android/volley/Request;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/volley/RequestTask;->o:Lcom/android/volley/Request;

    invoke-virtual {v0}, Lcom/android/volley/Request;->T()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2
    iget-object v0, p0, Lcom/android/volley/RequestTask;->o:Lcom/android/volley/Request;

    const-string v1, "network-discard-cancelled"

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->m(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/android/volley/RequestTask;->o:Lcom/android/volley/Request;

    invoke-virtual {v0}, Lcom/android/volley/Request;->V()V

    return-void

    .line 4
    :cond_15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/android/volley/RequestTask;->o:Lcom/android/volley/Request;

    const-string v3, "network-queue-take"

    invoke-virtual {v2, v3}, Lcom/android/volley/Request;->e(Ljava/lang/String;)V

    .line 6
    iget-object v2, p0, Lcom/android/volley/AsyncRequestQueue$NetworkTask;->p:Lcom/android/volley/AsyncRequestQueue;

    invoke-static {v2}, Lcom/android/volley/AsyncRequestQueue;->o(Lcom/android/volley/AsyncRequestQueue;)Lcom/android/volley/AsyncNetwork;

    move-result-object v2

    iget-object v3, p0, Lcom/android/volley/RequestTask;->o:Lcom/android/volley/Request;

    new-instance v4, Lcom/android/volley/AsyncRequestQueue$NetworkTask$1;

    invoke-direct {v4, p0, v0, v1}, Lcom/android/volley/AsyncRequestQueue$NetworkTask$1;-><init>(Lcom/android/volley/AsyncRequestQueue$NetworkTask;J)V

    invoke-virtual {v2, v3, v4}, Lcom/android/volley/AsyncNetwork;->c(Lcom/android/volley/Request;Lcom/android/volley/AsyncNetwork$OnRequestComplete;)V

    return-void
.end method

###### Class com.android.volley.AsyncRequestQueue.NetworkTask.AnonymousClass1 (com.android.volley.AsyncRequestQueue$NetworkTask$1)
.class Lcom/android/volley/AsyncRequestQueue$NetworkTask$1;
.super Ljava/lang/Object;
.source "AsyncRequestQueue.java"

# interfaces
.implements Lcom/android/volley/AsyncNetwork$OnRequestComplete;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/AsyncRequestQueue$NetworkTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/android/volley/AsyncRequestQueue$NetworkTask;


# direct methods
.method constructor <init>(Lcom/android/volley/AsyncRequestQueue$NetworkTask;J)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/android/volley/AsyncRequestQueue$NetworkTask$1;->b:Lcom/android/volley/AsyncRequestQueue$NetworkTask;

    iput-wide p2, p0, Lcom/android/volley/AsyncRequestQueue$NetworkTask$1;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/volley/VolleyError;)V
    .registers 6

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/volley/AsyncRequestQueue$NetworkTask$1;->a:J

    sub-long/2addr v0, v2

    .line 2
    invoke-virtual {p1, v0, v1}, Lcom/android/volley/VolleyError;->a(J)V

    .line 3
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue$NetworkTask$1;->b:Lcom/android/volley/AsyncRequestQueue$NetworkTask;

    iget-object v0, v0, Lcom/android/volley/AsyncRequestQueue$NetworkTask;->p:Lcom/android/volley/AsyncRequestQueue;

    invoke-static {v0}, Lcom/android/volley/AsyncRequestQueue;->n(Lcom/android/volley/AsyncRequestQueue;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/android/volley/AsyncRequestQueue$ParseErrorTask;

    iget-object v2, p0, Lcom/android/volley/AsyncRequestQueue$NetworkTask$1;->b:Lcom/android/volley/AsyncRequestQueue$NetworkTask;

    iget-object v3, v2, Lcom/android/volley/AsyncRequestQueue$NetworkTask;->p:Lcom/android/volley/AsyncRequestQueue;

    iget-object v2, v2, Lcom/android/volley/RequestTask;->o:Lcom/android/volley/Request;

    invoke-direct {v1, v3, v2, p1}, Lcom/android/volley/AsyncRequestQueue$ParseErrorTask;-><init>(Lcom/android/volley/AsyncRequestQueue;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Lcom/android/volley/NetworkResponse;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue$NetworkTask$1;->b:Lcom/android/volley/AsyncRequestQueue$NetworkTask;

    iget-object v0, v0, Lcom/android/volley/RequestTask;->o:Lcom/android/volley/Request;

    const-string v1, "network-http-complete"

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->e(Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p1, Lcom/android/volley/NetworkResponse;->e:Z

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue$NetworkTask$1;->b:Lcom/android/volley/AsyncRequestQueue$NetworkTask;

    iget-object v0, v0, Lcom/android/volley/RequestTask;->o:Lcom/android/volley/Request;

    invoke-virtual {v0}, Lcom/android/volley/Request;->S()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 3
    iget-object p1, p0, Lcom/android/volley/AsyncRequestQueue$NetworkTask$1;->b:Lcom/android/volley/AsyncRequestQueue$NetworkTask;

    iget-object p1, p1, Lcom/android/volley/RequestTask;->o:Lcom/android/volley/Request;

    const-string v0, "not-modified"

    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->m(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/android/volley/AsyncRequestQueue$NetworkTask$1;->b:Lcom/android/volley/AsyncRequestQueue$NetworkTask;

    iget-object p1, p1, Lcom/android/volley/RequestTask;->o:Lcom/android/volley/Request;

    invoke-virtual {p1}, Lcom/android/volley/Request;->V()V

    return-void

    .line 5
    :cond_28
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue$NetworkTask$1;->b:Lcom/android/volley/AsyncRequestQueue$NetworkTask;

    iget-object v0, v0, Lcom/android/volley/AsyncRequestQueue$NetworkTask;->p:Lcom/android/volley/AsyncRequestQueue;

    invoke-static {v0}, Lcom/android/volley/AsyncRequestQueue;->n(Lcom/android/volley/AsyncRequestQueue;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/android/volley/AsyncRequestQueue$NetworkParseTask;

    iget-object v2, p0, Lcom/android/volley/AsyncRequestQueue$NetworkTask$1;->b:Lcom/android/volley/AsyncRequestQueue$NetworkTask;

    iget-object v3, v2, Lcom/android/volley/AsyncRequestQueue$NetworkTask;->p:Lcom/android/volley/AsyncRequestQueue;

    iget-object v2, v2, Lcom/android/volley/RequestTask;->o:Lcom/android/volley/Request;

    invoke-direct {v1, v3, v2, p1}, Lcom/android/volley/AsyncRequestQueue$NetworkParseTask;-><init>(Lcom/android/volley/AsyncRequestQueue;Lcom/android/volley/Request;Lcom/android/volley/NetworkResponse;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.android.volley.AsyncRequestQueue.ParseErrorTask (com.android.volley.AsyncRequestQueue$ParseErrorTask)
.class Lcom/android/volley/AsyncRequestQueue$ParseErrorTask;
.super Lcom/android/volley/RequestTask;
.source "AsyncRequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/AsyncRequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParseErrorTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/volley/RequestTask<",
        "TT;>;"
    }
.end annotation


# instance fields
.field p:Lcom/android/volley/VolleyError;

.field final synthetic q:Lcom/android/volley/AsyncRequestQueue;


# direct methods
.method constructor <init>(Lcom/android/volley/AsyncRequestQueue;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "TT;>;",
            "Lcom/android/volley/VolleyError;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/volley/AsyncRequestQueue$ParseErrorTask;->q:Lcom/android/volley/AsyncRequestQueue;

    .line 2
    invoke-direct {p0, p2}, Lcom/android/volley/RequestTask;-><init>(Lcom/android/volley/Request;)V

    .line 3
    iput-object p3, p0, Lcom/android/volley/AsyncRequestQueue$ParseErrorTask;->p:Lcom/android/volley/VolleyError;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/volley/RequestTask;->o:Lcom/android/volley/Request;

    iget-object v1, p0, Lcom/android/volley/AsyncRequestQueue$ParseErrorTask;->p:Lcom/android/volley/VolleyError;

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->X(Lcom/android/volley/VolleyError;)Lcom/android/volley/VolleyError;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/volley/AsyncRequestQueue$ParseErrorTask;->q:Lcom/android/volley/AsyncRequestQueue;

    invoke-virtual {v1}, Lcom/android/volley/RequestQueue;->e()Lcom/android/volley/ResponseDelivery;

    move-result-object v1

    iget-object v2, p0, Lcom/android/volley/RequestTask;->o:Lcom/android/volley/Request;

    invoke-interface {v1, v2, v0}, Lcom/android/volley/ResponseDelivery;->c(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    .line 3
    iget-object v0, p0, Lcom/android/volley/RequestTask;->o:Lcom/android/volley/Request;

    invoke-virtual {v0}, Lcom/android/volley/Request;->V()V

    return-void
.end method

###### Class com.android.volley.AsyncRequestQueue.ThrowingCache (com.android.volley.AsyncRequestQueue$ThrowingCache)
.class Lcom/android/volley/AsyncRequestQueue$ThrowingCache;
.super Ljava/lang/Object;
.source "AsyncRequestQueue.java"

# interfaces
.implements Lcom/android/volley/Cache;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/AsyncRequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThrowingCache"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/android/volley/Cache$Entry;
    .registers 2

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public b()V
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public c(Ljava/lang/String;Z)V
    .registers 3

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public clear()V
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public d(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V
    .registers 3

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
