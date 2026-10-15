###### Class com.google.android.gms.internal.ads.zzeii (com.google.android.gms.internal.ads.zzeii)
.class final Lcom/google/android/gms/internal/ads/zzeii;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeiq;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/zzeij;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzeij;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeii;->a:Lcom/google/android/gms/internal/ads/zzeij;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic c(Ljava/lang/Object;)V
    .registers 4

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdcv;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeii;->a:Lcom/google/android/gms/internal/ads/zzeij;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeii;->a:Lcom/google/android/gms/internal/ads/zzeij;

    .line 2
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzeij;->Ua(Lcom/google/android/gms/internal/ads/zzeij;Lcom/google/android/gms/internal/ads/zzdcv;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeii;->a:Lcom/google/android/gms/internal/ads/zzeij;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeij;->Ta(Lcom/google/android/gms/internal/ads/zzeij;)Lcom/google/android/gms/internal/ads/zzdcv;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcqm;->b()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public final zza()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeii;->a:Lcom/google/android/gms/internal/ads/zzeij;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeii;->a:Lcom/google/android/gms/internal/ads/zzeij;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzeij;->Ua(Lcom/google/android/gms/internal/ads/zzeij;Lcom/google/android/gms/internal/ads/zzdcv;)V

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
