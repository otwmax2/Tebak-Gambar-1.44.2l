###### Class com.google.android.gms.internal.ads.zzbvq (com.google.android.gms.internal.ads.zzbvq)
.class public final Lcom/google/android/gms/internal/ads/zzbvq;
.super Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/android/gms/internal/ads/zzbuw;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/android/gms/internal/ads/zzbvo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbvq;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvq;->c:Landroid/content/Context;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->a()Lcom/google/android/gms/ads/internal/client/zzaw;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbnc;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzbnc;-><init>()V

    .line 3
    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/ads/internal/client/zzaw;->o(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbnf;)Lcom/google/android/gms/internal/ads/zzbuw;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvq;->b:Lcom/google/android/gms/internal/ads/zzbuw;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbvo;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbvo;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvq;->d:Lcom/google/android/gms/internal/ads/zzbvo;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/ads/ResponseInfo;
    .registers 4

    const/4 v0, 0x0

    .line 1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbvq;->b:Lcom/google/android/gms/internal/ads/zzbuw;

    if-eqz v1, :cond_10

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbuw;->a()Lcom/google/android/gms/ads/internal/client/zzdn;

    move-result-object v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_a

    goto :goto_10

    :catch_a
    move-exception v1

    const-string v2, "#007 Could not call remote method."

    .line 2
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbza;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    :cond_10
    :goto_10
    invoke-static {v0}, Lcom/google/android/gms/ads/ResponseInfo;->e(Lcom/google/android/gms/ads/internal/client/zzdn;)Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object v0

    return-object v0
.end method

.method public final c(Landroid/app/Activity;Lcom/google/android/gms/ads/OnUserEarnedRewardListener;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvq;->d:Lcom/google/android/gms/internal/ads/zzbvo;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzbvo;->Ta(Lcom/google/android/gms/ads/OnUserEarnedRewardListener;)V

    :try_start_5
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbvq;->b:Lcom/google/android/gms/internal/ads/zzbuw;

    if-eqz p2, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvq;->d:Lcom/google/android/gms/internal/ads/zzbvo;

    .line 2
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzbuw;->Fa(Lcom/google/android/gms/internal/ads/zzbuz;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbvq;->b:Lcom/google/android/gms/internal/ads/zzbuw;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->Q4(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzbuw;->l1(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_17} :catch_18

    :cond_17
    return-void

    :catch_18
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 4
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbza;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final d(Lcom/google/android/gms/ads/internal/client/zzdx;Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAdLoadCallback;)V
    .registers 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvq;->b:Lcom/google/android/gms/internal/ads/zzbuw;

    if-eqz v0, :cond_14

    sget-object v1, Lcom/google/android/gms/ads/internal/client/zzp;->a:Lcom/google/android/gms/ads/internal/client/zzp;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbvq;->c:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/ads/internal/client/zzp;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzdx;)Lcom/google/android/gms/ads/internal/client/zzl;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbvp;

    invoke-direct {v1, p2, p0}, Lcom/google/android/gms/internal/ads/zzbvp;-><init>(Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAdLoadCallback;Lcom/google/android/gms/internal/ads/zzbvq;)V

    .line 2
    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzbuw;->f5(Lcom/google/android/gms/ads/internal/client/zzl;Lcom/google/android/gms/internal/ads/zzbvd;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    :cond_14
    return-void

    :catch_15
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 3
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbza;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
