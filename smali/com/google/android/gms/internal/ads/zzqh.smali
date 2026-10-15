###### Class com.google.android.gms.internal.ads.zzqh (com.google.android.gms.internal.ads.zzqh)
.class final Lcom/google/android/gms/internal/ads/zzqh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzqu;


# instance fields
.field private final a:Landroid/media/MediaCodec;

.field private final b:Lcom/google/android/gms/internal/ads/zzqn;

.field private final c:Lcom/google/android/gms/internal/ads/zzql;

.field private d:Z

.field private e:I


# direct methods
.method synthetic constructor <init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Landroid/os/HandlerThread;ZLcom/google/android/gms/internal/ads/zzqg;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqh;->a:Landroid/media/MediaCodec;

    new-instance p4, Lcom/google/android/gms/internal/ads/zzqn;

    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/ads/zzqn;-><init>(Landroid/os/HandlerThread;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzqh;->b:Lcom/google/android/gms/internal/ads/zzqn;

    .line 2
    new-instance p2, Lcom/google/android/gms/internal/ads/zzql;

    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzql;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzqh;->c:Lcom/google/android/gms/internal/ads/zzql;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqh;->e:I

    return-void
.end method

.method static synthetic b(I)Ljava/lang/String;
    .registers 2

    const-string v0, "ExoPlayer:MediaCodecAsyncAdapter:"

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzqh;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(I)Ljava/lang/String;
    .registers 2

    const-string v0, "ExoPlayer:MediaCodecQueueingThread:"

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzqh;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/zzqh;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    .registers 6

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzqh;->b:Lcom/google/android/gms/internal/ads/zzqn;

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzqh;->a:Landroid/media/MediaCodec;

    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/ads/zzqn;->f(Landroid/media/MediaCodec;)V

    .line 2
    sget p3, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const-string p3, "configureCodec"

    .line 3
    invoke-static {p3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzqh;->a:Landroid/media/MediaCodec;

    const/4 p4, 0x0

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p3, p1, p2, p4, v0}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqh;->c:Lcom/google/android/gms/internal/ads/zzql;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzql;->f()V

    const-string p1, "startCodec"

    .line 7
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqh;->a:Landroid/media/MediaCodec;

    .line 8
    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    .line 9
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqh;->e:I

    return-void
.end method

.method private static e(ILjava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    if-ne p0, p1, :cond_e

    const-string p0, "Audio"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    :cond_e
    const/4 p1, 0x2

    if-ne p0, p1, :cond_17

    const-string p0, "Video"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    :cond_17
    const-string p1, "Unknown("

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :goto_24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final G(I)Ljava/nio/ByteBuffer;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqh;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final a()Landroid/media/MediaFormat;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqh;->b:Lcom/google/android/gms/internal/ads/zzqn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqn;->c()Landroid/media/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public final g()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqh;->c:Lcom/google/android/gms/internal/ads/zzql;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzql;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqh;->a:Landroid/media/MediaCodec;

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqh;->b:Lcom/google/android/gms/internal/ads/zzqn;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqn;->e()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqh;->a:Landroid/media/MediaCodec;

    .line 4
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    return-void
.end method

.method public final h(IJ)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqh;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    return-void
.end method

.method public final i(IIIJI)V
    .registers 14

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqh;->c:Lcom/google/android/gms/internal/ads/zzql;

    const/4 v2, 0x0

    move v1, p1

    move v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzql;->c(IIIJI)V

    return-void
.end method

.method public final j()V
    .registers 4

    const/4 v0, 0x1

    .line 1
    :try_start_1
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzqh;->e:I

    if-ne v1, v0, :cond_f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqh;->c:Lcom/google/android/gms/internal/ads/zzql;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzql;->e()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqh;->b:Lcom/google/android/gms/internal/ads/zzqn;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzqn;->g()V

    :cond_f
    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzqh;->e:I
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_1e

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzqh;->d:Z

    if-nez v1, :cond_1d

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqh;->a:Landroid/media/MediaCodec;

    .line 3
    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqh;->d:Z

    :cond_1d
    return-void

    :catchall_1e
    move-exception v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzqh;->d:Z

    if-eqz v2, :cond_24

    goto :goto_2b

    .line 4
    :cond_24
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzqh;->a:Landroid/media/MediaCodec;

    .line 5
    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqh;->d:Z

    .line 6
    :goto_2b
    throw v1
.end method

.method public final k(IILcom/google/android/gms/internal/ads/zzgo;JI)V
    .registers 14

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqh;->c:Lcom/google/android/gms/internal/ads/zzql;

    const/4 v2, 0x0

    const/4 v6, 0x0

    move v1, p1

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzql;->d(IILcom/google/android/gms/internal/ads/zzgo;JI)V

    return-void
.end method

.method public final l(Landroid/view/Surface;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqh;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public final m(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqh;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    return-void
.end method

.method public final n(IZ)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqh;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return-void
.end method

.method public final n0(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqh;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    return-void
.end method

.method public final o(Landroid/media/MediaCodec$BufferInfo;)I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqh;->b:Lcom/google/android/gms/internal/ads/zzqn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzqn;->b(Landroid/media/MediaCodec$BufferInfo;)I

    move-result p1

    return p1
.end method

.method public final p()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final w(I)Ljava/nio/ByteBuffer;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqh;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final zza()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqh;->b:Lcom/google/android/gms/internal/ads/zzqn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqn;->a()I

    move-result v0

    return v0
.end method
