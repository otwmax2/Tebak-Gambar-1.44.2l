###### Class com.google.android.gms.internal.ads.zzeil (com.google.android.gms.internal.ads.zzeil)
.class final Lcom/google/android/gms/internal/ads/zzeil;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeiq;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/zzeim;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzeim;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeil;->a:Lcom/google/android/gms/internal/ads/zzeim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic c(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeil;->a:Lcom/google/android/gms/internal/ads/zzeim;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeil;->a:Lcom/google/android/gms/internal/ads/zzeim;

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzcqm;

    .line 1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcqm;->c()Lcom/google/android/gms/internal/ads/zzcuh;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzeim;->c(Lcom/google/android/gms/internal/ads/zzeim;Lcom/google/android/gms/ads/internal/client/zzdn;)V

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcqm;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcqm;->b()V

    .line 3
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public final zza()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeil;->a:Lcom/google/android/gms/internal/ads/zzeim;

    monitor-enter v0

    :try_start_3
    monitor-exit v0

    return-void

    :catchall_5
    move-exception v1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_5

    throw v1
.end method
