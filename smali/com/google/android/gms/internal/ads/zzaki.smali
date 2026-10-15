###### Class com.google.android.gms.internal.ads.zzaki (com.google.android.gms.internal.ads.zzaki)
.class public final Lcom/google/android/gms/internal/ads/zzaki;
.super Ljava/lang/Thread;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final o:Ljava/util/concurrent/BlockingQueue;

.field private final p:Lcom/google/android/gms/internal/ads/zzakh;

.field private final q:Lcom/google/android/gms/internal/ads/zzajy;

.field private volatile r:Z

.field private final s:Lcom/google/android/gms/internal/ads/zzakf;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/ads/zzakh;Lcom/google/android/gms/internal/ads/zzajy;Lcom/google/android/gms/internal/ads/zzakf;[B)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p5, 0x0

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzaki;->r:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaki;->o:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaki;->p:Lcom/google/android/gms/internal/ads/zzakh;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaki;->q:Lcom/google/android/gms/internal/ads/zzajy;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzaki;->s:Lcom/google/android/gms/internal/ads/zzakf;

    return-void
.end method

.method private b()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaki;->o:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzako;

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    const/4 v1, 0x3

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzako;->K(I)V

    const/4 v1, 0x4

    :try_start_10
    const-string v2, "network-queue-take"

    .line 4
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzako;->p(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzako;->N()Z

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzako;->e()I

    move-result v2

    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaki;->p:Lcom/google/android/gms/internal/ads/zzakh;

    .line 7
    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzakh;->a(Lcom/google/android/gms/internal/ads/zzako;)Lcom/google/android/gms/internal/ads/zzakk;

    move-result-object v2

    const-string v3, "network-http-complete"

    .line 8
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzako;->p(Ljava/lang/String;)V

    .line 9
    iget-boolean v3, v2, Lcom/google/android/gms/internal/ads/zzakk;->e:Z

    if-eqz v3, :cond_40

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzako;->M()Z

    move-result v3

    if-eqz v3, :cond_40

    const-string v2, "not-modified"

    .line 10
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzako;->s(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzako;->I()V
    :try_end_3c
    .catch Lcom/google/android/gms/internal/ads/zzakx; {:try_start_10 .. :try_end_3c} :catch_93
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_3c} :catch_6f
    .catchall {:try_start_10 .. :try_end_3c} :catchall_6d

    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzako;->K(I)V

    return-void

    .line 13
    :cond_40
    :try_start_40
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzako;->k(Lcom/google/android/gms/internal/ads/zzakk;)Lcom/google/android/gms/internal/ads/zzaku;

    move-result-object v2

    const-string v3, "network-parse-complete"

    .line 14
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzako;->p(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzaku;->b:Lcom/google/android/gms/internal/ads/zzajx;

    if-eqz v3, :cond_5d

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaki;->q:Lcom/google/android/gms/internal/ads/zzajy;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzako;->m()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzaku;->b:Lcom/google/android/gms/internal/ads/zzajx;

    invoke-interface {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzajy;->q(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzajx;)V

    const-string v3, "network-cache-written"

    .line 16
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzako;->p(Ljava/lang/String;)V

    .line 17
    :cond_5d
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzako;->u()V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaki;->s:Lcom/google/android/gms/internal/ads/zzakf;

    const/4 v4, 0x0

    .line 18
    invoke-virtual {v3, v0, v2, v4}, Lcom/google/android/gms/internal/ads/zzakf;->b(Lcom/google/android/gms/internal/ads/zzako;Lcom/google/android/gms/internal/ads/zzaku;Ljava/lang/Runnable;)V

    .line 19
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzako;->J(Lcom/google/android/gms/internal/ads/zzaku;)V
    :try_end_69
    .catch Lcom/google/android/gms/internal/ads/zzakx; {:try_start_40 .. :try_end_69} :catch_93
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_69} :catch_6f
    .catchall {:try_start_40 .. :try_end_69} :catchall_6d

    .line 20
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzako;->K(I)V

    return-void

    :catchall_6d
    move-exception v2

    goto :goto_a3

    :catch_6f
    move-exception v2

    :try_start_70
    const-string v3, "Unhandled exception %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 21
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzala;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzakx;

    .line 22
    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzakx;-><init>(Ljava/lang/Throwable;)V

    .line 23
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaki;->s:Lcom/google/android/gms/internal/ads/zzakf;

    .line 24
    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzakf;->a(Lcom/google/android/gms/internal/ads/zzako;Lcom/google/android/gms/internal/ads/zzakx;)V

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzako;->I()V
    :try_end_8f
    .catchall {:try_start_70 .. :try_end_8f} :catchall_6d

    .line 26
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzako;->K(I)V

    return-void

    :catch_93
    move-exception v2

    .line 27
    :try_start_94
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaki;->s:Lcom/google/android/gms/internal/ads/zzakf;

    .line 28
    invoke-virtual {v3, v0, v2}, Lcom/google/android/gms/internal/ads/zzakf;->a(Lcom/google/android/gms/internal/ads/zzako;Lcom/google/android/gms/internal/ads/zzakx;)V

    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzako;->I()V
    :try_end_9f
    .catchall {:try_start_94 .. :try_end_9f} :catchall_6d

    .line 30
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzako;->K(I)V

    return-void

    :goto_a3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzako;->K(I)V

    .line 31
    throw v2
.end method


# virtual methods
.method public final a()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaki;->r:Z

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public final run()V
    .registers 3

    const/16 v0, 0xa

    .line 1
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2
    :goto_5
    :try_start_5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaki;->b()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_5

    :catch_9
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaki;->r:Z

    if-eqz v0, :cond_15

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_15
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it"

    .line 4
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzala;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5
.end method
