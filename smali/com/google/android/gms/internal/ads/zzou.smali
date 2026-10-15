###### Class com.google.android.gms.internal.ads.zzou (com.google.android.gms.internal.ads.zzou)
.class final Lcom/google/android/gms/internal/ads/zzou;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzaf;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:Lcom/google/android/gms/internal/ads/zzdb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaf;IIIIIIILcom/google/android/gms/internal/ads/zzdb;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzou;->a:Lcom/google/android/gms/internal/ads/zzaf;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzou;->b:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzou;->c:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzou;->d:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzou;->e:I

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzou;->f:I

    iput p7, p0, Lcom/google/android/gms/internal/ads/zzou;->g:I

    iput p8, p0, Lcom/google/android/gms/internal/ads/zzou;->h:I

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzou;->i:Lcom/google/android/gms/internal/ads/zzdb;

    return-void
.end method


# virtual methods
.method public final a(J)J
    .registers 7

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzou;->e:I

    int-to-long v0, v0

    const-wide/32 v2, 0xf4240

    mul-long p1, p1, v2

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public final b(ZLcom/google/android/gms/internal/ads/zzk;I)Landroid/media/AudioTrack;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzoe;
        }
    .end annotation

    .line 1
    :try_start_0
    sget p1, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const/16 v0, 0x1d

    const/4 v1, 0x1

    if-lt p1, v0, :cond_42

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzou;->e:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzou;->f:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzou;->g:I

    .line 2
    invoke-static {p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzpf;->d(III)Landroid/media/AudioFormat;

    move-result-object p1

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzk;->a()Lcom/google/android/gms/internal/ads/zzi;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzi;->a:Landroid/media/AudioAttributes;

    .line 4
    new-instance v0, Landroid/media/AudioTrack$Builder;

    invoke-direct {v0}, Landroid/media/AudioTrack$Builder;-><init>()V

    .line 5
    invoke-virtual {v0, p2}, Landroid/media/AudioTrack$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    move-result-object p2

    .line 6
    invoke-virtual {p2, p1}, Landroid/media/AudioTrack$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1, v1}, Landroid/media/AudioTrack$Builder;->setTransferMode(I)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzou;->h:I

    .line 8
    invoke-virtual {p1, p2}, Landroid/media/AudioTrack$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    .line 9
    invoke-virtual {p1, p3}, Landroid/media/AudioTrack$Builder;->setSessionId(I)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzou;->c:I

    if-ne p2, v1, :cond_38

    const/4 p2, 0x1

    goto :goto_39

    :cond_38
    const/4 p2, 0x0

    .line 10
    :goto_39
    invoke-virtual {p1, p2}, Landroid/media/AudioTrack$Builder;->setOffloadedPlayback(Z)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/media/AudioTrack$Builder;->build()Landroid/media/AudioTrack;

    move-result-object p1

    goto :goto_87

    :cond_42
    const/16 v0, 0x15

    if-ge p1, v0, :cond_6d

    .line 12
    iget p1, p2, Lcom/google/android/gms/internal/ads/zzk;->a:I

    if-nez p3, :cond_5b

    new-instance p1, Landroid/media/AudioTrack;

    const/4 v3, 0x3

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzou;->e:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzou;->f:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzou;->g:I

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzou;->h:I

    const/4 v8, 0x1

    move-object v2, p1

    .line 13
    invoke-direct/range {v2 .. v8}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    goto :goto_87

    :cond_5b
    new-instance p1, Landroid/media/AudioTrack;

    const/4 v3, 0x3

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzou;->e:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzou;->f:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzou;->g:I

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzou;->h:I

    const/4 v8, 0x1

    move-object v2, p1

    move v9, p3

    .line 14
    invoke-direct/range {v2 .. v9}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    goto :goto_87

    :cond_6d
    new-instance p1, Landroid/media/AudioTrack;

    .line 15
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzk;->a()Lcom/google/android/gms/internal/ads/zzi;

    move-result-object p2

    iget-object v3, p2, Lcom/google/android/gms/internal/ads/zzi;->a:Landroid/media/AudioAttributes;

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzou;->e:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzou;->f:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzou;->g:I

    .line 16
    invoke-static {p2, v0, v2}, Lcom/google/android/gms/internal/ads/zzpf;->d(III)Landroid/media/AudioFormat;

    move-result-object v4

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzou;->h:I

    const/4 v6, 0x1

    move-object v2, p1

    move v7, p3

    invoke-direct/range {v2 .. v7}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V
    :try_end_87
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_87} :catch_a7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_87} :catch_a5

    .line 17
    :goto_87
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getState()I

    move-result v3

    if-ne v3, v1, :cond_8e

    return-object p1

    .line 18
    :cond_8e
    :try_start_8e
    invoke-virtual {p1}, Landroid/media/AudioTrack;->release()V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_91} :catch_91

    :catch_91
    new-instance p1, Lcom/google/android/gms/internal/ads/zzoe;

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzou;->e:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzou;->f:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzou;->h:I

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzou;->a:Lcom/google/android/gms/internal/ads/zzaf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzou;->c()Z

    move-result v8

    const/4 v9, 0x0

    move-object v2, p1

    .line 19
    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/zzoe;-><init>(IIIILcom/google/android/gms/internal/ads/zzaf;ZLjava/lang/Exception;)V

    throw p1

    :catch_a5
    move-exception p1

    goto :goto_a8

    :catch_a7
    move-exception p1

    :goto_a8
    move-object v7, p1

    .line 20
    new-instance p1, Lcom/google/android/gms/internal/ads/zzoe;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzou;->e:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzou;->f:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzou;->h:I

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzou;->a:Lcom/google/android/gms/internal/ads/zzaf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzou;->c()Z

    move-result v6

    move-object v0, p1

    .line 21
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzoe;-><init>(IIIILcom/google/android/gms/internal/ads/zzaf;ZLjava/lang/Exception;)V

    throw p1
.end method

.method public final c()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzou;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    return v0
.end method
