###### Class com.google.android.gms.internal.ads.zzakr (com.google.android.gms.internal.ads.zzakr)
.class public final Lcom/google/android/gms/internal/ads/zzakr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final b:Ljava/util/Set;

.field private final c:Ljava/util/concurrent/PriorityBlockingQueue;

.field private final d:Ljava/util/concurrent/PriorityBlockingQueue;

.field private final e:Lcom/google/android/gms/internal/ads/zzajy;

.field private final f:Lcom/google/android/gms/internal/ads/zzakh;

.field private final g:[Lcom/google/android/gms/internal/ads/zzaki;

.field private h:Lcom/google/android/gms/internal/ads/zzaka;

.field private final i:Ljava/util/List;

.field private final j:Ljava/util/List;

.field private final k:Lcom/google/android/gms/internal/ads/zzakf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzajy;Lcom/google/android/gms/internal/ads/zzakh;I)V
    .registers 6

    .line 1
    new-instance p3, Lcom/google/android/gms/internal/ads/zzakf;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p3, v0}, Lcom/google/android/gms/internal/ads/zzakf;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzakr;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/HashSet;

    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzakr;->b:Ljava/util/Set;

    .line 4
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzakr;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    .line 5
    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzakr;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzakr;->i:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzakr;->j:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakr;->e:Lcom/google/android/gms/internal/ads/zzajy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzakr;->f:Lcom/google/android/gms/internal/ads/zzakh;

    const/4 p1, 0x4

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzaki;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakr;->g:[Lcom/google/android/gms/internal/ads/zzaki;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzakr;->k:Lcom/google/android/gms/internal/ads/zzakf;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzako;)Lcom/google/android/gms/internal/ads/zzako;
    .registers 4

    .line 1
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzako;->i(Lcom/google/android/gms/internal/ads/zzakr;)Lcom/google/android/gms/internal/ads/zzako;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakr;->b:Ljava/util/Set;

    monitor-enter v0

    :try_start_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzakr;->b:Ljava/util/Set;

    .line 2
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_24

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakr;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzako;->j(I)Lcom/google/android/gms/internal/ads/zzako;

    const-string v0, "add-to-queue"

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzako;->p(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzakr;->c(Lcom/google/android/gms/internal/ads/zzako;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakr;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 8
    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    return-object p1

    :catchall_24
    move-exception p1

    .line 9
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p1
.end method

.method final b(Lcom/google/android/gms/internal/ads/zzako;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakr;->b:Ljava/util/Set;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzakr;->b:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_2b

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzakr;->i:Ljava/util/List;

    monitor-enter v1

    :try_start_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakr;->i:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzakq;

    .line 4
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzakq;->zza()V

    goto :goto_12

    .line 5
    :cond_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_28

    const/4 v0, 0x5

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzakr;->c(Lcom/google/android/gms/internal/ads/zzako;I)V

    return-void

    :catchall_28
    move-exception p1

    .line 7
    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw p1

    :catchall_2b
    move-exception p1

    .line 8
    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    goto :goto_2f

    :goto_2e
    throw p1

    :goto_2f
    goto :goto_2e
.end method

.method final c(Lcom/google/android/gms/internal/ads/zzako;I)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzakr;->j:Ljava/util/List;

    monitor-enter p1

    :try_start_3
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzakr;->j:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzakp;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzakp;->zza()V

    goto :goto_9

    .line 3
    :cond_19
    monitor-exit p1

    return-void

    :catchall_1b
    move-exception p2

    monitor-exit p1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    goto :goto_1f

    :goto_1e
    throw p2

    :goto_1f
    goto :goto_1e
.end method

.method public final d()V
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakr;->h:Lcom/google/android/gms/internal/ads/zzaka;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaka;->b()V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakr;->g:[Lcom/google/android/gms/internal/ads/zzaki;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_b
    const/4 v3, 0x4

    if-ge v2, v3, :cond_18

    aget-object v3, v0, v2

    if-eqz v3, :cond_15

    .line 2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaki;->a()V

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 3
    :cond_18
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaka;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzakr;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzakr;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzakr;->e:Lcom/google/android/gms/internal/ads/zzajy;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzakr;->k:Lcom/google/android/gms/internal/ads/zzakf;

    const/4 v9, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzaka;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/ads/zzajy;Lcom/google/android/gms/internal/ads/zzakf;[B)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzakr;->h:Lcom/google/android/gms/internal/ads/zzaka;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_2c
    if-ge v1, v3, :cond_47

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaki;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzakr;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzakr;->f:Lcom/google/android/gms/internal/ads/zzakh;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzakr;->e:Lcom/google/android/gms/internal/ads/zzajy;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzakr;->k:Lcom/google/android/gms/internal/ads/zzakf;

    const/4 v9, 0x0

    move-object v4, v0

    .line 5
    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzaki;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/ads/zzakh;Lcom/google/android/gms/internal/ads/zzajy;Lcom/google/android/gms/internal/ads/zzakf;[B)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzakr;->g:[Lcom/google/android/gms/internal/ads/zzaki;

    aput-object v0, v2, v1

    .line 6
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    :cond_47
    return-void
.end method
