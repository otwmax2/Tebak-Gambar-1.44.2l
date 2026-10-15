###### Class com.google.android.gms.internal.ads.zzahl (com.google.android.gms.internal.ads.zzahl)
.class public final Lcom/google/android/gms/internal/ads/zzahl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzahn;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzen;

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/google/android/gms/internal/ads/zzabb;

.field private e:I

.field private f:I

.field private g:I

.field private h:J

.field private i:Lcom/google/android/gms/internal/ads/zzaf;

.field private j:I

.field private k:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzen;

    const/16 v1, 0x12

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahl;->a:Lcom/google/android/gms/internal/ads/zzen;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzahl;->e:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahl;->k:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahl;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    return-void
.end method

.method public final b()V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzahl;->e:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzahl;->f:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzahl;->g:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahl;->k:J

    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/ads/zzen;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahl;->d:Lcom/google/android/gms/internal/ads/zzabb;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdl;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v2

    if-lez v2, :cond_190

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzahl;->e:I

    const/16 v3, 0x8

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x4

    if-eqz v2, :cond_13e

    if-eq v2, v7, :cond_54

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v2

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzahl;->j:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzahl;->f:I

    sub-int/2addr v3, v4

    .line 2
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahl;->d:Lcom/google/android/gms/internal/ads/zzabb;

    .line 3
    invoke-interface {v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzabb;->d(Lcom/google/android/gms/internal/ads/zzen;I)V

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzahl;->f:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzahl;->f:I

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzahl;->j:I

    if-ne v3, v10, :cond_9

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzahl;->k:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v7, v2

    if-eqz v4, :cond_51

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzahl;->d:Lcom/google/android/gms/internal/ads/zzabb;

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 4
    invoke-interface/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/zzabb;->f(JIIILcom/google/android/gms/internal/ads/zzaba;)V

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzahl;->k:J

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzahl;->h:J

    add-long/2addr v2, v6

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzahl;->k:J

    :cond_51
    iput v5, v0, Lcom/google/android/gms/internal/ads/zzahl;->e:I

    goto :goto_9

    .line 5
    :cond_54
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahl;->a:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v9

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzahl;->f:I

    const/16 v11, 0x12

    rsub-int/lit8 v10, v10, 0x12

    .line 6
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzahl;->f:I

    .line 7
    invoke-virtual {v1, v2, v10, v9}, Lcom/google/android/gms/internal/ads/zzen;->b([BII)V

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzahl;->f:I

    add-int/2addr v2, v9

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzahl;->f:I

    if-ne v2, v11, :cond_9

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahl;->a:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v2

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzahl;->i:Lcom/google/android/gms/internal/ads/zzaf;

    if-nez v9, :cond_8e

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzahl;->c:Ljava/lang/String;

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzahl;->b:Ljava/lang/String;

    const/4 v12, 0x0

    .line 8
    invoke-static {v2, v9, v10, v12}, Lcom/google/android/gms/internal/ads/zzzr;->a([BLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzx;)Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object v9

    iput-object v9, v0, Lcom/google/android/gms/internal/ads/zzahl;->i:Lcom/google/android/gms/internal/ads/zzaf;

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzahl;->d:Lcom/google/android/gms/internal/ads/zzabb;

    .line 9
    invoke-interface {v10, v9}, Lcom/google/android/gms/internal/ads/zzabb;->e(Lcom/google/android/gms/internal/ads/zzaf;)V

    .line 10
    :cond_8e
    sget v9, Lcom/google/android/gms/internal/ads/zzzr;->d:I

    .line 11
    aget-byte v9, v2, v5

    const/16 v10, 0x1f

    const/4 v12, -0x1

    const/4 v13, -0x2

    const/4 v14, 0x5

    const/4 v15, 0x6

    const/16 v16, 0x7

    if-eq v9, v13, :cond_d5

    if-eq v9, v12, :cond_bf

    if-eq v9, v10, :cond_ad

    .line 12
    aget-byte v3, v2, v14

    and-int/2addr v3, v4

    shl-int/lit8 v3, v3, 0xc

    aget-byte v4, v2, v15

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v8

    aget-byte v9, v2, v16

    goto :goto_e1

    .line 13
    :cond_ad
    aget-byte v9, v2, v15

    and-int/2addr v4, v9

    shl-int/lit8 v4, v4, 0xc

    aget-byte v9, v2, v16

    and-int/lit16 v9, v9, 0xff

    shl-int/2addr v9, v8

    aget-byte v3, v2, v3

    and-int/lit8 v3, v3, 0x3c

    shr-int/2addr v3, v6

    or-int/2addr v4, v9

    or-int/2addr v3, v4

    goto :goto_d2

    .line 14
    :cond_bf
    aget-byte v3, v2, v16

    and-int/2addr v3, v4

    shl-int/lit8 v3, v3, 0xc

    aget-byte v4, v2, v15

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v8

    const/16 v9, 0x9

    aget-byte v9, v2, v9

    and-int/lit8 v9, v9, 0x3c

    shr-int/2addr v9, v6

    or-int/2addr v3, v4

    or-int/2addr v3, v9

    :goto_d2
    add-int/2addr v3, v7

    const/4 v4, 0x1

    goto :goto_e8

    .line 15
    :cond_d5
    aget-byte v3, v2, v8

    and-int/2addr v3, v4

    shl-int/lit8 v3, v3, 0xc

    aget-byte v4, v2, v16

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v8

    aget-byte v9, v2, v15

    :goto_e1
    and-int/lit16 v9, v9, 0xf0

    shr-int/2addr v9, v8

    or-int/2addr v3, v4

    or-int/2addr v3, v9

    add-int/2addr v3, v7

    const/4 v4, 0x0

    :goto_e8
    if-eqz v4, :cond_ee

    mul-int/lit8 v3, v3, 0x10

    .line 16
    div-int/lit8 v3, v3, 0xe

    :cond_ee
    iput v3, v0, Lcom/google/android/gms/internal/ads/zzahl;->j:I

    .line 17
    aget-byte v3, v2, v5

    if-eq v3, v13, :cond_111

    if-eq v3, v12, :cond_107

    if-eq v3, v10, :cond_ff

    .line 18
    aget-byte v3, v2, v8

    and-int/2addr v3, v7

    shl-int/2addr v3, v15

    aget-byte v2, v2, v14

    goto :goto_117

    .line 19
    :cond_ff
    aget-byte v3, v2, v14

    and-int/lit8 v3, v3, 0x7

    shl-int/2addr v3, v8

    aget-byte v2, v2, v15

    goto :goto_10e

    .line 20
    :cond_107
    aget-byte v3, v2, v8

    and-int/lit8 v3, v3, 0x7

    shl-int/2addr v3, v8

    aget-byte v2, v2, v16

    :goto_10e
    and-int/lit8 v2, v2, 0x3c

    goto :goto_119

    .line 21
    :cond_111
    aget-byte v3, v2, v14

    and-int/2addr v3, v7

    shl-int/2addr v3, v15

    aget-byte v2, v2, v8

    :goto_117
    and-int/lit16 v2, v2, 0xfc

    :goto_119
    shr-int/2addr v2, v6

    or-int/2addr v2, v3

    add-int/2addr v2, v7

    .line 22
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahl;->i:Lcom/google/android/gms/internal/ads/zzaf;

    .line 23
    iget v3, v3, Lcom/google/android/gms/internal/ads/zzaf;->z:I

    mul-int/lit8 v2, v2, 0x20

    int-to-long v7, v2

    const-wide/32 v9, 0xf4240

    mul-long v7, v7, v9

    int-to-long v2, v3

    div-long/2addr v7, v2

    long-to-int v2, v7

    int-to-long v2, v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzahl;->h:J

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahl;->a:Lcom/google/android/gms/internal/ads/zzen;

    .line 24
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahl;->d:Lcom/google/android/gms/internal/ads/zzabb;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahl;->a:Lcom/google/android/gms/internal/ads/zzen;

    .line 25
    invoke-interface {v2, v3, v11}, Lcom/google/android/gms/internal/ads/zzabb;->d(Lcom/google/android/gms/internal/ads/zzen;I)V

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzahl;->e:I

    goto/16 :goto_9

    .line 26
    :cond_13e
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v2

    if-lez v2, :cond_9

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzahl;->g:I

    shl-int/2addr v2, v3

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzahl;->g:I

    .line 27
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result v9

    or-int/2addr v2, v9

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzahl;->g:I

    .line 28
    sget v9, Lcom/google/android/gms/internal/ads/zzzr;->d:I

    const v9, 0x7ffe8001

    if-eq v2, v9, :cond_166

    const v9, -0x180fe80

    if-eq v2, v9, :cond_166

    const v9, 0x1fffe800

    if-eq v2, v9, :cond_166

    const v9, -0xe0ff18

    if-ne v2, v9, :cond_13e

    :cond_166
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahl;->a:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v2

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzahl;->g:I

    shr-int/lit8 v9, v3, 0x18

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    .line 29
    aput-byte v9, v2, v5

    shr-int/lit8 v9, v3, 0x10

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    .line 30
    aput-byte v9, v2, v7

    shr-int/lit8 v9, v3, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    .line 31
    aput-byte v9, v2, v6

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 32
    aput-byte v3, v2, v4

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzahl;->f:I

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzahl;->g:I

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzahl;->e:I

    goto/16 :goto_9

    :cond_190
    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/ads/zzzx;Lcom/google/android/gms/internal/ads/zzaiz;)V
    .registers 4

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaiz;->c()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaiz;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahl;->c:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaiz;->a()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzzx;->q(II)Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahl;->d:Lcom/google/android/gms/internal/ads/zzabb;

    return-void
.end method

.method public final e(JI)V
    .registers 6

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_b

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzahl;->k:J

    :cond_b
    return-void
.end method
