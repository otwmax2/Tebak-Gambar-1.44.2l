###### Class com.google.android.gms.ads.admanager.zzc (com.google.android.gms.ads.admanager.zzc)
.class public final synthetic Lcom/google/android/gms/ads/admanager/zzc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Landroid/content/Context;

.field public final synthetic p:Ljava/lang/String;

.field public final synthetic q:Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;

.field public final synthetic r:Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAdLoadCallback;


# virtual methods
.method public final run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/admanager/zzc;->o:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/admanager/zzc;->p:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/admanager/zzc;->q:Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;

    iget-object v3, p0, Lcom/google/android/gms/ads/admanager/zzc;->r:Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAdLoadCallback;

    :try_start_8
    new-instance v4, Lcom/google/android/gms/internal/ads/zzbkh;

    invoke-direct {v4, v0, v1}, Lcom/google/android/gms/internal/ads/zzbkh;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdRequest;->a()Lcom/google/android/gms/ads/internal/client/zzdx;

    move-result-object v1

    invoke-virtual {v4, v1, v3}, Lcom/google/android/gms/internal/ads/zzbkh;->g(Lcom/google/android/gms/ads/internal/client/zzdx;Lcom/google/android/gms/ads/AdLoadCallback;)V
    :try_end_14
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_14} :catch_15

    return-void

    :catch_15
    move-exception v1

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbsf;->c(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbsh;

    move-result-object v0

    const-string v2, "AdManagerInterstitialAd.load"

    .line 4
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbsh;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method
