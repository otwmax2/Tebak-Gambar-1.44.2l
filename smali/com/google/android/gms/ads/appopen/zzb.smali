###### Class com.google.android.gms.ads.appopen.zzb (com.google.android.gms.ads.appopen.zzb)
.class public final synthetic Lcom/google/android/gms/ads/appopen/zzb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Landroid/content/Context;

.field public final synthetic p:Ljava/lang/String;

.field public final synthetic q:Lcom/google/android/gms/ads/AdRequest;

.field public final synthetic r:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;


# virtual methods
.method public final run()V
    .registers 9

    .line 1
    iget-object v6, p0, Lcom/google/android/gms/ads/appopen/zzb;->o:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/appopen/zzb;->p:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/ads/appopen/zzb;->q:Lcom/google/android/gms/ads/AdRequest;

    iget-object v5, p0, Lcom/google/android/gms/ads/appopen/zzb;->r:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

    :try_start_8
    new-instance v7, Lcom/google/android/gms/internal/ads/zzavg;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest;->a()Lcom/google/android/gms/ads/internal/client/zzdx;

    move-result-object v3

    const/4 v4, 0x3

    move-object v0, v7

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzavg;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzdx;ILcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;)V

    .line 2
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzavg;->a()V
    :try_end_17
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_17} :catch_18

    return-void

    :catch_18
    move-exception v0

    .line 3
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzbsf;->c(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbsh;

    move-result-object v1

    const-string v2, "AppOpenAd.load"

    .line 4
    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbsh;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method
