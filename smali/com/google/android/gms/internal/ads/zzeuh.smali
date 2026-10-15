###### Class com.google.android.gms.internal.ads.zzeuh (com.google.android.gms.internal.ads.zzeuh)
.class final Lcom/google/android/gms/internal/ads/zzeuh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeiq;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/zzeui;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzeui;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeuh;->a:Lcom/google/android/gms/internal/ads/zzeui;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic c(Ljava/lang/Object;)V
    .registers 7

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcoe;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeuh;->a:Lcom/google/android/gms/internal/ads/zzeui;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeuh;->a:Lcom/google/android/gms/internal/ads/zzeui;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzeui;->x:Lcom/google/android/gms/internal/ads/zzcoe;

    if-eqz v1, :cond_e

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcqm;->a()V

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeuh;->a:Lcom/google/android/gms/internal/ads/zzeui;

    iput-object p1, v1, Lcom/google/android/gms/internal/ads/zzeui;->x:Lcom/google/android/gms/internal/ads/zzcoe;

    .line 3
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzcoe;->i(Lcom/google/android/gms/internal/ads/zzaus;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeuh;->a:Lcom/google/android/gms/internal/ads/zzeui;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzeui;->Ta(Lcom/google/android/gms/internal/ads/zzeui;)Lcom/google/android/gms/internal/ads/zzeua;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcof;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzeui;->Ta(Lcom/google/android/gms/internal/ads/zzeui;)Lcom/google/android/gms/internal/ads/zzeua;

    move-result-object v4

    .line 4
    invoke-direct {v3, p1, v1, v4}, Lcom/google/android/gms/internal/ads/zzcof;-><init>(Lcom/google/android/gms/internal/ads/zzcoe;Lcom/google/android/gms/ads/internal/client/zzbu;Lcom/google/android/gms/internal/ads/zzeua;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzeua;->n(Lcom/google/android/gms/internal/ads/zzauy;)V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcqm;->b()V

    .line 6
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method public final zza()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeuh;->a:Lcom/google/android/gms/internal/ads/zzeui;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeuh;->a:Lcom/google/android/gms/internal/ads/zzeui;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzeui;->x:Lcom/google/android/gms/internal/ads/zzcoe;

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
