###### Class com.google.android.gms.internal.ads.zzuc (com.google.android.gms.internal.ads.zzuc)
.class final Lcom/google/android/gms/internal/ads/zzuc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzen;

.field private b:Lcom/google/android/gms/internal/ads/zzub;

.field private c:Lcom/google/android/gms/internal/ads/zzub;

.field private d:Lcom/google/android/gms/internal/ads/zzub;

.field private e:J

.field private final f:Lcom/google/android/gms/internal/ads/zzwt;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzwt;[B)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzuc;->f:Lcom/google/android/gms/internal/ads/zzwt;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzen;

    const/16 p2, 0x20

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzuc;->a:Lcom/google/android/gms/internal/ads/zzen;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzub;

    const-wide/16 v0, 0x0

    const/high16 p2, 0x10000

    .line 2
    invoke-direct {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzub;-><init>(JI)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzuc;->b:Lcom/google/android/gms/internal/ads/zzub;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzuc;->c:Lcom/google/android/gms/internal/ads/zzub;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzuc;->d:Lcom/google/android/gms/internal/ads/zzub;

    return-void
.end method

.method private final i(I)I
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuc;->d:Lcom/google/android/gms/internal/ads/zzub;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzub;->c:Lcom/google/android/gms/internal/ads/zzwm;

    if-nez v1, :cond_1b

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzuc;->f:Lcom/google/android/gms/internal/ads/zzwt;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzwt;->b()Lcom/google/android/gms/internal/ads/zzwm;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzub;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzuc;->d:Lcom/google/android/gms/internal/ads/zzub;

    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/zzub;->b:J

    const/high16 v5, 0x10000

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzub;-><init>(JI)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzub;->c:Lcom/google/android/gms/internal/ads/zzwm;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzub;->d:Lcom/google/android/gms/internal/ads/zzub;

    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuc;->d:Lcom/google/android/gms/internal/ads/zzub;

    .line 3
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzub;->b:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzuc;->e:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private static j(Lcom/google/android/gms/internal/ads/zzub;J)Lcom/google/android/gms/internal/ads/zzub;
    .registers 6

    .line 1
    :goto_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzub;->b:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_9

    .line 2
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzub;->d:Lcom/google/android/gms/internal/ads/zzub;

    goto :goto_0

    :cond_9
    return-object p0
.end method

.method private static k(Lcom/google/android/gms/internal/ads/zzub;JLjava/nio/ByteBuffer;I)Lcom/google/android/gms/internal/ads/zzub;
    .registers 8

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzuc;->j(Lcom/google/android/gms/internal/ads/zzub;J)Lcom/google/android/gms/internal/ads/zzub;

    move-result-object p0

    :cond_4
    :goto_4
    if-lez p4, :cond_25

    .line 2
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzub;->b:J

    sub-long/2addr v0, p1

    long-to-int v1, v0

    invoke-static {p4, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzub;->c:Lcom/google/android/gms/internal/ads/zzwm;

    .line 4
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzwm;->a:[B

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzub;->b(J)I

    move-result v2

    invoke-virtual {p3, v1, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr p4, v0

    int-to-long v0, v0

    add-long/2addr p1, v0

    .line 5
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzub;->b:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_4

    .line 6
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzub;->d:Lcom/google/android/gms/internal/ads/zzub;

    goto :goto_4

    :cond_25
    return-object p0
.end method

.method private static l(Lcom/google/android/gms/internal/ads/zzub;J[BI)Lcom/google/android/gms/internal/ads/zzub;
    .registers 10

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzuc;->j(Lcom/google/android/gms/internal/ads/zzub;J)Lcom/google/android/gms/internal/ads/zzub;

    move-result-object p0

    move v0, p4

    :cond_5
    :goto_5
    if-lez v0, :cond_28

    .line 2
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzub;->b:J

    sub-long/2addr v1, p1

    long-to-int v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzub;->c:Lcom/google/android/gms/internal/ads/zzwm;

    .line 4
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzwm;->a:[B

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzub;->b(J)I

    move-result v3

    sub-int v4, p4, v0

    .line 6
    invoke-static {v2, v3, p3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v0, v1

    int-to-long v1, v1

    add-long/2addr p1, v1

    .line 7
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzub;->b:J

    cmp-long v3, p1, v1

    if-nez v3, :cond_5

    .line 8
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzub;->d:Lcom/google/android/gms/internal/ads/zzub;

    goto :goto_5

    :cond_28
    return-object p0
.end method

.method private static m(Lcom/google/android/gms/internal/ads/zzub;Lcom/google/android/gms/internal/ads/zzgr;Lcom/google/android/gms/internal/ads/zzue;Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzub;
    .registers 23

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzgr;->k()Z

    move-result v3

    if-eqz v3, :cond_c9

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzue;->b:J

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzen;->c(I)V

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v6

    move-object/from16 v7, p0

    .line 2
    invoke-static {v7, v3, v4, v6, v5}, Lcom/google/android/gms/internal/ads/zzuc;->l(Lcom/google/android/gms/internal/ads/zzub;J[BI)Lcom/google/android/gms/internal/ads/zzub;

    move-result-object v6

    const-wide/16 v7, 0x1

    add-long/2addr v3, v7

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v7

    const/4 v8, 0x0

    .line 3
    aget-byte v7, v7, v8

    and-int/lit16 v9, v7, 0x80

    and-int/lit8 v7, v7, 0x7f

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzgr;->b:Lcom/google/android/gms/internal/ads/zzgo;

    iget-object v11, v10, Lcom/google/android/gms/internal/ads/zzgo;->a:[B

    if-nez v11, :cond_37

    const/16 v11, 0x10

    new-array v11, v11, [B

    iput-object v11, v10, Lcom/google/android/gms/internal/ads/zzgo;->a:[B

    goto :goto_3a

    .line 4
    :cond_37
    invoke-static {v11, v8}, Ljava/util/Arrays;->fill([BB)V

    :goto_3a
    if-eqz v9, :cond_3e

    const/4 v9, 0x1

    goto :goto_3f

    :cond_3e
    const/4 v9, 0x0

    .line 5
    :goto_3f
    iget-object v11, v10, Lcom/google/android/gms/internal/ads/zzgo;->a:[B

    .line 6
    invoke-static {v6, v3, v4, v11, v7}, Lcom/google/android/gms/internal/ads/zzuc;->l(Lcom/google/android/gms/internal/ads/zzub;J[BI)Lcom/google/android/gms/internal/ads/zzub;

    move-result-object v6

    int-to-long v11, v7

    add-long/2addr v3, v11

    if-eqz v9, :cond_5e

    const/4 v5, 0x2

    .line 7
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzen;->c(I)V

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v7

    .line 8
    invoke-static {v6, v3, v4, v7, v5}, Lcom/google/android/gms/internal/ads/zzuc;->l(Lcom/google/android/gms/internal/ads/zzub;J[BI)Lcom/google/android/gms/internal/ads/zzub;

    move-result-object v6

    const-wide/16 v11, 0x2

    add-long/2addr v3, v11

    .line 9
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzen;->w()I

    move-result v5

    move v11, v5

    goto :goto_5f

    :cond_5e
    const/4 v11, 0x1

    :goto_5f
    iget-object v5, v10, Lcom/google/android/gms/internal/ads/zzgo;->d:[I

    if-eqz v5, :cond_66

    array-length v7, v5

    if-ge v7, v11, :cond_68

    :cond_66
    new-array v5, v11, [I

    :cond_68
    move-object v12, v5

    iget-object v5, v10, Lcom/google/android/gms/internal/ads/zzgo;->e:[I

    if-eqz v5, :cond_70

    array-length v7, v5

    if-ge v7, v11, :cond_72

    :cond_70
    new-array v5, v11, [I

    :cond_72
    move-object v13, v5

    if-eqz v9, :cond_98

    mul-int/lit8 v5, v11, 0x6

    .line 10
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzen;->c(I)V

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v7

    .line 11
    invoke-static {v6, v3, v4, v7, v5}, Lcom/google/android/gms/internal/ads/zzuc;->l(Lcom/google/android/gms/internal/ads/zzub;J[BI)Lcom/google/android/gms/internal/ads/zzub;

    move-result-object v6

    int-to-long v14, v5

    add-long/2addr v3, v14

    .line 12
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    :goto_87
    if-ge v8, v11, :cond_a4

    .line 13
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzen;->w()I

    move-result v5

    aput v5, v12, v8

    .line 14
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzen;->v()I

    move-result v5

    aput v5, v13, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_87

    .line 15
    :cond_98
    aput v8, v12, v8

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzue;->a:I

    iget-wide v14, v1, Lcom/google/android/gms/internal/ads/zzue;->b:J

    sub-long v14, v3, v14

    long-to-int v7, v14

    sub-int/2addr v5, v7

    .line 16
    aput v5, v13, v8

    .line 17
    :cond_a4
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzue;->c:Lcom/google/android/gms/internal/ads/zzaba;

    .line 18
    sget v7, Lcom/google/android/gms/internal/ads/zzew;->a:I

    .line 19
    iget-object v14, v5, Lcom/google/android/gms/internal/ads/zzaba;->b:[B

    iget-object v15, v10, Lcom/google/android/gms/internal/ads/zzgo;->a:[B

    iget v7, v5, Lcom/google/android/gms/internal/ads/zzaba;->a:I

    iget v8, v5, Lcom/google/android/gms/internal/ads/zzaba;->c:I

    iget v5, v5, Lcom/google/android/gms/internal/ads/zzaba;->d:I

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v5

    invoke-virtual/range {v10 .. v18}, Lcom/google/android/gms/internal/ads/zzgo;->c(I[I[I[B[BIII)V

    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/zzue;->b:J

    sub-long/2addr v3, v7

    long-to-int v4, v3

    int-to-long v9, v4

    add-long/2addr v7, v9

    iput-wide v7, v1, Lcom/google/android/gms/internal/ads/zzue;->b:J

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzue;->a:I

    sub-int/2addr v3, v4

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzue;->a:I

    goto :goto_cc

    :cond_c9
    move-object/from16 v7, p0

    move-object v6, v7

    :goto_cc
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzgl;->e()Z

    move-result v3

    if-eqz v3, :cond_129

    const/4 v3, 0x4

    .line 20
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzen;->c(I)V

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzue;->b:J

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v7

    .line 21
    invoke-static {v6, v4, v5, v7, v3}, Lcom/google/android/gms/internal/ads/zzuc;->l(Lcom/google/android/gms/internal/ads/zzub;J[BI)Lcom/google/android/gms/internal/ads/zzub;

    move-result-object v3

    .line 22
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzen;->v()I

    move-result v2

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzue;->b:J

    const-wide/16 v6, 0x4

    add-long/2addr v4, v6

    iput-wide v4, v1, Lcom/google/android/gms/internal/ads/zzue;->b:J

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzue;->a:I

    add-int/lit8 v4, v4, -0x4

    iput v4, v1, Lcom/google/android/gms/internal/ads/zzue;->a:I

    .line 23
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzgr;->i(I)V

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzue;->b:J

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzgr;->c:Ljava/nio/ByteBuffer;

    .line 24
    invoke-static {v3, v4, v5, v6, v2}, Lcom/google/android/gms/internal/ads/zzuc;->k(Lcom/google/android/gms/internal/ads/zzub;JLjava/nio/ByteBuffer;I)Lcom/google/android/gms/internal/ads/zzub;

    move-result-object v3

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzue;->b:J

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, v1, Lcom/google/android/gms/internal/ads/zzue;->b:J

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzue;->a:I

    sub-int/2addr v4, v2

    iput v4, v1, Lcom/google/android/gms/internal/ads/zzue;->a:I

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzgr;->f:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_118

    .line 25
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-ge v2, v4, :cond_112

    goto :goto_118

    .line 26
    :cond_112
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzgr;->f:Ljava/nio/ByteBuffer;

    .line 27
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_11e

    .line 28
    :cond_118
    :goto_118
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzgr;->f:Ljava/nio/ByteBuffer;

    :goto_11e
    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzue;->b:J

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgr;->f:Ljava/nio/ByteBuffer;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzue;->a:I

    .line 29
    invoke-static {v3, v4, v5, v0, v1}, Lcom/google/android/gms/internal/ads/zzuc;->k(Lcom/google/android/gms/internal/ads/zzub;JLjava/nio/ByteBuffer;I)Lcom/google/android/gms/internal/ads/zzub;

    move-result-object v0

    goto :goto_138

    .line 30
    :cond_129
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzue;->a:I

    .line 31
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzgr;->i(I)V

    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzue;->b:J

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgr;->c:Ljava/nio/ByteBuffer;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzue;->a:I

    .line 32
    invoke-static {v6, v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzuc;->k(Lcom/google/android/gms/internal/ads/zzub;JLjava/nio/ByteBuffer;I)Lcom/google/android/gms/internal/ads/zzub;

    move-result-object v0

    :goto_138
    return-object v0
.end method

.method private final n(I)V
    .registers 7

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzuc;->e:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzuc;->e:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzuc;->d:Lcom/google/android/gms/internal/ads/zzub;

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzub;->b:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_12

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzub;->d:Lcom/google/android/gms/internal/ads/zzub;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzuc;->d:Lcom/google/android/gms/internal/ads/zzub;

    :cond_12
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzr;IZ)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzuc;->i(I)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuc;->d:Lcom/google/android/gms/internal/ads/zzub;

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzub;->c:Lcom/google/android/gms/internal/ads/zzwm;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzwm;->a:[B

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzuc;->e:J

    .line 3
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzub;->b(J)I

    move-result v0

    .line 4
    invoke-interface {p1, v1, v0, p2}, Lcom/google/android/gms/internal/ads/zzr;->e([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_20

    if-eqz p3, :cond_1a

    return p2

    .line 5
    :cond_1a
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 6
    :cond_20
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzuc;->n(I)V

    return p1
.end method

.method public final b()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzuc;->e:J

    return-wide v0
.end method

.method public final c(J)V
    .registers 7

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_2a

    .line 1
    :goto_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuc;->b:Lcom/google/android/gms/internal/ads/zzub;

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzub;->b:J

    cmp-long v3, p1, v1

    if-ltz v3, :cond_1e

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzuc;->f:Lcom/google/android/gms/internal/ads/zzwt;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzub;->c:Lcom/google/android/gms/internal/ads/zzwm;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzwt;->c(Lcom/google/android/gms/internal/ads/zzwm;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuc;->b:Lcom/google/android/gms/internal/ads/zzub;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzub;->c()Lcom/google/android/gms/internal/ads/zzub;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzuc;->b:Lcom/google/android/gms/internal/ads/zzub;

    goto :goto_6

    :cond_1e
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzuc;->c:Lcom/google/android/gms/internal/ads/zzub;

    .line 4
    iget-wide p1, p1, Lcom/google/android/gms/internal/ads/zzub;->a:J

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzub;->a:J

    cmp-long v3, p1, v1

    if-gez v3, :cond_2a

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzuc;->c:Lcom/google/android/gms/internal/ads/zzub;

    :cond_2a
    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/ads/zzgr;Lcom/google/android/gms/internal/ads/zzue;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuc;->c:Lcom/google/android/gms/internal/ads/zzub;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzuc;->a:Lcom/google/android/gms/internal/ads/zzen;

    invoke-static {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzuc;->m(Lcom/google/android/gms/internal/ads/zzub;Lcom/google/android/gms/internal/ads/zzgr;Lcom/google/android/gms/internal/ads/zzue;Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzub;

    return-void
.end method

.method public final e(Lcom/google/android/gms/internal/ads/zzgr;Lcom/google/android/gms/internal/ads/zzue;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuc;->c:Lcom/google/android/gms/internal/ads/zzub;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzuc;->a:Lcom/google/android/gms/internal/ads/zzen;

    invoke-static {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzuc;->m(Lcom/google/android/gms/internal/ads/zzub;Lcom/google/android/gms/internal/ads/zzgr;Lcom/google/android/gms/internal/ads/zzue;Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzub;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzuc;->c:Lcom/google/android/gms/internal/ads/zzub;

    return-void
.end method

.method public final f()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuc;->b:Lcom/google/android/gms/internal/ads/zzub;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzub;->c:Lcom/google/android/gms/internal/ads/zzwm;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzuc;->f:Lcom/google/android/gms/internal/ads/zzwt;

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzwt;->d(Lcom/google/android/gms/internal/ads/zzwn;)V

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzub;->c()Lcom/google/android/gms/internal/ads/zzub;

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuc;->b:Lcom/google/android/gms/internal/ads/zzub;

    const/high16 v1, 0x10000

    const-wide/16 v2, 0x0

    .line 4
    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzub;->e(JI)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuc;->b:Lcom/google/android/gms/internal/ads/zzub;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzuc;->c:Lcom/google/android/gms/internal/ads/zzub;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzuc;->d:Lcom/google/android/gms/internal/ads/zzub;

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzuc;->e:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuc;->f:Lcom/google/android/gms/internal/ads/zzwt;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzwt;->g()V

    return-void
.end method

.method public final g()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuc;->b:Lcom/google/android/gms/internal/ads/zzub;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzuc;->c:Lcom/google/android/gms/internal/ads/zzub;

    return-void
.end method

.method public final h(Lcom/google/android/gms/internal/ads/zzen;I)V
    .registers 8

    :goto_0
    if-lez p2, :cond_1a

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzuc;->i(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzuc;->d:Lcom/google/android/gms/internal/ads/zzub;

    .line 2
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzub;->c:Lcom/google/android/gms/internal/ads/zzwm;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzwm;->a:[B

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzuc;->e:J

    .line 3
    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzub;->b(J)I

    move-result v1

    .line 4
    invoke-virtual {p1, v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzen;->b([BII)V

    sub-int/2addr p2, v0

    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzuc;->n(I)V

    goto :goto_0

    :cond_1a
    return-void
.end method
