###### Class com.google.android.gms.internal.ads.zzczk (com.google.android.gms.internal.ads.zzczk)
.class public final Lcom/google/android/gms/internal/ads/zzczk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcxj;


# instance fields
.field private o:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->a1:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzczk;->o:I

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzczk;->o:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized l0(Lcom/google/android/gms/internal/ads/zzeyo;)V
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->b1:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_21

    if-eqz v0, :cond_1f

    .line 4
    :try_start_13
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzeyo;->b:Lcom/google/android/gms/internal/ads/zzeyn;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzeyn;->b:Lcom/google/android/gms/internal/ads/zzeyf;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzeyf;->c:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzczk;->o:I
    :try_end_1b
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_1b} :catch_1d
    .catchall {:try_start_13 .. :try_end_1b} :catchall_21

    monitor-exit p0

    return-void

    :catch_1d
    monitor-exit p0

    return-void

    :cond_1f
    monitor-exit p0

    return-void

    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final t0(Lcom/google/android/gms/internal/ads/zzbtn;)V
    .registers 2

    return-void
.end method
