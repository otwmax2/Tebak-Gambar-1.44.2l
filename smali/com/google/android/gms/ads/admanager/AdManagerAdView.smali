###### Class com.google.android.gms.ads.admanager.AdManagerAdView (com.google.android.gms.ads.admanager.AdManagerAdView)
.class public final Lcom/google/android/gms/ads/admanager/AdManagerAdView;
.super Lcom/google/android/gms/ads/BaseAdView;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/ads/BaseAdView;-><init>(Landroid/content/Context;I)V

    const-string v0, "Context cannot be null"

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method final synthetic e(Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;)V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->o:Lcom/google/android/gms/ads/internal/client/zzea;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdRequest;->a()Lcom/google/android/gms/ads/internal/client/zzdx;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzea;->p(Lcom/google/android/gms/ads/internal/client/zzdx;)V
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p1

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbsf;->c(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbsh;

    move-result-object v0

    const-string v1, "AdManagerAdView.loadAd"

    .line 3
    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzbsh;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final f(Lcom/google/android/gms/ads/internal/client/zzbu;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->o:Lcom/google/android/gms/ads/internal/client/zzea;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzea;->B(Lcom/google/android/gms/ads/internal/client/zzbu;)Z

    move-result p1

    return p1
.end method

.method public getAdSizes()[Lcom/google/android/gms/ads/AdSize;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->o:Lcom/google/android/gms/ads/internal/client/zzea;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzea;->a()[Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    return-object v0
.end method

.method public getAppEventListener()Lcom/google/android/gms/ads/admanager/AppEventListener;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->o:Lcom/google/android/gms/ads/internal/client/zzea;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzea;->k()Lcom/google/android/gms/ads/admanager/AppEventListener;

    move-result-object v0

    return-object v0
.end method

.method public getVideoController()Lcom/google/android/gms/ads/VideoController;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->o:Lcom/google/android/gms/ads/internal/client/zzea;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzea;->i()Lcom/google/android/gms/ads/VideoController;

    move-result-object v0

    return-object v0
.end method

.method public getVideoOptions()Lcom/google/android/gms/ads/VideoOptions;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->o:Lcom/google/android/gms/ads/internal/client/zzea;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzea;->j()Lcom/google/android/gms/ads/VideoOptions;

    move-result-object v0

    return-object v0
.end method

.method public varargs setAdSizes([Lcom/google/android/gms/ads/AdSize;)V
    .registers 3

    if-eqz p1, :cond_b

    array-length v0, p1

    if-lez v0, :cond_b

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->o:Lcom/google/android/gms/ads/internal/client/zzea;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzea;->v([Lcom/google/android/gms/ads/AdSize;)V

    return-void

    .line 3
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The supported ad sizes must contain at least one valid ad size."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAppEventListener(Lcom/google/android/gms/ads/admanager/AppEventListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->o:Lcom/google/android/gms/ads/internal/client/zzea;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzea;->x(Lcom/google/android/gms/ads/admanager/AppEventListener;)V

    return-void
.end method

.method public setManualImpressionsEnabled(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->o:Lcom/google/android/gms/ads/internal/client/zzea;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzea;->y(Z)V

    return-void
.end method

.method public setVideoOptions(Lcom/google/android/gms/ads/VideoOptions;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->o:Lcom/google/android/gms/ads/internal/client/zzea;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzea;->A(Lcom/google/android/gms/ads/VideoOptions;)V

    return-void
.end method
