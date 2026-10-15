###### Class com.google.android.gms.internal.ads.zzqf (com.google.android.gms.internal.ads.zzqf)
.class public final Lcom/google/android/gms/internal/ads/zzqf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzqt;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/zzfok;

.field private final c:Lcom/google/android/gms/internal/ads/zzfok;


# direct methods
.method public constructor <init>(IZ)V
    .registers 4

    new-instance p2, Lcom/google/android/gms/internal/ads/zzqd;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzqd;-><init>(I)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzqe;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzqe;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzqf;->b:Lcom/google/android/gms/internal/ads/zzfok;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqf;->c:Lcom/google/android/gms/internal/ads/zzfok;

    return-void
.end method

.method static synthetic a(I)Landroid/os/HandlerThread;
    .registers 2

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzqh;->b(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic b(I)Landroid/os/HandlerThread;
    .registers 2

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzqh;->c(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final c(Lcom/google/android/gms/internal/ads/zzqs;)Lcom/google/android/gms/internal/ads/zzqh;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzqs;->a:Lcom/google/android/gms/internal/ads/zzqx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzqx;->a:Ljava/lang/String;

    const/4 v1, 0x0

    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createCodec:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3
    sget v3, Lcom/google/android/gms/internal/ads/zzew;->a:I

    .line 4
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 5
    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1f} :catch_4d

    :try_start_1f
    new-instance v2, Lcom/google/android/gms/internal/ads/zzqh;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzqf;->b:Lcom/google/android/gms/internal/ads/zzfok;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzqd;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzqd;->o:I

    .line 6
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzqf;->a(I)Landroid/os/HandlerThread;

    move-result-object v6

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzqf;->c:Lcom/google/android/gms/internal/ads/zzfok;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzqe;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzqe;->o:I

    .line 7
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzqf;->b(I)Landroid/os/HandlerThread;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    move-object v5, v0

    .line 8
    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzqh;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Landroid/os/HandlerThread;ZLcom/google/android/gms/internal/ads/zzqg;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_3c} :catch_4b

    .line 9
    :try_start_3c
    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzqs;->b:Landroid/media/MediaFormat;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzqs;->d:Landroid/view/Surface;

    const/4 v4, 0x0

    .line 10
    invoke-static {v2, v3, p1, v1, v4}, Lcom/google/android/gms/internal/ads/zzqh;->d(Lcom/google/android/gms/internal/ads/zzqh;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_47} :catch_48

    return-object v2

    :catch_48
    move-exception p1

    move-object v1, v2

    goto :goto_4f

    :catch_4b
    move-exception p1

    goto :goto_4f

    :catch_4d
    move-exception p1

    move-object v0, v1

    :goto_4f
    if-nez v1, :cond_57

    if-eqz v0, :cond_5a

    .line 11
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    goto :goto_5a

    .line 12
    :cond_57
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzqh;->j()V

    .line 13
    :cond_5a
    :goto_5a
    throw p1
.end method
