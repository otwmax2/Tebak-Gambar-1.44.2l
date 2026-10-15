###### Class com.google.android.gms.ads.internal.client.zzbb (com.google.android.gms.ads.internal.client.zzbb)
.class public final Lcom/google/android/gms/ads/internal/client/zzbb;
.super Lcom/google/android/gms/ads/internal/client/zzch;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# instance fields
.field private final o:Lcom/google/android/gms/ads/FullScreenContentCallback;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/FullScreenContentCallback;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzch;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzbb;->o:Lcom/google/android/gms/ads/FullScreenContentCallback;

    return-void
.end method


# virtual methods
.method public final L0(Lcom/google/android/gms/ads/internal/client/zze;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzbb;->o:Lcom/google/android/gms/ads/FullScreenContentCallback;

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/client/zze;->V3()Lcom/google/android/gms/ads/AdError;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/FullScreenContentCallback;->c(Lcom/google/android/gms/ads/AdError;)V

    :cond_b
    return-void
.end method

.method public final a()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzbb;->o:Lcom/google/android/gms/ads/FullScreenContentCallback;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->b()V

    :cond_7
    return-void
.end method

.method public final b()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzbb;->o:Lcom/google/android/gms/ads/FullScreenContentCallback;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->d()V

    :cond_7
    return-void
.end method

.method public final c()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzbb;->o:Lcom/google/android/gms/ads/FullScreenContentCallback;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->e()V

    :cond_7
    return-void
.end method

.method public final zzb()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzbb;->o:Lcom/google/android/gms/ads/FullScreenContentCallback;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->a()V

    :cond_7
    return-void
.end method
