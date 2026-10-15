###### Class com.google.android.gms.internal.ads.zzbvo (com.google.android.gms.internal.ads.zzbvo)
.class public final Lcom/google/android/gms/internal/ads/zzbvo;
.super Lcom/google/android/gms/internal/ads/zzbuy;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# instance fields
.field private o:Lcom/google/android/gms/ads/FullScreenContentCallback;

.field private p:Lcom/google/android/gms/ads/OnUserEarnedRewardListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbuy;-><init>()V

    return-void
.end method


# virtual methods
.method public final Q8(Lcom/google/android/gms/ads/internal/client/zze;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvo;->o:Lcom/google/android/gms/ads/FullScreenContentCallback;

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/client/zze;->V3()Lcom/google/android/gms/ads/AdError;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/FullScreenContentCallback;->c(Lcom/google/android/gms/ads/AdError;)V

    :cond_b
    return-void
.end method

.method public final Sa(Lcom/google/android/gms/ads/FullScreenContentCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvo;->o:Lcom/google/android/gms/ads/FullScreenContentCallback;

    return-void
.end method

.method public final Ta(Lcom/google/android/gms/ads/OnUserEarnedRewardListener;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvo;->p:Lcom/google/android/gms/ads/OnUserEarnedRewardListener;

    return-void
.end method

.method public final b()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvo;->o:Lcom/google/android/gms/ads/FullScreenContentCallback;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->a()V

    :cond_7
    return-void
.end method

.method public final c()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvo;->o:Lcom/google/android/gms/ads/FullScreenContentCallback;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->d()V

    :cond_7
    return-void
.end method

.method public final e()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvo;->o:Lcom/google/android/gms/ads/FullScreenContentCallback;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->b()V

    :cond_7
    return-void
.end method

.method public final g8(Lcom/google/android/gms/internal/ads/zzbut;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvo;->p:Lcom/google/android/gms/ads/OnUserEarnedRewardListener;

    if-eqz v0, :cond_c

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbvg;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzbvg;-><init>(Lcom/google/android/gms/internal/ads/zzbut;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/OnUserEarnedRewardListener;->a(Lcom/google/android/gms/ads/rewarded/RewardItem;)V

    :cond_c
    return-void
.end method

.method public final h()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvo;->o:Lcom/google/android/gms/ads/FullScreenContentCallback;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->e()V

    :cond_7
    return-void
.end method

.method public final j0(I)V
    .registers 2

    return-void
.end method
