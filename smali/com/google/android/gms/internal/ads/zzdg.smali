###### Class com.google.android.gms.internal.ads.zzdg (com.google.android.gms.internal.ads.zzdg)
.class final Lcom/google/android/gms/internal/ads/zzdg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:F

.field private final d:F

.field private final e:F

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:[S

.field private j:[S

.field private k:I

.field private l:[S

.field private m:I

.field private n:[S

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I


# direct methods
.method public constructor <init>(IIFFI)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdg;->a:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzdg;->b:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzdg;->c:F

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzdg;->d:F

    int-to-float p3, p1

    int-to-float p4, p5

    div-float/2addr p3, p4

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzdg;->e:F

    div-int/lit16 p3, p1, 0x190

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzdg;->f:I

    div-int/lit8 p1, p1, 0x41

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdg;->g:I

    add-int/2addr p1, p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdg;->h:I

    new-array p3, p1, [S

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdg;->i:[S

    mul-int p1, p1, p2

    .line 2
    new-array p2, p1, [S

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdg;->j:[S

    .line 3
    new-array p2, p1, [S

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdg;->l:[S

    .line 4
    new-array p1, p1, [S

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdg;->n:[S

    return-void
.end method

.method private final g([SIII)I
    .registers 14

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdg;->b:I

    mul-int p2, p2, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0xff

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_a
    if-gt p3, p4, :cond_39

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_e
    if-ge v5, p3, :cond_22

    add-int v7, p2, v5

    aget-short v7, p1, v7

    add-int v8, p2, p3

    add-int/2addr v8, v5

    .line 2
    aget-short v8, p1, v8

    sub-int/2addr v7, v8

    .line 3
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_22
    mul-int v5, v6, v3

    mul-int v7, v0, p3

    if-ge v5, v7, :cond_29

    move v0, v6

    :cond_29
    if-ge v5, v7, :cond_2c

    move v3, p3

    :cond_2c
    mul-int v5, v6, v2

    mul-int v7, v4, p3

    if-le v5, v7, :cond_33

    move v4, v6

    :cond_33
    if-le v5, v7, :cond_36

    move v2, p3

    :cond_36
    add-int/lit8 p3, p3, 0x1

    goto :goto_a

    .line 4
    :cond_39
    div-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdg;->u:I

    .line 5
    div-int/2addr v4, v2

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzdg;->v:I

    return v3
.end method

.method private final h([SII)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdg;->l:[S

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdg;->m:I

    invoke-direct {p0, v0, v1, p3}, Lcom/google/android/gms/internal/ads/zzdg;->l([SII)[S

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdg;->l:[S

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdg;->b:I

    mul-int p2, p2, v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzdg;->m:I

    mul-int v2, v2, v1

    mul-int v1, v1, p3

    .line 2
    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzdg;->m:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdg;->m:I

    return-void
.end method

.method private final i([SII)V
    .registers 10

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdg;->h:I

    div-int/2addr v0, p3

    .line 1
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdg;->b:I

    mul-int p3, p3, v1

    mul-int p2, p2, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v0, :cond_24

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_f
    if-ge v3, p3, :cond_1b

    mul-int v5, v2, p3

    add-int/2addr v5, p2

    add-int/2addr v5, v3

    aget-short v5, p1, v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 2
    :cond_1b
    div-int/2addr v4, p3

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdg;->i:[S

    int-to-short v4, v4

    .line 3
    aput-short v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_24
    return-void
.end method

.method private static j(II[SI[SI[SI)V
    .registers 16

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p1, :cond_28

    mul-int v2, p3, p1

    mul-int v3, p7, p1

    mul-int v4, p5, p1

    add-int/2addr v4, v1

    add-int/2addr v3, v1

    add-int/2addr v2, v1

    const/4 v5, 0x0

    :goto_e
    if-ge v5, p0, :cond_25

    .line 1
    aget-short v6, p4, v4

    sub-int v7, p0, v5

    mul-int v6, v6, v7

    aget-short v7, p6, v3

    mul-int v7, v7, v5

    add-int/2addr v6, v7

    div-int/2addr v6, p0

    int-to-short v6, v6

    aput-short v6, p2, v2

    add-int/2addr v2, p1

    add-int/2addr v4, p1

    add-int/2addr v3, p1

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_28
    return-void
.end method

.method private final k()V
    .registers 21

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzdg;->m:I

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzdg;->c:F

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzdg;->d:F

    div-float/2addr v2, v3

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzdg;->e:F

    mul-float v4, v4, v3

    float-to-double v5, v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-wide v9, 0x3ff0000a7c5ac472L    # 1.00001

    cmpl-double v11, v5, v9

    if-gtz v11, :cond_30

    const-wide v9, 0x3fefffeb074a771dL    # 0.99999

    cmpg-double v11, v5, v9

    if-gez v11, :cond_25

    goto :goto_30

    .line 2
    :cond_25
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzdg;->j:[S

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzdg;->k:I

    .line 3
    invoke-direct {v0, v2, v7, v5}, Lcom/google/android/gms/internal/ads/zzdg;->h([SII)V

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzdg;->k:I

    goto/16 :goto_17e

    .line 4
    :cond_30
    :goto_30
    iget v9, v0, Lcom/google/android/gms/internal/ads/zzdg;->k:I

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzdg;->h:I

    if-ge v9, v10, :cond_38

    goto/16 :goto_17e

    :cond_38
    const/4 v10, 0x0

    .line 5
    :goto_39
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzdg;->r:I

    if-lez v11, :cond_50

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzdg;->h:I

    .line 6
    invoke-static {v12, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzdg;->j:[S

    .line 7
    invoke-direct {v0, v12, v10, v11}, Lcom/google/android/gms/internal/ads/zzdg;->h([SII)V

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzdg;->r:I

    sub-int/2addr v12, v11

    iput v12, v0, Lcom/google/android/gms/internal/ads/zzdg;->r:I

    add-int/2addr v10, v11

    goto/16 :goto_167

    .line 8
    :cond_50
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzdg;->j:[S

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzdg;->a:I

    const/16 v13, 0xfa0

    if-le v12, v13, :cond_5b

    div-int/lit16 v12, v12, 0xfa0

    goto :goto_5c

    :cond_5b
    const/4 v12, 0x1

    :goto_5c
    iget v13, v0, Lcom/google/android/gms/internal/ads/zzdg;->b:I

    if-ne v13, v8, :cond_6b

    if-ne v12, v8, :cond_6b

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzdg;->f:I

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzdg;->g:I

    .line 9
    invoke-direct {v0, v11, v10, v12, v13}, Lcom/google/android/gms/internal/ads/zzdg;->g([SIII)I

    move-result v11

    goto :goto_a1

    .line 10
    :cond_6b
    invoke-direct {v0, v11, v10, v12}, Lcom/google/android/gms/internal/ads/zzdg;->i([SII)V

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzdg;->i:[S

    iget v14, v0, Lcom/google/android/gms/internal/ads/zzdg;->f:I

    div-int/2addr v14, v12

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzdg;->g:I

    div-int/2addr v15, v12

    .line 11
    invoke-direct {v0, v13, v7, v14, v15}, Lcom/google/android/gms/internal/ads/zzdg;->g([SIII)I

    move-result v13

    if-eq v12, v8, :cond_a0

    mul-int v13, v13, v12

    mul-int/lit8 v12, v12, 0x4

    iget v14, v0, Lcom/google/android/gms/internal/ads/zzdg;->f:I

    sub-int v15, v13, v12

    if-lt v15, v14, :cond_87

    move v14, v15

    :cond_87
    add-int/2addr v13, v12

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzdg;->g:I

    if-le v13, v12, :cond_8d

    move v13, v12

    :cond_8d
    iget v12, v0, Lcom/google/android/gms/internal/ads/zzdg;->b:I

    if-ne v12, v8, :cond_96

    .line 12
    invoke-direct {v0, v11, v10, v14, v13}, Lcom/google/android/gms/internal/ads/zzdg;->g([SIII)I

    move-result v11

    goto :goto_a1

    .line 13
    :cond_96
    invoke-direct {v0, v11, v10, v8}, Lcom/google/android/gms/internal/ads/zzdg;->i([SII)V

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzdg;->i:[S

    .line 14
    invoke-direct {v0, v11, v7, v14, v13}, Lcom/google/android/gms/internal/ads/zzdg;->g([SIII)I

    move-result v11

    goto :goto_a1

    :cond_a0
    move v11, v13

    .line 15
    :goto_a1
    iget v12, v0, Lcom/google/android/gms/internal/ads/zzdg;->u:I

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzdg;->v:I

    if-eqz v12, :cond_bc

    iget v14, v0, Lcom/google/android/gms/internal/ads/zzdg;->s:I

    if-nez v14, :cond_ac

    goto :goto_bc

    :cond_ac
    mul-int/lit8 v15, v12, 0x3

    if-le v13, v15, :cond_b1

    goto :goto_bc

    :cond_b1
    add-int v13, v12, v12

    .line 16
    iget v15, v0, Lcom/google/android/gms/internal/ads/zzdg;->t:I

    mul-int/lit8 v15, v15, 0x3

    if-gt v13, v15, :cond_ba

    goto :goto_bc

    :cond_ba
    move v15, v14

    goto :goto_bd

    :cond_bc
    :goto_bc
    move v15, v11

    .line 17
    :goto_bd
    iput v12, v0, Lcom/google/android/gms/internal/ads/zzdg;->t:I

    iput v11, v0, Lcom/google/android/gms/internal/ads/zzdg;->s:I

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const/high16 v13, -0x40800000    # -1.0f

    cmpl-double v14, v5, v11

    if-lez v14, :cond_111

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzdg;->j:[S

    const/high16 v11, 0x40000000    # 2.0f

    cmpl-float v12, v2, v11

    if-ltz v12, :cond_d7

    int-to-float v11, v15

    add-float/2addr v13, v2

    div-float/2addr v11, v13

    float-to-int v11, v11

    move v13, v11

    goto :goto_e1

    :cond_d7
    int-to-float v12, v15

    sub-float/2addr v11, v2

    add-float/2addr v13, v2

    mul-float v12, v12, v11

    div-float/2addr v12, v13

    float-to-int v11, v12

    .line 18
    iput v11, v0, Lcom/google/android/gms/internal/ads/zzdg;->r:I

    move v13, v15

    .line 19
    :goto_e1
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzdg;->l:[S

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzdg;->m:I

    .line 20
    invoke-direct {v0, v11, v12, v13}, Lcom/google/android/gms/internal/ads/zzdg;->l([SII)[S

    move-result-object v12

    iput-object v12, v0, Lcom/google/android/gms/internal/ads/zzdg;->l:[S

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzdg;->b:I

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzdg;->m:I

    add-int v18, v10, v15

    move/from16 v16, v11

    move v11, v13

    move-object/from16 v17, v12

    move/from16 v12, v16

    move/from16 v19, v13

    move-object/from16 v13, v17

    move-object/from16 v17, v14

    move v14, v8

    move v8, v15

    move-object/from16 v15, v17

    move/from16 v16, v10

    .line 21
    invoke-static/range {v11 .. v18}, Lcom/google/android/gms/internal/ads/zzdg;->j(II[SI[SI[SI)V

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzdg;->m:I

    add-int v11, v11, v19

    iput v11, v0, Lcom/google/android/gms/internal/ads/zzdg;->m:I

    add-int v15, v8, v19

    add-int/2addr v10, v15

    goto :goto_167

    :cond_111
    move v8, v15

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzdg;->j:[S

    const/high16 v11, 0x3f000000    # 0.5f

    cmpg-float v11, v2, v11

    if-gez v11, :cond_124

    int-to-float v11, v8

    mul-float v11, v11, v2

    sub-float v12, v3, v2

    div-float/2addr v11, v12

    float-to-int v11, v11

    move/from16 v19, v11

    goto :goto_132

    :cond_124
    int-to-float v11, v8

    add-float v12, v2, v2

    sub-float v14, v3, v2

    add-float/2addr v12, v13

    mul-float v11, v11, v12

    div-float/2addr v11, v14

    float-to-int v11, v11

    .line 22
    iput v11, v0, Lcom/google/android/gms/internal/ads/zzdg;->r:I

    move/from16 v19, v8

    .line 23
    :goto_132
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzdg;->l:[S

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzdg;->m:I

    add-int v14, v8, v19

    .line 24
    invoke-direct {v0, v11, v12, v14}, Lcom/google/android/gms/internal/ads/zzdg;->l([SII)[S

    move-result-object v11

    iput-object v11, v0, Lcom/google/android/gms/internal/ads/zzdg;->l:[S

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzdg;->b:I

    mul-int v13, v10, v12

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzdg;->m:I

    mul-int v3, v3, v12

    mul-int v12, v12, v8

    .line 25
    invoke-static {v15, v13, v11, v3, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzdg;->b:I

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzdg;->l:[S

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzdg;->m:I

    add-int/2addr v3, v8

    add-int v16, v10, v8

    move/from16 v11, v19

    move v8, v14

    move v14, v3

    move-object v3, v15

    move-object/from16 v17, v3

    move/from16 v18, v10

    .line 26
    invoke-static/range {v11 .. v18}, Lcom/google/android/gms/internal/ads/zzdg;->j(II[SI[SI[SI)V

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzdg;->m:I

    add-int/2addr v3, v8

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzdg;->m:I

    add-int v10, v10, v19

    .line 27
    :goto_167
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzdg;->h:I

    add-int/2addr v3, v10

    if-le v3, v9, :cond_244

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzdg;->k:I

    sub-int/2addr v2, v10

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzdg;->j:[S

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzdg;->b:I

    mul-int v10, v10, v5

    mul-int v5, v5, v2

    .line 28
    invoke-static {v3, v10, v3, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzdg;->k:I

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_17e
    cmpl-float v2, v4, v3

    if-eqz v2, :cond_243

    .line 29
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzdg;->m:I

    if-ne v2, v1, :cond_188

    goto/16 :goto_243

    :cond_188
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzdg;->a:I

    int-to-float v3, v2

    div-float/2addr v3, v4

    float-to-int v3, v3

    :goto_18d
    const/16 v4, 0x4000

    if-gt v3, v4, :cond_23c

    if-le v2, v4, :cond_195

    goto/16 :goto_23c

    :cond_195
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzdg;->m:I

    sub-int/2addr v4, v1

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzdg;->n:[S

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzdg;->o:I

    invoke-direct {v0, v5, v6, v4}, Lcom/google/android/gms/internal/ads/zzdg;->l([SII)[S

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzdg;->n:[S

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzdg;->l:[S

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzdg;->b:I

    mul-int v9, v1, v8

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzdg;->o:I

    mul-int v10, v10, v8

    mul-int v8, v8, v4

    .line 30
    invoke-static {v6, v9, v5, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzdg;->m:I

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzdg;->o:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzdg;->o:I

    const/4 v1, 0x0

    :goto_1b9
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzdg;->o:I

    add-int/lit8 v5, v4, -0x1

    if-ge v1, v5, :cond_228

    :goto_1bf
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzdg;->p:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    mul-int v6, v4, v3

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzdg;->q:I

    mul-int v9, v8, v2

    if-le v6, v9, :cond_214

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdg;->l:[S

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzdg;->m:I

    .line 31
    invoke-direct {v0, v4, v6, v5}, Lcom/google/android/gms/internal/ads/zzdg;->l([SII)[S

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzdg;->l:[S

    const/4 v4, 0x0

    :goto_1d6
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzdg;->b:I

    if-ge v4, v5, :cond_208

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzdg;->l:[S

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzdg;->m:I

    mul-int v8, v8, v5

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzdg;->n:[S

    mul-int v10, v1, v5

    add-int/2addr v10, v4

    .line 32
    aget-short v11, v9, v10

    add-int/2addr v10, v5

    .line 33
    aget-short v5, v9, v10

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzdg;->q:I

    mul-int v9, v9, v2

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzdg;->p:I

    mul-int v12, v10, v3

    const/4 v13, 0x1

    add-int/2addr v10, v13

    mul-int v10, v10, v3

    sub-int v9, v10, v9

    mul-int v11, v11, v9

    sub-int/2addr v10, v12

    sub-int v9, v10, v9

    mul-int v9, v9, v5

    add-int/2addr v11, v9

    .line 34
    div-int/2addr v11, v10

    int-to-short v5, v11

    add-int/2addr v8, v4

    .line 35
    aput-short v5, v6, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d6

    :cond_208
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzdg;->q:I

    const/4 v11, 0x1

    add-int/2addr v4, v11

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzdg;->q:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzdg;->m:I

    add-int/2addr v4, v11

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzdg;->m:I

    goto :goto_1bf

    :cond_214
    const/4 v11, 0x1

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzdg;->p:I

    if-ne v4, v2, :cond_225

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzdg;->p:I

    if-ne v8, v3, :cond_21f

    const/4 v5, 0x1

    goto :goto_220

    :cond_21f
    const/4 v5, 0x0

    .line 36
    :goto_220
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzdl;->f(Z)V

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzdg;->q:I

    :cond_225
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b9

    :cond_228
    if-eqz v5, :cond_243

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdg;->n:[S

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzdg;->b:I

    mul-int v3, v5, v2

    sub-int/2addr v4, v5

    mul-int v4, v4, v2

    .line 37
    invoke-static {v1, v3, v1, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzdg;->o:I

    sub-int/2addr v1, v5

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzdg;->o:I

    return-void

    :cond_23c
    :goto_23c
    const/4 v11, 0x1

    .line 38
    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v2, v2, 0x2

    goto/16 :goto_18d

    :cond_243
    :goto_243
    return-void

    :cond_244
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    goto/16 :goto_39
.end method

.method private final l([SII)[S
    .registers 6

    .line 1
    array-length v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdg;->b:I

    div-int/2addr v0, v1

    add-int/2addr p2, p3

    if-gt p2, v0, :cond_8

    return-object p1

    :cond_8
    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p3

    mul-int v0, v0, v1

    .line 2
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdg;->m:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdg;->b:I

    mul-int v0, v0, v1

    add-int/2addr v0, v0

    return v0
.end method

.method public final b()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdg;->k:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdg;->b:I

    mul-int v0, v0, v1

    add-int/2addr v0, v0

    return v0
.end method

.method public final c()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdg;->k:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdg;->m:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdg;->o:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdg;->p:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdg;->q:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdg;->r:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdg;->s:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdg;->t:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdg;->u:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdg;->v:I

    return-void
.end method

.method public final d(Ljava/nio/ShortBuffer;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdg;->b:I

    div-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdg;->m:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdg;->l:[S

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzdg;->b:I

    mul-int v2, v2, v0

    const/4 v3, 0x0

    .line 2
    invoke-virtual {p1, v1, v3, v2}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzdg;->m:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdg;->m:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdg;->l:[S

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzdg;->b:I

    mul-int v0, v0, v2

    mul-int p1, p1, v2

    .line 3
    invoke-static {v1, v0, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final e()V
    .registers 8

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdg;->k:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdg;->c:F

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzdg;->d:F

    div-float/2addr v1, v2

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzdg;->e:F

    mul-float v3, v3, v2

    int-to-float v2, v0

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzdg;->m:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzdg;->o:I

    int-to-float v5, v5

    div-float/2addr v2, v1

    add-float/2addr v2, v5

    div-float/2addr v2, v3

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v2, v1

    float-to-int v1, v2

    add-int/2addr v4, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdg;->j:[S

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzdg;->h:I

    add-int/2addr v2, v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzdg;->l([SII)[S

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdg;->j:[S

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_27
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzdg;->h:I

    add-int/2addr v3, v3

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzdg;->b:I

    mul-int v6, v3, v5

    if-ge v2, v6, :cond_3a

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdg;->j:[S

    mul-int v5, v5, v0

    add-int/2addr v5, v2

    .line 2
    aput-short v1, v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_3a
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdg;->k:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdg;->k:I

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdg;->k()V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdg;->m:I

    if-le v0, v4, :cond_48

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzdg;->m:I

    :cond_48
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzdg;->k:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzdg;->r:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzdg;->o:I

    return-void
.end method

.method public final f(Ljava/nio/ShortBuffer;)V
    .registers 7

    .line 1
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdg;->b:I

    div-int/2addr v0, v1

    mul-int v1, v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdg;->j:[S

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzdg;->k:I

    .line 2
    invoke-direct {p0, v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzdg;->l([SII)[S

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzdg;->j:[S

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzdg;->k:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzdg;->b:I

    mul-int v3, v3, v4

    add-int/2addr v1, v1

    div-int/lit8 v1, v1, 0x2

    .line 3
    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzdg;->k:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdg;->k:I

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdg;->k()V

    return-void
.end method
