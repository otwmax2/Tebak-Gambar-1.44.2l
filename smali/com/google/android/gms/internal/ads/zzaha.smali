###### Class com.google.android.gms.internal.ads.zzaha (com.google.android.gms.internal.ads.zzaha)
.class final Lcom/google/android/gms/internal/ads/zzaha;
.super Lcom/google/android/gms/internal/ads/zzagy;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private n:Lcom/google/android/gms/internal/ads/zzagz;

.field private o:I

.field private p:Z

.field private q:Lcom/google/android/gms/internal/ads/zzabg;

.field private r:Lcom/google/android/gms/internal/ads/zzabe;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzagy;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/internal/ads/zzen;)J
    .registers 13

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_e

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v0

    .line 2
    aget-byte v0, v0, v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaha;->n:Lcom/google/android/gms/internal/ads/zzagz;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdl;->b(Ljava/lang/Object;)Ljava/lang/Object;

    shr-int/2addr v0, v2

    iget v4, v3, Lcom/google/android/gms/internal/ads/zzagz;->e:I

    const/16 v5, 0x8

    rsub-int/lit8 v4, v4, 0x8

    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzagz;->d:[Lcom/google/android/gms/internal/ads/zzabf;

    const/16 v7, 0xff

    ushr-int v4, v7, v4

    and-int/2addr v0, v4

    .line 3
    aget-object v0, v6, v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzabf;->a:Z

    if-nez v0, :cond_32

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzagz;->a:Lcom/google/android/gms/internal/ads/zzabg;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzabg;->e:I

    goto :goto_36

    .line 4
    :cond_32
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzagz;->a:Lcom/google/android/gms/internal/ads/zzabg;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzabg;->f:I

    .line 5
    :goto_36
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzaha;->p:Z

    if-eqz v3, :cond_3f

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaha;->o:I

    add-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x4

    .line 6
    :cond_3f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->j()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->l()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    if-ge v3, v4, :cond_5e

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->l()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    .line 7
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    .line 8
    array-length v4, v3

    invoke-virtual {p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzen;->d([BI)V

    goto :goto_67

    .line 9
    :cond_5e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->l()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    .line 10
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzen;->e(I)V

    :goto_67
    int-to-long v3, v1

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->l()I

    move-result v6

    add-int/lit8 v6, v6, -0x4

    const-wide/16 v7, 0xff

    and-long v9, v3, v7

    long-to-int v10, v9

    int-to-byte v9, v10

    .line 12
    aput-byte v9, v1, v6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->l()I

    move-result v6

    add-int/lit8 v6, v6, -0x3

    ushr-long v9, v3, v5

    and-long/2addr v9, v7

    long-to-int v5, v9

    int-to-byte v5, v5

    .line 13
    aput-byte v5, v1, v6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->l()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    const/16 v6, 0x10

    ushr-long v9, v3, v6

    and-long/2addr v9, v7

    long-to-int v6, v9

    int-to-byte v6, v6

    .line 14
    aput-byte v6, v1, v5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->l()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/16 v5, 0x18

    ushr-long v5, v3, v5

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 15
    aput-byte v5, v1, p1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaha;->p:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaha;->o:I

    return-wide v3
.end method

.method protected final b(Z)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzagy;->b(Z)V

    if-eqz p1, :cond_c

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaha;->n:Lcom/google/android/gms/internal/ads/zzagz;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaha;->q:Lcom/google/android/gms/internal/ads/zzabg;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaha;->r:Lcom/google/android/gms/internal/ads/zzabe;

    :cond_c
    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaha;->o:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaha;->p:Z

    return-void
.end method

.method protected final c(Lcom/google/android/gms/internal/ads/zzen;JLcom/google/android/gms/internal/ads/zzagv;)Z
    .registers 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "#3.format"
        }
        result = false
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    .line 1
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaha;->n:Lcom/google/android/gms/internal/ads/zzagz;

    const/4 v4, 0x0

    if-eqz v3, :cond_11

    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzagv;->a:Lcom/google/android/gms/internal/ads/zzaf;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return v4

    :cond_11
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzaha;->q:Lcom/google/android/gms/internal/ads/zzabg;

    const/4 v5, 0x4

    const/4 v11, 0x1

    if-nez v6, :cond_84

    .line 3
    invoke-static {v11, v1, v4}, Lcom/google/android/gms/internal/ads/zzabh;->d(ILcom/google/android/gms/internal/ads/zzen;Z)Z

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->p()I

    move-result v13

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result v14

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->p()I

    move-result v15

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->o()I

    move-result v6

    if-gtz v6, :cond_2f

    const/16 v16, -0x1

    goto :goto_31

    :cond_2f
    move/from16 v16, v6

    .line 8
    :goto_31
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->o()I

    move-result v6

    if-gtz v6, :cond_3a

    const/16 v17, -0x1

    goto :goto_3c

    :cond_3a
    move/from16 v17, v6

    .line 9
    :goto_3c
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->o()I

    move-result v6

    if-gtz v6, :cond_45

    const/16 v18, -0x1

    goto :goto_47

    :cond_45
    move/from16 v18, v6

    .line 10
    :goto_47
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result v3

    and-int/lit8 v6, v3, 0xf

    int-to-double v8, v6

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    .line 11
    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-int v6, v8

    and-int/lit16 v3, v3, 0xf0

    shr-int/2addr v3, v5

    int-to-double v8, v3

    .line 12
    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-int v3, v8

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result v5

    const/4 v8, 0x1

    and-int/2addr v5, v8

    if-eq v8, v5, :cond_69

    const/16 v21, 0x0

    goto :goto_6b

    :cond_69
    const/16 v21, 0x1

    :goto_6b
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->l()I

    move-result v1

    .line 14
    invoke-static {v4, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v22

    new-instance v1, Lcom/google/android/gms/internal/ads/zzabg;

    move-object v12, v1

    move/from16 v19, v6

    move/from16 v20, v3

    invoke-direct/range {v12 .. v22}, Lcom/google/android/gms/internal/ads/zzabg;-><init>(IIIIIIIIZ[B)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaha;->q:Lcom/google/android/gms/internal/ads/zzabg;

    goto :goto_8f

    .line 15
    :cond_84
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzaha;->r:Lcom/google/android/gms/internal/ads/zzabe;

    if-nez v8, :cond_92

    const/4 v9, 0x1

    .line 16
    invoke-static {v1, v9, v9}, Lcom/google/android/gms/internal/ads/zzabh;->c(Lcom/google/android/gms/internal/ads/zzen;ZZ)Lcom/google/android/gms/internal/ads/zzabe;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaha;->r:Lcom/google/android/gms/internal/ads/zzabe;

    :goto_8f
    const/4 v7, 0x0

    goto/16 :goto_400

    :cond_92
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->l()I

    move-result v9

    .line 17
    new-array v9, v9, [B

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->l()I

    move-result v11

    .line 18
    invoke-static {v10, v4, v9, v4, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v10, v6, Lcom/google/android/gms/internal/ads/zzabg;->a:I

    const/4 v11, 0x5

    .line 19
    invoke-static {v11, v1, v4}, Lcom/google/android/gms/internal/ads/zzabh;->d(ILcom/google/android/gms/internal/ads/zzen;Z)Z

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result v12

    const/4 v13, 0x1

    add-int/2addr v12, v13

    new-instance v13, Lcom/google/android/gms/internal/ads/zzabd;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v14

    .line 21
    invoke-direct {v13, v14}, Lcom/google/android/gms/internal/ads/zzabd;-><init>([B)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->k()I

    move-result v1

    const/16 v14, 0x8

    mul-int/lit8 v1, v1, 0x8

    .line 22
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzabd;->c(I)V

    const/4 v1, 0x0

    :goto_c4
    const/16 v15, 0x18

    const/16 v3, 0x10

    if-ge v1, v12, :cond_1e2

    .line 23
    invoke-virtual {v13, v15}, Lcom/google/android/gms/internal/ads/zzabd;->b(I)I

    move-result v14

    const v7, 0x564342

    if-ne v14, v7, :cond_1c7

    .line 24
    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/ads/zzabd;->b(I)I

    move-result v3

    .line 25
    invoke-virtual {v13, v15}, Lcom/google/android/gms/internal/ads/zzabd;->b(I)I

    move-result v7

    .line 26
    new-array v14, v7, [J

    .line 27
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzabd;->d()Z

    move-result v15

    const-wide/16 v18, 0x0

    if-nez v15, :cond_122

    .line 28
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzabd;->d()Z

    move-result v15

    const/4 v4, 0x0

    :goto_ea
    if-ge v4, v7, :cond_11f

    if-eqz v15, :cond_10a

    .line 29
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzabd;->d()Z

    move-result v21

    if-eqz v21, :cond_102

    .line 30
    invoke-virtual {v13, v11}, Lcom/google/android/gms/internal/ads/zzabd;->b(I)I

    move-result v21

    const/16 v22, 0x1

    add-int/lit8 v5, v21, 0x1

    move/from16 v23, v12

    int-to-long v11, v5

    aput-wide v11, v14, v4

    goto :goto_108

    :cond_102
    move/from16 v23, v12

    const/16 v22, 0x1

    .line 31
    aput-wide v18, v14, v4

    :goto_108
    const/4 v5, 0x5

    goto :goto_118

    :cond_10a
    move/from16 v23, v12

    const/4 v5, 0x5

    const/16 v22, 0x1

    .line 32
    invoke-virtual {v13, v5}, Lcom/google/android/gms/internal/ads/zzabd;->b(I)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    int-to-long v11, v11

    aput-wide v11, v14, v4

    :goto_118
    add-int/lit8 v4, v4, 0x1

    move/from16 v12, v23

    const/4 v5, 0x4

    const/4 v11, 0x5

    goto :goto_ea

    :cond_11f
    move/from16 v23, v12

    goto :goto_15a

    :cond_122
    move/from16 v23, v12

    const/4 v5, 0x5

    const/16 v22, 0x1

    .line 33
    invoke-virtual {v13, v5}, Lcom/google/android/gms/internal/ads/zzabd;->b(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    :goto_12e
    if-ge v5, v7, :cond_15a

    sub-int v11, v7, v5

    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzabh;->a(I)I

    move-result v11

    .line 34
    invoke-virtual {v13, v11}, Lcom/google/android/gms/internal/ads/zzabd;->b(I)I

    move-result v11

    const/4 v12, 0x0

    :goto_13b
    if-ge v12, v11, :cond_14f

    if-ge v5, v7, :cond_14f

    move-object/from16 v22, v8

    move-object/from16 v24, v9

    int-to-long v8, v4

    .line 35
    aput-wide v8, v14, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v8, v22

    move-object/from16 v9, v24

    goto :goto_13b

    :cond_14f
    move-object/from16 v22, v8

    move-object/from16 v24, v9

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v8, v22

    move-object/from16 v9, v24

    goto :goto_12e

    :cond_15a
    :goto_15a
    move-object/from16 v22, v8

    move-object/from16 v24, v9

    const/4 v4, 0x4

    .line 36
    invoke-virtual {v13, v4}, Lcom/google/android/gms/internal/ads/zzabd;->b(I)I

    move-result v5

    const/4 v8, 0x2

    if-gt v5, v8, :cond_1b0

    const/4 v9, 0x1

    if-eq v5, v9, :cond_16c

    if-ne v5, v8, :cond_1a1

    const/4 v5, 0x2

    :cond_16c
    const/16 v8, 0x20

    .line 37
    invoke-virtual {v13, v8}, Lcom/google/android/gms/internal/ads/zzabd;->c(I)V

    .line 38
    invoke-virtual {v13, v8}, Lcom/google/android/gms/internal/ads/zzabd;->c(I)V

    .line 39
    invoke-virtual {v13, v4}, Lcom/google/android/gms/internal/ads/zzabd;->b(I)I

    move-result v8

    add-int/2addr v8, v9

    .line 40
    invoke-virtual {v13, v9}, Lcom/google/android/gms/internal/ads/zzabd;->c(I)V

    if-ne v5, v9, :cond_196

    if-eqz v3, :cond_19a

    int-to-long v4, v7

    int-to-long v11, v3

    long-to-double v11, v11

    long-to-double v3, v4

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v14, v11

    .line 41
    invoke-static {v3, v4, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-long v3, v3

    move-wide/from16 v18, v3

    goto :goto_19a

    :cond_196
    int-to-long v4, v7

    int-to-long v11, v3

    mul-long v18, v4, v11

    :cond_19a
    :goto_19a
    int-to-long v3, v8

    mul-long v3, v3, v18

    long-to-int v4, v3

    .line 42
    invoke-virtual {v13, v4}, Lcom/google/android/gms/internal/ads/zzabd;->c(I)V

    :cond_1a1
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v8, v22

    move/from16 v12, v23

    move-object/from16 v9, v24

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v11, 0x5

    const/16 v14, 0x8

    goto/16 :goto_c4

    .line 43
    :cond_1b0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lookup type greater than 2 not decodable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object v1

    throw v1

    :cond_1c7
    const/4 v2, 0x0

    .line 45
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzabd;->a()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    .line 46
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expected code book to start with [0x56, 0x43, 0x42] at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object v1

    throw v1

    :cond_1e2
    move-object/from16 v22, v8

    move-object/from16 v24, v9

    const/4 v1, 0x6

    .line 48
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzabd;->b(I)I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    const/4 v5, 0x0

    :goto_1ee
    if-ge v5, v4, :cond_201

    .line 49
    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/ads/zzabd;->b(I)I

    move-result v7

    if-nez v7, :cond_1f9

    add-int/lit8 v5, v5, 0x1

    goto :goto_1ee

    :cond_1f9
    const-string v1, "placeholder of time domain transforms not zeroed out"

    const/4 v2, 0x0

    .line 50
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object v1

    throw v1

    .line 51
    :cond_201
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzabd;->b(I)I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    const/4 v7, 0x0

    :goto_208
    const/4 v8, 0x3

    if-ge v7, v4, :cond_2c2

    .line 52
    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/ads/zzabd;->b(I)I

    move-result v9

    if-eqz v9, :cond_296

    if-ne v9, v5, :cond_27f

    const/4 v5, 0x5

    .line 53
    invoke-virtual {v13, v5}, Lcom/google/android/gms/internal/ads/zzabd;->b(I)I

    move-result v9

    .line 54
    new-array v5, v9, [I

    const/4 v11, 0x0

    const/4 v12, -0x1

    :goto_21c
    if-ge v11, v9, :cond_22d

    const/4 v14, 0x4

    .line 55
    invoke-virtual {v13, v14}, Lcom/google/android/gms/internal/ads/zzabd;->b(I)I

    move-result v15

    aput v15, v5, v11

    if-le v15, v12, :cond_228

    move v12, v15

    :cond_228
    add-int/lit8 v11, v11, 0x1

    const/16 v15, 0x18

    goto :goto_21c

    :cond_22d
    add-int/lit8 v12, v12, 0x1

    .line 56
    new-array v11, v12, [I

    const/4 v14, 0x0

    :goto_232
    if-ge v14, v12, :cond_261

    .line 57
    invoke-virtual {v13, v8}, Lcom/google/android/gms/internal/ads/zzabd;->b(I)I

    move-result v15

    const/16 v19, 0x1

    add-int/lit8 v15, v15, 0x1

    aput v15, v11, v14

    const/4 v15, 0x2

    .line 58
    invoke-virtual {v13, v15}, Lcom/google/android/gms/internal/ads/zzabd;->b(I)I

    move-result v23

    if-lez v23, :cond_24b

    const/16 v15, 0x8

    .line 59
    invoke-virtual {v13, v15}, Lcom/google/android/gms/internal/ads/zzabd;->c(I)V

    goto :goto_24d

    :cond_24b
    const/16 v15, 0x8

    :goto_24d
    const/4 v8, 0x0

    :goto_24e
    shl-int v1, v19, v23

    if-ge v8, v1, :cond_25c

    .line 60
    invoke-virtual {v13, v15}, Lcom/google/android/gms/internal/ads/zzabd;->c(I)V

    add-int/lit8 v8, v8, 0x1

    const/16 v15, 0x8

    const/16 v19, 0x1

    goto :goto_24e

    :cond_25c
    add-int/lit8 v14, v14, 0x1

    const/4 v1, 0x6

    const/4 v8, 0x3

    goto :goto_232

    :cond_261
    const/4 v1, 0x2

    .line 61
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzabd;->c(I)V

    const/4 v1, 0x4

    .line 62
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzabd;->b(I)I

    move-result v8

    const/4 v1, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_26d
    if-ge v1, v9, :cond_2ba

    .line 63
    aget v15, v5, v1

    .line 64
    aget v15, v11, v15

    add-int/2addr v12, v15

    :goto_274
    if-ge v14, v12, :cond_27c

    .line 65
    invoke-virtual {v13, v8}, Lcom/google/android/gms/internal/ads/zzabd;->c(I)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_274

    :cond_27c
    add-int/lit8 v1, v1, 0x1

    goto :goto_26d

    .line 66
    :cond_27f
    new-instance v1, Ljava/lang/StringBuilder;

    .line 67
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "floor type greater than 1 not decodable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object v1

    throw v1

    :cond_296
    const/16 v1, 0x8

    .line 68
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzabd;->c(I)V

    .line 69
    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/ads/zzabd;->c(I)V

    .line 70
    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/ads/zzabd;->c(I)V

    const/4 v5, 0x6

    .line 71
    invoke-virtual {v13, v5}, Lcom/google/android/gms/internal/ads/zzabd;->c(I)V

    .line 72
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzabd;->c(I)V

    const/4 v5, 0x4

    .line 73
    invoke-virtual {v13, v5}, Lcom/google/android/gms/internal/ads/zzabd;->b(I)I

    move-result v8

    const/4 v5, 0x1

    add-int/2addr v8, v5

    const/4 v5, 0x0

    :goto_2b0
    if-ge v5, v8, :cond_2ba

    .line 74
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzabd;->c(I)V

    add-int/lit8 v5, v5, 0x1

    const/16 v1, 0x8

    goto :goto_2b0

    :cond_2ba
    add-int/lit8 v7, v7, 0x1

    const/4 v1, 0x6

    const/4 v5, 0x1

    const/16 v15, 0x18

    goto/16 :goto_208

    .line 75
    :cond_2c2
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzabd;->b(I)I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    const/4 v7, 0x0

    :goto_2c9
    if-ge v7, v4, :cond_335

    .line 76
    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/ads/zzabd;->b(I)I

    move-result v8

    const/4 v9, 0x2

    if-gt v8, v9, :cond_32d

    const/16 v8, 0x18

    .line 77
    invoke-virtual {v13, v8}, Lcom/google/android/gms/internal/ads/zzabd;->c(I)V

    .line 78
    invoke-virtual {v13, v8}, Lcom/google/android/gms/internal/ads/zzabd;->c(I)V

    .line 79
    invoke-virtual {v13, v8}, Lcom/google/android/gms/internal/ads/zzabd;->c(I)V

    .line 80
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzabd;->b(I)I

    move-result v9

    add-int/2addr v9, v5

    const/16 v1, 0x8

    .line 81
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzabd;->c(I)V

    .line 82
    new-array v5, v9, [I

    const/4 v11, 0x0

    :goto_2ea
    if-ge v11, v9, :cond_309

    const/4 v12, 0x3

    .line 83
    invoke-virtual {v13, v12}, Lcom/google/android/gms/internal/ads/zzabd;->b(I)I

    move-result v14

    .line 84
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzabd;->d()Z

    move-result v15

    if-eqz v15, :cond_2fd

    const/4 v15, 0x5

    .line 85
    invoke-virtual {v13, v15}, Lcom/google/android/gms/internal/ads/zzabd;->b(I)I

    move-result v18

    goto :goto_300

    :cond_2fd
    const/4 v15, 0x5

    const/16 v18, 0x0

    :goto_300
    mul-int/lit8 v18, v18, 0x8

    add-int v18, v18, v14

    .line 86
    aput v18, v5, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_2ea

    :cond_309
    const/4 v12, 0x3

    const/4 v15, 0x5

    const/4 v11, 0x0

    :goto_30c
    if-ge v11, v9, :cond_328

    const/4 v14, 0x0

    :goto_30f
    if-ge v14, v1, :cond_323

    .line 87
    aget v18, v5, v11

    const/16 v19, 0x1

    shl-int v21, v19, v14

    and-int v18, v18, v21

    if-eqz v18, :cond_31e

    .line 88
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzabd;->c(I)V

    :cond_31e
    add-int/lit8 v14, v14, 0x1

    const/16 v1, 0x8

    goto :goto_30f

    :cond_323
    add-int/lit8 v11, v11, 0x1

    const/16 v1, 0x8

    goto :goto_30c

    :cond_328
    add-int/lit8 v7, v7, 0x1

    const/4 v1, 0x6

    const/4 v5, 0x1

    goto :goto_2c9

    :cond_32d
    const-string v1, "residueType greater than 2 is not decodable"

    const/4 v2, 0x0

    .line 89
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object v1

    throw v1

    .line 90
    :cond_335
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzabd;->b(I)I

    move-result v4

    const/4 v1, 0x1

    add-int/2addr v4, v1

    const/4 v1, 0x0

    :goto_33c
    if-ge v1, v4, :cond_3c1

    .line 91
    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/ads/zzabd;->b(I)I

    move-result v5

    if-eqz v5, :cond_35d

    new-instance v7, Ljava/lang/StringBuilder;

    .line 92
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mapping type other than 0 not supported: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "VorbisUtil"

    invoke-static {v7, v5}, Lcom/google/android/gms/internal/ads/zzee;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x2

    const/4 v9, 0x4

    goto :goto_3b6

    .line 93
    :cond_35d
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzabd;->d()Z

    move-result v5

    if-eqz v5, :cond_36b

    const/4 v5, 0x4

    .line 94
    invoke-virtual {v13, v5}, Lcom/google/android/gms/internal/ads/zzabd;->b(I)I

    move-result v7

    const/4 v5, 0x1

    add-int/2addr v7, v5

    goto :goto_36d

    :cond_36b
    const/4 v5, 0x1

    const/4 v7, 0x1

    .line 95
    :goto_36d
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzabd;->d()Z

    move-result v8

    if-eqz v8, :cond_390

    const/16 v8, 0x8

    .line 96
    invoke-virtual {v13, v8}, Lcom/google/android/gms/internal/ads/zzabd;->b(I)I

    move-result v9

    add-int/2addr v9, v5

    const/4 v5, 0x0

    :goto_37b
    if-ge v5, v9, :cond_390

    add-int/lit8 v8, v10, -0x1

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzabh;->a(I)I

    move-result v11

    .line 97
    invoke-virtual {v13, v11}, Lcom/google/android/gms/internal/ads/zzabd;->c(I)V

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzabh;->a(I)I

    move-result v8

    .line 98
    invoke-virtual {v13, v8}, Lcom/google/android/gms/internal/ads/zzabd;->c(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_37b

    :cond_390
    const/4 v5, 0x2

    .line 99
    invoke-virtual {v13, v5}, Lcom/google/android/gms/internal/ads/zzabd;->b(I)I

    move-result v8

    if-nez v8, :cond_3b9

    const/4 v8, 0x1

    if-le v7, v8, :cond_3a4

    const/4 v8, 0x0

    :goto_39b
    if-ge v8, v10, :cond_3a4

    const/4 v9, 0x4

    .line 100
    invoke-virtual {v13, v9}, Lcom/google/android/gms/internal/ads/zzabd;->c(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_39b

    :cond_3a4
    const/4 v9, 0x4

    const/4 v8, 0x0

    :goto_3a6
    if-ge v8, v7, :cond_3b6

    const/16 v11, 0x8

    .line 101
    invoke-virtual {v13, v11}, Lcom/google/android/gms/internal/ads/zzabd;->c(I)V

    .line 102
    invoke-virtual {v13, v11}, Lcom/google/android/gms/internal/ads/zzabd;->c(I)V

    .line 103
    invoke-virtual {v13, v11}, Lcom/google/android/gms/internal/ads/zzabd;->c(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3a6

    :cond_3b6
    :goto_3b6
    add-int/lit8 v1, v1, 0x1

    goto :goto_33c

    :cond_3b9
    const-string v1, "to reserved bits must be zero after mapping coupling steps"

    const/4 v2, 0x0

    .line 104
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object v1

    throw v1

    :cond_3c1
    const/4 v1, 0x6

    .line 105
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzabd;->b(I)I

    move-result v1

    const/4 v4, 0x1

    add-int/2addr v1, v4

    .line 106
    new-array v9, v1, [Lcom/google/android/gms/internal/ads/zzabf;

    const/4 v4, 0x0

    :goto_3cb
    if-ge v4, v1, :cond_3e9

    .line 107
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzabd;->d()Z

    move-result v5

    .line 108
    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/ads/zzabd;->b(I)I

    move-result v7

    .line 109
    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/ads/zzabd;->b(I)I

    move-result v8

    const/16 v10, 0x8

    .line 110
    invoke-virtual {v13, v10}, Lcom/google/android/gms/internal/ads/zzabd;->b(I)I

    move-result v11

    new-instance v12, Lcom/google/android/gms/internal/ads/zzabf;

    invoke-direct {v12, v5, v7, v8, v11}, Lcom/google/android/gms/internal/ads/zzabf;-><init>(ZIII)V

    .line 111
    aput-object v12, v9, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3cb

    .line 112
    :cond_3e9
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzabd;->d()Z

    move-result v3

    if-eqz v3, :cond_44f

    .line 113
    new-instance v3, Lcom/google/android/gms/internal/ads/zzagz;

    const/4 v4, -0x1

    add-int/2addr v1, v4

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzabh;->a(I)I

    move-result v10

    move-object v5, v3

    move-object/from16 v7, v22

    move-object/from16 v8, v24

    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/zzagz;-><init>(Lcom/google/android/gms/internal/ads/zzabg;Lcom/google/android/gms/internal/ads/zzabe;[B[Lcom/google/android/gms/internal/ads/zzabf;I)V

    move-object v7, v3

    .line 114
    :goto_400
    iput-object v7, v0, Lcom/google/android/gms/internal/ads/zzaha;->n:Lcom/google/android/gms/internal/ads/zzagz;

    if-nez v7, :cond_406

    const/4 v1, 0x1

    return v1

    :cond_406
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzagz;->a:Lcom/google/android/gms/internal/ads/zzabg;

    new-instance v3, Ljava/util/ArrayList;

    .line 115
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzabg;->g:[B

    .line 116
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v7, Lcom/google/android/gms/internal/ads/zzagz;->c:[B

    .line 117
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v7, Lcom/google/android/gms/internal/ads/zzagz;->b:Lcom/google/android/gms/internal/ads/zzabe;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzabe;->b:[Ljava/lang/String;

    .line 118
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzfqk;->t([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzabh;->b(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzbq;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/internal/ads/zzad;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzad;-><init>()V

    const-string v6, "audio/vorbis"

    .line 119
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzad;->s(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzabg;->d:I

    .line 120
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzad;->d0(I)Lcom/google/android/gms/internal/ads/zzad;

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzabg;->c:I

    .line 121
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzad;->o(I)Lcom/google/android/gms/internal/ads/zzad;

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzabg;->a:I

    .line 122
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzad;->e0(I)Lcom/google/android/gms/internal/ads/zzad;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzabg;->b:I

    .line 123
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzad;->t(I)Lcom/google/android/gms/internal/ads/zzad;

    .line 124
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzad;->i(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzad;

    .line 125
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzad;->m(Lcom/google/android/gms/internal/ads/zzbq;)Lcom/google/android/gms/internal/ads/zzad;

    .line 126
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzad;->y()Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object v1

    iput-object v1, v2, Lcom/google/android/gms/internal/ads/zzagv;->a:Lcom/google/android/gms/internal/ads/zzaf;

    const/4 v1, 0x1

    return v1

    :cond_44f
    const-string v1, "framing bit after modes not set as expected"

    const/4 v2, 0x0

    .line 127
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object v1

    goto :goto_458

    :goto_457
    throw v1

    :goto_458
    goto :goto_457
.end method

.method protected final h(J)V
    .registers 7

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzagy;->h(J)V

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-eqz v3, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaha;->p:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaha;->q:Lcom/google/android/gms/internal/ads/zzabg;

    if-eqz p1, :cond_15

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzabg;->e:I

    :cond_15
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaha;->o:I

    return-void
.end method
