###### Class com.google.android.gms.internal.ads.zzaka (com.google.android.gms.internal.ads.zzaka)
.class public final Lcom/google/android/gms/internal/ads/zzaka;
.super Ljava/lang/Thread;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static final u:Z


# instance fields
.field private final o:Ljava/util/concurrent/BlockingQueue;

.field private final p:Ljava/util/concurrent/BlockingQueue;

.field private final q:Lcom/google/android/gms/internal/ads/zzajy;

.field private volatile r:Z

.field private final s:Lcom/google/android/gms/internal/ads/zzalb;

.field private final t:Lcom/google/android/gms/internal/ads/zzakf;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzala;->b:Z

    sput-boolean v0, Lcom/google/android/gms/internal/ads/zzaka;->u:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/ads/zzajy;Lcom/google/android/gms/internal/ads/zzakf;[B)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p5, 0x0

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzaka;->r:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaka;->o:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaka;->p:Ljava/util/concurrent/BlockingQueue;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaka;->q:Lcom/google/android/gms/internal/ads/zzajy;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzaka;->t:Lcom/google/android/gms/internal/ads/zzakf;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzalb;

    const/4 p3, 0x0

    .line 2
    invoke-direct {p1, p0, p2, p4, p3}, Lcom/google/android/gms/internal/ads/zzalb;-><init>(Lcom/google/android/gms/internal/ads/zzaka;Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/ads/zzakf;[B)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaka;->s:Lcom/google/android/gms/internal/ads/zzalb;

    return-void
.end method

.method static bridge synthetic a(Lcom/google/android/gms/internal/ads/zzaka;)Ljava/util/concurrent/BlockingQueue;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaka;->p:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method private c()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaka;->o:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzako;

    const-string v1, "cache-queue-take"

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzako;->p(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzako;->K(I)V

    const/4 v2, 0x2

    .line 4
    :try_start_12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzako;->N()Z

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaka;->q:Lcom/google/android/gms/internal/ads/zzajy;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzako;->m()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zzajy;->o(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzajx;

    move-result-object v3

    if-nez v3, :cond_37

    const-string v1, "cache-miss"

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzako;->p(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaka;->s:Lcom/google/android/gms/internal/ads/zzalb;

    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzalb;->c(Lcom/google/android/gms/internal/ads/zzako;)Z

    move-result v1

    if-nez v1, :cond_33

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaka;->p:Ljava/util/concurrent/BlockingQueue;

    .line 8
    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_33
    .catchall {:try_start_12 .. :try_end_33} :catchall_cc

    .line 9
    :cond_33
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzako;->K(I)V

    return-void

    .line 10
    :cond_37
    :try_start_37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzajx;->a(J)Z

    move-result v6

    if-eqz v6, :cond_5a

    const-string v1, "cache-hit-expired"

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzako;->p(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzako;->g(Lcom/google/android/gms/internal/ads/zzajx;)Lcom/google/android/gms/internal/ads/zzako;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaka;->s:Lcom/google/android/gms/internal/ads/zzalb;

    .line 13
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzalb;->c(Lcom/google/android/gms/internal/ads/zzako;)Z

    move-result v1

    if-nez v1, :cond_56

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaka;->p:Ljava/util/concurrent/BlockingQueue;

    .line 14
    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_56
    .catchall {:try_start_37 .. :try_end_56} :catchall_cc

    .line 15
    :cond_56
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzako;->K(I)V

    return-void

    :cond_5a
    :try_start_5a
    const-string v6, "cache-hit"

    .line 16
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzako;->p(Ljava/lang/String;)V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzakk;

    iget-object v7, v3, Lcom/google/android/gms/internal/ads/zzajx;->a:[B

    iget-object v8, v3, Lcom/google/android/gms/internal/ads/zzajx;->g:Ljava/util/Map;

    .line 17
    invoke-direct {v6, v7, v8}, Lcom/google/android/gms/internal/ads/zzakk;-><init>([BLjava/util/Map;)V

    .line 18
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzako;->k(Lcom/google/android/gms/internal/ads/zzakk;)Lcom/google/android/gms/internal/ads/zzaku;

    move-result-object v6

    const-string v7, "cache-hit-parsed"

    .line 19
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzako;->p(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzaku;->c()Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_9a

    const-string v3, "cache-parsing-failed"

    .line 20
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzako;->p(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaka;->q:Lcom/google/android/gms/internal/ads/zzajy;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzako;->m()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Lcom/google/android/gms/internal/ads/zzajy;->p(Ljava/lang/String;Z)V

    .line 22
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzako;->g(Lcom/google/android/gms/internal/ads/zzajx;)Lcom/google/android/gms/internal/ads/zzako;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaka;->s:Lcom/google/android/gms/internal/ads/zzalb;

    .line 23
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzalb;->c(Lcom/google/android/gms/internal/ads/zzako;)Z

    move-result v1

    if-nez v1, :cond_96

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaka;->p:Ljava/util/concurrent/BlockingQueue;

    .line 24
    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_96
    .catchall {:try_start_5a .. :try_end_96} :catchall_cc

    .line 25
    :cond_96
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzako;->K(I)V

    return-void

    :cond_9a
    :try_start_9a
    iget-wide v9, v3, Lcom/google/android/gms/internal/ads/zzajx;->f:J

    cmp-long v7, v9, v4

    if-gez v7, :cond_c3

    const-string v4, "cache-hit-refresh-needed"

    .line 26
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzako;->p(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzako;->g(Lcom/google/android/gms/internal/ads/zzajx;)Lcom/google/android/gms/internal/ads/zzako;

    iput-boolean v1, v6, Lcom/google/android/gms/internal/ads/zzaku;->d:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaka;->s:Lcom/google/android/gms/internal/ads/zzalb;

    .line 28
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzalb;->c(Lcom/google/android/gms/internal/ads/zzako;)Z

    move-result v1

    if-nez v1, :cond_bd

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaka;->t:Lcom/google/android/gms/internal/ads/zzakf;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzajz;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/ads/zzajz;-><init>(Lcom/google/android/gms/internal/ads/zzaka;Lcom/google/android/gms/internal/ads/zzako;)V

    .line 29
    invoke-virtual {v1, v0, v6, v3}, Lcom/google/android/gms/internal/ads/zzakf;->b(Lcom/google/android/gms/internal/ads/zzako;Lcom/google/android/gms/internal/ads/zzaku;Ljava/lang/Runnable;)V

    goto :goto_c8

    .line 30
    :cond_bd
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaka;->t:Lcom/google/android/gms/internal/ads/zzakf;

    .line 31
    invoke-virtual {v1, v0, v6, v8}, Lcom/google/android/gms/internal/ads/zzakf;->b(Lcom/google/android/gms/internal/ads/zzako;Lcom/google/android/gms/internal/ads/zzaku;Ljava/lang/Runnable;)V

    goto :goto_c8

    :cond_c3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaka;->t:Lcom/google/android/gms/internal/ads/zzakf;

    .line 32
    invoke-virtual {v1, v0, v6, v8}, Lcom/google/android/gms/internal/ads/zzakf;->b(Lcom/google/android/gms/internal/ads/zzako;Lcom/google/android/gms/internal/ads/zzaku;Ljava/lang/Runnable;)V
    :try_end_c8
    .catchall {:try_start_9a .. :try_end_c8} :catchall_cc

    .line 33
    :goto_c8
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzako;->K(I)V

    return-void

    :catchall_cc
    move-exception v1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzako;->K(I)V

    .line 34
    throw v1
.end method


# virtual methods
.method public final b()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaka;->r:Z

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public final run()V
    .registers 4

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzaka;->u:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "start new dispatcher"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzala;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    const/16 v0, 0xa

    .line 2
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaka;->q:Lcom/google/android/gms/internal/ads/zzajy;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzajy;->zzb()V

    .line 4
    :goto_16
    :try_start_16
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaka;->c()V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_16

    :catch_1a
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaka;->r:Z

    if-eqz v0, :cond_26

    .line 5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_26
    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it"

    .line 6
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzala;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_16
.end method
