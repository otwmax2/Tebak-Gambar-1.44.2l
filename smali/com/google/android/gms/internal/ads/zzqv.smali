###### Class com.google.android.gms.internal.ads.zzqv (com.google.android.gms.internal.ads.zzqv)
.class public Lcom/google/android/gms/internal/ads/zzqv;
.super Lcom/google/android/gms/internal/ads/zzgp;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field public final o:Lcom/google/android/gms/internal/ads/zzqx;

.field public final p:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzqx;)V
    .registers 6

    const/4 v0, 0x0

    if-nez p2, :cond_5

    move-object v1, v0

    goto :goto_7

    .line 1
    :cond_5
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzqx;->a:Ljava/lang/String;

    .line 2
    :goto_7
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Decoder failed: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgp;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzqv;->o:Lcom/google/android/gms/internal/ads/zzqx;

    .line 3
    sget p2, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const/16 v1, 0x15

    if-lt p2, v1, :cond_26

    .line 4
    instance-of p2, p1, Landroid/media/MediaCodec$CodecException;

    if-eqz p2, :cond_26

    .line 5
    check-cast p1, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {p1}, Landroid/media/MediaCodec$CodecException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object v0

    :cond_26
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqv;->p:Ljava/lang/String;

    return-void
.end method
