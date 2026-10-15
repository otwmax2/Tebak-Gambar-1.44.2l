###### Class com.google.android.gms.internal.ads.zzra (com.google.android.gms.internal.ads.zzra)
.class public abstract Lcom/google/android/gms/internal/ads/zzra;
.super Lcom/google/android/gms/internal/ads/zzha;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static final O0:[B


# instance fields
.field private final A:Lcom/google/android/gms/internal/ads/zzqt;

.field private A0:Z

.field private final B:Lcom/google/android/gms/internal/ads/zzrc;

.field private B0:Z

.field private final C:F

.field private C0:Z

.field private final D:Lcom/google/android/gms/internal/ads/zzgr;

.field private D0:J

.field private final E:Lcom/google/android/gms/internal/ads/zzgr;

.field private E0:J

.field private final F:Lcom/google/android/gms/internal/ads/zzgr;

.field private F0:Z

.field private final G:Lcom/google/android/gms/internal/ads/zzqo;

.field private G0:Z

.field private final H:Lcom/google/android/gms/internal/ads/zzet;

.field private H0:Z

.field private final I:Ljava/util/ArrayList;

.field protected I0:Lcom/google/android/gms/internal/ads/zzhb;

.field private final J:Landroid/media/MediaCodec$BufferInfo;

.field private J0:J

.field private final K:[J

.field private K0:J

.field private final L:[J

.field private L0:I

.field private final M:[J

.field private M0:Lcom/google/android/gms/internal/ads/zzqa;

.field private N:Lcom/google/android/gms/internal/ads/zzaf;

.field private N0:Lcom/google/android/gms/internal/ads/zzqa;

.field private O:Lcom/google/android/gms/internal/ads/zzaf;

.field private P:Landroid/media/MediaCrypto;

.field private Q:Z

.field private R:J

.field private S:F

.field private T:F

.field private U:Lcom/google/android/gms/internal/ads/zzqu;

.field private V:Lcom/google/android/gms/internal/ads/zzaf;

.field private W:Landroid/media/MediaFormat;

.field private X:Z

.field private Y:F

.field private Z:Ljava/util/ArrayDeque;

.field private a0:Lcom/google/android/gms/internal/ads/zzqz;

.field private b0:Lcom/google/android/gms/internal/ads/zzqx;

.field private c0:I

.field private d0:Z

.field private e0:Z

.field private f0:Z

.field private g0:Z

.field private h0:Z

.field private i0:Z

.field private j0:Z

.field private k0:Z

.field private l0:Z

.field private m0:Lcom/google/android/gms/internal/ads/zzqp;

.field private n0:J

.field private o0:I

.field private p0:I

.field private q0:Ljava/nio/ByteBuffer;

.field private r0:Z

.field private s0:Z

.field private t0:Z

.field private u0:Z

.field private v0:Z

.field private w0:Z

.field private x0:I

.field private y0:I

.field private z0:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/android/gms/internal/ads/zzra;->O0:[B

    return-void

    :array_a
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x67t
        0x42t
        -0x40t
        0xbt
        -0x26t
        0x25t
        -0x70t
        0x0t
        0x0t
        0x1t
        0x68t
        -0x32t
        0xft
        0x13t
        0x20t
        0x0t
        0x0t
        0x1t
        0x65t
        -0x78t
        -0x7ct
        0xdt
        -0x32t
        0x71t
        0x18t
        -0x60t
        0x0t
        0x2ft
        -0x41t
        0x1ct
        0x31t
        -0x3dt
        0x27t
        0x5dt
        0x78t
    .end array-data
.end method

.method public constructor <init>(ILcom/google/android/gms/internal/ads/zzqt;Lcom/google/android/gms/internal/ads/zzrc;ZF)V
    .registers 8

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzha;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzra;->A:Lcom/google/android/gms/internal/ads/zzqt;

    .line 2
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzra;->B:Lcom/google/android/gms/internal/ads/zzrc;

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzra;->C:F

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgr;

    const/4 p2, 0x0

    .line 4
    invoke-direct {p1, p2, p2}, Lcom/google/android/gms/internal/ads/zzgr;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzra;->D:Lcom/google/android/gms/internal/ads/zzgr;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgr;

    .line 5
    invoke-direct {p1, p2, p2}, Lcom/google/android/gms/internal/ads/zzgr;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzra;->E:Lcom/google/android/gms/internal/ads/zzgr;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgr;

    const/4 p3, 0x2

    .line 6
    invoke-direct {p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzgr;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzra;->F:Lcom/google/android/gms/internal/ads/zzgr;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzqo;

    .line 7
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzqo;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzra;->G:Lcom/google/android/gms/internal/ads/zzqo;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzet;

    const/16 p4, 0xa

    invoke-direct {p3, p4}, Lcom/google/android/gms/internal/ads/zzet;-><init>(I)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzra;->H:Lcom/google/android/gms/internal/ads/zzet;

    new-instance p3, Ljava/util/ArrayList;

    .line 8
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzra;->I:Ljava/util/ArrayList;

    .line 9
    new-instance p3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzra;->J:Landroid/media/MediaCodec$BufferInfo;

    const/high16 p3, 0x3f800000    # 1.0f

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzra;->S:F

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzra;->T:F

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzra;->R:J

    new-array p3, p4, [J

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzra;->K:[J

    new-array p3, p4, [J

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzra;->L:[J

    new-array p3, p4, [J

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzra;->M:[J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzra;->J0:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzra;->K0:J

    .line 10
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzgr;->i(I)V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgr;->c:Ljava/nio/ByteBuffer;

    .line 11
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzra;->Y:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzra;->c0:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzra;->x0:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzra;->o0:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzra;->p0:I

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzra;->n0:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzra;->D0:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzra;->E0:J

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzra;->y0:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzra;->z0:I

    return-void
.end method

.method protected static G0(Lcom/google/android/gms/internal/ads/zzaf;)Z
    .registers 1

    .line 1
    iget p0, p0, Lcom/google/android/gms/internal/ads/zzaf;->E:I

    if-eqz p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method private final H0(Lcom/google/android/gms/internal/ads/zzqx;Landroid/media/MediaCrypto;)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    const-string v1, "createCodec:"

    .line 1
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzqx;->a:Ljava/lang/String;

    .line 2
    sget v3, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const/high16 v4, -0x40800000    # -1.0f

    const/16 v5, 0x17

    if-ge v3, v5, :cond_13

    const/high16 v6, -0x40800000    # -1.0f

    goto :goto_1f

    .line 3
    :cond_13
    iget v6, v8, Lcom/google/android/gms/internal/ads/zzra;->T:F

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzra;->N:Lcom/google/android/gms/internal/ads/zzaf;

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzha;->u()[Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object v9

    invoke-virtual {v8, v6, v7, v9}, Lcom/google/android/gms/internal/ads/zzra;->N(FLcom/google/android/gms/internal/ads/zzaf;[Lcom/google/android/gms/internal/ads/zzaf;)F

    move-result v6

    .line 5
    :goto_1f
    iget v7, v8, Lcom/google/android/gms/internal/ads/zzra;->C:F

    cmpg-float v7, v6, v7

    if-gtz v7, :cond_26

    goto :goto_27

    :cond_26
    move v4, v6

    :goto_27
    iget-object v6, v8, Lcom/google/android/gms/internal/ads/zzra;->N:Lcom/google/android/gms/internal/ads/zzaf;

    .line 6
    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/ads/zzra;->z0(Lcom/google/android/gms/internal/ads/zzaf;)V

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-object v9, v8, Lcom/google/android/gms/internal/ads/zzra;->N:Lcom/google/android/gms/internal/ads/zzaf;

    const/4 v10, 0x0

    .line 8
    invoke-virtual {v8, v0, v9, v10, v4}, Lcom/google/android/gms/internal/ads/zzra;->T(Lcom/google/android/gms/internal/ads/zzqx;Lcom/google/android/gms/internal/ads/zzaf;Landroid/media/MediaCrypto;F)Lcom/google/android/gms/internal/ads/zzqs;

    move-result-object v9

    const/16 v11, 0x1f

    if-lt v3, v11, :cond_42

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzha;->C()Lcom/google/android/gms/internal/ads/zzno;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/google/android/gms/internal/ads/zzqy;->a(Lcom/google/android/gms/internal/ads/zzqs;Lcom/google/android/gms/internal/ads/zzno;)V

    :cond_42
    :try_start_42
    new-instance v12, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 11
    invoke-static {v12}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 v12, 0x0

    if-lt v3, v5, :cond_7a

    if-lt v3, v11, :cond_7a

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/zzqs;->c:Lcom/google/android/gms/internal/ads/zzaf;

    .line 12
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaf;->l:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbt;->b(Ljava/lang/String;)I

    move-result v1

    const-string v10, "DMCodecAdapterFactory"

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzew;->o(I)Ljava/lang/String;

    move-result-object v11

    const-string v13, "Creating an asynchronous MediaCodec adapter for track type "

    invoke-virtual {v13, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 13
    invoke-static {v10, v11}, Lcom/google/android/gms/internal/ads/zzee;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Lcom/google/android/gms/internal/ads/zzqf;

    invoke-direct {v10, v1, v12}, Lcom/google/android/gms/internal/ads/zzqf;-><init>(IZ)V

    .line 14
    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/ads/zzqf;->c(Lcom/google/android/gms/internal/ads/zzqs;)Lcom/google/android/gms/internal/ads/zzqh;

    move-result-object v1
    :try_end_79
    .catchall {:try_start_42 .. :try_end_79} :catchall_2cb

    goto :goto_af

    .line 15
    :cond_7a
    :try_start_7a
    iget-object v11, v9, Lcom/google/android/gms/internal/ads/zzqs;->a:Lcom/google/android/gms/internal/ads/zzqx;
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7c} :catch_2c4
    .catch Ljava/lang/RuntimeException; {:try_start_7a .. :try_end_7c} :catch_2c2
    .catchall {:try_start_7a .. :try_end_7c} :catchall_2cb

    .line 16
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :try_start_7f
    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzqx;->a:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 19
    invoke-static {v11}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    .line 20
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_8f} :catch_2c4
    .catch Ljava/lang/RuntimeException; {:try_start_7f .. :try_end_8f} :catch_2c2
    .catchall {:try_start_7f .. :try_end_8f} :catchall_2cb

    :try_start_8f
    const-string v11, "configureCodec"

    .line 21
    invoke-static {v11}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v11, v9, Lcom/google/android/gms/internal/ads/zzqs;->b:Landroid/media/MediaFormat;

    iget-object v13, v9, Lcom/google/android/gms/internal/ads/zzqs;->d:Landroid/view/Surface;

    .line 22
    invoke-virtual {v1, v11, v13, v10, v12}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 23
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v11, "startCodec"

    .line 24
    invoke-static {v11}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    .line 26
    invoke-static {}, Landroid/os/Trace;->endSection()V

    new-instance v11, Lcom/google/android/gms/internal/ads/zzrr;

    .line 27
    invoke-direct {v11, v1, v10}, Lcom/google/android/gms/internal/ads/zzrr;-><init>(Landroid/media/MediaCodec;Lcom/google/android/gms/internal/ads/zzrq;)V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_ae} :catch_2bf
    .catch Ljava/lang/RuntimeException; {:try_start_8f .. :try_end_ae} :catch_2bd
    .catchall {:try_start_8f .. :try_end_ae} :catchall_2cb

    move-object v1, v11

    .line 28
    :goto_af
    :try_start_af
    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzra;->U:Lcom/google/android/gms/internal/ads/zzqu;
    :try_end_b1
    .catchall {:try_start_af .. :try_end_b1} :catchall_2cb

    .line 29
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 30
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzra;->N:Lcom/google/android/gms/internal/ads/zzaf;

    .line 31
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzqx;->e(Lcom/google/android/gms/internal/ads/zzaf;)Z

    move-result v1

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-nez v1, :cond_d9

    new-array v1, v13, [Ljava/lang/Object;

    iget-object v15, v8, Lcom/google/android/gms/internal/ads/zzra;->N:Lcom/google/android/gms/internal/ads/zzaf;

    .line 32
    invoke-static {v15}, Lcom/google/android/gms/internal/ads/zzaf;->d(Lcom/google/android/gms/internal/ads/zzaf;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v1, v12

    aput-object v2, v1, v14

    const-string v15, "Format exceeds selected codec\'s capabilities [%s, %s]"

    .line 33
    invoke-static {v15, v1}, Lcom/google/android/gms/internal/ads/zzew;->i(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v15, "MediaCodecRenderer"

    .line 34
    invoke-static {v15, v1}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d9
    iput-object v0, v8, Lcom/google/android/gms/internal/ads/zzra;->b0:Lcom/google/android/gms/internal/ads/zzqx;

    iput v4, v8, Lcom/google/android/gms/internal/ads/zzra;->Y:F

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzra;->N:Lcom/google/android/gms/internal/ads/zzaf;

    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzra;->V:Lcom/google/android/gms/internal/ads/zzaf;

    const-string v1, "OMX.Exynos.avc.dec.secure"

    const/16 v4, 0x19

    if-gt v3, v4, :cond_111

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_111

    sget-object v15, Lcom/google/android/gms/internal/ads/zzew;->d:Ljava/lang/String;

    const-string v12, "SM-T585"

    .line 36
    invoke-virtual {v15, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_10f

    const-string v12, "SM-A510"

    .line 37
    invoke-virtual {v15, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_10f

    const-string v12, "SM-A520"

    .line 38
    invoke-virtual {v15, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_10f

    const-string v12, "SM-J700"

    .line 39
    invoke-virtual {v15, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_111

    :cond_10f
    const/4 v12, 0x2

    goto :goto_14a

    :cond_111
    const/16 v12, 0x18

    if-ge v3, v12, :cond_149

    const-string v12, "OMX.Nvidia.h264.decode"

    .line 40
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_125

    const-string v12, "OMX.Nvidia.h264.decode.secure"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_149

    :cond_125
    sget-object v12, Lcom/google/android/gms/internal/ads/zzew;->b:Ljava/lang/String;

    const-string v15, "flounder"

    .line 41
    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_147

    const-string v15, "flounder_lte"

    .line 42
    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_147

    const-string v15, "grouper"

    .line 43
    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_147

    const-string v15, "tilapia"

    .line 44
    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_149

    :cond_147
    const/4 v12, 0x1

    goto :goto_14a

    :cond_149
    const/4 v12, 0x0

    .line 45
    :goto_14a
    iput v12, v8, Lcom/google/android/gms/internal/ads/zzra;->c0:I

    iget-object v12, v8, Lcom/google/android/gms/internal/ads/zzra;->V:Lcom/google/android/gms/internal/ads/zzaf;

    const/16 v15, 0x15

    if-ge v3, v15, :cond_164

    .line 46
    iget-object v12, v12, Lcom/google/android/gms/internal/ads/zzaf;->n:Ljava/util/List;

    .line 47
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_164

    const-string v12, "OMX.MTK.VIDEO.DECODER.AVC"

    .line 48
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_164

    const/4 v12, 0x1

    goto :goto_165

    :cond_164
    const/4 v12, 0x0

    :goto_165
    iput-boolean v12, v8, Lcom/google/android/gms/internal/ads/zzra;->d0:Z

    const/16 v12, 0x13

    if-ne v3, v12, :cond_185

    sget-object v14, Lcom/google/android/gms/internal/ads/zzew;->d:Ljava/lang/String;

    const-string v13, "SM-G800"

    .line 49
    invoke-virtual {v14, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_185

    const-string v13, "OMX.Exynos.avc.dec"

    .line 50
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_183

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_185

    :cond_183
    const/4 v1, 0x1

    goto :goto_186

    :cond_185
    const/4 v1, 0x0

    :goto_186
    iput-boolean v1, v8, Lcom/google/android/gms/internal/ads/zzra;->e0:Z

    const/16 v1, 0x1d

    if-ne v3, v1, :cond_196

    const-string v13, "c2.android.aac.decoder"

    .line 51
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_196

    const/4 v13, 0x1

    goto :goto_197

    :cond_196
    const/4 v13, 0x0

    :goto_197
    iput-boolean v13, v8, Lcom/google/android/gms/internal/ads/zzra;->f0:Z

    if-gt v3, v5, :cond_1a6

    const-string v5, "OMX.google.vorbis.decoder"

    .line 52
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a4

    goto :goto_1a6

    :cond_1a4
    :goto_1a4
    const/4 v5, 0x1

    goto :goto_1cc

    :cond_1a6
    :goto_1a6
    if-gt v3, v12, :cond_1cb

    sget-object v5, Lcom/google/android/gms/internal/ads/zzew;->b:Ljava/lang/String;

    const-string v12, "hb2000"

    .line 53
    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1ba

    const-string v12, "stvm8"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1cb

    :cond_1ba
    const-string v5, "OMX.amlogic.avc.decoder.awesome"

    .line 54
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a4

    const-string v5, "OMX.amlogic.avc.decoder.awesome.secure"

    .line 55
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1cb

    goto :goto_1a4

    :cond_1cb
    const/4 v5, 0x0

    :goto_1cc
    iput-boolean v5, v8, Lcom/google/android/gms/internal/ads/zzra;->g0:Z

    if-ne v3, v15, :cond_1da

    const-string v5, "OMX.google.aac.decoder"

    .line 56
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1da

    const/4 v5, 0x1

    goto :goto_1db

    :cond_1da
    const/4 v5, 0x0

    :goto_1db
    iput-boolean v5, v8, Lcom/google/android/gms/internal/ads/zzra;->h0:Z

    if-ge v3, v15, :cond_225

    const-string v5, "OMX.SEC.mp3.dec"

    .line 57
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_225

    sget-object v5, Lcom/google/android/gms/internal/ads/zzew;->c:Ljava/lang/String;

    const-string v12, "samsung"

    .line 58
    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_225

    sget-object v5, Lcom/google/android/gms/internal/ads/zzew;->b:Ljava/lang/String;

    const-string v12, "baffin"

    .line 59
    invoke-virtual {v5, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_223

    const-string v12, "grand"

    .line 60
    invoke-virtual {v5, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_223

    const-string v12, "fortuna"

    .line 61
    invoke-virtual {v5, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_223

    const-string v12, "gprimelte"

    .line 62
    invoke-virtual {v5, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_223

    const-string v12, "j2y18lte"

    .line 63
    invoke-virtual {v5, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_223

    const-string v12, "ms01"

    .line 64
    invoke-virtual {v5, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_225

    :cond_223
    const/4 v5, 0x1

    goto :goto_226

    :cond_225
    const/4 v5, 0x0

    :goto_226
    iput-boolean v5, v8, Lcom/google/android/gms/internal/ads/zzra;->i0:Z

    .line 65
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzqx;->a:Ljava/lang/String;

    if-gt v3, v4, :cond_237

    const-string v4, "OMX.rk.video_decoder.avc"

    .line 66
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_235

    goto :goto_237

    :cond_235
    :goto_235
    const/4 v12, 0x1

    goto :goto_283

    :cond_237
    :goto_237
    if-gt v3, v1, :cond_269

    const-string v1, "OMX.broadcom.video_decoder.tunnel"

    .line 67
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_235

    const-string v1, "OMX.broadcom.video_decoder.tunnel.secure"

    .line 68
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_235

    const-string v1, "OMX.bcm.vdec.avc.tunnel"

    .line 69
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_235

    const-string v1, "OMX.bcm.vdec.avc.tunnel.secure"

    .line 70
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_235

    const-string v1, "OMX.bcm.vdec.hevc.tunnel"

    .line 71
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_235

    const-string v1, "OMX.bcm.vdec.hevc.tunnel.secure"

    .line 72
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_235

    :cond_269
    sget-object v1, Lcom/google/android/gms/internal/ads/zzew;->c:Ljava/lang/String;

    const-string v3, "Amazon"

    .line 73
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_282

    sget-object v1, Lcom/google/android/gms/internal/ads/zzew;->d:Ljava/lang/String;

    const-string v3, "AFTS"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_282

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzqx;->f:Z

    if-eqz v1, :cond_282

    goto :goto_235

    :cond_282
    const/4 v12, 0x0

    :goto_283
    iput-boolean v12, v8, Lcom/google/android/gms/internal/ads/zzra;->l0:Z

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzra;->U:Lcom/google/android/gms/internal/ads/zzqu;

    .line 74
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzqu;->p()Z

    .line 75
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzqx;->a:Ljava/lang/String;

    const-string v1, "c2.android.mp3.decoder"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29b

    new-instance v0, Lcom/google/android/gms/internal/ads/zzqp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzqp;-><init>()V

    iput-object v0, v8, Lcom/google/android/gms/internal/ads/zzra;->m0:Lcom/google/android/gms/internal/ads/zzqp;

    :cond_29b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzha;->f()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2ab

    .line 76
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v3, 0x3e8

    add-long/2addr v0, v3

    iput-wide v0, v8, Lcom/google/android/gms/internal/ads/zzra;->n0:J

    :cond_2ab
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzra;->I0:Lcom/google/android/gms/internal/ads/zzhb;

    .line 77
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzhb;->a:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzhb;->a:I

    sub-long v6, v10, v6

    move-object/from16 v1, p0

    move-object v3, v9

    move-wide v4, v10

    .line 78
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzra;->X(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzqs;JJ)V

    return-void

    :catch_2bd
    move-exception v0

    goto :goto_2c0

    :catch_2bf
    move-exception v0

    :goto_2c0
    move-object v10, v1

    goto :goto_2c5

    :catch_2c2
    move-exception v0

    goto :goto_2c5

    :catch_2c4
    move-exception v0

    :goto_2c5
    if-eqz v10, :cond_2ca

    .line 79
    :try_start_2c7
    invoke-virtual {v10}, Landroid/media/MediaCodec;->release()V

    .line 80
    :cond_2ca
    throw v0
    :try_end_2cb
    .catchall {:try_start_2c7 .. :try_end_2cb} :catchall_2cb

    :catchall_2cb
    move-exception v0

    .line 81
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 82
    goto :goto_2d1

    :goto_2d0
    throw v0

    :goto_2d1
    goto :goto_2d0
.end method

.method private final I0()V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhj;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzra;->z0:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1f

    const/4 v2, 0x2

    if-eq v0, v2, :cond_18

    const/4 v2, 0x3

    if-eq v0, v2, :cond_11

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzra;->G0:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzra;->o0()V

    return-void

    .line 2
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzra;->A0()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzra;->x0()V

    return-void

    .line 4
    :cond_18
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzra;->l0()V

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzra;->b0()V

    return-void

    .line 6
    :cond_1f
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzra;->l0()V

    return-void
.end method

.method private final J0()V
    .registers 3

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzra;->o0:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzra;->E:Lcom/google/android/gms/internal/ads/zzgr;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzgr;->c:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private final R()V
    .registers 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzra;->v0:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzra;->G:Lcom/google/android/gms/internal/ads/zzqo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgl;->b()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzra;->F:Lcom/google/android/gms/internal/ads/zzgr;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgl;->b()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzra;->u0:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzra;->t0:Z

    return-void
.end method

.method private final S()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhj;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzra;->A0:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzra;->y0:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzra;->z0:I

    return-void

    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzra;->A0()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzra;->x0()V

    return-void
.end method

.method private final a0()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzra;->p0:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzra;->q0:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private final b0()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhj;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_1
    throw v0
    :try_end_2
    .catch Landroid/media/MediaCryptoException; {:try_start_1 .. :try_end_2} :catch_2

    :catch_2
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzra;->N:Lcom/google/android/gms/internal/ads/zzaf;

    const/4 v2, 0x0

    const/16 v3, 0x1776

    .line 2
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzha;->x(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzaf;ZI)Lcom/google/android/gms/internal/ads/zzhj;

    move-result-object v0

    .line 3
    throw v0
.end method

.method private final c0()Z
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhj;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzra;->A0:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_19

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzra;->y0:I

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzra;->e0:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzra;->g0:Z

    if-eqz v0, :cond_10

    goto :goto_14

    :cond_10
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzra;->z0:I

    goto :goto_1c

    :cond_14
    :goto_14
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzra;->z0:I

    const/4 v0, 0x0

    return v0

    :cond_19
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzra;->b0()V

    :goto_1c
    return v1
.end method

.method private final d0()Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhj;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzra;->U:Lcom/google/android/gms/internal/ads/zzqu;

    const/4 v1, 0x0

    if-eqz v0, :cond_21e

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzra;->y0:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_21e

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzra;->F0:Z

    if-eqz v2, :cond_10

    goto/16 :goto_21e

    :cond_10
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzra;->o0:I

    if-gez v2, :cond_2c

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzqu;->zza()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzra;->o0:I

    if-gez v0, :cond_1d

    return v1

    :cond_1d
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzra;->E:Lcom/google/android/gms/internal/ads/zzgr;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzra;->U:Lcom/google/android/gms/internal/ads/zzqu;

    .line 2
    invoke-interface {v4, v0}, Lcom/google/android/gms/internal/ads/zzqu;->G(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/ads/zzgr;->c:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzra;->E:Lcom/google/android/gms/internal/ads/zzgr;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgl;->b()V

    :cond_2c
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzra;->y0:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_49

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzra;->l0:Z

    if-nez v0, :cond_46

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzra;->B0:Z

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzra;->U:Lcom/google/android/gms/internal/ads/zzqu;

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzra;->o0:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    .line 4
    invoke-interface/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzqu;->i(IIIJI)V

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzra;->J0()V

    :cond_46
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzra;->y0:I

    return v1

    :cond_49
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzra;->j0:Z

    if-eqz v0, :cond_6b

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzra;->j0:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzra;->E:Lcom/google/android/gms/internal/ads/zzgr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgr;->c:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzra;->O0:[B

    .line 6
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzra;->U:Lcom/google/android/gms/internal/ads/zzqu;

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzra;->o0:I

    const/4 v5, 0x0

    const/16 v6, 0x26

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    .line 7
    invoke-interface/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzqu;->i(IIIJI)V

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzra;->J0()V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzra;->A0:Z

    return v2

    :cond_6b
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzra;->x0:I

    if-ne v0, v2, :cond_90

    const/4 v0, 0x0

    :goto_70
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzra;->V:Lcom/google/android/gms/internal/ads/zzaf;

    .line 9
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzaf;->n:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_8e

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzra;->V:Lcom/google/android/gms/internal/ads/zzaf;

    .line 10
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzaf;->n:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzra;->E:Lcom/google/android/gms/internal/ads/zzgr;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzgr;->c:Ljava/nio/ByteBuffer;

    .line 11
    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_70

    :cond_8e
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzra;->x0:I

    :cond_90
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzra;->E:Lcom/google/android/gms/internal/ads/zzgr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgr;->c:Ljava/nio/ByteBuffer;

    .line 12
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzha;->z()Lcom/google/android/gms/internal/ads/zzjo;

    move-result-object v4

    :try_start_9c
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzra;->E:Lcom/google/android/gms/internal/ads/zzgr;

    .line 14
    invoke-virtual {p0, v4, v5, v1}, Lcom/google/android/gms/internal/ads/zzha;->w(Lcom/google/android/gms/internal/ads/zzjo;Lcom/google/android/gms/internal/ads/zzgr;I)I

    move-result v5
    :try_end_a2
    .catch Lcom/google/android/gms/internal/ads/zzgq; {:try_start_9c .. :try_end_a2} :catch_213

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzha;->V()Z

    move-result v6

    if-eqz v6, :cond_ac

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzra;->D0:J

    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/zzra;->E0:J

    :cond_ac
    const/4 v6, -0x3

    if-ne v5, v6, :cond_b0

    return v1

    :cond_b0
    const/4 v7, -0x5

    if-ne v5, v7, :cond_c2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzra;->x0:I

    if-ne v0, v3, :cond_be

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzra;->E:Lcom/google/android/gms/internal/ads/zzgr;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgl;->b()V

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzra;->x0:I

    .line 16
    :cond_be
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzra;->Q(Lcom/google/android/gms/internal/ads/zzjo;)Lcom/google/android/gms/internal/ads/zzhc;

    return v2

    :cond_c2
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzra;->E:Lcom/google/android/gms/internal/ads/zzgr;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgl;->g()Z

    move-result v5

    if-eqz v5, :cond_103

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzra;->x0:I

    if-ne v0, v3, :cond_d3

    .line 17
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgl;->b()V

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzra;->x0:I

    :cond_d3
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzra;->F0:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzra;->A0:Z

    if-nez v0, :cond_dd

    .line 18
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzra;->I0()V

    return v1

    :cond_dd
    :try_start_dd
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzra;->l0:Z

    if-nez v0, :cond_f2

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzra;->B0:Z

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzra;->U:Lcom/google/android/gms/internal/ads/zzqu;

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzra;->o0:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x4

    .line 19
    invoke-interface/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzqu;->i(IIIJI)V

    .line 20
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzra;->J0()V
    :try_end_f2
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_dd .. :try_end_f2} :catch_f3

    :cond_f2
    return v1

    :catch_f3
    move-exception v0

    .line 21
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzra;->N:Lcom/google/android/gms/internal/ads/zzaf;

    .line 22
    invoke-virtual {v0}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzew;->W(I)I

    move-result v3

    .line 23
    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzha;->x(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzaf;ZI)Lcom/google/android/gms/internal/ads/zzhj;

    move-result-object v0

    .line 24
    throw v0

    .line 25
    :cond_103
    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzra;->A0:Z

    if-nez v5, :cond_117

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgl;->h()Z

    move-result v5

    if-nez v5, :cond_117

    .line 26
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgl;->b()V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzra;->x0:I

    if-ne v0, v3, :cond_116

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzra;->x0:I

    :cond_116
    return v2

    :cond_117
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgr;->k()Z

    move-result v3

    if-eqz v3, :cond_122

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzgr;->b:Lcom/google/android/gms/internal/ads/zzgo;

    .line 27
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzgo;->b(I)V

    :cond_122
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzra;->d0:Z

    if-eqz v0, :cond_179

    if-nez v3, :cond_179

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzra;->E:Lcom/google/android/gms/internal/ads/zzgr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgr;->c:Ljava/nio/ByteBuffer;

    .line 28
    sget-object v4, Lcom/google/android/gms/internal/ads/zzaar;->a:[B

    .line 29
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_134
    add-int/lit8 v8, v5, 0x1

    if-ge v8, v4, :cond_169

    .line 30
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    and-int/lit16 v9, v9, 0xff

    const/4 v10, 0x3

    if-ne v7, v10, :cond_160

    if-ne v9, v2, :cond_164

    .line 31
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    and-int/lit8 v9, v9, 0x1f

    const/4 v10, 0x7

    if-ne v9, v10, :cond_15e

    .line 32
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v7

    add-int/2addr v5, v6

    .line 33
    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 34
    invoke-virtual {v7, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 35
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 36
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_16c

    :cond_15e
    const/4 v9, 0x1

    goto :goto_164

    :cond_160
    if-nez v9, :cond_164

    add-int/lit8 v7, v7, 0x1

    :cond_164
    :goto_164
    if-eqz v9, :cond_167

    const/4 v7, 0x0

    :cond_167
    move v5, v8

    goto :goto_134

    .line 37
    :cond_169
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 38
    :goto_16c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzra;->E:Lcom/google/android/gms/internal/ads/zzgr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgr;->c:Ljava/nio/ByteBuffer;

    .line 39
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-nez v0, :cond_177

    return v2

    :cond_177
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzra;->d0:Z

    :cond_179
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzra;->E:Lcom/google/android/gms/internal/ads/zzgr;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzgr;->e:J

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzra;->m0:Lcom/google/android/gms/internal/ads/zzqp;

    if-eqz v6, :cond_197

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzra;->N:Lcom/google/android/gms/internal/ads/zzaf;

    .line 40
    invoke-virtual {v6, v4, v0}, Lcom/google/android/gms/internal/ads/zzqp;->b(Lcom/google/android/gms/internal/ads/zzaf;Lcom/google/android/gms/internal/ads/zzgr;)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzra;->D0:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzra;->m0:Lcom/google/android/gms/internal/ads/zzqp;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzra;->N:Lcom/google/android/gms/internal/ads/zzaf;

    .line 41
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzqp;->a(Lcom/google/android/gms/internal/ads/zzaf;)J

    move-result-wide v8

    .line 42
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/zzra;->D0:J

    :cond_197
    move-wide v12, v4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzra;->E:Lcom/google/android/gms/internal/ads/zzgr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgl;->f()Z

    move-result v0

    if-eqz v0, :cond_1a9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzra;->I:Ljava/util/ArrayList;

    .line 43
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a9
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzra;->H0:Z

    if-eqz v0, :cond_1b6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzra;->H:Lcom/google/android/gms/internal/ads/zzet;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzra;->N:Lcom/google/android/gms/internal/ads/zzaf;

    .line 44
    invoke-virtual {v0, v12, v13, v4}, Lcom/google/android/gms/internal/ads/zzet;->d(JLjava/lang/Object;)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzra;->H0:Z

    :cond_1b6
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzra;->D0:J

    .line 45
    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzra;->D0:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzra;->E:Lcom/google/android/gms/internal/ads/zzgr;

    .line 46
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgr;->j()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzra;->E:Lcom/google/android/gms/internal/ads/zzgr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgl;->e()Z

    move-result v4

    if-eqz v4, :cond_1ce

    .line 47
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzra;->w0(Lcom/google/android/gms/internal/ads/zzgr;)V

    :cond_1ce
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzra;->E:Lcom/google/android/gms/internal/ads/zzgr;

    .line 48
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzra;->n0(Lcom/google/android/gms/internal/ads/zzgr;)V

    if-eqz v3, :cond_1e3

    :try_start_1d5
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzra;->U:Lcom/google/android/gms/internal/ads/zzqu;

    iget v9, p0, Lcom/google/android/gms/internal/ads/zzra;->o0:I

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzra;->E:Lcom/google/android/gms/internal/ads/zzgr;

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzgr;->b:Lcom/google/android/gms/internal/ads/zzgo;

    const/4 v14, 0x0

    .line 49
    invoke-interface/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/zzqu;->k(IILcom/google/android/gms/internal/ads/zzgo;JI)V

    goto :goto_1f4

    .line 50
    :cond_1e3
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzra;->U:Lcom/google/android/gms/internal/ads/zzqu;

    iget v9, p0, Lcom/google/android/gms/internal/ads/zzra;->o0:I

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzra;->E:Lcom/google/android/gms/internal/ads/zzgr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgr;->c:Ljava/nio/ByteBuffer;

    .line 51
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v11

    const/4 v14, 0x0

    .line 52
    invoke-interface/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/zzqu;->i(IIIJI)V
    :try_end_1f4
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1d5 .. :try_end_1f4} :catch_203

    .line 53
    :goto_1f4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzra;->J0()V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzra;->A0:Z

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzra;->x0:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzra;->I0:Lcom/google/android/gms/internal/ads/zzhb;

    .line 54
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzhb;->c:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzhb;->c:I

    return v2

    :catch_203
    move-exception v0

    .line 55
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzra;->N:Lcom/google/android/gms/internal/ads/zzaf;

    .line 56
    invoke-virtual {v0}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzew;->W(I)I

    move-result v3

    .line 57
    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzha;->x(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzaf;ZI)Lcom/google/android/gms/internal/ads/zzhj;

    move-result-object v0

    .line 58
    throw v0

    :catch_213
    move-exception v0

    .line 59
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzra;->W(Ljava/lang/Exception;)V

    .line 60
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzra;->g0(I)Z

    .line 61
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzra;->l0()V

    return v2

    :cond_21e
    :goto_21e
    return v1
.end method

.method private final e0()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzra;->p0:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method private final g0(I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhj;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzha;->z()Lcom/google/android/gms/internal/ads/zzjo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzra;->D:Lcom/google/android/gms/internal/ads/zzgr;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgl;->b()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzra;->D:Lcom/google/android/gms/internal/ads/zzgr;

    or-int/lit8 p1, p1, 0x4

    .line 3
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzha;->w(Lcom/google/android/gms/internal/ads/zzjo;Lcom/google/android/gms/internal/ads/zzgr;I)I

    move-result p1

    const/4 v1, 0x1

    const/4 v2, -0x5

    if-ne p1, v2, :cond_19

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzra;->Q(Lcom/google/android/gms/internal/ads/zzjo;)Lcom/google/android/gms/internal/ads/zzhc;

    return v1

    :cond_19
    const/4 v0, -0x4

    if-ne p1, v0, :cond_29

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzra;->D:Lcom/google/android/gms/internal/ads/zzgr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgl;->g()Z

    move-result p1

    if-eqz p1, :cond_29

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzra;->F0:Z

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzra;->I0()V

    :cond_29
    const/4 p1, 0x0

    return p1
.end method

.method private final i0(J)Z
    .registers 8

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzra;->R:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_19

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzra;->R:J

    cmp-long v2, v0, p1

    if-gez v2, :cond_17

    goto :goto_19

    :cond_17
    const/4 p1, 0x0

    return p1

    :cond_19
    :goto_19
    const/4 p1, 0x1

    return p1
.end method

.method private final j0(Lcom/google/android/gms/internal/ads/zzaf;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhj;
        }
    .end annotation

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-ge v0, v2, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzra;->U:Lcom/google/android/gms/internal/ads/zzqu;

    if-eqz v0, :cond_51

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzra;->z0:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_51

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzha;->f()I

    move-result v0

    if-nez v0, :cond_18

    goto :goto_51

    :cond_18
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzra;->T:F

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzha;->u()[Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object v2

    invoke-virtual {p0, v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzra;->N(FLcom/google/android/gms/internal/ads/zzaf;[Lcom/google/android/gms/internal/ads/zzaf;)F

    move-result p1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzra;->Y:F

    cmpl-float v2, v0, p1

    if-nez v2, :cond_29

    return v1

    :cond_29
    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v3, p1, v2

    if-nez v3, :cond_34

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzra;->S()V

    const/4 p1, 0x0

    return p1

    :cond_34
    cmpl-float v0, v0, v2

    if-nez v0, :cond_40

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzra;->C:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_3f

    goto :goto_40

    :cond_3f
    return v1

    :cond_40
    :goto_40
    new-instance v0, Landroid/os/Bundle;

    .line 4
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "operating-rate"

    .line 5
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzra;->U:Lcom/google/android/gms/internal/ads/zzqu;

    .line 6
    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzqu;->n0(Landroid/os/Bundle;)V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzra;->Y:F

    :cond_51
    :goto_51
    return v1
.end method

.method private final l0()V
    .registers 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzra;->U:Lcom/google/android/gms/internal/ads/zzqu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzqu;->g()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_9

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzra;->B0()V

    return-void

    :catchall_9
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzra;->B0()V

    .line 3
    throw v0
.end method


# virtual methods
.method protected final A0()V
    .registers 4

    const/4 v0, 0x0

    .line 1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzra;->U:Lcom/google/android/gms/internal/ads/zzqu;

    if-eqz v1, :cond_17

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzqu;->j()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzra;->I0:Lcom/google/android/gms/internal/ads/zzhb;

    .line 2
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzhb;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/google/android/gms/internal/ads/zzhb;->b:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzra;->b0:Lcom/google/android/gms/internal/ads/zzqx;

    .line 3
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzqx;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzra;->Z(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_21

    .line 4
    :cond_17
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzra;->U:Lcom/google/android/gms/internal/ads/zzqu;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzra;->P:Landroid/media/MediaCrypto;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzra;->M0:Lcom/google/android/gms/internal/ads/zzqa;

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzra;->C0()V

    return-void

    :catchall_21
    move-exception v1

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzra;->U:Lcom/google/android/gms/internal/ads/zzqu;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzra;->P:Landroid/media/MediaCrypto;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzra;->M0:Lcom/google/android/gms/internal/ads/zzqa;

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzra;->C0()V

    .line 8
    throw v1
.end method

.method protected B0()V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzra;->J0()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzra;->a0()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzra;->n0:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzra;->B0:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzra;->A0:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzra;->j0:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzra;->k0:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzra;->r0:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzra;->s0:Z

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzra;->I:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzra;->D0:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzra;->E0:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzra;->m0:Lcom/google/android/gms/internal/ads/zzqp;

    if-eqz v0, :cond_2a

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqp;->c()V

    :cond_2a
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzra;->y0:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzra;->z0:I

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzra;->w0:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzra;->x0:I

    return-void
.end method

.method protected final C0()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzra;->B0()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzra;->m0:Lcom/google/android/gms/internal/ads/zzqp;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzra;->Z:Ljava/util/ArrayDeque;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzra;->b0:Lcom/google/android/gms/internal/ads/zzqx;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzra;->V:Lcom/google/android/gms/internal/ads/zzaf;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzra;->W:Landroid/media/MediaFormat;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzra;->X:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzra;->C0:Z

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzra;->Y:F

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzra;->c0:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzra;->d0:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzra;->e0:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzra;->f0:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzra;->g0:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzra;->h0:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzra;->i0:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzra;->l0:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzra;->w0:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzra;->x0:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzra;->Q:Z

    return-void
.end method

.method protected D()V
    .registers 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzra;->N:Lcom/google/android/gms/internal/ads/zzaf;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzra;->J0:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzra;->K0:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzra;->L0:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzra;->E0()Z

    return-void
.end method

.method protected final D0()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhj;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzra;->E0()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzra;->x0()V

    :cond_9
    return v0
.end method

.method protected E(ZZ)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhj;
        }
    .end annotation

    new-instance p1, Lcom/google/android/gms/internal/ads/zzhb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzhb;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzra;->I0:Lcom/google/android/gms/internal/ads/zzhb;

    return-void
.end method

.method protected final E0()Z
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzra;->U:Lcom/google/android/gms/internal/ads/zzqu;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzra;->z0:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v2, :cond_45

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzra;->e0:Z

    if-nez v2, :cond_45

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzra;->f0:Z

    if-eqz v2, :cond_18

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzra;->C0:Z

    if-eqz v2, :cond_45

    :cond_18
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzra;->g0:Z

    if-eqz v2, :cond_20

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzra;->B0:Z

    if-nez v2, :cond_45

    :cond_20
    const/4 v2, 0x2

    if-ne v0, v2, :cond_41

    sget v0, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_2b

    const/4 v4, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v4, 0x0

    :goto_2c
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzdl;->f(Z)V

    if-lt v0, v2, :cond_41

    .line 2
    :try_start_31
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzra;->b0()V
    :try_end_34
    .catch Lcom/google/android/gms/internal/ads/zzhj; {:try_start_31 .. :try_end_34} :catch_35

    goto :goto_41

    :catch_35
    move-exception v0

    const-string v1, "MediaCodecRenderer"

    const-string v2, "Failed to update the DRM session, releasing the codec instead."

    .line 3
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzee;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzra;->A0()V

    return v3

    .line 5
    :cond_41
    :goto_41
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzra;->l0()V

    return v1

    .line 6
    :cond_45
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzra;->A0()V

    return v3
.end method

.method protected F(JZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhj;
        }
    .end annotation

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzra;->F0:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzra;->G0:Z

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzra;->t0:Z

    if-eqz p2, :cond_16

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzra;->G:Lcom/google/android/gms/internal/ads/zzqo;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgl;->b()V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzra;->F:Lcom/google/android/gms/internal/ads/zzgr;

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgl;->b()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzra;->u0:Z

    goto :goto_19

    .line 3
    :cond_16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzra;->D0()Z

    .line 4
    :goto_19
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzra;->H:Lcom/google/android/gms/internal/ads/zzet;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzet;->a()I

    move-result p3

    if-lez p3, :cond_24

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzra;->H0:Z

    .line 5
    :cond_24
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzet;->e()V

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzra;->L0:I

    if-eqz p2, :cond_3b

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzra;->L:[J

    add-int/lit8 p2, p2, -0x1

    .line 6
    aget-wide v0, p3, p2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzra;->K0:J

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzra;->K:[J

    .line 7
    aget-wide p2, p3, p2

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzra;->J0:J

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzra;->L0:I

    :cond_3b
    return-void
.end method

.method protected F0(Lcom/google/android/gms/internal/ads/zzqx;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method protected G()V
    .registers 3

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzra;->R()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzra;->A0()V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_a

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzra;->N0:Lcom/google/android/gms/internal/ads/zzqa;

    return-void

    :catchall_a
    move-exception v1

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzra;->N0:Lcom/google/android/gms/internal/ads/zzqa;

    .line 5
    throw v1
.end method

.method public J()Z
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzra;->N:Lcom/google/android/gms/internal/ads/zzaf;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzha;->t()Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzra;->e0()Z

    move-result v0

    if-nez v0, :cond_2a

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzra;->n0:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-eqz v0, :cond_29

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzra;->n0:J

    cmp-long v0, v3, v5

    if-ltz v0, :cond_28

    goto :goto_29

    :cond_28
    return v1

    :cond_29
    :goto_29
    const/4 v1, 0x0

    :cond_2a
    return v1
.end method

.method protected final M([Lcom/google/android/gms/internal/ads/zzaf;JJ)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhj;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzra;->K0:J

    const/4 p1, 0x1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_1c

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzra;->J0:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_13

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdl;->f(Z)V

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzra;->J0:J

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzra;->K0:J

    return-void

    :cond_1c
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzra;->L0:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3f

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzra;->L:[J

    const/16 v0, 0x9

    aget-wide v0, p1, v0

    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many stream changes, so dropping offset: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaCodecRenderer"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_42

    :cond_3f
    add-int/2addr v0, p1

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzra;->L0:I

    .line 4
    :goto_42
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzra;->K:[J

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzra;->L0:I

    add-int/lit8 v0, v0, -0x1

    .line 5
    aput-wide p2, p1, v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzra;->L:[J

    .line 6
    aput-wide p4, p1, v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzra;->M:[J

    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zzra;->D0:J

    .line 7
    aput-wide p2, p1, v0

    return-void
.end method

.method protected N(FLcom/google/android/gms/internal/ads/zzaf;[Lcom/google/android/gms/internal/ads/zzaf;)F
    .registers 4

    const/4 p1, 0x0

    throw p1
.end method

.method protected abstract O(Lcom/google/android/gms/internal/ads/zzrc;Lcom/google/android/gms/internal/ads/zzaf;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzrj;
        }
    .end annotation
.end method

.method protected P(Lcom/google/android/gms/internal/ads/zzqx;Lcom/google/android/gms/internal/ads/zzaf;Lcom/google/android/gms/internal/ads/zzaf;)Lcom/google/android/gms/internal/ads/zzhc;
    .registers 4

    const/4 p1, 0x0

    throw p1
.end method

.method protected Q(Lcom/google/android/gms/internal/ads/zzjo;)Lcom/google/android/gms/internal/ads/zzhc;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhj;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzra;->H0:Z

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzjo;->a:Lcom/google/android/gms/internal/ads/zzaf;

    .line 2
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, v4, Lcom/google/android/gms/internal/ads/zzaf;->l:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_103

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzjo;->b:Lcom/google/android/gms/internal/ads/zzqa;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzra;->N0:Lcom/google/android/gms/internal/ads/zzqa;

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzra;->N:Lcom/google/android/gms/internal/ads/zzaf;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzra;->t0:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_1b

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzra;->v0:Z

    return-object v3

    :cond_1b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzra;->U:Lcom/google/android/gms/internal/ads/zzqu;

    if-nez v1, :cond_25

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzra;->Z:Ljava/util/ArrayDeque;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzra;->x0()V

    return-object v3

    :cond_25
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzra;->b0:Lcom/google/android/gms/internal/ads/zzqx;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzra;->V:Lcom/google/android/gms/internal/ads/zzaf;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzra;->M0:Lcom/google/android/gms/internal/ads/zzqa;

    const/16 v7, 0x17

    if-ne v6, p1, :cond_d6

    if-eq p1, v6, :cond_33

    const/4 p1, 0x1

    goto :goto_34

    :cond_33
    const/4 p1, 0x0

    :goto_34
    if-eqz p1, :cond_3d

    .line 5
    sget v6, Lcom/google/android/gms/internal/ads/zzew;->a:I

    if-lt v6, v7, :cond_3b

    goto :goto_3d

    :cond_3b
    const/4 v6, 0x0

    goto :goto_3e

    :cond_3d
    :goto_3d
    const/4 v6, 0x1

    :goto_3e
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzdl;->f(Z)V

    .line 6
    invoke-virtual {p0, v3, v5, v4}, Lcom/google/android/gms/internal/ads/zzra;->P(Lcom/google/android/gms/internal/ads/zzqx;Lcom/google/android/gms/internal/ads/zzaf;Lcom/google/android/gms/internal/ads/zzaf;)Lcom/google/android/gms/internal/ads/zzhc;

    move-result-object v6

    iget v7, v6, Lcom/google/android/gms/internal/ads/zzhc;->d:I

    const/4 v8, 0x3

    const/16 v9, 0x10

    const/4 v10, 0x2

    if-eqz v7, :cond_b8

    if-eq v7, v0, :cond_8f

    if-eq v7, v10, :cond_63

    .line 7
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzra;->j0(Lcom/google/android/gms/internal/ads/zzaf;)Z

    move-result v0

    if-nez v0, :cond_58

    goto :goto_95

    .line 8
    :cond_58
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzra;->V:Lcom/google/android/gms/internal/ads/zzaf;

    if-eqz p1, :cond_bb

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzra;->c0()Z

    move-result p1

    if-nez p1, :cond_bb

    goto :goto_bc

    .line 10
    :cond_63
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzra;->j0(Lcom/google/android/gms/internal/ads/zzaf;)Z

    move-result v7

    if-nez v7, :cond_6a

    goto :goto_95

    :cond_6a
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzra;->w0:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzra;->x0:I

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzra;->c0:I

    if-eq v7, v10, :cond_82

    if-ne v7, v0, :cond_81

    iget v7, v4, Lcom/google/android/gms/internal/ads/zzaf;->q:I

    .line 11
    iget v9, v5, Lcom/google/android/gms/internal/ads/zzaf;->q:I

    if-ne v7, v9, :cond_81

    iget v7, v4, Lcom/google/android/gms/internal/ads/zzaf;->r:I

    iget v9, v5, Lcom/google/android/gms/internal/ads/zzaf;->r:I

    if-ne v7, v9, :cond_81

    goto :goto_82

    :cond_81
    const/4 v0, 0x0

    :cond_82
    :goto_82
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzra;->j0:Z

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzra;->V:Lcom/google/android/gms/internal/ads/zzaf;

    if-eqz p1, :cond_bb

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzra;->c0()Z

    move-result p1

    if-nez p1, :cond_bb

    goto :goto_bc

    .line 13
    :cond_8f
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzra;->j0(Lcom/google/android/gms/internal/ads/zzaf;)Z

    move-result v7

    if-nez v7, :cond_98

    :goto_95
    const/16 v10, 0x10

    goto :goto_bc

    :cond_98
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzra;->V:Lcom/google/android/gms/internal/ads/zzaf;

    if-eqz p1, :cond_a3

    .line 14
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzra;->c0()Z

    move-result p1

    if-nez p1, :cond_bb

    goto :goto_bc

    :cond_a3
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzra;->A0:Z

    if-eqz p1, :cond_bb

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzra;->y0:I

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzra;->e0:Z

    if-nez p1, :cond_b5

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzra;->g0:Z

    if-eqz p1, :cond_b2

    goto :goto_b5

    :cond_b2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzra;->z0:I

    goto :goto_bb

    :cond_b5
    :goto_b5
    iput v8, p0, Lcom/google/android/gms/internal/ads/zzra;->z0:I

    goto :goto_bc

    .line 15
    :cond_b8
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzra;->S()V

    :cond_bb
    :goto_bb
    const/4 v10, 0x0

    .line 16
    :goto_bc
    iget p1, v6, Lcom/google/android/gms/internal/ads/zzhc;->d:I

    if-eqz p1, :cond_d5

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzra;->U:Lcom/google/android/gms/internal/ads/zzqu;

    if-ne p1, v1, :cond_c8

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzra;->z0:I

    if-ne p1, v8, :cond_d5

    :cond_c8
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhc;

    .line 17
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzqx;->a:Ljava/lang/String;

    const/4 v0, 0x0

    move-object v1, p1

    move-object v3, v5

    move v5, v0

    move v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzhc;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaf;Lcom/google/android/gms/internal/ads/zzaf;II)V

    return-object p1

    :cond_d5
    return-object v6

    :cond_d6
    if-eqz p1, :cond_f2

    if-nez v6, :cond_db

    goto :goto_f2

    .line 18
    :cond_db
    sget-object p1, Lcom/google/android/gms/internal/ads/zzo;->a:Ljava/util/UUID;

    .line 19
    invoke-virtual {p1, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f2

    .line 20
    sget v0, Lcom/google/android/gms/internal/ads/zzew;->a:I

    if-lt v0, v7, :cond_f2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzo;->e:Ljava/util/UUID;

    .line 21
    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f2

    .line 22
    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 23
    :cond_f2
    :goto_f2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzra;->S()V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzhc;

    .line 24
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzqx;->a:Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v6, 0x80

    move-object v1, p1

    move-object v3, v5

    move v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzhc;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaf;Lcom/google/android/gms/internal/ads/zzaf;II)V

    return-object p1

    .line 25
    :cond_103
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    const/16 v0, 0xfa5

    .line 26
    invoke-virtual {p0, p1, v4, v2, v0}, Lcom/google/android/gms/internal/ads/zzha;->x(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzaf;ZI)Lcom/google/android/gms/internal/ads/zzhj;

    move-result-object p1

    .line 27
    throw p1
.end method

.method protected abstract T(Lcom/google/android/gms/internal/ads/zzqx;Lcom/google/android/gms/internal/ads/zzaf;Landroid/media/MediaCrypto;F)Lcom/google/android/gms/internal/ads/zzqs;
.end method

.method protected abstract U(Lcom/google/android/gms/internal/ads/zzrc;Lcom/google/android/gms/internal/ads/zzaf;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzrj;
        }
    .end annotation
.end method

.method protected W(Ljava/lang/Exception;)V
    .registers 2

    const/4 p1, 0x0

    throw p1
.end method

.method protected X(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzqs;JJ)V
    .registers 7

    const/4 p1, 0x0

    throw p1
.end method

.method public Y()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzra;->G0:Z

    return v0
.end method

.method protected Z(Ljava/lang/String;)V
    .registers 2

    const/4 p1, 0x0

    throw p1
.end method

.method public final b()I
    .registers 2

    const/16 v0, 0x8

    return v0
.end method

.method public i(FF)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhj;
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzra;->S:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzra;->T:F

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzra;->V:Lcom/google/android/gms/internal/ads/zzaf;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzra;->j0(Lcom/google/android/gms/internal/ads/zzaf;)Z

    return-void
.end method

.method public final j(Lcom/google/android/gms/internal/ads/zzaf;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhj;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzra;->B:Lcom/google/android/gms/internal/ads/zzrc;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzra;->O(Lcom/google/android/gms/internal/ads/zzrc;Lcom/google/android/gms/internal/ads/zzaf;)I

    move-result p1
    :try_end_6
    .catch Lcom/google/android/gms/internal/ads/zzrj; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    const/16 v2, 0xfa2

    .line 2
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzha;->x(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzaf;ZI)Lcom/google/android/gms/internal/ads/zzhj;

    move-result-object p1

    .line 3
    throw p1
.end method

.method protected k0(Lcom/google/android/gms/internal/ads/zzaf;Landroid/media/MediaFormat;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhj;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method protected m0()V
    .registers 1

    return-void
.end method

.method protected n0(Lcom/google/android/gms/internal/ads/zzgr;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhj;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method protected o0()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhj;
        }
    .end annotation

    return-void
.end method

.method protected abstract p0(JJLcom/google/android/gms/internal/ads/zzqu;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/zzaf;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhj;
        }
    .end annotation
.end method

.method public final q(JJ)V
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhj;
        }
    .end annotation

    move-object/from16 v15, p0

    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 1
    :try_start_4
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzra;->G0:Z

    if-eqz v0, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzra;->o0()V

    return-void

    :cond_c
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzra;->N:Lcom/google/android/gms/internal/ads/zzaf;

    const/4 v11, 0x2

    if-nez v0, :cond_19

    .line 2
    invoke-direct {v15, v11}, Lcom/google/android/gms/internal/ads/zzra;->g0(I)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_19

    :cond_18
    return-void

    .line 3
    :cond_19
    :goto_19
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzra;->x0()V

    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzra;->t0:Z

    if-eqz v0, :cond_12a

    const-string v0, "bypassRender"

    .line 4
    sget v1, Lcom/google/android/gms/internal/ads/zzew;->a:I

    .line 5
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :cond_27
    :goto_27
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzra;->G0:Z

    xor-int/2addr v0, v14

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdl;->f(Z)V

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzra;->G:Lcom/google/android/gms/internal/ads/zzqo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqo;->q()Z

    move-result v1

    if-eqz v1, :cond_7b

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzgr;->c:Ljava/nio/ByteBuffer;

    iget v8, v15, Lcom/google/android/gms/internal/ads/zzra;->p0:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqo;->m()I

    move-result v10

    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzgr;->e:J

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgl;->f()Z

    move-result v16

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgl;->g()Z

    move-result v0

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzra;->O:Lcom/google/android/gms/internal/ads/zzaf;
    :try_end_4b
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4b} :catch_352

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v17, v4

    move-wide/from16 v4, p3

    move/from16 v13, v16

    move v14, v0

    move-object/from16 v15, v17

    .line 7
    :try_start_58
    invoke-virtual/range {v1 .. v15}, Lcom/google/android/gms/internal/ads/zzra;->p0(JJLcom/google/android/gms/internal/ads/zzqu;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/zzaf;)Z

    move-result v0
    :try_end_5c
    .catch Ljava/lang/IllegalStateException; {:try_start_58 .. :try_end_5c} :catch_75

    if-eqz v0, :cond_6f

    move-object/from16 v15, p0

    :try_start_60
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzra;->G:Lcom/google/android/gms/internal/ads/zzqo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqo;->n()J

    move-result-wide v0

    .line 8
    invoke-virtual {v15, v0, v1}, Lcom/google/android/gms/internal/ads/zzra;->y0(J)V

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzra;->G:Lcom/google/android/gms/internal/ads/zzqo;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgl;->b()V

    goto :goto_7b

    :cond_6f
    move-object/from16 v15, p0

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto/16 :goto_121

    :catch_75
    move-exception v0

    const/4 v2, 0x1

    const/16 v19, 0x0

    goto/16 :goto_2be

    :cond_7b
    :goto_7b
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzra;->F0:Z

    if-eqz v0, :cond_85

    const/4 v14, 0x1

    iput-boolean v14, v15, Lcom/google/android/gms/internal/ads/zzra;->G0:Z

    const/4 v13, 0x0

    goto/16 :goto_121

    :cond_85
    const/4 v14, 0x1

    .line 10
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzra;->u0:Z

    if-eqz v0, :cond_99

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzra;->G:Lcom/google/android/gms/internal/ads/zzqo;

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzra;->F:Lcom/google/android/gms/internal/ads/zzgr;

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzqo;->p(Lcom/google/android/gms/internal/ads/zzgr;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdl;->f(Z)V

    const/4 v13, 0x0

    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/zzra;->u0:Z

    goto :goto_9a

    :cond_99
    const/4 v13, 0x0

    :goto_9a
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzra;->v0:Z

    if-eqz v0, :cond_b2

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzra;->G:Lcom/google/android/gms/internal/ads/zzqo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqo;->q()Z

    move-result v0

    if-nez v0, :cond_27

    .line 12
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzra;->R()V

    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/zzra;->v0:Z

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzra;->x0()V

    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzra;->t0:Z

    if-eqz v0, :cond_121

    :cond_b2
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzra;->F0:Z

    xor-int/2addr v0, v14

    .line 14
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdl;->f(Z)V

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzha;->z()Lcom/google/android/gms/internal/ads/zzjo;

    move-result-object v0

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzra;->F:Lcom/google/android/gms/internal/ads/zzgr;

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgl;->b()V

    :cond_c1
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzra;->F:Lcom/google/android/gms/internal/ads/zzgr;

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgl;->b()V

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzra;->F:Lcom/google/android/gms/internal/ads/zzgr;

    .line 18
    invoke-virtual {v15, v0, v1, v13}, Lcom/google/android/gms/internal/ads/zzha;->w(Lcom/google/android/gms/internal/ads/zzjo;Lcom/google/android/gms/internal/ads/zzgr;I)I

    move-result v1

    const/4 v2, -0x5

    if-eq v1, v2, :cond_101

    const/4 v2, -0x4

    if-eq v1, v2, :cond_d3

    goto :goto_104

    .line 19
    :cond_d3
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzra;->F:Lcom/google/android/gms/internal/ads/zzgr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgl;->g()Z

    move-result v1

    if-eqz v1, :cond_de

    iput-boolean v14, v15, Lcom/google/android/gms/internal/ads/zzra;->F0:Z

    goto :goto_104

    :cond_de
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzra;->H0:Z

    if-eqz v1, :cond_ef

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzra;->N:Lcom/google/android/gms/internal/ads/zzaf;
    :try_end_e4
    .catch Ljava/lang/IllegalStateException; {:try_start_60 .. :try_end_e4} :catch_352

    .line 20
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :try_start_e7
    iput-object v1, v15, Lcom/google/android/gms/internal/ads/zzra;->O:Lcom/google/android/gms/internal/ads/zzaf;

    const/4 v2, 0x0

    .line 22
    invoke-virtual {v15, v1, v2}, Lcom/google/android/gms/internal/ads/zzra;->k0(Lcom/google/android/gms/internal/ads/zzaf;Landroid/media/MediaFormat;)V

    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/zzra;->H0:Z

    :cond_ef
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzra;->F:Lcom/google/android/gms/internal/ads/zzgr;

    .line 23
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgr;->j()V

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzra;->G:Lcom/google/android/gms/internal/ads/zzqo;

    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzra;->F:Lcom/google/android/gms/internal/ads/zzgr;

    .line 24
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzqo;->p(Lcom/google/android/gms/internal/ads/zzgr;)Z

    move-result v1

    if-nez v1, :cond_c1

    iput-boolean v14, v15, Lcom/google/android/gms/internal/ads/zzra;->u0:Z

    goto :goto_104

    .line 25
    :cond_101
    invoke-virtual {v15, v0}, Lcom/google/android/gms/internal/ads/zzra;->Q(Lcom/google/android/gms/internal/ads/zzjo;)Lcom/google/android/gms/internal/ads/zzhc;

    .line 26
    :goto_104
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzra;->G:Lcom/google/android/gms/internal/ads/zzqo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqo;->q()Z

    move-result v1

    if-eqz v1, :cond_10f

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgr;->j()V

    :cond_10f
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzra;->G:Lcom/google/android/gms/internal/ads/zzqo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqo;->q()Z

    move-result v0

    if-nez v0, :cond_27

    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzra;->F0:Z

    if-nez v0, :cond_27

    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzra;->v0:Z

    if-eqz v0, :cond_121

    goto/16 :goto_27

    .line 28
    :cond_121
    :goto_121
    invoke-static {}, Landroid/os/Trace;->endSection()V

    move-object v1, v15

    const/4 v2, 0x1

    const/16 v19, 0x0

    goto/16 :goto_347

    .line 29
    :cond_12a
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzra;->U:Lcom/google/android/gms/internal/ads/zzqu;
    :try_end_12c
    .catch Ljava/lang/IllegalStateException; {:try_start_e7 .. :try_end_12c} :catch_352

    if-eqz v0, :cond_335

    .line 30
    :try_start_12e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    const-string v0, "drainAndFeed"

    .line 31
    sget v1, Lcom/google/android/gms/internal/ads/zzew;->a:I

    .line 32
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :goto_139
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzra;->e0()Z

    move-result v0
    :try_end_13d
    .catch Ljava/lang/IllegalStateException; {:try_start_12e .. :try_end_13d} :catch_330

    if-nez v0, :cond_26b

    :try_start_13f
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzra;->h0:Z

    if-eqz v0, :cond_160

    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzra;->B0:Z
    :try_end_145
    .catch Ljava/lang/IllegalStateException; {:try_start_13f .. :try_end_145} :catch_352

    if-eqz v0, :cond_160

    :try_start_147
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzra;->U:Lcom/google/android/gms/internal/ads/zzqu;

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzra;->J:Landroid/media/MediaCodec$BufferInfo;

    .line 33
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzqu;->o(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v0
    :try_end_14f
    .catch Ljava/lang/IllegalStateException; {:try_start_147 .. :try_end_14f} :catch_150

    goto :goto_168

    .line 34
    :catch_150
    :try_start_150
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzra;->I0()V

    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzra;->G0:Z

    if-eqz v0, :cond_15a

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzra;->A0()V

    :cond_15a
    :goto_15a
    move-wide v2, v9

    move-object v1, v15

    const/16 v19, 0x0

    goto/16 :goto_318

    .line 36
    :cond_160
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzra;->U:Lcom/google/android/gms/internal/ads/zzqu;

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzra;->J:Landroid/media/MediaCodec$BufferInfo;

    .line 37
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzqu;->o(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v0

    :goto_168
    if-gez v0, :cond_1a3

    const/4 v1, -0x2

    if-ne v0, v1, :cond_193

    .line 38
    iput-boolean v14, v15, Lcom/google/android/gms/internal/ads/zzra;->C0:Z

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzra;->U:Lcom/google/android/gms/internal/ads/zzqu;

    .line 39
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzqu;->a()Landroid/media/MediaFormat;

    move-result-object v0

    iget v1, v15, Lcom/google/android/gms/internal/ads/zzra;->c0:I

    if-eqz v1, :cond_18e

    const-string v1, "width"

    .line 40
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_18e

    const-string v1, "height"

    .line 41
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_18e

    iput-boolean v14, v15, Lcom/google/android/gms/internal/ads/zzra;->k0:Z

    goto :goto_1ae

    .line 42
    :cond_18e
    iput-object v0, v15, Lcom/google/android/gms/internal/ads/zzra;->W:Landroid/media/MediaFormat;

    iput-boolean v14, v15, Lcom/google/android/gms/internal/ads/zzra;->X:Z

    goto :goto_1ae

    :cond_193
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzra;->l0:Z

    if-eqz v0, :cond_15a

    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzra;->F0:Z

    if-nez v0, :cond_19f

    iget v0, v15, Lcom/google/android/gms/internal/ads/zzra;->y0:I

    if-ne v0, v11, :cond_15a

    .line 43
    :cond_19f
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzra;->I0()V

    goto :goto_15a

    :cond_1a3
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzra;->k0:Z

    if-eqz v1, :cond_1b6

    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/zzra;->k0:Z

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzra;->U:Lcom/google/android/gms/internal/ads/zzqu;

    .line 44
    invoke-interface {v1, v0, v13}, Lcom/google/android/gms/internal/ads/zzqu;->n(IZ)V

    :goto_1ae
    move-wide v2, v9

    move-object v1, v15

    const/16 v16, 0x2

    const/16 v19, 0x0

    goto/16 :goto_307

    :cond_1b6
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzra;->J:Landroid/media/MediaCodec$BufferInfo;

    .line 45
    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v2, :cond_1c6

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1c6

    .line 46
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzra;->I0()V

    goto :goto_15a

    :cond_1c6
    iput v0, v15, Lcom/google/android/gms/internal/ads/zzra;->p0:I

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzra;->U:Lcom/google/android/gms/internal/ads/zzqu;

    .line 47
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzqu;->w(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v15, Lcom/google/android/gms/internal/ads/zzra;->q0:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1e5

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzra;->J:Landroid/media/MediaCodec$BufferInfo;

    .line 48
    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzra;->q0:Ljava/nio/ByteBuffer;

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzra;->J:Landroid/media/MediaCodec$BufferInfo;

    .line 49
    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_1e5
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzra;->i0:Z

    if-eqz v0, :cond_206

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzra;->J:Landroid/media/MediaCodec$BufferInfo;

    .line 50
    iget-wide v1, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_206

    iget v1, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_206

    iget-wide v1, v15, Lcom/google/android/gms/internal/ads/zzra;->D0:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_206

    .line 51
    iput-wide v1, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    :cond_206
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzra;->J:Landroid/media/MediaCodec$BufferInfo;

    .line 52
    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzra;->I:Ljava/util/ArrayList;

    .line 53
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_211
    if-ge v3, v2, :cond_22d

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzra;->I:Ljava/util/ArrayList;

    .line 54
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-nez v6, :cond_22a

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzra;->I:Ljava/util/ArrayList;

    .line 55
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_22e

    :cond_22a
    add-int/lit8 v3, v3, 0x1

    goto :goto_211

    :cond_22d
    const/4 v0, 0x0

    :goto_22e
    iput-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzra;->r0:Z

    iget-wide v0, v15, Lcom/google/android/gms/internal/ads/zzra;->E0:J

    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzra;->J:Landroid/media/MediaCodec$BufferInfo;

    .line 56
    iget-wide v2, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_23c

    const/4 v0, 0x1

    goto :goto_23d

    :cond_23c
    const/4 v0, 0x0

    :goto_23d
    iput-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzra;->s0:Z

    .line 57
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzra;->H:Lcom/google/android/gms/internal/ads/zzet;

    .line 58
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzet;->c(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaf;

    if-nez v0, :cond_255

    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzra;->X:Z

    if-eqz v1, :cond_255

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzra;->H:Lcom/google/android/gms/internal/ads/zzet;

    .line 59
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzet;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaf;

    :cond_255
    if-eqz v0, :cond_25a

    iput-object v0, v15, Lcom/google/android/gms/internal/ads/zzra;->O:Lcom/google/android/gms/internal/ads/zzaf;

    goto :goto_262

    .line 60
    :cond_25a
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzra;->X:Z

    if-eqz v0, :cond_26b

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzra;->O:Lcom/google/android/gms/internal/ads/zzaf;

    if-eqz v0, :cond_26b

    .line 61
    :goto_262
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzra;->O:Lcom/google/android/gms/internal/ads/zzaf;

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzra;->W:Landroid/media/MediaFormat;

    .line 62
    invoke-virtual {v15, v0, v1}, Lcom/google/android/gms/internal/ads/zzra;->k0(Lcom/google/android/gms/internal/ads/zzaf;Landroid/media/MediaFormat;)V

    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/zzra;->X:Z
    :try_end_26b
    .catch Ljava/lang/IllegalStateException; {:try_start_150 .. :try_end_26b} :catch_352

    :cond_26b
    :try_start_26b
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzra;->h0:Z
    :try_end_26d
    .catch Ljava/lang/IllegalStateException; {:try_start_26b .. :try_end_26d} :catch_330

    if-eqz v0, :cond_2c7

    :try_start_26f
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzra;->B0:Z
    :try_end_271
    .catch Ljava/lang/IllegalStateException; {:try_start_26f .. :try_end_271} :catch_2c2

    if-eqz v0, :cond_2c7

    :try_start_273
    iget-object v6, v15, Lcom/google/android/gms/internal/ads/zzra;->U:Lcom/google/android/gms/internal/ads/zzqu;

    iget-object v7, v15, Lcom/google/android/gms/internal/ads/zzra;->q0:Ljava/nio/ByteBuffer;

    iget v8, v15, Lcom/google/android/gms/internal/ads/zzra;->p0:I

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzra;->J:Landroid/media/MediaCodec$BufferInfo;

    .line 63
    iget v12, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/16 v16, 0x1

    iget-wide v4, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzra;->r0:Z

    iget-boolean v2, v15, Lcom/google/android/gms/internal/ads/zzra;->s0:Z

    iget-object v3, v15, Lcom/google/android/gms/internal/ads/zzra;->O:Lcom/google/android/gms/internal/ads/zzaf;
    :try_end_287
    .catch Ljava/lang/IllegalStateException; {:try_start_273 .. :try_end_287} :catch_2a8

    move-object/from16 v1, p0

    move/from16 v17, v2

    move-object/from16 v18, v3

    move-wide/from16 v2, p1

    move-wide/from16 v19, v4

    move-wide/from16 v4, p3

    move-wide/from16 v21, v9

    move v9, v12

    move/from16 v10, v16

    const/16 v16, 0x2

    move-wide/from16 v11, v19

    const/16 v19, 0x0

    move v13, v0

    move/from16 v14, v17

    move-object/from16 v15, v18

    .line 64
    :try_start_2a3
    invoke-virtual/range {v1 .. v15}, Lcom/google/android/gms/internal/ads/zzra;->p0(JJLcom/google/android/gms/internal/ads/zzqu;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/zzaf;)Z

    move-result v0
    :try_end_2a7
    .catch Ljava/lang/IllegalStateException; {:try_start_2a3 .. :try_end_2a7} :catch_2ac

    goto :goto_2eb

    :catch_2a8
    move-wide/from16 v21, v9

    const/16 v19, 0x0

    .line 65
    :catch_2ac
    :try_start_2ac
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzra;->I0()V
    :try_end_2af
    .catch Ljava/lang/IllegalStateException; {:try_start_2ac .. :try_end_2af} :catch_2bc

    move-object/from16 v15, p0

    :try_start_2b1
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzra;->G0:Z

    if-eqz v0, :cond_2b8

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzra;->A0()V

    :cond_2b8
    move-object v1, v15

    :goto_2b9
    move-wide/from16 v2, v21

    goto :goto_318

    :catch_2bc
    move-exception v0

    const/4 v2, 0x1

    :goto_2be
    move-object/from16 v1, p0

    goto/16 :goto_357

    :catch_2c2
    move-exception v0

    const/16 v19, 0x0

    goto/16 :goto_32e

    :cond_2c7
    move-wide/from16 v21, v9

    const/16 v16, 0x2

    const/16 v19, 0x0

    .line 67
    iget-object v6, v15, Lcom/google/android/gms/internal/ads/zzra;->U:Lcom/google/android/gms/internal/ads/zzqu;

    iget-object v7, v15, Lcom/google/android/gms/internal/ads/zzra;->q0:Ljava/nio/ByteBuffer;

    iget v8, v15, Lcom/google/android/gms/internal/ads/zzra;->p0:I

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzra;->J:Landroid/media/MediaCodec$BufferInfo;

    .line 68
    iget v9, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v10, 0x1

    iget-wide v11, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v13, v15, Lcom/google/android/gms/internal/ads/zzra;->r0:Z

    iget-boolean v14, v15, Lcom/google/android/gms/internal/ads/zzra;->s0:Z

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzra;->O:Lcom/google/android/gms/internal/ads/zzaf;
    :try_end_2e0
    .catch Ljava/lang/IllegalStateException; {:try_start_2b1 .. :try_end_2e0} :catch_32d

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-object v15, v0

    .line 69
    :try_start_2e7
    invoke-virtual/range {v1 .. v15}, Lcom/google/android/gms/internal/ads/zzra;->p0(JJLcom/google/android/gms/internal/ads/zzqu;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/zzaf;)Z

    move-result v0
    :try_end_2eb
    .catch Ljava/lang/IllegalStateException; {:try_start_2e7 .. :try_end_2eb} :catch_329

    :goto_2eb
    if-eqz v0, :cond_315

    move-object/from16 v1, p0

    .line 70
    :try_start_2ef
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzra;->J:Landroid/media/MediaCodec$BufferInfo;

    .line 71
    iget-wide v2, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzra;->y0(J)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzra;->J:Landroid/media/MediaCodec$BufferInfo;

    .line 72
    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    .line 73
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzra;->a0()V

    if-eqz v0, :cond_305

    .line 74
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzra;->I0()V

    goto :goto_2b9

    :cond_305
    move-wide/from16 v2, v21

    .line 75
    :goto_307
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzra;->i0(J)Z

    move-result v0

    if-nez v0, :cond_30e

    goto :goto_318

    :cond_30e
    move-object v15, v1

    move-wide v9, v2

    const/4 v11, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto/16 :goto_139

    :cond_315
    move-object/from16 v1, p0

    goto :goto_2b9

    .line 76
    :cond_318
    :goto_318
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzra;->d0()Z

    move-result v0

    if-eqz v0, :cond_324

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzra;->i0(J)Z

    move-result v0

    if-nez v0, :cond_318

    .line 77
    :cond_324
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const/4 v2, 0x1

    goto :goto_347

    :catch_329
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_350

    :catch_32d
    move-exception v0

    :goto_32e
    move-object v1, v15

    goto :goto_350

    :catch_330
    move-exception v0

    move-object v1, v15

    const/16 v19, 0x0

    goto :goto_350

    :cond_335
    move-object v1, v15

    const/16 v19, 0x0

    .line 78
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzra;->I0:Lcom/google/android/gms/internal/ads/zzhb;

    .line 79
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzhb;->d:I

    invoke-virtual/range {p0 .. p2}, Lcom/google/android/gms/internal/ads/zzha;->y(J)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzhb;->d:I
    :try_end_343
    .catch Ljava/lang/IllegalStateException; {:try_start_2ef .. :try_end_343} :catch_34f

    const/4 v2, 0x1

    .line 80
    :try_start_344
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzra;->g0(I)Z

    .line 81
    :goto_347
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzra;->I0:Lcom/google/android/gms/internal/ads/zzhb;

    .line 82
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhb;->a()V
    :try_end_34c
    .catch Ljava/lang/IllegalStateException; {:try_start_344 .. :try_end_34c} :catch_34d

    return-void

    :catch_34d
    move-exception v0

    goto :goto_357

    :catch_34f
    move-exception v0

    :goto_350
    const/4 v2, 0x1

    goto :goto_357

    :catch_352
    move-exception v0

    move-object v1, v15

    const/4 v2, 0x1

    const/16 v19, 0x0

    .line 83
    :goto_357
    sget v3, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_362

    .line 84
    instance-of v5, v0, Landroid/media/MediaCodec$CodecException;

    if-eqz v5, :cond_362

    goto :goto_377

    .line 85
    :cond_362
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    .line 86
    array-length v6, v5

    if-lez v6, :cond_3a0

    aget-object v5, v5, v19

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.media.MediaCodec"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a0

    .line 87
    :goto_377
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzra;->W(Ljava/lang/Exception;)V

    if-lt v3, v4, :cond_38b

    .line 88
    instance-of v3, v0, Landroid/media/MediaCodec$CodecException;

    if-eqz v3, :cond_38b

    .line 89
    move-object v3, v0

    check-cast v3, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {v3}, Landroid/media/MediaCodec$CodecException;->isRecoverable()Z

    move-result v3

    if-eqz v3, :cond_38b

    const/4 v14, 0x1

    goto :goto_38c

    :cond_38b
    const/4 v14, 0x0

    :goto_38c
    if-eqz v14, :cond_391

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzra;->A0()V

    :cond_391
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzra;->b0:Lcom/google/android/gms/internal/ads/zzqx;

    .line 91
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzra;->u0(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzqx;)Lcom/google/android/gms/internal/ads/zzqv;

    move-result-object v0

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzra;->N:Lcom/google/android/gms/internal/ads/zzaf;

    const/16 v3, 0xfa3

    .line 92
    invoke-virtual {v1, v0, v2, v14, v3}, Lcom/google/android/gms/internal/ads/zzha;->x(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzaf;ZI)Lcom/google/android/gms/internal/ads/zzhj;

    move-result-object v0

    throw v0

    .line 93
    :cond_3a0
    goto :goto_3a2

    :goto_3a1
    throw v0

    :goto_3a2
    goto :goto_3a1
.end method

.method protected q0(Lcom/google/android/gms/internal/ads/zzaf;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method protected final r0()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzra;->S:F

    return v0
.end method

.method protected final s0()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzra;->K0:J

    return-wide v0
.end method

.method protected final t0()Lcom/google/android/gms/internal/ads/zzqu;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzra;->U:Lcom/google/android/gms/internal/ads/zzqu;

    return-object v0
.end method

.method protected u0(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzqx;)Lcom/google/android/gms/internal/ads/zzqv;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzqv;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzqv;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzqx;)V

    return-object v0
.end method

.method protected final v0()Lcom/google/android/gms/internal/ads/zzqx;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzra;->b0:Lcom/google/android/gms/internal/ads/zzqx;

    return-object v0
.end method

.method protected w0(Lcom/google/android/gms/internal/ads/zzgr;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhj;
        }
    .end annotation

    return-void
.end method

.method protected final x0()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhj;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzra;->U:Lcom/google/android/gms/internal/ads/zzqu;

    if-nez v0, :cond_123

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzra;->t0:Z

    if-nez v0, :cond_123

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzra;->N:Lcom/google/android/gms/internal/ads/zzaf;

    if-nez v0, :cond_e

    goto/16 :goto_123

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzra;->N0:Lcom/google/android/gms/internal/ads/zzqa;

    if-nez v1, :cond_48

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzra;->q0(Lcom/google/android/gms/internal/ads/zzaf;)Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzra;->N:Lcom/google/android/gms/internal/ads/zzaf;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzra;->R()V

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaf;->l:Ljava/lang/String;

    const-string v1, "audio/mp4a-latm"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3e

    const-string v1, "audio/mpeg"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    const-string v1, "audio/opus"

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzra;->G:Lcom/google/android/gms/internal/ads/zzqo;

    .line 7
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzqo;->o(I)V

    goto :goto_45

    :cond_3e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzra;->G:Lcom/google/android/gms/internal/ads/zzqo;

    const/16 v1, 0x20

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzqo;->o(I)V

    .line 9
    :goto_45
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzra;->t0:Z

    return-void

    .line 10
    :cond_48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzra;->N0:Lcom/google/android/gms/internal/ads/zzqa;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzra;->M0:Lcom/google/android/gms/internal/ads/zzqa;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzra;->N:Lcom/google/android/gms/internal/ads/zzaf;

    .line 11
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaf;->l:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_65

    .line 12
    sget-boolean v3, Lcom/google/android/gms/internal/ads/zzqb;->a:Z

    if-nez v3, :cond_58

    goto :goto_65

    .line 13
    :cond_58
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqa;->a()Lcom/google/android/gms/internal/ads/zzpr;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzra;->N:Lcom/google/android/gms/internal/ads/zzaf;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzpr;->o:I

    .line 14
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzha;->x(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzaf;ZI)Lcom/google/android/gms/internal/ads/zzhj;

    move-result-object v0

    .line 15
    throw v0

    .line 16
    :cond_65
    :goto_65
    :try_start_65
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzra;->Z:Ljava/util/ArrayDeque;
    :try_end_67
    .catch Lcom/google/android/gms/internal/ads/zzqz; {:try_start_65 .. :try_end_67} :catch_119

    const/4 v3, 0x0

    if-nez v0, :cond_9a

    :try_start_6a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzra;->B:Lcom/google/android/gms/internal/ads/zzrc;

    .line 17
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzra;->U(Lcom/google/android/gms/internal/ads/zzrc;Lcom/google/android/gms/internal/ads/zzaf;Z)Ljava/util/List;

    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    new-instance v1, Ljava/util/ArrayDeque;

    .line 19
    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzra;->Z:Ljava/util/ArrayDeque;

    .line 20
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8b

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzra;->Z:Ljava/util/ArrayDeque;

    .line 21
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzqx;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_8b
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzra;->a0:Lcom/google/android/gms/internal/ads/zzqz;
    :try_end_8d
    .catch Lcom/google/android/gms/internal/ads/zzrj; {:try_start_6a .. :try_end_8d} :catch_8e
    .catch Lcom/google/android/gms/internal/ads/zzqz; {:try_start_6a .. :try_end_8d} :catch_119

    goto :goto_9a

    :catch_8e
    move-exception v0

    .line 22
    :try_start_8f
    new-instance v1, Lcom/google/android/gms/internal/ads/zzqz;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzra;->N:Lcom/google/android/gms/internal/ads/zzaf;

    const v4, -0xc34e

    .line 23
    invoke-direct {v1, v3, v0, v2, v4}, Lcom/google/android/gms/internal/ads/zzqz;-><init>(Lcom/google/android/gms/internal/ads/zzaf;Ljava/lang/Throwable;ZI)V

    throw v1

    .line 24
    :cond_9a
    :goto_9a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzra;->Z:Ljava/util/ArrayDeque;

    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10e

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzra;->Z:Ljava/util/ArrayDeque;

    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzqx;

    :goto_aa
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzra;->U:Lcom/google/android/gms/internal/ads/zzqu;

    if-nez v1, :cond_10b

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzra;->Z:Ljava/util/ArrayDeque;

    .line 28
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzqx;

    .line 29
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzra;->F0(Lcom/google/android/gms/internal/ads/zzqx;)Z

    move-result v4
    :try_end_ba
    .catch Lcom/google/android/gms/internal/ads/zzqz; {:try_start_8f .. :try_end_ba} :catch_119

    if-nez v4, :cond_bd

    return-void

    .line 30
    :cond_bd
    :try_start_bd
    invoke-direct {p0, v1, v3}, Lcom/google/android/gms/internal/ads/zzra;->H0(Lcom/google/android/gms/internal/ads/zzqx;Landroid/media/MediaCrypto;)V
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_c0} :catch_c1

    goto :goto_aa

    :catch_c1
    move-exception v4

    const-string v5, "MediaCodecRenderer"

    if-ne v1, v0, :cond_d4

    :try_start_c6
    const-string v4, "Preferred decoder instantiation failed. Sleeping for 50ms then retrying."

    .line 31
    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v6, 0x32

    .line 32
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 33
    invoke-direct {p0, v1, v3}, Lcom/google/android/gms/internal/ads/zzra;->H0(Lcom/google/android/gms/internal/ads/zzqx;Landroid/media/MediaCrypto;)V

    goto :goto_aa

    .line 34
    :cond_d4
    throw v4
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_d5} :catch_d5

    :catch_d5
    move-exception v4

    .line 35
    :try_start_d6
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Failed to initialize decoder: "

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lcom/google/android/gms/internal/ads/zzee;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzra;->Z:Ljava/util/ArrayDeque;

    .line 36
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzqz;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzra;->N:Lcom/google/android/gms/internal/ads/zzaf;

    .line 37
    invoke-direct {v5, v6, v4, v2, v1}, Lcom/google/android/gms/internal/ads/zzqz;-><init>(Lcom/google/android/gms/internal/ads/zzaf;Ljava/lang/Throwable;ZLcom/google/android/gms/internal/ads/zzqx;)V

    .line 38
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/ads/zzra;->W(Ljava/lang/Exception;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzra;->a0:Lcom/google/android/gms/internal/ads/zzqz;

    if-nez v1, :cond_f9

    iput-object v5, p0, Lcom/google/android/gms/internal/ads/zzra;->a0:Lcom/google/android/gms/internal/ads/zzqz;

    goto :goto_ff

    .line 39
    :cond_f9
    invoke-static {v1, v5}, Lcom/google/android/gms/internal/ads/zzqz;->a(Lcom/google/android/gms/internal/ads/zzqz;Lcom/google/android/gms/internal/ads/zzqz;)Lcom/google/android/gms/internal/ads/zzqz;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzra;->a0:Lcom/google/android/gms/internal/ads/zzqz;

    .line 40
    :goto_ff
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzra;->Z:Ljava/util/ArrayDeque;

    .line 41
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_108

    goto :goto_aa

    :cond_108
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzra;->a0:Lcom/google/android/gms/internal/ads/zzqz;

    .line 42
    throw v0

    .line 43
    :cond_10b
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzra;->Z:Ljava/util/ArrayDeque;

    return-void

    .line 44
    :cond_10e
    new-instance v0, Lcom/google/android/gms/internal/ads/zzqz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzra;->N:Lcom/google/android/gms/internal/ads/zzaf;

    const v4, -0xc34f

    .line 45
    invoke-direct {v0, v1, v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzqz;-><init>(Lcom/google/android/gms/internal/ads/zzaf;Ljava/lang/Throwable;ZI)V

    throw v0
    :try_end_119
    .catch Lcom/google/android/gms/internal/ads/zzqz; {:try_start_d6 .. :try_end_119} :catch_119

    :catch_119
    move-exception v0

    .line 46
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzra;->N:Lcom/google/android/gms/internal/ads/zzaf;

    const/16 v3, 0xfa1

    .line 47
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzha;->x(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzaf;ZI)Lcom/google/android/gms/internal/ads/zzhj;

    move-result-object v0

    .line 48
    throw v0

    :cond_123
    :goto_123
    return-void
.end method

.method protected y0(J)V
    .registers 9

    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzra;->L0:I

    if-eqz v0, :cond_33

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzra;->M:[J

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    cmp-long v1, p1, v3

    if-ltz v1, :cond_33

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzra;->K:[J

    aget-wide v3, v1, v2

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzra;->J0:J

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzra;->L:[J

    aget-wide v4, v3, v2

    .line 1
    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzra;->K0:J

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzra;->L0:I

    const/4 v3, 0x1

    invoke-static {v1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzra;->L:[J

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzra;->L0:I

    .line 2
    invoke-static {v0, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzra;->M:[J

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzra;->L0:I

    .line 3
    invoke-static {v0, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzra;->m0()V

    goto :goto_0

    :cond_33
    return-void
.end method

.method protected z0(Lcom/google/android/gms/internal/ads/zzaf;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhj;
        }
    .end annotation

    return-void
.end method
