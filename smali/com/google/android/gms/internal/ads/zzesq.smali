###### Class com.google.android.gms.internal.ads.zzesq (com.google.android.gms.internal.ads.zzesq)
.class public final Lcom/google/android/gms/internal/ads/zzesq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# direct methods
.method public static a(Lcom/google/android/gms/internal/ads/zzeru;Lcom/google/android/gms/internal/ads/zzenl;Ljava/util/concurrent/ScheduledExecutorService;I)Lcom/google/android/gms/internal/ads/zzepn;
    .registers 6

    const-wide/16 v0, 0x0

    if-nez p3, :cond_a

    new-instance p0, Lcom/google/android/gms/internal/ads/zzent;

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzent;-><init>(Lcom/google/android/gms/internal/ads/zzepn;JLjava/util/concurrent/ScheduledExecutorService;)V

    return-object p0

    :cond_a
    new-instance p1, Lcom/google/android/gms/internal/ads/zzent;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzent;-><init>(Lcom/google/android/gms/internal/ads/zzepn;JLjava/util/concurrent/ScheduledExecutorService;)V

    return-object p1
.end method

.method public static b(Lcom/google/android/gms/internal/ads/zzese;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzepn;
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzent;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbar;->G3:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzent;-><init>(Lcom/google/android/gms/internal/ads/zzepn;JLjava/util/concurrent/ScheduledExecutorService;)V

    return-object v0
.end method

.method public static c(Lcom/google/android/gms/internal/ads/zzesz;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzepn;
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/ads/zzent;

    const-wide/16 v1, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzent;-><init>(Lcom/google/android/gms/internal/ads/zzepn;JLjava/util/concurrent/ScheduledExecutorService;)V

    return-object v0
.end method
