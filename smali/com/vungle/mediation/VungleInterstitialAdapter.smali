###### Class com.vungle.mediation.VungleInterstitialAdapter (com.vungle.mediation.VungleInterstitialAdapter)
.class public Lcom/vungle/mediation/VungleInterstitialAdapter;
.super Ljava/lang/Object;
.source "VungleInterstitialAdapter.java"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;
.implements Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VungleInterstitialAdapter"


# instance fields
.field private mAdConfig:Lcom/vungle/warren/AdConfig;

.field private mMediationBannerListener:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

.field private mMediationInterstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

.field private mPlacementForPlay:Ljava/lang/String;

.field private mVungleManager:Lcom/vungle/mediation/VungleManager;

.field private vungleBannerAdapter:Lcom/vungle/mediation/VungleBannerAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/vungle/mediation/VungleInterstitialAdapter;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/vungle/mediation/VungleInterstitialAdapter;->loadAd()V

    return-void
.end method

.method static synthetic access$100(Lcom/vungle/mediation/VungleInterstitialAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/mediation/VungleInterstitialAdapter;->mMediationInterstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/vungle/mediation/VungleInterstitialAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private hasBannerSizeAd(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;Lcom/vungle/warren/AdConfig;)Z
    .registers 12

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcom/google/android/gms/ads/AdSize;

    sget-object v2, Lcom/vungle/warren/AdConfig$AdSize;->BANNER_SHORT:Lcom/vungle/warren/AdConfig$AdSize;

    invoke-virtual {v2}, Lcom/vungle/warren/AdConfig$AdSize;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Lcom/vungle/warren/AdConfig$AdSize;->getHeight()I

    move-result v4

    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v1, Lcom/google/android/gms/ads/AdSize;

    sget-object v3, Lcom/vungle/warren/AdConfig$AdSize;->BANNER:Lcom/vungle/warren/AdConfig$AdSize;

    invoke-virtual {v3}, Lcom/vungle/warren/AdConfig$AdSize;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Lcom/vungle/warren/AdConfig$AdSize;->getHeight()I

    move-result v5

    invoke-direct {v1, v4, v5}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v1, Lcom/google/android/gms/ads/AdSize;

    sget-object v4, Lcom/vungle/warren/AdConfig$AdSize;->BANNER_LEADERBOARD:Lcom/vungle/warren/AdConfig$AdSize;

    invoke-virtual {v4}, Lcom/vungle/warren/AdConfig$AdSize;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Lcom/vungle/warren/AdConfig$AdSize;->getHeight()I

    move-result v6

    invoke-direct {v1, v5, v6}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v1, Lcom/google/android/gms/ads/AdSize;

    sget-object v5, Lcom/vungle/warren/AdConfig$AdSize;->VUNGLE_MREC:Lcom/vungle/warren/AdConfig$AdSize;

    invoke-virtual {v5}, Lcom/vungle/warren/AdConfig$AdSize;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Lcom/vungle/warren/AdConfig$AdSize;->getHeight()I

    move-result v7

    invoke-direct {v1, v6, v7}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/ads/MediationUtils;->a(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;Ljava/util/List;)Lcom/google/android/gms/ads/AdSize;

    move-result-object p1

    if-nez p1, :cond_6b

    .line 7
    sget-object p1, Lcom/vungle/mediation/VungleInterstitialAdapter;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not found closest ad size: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 8
    :cond_6b
    sget-object v0, Lcom/vungle/mediation/VungleInterstitialAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found closest ad size: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdSize;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for requested ad size: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 10
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdSize;->d()I

    move-result p2

    invoke-virtual {v2}, Lcom/vungle/warren/AdConfig$AdSize;->getWidth()I

    move-result v0

    if-ne p2, v0, :cond_a5

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdSize;->b()I

    move-result p2

    invoke-virtual {v2}, Lcom/vungle/warren/AdConfig$AdSize;->getHeight()I

    move-result v0

    if-ne p2, v0, :cond_a5

    .line 13
    invoke-virtual {p3, v2}, Lcom/vungle/warren/AdConfig;->setAdSize(Lcom/vungle/warren/AdConfig$AdSize;)V

    goto :goto_ec

    .line 14
    :cond_a5
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdSize;->d()I

    move-result p2

    invoke-virtual {v3}, Lcom/vungle/warren/AdConfig$AdSize;->getWidth()I

    move-result v0

    if-ne p2, v0, :cond_bd

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdSize;->b()I

    move-result p2

    invoke-virtual {v3}, Lcom/vungle/warren/AdConfig$AdSize;->getHeight()I

    move-result v0

    if-ne p2, v0, :cond_bd

    .line 16
    invoke-virtual {p3, v3}, Lcom/vungle/warren/AdConfig;->setAdSize(Lcom/vungle/warren/AdConfig$AdSize;)V

    goto :goto_ec

    .line 17
    :cond_bd
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdSize;->d()I

    move-result p2

    invoke-virtual {v4}, Lcom/vungle/warren/AdConfig$AdSize;->getWidth()I

    move-result v0

    if-ne p2, v0, :cond_d5

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdSize;->b()I

    move-result p2

    invoke-virtual {v4}, Lcom/vungle/warren/AdConfig$AdSize;->getHeight()I

    move-result v0

    if-ne p2, v0, :cond_d5

    .line 19
    invoke-virtual {p3, v4}, Lcom/vungle/warren/AdConfig;->setAdSize(Lcom/vungle/warren/AdConfig$AdSize;)V

    goto :goto_ec

    .line 20
    :cond_d5
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdSize;->d()I

    move-result p2

    invoke-virtual {v5}, Lcom/vungle/warren/AdConfig$AdSize;->getWidth()I

    move-result v0

    if-ne p2, v0, :cond_ec

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdSize;->b()I

    move-result p1

    invoke-virtual {v5}, Lcom/vungle/warren/AdConfig$AdSize;->getHeight()I

    move-result p2

    if-ne p1, p2, :cond_ec

    .line 22
    invoke-virtual {p3, v5}, Lcom/vungle/warren/AdConfig;->setAdSize(Lcom/vungle/warren/AdConfig$AdSize;)V

    :cond_ec
    :goto_ec
    const/4 p1, 0x1

    return p1
.end method

.method private loadAd()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/vungle/mediation/VungleInterstitialAdapter;->mPlacementForPlay:Ljava/lang/String;

    invoke-static {v0}, Lcom/vungle/warren/Vungle;->canPlayAd(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2
    iget-object v0, p0, Lcom/vungle/mediation/VungleInterstitialAdapter;->mMediationInterstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    if-eqz v0, :cond_f

    .line 3
    invoke-interface {v0, p0}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->p(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    :cond_f
    return-void

    .line 4
    :cond_10
    iget-object v0, p0, Lcom/vungle/mediation/VungleInterstitialAdapter;->mVungleManager:Lcom/vungle/mediation/VungleManager;

    iget-object v1, p0, Lcom/vungle/mediation/VungleInterstitialAdapter;->mPlacementForPlay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vungle/mediation/VungleManager;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 5
    iget-object v0, p0, Lcom/vungle/mediation/VungleInterstitialAdapter;->mMediationInterstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    if-eqz v0, :cond_37

    .line 6
    new-instance v0, Lcom/google/android/gms/ads/AdError;

    const/16 v1, 0x65

    const-string v2, "Failed to load ad from Vungle. Missing or Invalid Placement ID."

    const-string v3, "com.google.ads.mediation.vungle"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    sget-object v1, Lcom/vungle/mediation/VungleInterstitialAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdError;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v1, p0, Lcom/vungle/mediation/VungleInterstitialAdapter;->mMediationInterstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    invoke-interface {v1, p0, v0}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->o(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;Lcom/google/android/gms/ads/AdError;)V

    :cond_37
    return-void

    .line 9
    :cond_38
    iget-object v0, p0, Lcom/vungle/mediation/VungleInterstitialAdapter;->mPlacementForPlay:Ljava/lang/String;

    new-instance v1, Lcom/vungle/mediation/VungleInterstitialAdapter$2;

    invoke-direct {v1, p0}, Lcom/vungle/mediation/VungleInterstitialAdapter$2;-><init>(Lcom/vungle/mediation/VungleInterstitialAdapter;)V

    invoke-static {v0, v1}, Lcom/vungle/warren/Vungle;->loadAd(Ljava/lang/String;Lcom/vungle/warren/LoadAdCallback;)V

    return-void
.end method


# virtual methods
.method public getBannerView()Landroid/view/View;
    .registers 4

    .line 1
    sget-object v0, Lcom/vungle/mediation/VungleInterstitialAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBannerView # instance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/vungle/mediation/VungleInterstitialAdapter;->vungleBannerAdapter:Lcom/vungle/mediation/VungleBannerAdapter;

    invoke-virtual {v0}, Lcom/vungle/mediation/VungleBannerAdapter;->getAdLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .registers 4

    .line 1
    sget-object v0, Lcom/vungle/mediation/VungleInterstitialAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/vungle/mediation/VungleInterstitialAdapter;->vungleBannerAdapter:Lcom/vungle/mediation/VungleBannerAdapter;

    if-eqz v0, :cond_24

    .line 3
    invoke-virtual {v0}, Lcom/vungle/mediation/VungleBannerAdapter;->l()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/vungle/mediation/VungleInterstitialAdapter;->vungleBannerAdapter:Lcom/vungle/mediation/VungleBannerAdapter;

    :cond_24
    return-void
.end method

.method public onPause()V
    .registers 3

    .line 1
    sget-object v0, Lcom/vungle/mediation/VungleInterstitialAdapter;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/vungle/mediation/VungleInterstitialAdapter;->vungleBannerAdapter:Lcom/vungle/mediation/VungleBannerAdapter;

    if-eqz v0, :cond_f

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/vungle/mediation/VungleBannerAdapter;->q(Z)V

    :cond_f
    return-void
.end method

.method public onResume()V
    .registers 3

    .line 1
    sget-object v0, Lcom/vungle/mediation/VungleInterstitialAdapter;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/vungle/mediation/VungleInterstitialAdapter;->vungleBannerAdapter:Lcom/vungle/mediation/VungleBannerAdapter;

    if-eqz v0, :cond_f

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/vungle/mediation/VungleBannerAdapter;->q(Z)V

    :cond_f
    return-void
.end method

.method public requestBannerAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationBannerListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/AdSize;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .registers 11

    .line 1
    iput-object p2, p0, Lcom/vungle/mediation/VungleInterstitialAdapter;->mMediationBannerListener:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    const-string p5, "appid"

    .line 2
    invoke-virtual {p3, p5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 3
    invoke-static {p5, p6}, Lcom/vungle/mediation/AdapterParametersParser;->parse(Ljava/lang/String;Landroid/os/Bundle;)Lcom/vungle/mediation/AdapterParametersParser$Config;

    move-result-object v0

    .line 4
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    const/16 v1, 0x65

    const-string v2, "com.google.ads.mediation.vungle"

    if-eqz p5, :cond_31

    if-eqz p2, :cond_30

    .line 5
    new-instance p1, Lcom/google/android/gms/ads/AdError;

    const-string p3, "Failed to load ad from Vungle. Missing or invalid app ID."

    invoke-direct {p1, v1, p3, v2}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object p3, Lcom/vungle/mediation/VungleInterstitialAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->c()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object p3, p0, Lcom/vungle/mediation/VungleInterstitialAdapter;->mMediationInterstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    invoke-interface {p3, p0, p1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->o(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;Lcom/google/android/gms/ads/AdError;)V

    .line 8
    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->f(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;Lcom/google/android/gms/ads/AdError;)V

    :cond_30
    return-void

    .line 9
    :cond_31
    invoke-static {}, Lcom/vungle/mediation/VungleManager;->getInstance()Lcom/vungle/mediation/VungleManager;

    move-result-object p2

    iput-object p2, p0, Lcom/vungle/mediation/VungleInterstitialAdapter;->mVungleManager:Lcom/vungle/mediation/VungleManager;

    .line 10
    invoke-virtual {p2, p6, p3}, Lcom/vungle/mediation/VungleManager;->findPlacement(Landroid/os/Bundle;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p2

    .line 11
    sget-object p3, Lcom/vungle/mediation/VungleInterstitialAdapter;->TAG:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestBannerAd for Placement: "

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ### Adapter instance: "

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 13
    invoke-static {p3, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_77

    .line 15
    new-instance p1, Lcom/google/android/gms/ads/AdError;

    const-string p2, "Failed to load ad from Vungle. Missing or Invalid placement ID."

    invoke-direct {p1, v1, p2, v2}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->c()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iget-object p2, p0, Lcom/vungle/mediation/VungleInterstitialAdapter;->mMediationBannerListener:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->f(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;Lcom/google/android/gms/ads/AdError;)V

    return-void

    :cond_77
    const/4 p5, 0x1

    .line 18
    invoke-static {p6, p5}, Lcom/vungle/mediation/VungleExtrasBuilder;->adConfigWithNetworkExtras(Landroid/os/Bundle;Z)Lcom/vungle/warren/AdConfig;

    move-result-object p5

    .line 19
    invoke-direct {p0, p1, p4, p5}, Lcom/vungle/mediation/VungleInterstitialAdapter;->hasBannerSizeAd(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;Lcom/vungle/warren/AdConfig;)Z

    move-result p6

    if-nez p6, :cond_98

    .line 20
    new-instance p1, Lcom/google/android/gms/ads/AdError;

    const/16 p2, 0x66

    const-string p4, "Failed to load ad from Vungle. Invalid banner size."

    invoke-direct {p1, p2, p4, v2}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->c()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget-object p2, p0, Lcom/vungle/mediation/VungleInterstitialAdapter;->mMediationBannerListener:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->f(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;Lcom/google/android/gms/ads/AdError;)V

    return-void

    .line 23
    :cond_98
    invoke-virtual {v0}, Lcom/vungle/mediation/AdapterParametersParser$Config;->getRequestUniqueId()Ljava/lang/String;

    move-result-object p6

    .line 24
    iget-object v1, p0, Lcom/vungle/mediation/VungleInterstitialAdapter;->mVungleManager:Lcom/vungle/mediation/VungleManager;

    invoke-virtual {v1, p2, p6}, Lcom/vungle/mediation/VungleManager;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_ba

    .line 25
    new-instance p1, Lcom/google/android/gms/ads/AdError;

    const/16 p2, 0x68

    const-string p4, "Vungle adapter does not support multiple banner instances for same placement."

    invoke-direct {p1, p2, p4, v2}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->c()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iget-object p2, p0, Lcom/vungle/mediation/VungleInterstitialAdapter;->mMediationBannerListener:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->f(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;Lcom/google/android/gms/ads/AdError;)V

    return-void

    .line 28
    :cond_ba
    new-instance v1, Lcom/vungle/mediation/VungleBannerAdapter;

    invoke-direct {v1, p2, p6, p5, p0}, Lcom/vungle/mediation/VungleBannerAdapter;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vungle/warren/AdConfig;Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V

    iput-object v1, p0, Lcom/vungle/mediation/VungleInterstitialAdapter;->vungleBannerAdapter:Lcom/vungle/mediation/VungleBannerAdapter;

    .line 29
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New banner adapter: "

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/mediation/VungleInterstitialAdapter;->vungleBannerAdapter:Lcom/vungle/mediation/VungleBannerAdapter;

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; size: "

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lcom/vungle/warren/AdConfig;->getAdSize()Lcom/vungle/warren/AdConfig$AdSize;

    move-result-object v1

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {p3, p6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    new-instance p6, Lcom/google/ads/mediation/vungle/a;

    iget-object v1, p0, Lcom/vungle/mediation/VungleInterstitialAdapter;->vungleBannerAdapter:Lcom/vungle/mediation/VungleBannerAdapter;

    invoke-direct {p6, p2, v1}, Lcom/google/ads/mediation/vungle/a;-><init>(Ljava/lang/String;Lcom/vungle/mediation/VungleBannerAdapter;)V

    .line 31
    iget-object v1, p0, Lcom/vungle/mediation/VungleInterstitialAdapter;->mVungleManager:Lcom/vungle/mediation/VungleManager;

    invoke-virtual {v1, p2, p6}, Lcom/vungle/mediation/VungleManager;->d(Ljava/lang/String;Lcom/google/ads/mediation/vungle/a;)V

    .line 32
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "Requesting banner with ad size: "

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lcom/vungle/warren/AdConfig;->getAdSize()Lcom/vungle/warren/AdConfig$AdSize;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object p2, p0, Lcom/vungle/mediation/VungleInterstitialAdapter;->vungleBannerAdapter:Lcom/vungle/mediation/VungleBannerAdapter;

    .line 34
    invoke-virtual {v0}, Lcom/vungle/mediation/AdapterParametersParser$Config;->getAppId()Ljava/lang/String;

    move-result-object p3

    iget-object p5, p0, Lcom/vungle/mediation/VungleInterstitialAdapter;->mMediationBannerListener:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    invoke-virtual {p2, p1, p3, p4, p5}, Lcom/vungle/mediation/VungleBannerAdapter;->p(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdSize;Lcom/google/android/gms/ads/mediation/MediationBannerListener;)V

    return-void
.end method

.method public requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .registers 9

    const-string p4, "appid"

    .line 1
    invoke-virtual {p3, p4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 2
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "com.google.ads.mediation.vungle"

    const/16 v2, 0x65

    if-eqz v0, :cond_26

    if-eqz p2, :cond_25

    .line 3
    new-instance p1, Lcom/google/android/gms/ads/AdError;

    const-string p3, "Missing or invalid App ID."

    invoke-direct {p1, v2, p3, v1}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object p3, Lcom/vungle/mediation/VungleInterstitialAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->c()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->o(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;Lcom/google/android/gms/ads/AdError;)V

    :cond_25
    return-void

    .line 6
    :cond_26
    iput-object p2, p0, Lcom/vungle/mediation/VungleInterstitialAdapter;->mMediationInterstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    .line 7
    invoke-static {}, Lcom/vungle/mediation/VungleManager;->getInstance()Lcom/vungle/mediation/VungleManager;

    move-result-object p2

    iput-object p2, p0, Lcom/vungle/mediation/VungleInterstitialAdapter;->mVungleManager:Lcom/vungle/mediation/VungleManager;

    .line 8
    invoke-virtual {p2, p5, p3}, Lcom/vungle/mediation/VungleManager;->findPlacement(Landroid/os/Bundle;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/vungle/mediation/VungleInterstitialAdapter;->mPlacementForPlay:Ljava/lang/String;

    .line 9
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_50

    .line 10
    new-instance p1, Lcom/google/android/gms/ads/AdError;

    const-string p2, "Failed to load ad from Vungle. Missing or Invalid Placement ID."

    invoke-direct {p1, v2, p2, v1}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 11
    sget-object p2, Lcom/vungle/mediation/VungleInterstitialAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->c()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object p2, p0, Lcom/vungle/mediation/VungleInterstitialAdapter;->mMediationInterstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->o(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;Lcom/google/android/gms/ads/AdError;)V

    return-void

    .line 13
    :cond_50
    invoke-static {p4, p5}, Lcom/vungle/mediation/AdapterParametersParser;->parse(Ljava/lang/String;Landroid/os/Bundle;)Lcom/vungle/mediation/AdapterParametersParser$Config;

    move-result-object p2

    const/4 p3, 0x0

    .line 14
    invoke-static {p5, p3}, Lcom/vungle/mediation/VungleExtrasBuilder;->adConfigWithNetworkExtras(Landroid/os/Bundle;Z)Lcom/vungle/warren/AdConfig;

    move-result-object p3

    iput-object p3, p0, Lcom/vungle/mediation/VungleInterstitialAdapter;->mAdConfig:Lcom/vungle/warren/AdConfig;

    .line 15
    invoke-static {}, Lcom/google/ads/mediation/vungle/b;->b()Lcom/google/ads/mediation/vungle/b;

    move-result-object p3

    .line 16
    invoke-virtual {p2}, Lcom/vungle/mediation/AdapterParametersParser$Config;->getAppId()Ljava/lang/String;

    move-result-object p2

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance p4, Lcom/vungle/mediation/VungleInterstitialAdapter$1;

    invoke-direct {p4, p0}, Lcom/vungle/mediation/VungleInterstitialAdapter$1;-><init>(Lcom/vungle/mediation/VungleInterstitialAdapter;)V

    .line 18
    invoke-virtual {p3, p2, p1, p4}, Lcom/google/ads/mediation/vungle/b;->c(Ljava/lang/String;Landroid/content/Context;Lcom/google/ads/mediation/vungle/b$d;)V

    return-void
.end method

.method public showInterstitial()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/mediation/VungleInterstitialAdapter;->mPlacementForPlay:Ljava/lang/String;

    iget-object v1, p0, Lcom/vungle/mediation/VungleInterstitialAdapter;->mAdConfig:Lcom/vungle/warren/AdConfig;

    new-instance v2, Lcom/vungle/mediation/VungleInterstitialAdapter$3;

    invoke-direct {v2, p0}, Lcom/vungle/mediation/VungleInterstitialAdapter$3;-><init>(Lcom/vungle/mediation/VungleInterstitialAdapter;)V

    invoke-static {v0, v1, v2}, Lcom/vungle/warren/Vungle;->playAd(Ljava/lang/String;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/PlayAdCallback;)V

    return-void
.end method

###### Class com.vungle.mediation.VungleInterstitialAdapter.AnonymousClass1 (com.vungle.mediation.VungleInterstitialAdapter$1)
.class Lcom/vungle/mediation/VungleInterstitialAdapter$1;
.super Ljava/lang/Object;
.source "VungleInterstitialAdapter.java"

# interfaces
.implements Lcom/google/ads/mediation/vungle/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/mediation/VungleInterstitialAdapter;->requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/mediation/VungleInterstitialAdapter;


# direct methods
.method constructor <init>(Lcom/vungle/mediation/VungleInterstitialAdapter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/mediation/VungleInterstitialAdapter$1;->a:Lcom/vungle/mediation/VungleInterstitialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeError(Lcom/google/android/gms/ads/AdError;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/mediation/VungleInterstitialAdapter$1;->a:Lcom/vungle/mediation/VungleInterstitialAdapter;

    invoke-static {v0}, Lcom/vungle/mediation/VungleInterstitialAdapter;->access$100(Lcom/vungle/mediation/VungleInterstitialAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 2
    iget-object v0, p0, Lcom/vungle/mediation/VungleInterstitialAdapter$1;->a:Lcom/vungle/mediation/VungleInterstitialAdapter;

    invoke-static {v0}, Lcom/vungle/mediation/VungleInterstitialAdapter;->access$100(Lcom/vungle/mediation/VungleInterstitialAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/mediation/VungleInterstitialAdapter$1;->a:Lcom/vungle/mediation/VungleInterstitialAdapter;

    .line 3
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->o(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;Lcom/google/android/gms/ads/AdError;)V

    .line 4
    invoke-static {}, Lcom/vungle/mediation/VungleInterstitialAdapter;->access$200()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    return-void
.end method

.method public onInitializeSuccess()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/mediation/VungleInterstitialAdapter$1;->a:Lcom/vungle/mediation/VungleInterstitialAdapter;

    invoke-static {v0}, Lcom/vungle/mediation/VungleInterstitialAdapter;->access$000(Lcom/vungle/mediation/VungleInterstitialAdapter;)V

    return-void
.end method

###### Class com.vungle.mediation.VungleInterstitialAdapter.AnonymousClass2 (com.vungle.mediation.VungleInterstitialAdapter$2)
.class Lcom/vungle/mediation/VungleInterstitialAdapter$2;
.super Ljava/lang/Object;
.source "VungleInterstitialAdapter.java"

# interfaces
.implements Lcom/vungle/warren/LoadAdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/mediation/VungleInterstitialAdapter;->loadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/mediation/VungleInterstitialAdapter;


# direct methods
.method constructor <init>(Lcom/vungle/mediation/VungleInterstitialAdapter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/mediation/VungleInterstitialAdapter$2;->a:Lcom/vungle/mediation/VungleInterstitialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoad(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/vungle/mediation/VungleInterstitialAdapter$2;->a:Lcom/vungle/mediation/VungleInterstitialAdapter;

    invoke-static {p1}, Lcom/vungle/mediation/VungleInterstitialAdapter;->access$100(Lcom/vungle/mediation/VungleInterstitialAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 2
    iget-object p1, p0, Lcom/vungle/mediation/VungleInterstitialAdapter$2;->a:Lcom/vungle/mediation/VungleInterstitialAdapter;

    invoke-static {p1}, Lcom/vungle/mediation/VungleInterstitialAdapter;->access$100(Lcom/vungle/mediation/VungleInterstitialAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object p1

    iget-object v0, p0, Lcom/vungle/mediation/VungleInterstitialAdapter$2;->a:Lcom/vungle/mediation/VungleInterstitialAdapter;

    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->p(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    :cond_13
    return-void
.end method

.method public onError(Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V
    .registers 4

    .line 1
    invoke-static {p2}, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->getAdError(Lcom/vungle/warren/error/VungleException;)Lcom/google/android/gms/ads/AdError;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->c()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TAG"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p2, p0, Lcom/vungle/mediation/VungleInterstitialAdapter$2;->a:Lcom/vungle/mediation/VungleInterstitialAdapter;

    invoke-static {p2}, Lcom/vungle/mediation/VungleInterstitialAdapter;->access$100(Lcom/vungle/mediation/VungleInterstitialAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object p2

    if-eqz p2, :cond_20

    .line 4
    iget-object p2, p0, Lcom/vungle/mediation/VungleInterstitialAdapter$2;->a:Lcom/vungle/mediation/VungleInterstitialAdapter;

    invoke-static {p2}, Lcom/vungle/mediation/VungleInterstitialAdapter;->access$100(Lcom/vungle/mediation/VungleInterstitialAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object p2

    iget-object v0, p0, Lcom/vungle/mediation/VungleInterstitialAdapter$2;->a:Lcom/vungle/mediation/VungleInterstitialAdapter;

    invoke-interface {p2, v0, p1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->o(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;Lcom/google/android/gms/ads/AdError;)V

    :cond_20
    return-void
.end method

###### Class com.vungle.mediation.VungleInterstitialAdapter.AnonymousClass3 (com.vungle.mediation.VungleInterstitialAdapter$3)
.class Lcom/vungle/mediation/VungleInterstitialAdapter$3;
.super Ljava/lang/Object;
.source "VungleInterstitialAdapter.java"

# interfaces
.implements Lcom/vungle/warren/PlayAdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/mediation/VungleInterstitialAdapter;->showInterstitial()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/mediation/VungleInterstitialAdapter;


# direct methods
.method constructor <init>(Lcom/vungle/mediation/VungleInterstitialAdapter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/mediation/VungleInterstitialAdapter$3;->a:Lcom/vungle/mediation/VungleInterstitialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public creativeId(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onAdClick(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/vungle/mediation/VungleInterstitialAdapter$3;->a:Lcom/vungle/mediation/VungleInterstitialAdapter;

    invoke-static {p1}, Lcom/vungle/mediation/VungleInterstitialAdapter;->access$100(Lcom/vungle/mediation/VungleInterstitialAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 2
    iget-object p1, p0, Lcom/vungle/mediation/VungleInterstitialAdapter$3;->a:Lcom/vungle/mediation/VungleInterstitialAdapter;

    invoke-static {p1}, Lcom/vungle/mediation/VungleInterstitialAdapter;->access$100(Lcom/vungle/mediation/VungleInterstitialAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object p1

    iget-object v0, p0, Lcom/vungle/mediation/VungleInterstitialAdapter$3;->a:Lcom/vungle/mediation/VungleInterstitialAdapter;

    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->l(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    :cond_13
    return-void
.end method

.method public onAdEnd(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/vungle/mediation/VungleInterstitialAdapter$3;->a:Lcom/vungle/mediation/VungleInterstitialAdapter;

    invoke-static {p1}, Lcom/vungle/mediation/VungleInterstitialAdapter;->access$100(Lcom/vungle/mediation/VungleInterstitialAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 2
    iget-object p1, p0, Lcom/vungle/mediation/VungleInterstitialAdapter$3;->a:Lcom/vungle/mediation/VungleInterstitialAdapter;

    invoke-static {p1}, Lcom/vungle/mediation/VungleInterstitialAdapter;->access$100(Lcom/vungle/mediation/VungleInterstitialAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object p1

    iget-object v0, p0, Lcom/vungle/mediation/VungleInterstitialAdapter$3;->a:Lcom/vungle/mediation/VungleInterstitialAdapter;

    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->r(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    :cond_13
    return-void
.end method

.method public onAdEnd(Ljava/lang/String;ZZ)V
    .registers 4

    return-void
.end method

.method public onAdLeftApplication(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/vungle/mediation/VungleInterstitialAdapter$3;->a:Lcom/vungle/mediation/VungleInterstitialAdapter;

    invoke-static {p1}, Lcom/vungle/mediation/VungleInterstitialAdapter;->access$100(Lcom/vungle/mediation/VungleInterstitialAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 2
    iget-object p1, p0, Lcom/vungle/mediation/VungleInterstitialAdapter$3;->a:Lcom/vungle/mediation/VungleInterstitialAdapter;

    invoke-static {p1}, Lcom/vungle/mediation/VungleInterstitialAdapter;->access$100(Lcom/vungle/mediation/VungleInterstitialAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object p1

    iget-object v0, p0, Lcom/vungle/mediation/VungleInterstitialAdapter$3;->a:Lcom/vungle/mediation/VungleInterstitialAdapter;

    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->d(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    :cond_13
    return-void
.end method

.method public onAdRewarded(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onAdStart(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/vungle/mediation/VungleInterstitialAdapter$3;->a:Lcom/vungle/mediation/VungleInterstitialAdapter;

    invoke-static {p1}, Lcom/vungle/mediation/VungleInterstitialAdapter;->access$100(Lcom/vungle/mediation/VungleInterstitialAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 2
    iget-object p1, p0, Lcom/vungle/mediation/VungleInterstitialAdapter$3;->a:Lcom/vungle/mediation/VungleInterstitialAdapter;

    invoke-static {p1}, Lcom/vungle/mediation/VungleInterstitialAdapter;->access$100(Lcom/vungle/mediation/VungleInterstitialAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object p1

    iget-object v0, p0, Lcom/vungle/mediation/VungleInterstitialAdapter$3;->a:Lcom/vungle/mediation/VungleInterstitialAdapter;

    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->v(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    :cond_13
    return-void
.end method

.method public onAdViewed(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onError(Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V
    .registers 3

    .line 1
    invoke-static {p2}, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->getAdError(Lcom/vungle/warren/error/VungleException;)Lcom/google/android/gms/ads/AdError;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->c()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TAG"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcom/vungle/mediation/VungleInterstitialAdapter$3;->a:Lcom/vungle/mediation/VungleInterstitialAdapter;

    invoke-static {p1}, Lcom/vungle/mediation/VungleInterstitialAdapter;->access$100(Lcom/vungle/mediation/VungleInterstitialAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object p1

    if-eqz p1, :cond_20

    .line 4
    iget-object p1, p0, Lcom/vungle/mediation/VungleInterstitialAdapter$3;->a:Lcom/vungle/mediation/VungleInterstitialAdapter;

    invoke-static {p1}, Lcom/vungle/mediation/VungleInterstitialAdapter;->access$100(Lcom/vungle/mediation/VungleInterstitialAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object p1

    iget-object p2, p0, Lcom/vungle/mediation/VungleInterstitialAdapter$3;->a:Lcom/vungle/mediation/VungleInterstitialAdapter;

    invoke-interface {p1, p2}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->r(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    :cond_20
    return-void
.end method
