###### Class com.google.android.gms.internal.ads.zzahp (com.google.android.gms.internal.ads.zzahp)
.class public final Lcom/google/android/gms/internal/ads/zzahp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzahn;


# static fields
.field private static final q:[D


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/google/android/gms/internal/ads/zzabb;

.field private final c:Lcom/google/android/gms/internal/ads/zzajc;

.field private final d:Lcom/google/android/gms/internal/ads/zzen;

.field private final e:Lcom/google/android/gms/internal/ads/zzaic;

.field private final f:[Z

.field private final g:Lcom/google/android/gms/internal/ads/zzaho;

.field private h:J

.field private i:Z

.field private j:Z

.field private k:J

.field private l:J

.field private m:J

.field private n:J

.field private o:Z

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x8

    new-array v0, v0, [D

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/android/gms/internal/ads/zzahp;->q:[D

    return-void

    :array_a
    .array-data 8
        0x4037f9dcb5112287L    # 23.976023976023978
        0x4038000000000000L    # 24.0
        0x4039000000000000L    # 25.0
        0x403df853e2556b28L    # 29.97002997002997
        0x403e000000000000L    # 30.0
        0x4049000000000000L    # 50.0
        0x404df853e2556b28L    # 59.94005994005994
        0x404e000000000000L    # 60.0
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzahp;-><init>(Lcom/google/android/gms/internal/ads/zzajc;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ads/zzajc;)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahp;->c:Lcom/google/android/gms/internal/ads/zzajc;

    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahp;->f:[Z

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaho;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzaho;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahp;->g:Lcom/google/android/gms/internal/ads/zzaho;

    if-eqz p1, :cond_24

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaic;

    const/16 v0, 0xb2

    .line 3
    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzaic;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahp;->e:Lcom/google/android/gms/internal/ads/zzaic;

    .line 4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzen;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzen;-><init>()V

    goto :goto_27

    :cond_24
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahp;->e:Lcom/google/android/gms/internal/ads/zzaic;

    :goto_27
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahp;->d:Lcom/google/android/gms/internal/ads/zzen;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahp;->l:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahp;->n:J

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    return-void
.end method

.method public final b()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahp;->f:[Z

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaar;->e([Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahp;->g:Lcom/google/android/gms/internal/ads/zzaho;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaho;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahp;->e:Lcom/google/android/gms/internal/ads/zzaic;

    if-eqz v0, :cond_11

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaic;->b()V

    :cond_11
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahp;->h:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahp;->i:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahp;->l:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahp;->n:J

    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/ads/zzen;)V
    .registers 22

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahp;->b:Lcom/google/android/gms/internal/ads/zzabb;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdl;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->k()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->l()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v3

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzahp;->h:J

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzahp;->h:J

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzahp;->b:Lcom/google/android/gms/internal/ads/zzabb;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v5

    move-object/from16 v6, p1

    .line 2
    invoke-interface {v4, v6, v5}, Lcom/google/android/gms/internal/ads/zzabb;->d(Lcom/google/android/gms/internal/ads/zzen;I)V

    :goto_28
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzahp;->f:[Z

    .line 3
    invoke-static {v3, v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzaar;->a([BII[Z)I

    move-result v4

    if-ne v4, v2, :cond_41

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzahp;->j:Z

    if-nez v4, :cond_39

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzahp;->g:Lcom/google/android/gms/internal/ads/zzaho;

    .line 4
    invoke-virtual {v4, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzaho;->a([BII)V

    :cond_39
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzahp;->e:Lcom/google/android/gms/internal/ads/zzaic;

    if-eqz v4, :cond_40

    .line 5
    invoke-virtual {v4, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzaic;->a([BII)V

    :cond_40
    return-void

    :cond_41
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v5

    add-int/lit8 v7, v4, 0x3

    .line 6
    aget-byte v5, v5, v7

    and-int/lit16 v5, v5, 0xff

    sub-int v8, v4, v1

    iget-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzahp;->j:Z

    if-nez v9, :cond_12a

    if-lez v8, :cond_58

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzahp;->g:Lcom/google/android/gms/internal/ads/zzaho;

    .line 7
    invoke-virtual {v9, v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzaho;->a([BII)V

    :cond_58
    if-gez v8, :cond_5c

    neg-int v9, v8

    goto :goto_5d

    :cond_5c
    const/4 v9, 0x0

    :goto_5d
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzahp;->g:Lcom/google/android/gms/internal/ads/zzaho;

    .line 8
    invoke-virtual {v12, v5, v9}, Lcom/google/android/gms/internal/ads/zzaho;->c(II)Z

    move-result v9

    if-eqz v9, :cond_12a

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzahp;->g:Lcom/google/android/gms/internal/ads/zzaho;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzahp;->a:Ljava/lang/String;

    .line 9
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v13, v9, Lcom/google/android/gms/internal/ads/zzaho;->d:[B

    iget v14, v9, Lcom/google/android/gms/internal/ads/zzaho;->b:I

    .line 11
    invoke-static {v13, v14}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v13

    const/4 v14, 0x4

    .line 12
    aget-byte v15, v13, v14

    and-int/lit16 v15, v15, 0xff

    const/16 v16, 0x5

    .line 13
    aget-byte v10, v13, v16

    and-int/lit16 v10, v10, 0xff

    const/16 v17, 0x6

    .line 14
    aget-byte v11, v13, v17

    and-int/lit16 v11, v11, 0xff

    const/16 v17, 0x7

    .line 15
    aget-byte v14, v13, v17

    and-int/lit16 v14, v14, 0xf0

    and-int/lit8 v19, v10, 0xf

    const/4 v6, 0x4

    shl-int/2addr v15, v6

    shr-int/2addr v10, v6

    or-int/2addr v10, v15

    shr-int/2addr v14, v6

    const/16 v15, 0x8

    shl-int/lit8 v18, v19, 0x8

    or-int v11, v18, v11

    const/4 v15, 0x2

    if-eq v14, v15, :cond_ad

    const/4 v15, 0x3

    if-eq v14, v15, :cond_a8

    if-eq v14, v6, :cond_a3

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_b4

    :cond_a3
    mul-int/lit8 v6, v11, 0x79

    mul-int/lit8 v14, v10, 0x64

    goto :goto_b1

    :cond_a8
    mul-int/lit8 v6, v11, 0x10

    mul-int/lit8 v14, v10, 0x9

    goto :goto_b1

    :cond_ad
    mul-int/lit8 v6, v11, 0x4

    mul-int/lit8 v14, v10, 0x3

    :goto_b1
    int-to-float v6, v6

    int-to-float v14, v14

    div-float/2addr v6, v14

    :goto_b4
    new-instance v14, Lcom/google/android/gms/internal/ads/zzad;

    invoke-direct {v14}, Lcom/google/android/gms/internal/ads/zzad;-><init>()V

    .line 16
    invoke-virtual {v14, v12}, Lcom/google/android/gms/internal/ads/zzad;->h(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    const-string v12, "video/mpeg2"

    .line 17
    invoke-virtual {v14, v12}, Lcom/google/android/gms/internal/ads/zzad;->s(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    .line 18
    invoke-virtual {v14, v10}, Lcom/google/android/gms/internal/ads/zzad;->x(I)Lcom/google/android/gms/internal/ads/zzad;

    .line 19
    invoke-virtual {v14, v11}, Lcom/google/android/gms/internal/ads/zzad;->f(I)Lcom/google/android/gms/internal/ads/zzad;

    .line 20
    invoke-virtual {v14, v6}, Lcom/google/android/gms/internal/ads/zzad;->p(F)Lcom/google/android/gms/internal/ads/zzad;

    .line 21
    invoke-static {v13}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v14, v6}, Lcom/google/android/gms/internal/ads/zzad;->i(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzad;

    .line 22
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzad;->y()Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object v6

    .line 23
    aget-byte v10, v13, v17

    and-int/lit8 v10, v10, 0xf

    add-int/lit8 v10, v10, -0x1

    const-wide/16 v11, 0x0

    if-ltz v10, :cond_10c

    const/16 v14, 0x8

    if-ge v10, v14, :cond_10c

    sget-object v11, Lcom/google/android/gms/internal/ads/zzahp;->q:[D

    aget-wide v10, v11, v10

    iget v9, v9, Lcom/google/android/gms/internal/ads/zzaho;->c:I

    add-int/lit8 v9, v9, 0x9

    .line 24
    aget-byte v9, v13, v9

    and-int/lit8 v12, v9, 0x60

    shr-int/lit8 v12, v12, 0x5

    and-int/lit8 v9, v9, 0x1f

    if-eq v12, v9, :cond_105

    int-to-double v12, v12

    add-int/lit8 v9, v9, 0x1

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v12, v14

    int-to-double v14, v9

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v12, v14

    mul-double v10, v10, v12

    :cond_105
    const-wide v12, 0x412e848000000000L    # 1000000.0

    div-double/2addr v12, v10

    double-to-long v11, v12

    .line 25
    :cond_10c
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzahp;->b:Lcom/google/android/gms/internal/ads/zzabb;

    .line 26
    iget-object v10, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Lcom/google/android/gms/internal/ads/zzaf;

    invoke-interface {v9, v10}, Lcom/google/android/gms/internal/ads/zzabb;->e(Lcom/google/android/gms/internal/ads/zzaf;)V

    .line 27
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iput-wide v9, v0, Lcom/google/android/gms/internal/ads/zzahp;->k:J

    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzahp;->j:Z

    :cond_12a
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzahp;->e:Lcom/google/android/gms/internal/ads/zzaic;

    const/16 v9, 0xb2

    if-eqz v6, :cond_172

    if-lez v8, :cond_137

    .line 28
    invoke-virtual {v6, v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzaic;->a([BII)V

    const/4 v1, 0x0

    goto :goto_138

    :cond_137
    neg-int v1, v8

    :goto_138
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzahp;->e:Lcom/google/android/gms/internal/ads/zzaic;

    .line 29
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/zzaic;->d(I)Z

    move-result v1

    if-eqz v1, :cond_15e

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahp;->e:Lcom/google/android/gms/internal/ads/zzaic;

    .line 30
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzaic;->d:[B

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzaic;->e:I

    invoke-static {v6, v1}, Lcom/google/android/gms/internal/ads/zzaar;->b([BI)I

    move-result v1

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzahp;->d:Lcom/google/android/gms/internal/ads/zzen;

    .line 31
    sget v8, Lcom/google/android/gms/internal/ads/zzew;->a:I

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzahp;->e:Lcom/google/android/gms/internal/ads/zzaic;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzaic;->d:[B

    invoke-virtual {v6, v8, v1}, Lcom/google/android/gms/internal/ads/zzen;->d([BI)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahp;->c:Lcom/google/android/gms/internal/ads/zzajc;

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzahp;->n:J

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzahp;->d:Lcom/google/android/gms/internal/ads/zzen;

    .line 32
    invoke-virtual {v1, v10, v11, v6}, Lcom/google/android/gms/internal/ads/zzajc;->a(JLcom/google/android/gms/internal/ads/zzen;)V

    :cond_15e
    if-ne v5, v9, :cond_172

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v1

    add-int/lit8 v5, v4, 0x2

    .line 33
    aget-byte v1, v1, v5

    const/4 v5, 0x1

    if-ne v1, v5, :cond_170

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahp;->e:Lcom/google/android/gms/internal/ads/zzaic;

    .line 34
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzaic;->c(I)V

    :cond_170
    const/16 v5, 0xb2

    :cond_172
    if-eqz v5, :cond_184

    const/16 v1, 0xb3

    if-ne v5, v1, :cond_179

    goto :goto_184

    :cond_179
    const/16 v1, 0xb8

    if-ne v5, v1, :cond_180

    const/4 v1, 0x1

    .line 35
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzahp;->o:Z

    :cond_180
    move v4, v2

    move-object v6, v3

    goto/16 :goto_1eb

    :cond_184
    :goto_184
    sub-int v1, v2, v4

    .line 36
    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzahp;->p:Z

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v4, :cond_1b2

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzahp;->j:Z

    if-eqz v4, :cond_1b2

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzahp;->n:J

    cmp-long v4, v9, v14

    if-eqz v4, :cond_1b2

    iget-boolean v11, v0, Lcom/google/android/gms/internal/ads/zzahp;->o:Z

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zzahp;->h:J

    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/zzahp;->m:J

    sub-long/2addr v12, v14

    long-to-int v4, v12

    sub-int v12, v4, v1

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzahp;->b:Lcom/google/android/gms/internal/ads/zzabb;

    const/4 v14, 0x0

    move v13, v1

    move v4, v2

    move-object v6, v3

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 37
    invoke-interface/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/zzabb;->f(JIIILcom/google/android/gms/internal/ads/zzaba;)V

    goto :goto_1b5

    :cond_1b2
    move v4, v2

    move-object v6, v3

    move-wide v2, v14

    :goto_1b5
    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzahp;->i:Z

    if-eqz v8, :cond_1c1

    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzahp;->p:Z

    if-eqz v8, :cond_1be

    goto :goto_1c1

    :cond_1be
    const/4 v1, 0x0

    const/4 v2, 0x1

    goto :goto_1e4

    :cond_1c1
    :goto_1c1
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzahp;->h:J

    int-to-long v10, v1

    sub-long/2addr v8, v10

    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/zzahp;->m:J

    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/zzahp;->l:J

    cmp-long v1, v14, v2

    if-eqz v1, :cond_1ce

    goto :goto_1da

    :cond_1ce
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzahp;->n:J

    cmp-long v1, v8, v2

    if-eqz v1, :cond_1d9

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzahp;->k:J

    add-long v14, v8, v10

    goto :goto_1da

    :cond_1d9
    move-wide v14, v2

    :goto_1da
    iput-wide v14, v0, Lcom/google/android/gms/internal/ads/zzahp;->n:J

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzahp;->o:Z

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzahp;->l:J

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzahp;->i:Z

    :goto_1e4
    if-nez v5, :cond_1e8

    const/4 v10, 0x1

    goto :goto_1e9

    :cond_1e8
    const/4 v10, 0x0

    :goto_1e9
    iput-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzahp;->p:Z

    :goto_1eb
    move v2, v4

    move-object v3, v6

    move v1, v7

    move-object/from16 v6, p1

    goto/16 :goto_28
.end method

.method public final d(Lcom/google/android/gms/internal/ads/zzzx;Lcom/google/android/gms/internal/ads/zzaiz;)V
    .registers 5

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaiz;->c()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaiz;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahp;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaiz;->a()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzzx;->q(II)Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahp;->b:Lcom/google/android/gms/internal/ads/zzabb;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahp;->c:Lcom/google/android/gms/internal/ads/zzajc;

    if-eqz v0, :cond_1b

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzajc;->b(Lcom/google/android/gms/internal/ads/zzzx;Lcom/google/android/gms/internal/ads/zzaiz;)V

    :cond_1b
    return-void
.end method

.method public final e(JI)V
    .registers 4

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzahp;->l:J

    return-void
.end method
