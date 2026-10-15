###### Class com.google.android.gms.internal.ads.zzbgd (com.google.android.gms.internal.ads.zzbgd)
.class final Lcom/google/android/gms/internal/ads/zzbgd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

.field final synthetic p:Lcom/google/android/gms/ads/internal/client/zzbu;

.field final synthetic q:Lcom/google/android/gms/internal/ads/zzbge;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbge;Lcom/google/android/gms/ads/admanager/AdManagerAdView;Lcom/google/android/gms/ads/internal/client/zzbu;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgd;->q:Lcom/google/android/gms/internal/ads/zzbge;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbgd;->o:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbgd;->p:Lcom/google/android/gms/ads/internal/client/zzbu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->o:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbgd;->p:Lcom/google/android/gms/ads/internal/client/zzbu;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->f(Lcom/google/android/gms/ads/internal/client/zzbu;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgd;->q:Lcom/google/android/gms/internal/ads/zzbge;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbge;->Ta(Lcom/google/android/gms/internal/ads/zzbge;)Lcom/google/android/gms/ads/formats/OnAdManagerAdViewLoadedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbgd;->o:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    .line 2
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/formats/OnAdManagerAdViewLoadedListener;->a(Lcom/google/android/gms/ads/admanager/AdManagerAdView;)V

    return-void

    :cond_16
    const-string v0, "Could not bind."

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    return-void
.end method
