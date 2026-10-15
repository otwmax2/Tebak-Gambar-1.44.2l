###### Class com.google.android.gms.internal.ads.zzecn (com.google.android.gms.internal.ads.zzecn)
.class final Lcom/google/android/gms/internal/ads/zzecn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfuf;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/zzeco;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzeco;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzecn;->a:Lcom/google/android/gms/internal/ads/zzeco;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzecn;->a:Lcom/google/android/gms/internal/ads/zzeco;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeco;->d(Lcom/google/android/gms/internal/ads/zzeco;)Lcom/google/android/gms/internal/ads/zzcph;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcph;->d()Lcom/google/android/gms/internal/ads/zzcrt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcrt;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzecn;->a:Lcom/google/android/gms/internal/ads/zzeco;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzeco;->e(Lcom/google/android/gms/internal/ads/zzeco;)Lcom/google/android/gms/internal/ads/zzcuq;

    move-result-object v1

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzcuq;->v(Lcom/google/android/gms/ads/internal/client/zze;)V

    .line 3
    iget v0, v0, Lcom/google/android/gms/ads/internal/client/zze;->o:I

    const-string v1, "DelayedBannerAd.onFailure"

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzezr;->b(ILjava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic c(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcok;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcqm;->b()V

    return-void
.end method
