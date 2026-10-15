###### Class com.vungle.mediation.VungleBannerAdapter (com.vungle.mediation.VungleBannerAdapter)
.class public Lcom/vungle/mediation/VungleBannerAdapter;
.super Ljava/lang/Object;
.source "VungleBannerAdapter.java"

# interfaces
.implements Lcom/vungle/warren/PlayAdCallback;


# static fields
.field private static final l:Ljava/lang/String; = "VungleBannerAdapter"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/vungle/warren/AdConfig;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

.field private e:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

.field private f:Lcom/google/ads/mediation/vungle/a;

.field private g:Landroid/widget/RelativeLayout;

.field private final h:Lcom/vungle/mediation/VungleManager;

.field private i:Z

.field private j:Z

.field private final k:Lcom/vungle/warren/LoadAdCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/vungle/warren/AdConfig;Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/vungle/mediation/VungleBannerAdapter;->i:Z

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/vungle/mediation/VungleBannerAdapter;->j:Z

    .line 4
    new-instance v0, Lcom/vungle/mediation/VungleBannerAdapter$3;

    invoke-direct {v0, p0}, Lcom/vungle/mediation/VungleBannerAdapter$3;-><init>(Lcom/vungle/mediation/VungleBannerAdapter;)V

    iput-object v0, p0, Lcom/vungle/mediation/VungleBannerAdapter;->k:Lcom/vungle/warren/LoadAdCallback;

    .line 5
    invoke-static {}, Lcom/vungle/mediation/VungleManager;->getInstance()Lcom/vungle/mediation/VungleManager;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/mediation/VungleBannerAdapter;->h:Lcom/vungle/mediation/VungleManager;

    .line 6
    iput-object p1, p0, Lcom/vungle/mediation/VungleBannerAdapter;->a:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/vungle/mediation/VungleBannerAdapter;->c:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/vungle/mediation/VungleBannerAdapter;->b:Lcom/vungle/warren/AdConfig;

    .line 9
    iput-object p4, p0, Lcom/vungle/mediation/VungleBannerAdapter;->d:Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    return-void
.end method

