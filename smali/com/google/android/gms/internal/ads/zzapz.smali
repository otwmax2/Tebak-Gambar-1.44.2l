###### Class com.google.android.gms.internal.ads.zzapz (com.google.android.gms.internal.ads.zzapz)
.class final Lcom/google/android/gms/internal/ads/zzapz;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/zzaqa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaqa;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapz;->a:Lcom/google/android/gms/internal/ads/zzaqa;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 4

    .line 1
    const-class p1, Lcom/google/android/gms/internal/ads/zzaqa;

    monitor-enter p1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapz;->a:Lcom/google/android/gms/internal/ads/zzaqa;

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/zzaqa;->d(Lcom/google/android/gms/internal/ads/zzaqa;Landroid/net/NetworkCapabilities;)V

    .line 2
    monitor-exit p1

    return-void

    :catchall_a
    move-exception p2

    monitor-exit p1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p2
.end method

.method public final onLost(Landroid/net/Network;)V
    .registers 4

    .line 1
    const-class p1, Lcom/google/android/gms/internal/ads/zzaqa;

    monitor-enter p1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapz;->a:Lcom/google/android/gms/internal/ads/zzaqa;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaqa;->d(Lcom/google/android/gms/internal/ads/zzaqa;Landroid/net/NetworkCapabilities;)V

    .line 2
    monitor-exit p1

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method
