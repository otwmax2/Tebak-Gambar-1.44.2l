###### Class com.google.android.gms.internal.ads.zzpm (com.google.android.gms.internal.ads.zzpm)
.class public final Lcom/google/android/gms/internal/ads/zzpm;
.super Lcom/google/android/gms/internal/ads/zzdf;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private i:I

.field private j:Z

.field private k:[B

.field private l:[B

.field private m:I

.field private n:I

.field private o:I

.field private p:Z

.field private q:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdf;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzew;->f:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpm;->k:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpm;->l:[B

    return-void
.end method

.method private final p(J)I
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdf;->b:Lcom/google/android/gms/internal/ads/zzdc;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzdc;->a:I

    int-to-long v0, v0

    mul-long p1, p1, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr p1, v0

    long-to-int p2, p1

    return p2
.end method

.method private final q(Ljava/nio/ByteBuffer;)I
    .registers 5

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    :goto_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 2
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0x400

    if-le v1, v2, :cond_1c

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzpm;->i:I

    .line 3
    div-int/2addr v0, p1

    mul-int p1, p1, v0

    return p1

    :cond_1c
    add-int/lit8 v0, v0, 0x2

    goto :goto_4

    .line 4
    :cond_1f
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    return p1
.end method

.method private final r([BI)V
    .registers 5

    .line 1
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzdf;->i(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    if-lez p2, :cond_11

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzpm;->p:Z

    :cond_11
    return-void
.end method

.method private final s(Ljava/nio/ByteBuffer;[BI)V
    .registers 8

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpm;->o:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpm;->o:I

    sub-int/2addr v1, v0

    sub-int/2addr p3, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpm;->l:[B

    const/4 v3, 0x0

    .line 2
    invoke-static {p2, p3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzpm;->l:[B

    .line 4
    invoke-virtual {p1, p2, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpm;->j:Z

    return v0
.end method

.method public final g(Ljava/nio/ByteBuffer;)V
    .registers 10

    .line 1
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_110

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdf;->m()Z

    move-result v0

    if-nez v0, :cond_110

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzpm;->m:I

    const/4 v1, 0x1

    if-eqz v0, :cond_b6

    const/4 v2, 0x0

    if-eq v0, v1, :cond_42

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzpm;->q(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 4
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzpm;->q:J

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzpm;->i:I

    div-int/2addr v5, v6

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzpm;->q:J

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzpm;->l:[B

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzpm;->o:I

    .line 6
    invoke-direct {p0, p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzpm;->s(Ljava/nio/ByteBuffer;[BI)V

    if-ge v1, v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpm;->l:[B

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzpm;->o:I

    .line 7
    invoke-direct {p0, v1, v3}, Lcom/google/android/gms/internal/ads/zzpm;->r([BI)V

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzpm;->m:I

    .line 8
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 9
    :cond_42
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzpm;->q(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 11
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    sub-int v3, v1, v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzpm;->k:[B

    .line 12
    array-length v5, v4

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzpm;->n:I

    sub-int/2addr v5, v6

    if-ge v1, v0, :cond_62

    if-ge v3, v5, :cond_62

    .line 13
    invoke-direct {p0, v4, v6}, Lcom/google/android/gms/internal/ads/zzpm;->r([BI)V

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzpm;->n:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzpm;->m:I

    goto :goto_0

    .line 14
    :cond_62
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 15
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzpm;->k:[B

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzpm;->n:I

    .line 16
    invoke-virtual {p1, v3, v4, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzpm;->n:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzpm;->n:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpm;->k:[B

    .line 17
    array-length v4, v1

    if-ne v3, v4, :cond_b1

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzpm;->p:Z

    if-eqz v4, :cond_9a

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzpm;->o:I

    .line 18
    invoke-direct {p0, v1, v3}, Lcom/google/android/gms/internal/ads/zzpm;->r([BI)V

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzpm;->q:J

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpm;->n:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzpm;->o:I

    add-int/2addr v5, v5

    sub-int v5, v1, v5

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzpm;->i:I

    .line 19
    div-int/2addr v5, v6

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzpm;->q:J

    move v3, v1

    goto :goto_a7

    .line 20
    :cond_9a
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzpm;->q:J

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpm;->o:I

    sub-int v1, v3, v1

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzpm;->i:I

    .line 21
    div-int/2addr v1, v6

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzpm;->q:J

    .line 22
    :goto_a7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpm;->k:[B

    .line 23
    invoke-direct {p0, p1, v1, v3}, Lcom/google/android/gms/internal/ads/zzpm;->s(Ljava/nio/ByteBuffer;[BI)V

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzpm;->n:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzpm;->m:I

    .line 24
    :cond_b1
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 25
    :cond_b6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 26
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzpm;->k:[B

    array-length v3, v3

    add-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 27
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    :cond_cd
    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    if-lt v2, v3, :cond_e8

    .line 28
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0x400

    if-le v3, v4, :cond_cd

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzpm;->i:I

    .line 29
    div-int/2addr v2, v3

    mul-int v2, v2, v3

    add-int/2addr v2, v3

    goto :goto_ec

    .line 30
    :cond_e8
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 31
    :goto_ec
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    if-ne v2, v3, :cond_f5

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzpm;->m:I

    goto :goto_10b

    .line 32
    :cond_f5
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 33
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 34
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzdf;->i(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    if-lez v2, :cond_10b

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzpm;->p:Z

    .line 35
    :cond_10b
    :goto_10b
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto/16 :goto_0

    :cond_110
    return-void
.end method

.method public final h(Lcom/google/android/gms/internal/ads/zzdc;)Lcom/google/android/gms/internal/ads/zzdc;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdd;
        }
    .end annotation

    .line 1
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzdc;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    .line 2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpm;->j:Z

    if-eqz v0, :cond_a

    return-object p1

    :cond_a
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdc;->e:Lcom/google/android/gms/internal/ads/zzdc;

    return-object p1

    .line 3
    :cond_d
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdd;

    .line 4
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzdd;-><init>(Lcom/google/android/gms/internal/ads/zzdc;)V

    throw v0
.end method

.method protected final j()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpm;->j:Z

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdf;->b:Lcom/google/android/gms/internal/ads/zzdc;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzdc;->d:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzpm;->i:I

    const-wide/32 v0, 0x249f0

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzpm;->p(J)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpm;->i:I

    mul-int v0, v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpm;->k:[B

    .line 3
    array-length v1, v1

    if-eq v1, v0, :cond_1e

    .line 4
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpm;->k:[B

    :cond_1e
    const-wide/16 v0, 0x4e20

    .line 5
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzpm;->p(J)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpm;->i:I

    mul-int v0, v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzpm;->o:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpm;->l:[B

    .line 6
    array-length v1, v1

    if-eq v1, v0, :cond_33

    .line 7
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpm;->l:[B

    :cond_33
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzpm;->m:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzpm;->q:J

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzpm;->n:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpm;->p:Z

    return-void
.end method

.method protected final k()V
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzpm;->n:I

    if-lez v0, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpm;->k:[B

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzpm;->r([BI)V

    :cond_9
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpm;->p:Z

    if-nez v0, :cond_18

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzpm;->q:J

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzpm;->o:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzpm;->i:I

    .line 2
    div-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzpm;->q:J

    :cond_18
    return-void
.end method

.method protected final l()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpm;->j:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzpm;->o:I

    sget-object v0, Lcom/google/android/gms/internal/ads/zzew;->f:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpm;->k:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpm;->l:[B

    return-void
.end method

.method public final n()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzpm;->q:J

    return-wide v0
.end method

.method public final o(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzpm;->j:Z

    return-void
.end method
