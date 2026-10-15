###### Class com.google.android.gms.internal.ads.zzbqr (com.google.android.gms.internal.ads.zzbqr)
.class public final Lcom/google/android/gms/internal/ads/zzbqr;
.super Lcom/google/android/gms/internal/ads/zzbfk;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# instance fields
.field private final o:Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbfk;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqr;->o:Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;

    return-void
.end method


# virtual methods
.method public final t9(Lcom/google/android/gms/internal/ads/zzbfu;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqr;->o:Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbqk;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzbqk;-><init>(Lcom/google/android/gms/internal/ads/zzbfu;)V

    .line 2
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;->a(Lcom/google/android/gms/ads/nativead/NativeAd;)V

    return-void
.end method
