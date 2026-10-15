###### Class com.google.android.gms.internal.ads.zzgpg (com.google.android.gms.internal.ads.zzgpg)
.class final Lcom/google/android/gms/internal/ads/zzgpg;
.super Lcom/google/android/gms/internal/ads/zzgpm;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final f:[B

.field private g:I

.field private h:I

.field private i:I

.field private final j:I

.field private k:I

.field private l:I


# direct methods
.method synthetic constructor <init>([BIIZLcom/google/android/gms/internal/ads/zzgpf;)V
    .registers 6

    const/4 p4, 0x0

    .line 1
    invoke-direct {p0, p4}, Lcom/google/android/gms/internal/ads/zzgpm;-><init>(Lcom/google/android/gms/internal/ads/zzgpl;)V

    const p4, 0x7fffffff

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzgpg;->l:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgpg;->f:[B

    add-int/2addr p3, p2

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzgpg;->g:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzgpg;->i:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzgpg;->j:I

    return-void
.end method

.method private final D()V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgpg;->g:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgpg;->h:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgpg;->g:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgpg;->j:I

    sub-int v1, v0, v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgpg;->l:I

    if-le v1, v2, :cond_16

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzgpg;->h:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgpg;->g:I

    return-void

    :cond_16
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgpg;->h:I

    return-void
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpg;->G()I

    move-result v0

    if-lez v0, :cond_1a

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgpg;->g:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgpg;->i:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_e

    goto :goto_1a

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgpg;->f:[B

    .line 2
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzgtv;->h([BII)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgpg;->i:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzgpg;->i:I

    return-object v1

    :cond_1a
    :goto_1a
    if-nez v0, :cond_1f

    const-string v0, ""

    return-object v0

    :cond_1f
    if-gtz v0, :cond_26

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqy;->f()Lcom/google/android/gms/internal/ads/zzgqy;

    move-result-object v0

    throw v0

    .line 4
    :cond_26
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
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgpg;->k:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqy;->b()Lcom/google/android/gms/internal/ads/zzgqy;

    move-result-object p1

    throw p1
.end method

.method public final C(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_e

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgpg;->g:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgpg;->i:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_a

    goto :goto_e

    :cond_a
    add-int/2addr v1, p1

    .line 2
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzgpg;->i:I

    return-void

    :cond_e
    :goto_e
    if-gez p1, :cond_15

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqy;->f()Lcom/google/android/gms/internal/ads/zzgqy;

    move-result-object p1

    throw p1

    .line 4
    :cond_15
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqy;->j()Lcom/google/android/gms/internal/ads/zzgqy;

    move-result-object p1

    throw p1
.end method

.method public final E()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgpg;->i:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgpg;->g:I

    if-eq v0, v1, :cond_f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgpg;->f:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzgpg;->i:I

    .line 2
    aget-byte v0, v1, v0

    return v0

    .line 3
    :cond_f
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqy;->j()Lcom/google/android/gms/internal/ads/zzgqy;

    move-result-object v0

    throw v0
.end method

.method public final F()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgpg;->i:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgpg;->g:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_2e

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgpg;->f:[B

    add-int/lit8 v2, v0, 0x4

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzgpg;->i:I

    .line 2
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v3, 0x8

    or-int/2addr v1, v2

    shl-int/lit8 v2, v4, 0x10

    or-int/2addr v1, v2

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    return v0

    .line 3
    :cond_2e
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqy;->j()Lcom/google/android/gms/internal/ads/zzgqy;

    move-result-object v0

    throw v0
.end method

.method public final G()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgpg;->i:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgpg;->g:I

    if-ne v1, v0, :cond_7

    goto :goto_6d

    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgpg;->f:[B

    add-int/lit8 v3, v0, 0x1

    .line 2
    aget-byte v0, v2, v0

    if-ltz v0, :cond_12

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzgpg;->i:I

    return v0

    :cond_12
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-lt v1, v4, :cond_6d

    add-int/lit8 v1, v3, 0x1

    .line 3
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_23

    xor-int/lit8 v0, v0, -0x80

    goto :goto_6a

    :cond_23
    add-int/lit8 v3, v1, 0x1

    .line 4
    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_30

    xor-int/lit16 v0, v0, 0x3f80

    :cond_2e
    move v1, v3

    goto :goto_6a

    :cond_30
    add-int/lit8 v1, v3, 0x1

    .line 5
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_3e

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_6a

    :cond_3e
    add-int/lit8 v3, v1, 0x1

    .line 6
    aget-byte v1, v2, v1

    shl-int/lit8 v4, v1, 0x1c

    xor-int/2addr v0, v4

    const v4, 0xfe03f80

    xor-int/2addr v0, v4

    if-gez v1, :cond_2e

    add-int/lit8 v1, v3, 0x1

    .line 7
    aget-byte v3, v2, v3

    if-gez v3, :cond_6a

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_2e

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    if-gez v3, :cond_6a

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_2e

    add-int/lit8 v1, v3, 0x1

    aget-byte v2, v2, v3

    if-gez v2, :cond_6a

    goto :goto_6d

    .line 8
    :cond_6a
    :goto_6a
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzgpg;->i:I

    return v0

    .line 9
    :cond_6d
    :goto_6d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpg;->J()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public final H()J
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzgpg;->i:I

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzgpg;->g:I

    sub-int/2addr v2, v1

    const/16 v3, 0x8

    if-lt v2, v3, :cond_67

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzgpg;->f:[B

    add-int/lit8 v4, v1, 0x8

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzgpg;->i:I

    .line 2
    aget-byte v4, v2, v1

    int-to-long v4, v4

    add-int/lit8 v6, v1, 0x1

    aget-byte v6, v2, v6

    int-to-long v6, v6

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    and-long/2addr v4, v8

    shl-long/2addr v6, v3

    add-int/lit8 v3, v1, 0x2

    aget-byte v3, v2, v3

    int-to-long v10, v3

    add-int/lit8 v3, v1, 0x3

    aget-byte v3, v2, v3

    int-to-long v12, v3

    add-int/lit8 v3, v1, 0x4

    aget-byte v3, v2, v3

    int-to-long v14, v3

    add-int/lit8 v3, v1, 0x5

    aget-byte v3, v2, v3

    int-to-long v8, v3

    add-int/lit8 v3, v1, 0x6

    aget-byte v3, v2, v3

    move-wide/from16 v18, v8

    int-to-long v8, v3

    add-int/lit8 v1, v1, 0x7

    aget-byte v1, v2, v1

    int-to-long v1, v1

    const-wide/16 v16, 0xff

    and-long v10, v10, v16

    or-long/2addr v4, v6

    and-long v6, v12, v16

    const/16 v3, 0x10

    shl-long/2addr v10, v3

    or-long/2addr v4, v10

    and-long v10, v14, v16

    const/16 v3, 0x18

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    and-long v6, v18, v16

    const/16 v3, 0x20

    shl-long/2addr v10, v3

    or-long/2addr v4, v10

    and-long v8, v8, v16

    const/16 v3, 0x28

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    and-long v1, v1, v16

    const/16 v3, 0x30

    shl-long v6, v8, v3

    or-long/2addr v4, v6

    const/16 v3, 0x38

    shl-long/2addr v1, v3

    or-long/2addr v1, v4

    return-wide v1

    .line 3
    :cond_67
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqy;->j()Lcom/google/android/gms/internal/ads/zzgqy;

    move-result-object v1

    throw v1
.end method

.method public final I()J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgpg;->i:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgpg;->g:I

    if-ne v1, v0, :cond_8

    goto/16 :goto_b7

    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgpg;->f:[B

    add-int/lit8 v3, v0, 0x1

    .line 2
    aget-byte v0, v2, v0

    if-ltz v0, :cond_14

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzgpg;->i:I

    int-to-long v0, v0

    return-wide v0

    :cond_14
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-lt v1, v4, :cond_b7

    add-int/lit8 v1, v3, 0x1

    .line 3
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_27

    xor-int/lit8 v0, v0, -0x80

    :goto_24
    int-to-long v2, v0

    goto/16 :goto_b4

    :cond_27
    add-int/lit8 v3, v1, 0x1

    .line 4
    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_38

    xor-int/lit16 v0, v0, 0x3f80

    int-to-long v0, v0

    :cond_33
    :goto_33
    move-wide v9, v0

    move v1, v3

    move-wide v2, v9

    goto/16 :goto_b4

    :cond_38
    add-int/lit8 v1, v3, 0x1

    .line 5
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_46

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_24

    :cond_46
    add-int/lit8 v3, v1, 0x1

    .line 6
    aget-byte v1, v2, v1

    int-to-long v4, v1

    int-to-long v0, v0

    const/16 v6, 0x1c

    shl-long/2addr v4, v6

    xor-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_5b

    const-wide/32 v4, 0xfe03f80

    :goto_59
    xor-long/2addr v0, v4

    goto :goto_33

    :cond_5b
    add-int/lit8 v6, v3, 0x1

    .line 7
    aget-byte v3, v2, v3

    int-to-long v7, v3

    const/16 v3, 0x23

    shl-long/2addr v7, v3

    xor-long/2addr v0, v7

    cmp-long v3, v0, v4

    if-gez v3, :cond_70

    const-wide v2, -0x7f01fc080L

    :goto_6d
    xor-long/2addr v2, v0

    :goto_6e
    move v1, v6

    goto :goto_b4

    :cond_70
    add-int/lit8 v3, v6, 0x1

    .line 8
    aget-byte v6, v2, v6

    int-to-long v6, v6

    const/16 v8, 0x2a

    shl-long/2addr v6, v8

    xor-long/2addr v0, v6

    cmp-long v6, v0, v4

    if-ltz v6, :cond_83

    const-wide v4, 0x3f80fe03f80L

    goto :goto_59

    :cond_83
    add-int/lit8 v6, v3, 0x1

    .line 9
    aget-byte v3, v2, v3

    int-to-long v7, v3

    const/16 v3, 0x31

    shl-long/2addr v7, v3

    xor-long/2addr v0, v7

    cmp-long v3, v0, v4

    if-gez v3, :cond_96

    const-wide v2, -0x1fc07f01fc080L

    goto :goto_6d

    :cond_96
    add-int/lit8 v3, v6, 0x1

    .line 10
    aget-byte v6, v2, v6

    int-to-long v6, v6

    const/16 v8, 0x38

    shl-long/2addr v6, v8

    xor-long/2addr v0, v6

    const-wide v6, 0xfe03f80fe03f80L

    xor-long/2addr v0, v6

    cmp-long v6, v0, v4

    if-gez v6, :cond_33

    add-int/lit8 v6, v3, 0x1

    .line 11
    aget-byte v2, v2, v3

    int-to-long v2, v2

    cmp-long v7, v2, v4

    if-ltz v7, :cond_b7

    move-wide v2, v0

    goto :goto_6e

    .line 12
    :goto_b4
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzgpg;->i:I

    return-wide v2

    .line 13
    :cond_b7
    :goto_b7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpg;->J()J

    move-result-wide v0

    return-wide v0
.end method

.method final J()J
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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpg;->E()B

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
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgpg;->l:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgpg;->D()V

    return-void
.end method

.method public final b()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgpg;->i:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgpg;->g:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpg;->I()J

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
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzgpg;->C(I)V

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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpg;->r()I

    move-result v0

    if-eqz v0, :cond_2a

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgpg;->d(I)Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_2a
    ushr-int/2addr p1, v4

    shl-int/2addr p1, v4

    or-int/2addr p1, v3

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgpg;->B(I)V

    return v2

    .line 6
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpg;->G()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgpg;->C(I)V

    return v2

    :cond_39
    const/16 p1, 0x8

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgpg;->C(I)V

    return v2

    .line 8
    :cond_3f
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzgpg;->g:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgpg;->i:I

    sub-int/2addr p1, v0

    const/16 v0, 0xa

    if-lt p1, v0, :cond_5f

    :goto_48
    if-ge v1, v0, :cond_5a

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgpg;->f:[B

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzgpg;->i:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzgpg;->i:I

    aget-byte p1, p1, v3

    if-ltz p1, :cond_57

    goto :goto_6a

    :cond_57
    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    .line 9
    :cond_5a
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqy;->e()Lcom/google/android/gms/internal/ads/zzgqy;

    move-result-object p1

    throw p1

    :cond_5f
    :goto_5f
    if-ge v1, v0, :cond_6b

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpg;->E()B

    move-result p1

    if-gez p1, :cond_6a

    add-int/lit8 v1, v1, 0x1

    goto :goto_5f

    :cond_6a
    :goto_6a
    return v2

    .line 11
    :cond_6b
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqy;->e()Lcom/google/android/gms/internal/ads/zzgqy;

    move-result-object p1

    goto :goto_71

    :goto_70
    throw p1

    :goto_71
    goto :goto_70
.end method

.method public final i()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpg;->H()J

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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpg;->F()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final k()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgpg;->i:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgpg;->j:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final l(I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgqy;
        }
    .end annotation

    if-ltz p1, :cond_1e

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgpg;->i:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgpg;->j:I

    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    if-ltz p1, :cond_19

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgpg;->l:I

    if-gt p1, v0, :cond_14

    .line 3
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgpg;->l:I

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgpg;->D()V

    return v0

    .line 5
    :cond_14
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqy;->j()Lcom/google/android/gms/internal/ads/zzgqy;

    move-result-object p1

    throw p1

    .line 6
    :cond_19
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqy;->g()Lcom/google/android/gms/internal/ads/zzgqy;

    move-result-object p1

    throw p1

    .line 7
    :cond_1e
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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpg;->G()I

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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpg;->F()I

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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpg;->G()I

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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpg;->F()I

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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpg;->G()I

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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpg;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgpg;->k:I

    return v0

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpg;->G()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgpg;->k:I

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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpg;->G()I

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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpg;->H()J

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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpg;->I()J

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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpg;->H()J

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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpg;->I()J

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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpg;->I()J

    move-result-wide v0

    return-wide v0
.end method

.method public final y()Lcom/google/android/gms/internal/ads/zzgpe;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpg;->G()I

    move-result v0

    if-lez v0, :cond_1a

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgpg;->g:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgpg;->i:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_e

    goto :goto_1a

    .line 2
    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgpg;->f:[B

    .line 3
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzgpe;->L([BII)Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgpg;->i:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzgpg;->i:I

    return-object v1

    :cond_1a
    :goto_1a
    if-eqz v0, :cond_40

    if-lez v0, :cond_34

    .line 4
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgpg;->g:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgpg;->i:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_26

    goto :goto_34

    :cond_26
    add-int/2addr v0, v2

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgpg;->i:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgpg;->f:[B

    .line 6
    invoke-static {v1, v2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgpe;->O([B)Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v0

    return-object v0

    :cond_34
    :goto_34
    if-gtz v0, :cond_3b

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqy;->f()Lcom/google/android/gms/internal/ads/zzgqy;

    move-result-object v0

    throw v0

    .line 9
    :cond_3b
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqy;->j()Lcom/google/android/gms/internal/ads/zzgqy;

    move-result-object v0

    throw v0

    .line 10
    :cond_40
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgpe;->p:Lcom/google/android/gms/internal/ads/zzgpe;

    return-object v0
.end method

.method public final z()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpg;->G()I

    move-result v0

    if-lez v0, :cond_1d

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgpg;->g:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgpg;->i:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_e

    goto :goto_1d

    :cond_e
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgpg;->f:[B

    .line 2
    sget-object v4, Lcom/google/android/gms/internal/ads/zzgqw;->b:Ljava/nio/charset/Charset;

    invoke-direct {v1, v3, v2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgpg;->i:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzgpg;->i:I

    return-object v1

    :cond_1d
    :goto_1d
    if-nez v0, :cond_22

    const-string v0, ""

    return-object v0

    :cond_22
    if-gez v0, :cond_29

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqy;->f()Lcom/google/android/gms/internal/ads/zzgqy;

    move-result-object v0

    throw v0

    .line 4
    :cond_29
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqy;->j()Lcom/google/android/gms/internal/ads/zzgqy;

    move-result-object v0

    throw v0
.end method
