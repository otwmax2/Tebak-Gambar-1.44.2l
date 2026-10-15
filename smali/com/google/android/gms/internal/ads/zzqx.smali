###### Class com.google.android.gms.internal.ads.zzqx (com.google.android.gms.internal.ads.zzqx)
.class public final Lcom/google/android/gms/internal/ads/zzqx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Landroid/media/MediaCodecInfo$CodecCapabilities;

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field private final h:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZZ)V
    .registers 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqx;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzqx;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzqx;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzqx;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzqx;->g:Z

    iput-boolean p8, p0, Lcom/google/android/gms/internal/ads/zzqx;->e:Z

    iput-boolean p10, p0, Lcom/google/android/gms/internal/ads/zzqx;->f:Z

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbt;->h(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzqx;->h:Z

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Lcom/google/android/gms/internal/ads/zzqx;
    .registers 21

    move-object v1, p0

    move-object v4, p3

    .line 1
    new-instance v11, Lcom/google/android/gms/internal/ads/zzqx;

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz v4, :cond_3b

    sget v3, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const-string v5, "adaptive-playback"

    .line 2
    invoke-virtual {p3, v5}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3b

    const/16 v5, 0x16

    if-gt v3, v5, :cond_39

    sget-object v3, Lcom/google/android/gms/internal/ads/zzew;->d:Ljava/lang/String;

    const-string v5, "ODROID-XU3"

    .line 3
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_28

    const-string v5, "Nexus 10"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    :cond_28
    const-string v3, "OMX.Exynos.AVC.Decoder"

    .line 4
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    const-string v3, "OMX.Exynos.AVC.Decoder.secure"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    goto :goto_3b

    :cond_39
    const/4 v8, 0x1

    goto :goto_3c

    :cond_3b
    :goto_3b
    const/4 v8, 0x0

    :goto_3c
    const/16 v3, 0x15

    if-eqz v4, :cond_4e

    .line 5
    sget v5, Lcom/google/android/gms/internal/ads/zzew;->a:I

    if-lt v5, v3, :cond_4e

    const-string v5, "tunneled-playback"

    .line 6
    invoke-virtual {p3, v5}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4e

    const/4 v9, 0x1

    goto :goto_4f

    :cond_4e
    const/4 v9, 0x0

    :goto_4f
    if-nez p8, :cond_62

    if-eqz v4, :cond_60

    .line 7
    sget v5, Lcom/google/android/gms/internal/ads/zzew;->a:I

    if-lt v5, v3, :cond_60

    const-string v3, "secure-playback"

    .line 8
    invoke-virtual {p3, v3}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_60

    goto :goto_62

    :cond_60
    const/4 v10, 0x0

    goto :goto_63

    :cond_62
    :goto_62
    const/4 v10, 0x1

    :goto_63
    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    .line 9
    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/zzqx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZZ)V

    return-object v11
.end method

.method private static i(Landroid/media/MediaCodecInfo$VideoCapabilities;II)Landroid/graphics/Point;
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    move-result p0

    new-instance v1, Landroid/graphics/Point;

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzew;->P(II)I

    move-result p1

    mul-int p1, p1, v0

    .line 4
    invoke-static {p2, p0}, Lcom/google/android/gms/internal/ads/zzew;->P(II)I

    move-result p2

    mul-int p2, p2, p0

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method

