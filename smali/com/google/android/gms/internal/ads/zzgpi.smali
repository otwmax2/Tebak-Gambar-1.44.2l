###### Class com.google.android.gms.internal.ads.zzgpi (com.google.android.gms.internal.ads.zzgpi)
.class final Lcom/google/android/gms/internal/ads/zzgpi;
.super Lcom/google/android/gms/internal/ads/zzgpm;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final f:Ljava/lang/Iterable;

.field private final g:Ljava/util/Iterator;

.field private h:Ljava/nio/ByteBuffer;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:J

.field private o:J

.field private p:J


# direct methods
.method synthetic constructor <init>(Ljava/lang/Iterable;IZLcom/google/android/gms/internal/ads/zzgph;)V
    .registers 5

    const/4 p3, 0x0

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzgpm;-><init>(Lcom/google/android/gms/internal/ads/zzgpl;)V

    const p3, 0x7fffffff

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzgpi;->k:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzgpi;->i:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgpi;->f:Ljava/lang/Iterable;

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgpi;->g:Ljava/util/Iterator;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgpi;->m:I

    if-nez p2, :cond_25

    .line 3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgqw;->e:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgpi;->h:Ljava/nio/ByteBuffer;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzgpi;->n:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzgpi;->o:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzgpi;->p:J

    return-void

    .line 4
    :cond_25
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgpi;->H()V

    return-void
.end method

.method private final D()I
    .registers 5

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgpi;->i:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgpi;->m:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgpi;->n:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgpi;->o:J

    add-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method private final E()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgqy;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgpi;->g:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgpi;->H()V

    return-void

    .line 3
    :cond_c
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqy;->j()Lcom/google/android/gms/internal/ads/zzgqy;

    move-result-object v0

    throw v0
.end method

