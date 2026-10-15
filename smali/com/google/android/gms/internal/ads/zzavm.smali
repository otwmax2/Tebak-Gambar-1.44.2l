###### Class com.google.android.gms.internal.ads.zzavm (com.google.android.gms.internal.ads.zzavm)
.class public final Lcom/google/android/gms/internal/ads/zzavm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private a:Ljava/util/concurrent/ScheduledFuture;

.field private final b:Ljava/lang/Runnable;

.field private final c:Ljava/lang/Object;

.field private d:Lcom/google/android/gms/internal/ads/zzavp;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private e:Landroid/content/Context;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private f:Lcom/google/android/gms/internal/ads/zzavs;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzavm;->a:Ljava/util/concurrent/ScheduledFuture;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzavi;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzavi;-><init>(Lcom/google/android/gms/internal/ads/zzavm;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzavm;->b:Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzavm;->c:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic c(Lcom/google/android/gms/internal/ads/zzavm;)Lcom/google/android/gms/internal/ads/zzavp;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzavm;->d:Lcom/google/android/gms/internal/ads/zzavp;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/google/android/gms/internal/ads/zzavm;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzavm;->c:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/google/android/gms/internal/ads/zzavm;Lcom/google/android/gms/internal/ads/zzavp;)V
    .registers 2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavm;->d:Lcom/google/android/gms/internal/ads/zzavp;

    return-void
.end method

.method static bridge synthetic g(Lcom/google/android/gms/internal/ads/zzavm;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzavm;->l()V

    return-void
.end method

.method static bridge synthetic h(Lcom/google/android/gms/internal/ads/zzavm;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavm;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavm;->d:Lcom/google/android/gms/internal/ads/zzavp;

    if-nez v1, :cond_9

    .line 2
    monitor-exit v0

    return-void

    .line 3
    :cond_9
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->a()Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavm;->d:Lcom/google/android/gms/internal/ads/zzavp;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->f()Z

    move-result v1

    if-eqz v1, :cond_1c

    :cond_17
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavm;->d:Lcom/google/android/gms/internal/ads/zzavp;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->i()V

    :cond_1c
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzavm;->d:Lcom/google/android/gms/internal/ads/zzavp;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzavm;->f:Lcom/google/android/gms/internal/ads/zzavs;

    .line 5
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 6
    monitor-exit v0

    return-void

    :catchall_26
    move-exception p0

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw p0
.end method

.method static bridge synthetic k(Lcom/google/android/gms/internal/ads/zzavm;Lcom/google/android/gms/internal/ads/zzavs;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavm;->f:Lcom/google/android/gms/internal/ads/zzavs;

    return-void
.end method

.method private final l()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavm;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavm;->e:Landroid/content/Context;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavm;->d:Lcom/google/android/gms/internal/ads/zzavp;

    if-eqz v1, :cond_c

    goto :goto_21

    .line 2
    :cond_c
    new-instance v1, Lcom/google/android/gms/internal/ads/zzavk;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzavk;-><init>(Lcom/google/android/gms/internal/ads/zzavm;)V

    .line 3
    new-instance v2, Lcom/google/android/gms/internal/ads/zzavl;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzavl;-><init>(Lcom/google/android/gms/internal/ads/zzavm;)V

    .line 4
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzavm;->d(Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;)Lcom/google/android/gms/internal/ads/zzavp;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzavm;->d:Lcom/google/android/gms/internal/ads/zzavp;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->v()V

    .line 6
    monitor-exit v0

    return-void

    .line 7
    :cond_21
    :goto_21
    monitor-exit v0

    return-void

    :catchall_23
    move-exception v1

    .line 8
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzavq;)J
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavm;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavm;->f:Lcom/google/android/gms/internal/ads/zzavs;

    const-wide/16 v2, -0x2

    if-nez v1, :cond_b

    .line 2
    monitor-exit v0

    return-wide v2

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavm;->d:Lcom/google/android/gms/internal/ads/zzavp;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzavp;->o0()Z

    move-result v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_23

    if-eqz v1, :cond_21

    :try_start_13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavm;->f:Lcom/google/android/gms/internal/ads/zzavs;

    .line 4
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzavs;->A9(Lcom/google/android/gms/internal/ads/zzavq;)J

    move-result-wide v1
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_19} :catch_1b
    .catchall {:try_start_13 .. :try_end_19} :catchall_23

    :try_start_19
    monitor-exit v0

    return-wide v1

    :catch_1b
    move-exception p1

    const-string v1, "Unable to call into cache service."

    .line 5
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    :cond_21
    monitor-exit v0

    return-wide v2

    :catchall_23
    move-exception p1

    .line 7
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_23

    throw p1
.end method

.method public final b(Lcom/google/android/gms/internal/ads/zzavq;)Lcom/google/android/gms/internal/ads/zzavn;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavm;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavm;->f:Lcom/google/android/gms/internal/ads/zzavs;

    if-nez v1, :cond_e

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzavn;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzavn;-><init>()V

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_33

    return-object p1

    :cond_e
    :try_start_e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavm;->d:Lcom/google/android/gms/internal/ads/zzavp;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzavp;->o0()Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavm;->f:Lcom/google/android/gms/internal/ads/zzavs;

    .line 4
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzavs;->Sa(Lcom/google/android/gms/internal/ads/zzavq;)Lcom/google/android/gms/internal/ads/zzavn;

    move-result-object p1
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1c} :catch_26
    .catchall {:try_start_e .. :try_end_1c} :catchall_33

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_33

    return-object p1

    :cond_1e
    :try_start_1e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavm;->f:Lcom/google/android/gms/internal/ads/zzavs;

    .line 5
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzavs;->Ra(Lcom/google/android/gms/internal/ads/zzavq;)Lcom/google/android/gms/internal/ads/zzavn;

    move-result-object p1
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_24} :catch_26
    .catchall {:try_start_1e .. :try_end_24} :catchall_33

    :try_start_24
    monitor-exit v0

    return-object p1

    :catch_26
    move-exception p1

    const-string v1, "Unable to call into cache service."

    .line 6
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    new-instance p1, Lcom/google/android/gms/internal/ads/zzavn;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzavn;-><init>()V

    monitor-exit v0

    return-object p1

    :catchall_33
    move-exception p1

    .line 8
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_24 .. :try_end_35} :catchall_33

    throw p1
