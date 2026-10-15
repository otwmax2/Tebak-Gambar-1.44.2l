###### Class t.c (t.c)
.class public Lt/c;
.super Lt/p;
.source "ChainRun.java"


# instance fields
.field k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lt/p;",
            ">;"
        }
    .end annotation
.end field

.field private l:I


# direct methods
.method public constructor <init>(Ls/e;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lt/p;-><init>(Ls/e;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lt/c;->k:Ljava/util/ArrayList;

    .line 3
    iput p2, p0, Lt/p;->f:I

    .line 4
    invoke-direct {p0}, Lt/c;->q()V

    return-void
.end method

.method private q()V
    .registers 6

    .line 1
    iget-object v0, p0, Lt/p;->b:Ls/e;

    .line 2
    iget v1, p0, Lt/p;->f:I

    invoke-virtual {v0, v1}, Ls/e;->J(I)Ls/e;

    move-result-object v1

    :goto_8
    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    if-eqz v0, :cond_14

    .line 3
    iget v1, p0, Lt/p;->f:I

    invoke-virtual {v0, v1}, Ls/e;->J(I)Ls/e;

    move-result-object v1

    goto :goto_8

    .line 4
    :cond_14
    iput-object v1, p0, Lt/p;->b:Ls/e;

    .line 5
    iget-object v0, p0, Lt/c;->k:Ljava/util/ArrayList;

    iget v2, p0, Lt/p;->f:I

    invoke-virtual {v1, v2}, Ls/e;->L(I)Lt/p;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget v0, p0, Lt/p;->f:I

    invoke-virtual {v1, v0}, Ls/e;->H(I)Ls/e;

    move-result-object v0

    :goto_27
    if-eqz v0, :cond_3b

    .line 7
    iget-object v1, p0, Lt/c;->k:Ljava/util/ArrayList;

    iget v2, p0, Lt/p;->f:I

    invoke-virtual {v0, v2}, Ls/e;->L(I)Lt/p;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget v1, p0, Lt/p;->f:I

    invoke-virtual {v0, v1}, Ls/e;->H(I)Ls/e;

    move-result-object v0

    goto :goto_27

    .line 9
    :cond_3b
    iget-object v0, p0, Lt/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_41
    :goto_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt/p;

    .line 10
    iget v3, p0, Lt/p;->f:I

    if-nez v3, :cond_57

    .line 11
    iget-object v1, v1, Lt/p;->b:Ls/e;

    iput-object p0, v1, Ls/e;->c:Lt/c;

    goto :goto_41

    :cond_57
    if-ne v3, v2, :cond_41

    .line 12
    iget-object v1, v1, Lt/p;->b:Ls/e;

    iput-object p0, v1, Ls/e;->d:Lt/c;

    goto :goto_41

    .line 13
    :cond_5e
    iget v0, p0, Lt/p;->f:I

    if-nez v0, :cond_72

    iget-object v0, p0, Lt/p;->b:Ls/e;

    invoke-virtual {v0}, Ls/e;->I()Ls/e;

    move-result-object v0

    check-cast v0, Ls/f;

    invoke-virtual {v0}, Ls/f;->L1()Z

    move-result v0

    if-eqz v0, :cond_72

    const/4 v0, 0x1

    goto :goto_73

    :cond_72
    const/4 v0, 0x0

    :goto_73
    if-eqz v0, :cond_8e

    .line 14
    iget-object v0, p0, Lt/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_8e

    .line 15
    iget-object v0, p0, Lt/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/p;

    iget-object v0, v0, Lt/p;->b:Ls/e;

    iput-object v0, p0, Lt/p;->b:Ls/e;

    .line 16
    :cond_8e
    iget v0, p0, Lt/p;->f:I

    if-nez v0, :cond_99

    iget-object v0, p0, Lt/p;->b:Ls/e;

    invoke-virtual {v0}, Ls/e;->x()I

    move-result v0

    goto :goto_9f

    :cond_99
    iget-object v0, p0, Lt/p;->b:Ls/e;

    invoke-virtual {v0}, Ls/e;->Q()I

    move-result v0

    :goto_9f
    iput v0, p0, Lt/c;->l:I

    return-void
.end method

.method private r()Ls/e;
    .registers 5

    const/4 v0, 0x0

    .line 1
    :goto_1
    iget-object v1, p0, Lt/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 2
    iget-object v1, p0, Lt/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt/p;

    .line 3
    iget-object v2, v1, Lt/p;->b:Ls/e;

    invoke-virtual {v2}, Ls/e;->T()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1e

    .line 4
    iget-object v0, v1, Lt/p;->b:Ls/e;

    return-object v0

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_21
    const/4 v0, 0x0

    return-object v0
.end method

.method private s()Ls/e;
    .registers 5

    .line 1
    iget-object v0, p0, Lt/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_22

    .line 2
    iget-object v1, p0, Lt/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt/p;

    .line 3
    iget-object v2, v1, Lt/p;->b:Ls/e;

    invoke-virtual {v2}, Ls/e;->T()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1f

    .line 4
    iget-object v0, v1, Lt/p;->b:Ls/e;

    return-object v0

    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_22
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public a(Lt/d;)V
    .registers 28

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lt/p;->h:Lt/f;

    iget-boolean v1, v1, Lt/f;->j:Z

    if-eqz v1, :cond_429

    iget-object v1, v0, Lt/p;->i:Lt/f;

    iget-boolean v1, v1, Lt/f;->j:Z

    if-nez v1, :cond_10

    goto/16 :goto_429

    .line 2
    :cond_10
    iget-object v1, v0, Lt/p;->b:Ls/e;

    invoke-virtual {v1}, Ls/e;->I()Ls/e;

    move-result-object v1

    .line 3
    instance-of v2, v1, Ls/f;

    if-eqz v2, :cond_21

    .line 4
    check-cast v1, Ls/f;

    invoke-virtual {v1}, Ls/f;->L1()Z

    move-result v1

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    .line 5
    :goto_22
    iget-object v2, v0, Lt/p;->i:Lt/f;

    iget v2, v2, Lt/f;->g:I

    iget-object v4, v0, Lt/p;->h:Lt/f;

    iget v4, v4, Lt/f;->g:I

    sub-int/2addr v2, v4

    .line 6
    iget-object v4, v0, Lt/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_32
    const/4 v6, -0x1

    const/16 v7, 0x8

    if-ge v5, v4, :cond_4a

    .line 7
    iget-object v8, v0, Lt/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lt/p;

    .line 8
    iget-object v8, v8, Lt/p;->b:Ls/e;

    invoke-virtual {v8}, Ls/e;->T()I

    move-result v8

    if-ne v8, v7, :cond_4b

    add-int/lit8 v5, v5, 0x1

    goto :goto_32

    :cond_4a
    const/4 v5, -0x1

    :cond_4b
    add-int/lit8 v8, v4, -0x1

    move v9, v8

    :goto_4e
    if-ltz v9, :cond_64

    .line 9
    iget-object v10, v0, Lt/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lt/p;

    .line 10
    iget-object v10, v10, Lt/p;->b:Ls/e;

    invoke-virtual {v10}, Ls/e;->T()I

    move-result v10

    if-ne v10, v7, :cond_63

    add-int/lit8 v9, v9, -0x1

    goto :goto_4e

    :cond_63
    move v6, v9

    :cond_64
    const/4 v9, 0x0

    :goto_65
    const/4 v11, 0x2

    if-ge v9, v11, :cond_109

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_6f
    if-ge v13, v4, :cond_fb

    .line 11
    iget-object v3, v0, Lt/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt/p;

    .line 12
    iget-object v11, v3, Lt/p;->b:Ls/e;

    invoke-virtual {v11}, Ls/e;->T()I

    move-result v11

    if-ne v11, v7, :cond_83

    goto/16 :goto_f4

    :cond_83
    add-int/lit8 v16, v16, 0x1

    if-lez v13, :cond_8e

    if-lt v13, v5, :cond_8e

    .line 13
    iget-object v11, v3, Lt/p;->h:Lt/f;

    iget v11, v11, Lt/f;->f:I

    add-int/2addr v14, v11

    .line 14
    :cond_8e
    iget-object v11, v3, Lt/p;->e:Lt/g;

    iget v7, v11, Lt/f;->g:I

    .line 15
    iget-object v10, v3, Lt/p;->d:Ls/e$b;

    sget-object v12, Ls/e$b;->q:Ls/e$b;

    if-eq v10, v12, :cond_9a

    const/4 v10, 0x1

    goto :goto_9b

    :cond_9a
    const/4 v10, 0x0

    :goto_9b
    if-eqz v10, :cond_bd

    .line 16
    iget v11, v0, Lt/p;->f:I

    if-nez v11, :cond_ac

    iget-object v12, v3, Lt/p;->b:Ls/e;

    iget-object v12, v12, Ls/e;->e:Lt/l;

    iget-object v12, v12, Lt/p;->e:Lt/g;

    iget-boolean v12, v12, Lt/f;->j:Z

    if-nez v12, :cond_ac

    return-void

    :cond_ac
    const/4 v12, 0x1

    if-ne v11, v12, :cond_ba

    .line 17
    iget-object v11, v3, Lt/p;->b:Ls/e;

    iget-object v11, v11, Ls/e;->f:Lt/n;

    iget-object v11, v11, Lt/p;->e:Lt/g;

    iget-boolean v11, v11, Lt/f;->j:Z

    if-nez v11, :cond_ba

    return-void

    :cond_ba
    move/from16 v19, v7

    goto :goto_d3

    :cond_bd
    move/from16 v19, v7

    const/4 v12, 0x1

    .line 18
    iget v7, v3, Lt/p;->a:I

    if-ne v7, v12, :cond_cb

    if-nez v9, :cond_cb

    .line 19
    iget v7, v11, Lt/g;->m:I

    add-int/lit8 v15, v15, 0x1

    goto :goto_d1

    .line 20
    :cond_cb
    iget-boolean v7, v11, Lt/f;->j:Z

    if-eqz v7, :cond_d3

    move/from16 v7, v19

    :goto_d1
    const/4 v10, 0x1

    goto :goto_d5

    :cond_d3
    :goto_d3
    move/from16 v7, v19

    :goto_d5
    if-nez v10, :cond_e9

    add-int/lit8 v15, v15, 0x1

    .line 21
    iget-object v7, v3, Lt/p;->b:Ls/e;

    iget-object v7, v7, Ls/e;->C0:[F

    iget v10, v0, Lt/p;->f:I

    aget v7, v7, v10

    const/4 v10, 0x0

    cmpl-float v11, v7, v10

    if-ltz v11, :cond_ea

    add-float v17, v17, v7

    goto :goto_ea

    :cond_e9
    add-int/2addr v14, v7

    :cond_ea
    :goto_ea
    if-ge v13, v8, :cond_f4

    if-ge v13, v6, :cond_f4

    .line 22
    iget-object v3, v3, Lt/p;->i:Lt/f;

    iget v3, v3, Lt/f;->f:I

    neg-int v3, v3

    add-int/2addr v14, v3

    :cond_f4
    :goto_f4
    add-int/lit8 v13, v13, 0x1

    const/16 v7, 0x8

    const/4 v11, 0x2

    goto/16 :goto_6f

    :cond_fb
    if-lt v14, v2, :cond_106

    if-nez v15, :cond_100

    goto :goto_106

    :cond_100
    add-int/lit8 v9, v9, 0x1

    const/16 v7, 0x8

    goto/16 :goto_65

    :cond_106
    :goto_106
    move/from16 v3, v16

    goto :goto_10e

    :cond_109
    const/4 v3, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    .line 23
    :goto_10e
    iget-object v7, v0, Lt/p;->h:Lt/f;

    iget v7, v7, Lt/f;->g:I

    if-eqz v1, :cond_118

    .line 24
    iget-object v7, v0, Lt/p;->i:Lt/f;

    iget v7, v7, Lt/f;->g:I

    :cond_118
    const/high16 v9, 0x3f000000    # 0.5f

    if-le v14, v2, :cond_12f

    const/high16 v10, 0x40000000    # 2.0f

    if-eqz v1, :cond_128

    sub-int v11, v14, v2

    int-to-float v11, v11

    div-float/2addr v11, v10

    add-float/2addr v11, v9

    float-to-int v10, v11

    add-int/2addr v7, v10

    goto :goto_12f

    :cond_128
    sub-int v11, v14, v2

    int-to-float v11, v11

    div-float/2addr v11, v10

    add-float/2addr v11, v9

    float-to-int v10, v11

    sub-int/2addr v7, v10

    :cond_12f
    :goto_12f
    if-lez v15, :cond_227

    sub-int v10, v2, v14

    int-to-float v10, v10

    int-to-float v11, v15

    div-float v11, v10, v11

    add-float/2addr v11, v9

    float-to-int v11, v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_13b
    if-ge v12, v4, :cond_1d9

    .line 25
    iget-object v9, v0, Lt/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lt/p;

    move/from16 v19, v11

    .line 26
    iget-object v11, v9, Lt/p;->b:Ls/e;

    invoke-virtual {v11}, Ls/e;->T()I

    move-result v11

    move/from16 v20, v14

    const/16 v14, 0x8

    if-ne v11, v14, :cond_155

    goto/16 :goto_1bf

    .line 27
    :cond_155
    iget-object v11, v9, Lt/p;->d:Ls/e$b;

    sget-object v14, Ls/e$b;->q:Ls/e$b;

    if-ne v11, v14, :cond_1bf

    iget-object v11, v9, Lt/p;->e:Lt/g;

    iget-boolean v14, v11, Lt/f;->j:Z

    if-nez v14, :cond_1bf

    const/4 v14, 0x0

    cmpl-float v18, v17, v14

    if-lez v18, :cond_179

    .line 28
    iget-object v14, v9, Lt/p;->b:Ls/e;

    iget-object v14, v14, Ls/e;->C0:[F

    move/from16 v21, v7

    iget v7, v0, Lt/p;->f:I

    aget v7, v14, v7

    mul-float v7, v7, v10

    div-float v7, v7, v17

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v7, v14

    float-to-int v7, v7

    goto :goto_17d

    :cond_179
    move/from16 v21, v7

    move/from16 v7, v19

    .line 29
    :goto_17d
    iget v14, v0, Lt/p;->f:I

    if-nez v14, :cond_18c

    .line 30
    iget-object v14, v9, Lt/p;->b:Ls/e;

    move/from16 v22, v10

    iget v10, v14, Ls/e;->A:I

    .line 31
    iget v14, v14, Ls/e;->z:I

    move/from16 v23, v1

    goto :goto_19b

    :cond_18c
    move/from16 v22, v10

    .line 32
    iget-object v10, v9, Lt/p;->b:Ls/e;

    iget v14, v10, Ls/e;->D:I

    .line 33
    iget v10, v10, Ls/e;->C:I

    move/from16 v23, v1

    move/from16 v25, v14

    move v14, v10

    move/from16 v10, v25

    .line 34
    :goto_19b
    iget v1, v9, Lt/p;->a:I

    move/from16 v24, v3

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1a9

    .line 35
    iget v1, v11, Lt/g;->m:I

    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1aa

    :cond_1a9
    move v1, v7

    .line 36
    :goto_1aa
    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-lez v10, :cond_1b4

    .line 37
    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_1b4
    if-eq v1, v7, :cond_1b9

    add-int/lit8 v13, v13, 0x1

    move v7, v1

    .line 38
    :cond_1b9
    iget-object v1, v9, Lt/p;->e:Lt/g;

    invoke-virtual {v1, v7}, Lt/g;->d(I)V

    goto :goto_1c7

    :cond_1bf
    :goto_1bf
    move/from16 v23, v1

    move/from16 v24, v3

    move/from16 v21, v7

    move/from16 v22, v10

    :goto_1c7
    add-int/lit8 v12, v12, 0x1

    move/from16 v11, v19

    move/from16 v14, v20

    move/from16 v7, v21

    move/from16 v10, v22

    move/from16 v1, v23

    move/from16 v3, v24

    const/high16 v9, 0x3f000000    # 0.5f

    goto/16 :goto_13b

    :cond_1d9
    move/from16 v23, v1

    move/from16 v24, v3

    move/from16 v21, v7

    move/from16 v20, v14

    if-lez v13, :cond_218

    sub-int/2addr v15, v13

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_1e6
    if-ge v1, v4, :cond_216

    .line 39
    iget-object v7, v0, Lt/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lt/p;

    .line 40
    iget-object v9, v7, Lt/p;->b:Ls/e;

    invoke-virtual {v9}, Ls/e;->T()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_1fb

    goto :goto_213

    :cond_1fb
    if-lez v1, :cond_204

    if-lt v1, v5, :cond_204

    .line 41
    iget-object v9, v7, Lt/p;->h:Lt/f;

    iget v9, v9, Lt/f;->f:I

    add-int/2addr v3, v9

    .line 42
    :cond_204
    iget-object v9, v7, Lt/p;->e:Lt/g;

    iget v9, v9, Lt/f;->g:I

    add-int/2addr v3, v9

    if-ge v1, v8, :cond_213

    if-ge v1, v6, :cond_213

    .line 43
    iget-object v7, v7, Lt/p;->i:Lt/f;

    iget v7, v7, Lt/f;->f:I

    neg-int v7, v7

    add-int/2addr v3, v7

    :cond_213
    :goto_213
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e6

    :cond_216
    move v14, v3

    goto :goto_21a

    :cond_218
    move/from16 v14, v20

    .line 44
    :goto_21a
    iget v1, v0, Lt/c;->l:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_225

    if-nez v13, :cond_225

    const/4 v1, 0x0

    .line 45
    iput v1, v0, Lt/c;->l:I

    goto :goto_231

    :cond_225
    const/4 v1, 0x0

    goto :goto_231

    :cond_227
    move/from16 v23, v1

    move/from16 v24, v3

    move/from16 v21, v7

    move/from16 v20, v14

    const/4 v1, 0x0

    const/4 v3, 0x2

    :goto_231
    if-le v14, v2, :cond_235

    .line 46
    iput v3, v0, Lt/c;->l:I

    :cond_235
    if-lez v24, :cond_23d

    if-nez v15, :cond_23d

    if-ne v5, v6, :cond_23d

    .line 47
    iput v3, v0, Lt/c;->l:I

    .line 48
    :cond_23d
    iget v3, v0, Lt/c;->l:I

    const/4 v7, 0x1

    if-ne v3, v7, :cond_2e1

    move/from16 v9, v24

    if-le v9, v7, :cond_24b

    sub-int/2addr v2, v14

    add-int/lit8 v3, v9, -0x1

    .line 49
    div-int/2addr v2, v3

    goto :goto_252

    :cond_24b
    if-ne v9, v7, :cond_251

    sub-int/2addr v2, v14

    const/4 v3, 0x2

    .line 50
    div-int/2addr v2, v3

    goto :goto_252

    :cond_251
    const/4 v2, 0x0

    :goto_252
    if-lez v15, :cond_255

    const/4 v2, 0x0

    :cond_255
    move/from16 v7, v21

    const/4 v3, 0x0

    :goto_258
    if-ge v3, v4, :cond_429

    if-eqz v23, :cond_261

    add-int/lit8 v1, v3, 0x1

    sub-int v1, v4, v1

    goto :goto_262

    :cond_261
    move v1, v3

    .line 51
    :goto_262
    iget-object v9, v0, Lt/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt/p;

    .line 52
    iget-object v9, v1, Lt/p;->b:Ls/e;

    invoke-virtual {v9}, Ls/e;->T()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_27f

    .line 53
    iget-object v9, v1, Lt/p;->h:Lt/f;

    invoke-virtual {v9, v7}, Lt/f;->d(I)V

    .line 54
    iget-object v1, v1, Lt/p;->i:Lt/f;

    invoke-virtual {v1, v7}, Lt/f;->d(I)V

    goto :goto_2dd

    :cond_27f
    if-lez v3, :cond_286

    if-eqz v23, :cond_285

    sub-int/2addr v7, v2

    goto :goto_286

    :cond_285
    add-int/2addr v7, v2

    :cond_286
    :goto_286
    if-lez v3, :cond_297

    if-lt v3, v5, :cond_297

    if-eqz v23, :cond_292

    .line 55
    iget-object v9, v1, Lt/p;->h:Lt/f;

    iget v9, v9, Lt/f;->f:I

    sub-int/2addr v7, v9

    goto :goto_297

    .line 56
    :cond_292
    iget-object v9, v1, Lt/p;->h:Lt/f;

    iget v9, v9, Lt/f;->f:I

    add-int/2addr v7, v9

    :cond_297
    :goto_297
    if-eqz v23, :cond_29f

    .line 57
    iget-object v9, v1, Lt/p;->i:Lt/f;

    invoke-virtual {v9, v7}, Lt/f;->d(I)V

    goto :goto_2a4

    .line 58
    :cond_29f
    iget-object v9, v1, Lt/p;->h:Lt/f;

    invoke-virtual {v9, v7}, Lt/f;->d(I)V

    .line 59
    :goto_2a4
    iget-object v9, v1, Lt/p;->e:Lt/g;

    iget v10, v9, Lt/f;->g:I

    .line 60
    iget-object v11, v1, Lt/p;->d:Ls/e$b;

    sget-object v12, Ls/e$b;->q:Ls/e$b;

    if-ne v11, v12, :cond_2b5

    iget v11, v1, Lt/p;->a:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2b5

    .line 61
    iget v10, v9, Lt/g;->m:I

    :cond_2b5
    if-eqz v23, :cond_2b9

    sub-int/2addr v7, v10

    goto :goto_2ba

    :cond_2b9
    add-int/2addr v7, v10

    :goto_2ba
    if-eqz v23, :cond_2c2

    .line 62
    iget-object v9, v1, Lt/p;->h:Lt/f;

    invoke-virtual {v9, v7}, Lt/f;->d(I)V

    goto :goto_2c7

    .line 63
    :cond_2c2
    iget-object v9, v1, Lt/p;->i:Lt/f;

    invoke-virtual {v9, v7}, Lt/f;->d(I)V

    :goto_2c7
    const/4 v9, 0x1

    .line 64
    iput-boolean v9, v1, Lt/p;->g:Z

    if-ge v3, v8, :cond_2dd

    if-ge v3, v6, :cond_2dd

    if-eqz v23, :cond_2d7

    .line 65
    iget-object v1, v1, Lt/p;->i:Lt/f;

    iget v1, v1, Lt/f;->f:I

    neg-int v1, v1

    sub-int/2addr v7, v1

    goto :goto_2dd

    .line 66
    :cond_2d7
    iget-object v1, v1, Lt/p;->i:Lt/f;

    iget v1, v1, Lt/f;->f:I

    neg-int v1, v1

    add-int/2addr v7, v1

    :cond_2dd
    :goto_2dd
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_258

    :cond_2e1
    move/from16 v9, v24

    if-nez v3, :cond_378

    sub-int/2addr v2, v14

    const/4 v3, 0x1

    add-int/lit8 v7, v9, 0x1

    .line 67
    div-int/2addr v2, v7

    if-lez v15, :cond_2ed

    const/4 v2, 0x0

    :cond_2ed
    move/from16 v7, v21

    const/4 v3, 0x0

    :goto_2f0
    if-ge v3, v4, :cond_429

    if-eqz v23, :cond_2f9

    add-int/lit8 v1, v3, 0x1

    sub-int v1, v4, v1

    goto :goto_2fa

    :cond_2f9
    move v1, v3

    .line 68
    :goto_2fa
    iget-object v9, v0, Lt/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt/p;

    .line 69
    iget-object v9, v1, Lt/p;->b:Ls/e;

    invoke-virtual {v9}, Ls/e;->T()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_317

    .line 70
    iget-object v9, v1, Lt/p;->h:Lt/f;

    invoke-virtual {v9, v7}, Lt/f;->d(I)V

    .line 71
    iget-object v1, v1, Lt/p;->i:Lt/f;

    invoke-virtual {v1, v7}, Lt/f;->d(I)V

    goto :goto_374

    :cond_317
    if-eqz v23, :cond_31b

    sub-int/2addr v7, v2

    goto :goto_31c

    :cond_31b
    add-int/2addr v7, v2

    :goto_31c
    if-lez v3, :cond_32d

    if-lt v3, v5, :cond_32d

    if-eqz v23, :cond_328

    .line 72
    iget-object v9, v1, Lt/p;->h:Lt/f;

    iget v9, v9, Lt/f;->f:I

    sub-int/2addr v7, v9

    goto :goto_32d

    .line 73
    :cond_328
    iget-object v9, v1, Lt/p;->h:Lt/f;

    iget v9, v9, Lt/f;->f:I

    add-int/2addr v7, v9

    :cond_32d
    :goto_32d
    if-eqz v23, :cond_335

    .line 74
    iget-object v9, v1, Lt/p;->i:Lt/f;

    invoke-virtual {v9, v7}, Lt/f;->d(I)V

    goto :goto_33a

    .line 75
    :cond_335
    iget-object v9, v1, Lt/p;->h:Lt/f;

    invoke-virtual {v9, v7}, Lt/f;->d(I)V

    .line 76
    :goto_33a
    iget-object v9, v1, Lt/p;->e:Lt/g;

    iget v10, v9, Lt/f;->g:I

    .line 77
    iget-object v11, v1, Lt/p;->d:Ls/e$b;

    sget-object v12, Ls/e$b;->q:Ls/e$b;

    if-ne v11, v12, :cond_34f

    iget v11, v1, Lt/p;->a:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_34f

    .line 78
    iget v9, v9, Lt/g;->m:I

    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    move-result v10

    :cond_34f
    if-eqz v23, :cond_353

    sub-int/2addr v7, v10

    goto :goto_354

    :cond_353
    add-int/2addr v7, v10

    :goto_354
    if-eqz v23, :cond_35c

    .line 79
    iget-object v9, v1, Lt/p;->h:Lt/f;

    invoke-virtual {v9, v7}, Lt/f;->d(I)V

    goto :goto_361

    .line 80
    :cond_35c
    iget-object v9, v1, Lt/p;->i:Lt/f;

    invoke-virtual {v9, v7}, Lt/f;->d(I)V

    :goto_361
    if-ge v3, v8, :cond_374

    if-ge v3, v6, :cond_374

    if-eqz v23, :cond_36e

    .line 81
    iget-object v1, v1, Lt/p;->i:Lt/f;

    iget v1, v1, Lt/f;->f:I

    neg-int v1, v1

    sub-int/2addr v7, v1

    goto :goto_374

    .line 82
    :cond_36e
    iget-object v1, v1, Lt/p;->i:Lt/f;

    iget v1, v1, Lt/f;->f:I

    neg-int v1, v1

    add-int/2addr v7, v1

    :cond_374
    :goto_374
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2f0

    :cond_378
    const/4 v7, 0x2

    if-ne v3, v7, :cond_429

    .line 83
    iget v3, v0, Lt/p;->f:I

    if-nez v3, :cond_386

    iget-object v3, v0, Lt/p;->b:Ls/e;

    invoke-virtual {v3}, Ls/e;->w()F

    move-result v3

    goto :goto_38c

    :cond_386
    iget-object v3, v0, Lt/p;->b:Ls/e;

    .line 84
    invoke-virtual {v3}, Ls/e;->P()F

    move-result v3

    :goto_38c
    if-eqz v23, :cond_392

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v3, v7, v3

    :cond_392
    sub-int/2addr v2, v14

    int-to-float v2, v2

    mul-float v2, v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    if-ltz v2, :cond_39e

    if-lez v15, :cond_39f

    :cond_39e
    const/4 v2, 0x0

    :cond_39f
    if-eqz v23, :cond_3a4

    sub-int v7, v21, v2

    goto :goto_3a6

    :cond_3a4
    add-int v7, v21, v2

    :goto_3a6
    const/4 v3, 0x0

    :goto_3a7
    if-ge v3, v4, :cond_429

    if-eqz v23, :cond_3b0

    add-int/lit8 v1, v3, 0x1

    sub-int v1, v4, v1

    goto :goto_3b1

    :cond_3b0
    move v1, v3

    .line 85
    :goto_3b1
    iget-object v2, v0, Lt/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt/p;

    .line 86
    iget-object v2, v1, Lt/p;->b:Ls/e;

    invoke-virtual {v2}, Ls/e;->T()I

    move-result v2

    const/16 v9, 0x8

    if-ne v2, v9, :cond_3cf

    .line 87
    iget-object v2, v1, Lt/p;->h:Lt/f;

    invoke-virtual {v2, v7}, Lt/f;->d(I)V

    .line 88
    iget-object v1, v1, Lt/p;->i:Lt/f;

    invoke-virtual {v1, v7}, Lt/f;->d(I)V

    const/4 v12, 0x1

    goto :goto_425

    :cond_3cf
    if-lez v3, :cond_3e0

    if-lt v3, v5, :cond_3e0

    if-eqz v23, :cond_3db

    .line 89
    iget-object v2, v1, Lt/p;->h:Lt/f;

    iget v2, v2, Lt/f;->f:I

    sub-int/2addr v7, v2

    goto :goto_3e0

    .line 90
    :cond_3db
    iget-object v2, v1, Lt/p;->h:Lt/f;

    iget v2, v2, Lt/f;->f:I

    add-int/2addr v7, v2

    :cond_3e0
    :goto_3e0
    if-eqz v23, :cond_3e8

    .line 91
    iget-object v2, v1, Lt/p;->i:Lt/f;

    invoke-virtual {v2, v7}, Lt/f;->d(I)V

    goto :goto_3ed

    .line 92
    :cond_3e8
    iget-object v2, v1, Lt/p;->h:Lt/f;

    invoke-virtual {v2, v7}, Lt/f;->d(I)V

    .line 93
    :goto_3ed
    iget-object v2, v1, Lt/p;->e:Lt/g;

    iget v10, v2, Lt/f;->g:I

    .line 94
    iget-object v11, v1, Lt/p;->d:Ls/e$b;

    sget-object v12, Ls/e$b;->q:Ls/e$b;

    if-ne v11, v12, :cond_3ff

    iget v11, v1, Lt/p;->a:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_400

    .line 95
    iget v10, v2, Lt/g;->m:I

    goto :goto_400

    :cond_3ff
    const/4 v12, 0x1

    :cond_400
    :goto_400
    if-eqz v23, :cond_404

    sub-int/2addr v7, v10

    goto :goto_405

    :cond_404
    add-int/2addr v7, v10

    :goto_405
    if-eqz v23, :cond_40d

    .line 96
    iget-object v2, v1, Lt/p;->h:Lt/f;

    invoke-virtual {v2, v7}, Lt/f;->d(I)V

    goto :goto_412

    .line 97
    :cond_40d
    iget-object v2, v1, Lt/p;->i:Lt/f;

    invoke-virtual {v2, v7}, Lt/f;->d(I)V

    :goto_412
    if-ge v3, v8, :cond_425

    if-ge v3, v6, :cond_425

    if-eqz v23, :cond_41f

    .line 98
    iget-object v1, v1, Lt/p;->i:Lt/f;

    iget v1, v1, Lt/f;->f:I

    neg-int v1, v1

    sub-int/2addr v7, v1

    goto :goto_425

    .line 99
    :cond_41f
    iget-object v1, v1, Lt/p;->i:Lt/f;

    iget v1, v1, Lt/f;->f:I

    neg-int v1, v1

    add-int/2addr v7, v1

    :cond_425
    :goto_425
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3a7

    :cond_429
    :goto_429
    return-void
.end method

.method d()V
    .registers 6

    .line 1
    iget-object v0, p0, Lt/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt/p;

    .line 2
    invoke-virtual {v1}, Lt/p;->d()V

    goto :goto_6

    .line 3
    :cond_16
    iget-object v0, p0, Lt/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_20

    return-void

    .line 4
    :cond_20
    iget-object v2, p0, Lt/c;->k:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt/p;

    iget-object v2, v2, Lt/p;->b:Ls/e;

    .line 5
    iget-object v4, p0, Lt/c;->k:Ljava/util/ArrayList;

    sub-int/2addr v0, v1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/p;

    iget-object v0, v0, Lt/p;->b:Ls/e;

    .line 6
    iget v4, p0, Lt/p;->f:I

    if-nez v4, :cond_76

    .line 7
    iget-object v1, v2, Ls/e;->O:Ls/d;

    .line 8
    iget-object v0, v0, Ls/e;->Q:Ls/d;

    .line 9
    invoke-virtual {p0, v1, v3}, Lt/p;->i(Ls/d;I)Lt/f;

    move-result-object v2

    .line 10
    invoke-virtual {v1}, Ls/d;->e()I

    move-result v1

    .line 11
    invoke-direct {p0}, Lt/c;->r()Ls/e;

    move-result-object v4

    if-eqz v4, :cond_52

    .line 12
    iget-object v1, v4, Ls/e;->O:Ls/d;

    invoke-virtual {v1}, Ls/d;->e()I

    move-result v1

    :cond_52
    if-eqz v2, :cond_59

    .line 13
    iget-object v4, p0, Lt/p;->h:Lt/f;

    invoke-virtual {p0, v4, v2, v1}, Lt/p;->b(Lt/f;Lt/f;I)V

    .line 14
    :cond_59
    invoke-virtual {p0, v0, v3}, Lt/p;->i(Ls/d;I)Lt/f;

    move-result-object v1

    .line 15
    invoke-virtual {v0}, Ls/d;->e()I

    move-result v0

    .line 16
    invoke-direct {p0}, Lt/c;->s()Ls/e;

    move-result-object v2

    if-eqz v2, :cond_6d

    .line 17
    iget-object v0, v2, Ls/e;->Q:Ls/d;

    invoke-virtual {v0}, Ls/d;->e()I

    move-result v0

    :cond_6d
    if-eqz v1, :cond_b1

    .line 18
    iget-object v2, p0, Lt/p;->i:Lt/f;

    neg-int v0, v0

    invoke-virtual {p0, v2, v1, v0}, Lt/p;->b(Lt/f;Lt/f;I)V

    goto :goto_b1

    .line 19
    :cond_76
    iget-object v2, v2, Ls/e;->P:Ls/d;

    .line 20
    iget-object v0, v0, Ls/e;->R:Ls/d;

    .line 21
    invoke-virtual {p0, v2, v1}, Lt/p;->i(Ls/d;I)Lt/f;

    move-result-object v3

    .line 22
    invoke-virtual {v2}, Ls/d;->e()I

    move-result v2

    .line 23
    invoke-direct {p0}, Lt/c;->r()Ls/e;

    move-result-object v4

    if-eqz v4, :cond_8e

    .line 24
    iget-object v2, v4, Ls/e;->P:Ls/d;

    invoke-virtual {v2}, Ls/d;->e()I

    move-result v2

    :cond_8e
    if-eqz v3, :cond_95

    .line 25
    iget-object v4, p0, Lt/p;->h:Lt/f;

    invoke-virtual {p0, v4, v3, v2}, Lt/p;->b(Lt/f;Lt/f;I)V

    .line 26
    :cond_95
    invoke-virtual {p0, v0, v1}, Lt/p;->i(Ls/d;I)Lt/f;

    move-result-object v1

    .line 27
    invoke-virtual {v0}, Ls/d;->e()I

    move-result v0

    .line 28
    invoke-direct {p0}, Lt/c;->s()Ls/e;

    move-result-object v2

    if-eqz v2, :cond_a9

    .line 29
    iget-object v0, v2, Ls/e;->R:Ls/d;

    invoke-virtual {v0}, Ls/d;->e()I

    move-result v0

    :cond_a9
    if-eqz v1, :cond_b1

    .line 30
    iget-object v2, p0, Lt/p;->i:Lt/f;

    neg-int v0, v0

    invoke-virtual {p0, v2, v1, v0}, Lt/p;->b(Lt/f;Lt/f;I)V

    .line 31
    :cond_b1
    :goto_b1
    iget-object v0, p0, Lt/p;->h:Lt/f;

    iput-object p0, v0, Lt/f;->a:Lt/d;

    .line 32
    iget-object v0, p0, Lt/p;->i:Lt/f;

    iput-object p0, v0, Lt/f;->a:Lt/d;

    return-void
.end method

.method public e()V
    .registers 3

    const/4 v0, 0x0

    .line 1
    :goto_1
    iget-object v1, p0, Lt/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 2
    iget-object v1, p0, Lt/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt/p;

    .line 3
    invoke-virtual {v1}, Lt/p;->e()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method f()V
    .registers 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lt/p;->c:Lt/m;

    .line 2
    iget-object v0, p0, Lt/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt/p;

    .line 3
    invoke-virtual {v1}, Lt/p;->f()V

    goto :goto_9

    :cond_19
    return-void
.end method

.method public j()J
    .registers 8

    .line 1
    iget-object v0, p0, Lt/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v0, :cond_27

    .line 2
    iget-object v4, p0, Lt/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lt/p;

    .line 3
    iget-object v5, v4, Lt/p;->h:Lt/f;

    iget v5, v5, Lt/f;->f:I

    int-to-long v5, v5

    add-long/2addr v1, v5

    .line 4
    invoke-virtual {v4}, Lt/p;->j()J

    move-result-wide v5

    add-long/2addr v1, v5

    .line 5
    iget-object v4, v4, Lt/p;->i:Lt/f;

    iget v4, v4, Lt/f;->f:I

    int-to-long v4, v4

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_27
    return-wide v1
.end method

.method m()Z
    .registers 5

    .line 1
    iget-object v0, p0, Lt/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_1c

    .line 2
    iget-object v3, p0, Lt/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt/p;

    .line 3
    invoke-virtual {v3}, Lt/p;->m()Z

    move-result v3

    if-nez v3, :cond_19

    return v1

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1c
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ChainRun "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    iget v1, p0, Lt/p;->f:I

    if-nez v1, :cond_e

    const-string v1, "horizontal : "

    goto :goto_10

    :cond_e
    const-string v1, "vertical : "

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Lt/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt/p;

    const-string v3, "<"

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    .line 7
    :cond_33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
