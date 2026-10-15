###### Class com.google.android.gms.internal.ads.zzdli (com.google.android.gms.internal.ads.zzdli)
.class public final Lcom/google/android/gms/internal/ads/zzdli;
.super Lcom/google/android/gms/internal/ads/zzdks;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdcc;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation


# instance fields
.field private t:Lcom/google/android/gms/internal/ads/zzdcc;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdks;-><init>()V

    return-void
.end method


# virtual methods
.method protected final declared-synchronized c(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/internal/ads/zzbgi;Lcom/google/android/gms/ads/internal/overlay/zzo;Lcom/google/android/gms/internal/ads/zzbgk;Lcom/google/android/gms/ads/internal/overlay/zzz;Lcom/google/android/gms/internal/ads/zzdcc;)V
    .registers 7

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-super/range {p0 .. p5}, Lcom/google/android/gms/internal/ads/zzdks;->a(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/internal/ads/zzbgi;Lcom/google/android/gms/ads/internal/overlay/zzo;Lcom/google/android/gms/internal/ads/zzbgk;Lcom/google/android/gms/ads/internal/overlay/zzz;)V

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdli;->t:Lcom/google/android/gms/internal/ads/zzdcc;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized p()V
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdli;->t:Lcom/google/android/gms/internal/ads/zzdcc;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdcc;->p()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_c

    monitor-exit p0

    return-void

    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized q()V
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdli;->t:Lcom/google/android/gms/internal/ads/zzdcc;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdcc;->q()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_c

    monitor-exit p0

    return-void

    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method
