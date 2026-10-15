###### Class com.google.android.gms.internal.ads.zzdwy (com.google.android.gms.internal.ads.zzdwy)
.class public final Lcom/google/android/gms/internal/ads/zzdwy;
.super Lcom/google/android/gms/internal/ads/zzbtf;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field final synthetic o:Lcom/google/android/gms/internal/ads/zzdwz;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/zzdwz;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdwy;->o:Lcom/google/android/gms/internal/ads/zzdwz;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbtf;-><init>()V

    return-void
.end method


# virtual methods
.method public final S0(Landroid/os/ParcelFileDescriptor;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwy;->o:Lcom/google/android/gms/internal/ads/zzdwz;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdwz;->o:Lcom/google/android/gms/internal/ads/zzbzs;

    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v1, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbzs;->c(Ljava/lang/Object;)Z

    return-void
.end method

.method public final q1(Lcom/google/android/gms/ads/internal/util/zzaz;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwy;->o:Lcom/google/android/gms/internal/ads/zzdwz;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdwz;->o:Lcom/google/android/gms/internal/ads/zzbzs;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/util/zzaz;->V3()Lcom/google/android/gms/ads/internal/util/zzay;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbzs;->d(Ljava/lang/Throwable;)Z

    return-void
.end method
