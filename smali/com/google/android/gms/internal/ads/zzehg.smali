###### Class com.google.android.gms.internal.ads.zzehg (com.google.android.gms.internal.ads.zzehg)
.class final Lcom/google/android/gms/internal/ads/zzehg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeiq;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/zzehh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzehh;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzehg;->a:Lcom/google/android/gms/internal/ads/zzehh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic c(Ljava/lang/Object;)V
    .registers 5

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcok;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehg;->a:Lcom/google/android/gms/internal/ads/zzehh;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzehg;->a:Lcom/google/android/gms/internal/ads/zzehh;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzehh;->Ta(Lcom/google/android/gms/internal/ads/zzehh;)Lcom/google/android/gms/internal/ads/zzcok;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzehh;->Ta(Lcom/google/android/gms/internal/ads/zzehh;)Lcom/google/android/gms/internal/ads/zzcok;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcqm;->a()V

    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzehg;->a:Lcom/google/android/gms/internal/ads/zzehh;

    .line 3
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzehh;->Ua(Lcom/google/android/gms/internal/ads/zzehh;Lcom/google/android/gms/internal/ads/zzcok;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzehg;->a:Lcom/google/android/gms/internal/ads/zzehh;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzehh;->Ta(Lcom/google/android/gms/internal/ads/zzehh;)Lcom/google/android/gms/internal/ads/zzcok;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcqm;->b()V

    .line 5
    monitor-exit v0

    return-void

    :catchall_24
    move-exception p1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_24

    throw p1
.end method

.method public final zza()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehg;->a:Lcom/google/android/gms/internal/ads/zzehh;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzehg;->a:Lcom/google/android/gms/internal/ads/zzehh;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzehh;->Ua(Lcom/google/android/gms/internal/ads/zzehh;Lcom/google/android/gms/internal/ads/zzcok;)V

    .line 2
    monitor-exit v0

    return-void

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method