.end method

.method protected final declared-synchronized d(Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;)Lcom/google/android/gms/internal/ads/zzavp;
    .registers 6
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzavp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavm;->e:Landroid/content/Context;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->v()Lcom/google/android/gms/ads/internal/util/zzbv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/util/zzbv;->b()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzavp;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object v0

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final i(Landroid/content/Context;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 1
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavm;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavm;->e:Landroid/content/Context;

    if-eqz v1, :cond_c

    .line 2
    monitor-exit v0

    return-void

    .line 3
    :cond_c
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavm;->e:Landroid/content/Context;

    .line 4
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbar;->M3:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_28

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzavm;->l()V

    goto :goto_46

    .line 8
    :cond_28
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbar;->L3:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_46

    new-instance p1, Lcom/google/android/gms/internal/ads/zzavj;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzavj;-><init>(Lcom/google/android/gms/internal/ads/zzavm;)V

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->d()Lcom/google/android/gms/internal/ads/zzatz;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzatz;->c(Lcom/google/android/gms/internal/ads/zzaty;)V

    .line 12
    :cond_46
    :goto_46
    monitor-exit v0

    return-void

    :catchall_48
    move-exception p1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_6 .. :try_end_4a} :catchall_48

    throw p1
.end method

.method public final j()V
    .registers 7

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->N3:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavm;->c:Ljava/lang/Object;

    .line 4
    monitor-enter v0

    .line 5
    :try_start_15
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzavm;->l()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavm;->a:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_20

    const/4 v2, 0x0

    .line 6
    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 7
    :cond_20
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbzn;->d:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzavm;->b:Ljava/lang/Runnable;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbar;->O3:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v3

    .line 9
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 10
    invoke-interface {v1, v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzavm;->a:Ljava/util/concurrent/ScheduledFuture;

    .line 11
    monitor-exit v0

    return-void

    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_15 .. :try_end_40} :catchall_3e

    throw v1

    :cond_41
    return-void
.end method