.method private final j(Ljava/lang/String;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqx;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqx;->b:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzew;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NoSupport ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] ["

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaCodecInfo"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzee;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static k(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z
    .registers 8

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzqx;->i(Landroid/media/MediaCodecInfo$VideoCapabilities;II)Landroid/graphics/Point;

    move-result-object p1

    .line 2
    iget p2, p1, Landroid/graphics/Point;->x:I

    .line 3
    iget p1, p1, Landroid/graphics/Point;->y:I

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpl-double v2, p3, v0

    if-eqz v2, :cond_1e

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, p3, v0

    if-gez v2, :cond_15

    goto :goto_1e

    .line 4
    :cond_15
    invoke-static {p3, p4}, Ljava/lang/Math;->floor(D)D

    move-result-wide p3

    .line 5
    invoke-virtual {p0, p2, p1, p3, p4}, Landroid/media/MediaCodecInfo$VideoCapabilities;->areSizeAndRateSupported(IID)Z

    move-result p0

    return p0

    .line 6
    :cond_1e
    :goto_1e
    invoke-virtual {p0, p2, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result p0

    return p0
.end method

.method private final l(Lcom/google/android/gms/internal/ads/zzaf;Z)Z
    .registers 14

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzrp;->b(Lcom/google/android/gms/internal/ads/zzaf;)Landroid/util/Pair;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    .line 2
    :cond_8
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 3
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzaf;->l:Ljava/lang/String;

    const-string v4, "video/dolby-vision"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0x8

    const-string v5, "video/hevc"

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eqz v3, :cond_40

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzqx;->b:Ljava/lang/String;

    const-string v8, "video/avc"

    .line 5
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    const/4 v0, 0x0

    const/16 v2, 0x8

    goto :goto_40

    .line 6
    :cond_36
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzqx;->b:Ljava/lang/String;

    .line 7
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    const/4 v0, 0x0

    const/4 v2, 0x2

    .line 8
    :cond_40
    :goto_40
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzqx;->h:Z

    if-nez v3, :cond_4a

    const/16 v3, 0x2a

    if-ne v2, v3, :cond_49

    goto :goto_4a

    :cond_49
    return v1

    .line 9
    :cond_4a
    :goto_4a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqx;->h()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v3

    .line 10
    sget v8, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const/16 v9, 0x17

    if-gt v8, v9, :cond_d6

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzqx;->b:Ljava/lang/String;

    const-string v9, "video/x-vnd.on2.vp9"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d6

    array-length v8, v3

    if-nez v8, :cond_d6

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzqx;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-eqz v3, :cond_7a

    .line 11
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v3

    if-eqz v3, :cond_7a

    .line 12
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBitrateRange()Landroid/util/Range;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_7b

    :cond_7a
    const/4 v3, 0x0

    :goto_7b
    const v8, 0xaba9500

    if-lt v3, v8, :cond_83

    const/16 v4, 0x400

    goto :goto_c8

    :cond_83
    const v8, 0x7270e00

    if-lt v3, v8, :cond_8b

    const/16 v4, 0x200

    goto :goto_c8

    :cond_8b
    const v8, 0x3938700

    if-lt v3, v8, :cond_93

    const/16 v4, 0x100

    goto :goto_c8

    :cond_93
    const v8, 0x1c9c380

    if-lt v3, v8, :cond_9b

    const/16 v4, 0x80

    goto :goto_c8

    :cond_9b
    const v8, 0x112a880

    if-lt v3, v8, :cond_a3

    const/16 v4, 0x40

    goto :goto_c8

    :cond_a3
    const v8, 0xb71b00

    if-lt v3, v8, :cond_ab

    const/16 v4, 0x20

    goto :goto_c8

    :cond_ab
    const v8, 0x6ddd00

    if-lt v3, v8, :cond_b3

    const/16 v4, 0x10

    goto :goto_c8

    :cond_b3
    const v8, 0x36ee80

    if-lt v3, v8, :cond_b9

    goto :goto_c8

    :cond_b9
    const v4, 0x1b7740

    if-lt v3, v4, :cond_c0

    const/4 v4, 0x4

    goto :goto_c8

    :cond_c0
    const v4, 0xc3500

    if-lt v3, v4, :cond_c7

    const/4 v4, 0x2

    goto :goto_c8

    :cond_c7
    const/4 v4, 0x1

    .line 13
    :goto_c8
    new-instance v3, Landroid/media/MediaCodecInfo$CodecProfileLevel;

    invoke-direct {v3}, Landroid/media/MediaCodecInfo$CodecProfileLevel;-><init>()V

    .line 14
    iput v1, v3, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 15
    iput v4, v3, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    new-array v4, v1, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    aput-object v3, v4, v7

    move-object v3, v4

    .line 16
    :cond_d6
    array-length v4, v3

    const/4 v8, 0x0

    :goto_d8
    if-ge v8, v4, :cond_107

    aget-object v9, v3, v8

    .line 17
    iget v10, v9, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-ne v10, v2, :cond_104

    iget v9, v9, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    if-ge v9, v0, :cond_e6

    if-nez p2, :cond_104

    :cond_e6
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzqx;->b:Ljava/lang/String;

    .line 18
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_103

    if-ne v2, v6, :cond_103

    sget-object v9, Lcom/google/android/gms/internal/ads/zzew;->b:Ljava/lang/String;

    const-string v10, "sailfish"

    .line 19
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_104

    const-string v10, "marlin"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_103

    goto :goto_104

    :cond_103
    return v1

    :cond_104
    :goto_104
    add-int/lit8 v8, v8, 0x1

    goto :goto_d8

    .line 20
    :cond_107
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzaf;->i:Ljava/lang/String;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzqx;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "codec.profileLevel, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzqx;->j(Ljava/lang/String;)V

    return v7
.end method

.method private final m(Lcom/google/android/gms/internal/ads/zzaf;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqx;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzaf;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqx;->b:Ljava/lang/String;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzrp;->e(Lcom/google/android/gms/internal/ads/zzaf;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    goto :goto_19

    :cond_17
    const/4 p1, 0x0

    return p1

    :cond_19
    :goto_19
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public final a(II)Landroid/graphics/Point;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqx;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v0

    if-nez v0, :cond_d

    return-object v1

    .line 2
    :cond_d
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzqx;->i(Landroid/media/MediaCodecInfo$VideoCapabilities;II)Landroid/graphics/Point;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/google/android/gms/internal/ads/zzaf;Lcom/google/android/gms/internal/ads/zzaf;)Lcom/google/android/gms/internal/ads/zzhc;
    .registers 16

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzaf;->l:Ljava/lang/String;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzaf;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzew;->u(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_e

    const/16 v0, 0x8

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzqx;->h:Z

    if-eqz v2, :cond_71

    .line 2
    iget v2, p1, Lcom/google/android/gms/internal/ads/zzaf;->t:I

    iget v3, p2, Lcom/google/android/gms/internal/ads/zzaf;->t:I

    if-eq v2, v3, :cond_1b

    or-int/lit16 v0, v0, 0x400

    :cond_1b
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzqx;->e:Z

    if-nez v2, :cond_2d

    .line 3
    iget v2, p1, Lcom/google/android/gms/internal/ads/zzaf;->q:I

    iget v3, p2, Lcom/google/android/gms/internal/ads/zzaf;->q:I

    if-ne v2, v3, :cond_2b

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzaf;->r:I

    iget v3, p2, Lcom/google/android/gms/internal/ads/zzaf;->r:I

    if-eq v2, v3, :cond_2d

    :cond_2b
    or-int/lit16 v0, v0, 0x200

    .line 4
    :cond_2d
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzaf;->x:Lcom/google/android/gms/internal/ads/zzq;

    iget-object v3, p2, Lcom/google/android/gms/internal/ads/zzaf;->x:Lcom/google/android/gms/internal/ads/zzq;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzew;->u(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    or-int/lit16 v0, v0, 0x800

    :cond_39
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzqx;->a:Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzew;->d:Ljava/lang/String;

    const-string v4, "SM-T230"

    .line 5
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_55

    const-string v3, "OMX.MARVELL.VIDEO.HW.CODA7542DECODER"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 6
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzaf;->e(Lcom/google/android/gms/internal/ads/zzaf;)Z

    move-result v2

    if-nez v2, :cond_55

    or-int/lit8 v0, v0, 0x2

    :cond_55
    if-nez v0, :cond_6e

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhc;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzqx;->a:Ljava/lang/String;

    .line 7
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzaf;->e(Lcom/google/android/gms/internal/ads/zzaf;)Z

    move-result v2

    if-eq v1, v2, :cond_64

    const/4 v1, 0x2

    const/4 v6, 0x2

    goto :goto_66

    :cond_64
    const/4 v1, 0x3

    const/4 v6, 0x3

    :goto_66
    const/4 v7, 0x0

    move-object v2, v0

    move-object v4, p1

    move-object v5, p2

    .line 8
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzhc;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaf;Lcom/google/android/gms/internal/ads/zzaf;II)V

    return-object v0

    :cond_6e
    move v12, v0

    goto/16 :goto_e8

    .line 9
    :cond_71
    iget v1, p1, Lcom/google/android/gms/internal/ads/zzaf;->y:I

    iget v2, p2, Lcom/google/android/gms/internal/ads/zzaf;->y:I

    if-eq v1, v2, :cond_79

    or-int/lit16 v0, v0, 0x1000

    .line 10
    :cond_79
    iget v1, p1, Lcom/google/android/gms/internal/ads/zzaf;->z:I

    iget v2, p2, Lcom/google/android/gms/internal/ads/zzaf;->z:I

    if-eq v1, v2, :cond_81

    or-int/lit16 v0, v0, 0x2000

    .line 11
    :cond_81
    iget v1, p1, Lcom/google/android/gms/internal/ads/zzaf;->A:I

    iget v2, p2, Lcom/google/android/gms/internal/ads/zzaf;->A:I

    if-eq v1, v2, :cond_89

    or-int/lit16 v0, v0, 0x4000

    :cond_89
    if-nez v0, :cond_c5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqx;->b:Ljava/lang/String;

    const-string v2, "audio/mp4a-latm"

    .line 12
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c5

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzrp;->b(Lcom/google/android/gms/internal/ads/zzaf;)Landroid/util/Pair;

    move-result-object v1

    .line 14
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzrp;->b(Lcom/google/android/gms/internal/ads/zzaf;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v1, :cond_c5

    if-eqz v2, :cond_c5

    .line 15
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 16
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x2a

    if-ne v1, v3, :cond_c5

    if-eq v2, v3, :cond_b8

    goto :goto_c5

    .line 17
    :cond_b8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhc;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzqx;->a:Ljava/lang/String;

    const/4 v8, 0x3

    const/4 v9, 0x0

    move-object v4, v0

    move-object v6, p1

    move-object v7, p2

    .line 18
    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzhc;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaf;Lcom/google/android/gms/internal/ads/zzaf;II)V

    return-object v0

    .line 19
    :cond_c5
    :goto_c5
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzaf;->e(Lcom/google/android/gms/internal/ads/zzaf;)Z

    move-result v1

    if-nez v1, :cond_cd

    or-int/lit8 v0, v0, 0x20

    :cond_cd
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqx;->b:Ljava/lang/String;

    const-string v2, "audio/opus"

    .line 20
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d9

    or-int/lit8 v0, v0, 0x2

    :cond_d9
    if-nez v0, :cond_6e

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhc;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzqx;->a:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    .line 21
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzhc;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaf;Lcom/google/android/gms/internal/ads/zzaf;II)V

    return-object v0

    .line 22
    :goto_e8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhc;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzqx;->a:Ljava/lang/String;

    const/4 v11, 0x0

    move-object v7, v0

    move-object v9, p1

    move-object v10, p2

    .line 23
    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/internal/ads/zzhc;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaf;Lcom/google/android/gms/internal/ads/zzaf;II)V

    return-object v0
.end method

.method public final d(Lcom/google/android/gms/internal/ads/zzaf;)Z
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzqx;->m(Lcom/google/android/gms/internal/ads/zzaf;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 2
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzqx;->l(Lcom/google/android/gms/internal/ads/zzaf;Z)Z

    move-result p1

    if-eqz p1, :cond_f

    const/4 p1, 0x1

    return p1

    :cond_f
    return v1
.end method

.method public final e(Lcom/google/android/gms/internal/ads/zzaf;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzrj;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzqx;->m(Lcom/google/android/gms/internal/ads/zzaf;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzqx;->l(Lcom/google/android/gms/internal/ads/zzaf;Z)Z

    move-result v2

    if-nez v2, :cond_10

    return v1

    :cond_10
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzqx;->h:Z

    const/16 v3, 0x15

    if-eqz v2, :cond_58

    .line 3
    iget v2, p1, Lcom/google/android/gms/internal/ads/zzaf;->q:I

    if-lez v2, :cond_57

    iget v4, p1, Lcom/google/android/gms/internal/ads/zzaf;->r:I

    if-gtz v4, :cond_1f

    goto :goto_57

    .line 4
    :cond_1f
    sget v5, Lcom/google/android/gms/internal/ads/zzew;->a:I

    if-lt v5, v3, :cond_2b

    .line 5
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzaf;->s:F

    float-to-double v0, p1

    invoke-virtual {p0, v2, v4, v0, v1}, Lcom/google/android/gms/internal/ads/zzqx;->g(IID)Z

    move-result p1

    return p1

    :cond_2b
    mul-int v2, v2, v4

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzrp;->a()I

    move-result v3

    if-gt v2, v3, :cond_34

    const/4 v1, 0x1

    :cond_34
    if-nez v1, :cond_56

    .line 7
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzaf;->q:I

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzaf;->r:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "legacyFrameSize, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzqx;->j(Ljava/lang/String;)V

    :cond_56
    return v1

    :cond_57
    :goto_57
    return v0

    .line 8
    :cond_58
    sget v2, Lcom/google/android/gms/internal/ads/zzew;->a:I

    if-lt v2, v3, :cond_176

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzaf;->z:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_95

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzqx;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-nez v5, :cond_6c

    const-string p1, "sampleRate.caps"

    .line 9
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzqx;->j(Ljava/lang/String;)V

    goto/16 :goto_177

    .line 10
    :cond_6c
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v5

    if-nez v5, :cond_79

    const-string p1, "sampleRate.aCaps"

    .line 11
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzqx;->j(Ljava/lang/String;)V

    goto/16 :goto_177

    .line 12
    :cond_79
    invoke-virtual {v5, v3}, Landroid/media/MediaCodecInfo$AudioCapabilities;->isSampleRateSupported(I)Z

    move-result v5

    if-nez v5, :cond_95

    new-instance p1, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sampleRate.support, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzqx;->j(Ljava/lang/String;)V

    goto/16 :goto_177

    .line 14
    :cond_95
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzaf;->y:I

    if-eq p1, v4, :cond_176

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzqx;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-nez v3, :cond_a4

    const-string p1, "channelCount.caps"

    .line 15
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzqx;->j(Ljava/lang/String;)V

    goto/16 :goto_175

    .line 16
    :cond_a4
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v3

    if-nez v3, :cond_b1

    const-string p1, "channelCount.aCaps"

    .line 17
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzqx;->j(Ljava/lang/String;)V

    goto/16 :goto_175

    :cond_b1
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzqx;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzqx;->b:Ljava/lang/String;

    .line 18
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo$AudioCapabilities;->getMaxInputChannelCount()I

    move-result v3

    if-gt v3, v0, :cond_15f

    const/16 v6, 0x1a

    if-lt v2, v6, :cond_c3

    if-lez v3, :cond_c3

    goto/16 :goto_15f

    :cond_c3
    const-string v2, "audio/mpeg"

    .line 19
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15f

    const-string v2, "audio/3gpp"

    .line 20
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15f

    const-string v2, "audio/amr-wb"

    .line 21
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15f

    const-string v2, "audio/mp4a-latm"

    .line 22
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15f

    const-string v2, "audio/vorbis"

    .line 23
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15f

    const-string v2, "audio/opus"

    .line 24
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15f

    const-string v2, "audio/raw"

    .line 25
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15f

    const-string v2, "audio/flac"

    .line 26
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15f

    const-string v2, "audio/g711-alaw"

    .line 27
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15f

    const-string v2, "audio/g711-mlaw"

    .line 28
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15f

    const-string v2, "audio/gsm"

    .line 29
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11c

    goto :goto_15f

    :cond_11c
    const-string v2, "audio/ac3"

    .line 30
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_126

    const/4 v2, 0x6

    goto :goto_133

    :cond_126
    const-string v2, "audio/eac3"

    .line 31
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_131

    const/16 v2, 0x10

    goto :goto_133

    :cond_131
    const/16 v2, 0x1e

    .line 32
    :goto_133
    new-instance v5, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AssumedMaxChannelAdjustment: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ["

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MediaCodecInfo"

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    :cond_15f
    :goto_15f
    if-ge v3, p1, :cond_176

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "channelCount.support, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzqx;->j(Ljava/lang/String;)V

    :goto_175
    return v1

    :cond_176
    const/4 v1, 0x1

    :goto_177
    return v1
.end method

.method public final f(Lcom/google/android/gms/internal/ads/zzaf;)Z
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqx;->h:Z

    if-eqz v0, :cond_7

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzqx;->e:Z

    return p1

    :cond_7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzrp;->b(Lcom/google/android/gms/internal/ads/zzaf;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 2
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x2a

    if-ne p1, v0, :cond_1b

    const/4 p1, 0x1

    return p1

    :cond_1b
    const/4 p1, 0x0

    return p1
.end method

.method public final g(IID)Z
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqx;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    const-string p1, "sizeAndRate.caps"

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzqx;->j(Ljava/lang/String;)V

    return v1

    .line 2
    :cond_b
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v0

    if-nez v0, :cond_17

    const-string p1, "sizeAndRate.vCaps"

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzqx;->j(Ljava/lang/String;)V

    return v1

    .line 4
    :cond_17
    sget v2, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const/16 v3, 0x1d

    const-string v4, "@"

    const-string v5, "x"

    const/4 v6, 0x1

    if-lt v2, v3, :cond_4e

    .line 5
    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzqw;->a(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2a

    return v6

    :cond_2a
    if-eq v2, v6, :cond_2d

    goto :goto_4e

    .line 6
    :cond_2d
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sizeAndRate.cover, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzqx;->j(Ljava/lang/String;)V

    return v1

    .line 8
    :cond_4e
    :goto_4e
    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzqx;->k(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z

    move-result v2

    if-nez v2, :cond_e7

    if-ge p1, p2, :cond_c6

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzqx;->a:Ljava/lang/String;

    const-string v3, "OMX.MTK.VIDEO.DECODER.HEVC"

    .line 9
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    sget-object v2, Lcom/google/android/gms/internal/ads/zzew;->b:Ljava/lang/String;

    const-string v3, "mcv5a"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c6

    .line 10
    :cond_6a
    invoke-static {v0, p2, p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzqx;->k(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z

    move-result v0

    if-nez v0, :cond_71

    goto :goto_c6

    .line 11
    :cond_71
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sizeAndRate.rotated, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzqx;->a:Ljava/lang/String;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzqx;->b:Ljava/lang/String;

    sget-object p4, Lcom/google/android/gms/internal/ads/zzew;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AssumedSupport ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaCodecInfo"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzee;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e7

    .line 14
    :cond_c6
    :goto_c6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sizeAndRate.support, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzqx;->j(Ljava/lang/String;)V

    return v1

    :cond_e7
    :goto_e7
    return v6
.end method

.method public final h()[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqx;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-eqz v0, :cond_8

    iget-object v0, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    if-nez v0, :cond_b

    :cond_8
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    :cond_b
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqx;->a:Ljava/lang/String;

    return-object v0
.end method
