###### Class com.google.android.gms.internal.ads.zzjf (com.google.android.gms.internal.ads.zzjf)
.class final Lcom/google/android/gms/internal/ads/zzjf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzkm;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/zzjm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzjm;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzjf;->a:Lcom/google/android/gms/internal/ads/zzjm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjf;->a:Lcom/google/android/gms/internal/ads/zzjm;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzjm;->V(Lcom/google/android/gms/internal/ads/zzjm;Z)V

    return-void
.end method

.method public final zzb()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjf;->a:Lcom/google/android/gms/internal/ads/zzjm;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzjm;->S(Lcom/google/android/gms/internal/ads/zzjm;)Lcom/google/android/gms/internal/ads/zzdv;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdv;->Q(I)Z

    return-void
.end method
