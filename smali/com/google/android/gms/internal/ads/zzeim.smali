###### Class com.google.android.gms.internal.ads.zzeim (com.google.android.gms.internal.ads.zzeim)
.class public final Lcom/google/android/gms/internal/ads/zzeim;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzeir;

.field private final b:Ljava/lang/String;

.field private c:Lcom/google/android/gms/ads/internal/client/zzdn;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzeir;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeim;->a:Lcom/google/android/gms/internal/ads/zzeir;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeim;->b:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic c(Lcom/google/android/gms/internal/ads/zzeim;Lcom/google/android/gms/ads/internal/client/zzdn;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeim;->c:Lcom/google/android/gms/ads/internal/client/zzdn;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Ljava/lang/String;
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeim;->c:Lcom/google/android/gms/ads/internal/client/zzdn;

    if-eqz v1, :cond_a

    invoke-interface {v1}, Lcom/google/android/gms/ads/internal/client/zzdn;->e()Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_a} :catch_e
    .catchall {:try_start_2 .. :try_end_a} :catchall_c

    :cond_a
    monitor-exit p0

    return-object v0

    :catchall_c
    move-exception v0

    goto :goto_16

    :catch_e
    move-exception v1

    :try_start_f
    const-string v2, "#007 Could not call remote method."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbza;->i(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_c

    monitor-exit p0

    return-object v0

    :goto_16
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Ljava/lang/String;
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeim;->c:Lcom/google/android/gms/ads/internal/client/zzdn;

    if-eqz v1, :cond_a

    invoke-interface {v1}, Lcom/google/android/gms/ads/internal/client/zzdn;->e()Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_a} :catch_e
    .catchall {:try_start_2 .. :try_end_a} :catchall_c

    :cond_a
    monitor-exit p0

    return-object v0

    :catchall_c
    move-exception v0

    goto :goto_16

    :catch_e
    move-exception v1

    :try_start_f
    const-string v2, "#007 Could not call remote method."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbza;->i(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_c

    monitor-exit p0

    return-object v0

    :goto_16
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d(Lcom/google/android/gms/ads/internal/client/zzl;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeim;->c:Lcom/google/android/gms/ads/internal/client/zzdn;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeis;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzeis;-><init>(I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzeim;->a:Lcom/google/android/gms/internal/ads/zzeir;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeim;->b:Ljava/lang/String;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzeil;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzeil;-><init>(Lcom/google/android/gms/internal/ads/zzeim;)V

    invoke-interface {p2, p1, v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzeir;->a(Lcom/google/android/gms/ads/internal/client/zzl;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzeip;Lcom/google/android/gms/internal/ads/zzeiq;)Z
    :try_end_15
    .catchall {:try_start_2 .. :try_end_15} :catchall_17

    monitor-exit p0

    return-void

    :catchall_17
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized e()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeim;->a:Lcom/google/android/gms/internal/ads/zzeir;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzeir;->zza()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
