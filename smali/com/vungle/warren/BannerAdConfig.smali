###### Class com.vungle.warren.BannerAdConfig (com.vungle.warren.BannerAdConfig)
.class public Lcom/vungle/warren/BannerAdConfig;
.super Lcom/vungle/warren/BaseAdConfig;
.source "BannerAdConfig.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/vungle/warren/BaseAdConfig;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/vungle/warren/AdConfig$AdSize;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lcom/vungle/warren/BaseAdConfig;-><init>(Lcom/vungle/warren/AdConfig$AdSize;)V

    return-void
.end method

.method public constructor <init>(Lcom/vungle/warren/BaseAdConfig;)V
    .registers 2

    .line 3
    invoke-direct {p0, p1}, Lcom/vungle/warren/BaseAdConfig;-><init>(Lcom/vungle/warren/BaseAdConfig;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getAdSize()Lcom/vungle/warren/AdConfig$AdSize;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/vungle/warren/BaseAdConfig;->getAdSize()Lcom/vungle/warren/AdConfig$AdSize;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSettings()I
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/vungle/warren/BaseAdConfig;->getSettings()I

    move-result v0

    return v0
.end method

.method public bridge synthetic setAdSize(Lcom/vungle/warren/AdConfig$AdSize;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/vungle/warren/BaseAdConfig;->setAdSize(Lcom/vungle/warren/AdConfig$AdSize;)V

    return-void
.end method

.method public bridge synthetic setMuted(Z)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/vungle/warren/BaseAdConfig;->setMuted(Z)V

    return-void
.end method
