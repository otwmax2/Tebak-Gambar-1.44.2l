###### Class com.google.android.gms.internal.ads.zzbgb (com.google.android.gms.internal.ads.zzbgb)
.class final Lcom/google/android/gms/internal/ads/zzbgb;
.super Lcom/google/android/gms/internal/ads/zzbfd;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# instance fields
.field final synthetic o:Lcom/google/android/gms/internal/ads/zzbgc;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbgc;Lcom/google/android/gms/internal/ads/zzbga;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgb;->o:Lcom/google/android/gms/internal/ads/zzbgc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbfd;-><init>()V

    return-void
.end method


# virtual methods
.method public final q9(Lcom/google/android/gms/internal/ads/zzber;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgb;->o:Lcom/google/android/gms/internal/ads/zzbgc;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbgc;->b(Lcom/google/android/gms/internal/ads/zzbgc;)Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;

    move-result-object v1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbgc;->c(Lcom/google/android/gms/internal/ads/zzbgc;Lcom/google/android/gms/internal/ads/zzber;)Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;->b(Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;)V

    return-void
.end method
