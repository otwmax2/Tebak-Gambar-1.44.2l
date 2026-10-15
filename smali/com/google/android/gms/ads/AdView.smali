###### Class com.google.android.gms.ads.AdView (com.google.android.gms.ads.AdView)
.class public final Lcom/google/android/gms/ads/AdView;
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
.method public final e()Lcom/google/android/gms/ads/VideoController;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->o:Lcom/google/android/gms/ads/internal/client/zzea;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzea;->i()Lcom/google/android/gms/ads/VideoController;

    move-result-object v0

    return-object v0
.end method
