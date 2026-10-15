###### Class com.google.android.gms.ads.internal.util.zzd (com.google.android.gms.ads.internal.util.zzd)
.class public final Lcom/google/android/gms/ads/internal/util/zzd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# direct methods
.method public static a(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbyz;->k(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 2
    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbyz;->m()Z

    move-result v0

    if-nez v0, :cond_20

    new-instance v0, Lcom/google/android/gms/ads/internal/util/k;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/util/k;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzb;->b()Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object p0

    const-string v0, "Updating ad debug logging enablement."

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->f(Ljava/lang/String;)V

    const-string v0, "AdDebugLogUpdater.updateEnablement"

    .line 5
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzbzq;->a(Lcom/google/android/gms/internal/ads/zzfut;Ljava/lang/String;)V

    :cond_20
    return-void
.end method
