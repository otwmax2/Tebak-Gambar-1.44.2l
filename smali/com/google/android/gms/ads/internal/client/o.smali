###### Class com.google.android.gms.ads.internal.client.o (com.google.android.gms.ads.internal.client.o)
.class final Lcom/google/android/gms/ads/internal/client/o;
.super Lcom/google/android/gms/ads/internal/client/zzaz;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# instance fields
.field final synthetic c:Lcom/google/android/gms/ads/internal/client/zzea;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/client/zzea;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/o;->c:Lcom/google/android/gms/ads/internal/client/zzea;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzaz;-><init>()V

    return-void
.end method


# virtual methods
.method public final m(Lcom/google/android/gms/ads/LoadAdError;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/o;->c:Lcom/google/android/gms/ads/internal/client/zzea;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/zzea;->h(Lcom/google/android/gms/ads/internal/client/zzea;)Lcom/google/android/gms/ads/VideoController;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzea;->l()Lcom/google/android/gms/ads/internal/client/zzdq;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/VideoController;->c(Lcom/google/android/gms/ads/internal/client/zzdq;)V

    .line 2
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzaz;->m(Lcom/google/android/gms/ads/LoadAdError;)V

    return-void
.end method

.method public final o()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/o;->c:Lcom/google/android/gms/ads/internal/client/zzea;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/zzea;->h(Lcom/google/android/gms/ads/internal/client/zzea;)Lcom/google/android/gms/ads/VideoController;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzea;->l()Lcom/google/android/gms/ads/internal/client/zzdq;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/VideoController;->c(Lcom/google/android/gms/ads/internal/client/zzdq;)V

    .line 2
    invoke-super {p0}, Lcom/google/android/gms/ads/internal/client/zzaz;->o()V

    return-void
.end method
