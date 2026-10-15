###### Class com.google.android.gms.internal.ads.zzfib (com.google.android.gms.internal.ads.zzfib)
.class final Lcom/google/android/gms/internal/ads/zzfib;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;


# instance fields
.field private final o:Lcom/google/android/gms/internal/ads/zzfiw;

.field private final p:Lcom/google/android/gms/internal/ads/zzfiq;

.field private final q:Ljava/lang/Object;

.field private r:Z

.field private s:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzfiq;)V
    .registers 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfib;->q:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfib;->r:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfib;->s:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfib;->p:Lcom/google/android/gms/internal/ads/zzfiq;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzfiw;

    const v6, 0xc35000

    move-object v1, p3

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfiw;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;I)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfib;->o:Lcom/google/android/gms/internal/ads/zzfiw;

    return-void
.end method

.method private final b()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfib;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfib;->o:Lcom/google/android/gms/internal/ads/zzfiw;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->a()Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfib;->o:Lcom/google/android/gms/internal/ads/zzfiw;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->f()Z

    move-result v1

    if-eqz v1, :cond_18

    :cond_13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfib;->o:Lcom/google/android/gms/internal/ads/zzfiw;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->i()V

    .line 3
    :cond_18
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method


# virtual methods
.method public final P0(I)V
    .registers 2

    return-void
.end method

.method public final X0(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 2

    return-void
.end method

.method final a()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfib;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzfib;->r:Z

    if-nez v1, :cond_f

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzfib;->r:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfib;->o:Lcom/google/android/gms/internal/ads/zzfiw;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->v()V

    .line 2
    :cond_f
    monitor-exit v0

    return-void

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public final t1(Landroid/os/Bundle;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfib;->q:Ljava/lang/Object;

    monitor-enter p1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfib;->s:Z

    if-eqz v0, :cond_9

    monitor-exit p1

    return-void

    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfib;->s:Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_2b

    :try_start_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfib;->o:Lcom/google/android/gms/internal/ads/zzfiw;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfiw;->o0()Lcom/google/android/gms/internal/ads/zzfjb;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfiu;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfib;->p:Lcom/google/android/gms/internal/ads/zzfiq;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgon;->t()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzfiu;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfjb;->Sa(Lcom/google/android/gms/internal/ads/zzfiu;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_20} :catch_20
    .catchall {:try_start_c .. :try_end_20} :catchall_24

    .line 4
    :catch_20
    :try_start_20
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfib;->b()V

    goto :goto_29

    :catchall_24
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfib;->b()V

    .line 5
    throw v0

    .line 6
    :goto_29
    monitor-exit p1

    return-void

    :catchall_2b
    move-exception v0

    monitor-exit p1
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_2b

    throw v0
.end method
