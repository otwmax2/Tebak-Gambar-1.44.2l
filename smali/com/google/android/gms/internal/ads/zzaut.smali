###### Class com.google.android.gms.internal.ads.zzaut (com.google.android.gms.internal.ads.zzaut)
.class public final Lcom/google/android/gms/internal/ads/zzaut;
.super Lcom/google/android/gms/internal/ads/zzava;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# instance fields
.field private final o:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

.field private final p:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzava;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaut;->o:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaut;->p:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final l8(Lcom/google/android/gms/ads/internal/client/zze;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaut;->o:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/client/zze;->W3()Lcom/google/android/gms/ads/LoadAdError;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaut;->o:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/AdLoadCallback;->a(Lcom/google/android/gms/ads/LoadAdError;)V

    :cond_d
    return-void
.end method

.method public final s6(Lcom/google/android/gms/internal/ads/zzauy;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaut;->o:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

    if-eqz v0, :cond_10

    new-instance v0, Lcom/google/android/gms/internal/ads/zzauu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaut;->p:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzauu;-><init>(Lcom/google/android/gms/internal/ads/zzauy;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaut;->o:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/AdLoadCallback;->b(Ljava/lang/Object;)V

    :cond_10
    return-void
.end method

.method public final z(I)V
    .registers 2

    return-void
.end method
