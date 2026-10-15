###### Class com.google.android.gms.internal.ads.zzfms (com.google.android.gms.internal.ads.zzfms)
.class final Lcom/google/android/gms/internal/ads/zzfms;
.super Lcom/google/android/gms/internal/ads/zzfml;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field final synthetic p:Lcom/google/android/gms/internal/ads/zzfmu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfmu;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfms;->p:Lcom/google/android/gms/internal/ads/zzfmu;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfml;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfms;->p:Lcom/google/android/gms/internal/ads/zzfmu;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfmu;->o:Lcom/google/android/gms/internal/ads/zzfmv;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfmv;->r(Lcom/google/android/gms/internal/ads/zzfmv;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfms;->p:Lcom/google/android/gms/internal/ads/zzfmu;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfmu;->o:Lcom/google/android/gms/internal/ads/zzfmv;

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfmv;->m(Lcom/google/android/gms/internal/ads/zzfmv;Landroid/os/IInterface;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfms;->p:Lcom/google/android/gms/internal/ads/zzfmu;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfmu;->o:Lcom/google/android/gms/internal/ads/zzfmv;

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfmv;->l(Lcom/google/android/gms/internal/ads/zzfmv;Z)V

    return-void
.end method
