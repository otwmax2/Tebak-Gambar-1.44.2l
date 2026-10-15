###### Class com.google.ads.mediation.vungle.c (com.google.ads.mediation.vungle.c)
.class public Lcom/google/ads/mediation/vungle/c;
.super Ljava/lang/Object;
.source "VunglePlayAdCallback.java"

# interfaces
.implements Lcom/vungle/warren/PlayAdCallback;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/vungle/mediation/VungleBannerAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/vungle/warren/PlayAdCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/ads/mediation/vungle/a;


# direct methods
.method public constructor <init>(Lcom/vungle/warren/PlayAdCallback;Lcom/vungle/mediation/VungleBannerAdapter;Lcom/google/ads/mediation/vungle/a;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/mediation/vungle/c;->b:Ljava/lang/ref/WeakReference;

    .line 3
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/ads/mediation/vungle/c;->a:Ljava/lang/ref/WeakReference;

    .line 4
    iput-object p3, p0, Lcom/google/ads/mediation/vungle/c;->c:Lcom/google/ads/mediation/vungle/a;

    return-void
.end method


# virtual methods
.method public creativeId(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onAdClick(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/PlayAdCallback;

    .line 2
    iget-object v1, p0, Lcom/google/ads/mediation/vungle/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/mediation/VungleBannerAdapter;

    if-eqz v0, :cond_1d

    if-eqz v1, :cond_1d

    .line 3
    invoke-virtual {v1}, Lcom/vungle/mediation/VungleBannerAdapter;->isRequestPending()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 4
    invoke-interface {v0, p1}, Lcom/vungle/warren/PlayAdCallback;->onAdClick(Ljava/lang/String;)V

    :cond_1d
    return-void
.end method

.method public onAdEnd(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/PlayAdCallback;

    .line 2
    iget-object v1, p0, Lcom/google/ads/mediation/vungle/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/mediation/VungleBannerAdapter;

    if-eqz v0, :cond_1d

    if-eqz v1, :cond_1d

    .line 3
    invoke-virtual {v1}, Lcom/vungle/mediation/VungleBannerAdapter;->isRequestPending()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 4
    invoke-interface {v0, p1}, Lcom/vungle/warren/PlayAdCallback;->onAdEnd(Ljava/lang/String;)V

    :cond_1d
    return-void
.end method

.method public onAdEnd(Ljava/lang/String;ZZ)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onAdLeftApplication(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/PlayAdCallback;

    .line 2
    iget-object v1, p0, Lcom/google/ads/mediation/vungle/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/mediation/VungleBannerAdapter;

    if-eqz v0, :cond_1d

    if-eqz v1, :cond_1d

    .line 3
    invoke-virtual {v1}, Lcom/vungle/mediation/VungleBannerAdapter;->isRequestPending()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 4
    invoke-interface {v0, p1}, Lcom/vungle/warren/PlayAdCallback;->onAdLeftApplication(Ljava/lang/String;)V

    :cond_1d
    return-void
.end method

.method public onAdRewarded(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/PlayAdCallback;

    .line 2
    iget-object v1, p0, Lcom/google/ads/mediation/vungle/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/mediation/VungleBannerAdapter;

    if-eqz v0, :cond_1d

    if-eqz v1, :cond_1d

    .line 3
    invoke-virtual {v1}, Lcom/vungle/mediation/VungleBannerAdapter;->isRequestPending()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 4
    invoke-interface {v0, p1}, Lcom/vungle/warren/PlayAdCallback;->onAdRewarded(Ljava/lang/String;)V

    :cond_1d
    return-void
.end method

.method public onAdStart(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/PlayAdCallback;

    .line 2
    iget-object v1, p0, Lcom/google/ads/mediation/vungle/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/mediation/VungleBannerAdapter;

    if-eqz v0, :cond_1d

    if-eqz v1, :cond_1d

    .line 3
    invoke-virtual {v1}, Lcom/vungle/mediation/VungleBannerAdapter;->isRequestPending()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 4
    invoke-interface {v0, p1}, Lcom/vungle/warren/PlayAdCallback;->onAdStart(Ljava/lang/String;)V

    :cond_1d
    return-void
.end method

.method public onAdViewed(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onError(Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V
    .registers 5

    .line 1
    invoke-static {}, Lcom/vungle/mediation/VungleManager;->getInstance()Lcom/vungle/mediation/VungleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/vungle/c;->c:Lcom/google/ads/mediation/vungle/a;

    invoke-virtual {v0, p1, v1}, Lcom/vungle/mediation/VungleManager;->removeActiveBannerAd(Ljava/lang/String;Lcom/google/ads/mediation/vungle/a;)V

    .line 2
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/PlayAdCallback;

    .line 3
    iget-object v1, p0, Lcom/google/ads/mediation/vungle/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/mediation/VungleBannerAdapter;

    if-eqz v0, :cond_26

    if-eqz v1, :cond_26

    .line 4
    invoke-virtual {v1}, Lcom/vungle/mediation/VungleBannerAdapter;->isRequestPending()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 5
    invoke-interface {v0, p1, p2}, Lcom/vungle/warren/PlayAdCallback;->onError(Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V

    :cond_26
    return-void
.end method
