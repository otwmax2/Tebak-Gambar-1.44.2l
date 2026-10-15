###### Class com.google.android.gms.internal.ads.zzbqo (com.google.android.gms.internal.ads.zzbqo)
.class final Lcom/google/android/gms/internal/ads/zzbqo;
.super Lcom/google/android/gms/internal/ads/zzbfd;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# instance fields
.field final synthetic o:Lcom/google/android/gms/internal/ads/zzbqp;


# virtual methods
.method public final q9(Lcom/google/android/gms/internal/ads/zzber;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqo;->o:Lcom/google/android/gms/internal/ads/zzbqp;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbqp;->b(Lcom/google/android/gms/internal/ads/zzbqp;)Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomFormatAdLoadedListener;

    move-result-object v1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbqp;->c(Lcom/google/android/gms/internal/ads/zzbqp;Lcom/google/android/gms/internal/ads/zzber;)Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomFormatAdLoadedListener;->a(Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;)V

    return-void
.end method