.method static synthetic a(Lcom/vungle/mediation/VungleBannerAdapter;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/vungle/mediation/VungleBannerAdapter;->n()V

    return-void
.end method

.method static synthetic b(Lcom/vungle/mediation/VungleBannerAdapter;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/mediation/VungleBannerAdapter;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/vungle/mediation/VungleBannerAdapter;)Lcom/google/ads/mediation/vungle/a;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/mediation/VungleBannerAdapter;->f:Lcom/google/ads/mediation/vungle/a;

    return-object p0
.end method

.method static synthetic d(Lcom/vungle/mediation/VungleBannerAdapter;)Lcom/vungle/mediation/VungleManager;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/mediation/VungleBannerAdapter;->h:Lcom/vungle/mediation/VungleManager;

    return-object p0
.end method

.method static synthetic e(Lcom/vungle/mediation/VungleBannerAdapter;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/vungle/mediation/VungleBannerAdapter;->i:Z

    return p0
.end method

.method static synthetic f(Lcom/vungle/mediation/VungleBannerAdapter;)Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/mediation/VungleBannerAdapter;->d:Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    return-object p0
.end method

.method static synthetic g(Lcom/vungle/mediation/VungleBannerAdapter;)Lcom/google/android/gms/ads/mediation/MediationBannerListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/mediation/VungleBannerAdapter;->e:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    return-object p0
.end method

.method static synthetic h()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/vungle/mediation/VungleBannerAdapter;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/vungle/mediation/VungleBannerAdapter;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/vungle/mediation/VungleBannerAdapter;->k()V

    return-void
.end method

.method private k()V
    .registers 10

    .line 1
    sget-object v0, Lcom/vungle/mediation/VungleBannerAdapter;->l:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create banner: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v1, p0, Lcom/vungle/mediation/VungleBannerAdapter;->i:Z

    if-nez v1, :cond_1b

    return-void

    .line 3
    :cond_1b
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xe

    const/4 v3, -0x1

    .line 4
    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0xf

    .line 5
    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 6
    iget-object v2, p0, Lcom/vungle/mediation/VungleBannerAdapter;->h:Lcom/vungle/mediation/VungleManager;

    iget-object v3, p0, Lcom/vungle/mediation/VungleBannerAdapter;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/vungle/mediation/VungleManager;->getVungleBannerAd(Ljava/lang/String;)Lcom/google/ads/mediation/vungle/a;

    move-result-object v2

    iput-object v2, p0, Lcom/vungle/mediation/VungleBannerAdapter;->f:Lcom/google/ads/mediation/vungle/a;

    .line 7
    new-instance v3, Lcom/google/ads/mediation/vungle/c;

    invoke-direct {v3, p0, p0, v2}, Lcom/google/ads/mediation/vungle/c;-><init>(Lcom/vungle/warren/PlayAdCallback;Lcom/vungle/mediation/VungleBannerAdapter;Lcom/google/ads/mediation/vungle/a;)V

    .line 8
    iget-object v2, p0, Lcom/vungle/mediation/VungleBannerAdapter;->b:Lcom/vungle/warren/AdConfig;

    invoke-virtual {v2}, Lcom/vungle/warren/AdConfig;->getAdSize()Lcom/vungle/warren/AdConfig$AdSize;

    move-result-object v2

    invoke-static {v2}, Lcom/vungle/warren/AdConfig$AdSize;->isBannerAdSize(Lcom/vungle/warren/AdConfig$AdSize;)Z

    move-result v2

    const-string v4, "com.google.ads.mediation.vungle"

    const-string v5, "Vungle SDK returned a successful load callback, but Banners.getBanner() or Vungle.getNativeAd() returned null."

    const/16 v6, 0x6a

    if-eqz v2, :cond_aa

    .line 9
    iget-object v2, p0, Lcom/vungle/mediation/VungleBannerAdapter;->a:Ljava/lang/String;

    new-instance v7, Lcom/vungle/warren/BannerAdConfig;

    iget-object v8, p0, Lcom/vungle/mediation/VungleBannerAdapter;->b:Lcom/vungle/warren/AdConfig;

    invoke-direct {v7, v8}, Lcom/vungle/warren/BannerAdConfig;-><init>(Lcom/vungle/warren/BaseAdConfig;)V

    .line 10
    invoke-static {v2, v7, v3}, Lcom/vungle/warren/Banners;->getBanner(Ljava/lang/String;Lcom/vungle/warren/BannerAdConfig;Lcom/vungle/warren/PlayAdCallback;)Lcom/vungle/warren/VungleBanner;

    move-result-object v2

    if-eqz v2, :cond_92

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "display banner:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object v0, p0, Lcom/vungle/mediation/VungleBannerAdapter;->f:Lcom/google/ads/mediation/vungle/a;

    if-eqz v0, :cond_7e

    .line 13
    invoke-virtual {v0, v2}, Lcom/google/ads/mediation/vungle/a;->f(Lcom/vungle/warren/VungleBanner;)V

    .line 14
    :cond_7e
    iget-boolean v0, p0, Lcom/vungle/mediation/VungleBannerAdapter;->j:Z

    invoke-virtual {p0, v0}, Lcom/vungle/mediation/VungleBannerAdapter;->q(Z)V

    .line 15
    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    iget-object v0, p0, Lcom/vungle/mediation/VungleBannerAdapter;->d:Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    if-eqz v0, :cond_c1

    iget-object v1, p0, Lcom/vungle/mediation/VungleBannerAdapter;->e:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    if-eqz v1, :cond_c1

    .line 17
    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->j(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V

    goto :goto_c1

    .line 18
    :cond_92
    new-instance v1, Lcom/google/android/gms/ads/AdError;

    invoke-direct {v1, v6, v5, v4}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdError;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-object v0, p0, Lcom/vungle/mediation/VungleBannerAdapter;->d:Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    if-eqz v0, :cond_c1

    iget-object v2, p0, Lcom/vungle/mediation/VungleBannerAdapter;->e:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    if-eqz v2, :cond_c1

    .line 21
    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->f(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;Lcom/google/android/gms/ads/AdError;)V

    goto :goto_c1

    .line 22
    :cond_aa
    new-instance v1, Lcom/google/android/gms/ads/AdError;

    invoke-direct {v1, v6, v5, v4}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdError;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iget-object v0, p0, Lcom/vungle/mediation/VungleBannerAdapter;->d:Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    if-eqz v0, :cond_c1

    iget-object v2, p0, Lcom/vungle/mediation/VungleBannerAdapter;->e:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    if-eqz v2, :cond_c1

    .line 25
    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->f(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;Lcom/google/android/gms/ads/AdError;)V

    :cond_c1
    :goto_c1
    return-void
.end method

.method private n()V
    .registers 4

    .line 1
    sget-object v0, Lcom/vungle/mediation/VungleBannerAdapter;->l:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadBanner: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/vungle/mediation/VungleBannerAdapter;->a:Ljava/lang/String;

    new-instance v1, Lcom/vungle/warren/BannerAdConfig;

    iget-object v2, p0, Lcom/vungle/mediation/VungleBannerAdapter;->b:Lcom/vungle/warren/AdConfig;

    invoke-direct {v1, v2}, Lcom/vungle/warren/BannerAdConfig;-><init>(Lcom/vungle/warren/BaseAdConfig;)V

    iget-object v2, p0, Lcom/vungle/mediation/VungleBannerAdapter;->k:Lcom/vungle/warren/LoadAdCallback;

    invoke-static {v0, v1, v2}, Lcom/vungle/warren/Banners;->loadBanner(Ljava/lang/String;Lcom/vungle/warren/BannerAdConfig;Lcom/vungle/warren/LoadAdCallback;)V

    return-void
.end method


# virtual methods
.method public creativeId(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public getAdLayout()Landroid/widget/RelativeLayout;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/mediation/VungleBannerAdapter;->g:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getUniqueRequestId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/mediation/VungleBannerAdapter;->c:Ljava/lang/String;

    return-object v0
.end method

.method public isRequestPending()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/vungle/mediation/VungleBannerAdapter;->i:Z

    return v0
.end method

.method j()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/mediation/VungleBannerAdapter;->f:Lcom/google/ads/mediation/vungle/a;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Lcom/google/ads/mediation/vungle/a;->a()V

    :cond_7
    return-void
.end method

.method l()V
    .registers 5

    .line 1
    sget-object v0, Lcom/vungle/mediation/VungleBannerAdapter;->l:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vungle banner adapter destroy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/vungle/mediation/VungleBannerAdapter;->j:Z

    .line 3
    iget-object v1, p0, Lcom/vungle/mediation/VungleBannerAdapter;->h:Lcom/vungle/mediation/VungleManager;

    iget-object v2, p0, Lcom/vungle/mediation/VungleBannerAdapter;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/mediation/VungleBannerAdapter;->f:Lcom/google/ads/mediation/vungle/a;

    invoke-virtual {v1, v2, v3}, Lcom/vungle/mediation/VungleManager;->removeActiveBannerAd(Ljava/lang/String;Lcom/google/ads/mediation/vungle/a;)V

    .line 4
    iget-object v1, p0, Lcom/vungle/mediation/VungleBannerAdapter;->f:Lcom/google/ads/mediation/vungle/a;

    if-eqz v1, :cond_2e

    .line 5
    invoke-virtual {v1}, Lcom/google/ads/mediation/vungle/a;->c()V

    .line 6
    iget-object v1, p0, Lcom/vungle/mediation/VungleBannerAdapter;->f:Lcom/google/ads/mediation/vungle/a;

    invoke-virtual {v1}, Lcom/google/ads/mediation/vungle/a;->b()V

    :cond_2e
    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lcom/vungle/mediation/VungleBannerAdapter;->f:Lcom/google/ads/mediation/vungle/a;

    .line 8
    iput-boolean v0, p0, Lcom/vungle/mediation/VungleBannerAdapter;->i:Z

    return-void
.end method

.method m()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/mediation/VungleBannerAdapter;->f:Lcom/google/ads/mediation/vungle/a;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Lcom/google/ads/mediation/vungle/a;->c()V

    :cond_7
    return-void
.end method

.method o()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/mediation/VungleBannerAdapter;->a:Ljava/lang/String;

    new-instance v1, Lcom/vungle/warren/BannerAdConfig;

    iget-object v2, p0, Lcom/vungle/mediation/VungleBannerAdapter;->b:Lcom/vungle/warren/AdConfig;

    invoke-direct {v1, v2}, Lcom/vungle/warren/BannerAdConfig;-><init>(Lcom/vungle/warren/BaseAdConfig;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/vungle/warren/Banners;->loadBanner(Ljava/lang/String;Lcom/vungle/warren/BannerAdConfig;Lcom/vungle/warren/LoadAdCallback;)V

    return-void
.end method

.method public onAdClick(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/vungle/mediation/VungleBannerAdapter;->d:Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    if-eqz p1, :cond_12

    iget-object v0, p0, Lcom/vungle/mediation/VungleBannerAdapter;->e:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    if-eqz v0, :cond_12

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->h(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V

    .line 3
    iget-object p1, p0, Lcom/vungle/mediation/VungleBannerAdapter;->e:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    iget-object v0, p0, Lcom/vungle/mediation/VungleBannerAdapter;->d:Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->q(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V

    :cond_12
    return-void
.end method

.method public onAdEnd(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onAdEnd(Ljava/lang/String;ZZ)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onAdLeftApplication(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/vungle/mediation/VungleBannerAdapter;->d:Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/vungle/mediation/VungleBannerAdapter;->e:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    if-eqz v0, :cond_b

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->n(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V

    :cond_b
    return-void
.end method

.method public onAdRewarded(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onAdStart(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/vungle/mediation/VungleBannerAdapter;->o()V

    return-void
.end method

.method public onAdViewed(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onError(Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V
    .registers 4

    .line 1
    invoke-static {p2}, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->getAdError(Lcom/vungle/warren/error/VungleException;)Lcom/google/android/gms/ads/AdError;

    move-result-object p1

    .line 2
    sget-object p2, Lcom/vungle/mediation/VungleBannerAdapter;->l:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p2, p0, Lcom/vungle/mediation/VungleBannerAdapter;->d:Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    if-eqz p2, :cond_18

    iget-object v0, p0, Lcom/vungle/mediation/VungleBannerAdapter;->e:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    if-eqz v0, :cond_18

    .line 4
    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->f(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;Lcom/google/android/gms/ads/AdError;)V

    :cond_18
    return-void
.end method

.method p(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdSize;Lcom/google/android/gms/ads/mediation/MediationBannerListener;)V
    .registers 7

    .line 1
    new-instance v0, Lcom/vungle/mediation/VungleBannerAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/vungle/mediation/VungleBannerAdapter$1;-><init>(Lcom/vungle/mediation/VungleBannerAdapter;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vungle/mediation/VungleBannerAdapter;->g:Landroid/widget/RelativeLayout;

    .line 2
    invoke-virtual {p3, p1}, Lcom/google/android/gms/ads/AdSize;->c(Landroid/content/Context;)I

    move-result v0

    if-gtz v0, :cond_28

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 4
    iget-object v1, p0, Lcom/vungle/mediation/VungleBannerAdapter;->b:Lcom/vungle/warren/AdConfig;

    invoke-virtual {v1}, Lcom/vungle/warren/AdConfig;->getAdSize()Lcom/vungle/warren/AdConfig$AdSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/warren/AdConfig$AdSize;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 5
    :cond_28
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 6
    invoke-virtual {p3, p1}, Lcom/google/android/gms/ads/AdSize;->e(Landroid/content/Context;)I

    move-result p3

    invoke-direct {v1, p3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 7
    iget-object p3, p0, Lcom/vungle/mediation/VungleBannerAdapter;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {p3, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    iput-object p4, p0, Lcom/vungle/mediation/VungleBannerAdapter;->e:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    .line 9
    sget-object p3, Lcom/vungle/mediation/VungleBannerAdapter;->l:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "requestBannerAd: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x1

    .line 10
    iput-boolean p3, p0, Lcom/vungle/mediation/VungleBannerAdapter;->i:Z

    .line 11
    invoke-static {}, Lcom/google/ads/mediation/vungle/b;->b()Lcom/google/ads/mediation/vungle/b;

    move-result-object p3

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance p4, Lcom/vungle/mediation/VungleBannerAdapter$2;

    invoke-direct {p4, p0}, Lcom/vungle/mediation/VungleBannerAdapter$2;-><init>(Lcom/vungle/mediation/VungleBannerAdapter;)V

    .line 13
    invoke-virtual {p3, p2, p1, p4}, Lcom/google/ads/mediation/vungle/b;->c(Ljava/lang/String;Landroid/content/Context;Lcom/google/ads/mediation/vungle/b$d;)V

    return-void
.end method

.method q(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/mediation/VungleBannerAdapter;->f:Lcom/google/ads/mediation/vungle/a;

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    iput-boolean p1, p0, Lcom/vungle/mediation/VungleBannerAdapter;->j:Z

    .line 3
    invoke-virtual {v0}, Lcom/google/ads/mediation/vungle/a;->e()Lcom/vungle/warren/VungleBanner;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 4
    iget-object v0, p0, Lcom/vungle/mediation/VungleBannerAdapter;->f:Lcom/google/ads/mediation/vungle/a;

    invoke-virtual {v0}, Lcom/google/ads/mediation/vungle/a;->e()Lcom/vungle/warren/VungleBanner;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vungle/warren/VungleBanner;->setAdVisibility(Z)V

    :cond_16
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " [placementId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/mediation/VungleBannerAdapter;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " # uniqueRequestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/mediation/VungleBannerAdapter;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " # hashcode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.mediation.VungleBannerAdapter.AnonymousClass1 (com.vungle.mediation.VungleBannerAdapter$1)
.class Lcom/vungle/mediation/VungleBannerAdapter$1;
.super Landroid/widget/RelativeLayout;
.source "VungleBannerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/mediation/VungleBannerAdapter;->p(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdSize;Lcom/google/android/gms/ads/mediation/MediationBannerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/vungle/mediation/VungleBannerAdapter;


# direct methods
.method constructor <init>(Lcom/vungle/mediation/VungleBannerAdapter;Landroid/content/Context;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/mediation/VungleBannerAdapter$1;->o:Lcom/vungle/mediation/VungleBannerAdapter;

    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/vungle/mediation/VungleBannerAdapter$1;->o:Lcom/vungle/mediation/VungleBannerAdapter;

    invoke-virtual {v0}, Lcom/vungle/mediation/VungleBannerAdapter;->j()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/vungle/mediation/VungleBannerAdapter$1;->o:Lcom/vungle/mediation/VungleBannerAdapter;

    invoke-virtual {v0}, Lcom/vungle/mediation/VungleBannerAdapter;->m()V

    return-void
.end method

###### Class com.vungle.mediation.VungleBannerAdapter.AnonymousClass2 (com.vungle.mediation.VungleBannerAdapter$2)
.class Lcom/vungle/mediation/VungleBannerAdapter$2;
.super Ljava/lang/Object;
.source "VungleBannerAdapter.java"

# interfaces
.implements Lcom/google/ads/mediation/vungle/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/mediation/VungleBannerAdapter;->p(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdSize;Lcom/google/android/gms/ads/mediation/MediationBannerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/mediation/VungleBannerAdapter;


# direct methods
.method constructor <init>(Lcom/vungle/mediation/VungleBannerAdapter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/mediation/VungleBannerAdapter$2;->a:Lcom/vungle/mediation/VungleBannerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeError(Lcom/google/android/gms/ads/AdError;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/vungle/mediation/VungleBannerAdapter$2;->a:Lcom/vungle/mediation/VungleBannerAdapter;

    invoke-static {v0}, Lcom/vungle/mediation/VungleBannerAdapter;->d(Lcom/vungle/mediation/VungleBannerAdapter;)Lcom/vungle/mediation/VungleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/mediation/VungleBannerAdapter$2;->a:Lcom/vungle/mediation/VungleBannerAdapter;

    invoke-static {v1}, Lcom/vungle/mediation/VungleBannerAdapter;->b(Lcom/vungle/mediation/VungleBannerAdapter;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/mediation/VungleBannerAdapter$2;->a:Lcom/vungle/mediation/VungleBannerAdapter;

    invoke-static {v2}, Lcom/vungle/mediation/VungleBannerAdapter;->c(Lcom/vungle/mediation/VungleBannerAdapter;)Lcom/google/ads/mediation/vungle/a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vungle/mediation/VungleManager;->removeActiveBannerAd(Ljava/lang/String;Lcom/google/ads/mediation/vungle/a;)V

    .line 2
    iget-object v0, p0, Lcom/vungle/mediation/VungleBannerAdapter$2;->a:Lcom/vungle/mediation/VungleBannerAdapter;

    invoke-static {v0}, Lcom/vungle/mediation/VungleBannerAdapter;->e(Lcom/vungle/mediation/VungleBannerAdapter;)Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/vungle/mediation/VungleBannerAdapter$2;->a:Lcom/vungle/mediation/VungleBannerAdapter;

    invoke-static {v0}, Lcom/vungle/mediation/VungleBannerAdapter;->f(Lcom/vungle/mediation/VungleBannerAdapter;)Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    move-result-object v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/vungle/mediation/VungleBannerAdapter$2;->a:Lcom/vungle/mediation/VungleBannerAdapter;

    .line 3
    invoke-static {v0}, Lcom/vungle/mediation/VungleBannerAdapter;->g(Lcom/vungle/mediation/VungleBannerAdapter;)Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 4
    invoke-static {}, Lcom/vungle/mediation/VungleBannerAdapter;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/vungle/mediation/VungleBannerAdapter$2;->a:Lcom/vungle/mediation/VungleBannerAdapter;

    invoke-static {v0}, Lcom/vungle/mediation/VungleBannerAdapter;->g(Lcom/vungle/mediation/VungleBannerAdapter;)Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/mediation/VungleBannerAdapter$2;->a:Lcom/vungle/mediation/VungleBannerAdapter;

    invoke-static {v1}, Lcom/vungle/mediation/VungleBannerAdapter;->f(Lcom/vungle/mediation/VungleBannerAdapter;)Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->f(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;Lcom/google/android/gms/ads/AdError;)V

    :cond_47
    return-void
.end method

.method public onInitializeSuccess()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/mediation/VungleBannerAdapter$2;->a:Lcom/vungle/mediation/VungleBannerAdapter;

    invoke-static {v0}, Lcom/vungle/mediation/VungleBannerAdapter;->a(Lcom/vungle/mediation/VungleBannerAdapter;)V

    return-void
.end method

###### Class com.vungle.mediation.VungleBannerAdapter.AnonymousClass3 (com.vungle.mediation.VungleBannerAdapter$3)
.class Lcom/vungle/mediation/VungleBannerAdapter$3;
.super Ljava/lang/Object;
.source "VungleBannerAdapter.java"

# interfaces
.implements Lcom/vungle/warren/LoadAdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/mediation/VungleBannerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/mediation/VungleBannerAdapter;


# direct methods
.method constructor <init>(Lcom/vungle/mediation/VungleBannerAdapter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/mediation/VungleBannerAdapter$3;->a:Lcom/vungle/mediation/VungleBannerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoad(Ljava/lang/String;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/vungle/mediation/VungleBannerAdapter$3;->a:Lcom/vungle/mediation/VungleBannerAdapter;

    invoke-static {p1}, Lcom/vungle/mediation/VungleBannerAdapter;->i(Lcom/vungle/mediation/VungleBannerAdapter;)V

    return-void
.end method

.method public onError(Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/vungle/mediation/VungleBannerAdapter$3;->a:Lcom/vungle/mediation/VungleBannerAdapter;

    invoke-static {p1}, Lcom/vungle/mediation/VungleBannerAdapter;->d(Lcom/vungle/mediation/VungleBannerAdapter;)Lcom/vungle/mediation/VungleManager;

    move-result-object p1

    iget-object v0, p0, Lcom/vungle/mediation/VungleBannerAdapter$3;->a:Lcom/vungle/mediation/VungleBannerAdapter;

    invoke-static {v0}, Lcom/vungle/mediation/VungleBannerAdapter;->b(Lcom/vungle/mediation/VungleBannerAdapter;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/mediation/VungleBannerAdapter$3;->a:Lcom/vungle/mediation/VungleBannerAdapter;

    invoke-static {v1}, Lcom/vungle/mediation/VungleBannerAdapter;->c(Lcom/vungle/mediation/VungleBannerAdapter;)Lcom/google/ads/mediation/vungle/a;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/vungle/mediation/VungleManager;->removeActiveBannerAd(Ljava/lang/String;Lcom/google/ads/mediation/vungle/a;)V

    .line 2
    iget-object p1, p0, Lcom/vungle/mediation/VungleBannerAdapter$3;->a:Lcom/vungle/mediation/VungleBannerAdapter;

    invoke-static {p1}, Lcom/vungle/mediation/VungleBannerAdapter;->e(Lcom/vungle/mediation/VungleBannerAdapter;)Z

    move-result p1

    if-eqz p1, :cond_49

    iget-object p1, p0, Lcom/vungle/mediation/VungleBannerAdapter$3;->a:Lcom/vungle/mediation/VungleBannerAdapter;

    invoke-static {p1}, Lcom/vungle/mediation/VungleBannerAdapter;->f(Lcom/vungle/mediation/VungleBannerAdapter;)Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    move-result-object p1

    if-eqz p1, :cond_49

    iget-object p1, p0, Lcom/vungle/mediation/VungleBannerAdapter$3;->a:Lcom/vungle/mediation/VungleBannerAdapter;

    invoke-static {p1}, Lcom/vungle/mediation/VungleBannerAdapter;->g(Lcom/vungle/mediation/VungleBannerAdapter;)Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    move-result-object p1

    if-eqz p1, :cond_49

    .line 3
    invoke-static {p2}, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->getAdError(Lcom/vungle/warren/error/VungleException;)Lcom/google/android/gms/ads/AdError;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->c()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TAG"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object p2, p0, Lcom/vungle/mediation/VungleBannerAdapter$3;->a:Lcom/vungle/mediation/VungleBannerAdapter;

    invoke-static {p2}, Lcom/vungle/mediation/VungleBannerAdapter;->g(Lcom/vungle/mediation/VungleBannerAdapter;)Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    move-result-object p2

    iget-object v0, p0, Lcom/vungle/mediation/VungleBannerAdapter$3;->a:Lcom/vungle/mediation/VungleBannerAdapter;

    invoke-static {v0}, Lcom/vungle/mediation/VungleBannerAdapter;->f(Lcom/vungle/mediation/VungleBannerAdapter;)Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->f(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;Lcom/google/android/gms/ads/AdError;)V

    :cond_49
    return-void
.end method
