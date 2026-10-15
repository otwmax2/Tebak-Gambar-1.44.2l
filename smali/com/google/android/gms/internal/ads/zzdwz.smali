###### Class com.google.android.gms.internal.ads.zzdwz (com.google.android.gms.internal.ads.zzdwz)
.class public abstract Lcom/google/android/gms/internal/ads/zzdwz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;


# instance fields
.field protected final o:Lcom/google/android/gms/internal/ads/zzbzs;

.field protected p:Z

.field protected q:Z

.field protected r:Lcom/google/android/gms/internal/ads/zzbsq;

.field protected s:Landroid/content/Context;

.field protected t:Landroid/os/Looper;

.field protected u:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbzs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbzs;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwz;->o:Lcom/google/android/gms/internal/ads/zzbzs;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdwz;->p:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdwz;->q:Z

    return-void
.end method


# virtual methods
.method public P0(I)V
    .registers 6

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "Remote ad service connection suspended, cause: %d."

    invoke-static {v0, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwz;->o:Lcom/google/android/gms/internal/ads/zzbzs;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdvi;

    .line 3
    invoke-direct {v2, v1, p1}, Lcom/google/android/gms/internal/ads/zzdvi;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzbzs;->d(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final X0(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 6

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->V3()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "Remote ad service connection failed, cause: %d."

    .line 2
    invoke-static {v0, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwz;->o:Lcom/google/android/gms/internal/ads/zzbzs;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdvi;

    .line 4
    invoke-direct {v2, v1, p1}, Lcom/google/android/gms/internal/ads/zzdvi;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzbzs;->d(Ljava/lang/Throwable;)Z

    return-void
.end method

.method protected final declared-synchronized a()V
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwz;->r:Lcom/google/android/gms/internal/ads/zzbsq;

    if-nez v0, :cond_10

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbsq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdwz;->s:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdwz;->t:Landroid/os/Looper;

    invoke-direct {v0, v1, v2, p0, p0}, Lcom/google/android/gms/internal/ads/zzbsq;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwz;->r:Lcom/google/android/gms/internal/ads/zzbsq;

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwz;->r:Lcom/google/android/gms/internal/ads/zzbsq;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->v()V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    monitor-exit p0

    return-void

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized b()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdwz;->q:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwz;->r:Lcom/google/android/gms/internal/ads/zzbsq;
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_22

    if-nez v0, :cond_a

    monitor-exit p0

    return-void

    :cond_a
    :try_start_a
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->a()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwz;->r:Lcom/google/android/gms/internal/ads/zzbsq;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->f()Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwz;->r:Lcom/google/android/gms/internal/ads/zzbsq;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->i()V

    .line 3
    :cond_1d
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_22

    monitor-exit p0

    return-void

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method
