###### Class com.google.android.gms.internal.ads.zzir (com.google.android.gms.internal.ads.zzir)
.class final Lcom/google/android/gms/internal/ads/zzir;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# direct methods
.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzjc;Z)Lcom/google/android/gms/internal/ads/zzno;
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zznk;->q(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zznk;

    move-result-object p0

    if-nez p0, :cond_15

    const-string p0, "ExoPlayerImpl"

    const-string p1, "MediaMetricsService unavailable."

    .line 2
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance p0, Lcom/google/android/gms/internal/ads/zzno;

    sget-object p1, Landroid/media/metrics/LogSessionId;->LOG_SESSION_ID_NONE:Landroid/media/metrics/LogSessionId;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzno;-><init>(Landroid/media/metrics/LogSessionId;)V

    return-object p0

    :cond_15
    if-eqz p2, :cond_1a

    .line 4
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzjc;->v(Lcom/google/android/gms/internal/ads/zzle;)V

    .line 5
    :cond_1a
    new-instance p1, Lcom/google/android/gms/internal/ads/zzno;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zznk;->o()Landroid/media/metrics/LogSessionId;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzno;-><init>(Landroid/media/metrics/LogSessionId;)V

    return-object p1
.end method
