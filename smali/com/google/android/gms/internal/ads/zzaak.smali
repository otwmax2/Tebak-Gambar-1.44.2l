###### Class com.google.android.gms.internal.ads.zzaak (com.google.android.gms.internal.ads.zzaak)
.class public final Lcom/google/android/gms/internal/ads/zzaak;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:I

.field public final c:F

.field public final d:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/util/List;IIIFLjava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaak;->a:Ljava/util/List;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaak;->b:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzaak;->c:F

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzaak;->d:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzaak;
    .registers 41
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbu;
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0x15

    .line 1
    :try_start_4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result v1

    const/4 v2, 0x3

    and-int/2addr v1, v2

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->k()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_18
    const/4 v8, 0x1

    if-ge v6, v3, :cond_35

    .line 4
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->w()I

    move-result v8

    const/4 v9, 0x0

    :goto_23
    if-ge v9, v8, :cond_32

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->w()I

    move-result v10

    add-int/lit8 v11, v10, 0x4

    add-int/2addr v7, v11

    .line 7
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_23

    :cond_32
    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    .line 8
    :cond_35
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 9
    new-array v4, v7, [B

    const/4 v6, 0x0

    move-object/from16 v17, v6

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/high16 v16, 0x3f800000    # 1.0f

    :goto_43
    if-ge v6, v3, :cond_3f3

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result v12

    and-int/lit8 v12, v12, 0x3f

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->w()I

    move-result v13

    const/4 v9, 0x0

    :goto_50
    if-ge v9, v13, :cond_3e2

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->w()I

    move-result v10

    .line 13
    sget-object v8, Lcom/google/android/gms/internal/ads/zzaar;->a:[B

    const/4 v2, 0x4

    invoke-static {v8, v5, v4, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v11, v11, 0x4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->k()I

    move-result v5

    .line 14
    invoke-static {v8, v5, v4, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v5, 0x21

    if-ne v12, v5, :cond_3b9

    if-nez v9, :cond_3b9

    add-int v5, v11, v10

    add-int/lit8 v8, v11, 0x2

    new-instance v9, Lcom/google/android/gms/internal/ads/zzaat;

    .line 15
    invoke-direct {v9, v4, v8, v5}, Lcom/google/android/gms/internal/ads/zzaat;-><init>([BII)V

    .line 16
    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/ads/zzaat;->e(I)V

    const/4 v5, 0x3

    .line 17
    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/ads/zzaat;->a(I)I

    move-result v8

    .line 18
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaat;->d()V

    const/4 v5, 0x2

    .line 19
    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/ads/zzaat;->a(I)I

    move-result v19

    .line 20
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaat;->f()Z

    move-result v20

    const/4 v14, 0x5

    .line 21
    invoke-virtual {v9, v14}, Lcom/google/android/gms/internal/ads/zzaat;->a(I)I

    move-result v21

    const/4 v15, 0x0

    const/16 v22, 0x0

    :goto_94
    const/16 v14, 0x20

    if-ge v15, v14, :cond_a6

    .line 22
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaat;->f()Z

    move-result v14

    if-eqz v14, :cond_a3

    const/4 v14, 0x1

    shl-int v17, v14, v15

    or-int v22, v22, v17

    :cond_a3
    add-int/lit8 v15, v15, 0x1

    goto :goto_94

    :cond_a6
    const/4 v14, 0x6

    new-array v15, v14, [I

    const/4 v2, 0x0

    :goto_aa
    const/16 v5, 0x8

    if-ge v2, v14, :cond_b7

    .line 23
    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/ads/zzaat;->a(I)I

    move-result v5

    aput v5, v15, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_aa

    .line 24
    :cond_b7
    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/ads/zzaat;->a(I)I

    move-result v24

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_bd
    if-ge v2, v8, :cond_d2

    .line 25
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaat;->f()Z

    move-result v25

    if-eqz v25, :cond_c7

    add-int/lit8 v5, v5, 0x59

    .line 26
    :cond_c7
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaat;->f()Z

    move-result v25

    if-eqz v25, :cond_cf

    add-int/lit8 v5, v5, 0x8

    :cond_cf
    add-int/lit8 v2, v2, 0x1

    goto :goto_bd

    .line 27
    :cond_d2
    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/ads/zzaat;->e(I)V

    if-lez v8, :cond_dd

    rsub-int/lit8 v2, v8, 0x8

    add-int/2addr v2, v2

    .line 28
    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/ads/zzaat;->e(I)V

    .line 29
    :cond_dd
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    .line 30
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    move-result v5

    const/4 v2, 0x3

    if-ne v5, v2, :cond_eb

    .line 31
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaat;->d()V

    const/4 v5, 0x3

    .line 32
    :cond_eb
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    move-result v2

    .line 33
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    move-result v25

    .line 34
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaat;->f()Z

    move-result v26

    if-eqz v26, :cond_12e

    .line 35
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    move-result v26

    .line 36
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    move-result v27

    .line 37
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    move-result v28

    .line 38
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    move-result v29

    const/4 v14, 0x1

    if-eq v5, v14, :cond_119

    const/4 v14, 0x2

    if-ne v5, v14, :cond_114

    move/from16 v31, v3

    const/4 v3, 0x1

    const/4 v5, 0x2

    goto :goto_11c

    :cond_114
    move/from16 v31, v3

    const/4 v3, 0x1

    const/4 v14, 0x1

    goto :goto_11d

    :cond_119
    move/from16 v31, v3

    const/4 v3, 0x1

    :goto_11c
    const/4 v14, 0x2

    :goto_11d
    if-ne v5, v3, :cond_121

    const/4 v3, 0x2

    goto :goto_122

    :cond_121
    const/4 v3, 0x1

    :goto_122
    add-int v26, v26, v27

    mul-int v14, v14, v26

    sub-int/2addr v2, v14

    add-int v28, v28, v29

    mul-int v3, v3, v28

    sub-int v25, v25, v3

    goto :goto_130

    :cond_12e
    move/from16 v31, v3

    .line 39
    :goto_130
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    .line 40
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    .line 41
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    move-result v3

    .line 42
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaat;->f()Z

    move-result v5

    const/4 v14, 0x1

    if-eq v14, v5, :cond_143

    move v5, v8

    goto :goto_144

    :cond_143
    const/4 v5, 0x0

    :goto_144
    if-gt v5, v8, :cond_152

    .line 43
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    .line 44
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    .line 45
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    add-int/lit8 v5, v5, 0x1

    goto :goto_144

    .line 46
    :cond_152
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    .line 47
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    .line 48
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    .line 49
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    .line 50
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    .line 51
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    .line 52
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaat;->f()Z

    move-result v5

    if-eqz v5, :cond_1bd

    .line 53
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaat;->f()Z

    move-result v5

    if-eqz v5, :cond_1bd

    const/4 v5, 0x0

    :goto_171
    const/4 v8, 0x4

    if-ge v5, v8, :cond_1bd

    const/4 v8, 0x0

    :goto_175
    const/4 v14, 0x6

    if-ge v8, v14, :cond_1b3

    .line 54
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaat;->f()Z

    move-result v26

    if-nez v26, :cond_187

    .line 55
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    move/from16 v27, v2

    move/from16 v28, v12

    :cond_185
    const/4 v2, 0x3

    goto :goto_1a8

    :cond_187
    const/16 v14, 0x40

    add-int v26, v5, v5

    const/16 v23, 0x4

    add-int/lit8 v26, v26, 0x4

    move/from16 v27, v2

    move/from16 v28, v12

    const/4 v2, 0x1

    shl-int v12, v2, v26

    .line 56
    invoke-static {v14, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    if-le v5, v2, :cond_19f

    .line 57
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaat;->b()I

    :cond_19f
    const/4 v2, 0x0

    :goto_1a0
    if-ge v2, v12, :cond_185

    .line 58
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaat;->b()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a0

    :goto_1a8
    if-ne v5, v2, :cond_1ac

    const/4 v12, 0x3

    goto :goto_1ad

    :cond_1ac
    const/4 v12, 0x1

    :goto_1ad
    add-int/2addr v8, v12

    move/from16 v2, v27

    move/from16 v12, v28

    goto :goto_175

    :cond_1b3
    move/from16 v27, v2

    move/from16 v28, v12

    const/4 v2, 0x3

    add-int/lit8 v5, v5, 0x1

    move/from16 v2, v27

    goto :goto_171

    :cond_1bd
    move/from16 v27, v2

    move/from16 v28, v12

    const/4 v2, 0x3

    const/4 v5, 0x2

    .line 59
    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/ads/zzaat;->e(I)V

    .line 60
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaat;->f()Z

    move-result v5

    if-eqz v5, :cond_1da

    const/16 v5, 0x8

    .line 61
    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/ads/zzaat;->e(I)V

    .line 62
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    .line 63
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    .line 64
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaat;->d()V

    .line 65
    :cond_1da
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    move-result v5

    const/4 v8, 0x0

    new-array v12, v8, [I

    new-array v14, v8, [I

    move/from16 v26, v13

    const/4 v2, 0x0

    const/4 v8, -0x1

    const/4 v13, -0x1

    :goto_1e8
    if-ge v2, v5, :cond_308

    if-eqz v2, :cond_2bc

    .line 66
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaat;->f()Z

    move-result v29

    if-eqz v29, :cond_2bc

    move/from16 v29, v5

    add-int v5, v8, v13

    .line 67
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaat;->f()Z

    move-result v30

    .line 68
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    move-result v32

    const/16 v18, 0x1

    add-int/lit8 v32, v32, 0x1

    add-int v30, v30, v30

    rsub-int/lit8 v30, v30, 0x1

    move/from16 v33, v1

    add-int/lit8 v1, v5, 0x1

    move-object/from16 v34, v4

    .line 69
    new-array v4, v1, [Z

    move/from16 v35, v7

    const/4 v7, 0x0

    :goto_211
    if-gt v7, v5, :cond_227

    .line 70
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaat;->f()Z

    move-result v36

    if-nez v36, :cond_220

    .line 71
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaat;->f()Z

    move-result v36

    aput-boolean v36, v4, v7

    goto :goto_224

    :cond_220
    const/16 v18, 0x1

    .line 72
    aput-boolean v18, v4, v7

    :goto_224
    add-int/lit8 v7, v7, 0x1

    goto :goto_211

    :cond_227
    add-int/lit8 v7, v13, -0x1

    move/from16 v36, v7

    .line 73
    new-array v7, v1, [I

    .line 74
    new-array v1, v1, [I

    const/16 v37, 0x0

    :goto_231
    mul-int v38, v30, v32

    if-ltz v36, :cond_24a

    .line 75
    aget v39, v14, v36

    add-int v39, v39, v38

    if-gez v39, :cond_247

    add-int v38, v8, v36

    .line 76
    aget-boolean v38, v4, v38

    if-eqz v38, :cond_247

    add-int/lit8 v38, v37, 0x1

    .line 77
    aput v39, v7, v37

    move/from16 v37, v38

    :cond_247
    add-int/lit8 v36, v36, -0x1

    goto :goto_231

    :cond_24a
    if-gez v38, :cond_256

    .line 78
    aget-boolean v30, v4, v5

    if-eqz v30, :cond_256

    add-int/lit8 v30, v37, 0x1

    .line 79
    aput v38, v7, v37

    move/from16 v37, v30

    :cond_256
    move/from16 v30, v6

    move/from16 v6, v37

    const/4 v0, 0x0

    :goto_25b
    if-ge v0, v8, :cond_270

    .line 80
    aget v32, v12, v0

    add-int v32, v32, v38

    if-gez v32, :cond_26d

    .line 81
    aget-boolean v36, v4, v0

    if-eqz v36, :cond_26d

    add-int/lit8 v36, v6, 0x1

    .line 82
    aput v32, v7, v6

    move/from16 v6, v36

    :cond_26d
    add-int/lit8 v0, v0, 0x1

    goto :goto_25b

    .line 83
    :cond_270
    invoke-static {v7, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    add-int/lit8 v7, v8, -0x1

    const/16 v32, 0x0

    :goto_278
    if-ltz v7, :cond_28d

    .line 84
    aget v36, v12, v7

    add-int v36, v36, v38

    if-lez v36, :cond_28a

    .line 85
    aget-boolean v37, v4, v7

    if-eqz v37, :cond_28a

    add-int/lit8 v37, v32, 0x1

    .line 86
    aput v36, v1, v32

    move/from16 v32, v37

    :cond_28a
    add-int/lit8 v7, v7, -0x1

    goto :goto_278

    :cond_28d
    if-lez v38, :cond_299

    .line 87
    aget-boolean v5, v4, v5

    if-eqz v5, :cond_299

    add-int/lit8 v5, v32, 0x1

    .line 88
    aput v38, v1, v32

    move/from16 v32, v5

    :cond_299
    move/from16 v5, v32

    const/4 v7, 0x0

    :goto_29c
    if-ge v7, v13, :cond_2b3

    .line 89
    aget v12, v14, v7

    add-int v12, v12, v38

    if-lez v12, :cond_2b0

    add-int v32, v8, v7

    .line 90
    aget-boolean v32, v4, v32

    if-eqz v32, :cond_2b0

    add-int/lit8 v32, v5, 0x1

    .line 91
    aput v12, v1, v5

    move/from16 v5, v32

    :cond_2b0
    add-int/lit8 v7, v7, 0x1

    goto :goto_29c

    .line 92
    :cond_2b3
    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    move-object v12, v0

    move-object v14, v1

    move v13, v5

    move v8, v6

    goto :goto_2f8

    :cond_2bc
    move/from16 v33, v1

    move-object/from16 v34, v4

    move/from16 v29, v5

    move/from16 v30, v6

    move/from16 v35, v7

    .line 93
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    move-result v0

    .line 94
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    move-result v1

    .line 95
    new-array v4, v0, [I

    const/4 v5, 0x0

    :goto_2d1
    if-ge v5, v0, :cond_2e1

    .line 96
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    move-result v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    aput v6, v4, v5

    .line 97
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaat;->d()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2d1

    .line 98
    :cond_2e1
    new-array v5, v1, [I

    const/4 v6, 0x0

    :goto_2e4
    if-ge v6, v1, :cond_2f4

    .line 99
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    move-result v7

    const/4 v8, 0x1

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 100
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaat;->d()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2e4

    :cond_2f4
    move v8, v0

    move v13, v1

    move-object v12, v4

    move-object v14, v5

    :goto_2f8
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    move/from16 v5, v29

    move/from16 v6, v30

    move/from16 v1, v33

    move-object/from16 v4, v34

    move/from16 v7, v35

    goto/16 :goto_1e8

    :cond_308
    move/from16 v33, v1

    move-object/from16 v34, v4

    move/from16 v30, v6

    move/from16 v35, v7

    .line 101
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaat;->f()Z

    move-result v0

    if-eqz v0, :cond_326

    const/4 v0, 0x0

    .line 102
    :goto_317
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    move-result v1

    if-ge v0, v1, :cond_326

    const/4 v1, 0x5

    add-int/lit8 v14, v3, 0x5

    .line 103
    invoke-virtual {v9, v14}, Lcom/google/android/gms/internal/ads/zzaat;->e(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_317

    :cond_326
    const/4 v0, 0x2

    .line 104
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/zzaat;->e(I)V

    .line 105
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaat;->f()Z

    move-result v0

    if-eqz v0, :cond_3a9

    .line 106
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaat;->f()Z

    move-result v0

    if-eqz v0, :cond_371

    const/16 v0, 0x8

    .line 107
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/zzaat;->a(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_352

    const/16 v0, 0x10

    .line 108
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/zzaat;->a(I)I

    move-result v1

    .line 109
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/zzaat;->a(I)I

    move-result v0

    if-eqz v1, :cond_371

    if-eqz v0, :cond_371

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    goto :goto_373

    :cond_352
    const/16 v1, 0x11

    if-ge v0, v1, :cond_35b

    .line 110
    sget-object v1, Lcom/google/android/gms/internal/ads/zzaar;->b:[F

    .line 111
    aget v1, v1, v0

    goto :goto_373

    :cond_35b
    new-instance v1, Ljava/lang/StringBuilder;

    .line 112
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NalUnitUtil"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_371
    const/high16 v1, 0x3f800000    # 1.0f

    .line 113
    :goto_373
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaat;->f()Z

    move-result v0

    if-eqz v0, :cond_37c

    .line 114
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaat;->d()V

    .line 115
    :cond_37c
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaat;->f()Z

    move-result v0

    if-eqz v0, :cond_391

    const/4 v0, 0x4

    .line 116
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/zzaat;->e(I)V

    .line 117
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaat;->f()Z

    move-result v0

    if-eqz v0, :cond_391

    const/16 v0, 0x18

    .line 118
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/zzaat;->e(I)V

    .line 119
    :cond_391
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaat;->f()Z

    move-result v0

    if-eqz v0, :cond_39d

    .line 120
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    .line 121
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    .line 122
    :cond_39d
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaat;->d()V

    .line 123
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaat;->f()Z

    move-result v0

    if-eqz v0, :cond_3ab

    add-int v25, v25, v25

    goto :goto_3ab

    :cond_3a9
    const/high16 v1, 0x3f800000    # 1.0f

    :cond_3ab
    :goto_3ab
    move-object/from16 v23, v15

    .line 124
    invoke-static/range {v19 .. v24}, Lcom/google/android/gms/internal/ads/zzdn;->b(IZII[II)Ljava/lang/String;

    move-result-object v17

    move/from16 v16, v1

    move/from16 v15, v25

    move/from16 v14, v27

    const/4 v9, 0x0

    goto :goto_3c7

    :cond_3b9
    move/from16 v33, v1

    move/from16 v31, v3

    move-object/from16 v34, v4

    move/from16 v30, v6

    move/from16 v35, v7

    move/from16 v28, v12

    move/from16 v26, v13

    :goto_3c7
    add-int/2addr v11, v10

    move-object/from16 v0, p0

    .line 125
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    const/4 v1, 0x1

    add-int/2addr v9, v1

    move/from16 v13, v26

    move/from16 v12, v28

    move/from16 v6, v30

    move/from16 v3, v31

    move/from16 v1, v33

    move-object/from16 v4, v34

    move/from16 v7, v35

    const/4 v2, 0x3

    const/4 v5, 0x0

    const/4 v8, 0x1

    goto/16 :goto_50

    :cond_3e2
    move/from16 v33, v1

    move/from16 v31, v3

    move-object/from16 v34, v4

    move/from16 v30, v6

    move/from16 v35, v7

    add-int/lit8 v6, v30, 0x1

    const/4 v2, 0x3

    const/4 v5, 0x0

    const/4 v8, 0x1

    goto/16 :goto_43

    :cond_3f3
    move/from16 v33, v1

    move-object/from16 v34, v4

    move/from16 v35, v7

    if-nez v35, :cond_400

    .line 126
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_404

    :cond_400
    invoke-static/range {v34 .. v34}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_404
    move-object v12, v0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaak;

    const/4 v1, 0x1

    add-int/lit8 v13, v33, 0x1

    move-object v11, v0

    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/zzaak;-><init>(Ljava/util/List;IIIFLjava/lang/String;)V
    :try_end_40e
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_40e} :catch_40f

    return-object v0

    :catch_40f
    move-exception v0

    const-string v1, "Error parsing HEVC config"

    .line 127
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object v0

    goto :goto_418

    :goto_417
    throw v0

    :goto_418
    goto :goto_417
.end method
