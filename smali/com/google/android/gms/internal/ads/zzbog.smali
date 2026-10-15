###### Class com.google.android.gms.internal.ads.zzbog (com.google.android.gms.internal.ads.zzbog)
.class public final Lcom/google/android/gms/internal/ads/zzbog;
.super Lcom/google/android/gms/internal/ads/zzbnn;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# instance fields
.field private final o:Lcom/google/android/gms/ads/mediation/MediationInterscrollerAd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/MediationInterscrollerAd;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbnn;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbog;->o:Lcom/google/android/gms/ads/mediation/MediationInterscrollerAd;

    return-void
.end method


# virtual methods
.method public final b()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbog;->o:Lcom/google/android/gms/ads/mediation/MediationInterscrollerAd;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationBannerAd;->a()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->Q4(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final c()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbog;->o:Lcom/google/android/gms/ads/mediation/MediationInterscrollerAd;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationInterscrollerAd;->b()Z

    move-result v0

    return v0
.end method
