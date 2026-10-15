###### Class com.google.android.gms.internal.ads.zzfva (com.google.android.gms.internal.ads.zzfva)
.class public final Lcom/google/android/gms/internal/ads/zzfva;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# direct methods
.method public static a(Ljava/util/concurrent/ExecutorService;)Lcom/google/android/gms/internal/ads/zzfuu;
    .registers 2

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzfuu;

    if-eqz v0, :cond_7

    .line 2
    check-cast p0, Lcom/google/android/gms/internal/ads/zzfuu;

    goto :goto_19

    .line 3
    :cond_7
    instance-of v0, p0, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_13

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfuz;

    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfuz;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfuw;

    .line 5
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfuw;-><init>(Ljava/util/concurrent/ExecutorService;)V

    :goto_18
    move-object p0, v0

    :goto_19
    return-object p0
.end method

.method public static b()Ljava/util/concurrent/Executor;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzftx;->o:Lcom/google/android/gms/internal/ads/zzftx;

    return-object v0
.end method

.method static c(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzfsx;)Ljava/util/concurrent/Executor;
    .registers 3

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzftx;->o:Lcom/google/android/gms/internal/ads/zzftx;

    if-ne p0, v0, :cond_8

    return-object p0

    .line 3
    :cond_8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfuv;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfuv;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzfsx;)V

    return-object v0
.end method
