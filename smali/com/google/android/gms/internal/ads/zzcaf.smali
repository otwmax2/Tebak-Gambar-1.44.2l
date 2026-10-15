###### Class com.google.android.gms.internal.ads.zzcaf (com.google.android.gms.internal.ads.zzcaf)
.class final Lcom/google/android/gms/internal/ads/zzcaf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:Landroid/media/MediaPlayer;

.field final synthetic p:Lcom/google/android/gms/internal/ads/zzcan;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcan;Landroid/media/MediaPlayer;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcaf;->p:Lcom/google/android/gms/internal/ads/zzcan;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcaf;->o:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcaf;->p:Lcom/google/android/gms/internal/ads/zzcan;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcaf;->o:Landroid/media/MediaPlayer;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzcan;->J(Lcom/google/android/gms/internal/ads/zzcan;Landroid/media/MediaPlayer;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcaf;->p:Lcom/google/android/gms/internal/ads/zzcan;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcan;->H(Lcom/google/android/gms/internal/ads/zzcan;)Lcom/google/android/gms/internal/ads/zzcao;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcan;->H(Lcom/google/android/gms/internal/ads/zzcan;)Lcom/google/android/gms/internal/ads/zzcao;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcao;->c()V

    :cond_16
    return-void
.end method
