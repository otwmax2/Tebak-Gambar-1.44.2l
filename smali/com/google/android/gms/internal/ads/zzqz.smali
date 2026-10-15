###### Class com.google.android.gms.internal.ads.zzqz (com.google.android.gms.internal.ads.zzqz)
.class public final Lcom/google/android/gms/internal/ads/zzqz;
.super Ljava/lang/Exception;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field public final o:Ljava/lang/String;

.field public final p:Z

.field public final q:Lcom/google/android/gms/internal/ads/zzqx;

.field public final r:Ljava/lang/String;

.field public final s:Lcom/google/android/gms/internal/ads/zzqz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaf;Ljava/lang/Throwable;ZI)V
    .registers 15

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Decoder init failed: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzaf;->l:Ljava/lang/String;

    .line 2
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "com.google.android.exoplayer2.mediacodec.MediaCodecRenderer_neg_"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    move-object v4, p2

    .line 3
    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/zzqz;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLcom/google/android/gms/internal/ads/zzqx;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzqz;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaf;Ljava/lang/Throwable;ZLcom/google/android/gms/internal/ads/zzqx;)V
    .registers 15

    .line 4
    iget-object p3, p4, Lcom/google/android/gms/internal/ads/zzqx;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decoder init failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzaf;->l:Ljava/lang/String;

    .line 5
    sget p1, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const/4 p3, 0x0

    const/16 v0, 0x15

    if-lt p1, v0, :cond_35

    .line 6
    instance-of p1, p2, Landroid/media/MediaCodec$CodecException;

    if-eqz p1, :cond_35

    .line 7
    move-object p1, p2

    check-cast p1, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {p1}, Landroid/media/MediaCodec$CodecException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object p1

    move-object v8, p1

    goto :goto_36

    :cond_35
    move-object v8, p3

    :goto_36
    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    move-object v4, p2

    move-object v7, p4

    .line 8
    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/zzqz;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLcom/google/android/gms/internal/ads/zzqx;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzqz;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLcom/google/android/gms/internal/ads/zzqx;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzqz;)V
    .registers 8

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzqz;->o:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzqz;->p:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzqz;->q:Lcom/google/android/gms/internal/ads/zzqx;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzqz;->r:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzqz;->s:Lcom/google/android/gms/internal/ads/zzqz;

    return-void
.end method

.method static bridge synthetic a(Lcom/google/android/gms/internal/ads/zzqz;Lcom/google/android/gms/internal/ads/zzqz;)Lcom/google/android/gms/internal/ads/zzqz;
    .registers 11

    new-instance v8, Lcom/google/android/gms/internal/ads/zzqz;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzqz;->o:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzqz;->q:Lcom/google/android/gms/internal/ads/zzqx;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzqz;->r:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v0, v8

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzqz;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLcom/google/android/gms/internal/ads/zzqx;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzqz;)V

    return-object v8
.end method
