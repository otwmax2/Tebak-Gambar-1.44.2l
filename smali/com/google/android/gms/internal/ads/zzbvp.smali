###### Class com.google.android.gms.internal.ads.zzbvp (com.google.android.gms.internal.ads.zzbvp)
.class public final Lcom/google/android/gms/internal/ads/zzbvp;
.super Lcom/google/android/gms/internal/ads/zzbvc;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# instance fields
.field private final o:Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAdLoadCallback;

.field private final p:Lcom/google/android/gms/internal/ads/zzbvq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAdLoadCallback;Lcom/google/android/gms/internal/ads/zzbvq;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbvc;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvp;->o:Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAdLoadCallback;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbvp;->p:Lcom/google/android/gms/internal/ads/zzbvq;

    return-void
.end method


# virtual methods
.method public final A(Lcom/google/android/gms/ads/internal/client/zze;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvp;->o:Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAdLoadCallback;

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/client/zze;->W3()Lcom/google/android/gms/ads/LoadAdError;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/AdLoadCallback;->a(Lcom/google/android/gms/ads/LoadAdError;)V

    :cond_b
    return-void
.end method

.method public final F(I)V
    .registers 2

    return-void
.end method

.method public final e()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvp;->o:Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAdLoadCallback;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbvp;->p:Lcom/google/android/gms/internal/ads/zzbvq;

    if-eqz v1, :cond_b

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoadCallback;->b(Ljava/lang/Object;)V

    :cond_b
    return-void
.end method
