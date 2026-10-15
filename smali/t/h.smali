###### Class t.h (t.h)
.class public Lt/h;
.super Ljava/lang/Object;
.source "Direct.java"


# static fields
.field private static a:Lt/b$a;

.field private static b:I

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lt/b$a;

    invoke-direct {v0}, Lt/b$a;-><init>()V

    sput-object v0, Lt/h;->a:Lt/b$a;

    const/4 v0, 0x0

    .line 2
    sput v0, Lt/h;->b:I

    .line 3
    sput v0, Lt/h;->c:I

    return-void
.end method

.method private static a(ILs/e;)Z
    .registers 9

    .line 1
    invoke-virtual {p1}, Ls/e;->y()Ls/e$b;

    move-result-object p0

    .line 2
    invoke-virtual {p1}, Ls/e;->R()Ls/e$b;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Ls/e;->I()Ls/e;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {p1}, Ls/e;->I()Ls/e;

    move-result-object v1

    check-cast v1, Ls/f;

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    if-eqz v1, :cond_1e

    .line 4
    invoke-virtual {v1}, Ls/e;->y()Ls/e$b;

    move-result-object v2

    sget-object v3, Ls/e$b;->o:Ls/e$b;

    :cond_1e
    if-eqz v1, :cond_26

    .line 5
    invoke-virtual {v1}, Ls/e;->R()Ls/e$b;

    move-result-object v1

    sget-object v2, Ls/e$b;->o:Ls/e$b;

    .line 6
    :cond_26
    sget-object v1, Ls/e$b;->o:Ls/e$b;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p0, v1, :cond_5e

    .line 7
    invoke-virtual {p1}, Ls/e;->l0()Z

    move-result v5

    if-nez v5, :cond_5e

    sget-object v5, Ls/e$b;->p:Ls/e$b;

    if-eq p0, v5, :cond_5e

    sget-object v5, Ls/e$b;->q:Ls/e$b;

    if-ne p0, v5, :cond_4b

    iget v6, p1, Ls/e;->w:I

    if-nez v6, :cond_4b

    iget v6, p1, Ls/e;->d0:F

    cmpl-float v6, v6, v2

    if-nez v6, :cond_4b

    .line 8
    invoke-virtual {p1, v3}, Ls/e;->Y(I)Z

    move-result v6

    if-nez v6, :cond_5e

    :cond_4b
    if-ne p0, v5, :cond_5c

    iget p0, p1, Ls/e;->w:I

    if-ne p0, v4, :cond_5c

    .line 9
    invoke-virtual {p1}, Ls/e;->U()I

    move-result p0

    invoke-virtual {p1, v3, p0}, Ls/e;->b0(II)Z

    move-result p0

    if-eqz p0, :cond_5c

    goto :goto_5e

    :cond_5c
    const/4 p0, 0x0

    goto :goto_5f

    :cond_5e
    :goto_5e
    const/4 p0, 0x1

    :goto_5f
    if-eq v0, v1, :cond_92

    .line 10
    invoke-virtual {p1}, Ls/e;->m0()Z

    move-result v1

    if-nez v1, :cond_92

    sget-object v1, Ls/e$b;->p:Ls/e$b;

    if-eq v0, v1, :cond_92

    sget-object v1, Ls/e$b;->q:Ls/e$b;

    if-ne v0, v1, :cond_7f

    iget v5, p1, Ls/e;->x:I

    if-nez v5, :cond_7f

    iget v5, p1, Ls/e;->d0:F

    cmpl-float v5, v5, v2

    if-nez v5, :cond_7f

    .line 11
    invoke-virtual {p1, v4}, Ls/e;->Y(I)Z

    move-result v5

    if-nez v5, :cond_92

    :cond_7f
    if-ne v0, v1, :cond_90

    iget v0, p1, Ls/e;->x:I

    if-ne v0, v4, :cond_90

    .line 12
    invoke-virtual {p1}, Ls/e;->v()I

    move-result v0

    invoke-virtual {p1, v4, v0}, Ls/e;->b0(II)Z

    move-result v0

    if-eqz v0, :cond_90

    goto :goto_92

    :cond_90
    const/4 v0, 0x0

    goto :goto_93

    :cond_92
    :goto_92
    const/4 v0, 0x1

    .line 13
    :goto_93
    iget p1, p1, Ls/e;->d0:F

    cmpl-float p1, p1, v2

    if-lez p1, :cond_9e

    if-nez p0, :cond_9d

    if-eqz v0, :cond_9e

    :cond_9d
    return v4

    :cond_9e
    if-eqz p0, :cond_a3

    if-eqz v0, :cond_a3

    const/4 v3, 0x1

    :cond_a3
    return v3
.end method

