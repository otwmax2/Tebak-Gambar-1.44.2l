###### Class com.google.android.gms.internal.ads.zzbqs (com.google.android.gms.internal.ads.zzbqs)
.class public final Lcom/google/android/gms/internal/ads/zzbqs;
.super Lcom/google/android/gms/internal/ads/zzbfq;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# instance fields
.field private final o:Lcom/google/android/gms/ads/nativead/NativeAd$UnconfirmedClickListener;


# virtual methods
.method public final I(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqs;->o:Lcom/google/android/gms/ads/nativead/NativeAd$UnconfirmedClickListener;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/nativead/NativeAd$UnconfirmedClickListener;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqs;->o:Lcom/google/android/gms/ads/nativead/NativeAd$UnconfirmedClickListener;

    invoke-interface {v0}, Lcom/google/android/gms/ads/nativead/NativeAd$UnconfirmedClickListener;->b()V

    return-void
.end method
