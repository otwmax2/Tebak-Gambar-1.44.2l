###### Class com.android.volley.CacheDispatcher (com.android.volley.CacheDispatcher)
.class public Lcom/android/volley/CacheDispatcher;
.super Ljava/lang/Thread;
.source "CacheDispatcher.java"


# static fields
.field private static final u:Z


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

.field private final p:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/android/volley/Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final q:Lcom/android/volley/Cache;

.field private final r:Lcom/android/volley/ResponseDelivery;

.field private volatile s:Z

.field private final t:Lcom/android/volley/WaitingRequestManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-boolean v0, Lcom/android/volley/VolleyLog;->b:Z

    sput-boolean v0, Lcom/android/volley/CacheDispatcher;->u:Z

    return-void
.end method

.method static synthetic a(Lcom/android/volley/CacheDispatcher;)Ljava/util/concurrent/BlockingQueue;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/volley/CacheDispatcher;->p:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method private b()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/volley/CacheDispatcher;->o:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/Request;

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/volley/CacheDispatcher;->c(Lcom/android/volley/Request;)V

    return-void
.end method


# virtual methods
.method c(Lcom/android/volley/Request;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "cache-queue-take"

    .line 1
    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->e(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->Z(I)V

    const/4 v1, 0x2

    .line 3
    :try_start_a
    invoke-virtual {p1}, Lcom/android/volley/Request;->T()Z

    move-result v2

    if-eqz v2, :cond_19

    const-string v0, "cache-discard-canceled"

    .line 4
    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->m(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_d0

    .line 5
    invoke-virtual {p1, v1}, Lcom/android/volley/Request;->Z(I)V

    return-void

    .line 6
    :cond_19
    :try_start_19
    iget-object v2, p0, Lcom/android/volley/CacheDispatcher;->q:Lcom/android/volley/Cache;

    invoke-virtual {p1}, Lcom/android/volley/Request;->q()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/volley/Cache;->a(Ljava/lang/String;)Lcom/android/volley/Cache$Entry;

    move-result-object v2

    if-nez v2, :cond_3b

    const-string v0, "cache-miss"

    .line 7
    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->e(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/android/volley/CacheDispatcher;->t:Lcom/android/volley/WaitingRequestManager;

    invoke-virtual {v0, p1}, Lcom/android/volley/WaitingRequestManager;->c(Lcom/android/volley/Request;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 9
    iget-object v0, p0, Lcom/android/volley/CacheDispatcher;->p:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_37
    .catchall {:try_start_19 .. :try_end_37} :catchall_d0

    .line 10
    :cond_37
    invoke-virtual {p1, v1}, Lcom/android/volley/Request;->Z(I)V

    return-void

    .line 11
    :cond_3b
    :try_start_3b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 12
    invoke-virtual {v2, v3, v4}, Lcom/android/volley/Cache$Entry;->b(J)Z

    move-result v5

    if-eqz v5, :cond_5e

    const-string v0, "cache-hit-expired"

    .line 13
    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->e(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1, v2}, Lcom/android/volley/Request;->a0(Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Request;

    .line 15
    iget-object v0, p0, Lcom/android/volley/CacheDispatcher;->t:Lcom/android/volley/WaitingRequestManager;

    invoke-virtual {v0, p1}, Lcom/android/volley/WaitingRequestManager;->c(Lcom/android/volley/Request;)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 16
    iget-object v0, p0, Lcom/android/volley/CacheDispatcher;->p:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_5a
    .catchall {:try_start_3b .. :try_end_5a} :catchall_d0

    .line 17
    :cond_5a
    invoke-virtual {p1, v1}, Lcom/android/volley/Request;->Z(I)V

    return-void

    :cond_5e
    :try_start_5e
    const-string v5, "cache-hit"

    .line 18
    invoke-virtual {p1, v5}, Lcom/android/volley/Request;->e(Ljava/lang/String;)V

    .line 19
    new-instance v5, Lcom/android/volley/NetworkResponse;

    iget-object v6, v2, Lcom/android/volley/Cache$Entry;->a:[B

    iget-object v7, v2, Lcom/android/volley/Cache$Entry;->g:Ljava/util/Map;

    invoke-direct {v5, v6, v7}, Lcom/android/volley/NetworkResponse;-><init>([BLjava/util/Map;)V

    .line 20
    invoke-virtual {p1, v5}, Lcom/android/volley/Request;->Y(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;

    move-result-object v5

    const-string v6, "cache-hit-parsed"

    .line 21
    invoke-virtual {p1, v6}, Lcom/android/volley/Request;->e(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v5}, Lcom/android/volley/Response;->b()Z

    move-result v6

    if-nez v6, :cond_9e

    const-string v2, "cache-parsing-failed"

    .line 23
    invoke-virtual {p1, v2}, Lcom/android/volley/Request;->e(Ljava/lang/String;)V

    .line 24
    iget-object v2, p0, Lcom/android/volley/CacheDispatcher;->q:Lcom/android/volley/Cache;

    invoke-virtual {p1}, Lcom/android/volley/Request;->q()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/android/volley/Cache;->c(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    .line 25
    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->a0(Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Request;

    .line 26
    iget-object v0, p0, Lcom/android/volley/CacheDispatcher;->t:Lcom/android/volley/WaitingRequestManager;

    invoke-virtual {v0, p1}, Lcom/android/volley/WaitingRequestManager;->c(Lcom/android/volley/Request;)Z

    move-result v0

    if-nez v0, :cond_9a

    .line 27
    iget-object v0, p0, Lcom/android/volley/CacheDispatcher;->p:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_9a
    .catchall {:try_start_5e .. :try_end_9a} :catchall_d0

    .line 28
    :cond_9a
    invoke-virtual {p1, v1}, Lcom/android/volley/Request;->Z(I)V

    return-void

    .line 29
    :cond_9e
    :try_start_9e
    invoke-virtual {v2, v3, v4}, Lcom/android/volley/Cache$Entry;->c(J)Z

    move-result v3

    if-nez v3, :cond_aa

    .line 30
    iget-object v0, p0, Lcom/android/volley/CacheDispatcher;->r:Lcom/android/volley/ResponseDelivery;

    invoke-interface {v0, p1, v5}, Lcom/android/volley/ResponseDelivery;->a(Lcom/android/volley/Request;Lcom/android/volley/Response;)V

    goto :goto_cc

    :cond_aa
    const-string v3, "cache-hit-refresh-needed"

    .line 31
    invoke-virtual {p1, v3}, Lcom/android/volley/Request;->e(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1, v2}, Lcom/android/volley/Request;->a0(Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Request;

    .line 33
    iput-boolean v0, v5, Lcom/android/volley/Response;->d:Z

    .line 34
    iget-object v0, p0, Lcom/android/volley/CacheDispatcher;->t:Lcom/android/volley/WaitingRequestManager;

    invoke-virtual {v0, p1}, Lcom/android/volley/WaitingRequestManager;->c(Lcom/android/volley/Request;)Z

    move-result v0

    if-nez v0, :cond_c7

    .line 35
    iget-object v0, p0, Lcom/android/volley/CacheDispatcher;->r:Lcom/android/volley/ResponseDelivery;

    new-instance v2, Lcom/android/volley/CacheDispatcher$1;

    invoke-direct {v2, p0, p1}, Lcom/android/volley/CacheDispatcher$1;-><init>(Lcom/android/volley/CacheDispatcher;Lcom/android/volley/Request;)V

    invoke-interface {v0, p1, v5, v2}, Lcom/android/volley/ResponseDelivery;->b(Lcom/android/volley/Request;Lcom/android/volley/Response;Ljava/lang/Runnable;)V

    goto :goto_cc

    .line 36
    :cond_c7
    iget-object v0, p0, Lcom/android/volley/CacheDispatcher;->r:Lcom/android/volley/ResponseDelivery;

    invoke-interface {v0, p1, v5}, Lcom/android/volley/ResponseDelivery;->a(Lcom/android/volley/Request;Lcom/android/volley/Response;)V
    :try_end_cc
    .catchall {:try_start_9e .. :try_end_cc} :catchall_d0

    .line 37
    :goto_cc
    invoke-virtual {p1, v1}, Lcom/android/volley/Request;->Z(I)V

    return-void

    :catchall_d0
    move-exception v0

    invoke-virtual {p1, v1}, Lcom/android/volley/Request;->Z(I)V

    throw v0
.end method

.method public d()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/volley/CacheDispatcher;->s:Z

    .line 2
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public run()V
    .registers 4

    .line 1
    sget-boolean v0, Lcom/android/volley/CacheDispatcher;->u:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "start new dispatcher"

    invoke-static {v2, v0}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    const/16 v0, 0xa

    .line 2
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 3
    iget-object v0, p0, Lcom/android/volley/CacheDispatcher;->q:Lcom/android/volley/Cache;

    invoke-interface {v0}, Lcom/android/volley/Cache;->b()V

    .line 4
    :goto_16
    :try_start_16
    invoke-direct {p0}, Lcom/android/volley/CacheDispatcher;->b()V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_16

    .line 5
    :catch_1a
    iget-boolean v0, p0, Lcom/android/volley/CacheDispatcher;->s:Z

    if-eqz v0, :cond_26

    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_26
    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it"

    .line 7
    invoke-static {v2, v0}, Lcom/android/volley/VolleyLog;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_16
.end method

###### Class com.android.volley.CacheDispatcher.AnonymousClass1 (com.android.volley.CacheDispatcher$1)
.class Lcom/android/volley/CacheDispatcher$1;
.super Ljava/lang/Object;
.source "CacheDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/CacheDispatcher;->c(Lcom/android/volley/Request;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/android/volley/Request;

.field final synthetic p:Lcom/android/volley/CacheDispatcher;


# direct methods
.method constructor <init>(Lcom/android/volley/CacheDispatcher;Lcom/android/volley/Request;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/volley/CacheDispatcher$1;->p:Lcom/android/volley/CacheDispatcher;

    iput-object p2, p0, Lcom/android/volley/CacheDispatcher$1;->o:Lcom/android/volley/Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/volley/CacheDispatcher$1;->p:Lcom/android/volley/CacheDispatcher;

    invoke-static {v0}, Lcom/android/volley/CacheDispatcher;->a(Lcom/android/volley/CacheDispatcher;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/android/volley/CacheDispatcher$1;->o:Lcom/android/volley/Request;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_13

    .line 2
    :catch_c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_13
    return-void
.end method
