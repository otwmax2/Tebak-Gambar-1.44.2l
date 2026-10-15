###### Class com.google.android.gms.ads.admanager.zzb (com.google.android.gms.ads.admanager.zzb)
.class public final synthetic Lcom/google/android/gms/ads/admanager/zzb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

.field public final synthetic p:Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/admanager/zzb;->o:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    iget-object v1, p0, Lcom/google/android/gms/ads/admanager/zzb;->p:Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->e(Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;)V

    return-void
.end method
