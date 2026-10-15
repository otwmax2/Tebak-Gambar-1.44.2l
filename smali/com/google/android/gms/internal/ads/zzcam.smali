###### Class com.google.android.gms.internal.ads.zzcam (com.google.android.gms.internal.ads.zzcam)
.class final Lcom/google/android/gms/internal/ads/zzcam;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:Lcom/google/android/gms/internal/ads/zzcan;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcan;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcam;->o:Lcom/google/android/gms/internal/ads/zzcan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcam;->o:Lcom/google/android/gms/internal/ads/zzcan;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcan;->H(Lcom/google/android/gms/internal/ads/zzcan;)Lcom/google/android/gms/internal/ads/zzcao;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcan;->H(Lcom/google/android/gms/internal/ads/zzcan;)Lcom/google/android/gms/internal/ads/zzcao;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcao;->d()V

    :cond_f
    return-void
.end method