.method private static b(ILs/e;Lt/b$b;Z)V
    .registers 20

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    .line 1
    invoke-virtual/range {p1 .. p1}, Ls/e;->e0()Z

    move-result v3

    if-eqz v3, :cond_d

    return-void

    .line 2
    :cond_d
    sget v3, Lt/h;->b:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    sput v3, Lt/h;->b:I

    .line 3
    instance-of v3, v0, Ls/f;

    if-nez v3, :cond_2f

    invoke-virtual/range {p1 .. p1}, Ls/e;->k0()Z

    move-result v3

    if-eqz v3, :cond_2f

    add-int/lit8 v3, p0, 0x1

    invoke-static {v3, v0}, Lt/h;->a(ILs/e;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 4
    new-instance v5, Lt/b$a;

    invoke-direct {v5}, Lt/b$a;-><init>()V

    .line 5
    sget v6, Lt/b$a;->k:I

    invoke-static {v3, v0, v1, v5, v6}, Ls/f;->O1(ILs/e;Lt/b$b;Lt/b$a;I)Z

    .line 6
    :cond_2f
    sget-object v3, Ls/d$b;->p:Ls/d$b;

    invoke-virtual {v0, v3}, Ls/e;->m(Ls/d$b;)Ls/d;

    move-result-object v3

    .line 7
    sget-object v5, Ls/d$b;->r:Ls/d$b;

    invoke-virtual {v0, v5}, Ls/e;->m(Ls/d$b;)Ls/d;

    move-result-object v5

    .line 8
    invoke-virtual {v3}, Ls/d;->d()I

    move-result v6

    .line 9
    invoke-virtual {v5}, Ls/d;->d()I

    move-result v7

    .line 10
    invoke-virtual {v3}, Ls/d;->c()Ljava/util/HashSet;

    move-result-object v8

    const/4 v9, 0x0

    const/16 v10, 0x8

    if-eqz v8, :cond_131

    invoke-virtual {v3}, Ls/d;->m()Z

    move-result v8

    if-eqz v8, :cond_131

    .line 11
    invoke-virtual {v3}, Ls/d;->c()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_131

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ls/d;

    .line 12
    iget-object v12, v8, Ls/d;->d:Ls/e;

    add-int/lit8 v13, p0, 0x1

    .line 13
    invoke-static {v13, v12}, Lt/h;->a(ILs/e;)Z

    move-result v14

    .line 14
    invoke-virtual {v12}, Ls/e;->k0()Z

    move-result v15

    if-eqz v15, :cond_80

    if-eqz v14, :cond_80

    .line 15
    new-instance v15, Lt/b$a;

    invoke-direct {v15}, Lt/b$a;-><init>()V

    .line 16
    sget v11, Lt/b$a;->k:I

    invoke-static {v13, v12, v1, v15, v11}, Ls/f;->O1(ILs/e;Lt/b$b;Lt/b$a;I)Z

    .line 17
    :cond_80
    iget-object v11, v12, Ls/e;->O:Ls/d;

    if-ne v8, v11, :cond_90

    iget-object v11, v12, Ls/e;->Q:Ls/d;

    iget-object v11, v11, Ls/d;->f:Ls/d;

    if-eqz v11, :cond_90

    invoke-virtual {v11}, Ls/d;->m()Z

    move-result v11

    if-nez v11, :cond_a0

    :cond_90
    iget-object v11, v12, Ls/e;->Q:Ls/d;

    if-ne v8, v11, :cond_a2

    iget-object v11, v12, Ls/e;->O:Ls/d;

    iget-object v11, v11, Ls/d;->f:Ls/d;

    if-eqz v11, :cond_a2

    .line 18
    invoke-virtual {v11}, Ls/d;->m()Z

    move-result v11

    if-eqz v11, :cond_a2

    :cond_a0
    const/4 v11, 0x1

    goto :goto_a3

    :cond_a2
    const/4 v11, 0x0

    .line 19
    :goto_a3
    invoke-virtual {v12}, Ls/e;->y()Ls/e$b;

    move-result-object v15

    sget-object v4, Ls/e$b;->q:Ls/e$b;

    if-ne v15, v4, :cond_e6

    if-eqz v14, :cond_ae

    goto :goto_e6

    .line 20
    :cond_ae
    invoke-virtual {v12}, Ls/e;->y()Ls/e$b;

    move-result-object v8

    if-ne v8, v4, :cond_ec

    iget v4, v12, Ls/e;->A:I

    if-ltz v4, :cond_ec

    iget v4, v12, Ls/e;->z:I

    if-ltz v4, :cond_ec

    .line 21
    invoke-virtual {v12}, Ls/e;->T()I

    move-result v4

    if-eq v4, v10, :cond_ce

    iget v4, v12, Ls/e;->w:I

    if-nez v4, :cond_ec

    invoke-virtual {v12}, Ls/e;->t()F

    move-result v4

    cmpl-float v4, v4, v9

    if-nez v4, :cond_ec

    .line 22
    :cond_ce
    invoke-virtual {v12}, Ls/e;->g0()Z

    move-result v4

    if-nez v4, :cond_ec

    invoke-virtual {v12}, Ls/e;->j0()Z

    move-result v4

    if-nez v4, :cond_ec

    if-eqz v11, :cond_ec

    .line 23
    invoke-virtual {v12}, Ls/e;->g0()Z

    move-result v4

    if-nez v4, :cond_ec

    .line 24
    invoke-static {v13, v0, v1, v12, v2}, Lt/h;->e(ILs/e;Lt/b$b;Ls/e;Z)V

    goto :goto_ec

    .line 25
    :cond_e6
    :goto_e6
    invoke-virtual {v12}, Ls/e;->k0()Z

    move-result v4

    if-eqz v4, :cond_ef

    :cond_ec
    :goto_ec
    const/4 v4, 0x1

    goto/16 :goto_5a

    .line 26
    :cond_ef
    iget-object v4, v12, Ls/e;->O:Ls/d;

    if-ne v8, v4, :cond_10a

    iget-object v14, v12, Ls/e;->Q:Ls/d;

    iget-object v14, v14, Ls/d;->f:Ls/d;

    if-nez v14, :cond_10a

    .line 27
    invoke-virtual {v4}, Ls/d;->e()I

    move-result v4

    add-int/2addr v4, v6

    .line 28
    invoke-virtual {v12}, Ls/e;->U()I

    move-result v8

    add-int/2addr v8, v4

    .line 29
    invoke-virtual {v12, v4, v8}, Ls/e;->C0(II)V

    .line 30
    invoke-static {v13, v12, v1, v2}, Lt/h;->b(ILs/e;Lt/b$b;Z)V

    goto :goto_ec

    .line 31
    :cond_10a
    iget-object v14, v12, Ls/e;->Q:Ls/d;

    if-ne v8, v14, :cond_125

    iget-object v4, v4, Ls/d;->f:Ls/d;

    if-nez v4, :cond_125

    .line 32
    invoke-virtual {v14}, Ls/d;->e()I

    move-result v4

    sub-int v4, v6, v4

    .line 33
    invoke-virtual {v12}, Ls/e;->U()I

    move-result v8

    sub-int v8, v4, v8

    .line 34
    invoke-virtual {v12, v8, v4}, Ls/e;->C0(II)V

    .line 35
    invoke-static {v13, v12, v1, v2}, Lt/h;->b(ILs/e;Lt/b$b;Z)V

    goto :goto_ec

    :cond_125
    if-eqz v11, :cond_ec

    .line 36
    invoke-virtual {v12}, Ls/e;->g0()Z

    move-result v4

    if-nez v4, :cond_ec

    .line 37
    invoke-static {v13, v1, v12, v2}, Lt/h;->d(ILt/b$b;Ls/e;Z)V

    goto :goto_ec

    .line 38
    :cond_131
    instance-of v3, v0, Ls/g;

    if-eqz v3, :cond_136

    return-void

    .line 39
    :cond_136
    invoke-virtual {v5}, Ls/d;->c()Ljava/util/HashSet;

    move-result-object v3

    if-eqz v3, :cond_225

    invoke-virtual {v5}, Ls/d;->m()Z

    move-result v3

    if-eqz v3, :cond_225

    .line 40
    invoke-virtual {v5}, Ls/d;->c()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_14a
    :goto_14a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_225

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls/d;

    .line 41
    iget-object v5, v4, Ls/d;->d:Ls/e;

    const/4 v6, 0x1

    add-int/lit8 v8, p0, 0x1

    .line 42
    invoke-static {v8, v5}, Lt/h;->a(ILs/e;)Z

    move-result v11

    .line 43
    invoke-virtual {v5}, Ls/e;->k0()Z

    move-result v12

    if-eqz v12, :cond_171

    if-eqz v11, :cond_171

    .line 44
    new-instance v12, Lt/b$a;

    invoke-direct {v12}, Lt/b$a;-><init>()V

    .line 45
    sget v13, Lt/b$a;->k:I

    invoke-static {v8, v5, v1, v12, v13}, Ls/f;->O1(ILs/e;Lt/b$b;Lt/b$a;I)Z

    .line 46
    :cond_171
    iget-object v12, v5, Ls/e;->O:Ls/d;

    if-ne v4, v12, :cond_181

    iget-object v12, v5, Ls/e;->Q:Ls/d;

    iget-object v12, v12, Ls/d;->f:Ls/d;

    if-eqz v12, :cond_181

    invoke-virtual {v12}, Ls/d;->m()Z

    move-result v12

    if-nez v12, :cond_191

    :cond_181
    iget-object v12, v5, Ls/e;->Q:Ls/d;

    if-ne v4, v12, :cond_193

    iget-object v12, v5, Ls/e;->O:Ls/d;

    iget-object v12, v12, Ls/d;->f:Ls/d;

    if-eqz v12, :cond_193

    .line 47
    invoke-virtual {v12}, Ls/d;->m()Z

    move-result v12

    if-eqz v12, :cond_193

    :cond_191
    const/4 v12, 0x1

    goto :goto_194

    :cond_193
    const/4 v12, 0x0

    .line 48
    :goto_194
    invoke-virtual {v5}, Ls/e;->y()Ls/e$b;

    move-result-object v13

    sget-object v14, Ls/e$b;->q:Ls/e$b;

    if-ne v13, v14, :cond_1d8

    if-eqz v11, :cond_19f

    goto :goto_1d8

    .line 49
    :cond_19f
    invoke-virtual {v5}, Ls/e;->y()Ls/e$b;

    move-result-object v4

    if-ne v4, v14, :cond_14a

    iget v4, v5, Ls/e;->A:I

    if-ltz v4, :cond_14a

    iget v4, v5, Ls/e;->z:I

    if-ltz v4, :cond_14a

    .line 50
    invoke-virtual {v5}, Ls/e;->T()I

    move-result v4

    if-eq v4, v10, :cond_1bf

    iget v4, v5, Ls/e;->w:I

    if-nez v4, :cond_14a

    invoke-virtual {v5}, Ls/e;->t()F

    move-result v4

    cmpl-float v4, v4, v9

    if-nez v4, :cond_14a

    .line 51
    :cond_1bf
    invoke-virtual {v5}, Ls/e;->g0()Z

    move-result v4

    if-nez v4, :cond_14a

    invoke-virtual {v5}, Ls/e;->j0()Z

    move-result v4

    if-nez v4, :cond_14a

    if-eqz v12, :cond_14a

    .line 52
    invoke-virtual {v5}, Ls/e;->g0()Z

    move-result v4

    if-nez v4, :cond_14a

    .line 53
    invoke-static {v8, v0, v1, v5, v2}, Lt/h;->e(ILs/e;Lt/b$b;Ls/e;Z)V

    goto/16 :goto_14a

    .line 54
    :cond_1d8
    :goto_1d8
    invoke-virtual {v5}, Ls/e;->k0()Z

    move-result v11

    if-eqz v11, :cond_1e0

    goto/16 :goto_14a

    .line 55
    :cond_1e0
    iget-object v11, v5, Ls/e;->O:Ls/d;

    if-ne v4, v11, :cond_1fc

    iget-object v13, v5, Ls/e;->Q:Ls/d;

    iget-object v13, v13, Ls/d;->f:Ls/d;

    if-nez v13, :cond_1fc

    .line 56
    invoke-virtual {v11}, Ls/d;->e()I

    move-result v4

    add-int/2addr v4, v7

    .line 57
    invoke-virtual {v5}, Ls/e;->U()I

    move-result v11

    add-int/2addr v11, v4

    .line 58
    invoke-virtual {v5, v4, v11}, Ls/e;->C0(II)V

    .line 59
    invoke-static {v8, v5, v1, v2}, Lt/h;->b(ILs/e;Lt/b$b;Z)V

    goto/16 :goto_14a

    .line 60
    :cond_1fc
    iget-object v13, v5, Ls/e;->Q:Ls/d;

    if-ne v4, v13, :cond_218

    iget-object v4, v11, Ls/d;->f:Ls/d;

    if-nez v4, :cond_218

    .line 61
    invoke-virtual {v13}, Ls/d;->e()I

    move-result v4

    sub-int v4, v7, v4

    .line 62
    invoke-virtual {v5}, Ls/e;->U()I

    move-result v11

    sub-int v11, v4, v11

    .line 63
    invoke-virtual {v5, v11, v4}, Ls/e;->C0(II)V

    .line 64
    invoke-static {v8, v5, v1, v2}, Lt/h;->b(ILs/e;Lt/b$b;Z)V

    goto/16 :goto_14a

    :cond_218
    if-eqz v12, :cond_14a

    .line 65
    invoke-virtual {v5}, Ls/e;->g0()Z

    move-result v4

    if-nez v4, :cond_14a

    .line 66
    invoke-static {v8, v1, v5, v2}, Lt/h;->d(ILt/b$b;Ls/e;Z)V

    goto/16 :goto_14a

    .line 67
    :cond_225
    invoke-virtual/range {p1 .. p1}, Ls/e;->o0()V

    return-void
.end method

.method private static c(ILs/a;Lt/b$b;IZ)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Ls/a;->q1()Z

    move-result v0

    if-eqz v0, :cond_13

    if-nez p3, :cond_e

    add-int/lit8 p0, p0, 0x1

    .line 2
    invoke-static {p0, p1, p2, p4}, Lt/h;->b(ILs/e;Lt/b$b;Z)V

    goto :goto_13

    :cond_e
    add-int/lit8 p0, p0, 0x1

    .line 3
    invoke-static {p0, p1, p2}, Lt/h;->i(ILs/e;Lt/b$b;)V

    :cond_13
    :goto_13
    return-void
.end method

.method private static d(ILt/b$b;Ls/e;Z)V
    .registers 10

    .line 1
    invoke-virtual {p2}, Ls/e;->w()F

    move-result v0

    .line 2
    iget-object v1, p2, Ls/e;->O:Ls/d;

    iget-object v1, v1, Ls/d;->f:Ls/d;

    invoke-virtual {v1}, Ls/d;->d()I

    move-result v1

    .line 3
    iget-object v2, p2, Ls/e;->Q:Ls/d;

    iget-object v2, v2, Ls/d;->f:Ls/d;

    invoke-virtual {v2}, Ls/d;->d()I

    move-result v2

    .line 4
    iget-object v3, p2, Ls/e;->O:Ls/d;

    invoke-virtual {v3}, Ls/d;->e()I

    move-result v3

    add-int/2addr v3, v1

    .line 5
    iget-object v4, p2, Ls/e;->Q:Ls/d;

    invoke-virtual {v4}, Ls/d;->e()I

    move-result v4

    sub-int v4, v2, v4

    const/high16 v5, 0x3f000000    # 0.5f

    if-ne v1, v2, :cond_2a

    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_2c

    :cond_2a
    move v1, v3

    move v2, v4

    .line 6
    :goto_2c
    invoke-virtual {p2}, Ls/e;->U()I

    move-result v3

    sub-int v4, v2, v1

    sub-int/2addr v4, v3

    if-le v1, v2, :cond_38

    sub-int v4, v1, v2

    sub-int/2addr v4, v3

    :cond_38
    if-lez v4, :cond_3f

    int-to-float v4, v4

    mul-float v0, v0, v4

    add-float/2addr v0, v5

    goto :goto_42

    :cond_3f
    int-to-float v4, v4

    mul-float v0, v0, v4

    :goto_42
    float-to-int v0, v0

    add-int/2addr v0, v1

    add-int v4, v0, v3

    if-le v1, v2, :cond_4a

    sub-int v4, v0, v3

    .line 7
    :cond_4a
    invoke-virtual {p2, v0, v4}, Ls/e;->C0(II)V

    add-int/lit8 p0, p0, 0x1

    .line 8
    invoke-static {p0, p2, p1, p3}, Lt/h;->b(ILs/e;Lt/b$b;Z)V

    return-void
.end method

.method private static e(ILs/e;Lt/b$b;Ls/e;Z)V
    .registers 12

    .line 1
    invoke-virtual {p3}, Ls/e;->w()F

    move-result v0

    .line 2
    iget-object v1, p3, Ls/e;->O:Ls/d;

    iget-object v1, v1, Ls/d;->f:Ls/d;

    invoke-virtual {v1}, Ls/d;->d()I

    move-result v1

    iget-object v2, p3, Ls/e;->O:Ls/d;

    invoke-virtual {v2}, Ls/d;->e()I

    move-result v2

    add-int/2addr v1, v2

    .line 3
    iget-object v2, p3, Ls/e;->Q:Ls/d;

    iget-object v2, v2, Ls/d;->f:Ls/d;

    invoke-virtual {v2}, Ls/d;->d()I

    move-result v2

    iget-object v3, p3, Ls/e;->Q:Ls/d;

    invoke-virtual {v3}, Ls/d;->e()I

    move-result v3

    sub-int/2addr v2, v3

    if-lt v2, v1, :cond_76

    .line 4
    invoke-virtual {p3}, Ls/e;->U()I

    move-result v3

    .line 5
    invoke-virtual {p3}, Ls/e;->T()I

    move-result v4

    const/16 v5, 0x8

    const/high16 v6, 0x3f000000    # 0.5f

    if-eq v4, v5, :cond_65

    .line 6
    iget v4, p3, Ls/e;->w:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_53

    .line 7
    instance-of v3, p1, Ls/f;

    if-eqz v3, :cond_40

    .line 8
    invoke-virtual {p1}, Ls/e;->U()I

    move-result p1

    goto :goto_48

    .line 9
    :cond_40
    invoke-virtual {p1}, Ls/e;->I()Ls/e;

    move-result-object p1

    invoke-virtual {p1}, Ls/e;->U()I

    move-result p1

    .line 10
    :goto_48
    invoke-virtual {p3}, Ls/e;->w()F

    move-result v3

    mul-float v3, v3, v6

    int-to-float p1, p1

    mul-float v3, v3, p1

    float-to-int v3, v3

    goto :goto_57

    :cond_53
    if-nez v4, :cond_57

    sub-int v3, v2, v1

    .line 11
    :cond_57
    :goto_57
    iget p1, p3, Ls/e;->z:I

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 12
    iget p1, p3, Ls/e;->A:I

    if-lez p1, :cond_65

    .line 13
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_65
    sub-int/2addr v2, v1

    sub-int/2addr v2, v3

    int-to-float p1, v2

    mul-float v0, v0, p1

    add-float/2addr v0, v6

    float-to-int p1, v0

    add-int/2addr v1, p1

    add-int/2addr v3, v1

    .line 14
    invoke-virtual {p3, v1, v3}, Ls/e;->C0(II)V

    add-int/lit8 p0, p0, 0x1

    .line 15
    invoke-static {p0, p3, p2, p4}, Lt/h;->b(ILs/e;Lt/b$b;Z)V

    :cond_76
    return-void
.end method

.method private static f(ILt/b$b;Ls/e;)V
    .registers 9

    .line 1
    invoke-virtual {p2}, Ls/e;->P()F

    move-result v0

    .line 2
    iget-object v1, p2, Ls/e;->P:Ls/d;

    iget-object v1, v1, Ls/d;->f:Ls/d;

    invoke-virtual {v1}, Ls/d;->d()I

    move-result v1

    .line 3
    iget-object v2, p2, Ls/e;->R:Ls/d;

    iget-object v2, v2, Ls/d;->f:Ls/d;

    invoke-virtual {v2}, Ls/d;->d()I

    move-result v2

    .line 4
    iget-object v3, p2, Ls/e;->P:Ls/d;

    invoke-virtual {v3}, Ls/d;->e()I

    move-result v3

    add-int/2addr v3, v1

    .line 5
    iget-object v4, p2, Ls/e;->R:Ls/d;

    invoke-virtual {v4}, Ls/d;->e()I

    move-result v4

    sub-int v4, v2, v4

    const/high16 v5, 0x3f000000    # 0.5f

    if-ne v1, v2, :cond_2a

    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_2c

    :cond_2a
    move v1, v3

    move v2, v4

    .line 6
    :goto_2c
    invoke-virtual {p2}, Ls/e;->v()I

    move-result v3

    sub-int v4, v2, v1

    sub-int/2addr v4, v3

    if-le v1, v2, :cond_38

    sub-int v4, v1, v2

    sub-int/2addr v4, v3

    :cond_38
    if-lez v4, :cond_3f

    int-to-float v4, v4

    mul-float v0, v0, v4

    add-float/2addr v0, v5

    goto :goto_42

    :cond_3f
    int-to-float v4, v4

    mul-float v0, v0, v4

    :goto_42
    float-to-int v0, v0

    add-int v4, v1, v0

    add-int v5, v4, v3

    if-le v1, v2, :cond_4d

    sub-int v4, v1, v0

    sub-int v5, v4, v3

    .line 7
    :cond_4d
    invoke-virtual {p2, v4, v5}, Ls/e;->F0(II)V

    add-int/lit8 p0, p0, 0x1

    .line 8
    invoke-static {p0, p2, p1}, Lt/h;->i(ILs/e;Lt/b$b;)V

    return-void
.end method

.method private static g(ILs/e;Lt/b$b;Ls/e;)V
    .registers 11

    .line 1
    invoke-virtual {p3}, Ls/e;->P()F

    move-result v0

    .line 2
    iget-object v1, p3, Ls/e;->P:Ls/d;

    iget-object v1, v1, Ls/d;->f:Ls/d;

    invoke-virtual {v1}, Ls/d;->d()I

    move-result v1

    iget-object v2, p3, Ls/e;->P:Ls/d;

    invoke-virtual {v2}, Ls/d;->e()I

    move-result v2

    add-int/2addr v1, v2

    .line 3
    iget-object v2, p3, Ls/e;->R:Ls/d;

    iget-object v2, v2, Ls/d;->f:Ls/d;

    invoke-virtual {v2}, Ls/d;->d()I

    move-result v2

    iget-object v3, p3, Ls/e;->R:Ls/d;

    invoke-virtual {v3}, Ls/d;->e()I

    move-result v3

    sub-int/2addr v2, v3

    if-lt v2, v1, :cond_72

    .line 4
    invoke-virtual {p3}, Ls/e;->v()I

    move-result v3

    .line 5
    invoke-virtual {p3}, Ls/e;->T()I

    move-result v4

    const/16 v5, 0x8

    const/high16 v6, 0x3f000000    # 0.5f

    if-eq v4, v5, :cond_61

    .line 6
    iget v4, p3, Ls/e;->x:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4f

    .line 7
    instance-of v3, p1, Ls/f;

    if-eqz v3, :cond_40

    .line 8
    invoke-virtual {p1}, Ls/e;->v()I

    move-result p1

    goto :goto_48

    .line 9
    :cond_40
    invoke-virtual {p1}, Ls/e;->I()Ls/e;

    move-result-object p1

    invoke-virtual {p1}, Ls/e;->v()I

    move-result p1

    :goto_48
    mul-float v3, v0, v6

    int-to-float p1, p1

    mul-float v3, v3, p1

    float-to-int v3, v3

    goto :goto_53

    :cond_4f
    if-nez v4, :cond_53

    sub-int v3, v2, v1

    .line 10
    :cond_53
    :goto_53
    iget p1, p3, Ls/e;->C:I

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 11
    iget p1, p3, Ls/e;->D:I

    if-lez p1, :cond_61

    .line 12
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_61
    sub-int/2addr v2, v1

    sub-int/2addr v2, v3

    int-to-float p1, v2

    mul-float v0, v0, p1

    add-float/2addr v0, v6

    float-to-int p1, v0

    add-int/2addr v1, p1

    add-int/2addr v3, v1

    .line 13
    invoke-virtual {p3, v1, v3}, Ls/e;->F0(II)V

    add-int/lit8 p0, p0, 0x1

    .line 14
    invoke-static {p0, p3, p2}, Lt/h;->i(ILs/e;Lt/b$b;)V

    :cond_72
    return-void
.end method

.method public static h(Ls/f;Lt/b$b;)V
    .registers 15

    .line 1
    invoke-virtual {p0}, Ls/e;->y()Ls/e$b;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ls/e;->R()Ls/e$b;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    sput v2, Lt/h;->b:I

    .line 4
    sput v2, Lt/h;->c:I

    .line 5
    invoke-virtual {p0}, Ls/e;->s0()V

    .line 6
    invoke-virtual {p0}, Ls/l;->o1()Ljava/util/ArrayList;

    move-result-object v3

    .line 7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_19
    if-ge v5, v4, :cond_27

    .line 8
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ls/e;

    .line 9
    invoke-virtual {v6}, Ls/e;->s0()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    .line 10
    :cond_27
    invoke-virtual {p0}, Ls/f;->L1()Z

    move-result v5

    .line 11
    sget-object v6, Ls/e$b;->o:Ls/e$b;

    if-ne v0, v6, :cond_37

    .line 12
    invoke-virtual {p0}, Ls/e;->U()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Ls/e;->C0(II)V

    goto :goto_3a

    .line 13
    :cond_37
    invoke-virtual {p0, v2}, Ls/e;->D0(I)V

    :goto_3a
    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_3d
    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, -0x1

    const/4 v10, 0x1

    if-ge v0, v4, :cond_a4

    .line 14
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ls/e;

    .line 15
    instance-of v12, v11, Ls/g;

    if-eqz v12, :cond_94

    .line 16
    check-cast v11, Ls/g;

    .line 17
    invoke-virtual {v11}, Ls/g;->p1()I

    move-result v12

    if-ne v12, v10, :cond_a1

    .line 18
    invoke-virtual {v11}, Ls/g;->q1()I

    move-result v6

    if-eq v6, v9, :cond_63

    .line 19
    invoke-virtual {v11}, Ls/g;->q1()I

    move-result v6

    invoke-virtual {v11, v6}, Ls/g;->t1(I)V

    goto :goto_92

    .line 20
    :cond_63
    invoke-virtual {v11}, Ls/g;->r1()I

    move-result v6

    if-eq v6, v9, :cond_7c

    invoke-virtual {p0}, Ls/e;->l0()Z

    move-result v6

    if-eqz v6, :cond_7c

    .line 21
    invoke-virtual {p0}, Ls/e;->U()I

    move-result v6

    invoke-virtual {v11}, Ls/g;->r1()I

    move-result v8

    sub-int/2addr v6, v8

    invoke-virtual {v11, v6}, Ls/g;->t1(I)V

    goto :goto_92

    .line 22
    :cond_7c
    invoke-virtual {p0}, Ls/e;->l0()Z

    move-result v6

    if-eqz v6, :cond_92

    .line 23
    invoke-virtual {v11}, Ls/g;->s1()F

    move-result v6

    invoke-virtual {p0}, Ls/e;->U()I

    move-result v9

    int-to-float v9, v9

    mul-float v6, v6, v9

    add-float/2addr v6, v8

    float-to-int v6, v6

    .line 24
    invoke-virtual {v11, v6}, Ls/g;->t1(I)V

    :cond_92
    :goto_92
    const/4 v6, 0x1

    goto :goto_a1

    .line 25
    :cond_94
    instance-of v8, v11, Ls/a;

    if-eqz v8, :cond_a1

    .line 26
    check-cast v11, Ls/a;

    .line 27
    invoke-virtual {v11}, Ls/a;->u1()I

    move-result v8

    if-nez v8, :cond_a1

    const/4 v7, 0x1

    :cond_a1
    :goto_a1
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    :cond_a4
    if-eqz v6, :cond_c1

    const/4 v0, 0x0

    :goto_a7
    if-ge v0, v4, :cond_c1

    .line 28
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ls/e;

    .line 29
    instance-of v11, v6, Ls/g;

    if-eqz v11, :cond_be

    .line 30
    check-cast v6, Ls/g;

    .line 31
    invoke-virtual {v6}, Ls/g;->p1()I

    move-result v11

    if-ne v11, v10, :cond_be

    .line 32
    invoke-static {v2, v6, p1, v5}, Lt/h;->b(ILs/e;Lt/b$b;Z)V

    :cond_be
    add-int/lit8 v0, v0, 0x1

    goto :goto_a7

    .line 33
    :cond_c1
    invoke-static {v2, p0, p1, v5}, Lt/h;->b(ILs/e;Lt/b$b;Z)V

    if-eqz v7, :cond_e1

    const/4 v0, 0x0

    :goto_c7
    if-ge v0, v4, :cond_e1

    .line 34
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ls/e;

    .line 35
    instance-of v7, v6, Ls/a;

    if-eqz v7, :cond_de

    .line 36
    check-cast v6, Ls/a;

    .line 37
    invoke-virtual {v6}, Ls/a;->u1()I

    move-result v7

    if-nez v7, :cond_de

    .line 38
    invoke-static {v2, v6, p1, v2, v5}, Lt/h;->c(ILs/a;Lt/b$b;IZ)V

    :cond_de
    add-int/lit8 v0, v0, 0x1

    goto :goto_c7

    .line 39
    :cond_e1
    sget-object v0, Ls/e$b;->o:Ls/e$b;

    if-ne v1, v0, :cond_ed

    .line 40
    invoke-virtual {p0}, Ls/e;->v()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Ls/e;->F0(II)V

    goto :goto_f0

    .line 41
    :cond_ed
    invoke-virtual {p0, v2}, Ls/e;->E0(I)V

    :goto_f0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x0

    :goto_f3
    if-ge v0, v4, :cond_156

    .line 42
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ls/e;

    .line 43
    instance-of v11, v7, Ls/g;

    if-eqz v11, :cond_146

    .line 44
    check-cast v7, Ls/g;

    .line 45
    invoke-virtual {v7}, Ls/g;->p1()I

    move-result v11

    if-nez v11, :cond_153

    .line 46
    invoke-virtual {v7}, Ls/g;->q1()I

    move-result v1

    if-eq v1, v9, :cond_115

    .line 47
    invoke-virtual {v7}, Ls/g;->q1()I

    move-result v1

    invoke-virtual {v7, v1}, Ls/g;->t1(I)V

    goto :goto_144

    .line 48
    :cond_115
    invoke-virtual {v7}, Ls/g;->r1()I

    move-result v1

    if-eq v1, v9, :cond_12e

    invoke-virtual {p0}, Ls/e;->m0()Z

    move-result v1

    if-eqz v1, :cond_12e

    .line 49
    invoke-virtual {p0}, Ls/e;->v()I

    move-result v1

    invoke-virtual {v7}, Ls/g;->r1()I

    move-result v11

    sub-int/2addr v1, v11

    invoke-virtual {v7, v1}, Ls/g;->t1(I)V

    goto :goto_144

    .line 50
    :cond_12e
    invoke-virtual {p0}, Ls/e;->m0()Z

    move-result v1

    if-eqz v1, :cond_144

    .line 51
    invoke-virtual {v7}, Ls/g;->s1()F

    move-result v1

    invoke-virtual {p0}, Ls/e;->v()I

    move-result v11

    int-to-float v11, v11

    mul-float v1, v1, v11

    add-float/2addr v1, v8

    float-to-int v1, v1

    .line 52
    invoke-virtual {v7, v1}, Ls/g;->t1(I)V

    :cond_144
    :goto_144
    const/4 v1, 0x1

    goto :goto_153

    .line 53
    :cond_146
    instance-of v11, v7, Ls/a;

    if-eqz v11, :cond_153

    .line 54
    check-cast v7, Ls/a;

    .line 55
    invoke-virtual {v7}, Ls/a;->u1()I

    move-result v7

    if-ne v7, v10, :cond_153

    const/4 v6, 0x1

    :cond_153
    :goto_153
    add-int/lit8 v0, v0, 0x1

    goto :goto_f3

    :cond_156
    if-eqz v1, :cond_173

    const/4 v0, 0x0

    :goto_159
    if-ge v0, v4, :cond_173

    .line 56
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls/e;

    .line 57
    instance-of v7, v1, Ls/g;

    if-eqz v7, :cond_170

    .line 58
    check-cast v1, Ls/g;

    .line 59
    invoke-virtual {v1}, Ls/g;->p1()I

    move-result v7

    if-nez v7, :cond_170

    .line 60
    invoke-static {v10, v1, p1}, Lt/h;->i(ILs/e;Lt/b$b;)V

    :cond_170
    add-int/lit8 v0, v0, 0x1

    goto :goto_159

    .line 61
    :cond_173
    invoke-static {v2, p0, p1}, Lt/h;->i(ILs/e;Lt/b$b;)V

    if-eqz v6, :cond_193

    const/4 p0, 0x0

    :goto_179
    if-ge p0, v4, :cond_193

    .line 62
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls/e;

    .line 63
    instance-of v1, v0, Ls/a;

    if-eqz v1, :cond_190

    .line 64
    check-cast v0, Ls/a;

    .line 65
    invoke-virtual {v0}, Ls/a;->u1()I

    move-result v1

    if-ne v1, v10, :cond_190

    .line 66
    invoke-static {v2, v0, p1, v10, v5}, Lt/h;->c(ILs/a;Lt/b$b;IZ)V

    :cond_190
    add-int/lit8 p0, p0, 0x1

    goto :goto_179

    :cond_193
    const/4 p0, 0x0

    :goto_194
    if-ge p0, v4, :cond_1cd

    .line 67
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls/e;

    .line 68
    invoke-virtual {v0}, Ls/e;->k0()Z

    move-result v1

    if-eqz v1, :cond_1ca

    invoke-static {v2, v0}, Lt/h;->a(ILs/e;)Z

    move-result v1

    if-eqz v1, :cond_1ca

    .line 69
    sget-object v1, Lt/h;->a:Lt/b$a;

    sget v6, Lt/b$a;->k:I

    invoke-static {v2, v0, p1, v1, v6}, Ls/f;->O1(ILs/e;Lt/b$b;Lt/b$a;I)Z

    .line 70
    instance-of v1, v0, Ls/g;

    if-eqz v1, :cond_1c4

    .line 71
    move-object v1, v0

    check-cast v1, Ls/g;

    invoke-virtual {v1}, Ls/g;->p1()I

    move-result v1

    if-nez v1, :cond_1c0

    .line 72
    invoke-static {v2, v0, p1}, Lt/h;->i(ILs/e;Lt/b$b;)V

    goto :goto_1ca

    .line 73
    :cond_1c0
    invoke-static {v2, v0, p1, v5}, Lt/h;->b(ILs/e;Lt/b$b;Z)V

    goto :goto_1ca

    .line 74
    :cond_1c4
    invoke-static {v2, v0, p1, v5}, Lt/h;->b(ILs/e;Lt/b$b;Z)V

    .line 75
    invoke-static {v2, v0, p1}, Lt/h;->i(ILs/e;Lt/b$b;)V

    :cond_1ca
    :goto_1ca
    add-int/lit8 p0, p0, 0x1

    goto :goto_194

    :cond_1cd
    return-void
.end method

.method private static i(ILs/e;Lt/b$b;)V
    .registers 19

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1
    invoke-virtual/range {p1 .. p1}, Ls/e;->n0()Z

    move-result v2

    if-eqz v2, :cond_b

    return-void

    .line 2
    :cond_b
    sget v2, Lt/h;->c:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    sput v2, Lt/h;->c:I

    .line 3
    instance-of v2, v0, Ls/f;

    if-nez v2, :cond_2d

    invoke-virtual/range {p1 .. p1}, Ls/e;->k0()Z

    move-result v2

    if-eqz v2, :cond_2d

    add-int/lit8 v2, p0, 0x1

    invoke-static {v2, v0}, Lt/h;->a(ILs/e;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 4
    new-instance v4, Lt/b$a;

    invoke-direct {v4}, Lt/b$a;-><init>()V

    .line 5
    sget v5, Lt/b$a;->k:I

    invoke-static {v2, v0, v1, v4, v5}, Ls/f;->O1(ILs/e;Lt/b$b;Lt/b$a;I)Z

    .line 6
    :cond_2d
    sget-object v2, Ls/d$b;->q:Ls/d$b;

    invoke-virtual {v0, v2}, Ls/e;->m(Ls/d$b;)Ls/d;

    move-result-object v2

    .line 7
    sget-object v4, Ls/d$b;->s:Ls/d$b;

    invoke-virtual {v0, v4}, Ls/e;->m(Ls/d$b;)Ls/d;

    move-result-object v4

    .line 8
    invoke-virtual {v2}, Ls/d;->d()I

    move-result v5

    .line 9
    invoke-virtual {v4}, Ls/d;->d()I

    move-result v6

    .line 10
    invoke-virtual {v2}, Ls/d;->c()Ljava/util/HashSet;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v9, 0x8

    if-eqz v7, :cond_132

    invoke-virtual {v2}, Ls/d;->m()Z

    move-result v7

    if-eqz v7, :cond_132

    .line 11
    invoke-virtual {v2}, Ls/d;->c()Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_58
    :goto_58
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_132

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ls/d;

    .line 12
    iget-object v11, v7, Ls/d;->d:Ls/e;

    add-int/lit8 v12, p0, 0x1

    .line 13
    invoke-static {v12, v11}, Lt/h;->a(ILs/e;)Z

    move-result v13

    .line 14
    invoke-virtual {v11}, Ls/e;->k0()Z

    move-result v14

    if-eqz v14, :cond_7e

    if-eqz v13, :cond_7e

    .line 15
    new-instance v14, Lt/b$a;

    invoke-direct {v14}, Lt/b$a;-><init>()V

    .line 16
    sget v15, Lt/b$a;->k:I

    invoke-static {v12, v11, v1, v14, v15}, Ls/f;->O1(ILs/e;Lt/b$b;Lt/b$a;I)Z

    .line 17
    :cond_7e
    iget-object v14, v11, Ls/e;->P:Ls/d;

    if-ne v7, v14, :cond_8e

    iget-object v14, v11, Ls/e;->R:Ls/d;

    iget-object v14, v14, Ls/d;->f:Ls/d;

    if-eqz v14, :cond_8e

    invoke-virtual {v14}, Ls/d;->m()Z

    move-result v14

    if-nez v14, :cond_9e

    :cond_8e
    iget-object v14, v11, Ls/e;->R:Ls/d;

    if-ne v7, v14, :cond_a0

    iget-object v14, v11, Ls/e;->P:Ls/d;

    iget-object v14, v14, Ls/d;->f:Ls/d;

    if-eqz v14, :cond_a0

    .line 18
    invoke-virtual {v14}, Ls/d;->m()Z

    move-result v14

    if-eqz v14, :cond_a0

    :cond_9e
    const/4 v14, 0x1

    goto :goto_a1

    :cond_a0
    const/4 v14, 0x0

    .line 19
    :goto_a1
    invoke-virtual {v11}, Ls/e;->R()Ls/e$b;

    move-result-object v15

    sget-object v10, Ls/e$b;->q:Ls/e$b;

    if-ne v15, v10, :cond_e5

    if-eqz v13, :cond_ac

    goto :goto_e5

    .line 20
    :cond_ac
    invoke-virtual {v11}, Ls/e;->R()Ls/e$b;

    move-result-object v7

    if-ne v7, v10, :cond_58

    iget v7, v11, Ls/e;->D:I

    if-ltz v7, :cond_58

    iget v7, v11, Ls/e;->C:I

    if-ltz v7, :cond_58

    .line 21
    invoke-virtual {v11}, Ls/e;->T()I

    move-result v7

    if-eq v7, v9, :cond_cc

    iget v7, v11, Ls/e;->x:I

    if-nez v7, :cond_58

    invoke-virtual {v11}, Ls/e;->t()F

    move-result v7

    cmpl-float v7, v7, v8

    if-nez v7, :cond_58

    .line 22
    :cond_cc
    invoke-virtual {v11}, Ls/e;->i0()Z

    move-result v7

    if-nez v7, :cond_58

    invoke-virtual {v11}, Ls/e;->j0()Z

    move-result v7

    if-nez v7, :cond_58

    if-eqz v14, :cond_58

    .line 23
    invoke-virtual {v11}, Ls/e;->i0()Z

    move-result v7

    if-nez v7, :cond_58

    .line 24
    invoke-static {v12, v0, v1, v11}, Lt/h;->g(ILs/e;Lt/b$b;Ls/e;)V

    goto/16 :goto_58

    .line 25
    :cond_e5
    :goto_e5
    invoke-virtual {v11}, Ls/e;->k0()Z

    move-result v10

    if-eqz v10, :cond_ed

    goto/16 :goto_58

    .line 26
    :cond_ed
    iget-object v10, v11, Ls/e;->P:Ls/d;

    if-ne v7, v10, :cond_109

    iget-object v13, v11, Ls/e;->R:Ls/d;

    iget-object v13, v13, Ls/d;->f:Ls/d;

    if-nez v13, :cond_109

    .line 27
    invoke-virtual {v10}, Ls/d;->e()I

    move-result v7

    add-int/2addr v7, v5

    .line 28
    invoke-virtual {v11}, Ls/e;->v()I

    move-result v10

    add-int/2addr v10, v7

    .line 29
    invoke-virtual {v11, v7, v10}, Ls/e;->F0(II)V

    .line 30
    invoke-static {v12, v11, v1}, Lt/h;->i(ILs/e;Lt/b$b;)V

    goto/16 :goto_58

    .line 31
    :cond_109
    iget-object v13, v11, Ls/e;->R:Ls/d;

    if-ne v7, v13, :cond_125

    iget-object v7, v10, Ls/d;->f:Ls/d;

    if-nez v7, :cond_125

    .line 32
    invoke-virtual {v13}, Ls/d;->e()I

    move-result v7

    sub-int v7, v5, v7

    .line 33
    invoke-virtual {v11}, Ls/e;->v()I

    move-result v10

    sub-int v10, v7, v10

    .line 34
    invoke-virtual {v11, v10, v7}, Ls/e;->F0(II)V

    .line 35
    invoke-static {v12, v11, v1}, Lt/h;->i(ILs/e;Lt/b$b;)V

    goto/16 :goto_58

    :cond_125
    if-eqz v14, :cond_58

    .line 36
    invoke-virtual {v11}, Ls/e;->i0()Z

    move-result v7

    if-nez v7, :cond_58

    .line 37
    invoke-static {v12, v1, v11}, Lt/h;->f(ILt/b$b;Ls/e;)V

    goto/16 :goto_58

    .line 38
    :cond_132
    instance-of v2, v0, Ls/g;

    if-eqz v2, :cond_137

    return-void

    .line 39
    :cond_137
    invoke-virtual {v4}, Ls/d;->c()Ljava/util/HashSet;

    move-result-object v2

    if-eqz v2, :cond_225

    invoke-virtual {v4}, Ls/d;->m()Z

    move-result v2

    if-eqz v2, :cond_225

    .line 40
    invoke-virtual {v4}, Ls/d;->c()Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14b
    :goto_14b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_225

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls/d;

    .line 41
    iget-object v5, v4, Ls/d;->d:Ls/e;

    add-int/lit8 v7, p0, 0x1

    .line 42
    invoke-static {v7, v5}, Lt/h;->a(ILs/e;)Z

    move-result v10

    .line 43
    invoke-virtual {v5}, Ls/e;->k0()Z

    move-result v11

    if-eqz v11, :cond_171

    if-eqz v10, :cond_171

    .line 44
    new-instance v11, Lt/b$a;

    invoke-direct {v11}, Lt/b$a;-><init>()V

    .line 45
    sget v12, Lt/b$a;->k:I

    invoke-static {v7, v5, v1, v11, v12}, Ls/f;->O1(ILs/e;Lt/b$b;Lt/b$a;I)Z

    .line 46
    :cond_171
    iget-object v11, v5, Ls/e;->P:Ls/d;

    if-ne v4, v11, :cond_181

    iget-object v11, v5, Ls/e;->R:Ls/d;

    iget-object v11, v11, Ls/d;->f:Ls/d;

    if-eqz v11, :cond_181

    invoke-virtual {v11}, Ls/d;->m()Z

    move-result v11

    if-nez v11, :cond_191

    :cond_181
    iget-object v11, v5, Ls/e;->R:Ls/d;

    if-ne v4, v11, :cond_193

    iget-object v11, v5, Ls/e;->P:Ls/d;

    iget-object v11, v11, Ls/d;->f:Ls/d;

    if-eqz v11, :cond_193

    .line 47
    invoke-virtual {v11}, Ls/d;->m()Z

    move-result v11

    if-eqz v11, :cond_193

    :cond_191
    const/4 v11, 0x1

    goto :goto_194

    :cond_193
    const/4 v11, 0x0

    .line 48
    :goto_194
    invoke-virtual {v5}, Ls/e;->R()Ls/e$b;

    move-result-object v12

    sget-object v13, Ls/e$b;->q:Ls/e$b;

    if-ne v12, v13, :cond_1d8

    if-eqz v10, :cond_19f

    goto :goto_1d8

    .line 49
    :cond_19f
    invoke-virtual {v5}, Ls/e;->R()Ls/e$b;

    move-result-object v4

    if-ne v4, v13, :cond_14b

    iget v4, v5, Ls/e;->D:I

    if-ltz v4, :cond_14b

    iget v4, v5, Ls/e;->C:I

    if-ltz v4, :cond_14b

    .line 50
    invoke-virtual {v5}, Ls/e;->T()I

    move-result v4

    if-eq v4, v9, :cond_1bf

    iget v4, v5, Ls/e;->x:I

    if-nez v4, :cond_14b

    invoke-virtual {v5}, Ls/e;->t()F

    move-result v4

    cmpl-float v4, v4, v8

    if-nez v4, :cond_14b

    .line 51
    :cond_1bf
    invoke-virtual {v5}, Ls/e;->i0()Z

    move-result v4

    if-nez v4, :cond_14b

    invoke-virtual {v5}, Ls/e;->j0()Z

    move-result v4

    if-nez v4, :cond_14b

    if-eqz v11, :cond_14b

    .line 52
    invoke-virtual {v5}, Ls/e;->i0()Z

    move-result v4

    if-nez v4, :cond_14b

    .line 53
    invoke-static {v7, v0, v1, v5}, Lt/h;->g(ILs/e;Lt/b$b;Ls/e;)V

    goto/16 :goto_14b

    .line 54
    :cond_1d8
    :goto_1d8
    invoke-virtual {v5}, Ls/e;->k0()Z

    move-result v10

    if-eqz v10, :cond_1e0

    goto/16 :goto_14b

    .line 55
    :cond_1e0
    iget-object v10, v5, Ls/e;->P:Ls/d;

    if-ne v4, v10, :cond_1fc

    iget-object v12, v5, Ls/e;->R:Ls/d;

    iget-object v12, v12, Ls/d;->f:Ls/d;

    if-nez v12, :cond_1fc

    .line 56
    invoke-virtual {v10}, Ls/d;->e()I

    move-result v4

    add-int/2addr v4, v6

    .line 57
    invoke-virtual {v5}, Ls/e;->v()I

    move-result v10

    add-int/2addr v10, v4

    .line 58
    invoke-virtual {v5, v4, v10}, Ls/e;->F0(II)V

    .line 59
    invoke-static {v7, v5, v1}, Lt/h;->i(ILs/e;Lt/b$b;)V

    goto/16 :goto_14b

    .line 60
    :cond_1fc
    iget-object v12, v5, Ls/e;->R:Ls/d;

    if-ne v4, v12, :cond_218

    iget-object v4, v10, Ls/d;->f:Ls/d;

    if-nez v4, :cond_218

    .line 61
    invoke-virtual {v12}, Ls/d;->e()I

    move-result v4

    sub-int v4, v6, v4

    .line 62
    invoke-virtual {v5}, Ls/e;->v()I

    move-result v10

    sub-int v10, v4, v10

    .line 63
    invoke-virtual {v5, v10, v4}, Ls/e;->F0(II)V

    .line 64
    invoke-static {v7, v5, v1}, Lt/h;->i(ILs/e;Lt/b$b;)V

    goto/16 :goto_14b

    :cond_218
    if-eqz v11, :cond_14b

    .line 65
    invoke-virtual {v5}, Ls/e;->i0()Z

    move-result v4

    if-nez v4, :cond_14b

    .line 66
    invoke-static {v7, v1, v5}, Lt/h;->f(ILt/b$b;Ls/e;)V

    goto/16 :goto_14b

    .line 67
    :cond_225
    sget-object v2, Ls/d$b;->t:Ls/d$b;

    invoke-virtual {v0, v2}, Ls/e;->m(Ls/d$b;)Ls/d;

    move-result-object v2

    .line 68
    invoke-virtual {v2}, Ls/d;->c()Ljava/util/HashSet;

    move-result-object v4

    if-eqz v4, :cond_28a

    invoke-virtual {v2}, Ls/d;->m()Z

    move-result v4

    if-eqz v4, :cond_28a

    .line 69
    invoke-virtual {v2}, Ls/d;->d()I

    move-result v4

    .line 70
    invoke-virtual {v2}, Ls/d;->c()Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_243
    :goto_243
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_28a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls/d;

    .line 71
    iget-object v6, v5, Ls/d;->d:Ls/e;

    add-int/lit8 v7, p0, 0x1

    .line 72
    invoke-static {v7, v6}, Lt/h;->a(ILs/e;)Z

    move-result v8

    .line 73
    invoke-virtual {v6}, Ls/e;->k0()Z

    move-result v9

    if-eqz v9, :cond_269

    if-eqz v8, :cond_269

    .line 74
    new-instance v9, Lt/b$a;

    invoke-direct {v9}, Lt/b$a;-><init>()V

    .line 75
    sget v10, Lt/b$a;->k:I

    invoke-static {v7, v6, v1, v9, v10}, Ls/f;->O1(ILs/e;Lt/b$b;Lt/b$a;I)Z

    .line 76
    :cond_269
    invoke-virtual {v6}, Ls/e;->R()Ls/e$b;

    move-result-object v9

    sget-object v10, Ls/e$b;->q:Ls/e$b;

    if-ne v9, v10, :cond_273

    if-eqz v8, :cond_243

    .line 77
    :cond_273
    invoke-virtual {v6}, Ls/e;->k0()Z

    move-result v8

    if-eqz v8, :cond_27a

    goto :goto_243

    .line 78
    :cond_27a
    iget-object v8, v6, Ls/e;->S:Ls/d;

    if-ne v5, v8, :cond_243

    .line 79
    invoke-virtual {v5}, Ls/d;->e()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v6, v5}, Ls/e;->B0(I)V

    .line 80
    :try_start_286
    invoke-static {v7, v6, v1}, Lt/h;->i(ILs/e;Lt/b$b;)V
    :try_end_289
    .catchall {:try_start_286 .. :try_end_289} :catchall_28e

    goto :goto_243

    .line 81
    :cond_28a
    invoke-virtual/range {p1 .. p1}, Ls/e;->p0()V

    return-void

    :catchall_28e
    move-exception v0

    move-object v1, v0

    .line 82
    goto :goto_292

    :goto_291
    throw v1

    :goto_292
    goto :goto_291
.end method