.method private final F([BII)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgpi;->D()I

    move-result p2

    if-gt p3, p2, :cond_34

    move p2, p3

    :goto_7
    if-lez p2, :cond_33

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgpi;->p:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgpi;->n:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_17

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgpi;->E()V

    :cond_17
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgpi;->p:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgpi;->n:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    .line 2
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzgpi;->n:J

    sub-int v3, p3, p2

    int-to-long v8, v0

    int-to-long v4, v3

    move-object v3, p1

    move-wide v6, v8

    .line 3
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzgtq;->w(J[BJJ)V

    sub-int/2addr p2, v0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgpi;->n:J

    add-long/2addr v0, v8

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgpi;->n:J

    goto :goto_7

    :cond_33
    return-void

    :cond_34
    if-gtz p3, :cond_37

    return-void

    .line 4
    :cond_37
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqy;->j()Lcom/google/android/gms/internal/ads/zzgqy;

    move-result-object p1

    goto :goto_3d

    :goto_3c
    throw p1

    :goto_3d
    goto :goto_3c
.end method

.method private final G()V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgpi;->i:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgpi;->j:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgpi;->i:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgpi;->k:I

    if-le v0, v1, :cond_13

    sub-int v1, v0, v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzgpi;->j:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgpi;->i:I

    return-void

    :cond_13
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgpi;->j:I

    return-void
.end method

.method private final H()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgpi;->g:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgpi;->h:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgpi;->m:I

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgpi;->n:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzgpi;->o:J

    sub-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzgpi;->m:I

    .line 2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgpi;->n:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgpi;->o:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgpi;->h:Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgpi;->p:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgpi;->h:Ljava/nio/ByteBuffer;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgtq;->m(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgpi;->n:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgpi;->n:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgpi;->o:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgpi;->o:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgpi;->p:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgpi;->p:J

    return-void
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpi;->K()I

    move-result v0

    if-lez v0, :cond_21

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzgpi;->p:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzgpi;->n:J

    sub-long/2addr v1, v3

    int-to-long v5, v0

    cmp-long v7, v5, v1

    if-lez v7, :cond_11

    goto :goto_21

    .line 2
    :cond_11
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzgpi;->o:J

    sub-long/2addr v3, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgpi;->h:Ljava/nio/ByteBuffer;

    long-to-int v2, v3

    .line 3
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzgtv;->g(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzgpi;->n:J

    add-long/2addr v1, v5

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzgpi;->n:J

    return-object v0

    :cond_21
    :goto_21
    if-ltz v0, :cond_35

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgpi;->D()I

    move-result v1

    if-le v0, v1, :cond_2a

    goto :goto_35

    :cond_2a
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 5
    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzgpi;->F([BII)V

    .line 6
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzgtv;->h([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_35
    :goto_35
    if-nez v0, :cond_3a

    const-string v0, ""

    return-object v0

    :cond_3a
    if-gtz v0, :cond_41

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqy;->f()Lcom/google/android/gms/internal/ads/zzgqy;

    move-result-object v0

    throw v0

    .line 8
    :cond_41
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqy;->j()Lcom/google/android/gms/internal/ads/zzgqy;

    move-result-object v0

    throw v0
.end method

.method public final B(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgqy;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgpi;->l:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqy;->b()Lcom/google/android/gms/internal/ads/zzgqy;

    move-result-object p1

    throw p1
.end method

.method public final C(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_36

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgpi;->i:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgpi;->m:I

    sub-int/2addr v0, v1

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzgpi;->n:J

    int-to-long v3, v0

    sub-long/2addr v3, v1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgpi;->o:J

    add-long/2addr v3, v0

    int-to-long v0, p1

    cmp-long v2, v0, v3

    if-gtz v2, :cond_36

    :goto_13
    if-lez p1, :cond_35

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgpi;->p:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgpi;->n:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_23

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgpi;->E()V

    :cond_23
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgpi;->p:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgpi;->n:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    .line 2
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr p1, v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzgpi;->n:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzgpi;->n:J

    goto :goto_13

    :cond_35
    return-void

    :cond_36
    if-gez p1, :cond_3d

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqy;->f()Lcom/google/android/gms/internal/ads/zzgqy;

    move-result-object p1

    throw p1

    .line 4
    :cond_3d
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqy;->j()Lcom/google/android/gms/internal/ads/zzgqy;

    move-result-object p1

    goto :goto_43

    :goto_42
    throw p1

    :goto_43
    goto :goto_42
.end method

.method public final I()B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgpi;->p:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgpi;->n:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_e

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgpi;->E()V

    :cond_e
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgpi;->n:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgpi;->n:J

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgtq;->i(J)B

    move-result v0

    return v0
.end method

.method public final J()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgpi;->p:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgpi;->n:J

    sub-long/2addr v0, v2

    const-wide/16 v4, 0x4

    cmp-long v6, v0, v4

    if-ltz v6, :cond_39

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzgpi;->n:J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzgtq;->i(J)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    .line 2
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzgtq;->i(J)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const-wide/16 v4, 0x2

    add-long/2addr v4, v2

    .line 3
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzgtq;->i(J)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    const-wide/16 v5, 0x3

    add-long/2addr v2, v5

    .line 4
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzgtq;->i(J)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v0, v1

    or-int/2addr v0, v4

    or-int/2addr v0, v2

    return v0

    .line 5
    :cond_39
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpi;->I()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpi;->I()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpi;->I()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpi;->I()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v0, v1

    or-int/2addr v0, v2

    or-int/2addr v0, v3

    return v0
.end method

.method public final K()I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgpi;->n:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgpi;->p:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_a

    goto/16 :goto_8c

    :cond_a
    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgtq;->i(J)B

    move-result v0

    if-ltz v0, :cond_1a

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzgpi;->n:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzgpi;->n:J

    return v0

    :cond_1a
    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzgpi;->p:J

    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/zzgpi;->n:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0xa

    cmp-long v1, v6, v8

    if-ltz v1, :cond_8c

    add-long v6, v4, v2

    .line 3
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzgtq;->i(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x7

    xor-int/2addr v0, v1

    if-gez v0, :cond_33

    xor-int/lit8 v0, v0, -0x80

    goto :goto_89

    :cond_33
    add-long v4, v6, v2

    .line 4
    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zzgtq;->i(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_42

    xor-int/lit16 v0, v0, 0x3f80

    :cond_40
    move-wide v6, v4

    goto :goto_89

    :cond_42
    add-long v6, v4, v2

    .line 5
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzgtq;->i(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x15

    xor-int/2addr v0, v1

    if-gez v0, :cond_52

    const v1, -0x1fc080

    xor-int/2addr v0, v1

    goto :goto_89

    :cond_52
    add-long v4, v6, v2

    .line 6
    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zzgtq;->i(J)B

    move-result v1

    shl-int/lit8 v6, v1, 0x1c

    xor-int/2addr v0, v6

    const v6, 0xfe03f80

    xor-int/2addr v0, v6

    if-gez v1, :cond_40

    add-long v6, v4, v2

    .line 7
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzgtq;->i(J)B

    move-result v1

    if-gez v1, :cond_89

    add-long v4, v6, v2

    .line 8
    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zzgtq;->i(J)B

    move-result v1

    if-gez v1, :cond_40

    add-long v6, v4, v2

    .line 9
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzgtq;->i(J)B

    move-result v1

    if-gez v1, :cond_89

    add-long v4, v6, v2

    .line 10
    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zzgtq;->i(J)B

    move-result v1

    if-gez v1, :cond_40

    add-long v6, v4, v2

    .line 11
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzgtq;->i(J)B

    move-result v1

    if-ltz v1, :cond_8c

    .line 12
    :cond_89
    :goto_89
    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/zzgpi;->n:J

    return v0

    .line 13
    :cond_8c
    :goto_8c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpi;->N()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public final L()J
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzgpi;->p:J

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzgpi;->n:J

    sub-long/2addr v1, v3

    const/16 v9, 0x18

    const/16 v10, 0x10

    const/16 v11, 0x8

    const-wide/16 v12, 0x8

    const-wide/16 v14, 0xff

    cmp-long v16, v1, v12

    if-ltz v16, :cond_81

    add-long/2addr v12, v3

    iput-wide v12, v0, Lcom/google/android/gms/internal/ads/zzgpi;->n:J

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzgtq;->i(J)B

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v14

    const-wide/16 v12, 0x1

    add-long/2addr v12, v3

    .line 2
    invoke-static {v12, v13}, Lcom/google/android/gms/internal/ads/zzgtq;->i(J)B

    move-result v12

    int-to-long v12, v12

    and-long/2addr v12, v14

    shl-long v11, v12, v11

    const-wide/16 v16, 0x2

    add-long v16, v3, v16

    .line 3
    invoke-static/range {v16 .. v17}, Lcom/google/android/gms/internal/ads/zzgtq;->i(J)B

    move-result v13

    int-to-long v5, v13

    and-long/2addr v5, v14

    shl-long/2addr v5, v10

    const-wide/16 v18, 0x3

    add-long v18, v3, v18

    .line 4
    invoke-static/range {v18 .. v19}, Lcom/google/android/gms/internal/ads/zzgtq;->i(J)B

    move-result v10

    int-to-long v7, v10

    and-long/2addr v7, v14

    shl-long/2addr v7, v9

    const-wide/16 v9, 0x4

    add-long/2addr v9, v3

    .line 5
    invoke-static {v9, v10}, Lcom/google/android/gms/internal/ads/zzgtq;->i(J)B

    move-result v9

    int-to-long v9, v9

    and-long/2addr v9, v14

    const/16 v18, 0x20

    shl-long v9, v9, v18

    const-wide/16 v18, 0x5

    add-long v18, v3, v18

    .line 6
    invoke-static/range {v18 .. v19}, Lcom/google/android/gms/internal/ads/zzgtq;->i(J)B

    move-result v13

    move-wide/from16 v18, v9

    int-to-long v9, v13

    and-long/2addr v9, v14

    const/16 v13, 0x28

    shl-long/2addr v9, v13

    const-wide/16 v20, 0x6

    add-long v20, v3, v20

    .line 7
    invoke-static/range {v20 .. v21}, Lcom/google/android/gms/internal/ads/zzgtq;->i(J)B

    move-result v13

    move-wide/from16 v20, v9

    int-to-long v9, v13

    and-long/2addr v9, v14

    const/16 v13, 0x30

    shl-long/2addr v9, v13

    const-wide/16 v22, 0x7

    add-long v3, v3, v22

    .line 8
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzgtq;->i(J)B

    move-result v3

    int-to-long v3, v3

    and-long/2addr v3, v14

    const/16 v13, 0x38

    shl-long/2addr v3, v13

    or-long/2addr v1, v11

    or-long/2addr v1, v5

    or-long/2addr v1, v7

    or-long v1, v1, v18

    or-long v1, v1, v20

    or-long/2addr v1, v9

    or-long/2addr v1, v3

    return-wide v1

    .line 9
    :cond_81
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgpi;->I()B

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v14

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgpi;->I()B

    move-result v3

    int-to-long v3, v3

    and-long/2addr v3, v14

    shl-long/2addr v3, v11

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgpi;->I()B

    move-result v5

    int-to-long v5, v5

    and-long/2addr v5, v14

    shl-long/2addr v5, v10

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgpi;->I()B

    move-result v7

    int-to-long v7, v7

    and-long/2addr v7, v14

    shl-long/2addr v7, v9

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgpi;->I()B

    move-result v9

    int-to-long v9, v9

    and-long/2addr v9, v14

    const/16 v11, 0x20

    shl-long/2addr v9, v11

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgpi;->I()B

    move-result v11

    int-to-long v11, v11

    and-long/2addr v11, v14

    const/16 v13, 0x28

    shl-long/2addr v11, v13

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgpi;->I()B

    move-result v13

    move-wide/from16 v18, v11

    int-to-long v11, v13

    and-long/2addr v11, v14

    const/16 v13, 0x30

    shl-long/2addr v11, v13

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgpi;->I()B

    move-result v13

    move-wide/from16 v20, v11

    int-to-long v11, v13

    and-long/2addr v11, v14

    const/16 v13, 0x38

    shl-long/2addr v11, v13

    or-long/2addr v1, v3

    or-long/2addr v1, v5

    or-long/2addr v1, v7

    or-long/2addr v1, v9

    or-long v1, v1, v18

    or-long v1, v1, v20

    or-long/2addr v1, v11

    return-wide v1
.end method

.method public final M()J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgpi;->n:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgpi;->p:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_a

    goto/16 :goto_d2

    :cond_a
    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgtq;->i(J)B

    move-result v0

    if-ltz v0, :cond_1b

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzgpi;->n:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzgpi;->n:J

    int-to-long v0, v0

    return-wide v0

    :cond_1b
    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzgpi;->p:J

    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/zzgpi;->n:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0xa

    cmp-long v1, v6, v8

    if-ltz v1, :cond_d2

    add-long v6, v4, v2

    .line 3
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzgtq;->i(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x7

    xor-int/2addr v0, v1

    if-gez v0, :cond_36

    xor-int/lit8 v0, v0, -0x80

    :goto_33
    int-to-long v0, v0

    goto/16 :goto_cf

    :cond_36
    add-long v4, v6, v2

    .line 4
    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zzgtq;->i(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_47

    xor-int/lit16 v0, v0, 0x3f80

    int-to-long v0, v0

    :cond_44
    :goto_44
    move-wide v6, v4

    goto/16 :goto_cf

    :cond_47
    add-long v6, v4, v2

    .line 5
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzgtq;->i(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x15

    xor-int/2addr v0, v1

    if-gez v0, :cond_57

    const v1, -0x1fc080

    xor-int/2addr v0, v1

    goto :goto_33

    :cond_57
    add-long v4, v6, v2

    .line 6
    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zzgtq;->i(J)B

    move-result v1

    int-to-long v6, v1

    int-to-long v0, v0

    const/16 v8, 0x1c

    shl-long/2addr v6, v8

    xor-long/2addr v0, v6

    const-wide/16 v6, 0x0

    cmp-long v8, v0, v6

    if-ltz v8, :cond_6e

    const-wide/32 v2, 0xfe03f80

    :goto_6c
    xor-long/2addr v0, v2

    goto :goto_44

    :cond_6e
    add-long v8, v4, v2

    .line 7
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzgtq;->i(J)B

    move-result v4

    int-to-long v4, v4

    const/16 v10, 0x23

    shl-long/2addr v4, v10

    xor-long/2addr v0, v4

    cmp-long v4, v0, v6

    if-gez v4, :cond_85

    const-wide v2, -0x7f01fc080L

    :goto_82
    xor-long/2addr v0, v2

    move-wide v6, v8

    goto :goto_cf

    :cond_85
    add-long v4, v8, v2

    .line 8
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzgtq;->i(J)B

    move-result v8

    int-to-long v8, v8

    const/16 v10, 0x2a

    shl-long/2addr v8, v10

    xor-long/2addr v0, v8

    cmp-long v8, v0, v6

    if-ltz v8, :cond_9a

    const-wide v2, 0x3f80fe03f80L

    goto :goto_6c

    :cond_9a
    add-long v8, v4, v2

    .line 9
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzgtq;->i(J)B

    move-result v4

    int-to-long v4, v4

    const/16 v10, 0x31

    shl-long/2addr v4, v10

    xor-long/2addr v0, v4

    cmp-long v4, v0, v6

    if-gez v4, :cond_af

    const-wide v2, -0x1fc07f01fc080L

    goto :goto_82

    :cond_af
    add-long v4, v8, v2

    .line 10
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzgtq;->i(J)B

    move-result v8

    int-to-long v8, v8

    const/16 v10, 0x38

    shl-long/2addr v8, v10

    xor-long/2addr v0, v8

    const-wide v8, 0xfe03f80fe03f80L

    xor-long/2addr v0, v8

    cmp-long v8, v0, v6

    if-gez v8, :cond_44

    add-long/2addr v2, v4

    .line 11
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzgtq;->i(J)B

    move-result v4

    int-to-long v4, v4

    cmp-long v8, v4, v6

    if-ltz v8, :cond_d2

    move-wide v6, v2

    .line 12
    :goto_cf
    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/zzgpi;->n:J

    return-wide v0

    .line 13
    :cond_d2
    :goto_d2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpi;->N()J

    move-result-wide v0

    return-wide v0
.end method

.method final N()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :goto_3
    const/16 v3, 0x40

    if-ge v0, v3, :cond_18

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpi;->I()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_15

    return-wide v1

    :cond_15
    add-int/lit8 v0, v0, 0x7

    goto :goto_3

    .line 2
    :cond_18
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqy;->e()Lcom/google/android/gms/internal/ads/zzgqy;

    move-result-object v0

    goto :goto_1e

    :goto_1d
    throw v0

    :goto_1e
    goto :goto_1d
.end method

.method public final a(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgpi;->k:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgpi;->G()V

    return-void
.end method

.method public final b()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgpi;->m:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgpi;->n:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgpi;->o:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgpi;->i:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpi;->M()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public final d(I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3f

    if-eq v0, v2, :cond_39

    const/4 v3, 0x2

    if-eq v0, v3, :cond_31

    const/4 v3, 0x4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1e

    if-eq v0, v3, :cond_1d

    const/4 p1, 0x5

    if-ne v0, p1, :cond_18

    .line 1
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzgpi;->C(I)V

    return v2

    .line 2
    :cond_18
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqy;->a()Lcom/google/android/gms/internal/ads/zzgqx;

    move-result-object p1

    throw p1

    :cond_1d
    return v1

    .line 3
    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpi;->r()I

    move-result v0

    if-eqz v0, :cond_2a

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgpi;->d(I)Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_2a
    ushr-int/2addr p1, v4

    shl-int/2addr p1, v4

    or-int/2addr p1, v3

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgpi;->B(I)V

    return v2

    .line 6
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpi;->K()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgpi;->C(I)V

    return v2

    :cond_39
    const/16 p1, 0x8

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgpi;->C(I)V

    return v2

    :cond_3f
    :goto_3f
    const/16 p1, 0xa

    if-ge v1, p1, :cond_4d

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpi;->I()B

    move-result p1

    if-ltz p1, :cond_4a

    return v2

    :cond_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    .line 9
    :cond_4d
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqy;->e()Lcom/google/android/gms/internal/ads/zzgqy;

    move-result-object p1

    goto :goto_53

    :goto_52
    throw p1

    :goto_53
    goto :goto_52
.end method

.method public final i()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpi;->L()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final j()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpi;->J()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final k()I
    .registers 5

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgpi;->m:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgpi;->n:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgpi;->o:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public final l(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgqy;
        }
    .end annotation

    if-ltz p1, :cond_16

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpi;->k()I

    move-result v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgpi;->k:I

    if-gt p1, v0, :cond_11

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgpi;->k:I

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgpi;->G()V

    return v0

    .line 4
    :cond_11
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqy;->j()Lcom/google/android/gms/internal/ads/zzgqy;

    move-result-object p1

    throw p1

    .line 5
    :cond_16
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqy;->f()Lcom/google/android/gms/internal/ads/zzgqy;

    move-result-object p1

    throw p1
.end method

.method public final m()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpi;->K()I

    move-result v0

    return v0
.end method

.method public final n()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpi;->J()I

    move-result v0

    return v0
.end method

.method public final o()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpi;->K()I

    move-result v0

    return v0
.end method

.method public final p()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpi;->J()I

    move-result v0

    return v0
.end method

.method public final q()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpi;->K()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgpm;->e(I)I

    move-result v0

    return v0
.end method

.method public final r()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpi;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgpi;->l:I

    return v0

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpi;->K()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgpi;->l:I

    ushr-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_15

    return v0

    .line 2
    :cond_15
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqy;->c()Lcom/google/android/gms/internal/ads/zzgqy;

    move-result-object v0

    throw v0
.end method

.method public final s()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpi;->K()I

    move-result v0

    return v0
.end method

.method public final t()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpi;->L()J

    move-result-wide v0

    return-wide v0
.end method

.method public final u()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpi;->M()J

    move-result-wide v0

    return-wide v0
.end method

.method public final v()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpi;->L()J

    move-result-wide v0

    return-wide v0
.end method

.method public final w()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpi;->M()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgpm;->f(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final x()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpi;->M()J

    move-result-wide v0

    return-wide v0
.end method

.method public final y()Lcom/google/android/gms/internal/ads/zzgpe;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpi;->K()I

    move-result v0

    if-lez v0, :cond_24

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzgpi;->p:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzgpi;->n:J

    sub-long/2addr v1, v3

    int-to-long v10, v0

    cmp-long v5, v10, v1

    if-lez v5, :cond_11

    goto :goto_24

    .line 2
    :cond_11
    new-array v0, v0, [B

    const-wide/16 v6, 0x0

    move-object v5, v0

    move-wide v8, v10

    .line 3
    invoke-static/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzgtq;->w(J[BJJ)V

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzgpi;->n:J

    add-long/2addr v1, v10

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzgpi;->n:J

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgpe;->O([B)Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v0

    return-object v0

    :cond_24
    :goto_24
    if-lez v0, :cond_38

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgpi;->D()I

    move-result v1

    if-le v0, v1, :cond_2d

    goto :goto_38

    .line 6
    :cond_2d
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 7
    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzgpi;->F([BII)V

    .line 8
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgpe;->O([B)Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v0

    return-object v0

    :cond_38
    :goto_38
    if-nez v0, :cond_3d

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgpe;->p:Lcom/google/android/gms/internal/ads/zzgpe;

    return-object v0

    :cond_3d
    if-gez v0, :cond_44

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqy;->f()Lcom/google/android/gms/internal/ads/zzgqy;

    move-result-object v0

    throw v0

    .line 11
    :cond_44
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqy;->j()Lcom/google/android/gms/internal/ads/zzgqy;

    move-result-object v0

    throw v0
.end method

.method public final z()Ljava/lang/String;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpi;->K()I

    move-result v0

    if-lez v0, :cond_27

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzgpi;->p:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzgpi;->n:J

    sub-long/2addr v1, v3

    int-to-long v10, v0

    cmp-long v5, v10, v1

    if-lez v5, :cond_11

    goto :goto_27

    .line 2
    :cond_11
    new-array v0, v0, [B

    const-wide/16 v6, 0x0

    move-object v5, v0

    move-wide v8, v10

    .line 3
    invoke-static/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzgtq;->w(J[BJJ)V

    new-instance v1, Ljava/lang/String;

    .line 4
    sget-object v2, Lcom/google/android/gms/internal/ads/zzgqw;->b:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgpi;->n:J

    add-long/2addr v2, v10

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgpi;->n:J

    return-object v1

    :cond_27
    :goto_27
    if-lez v0, :cond_3e

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgpi;->D()I

    move-result v1

    if-le v0, v1, :cond_30

    goto :goto_3e

    :cond_30
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 6
    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzgpi;->F([BII)V

    new-instance v0, Ljava/lang/String;

    .line 7
    sget-object v2, Lcom/google/android/gms/internal/ads/zzgqw;->b:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    :cond_3e
    :goto_3e
    if-nez v0, :cond_43

    const-string v0, ""

    return-object v0

    :cond_43
    if-gez v0, :cond_4a

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqy;->f()Lcom/google/android/gms/internal/ads/zzgqy;

    move-result-object v0

    throw v0

    .line 9
    :cond_4a
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqy;->j()Lcom/google/android/gms/internal/ads/zzgqy;

    move-result-object v0

    throw v0
.end method
