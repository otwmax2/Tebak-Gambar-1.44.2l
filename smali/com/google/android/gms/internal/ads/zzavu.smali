###### Class com.google.android.gms.internal.ads.zzavu (com.google.android.gms.internal.ads.zzavu)
.class final Lcom/google/android/gms/internal/ads/zzavu;
.super Lcom/google/android/gms/internal/ads/zzbzs;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field final synthetic p:Lcom/google/android/gms/internal/ads/zzawa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzawa;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavu;->p:Lcom/google/android/gms/internal/ads/zzawa;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbzs;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavu;->p:Lcom/google/android/gms/internal/ads/zzawa;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzawa;->e(Lcom/google/android/gms/internal/ads/zzawa;)V

    .line 2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbzs;->cancel(Z)Z

    move-result p1

    return p1
.end method
