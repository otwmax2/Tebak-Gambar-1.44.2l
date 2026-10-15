###### Class com.google.android.gms.internal.ads.zzbqm (com.google.android.gms.internal.ads.zzbqm)
.class final Lcom/google/android/gms/internal/ads/zzbqm;
.super Lcom/google/android/gms/internal/ads/zzbfa;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# instance fields
.field final synthetic o:Lcom/google/android/gms/internal/ads/zzbqp;


# virtual methods
.method public final d3(Lcom/google/android/gms/internal/ads/zzber;Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqm;->o:Lcom/google/android/gms/internal/ads/zzbqp;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbqp;->a(Lcom/google/android/gms/internal/ads/zzbqp;)Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomClickListener;

    move-result-object v1

    if-nez v1, :cond_9

    return-void

    :cond_9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbqp;->a(Lcom/google/android/gms/internal/ads/zzbqp;)Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomClickListener;

    move-result-object v1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbqp;->c(Lcom/google/android/gms/internal/ads/zzbqp;Lcom/google/android/gms/internal/ads/zzber;)Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;

    move-result-object p1

    .line 2
    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomClickListener;->a(Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;Ljava/lang/String;)V

    return-void
.end method
