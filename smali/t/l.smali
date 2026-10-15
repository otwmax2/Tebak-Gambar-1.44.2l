###### Class t.l (t.l)
.class public Lt/l;
.super Lt/p;
.source "HorizontalWidgetRun.java"


# static fields
.field private static k:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    sput-object v0, Lt/l;->k:[I

    return-void
.end method

.method public constructor <init>(Ls/e;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lt/p;-><init>(Ls/e;)V

    .line 2
    iget-object p1, p0, Lt/p;->h:Lt/f;

    sget-object v0, Lt/f$a;->r:Lt/f$a;

    iput-object v0, p1, Lt/f;->e:Lt/f$a;

    .line 3
    iget-object p1, p0, Lt/p;->i:Lt/f;

    sget-object v0, Lt/f$a;->s:Lt/f$a;

    iput-object v0, p1, Lt/f;->e:Lt/f$a;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lt/p;->f:I

    return-void
.end method

.method private q([IIIIIFI)V
    .registers 10

    sub-int/2addr p3, p2

    sub-int/2addr p5, p4

    const/4 p2, -0x1

    const/4 p4, 0x0

    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v1, 0x1

    if-eq p7, p2, :cond_22

    if-eqz p7, :cond_18

    if-eq p7, v1, :cond_e

    goto :goto_38

    :cond_e
    int-to-float p2, p3

    mul-float p2, p2, p6

    add-float/2addr p2, v0

    float-to-int p2, p2

    .line 1
    aput p3, p1, p4

    .line 2
    aput p2, p1, v1

    goto :goto_38

    :cond_18
    int-to-float p2, p5

    mul-float p2, p2, p6

    add-float/2addr p2, v0

    float-to-int p2, p2

    .line 3
    aput p2, p1, p4

    .line 4
    aput p5, p1, v1

    goto :goto_38

    :cond_22
    int-to-float p2, p5

    mul-float p2, p2, p6

    add-float/2addr p2, v0

    float-to-int p2, p2

    int-to-float p7, p3

    div-float/2addr p7, p6

    add-float/2addr p7, v0

    float-to-int p6, p7

    if-gt p2, p3, :cond_32

    .line 5
    aput p2, p1, p4

    .line 6
    aput p5, p1, v1

    goto :goto_38

    :cond_32
    if-gt p6, p5, :cond_38

    .line 7
    aput p3, p1, p4

    .line 8
    aput p6, p1, v1

    :cond_38
    :goto_38
    return-void
.end method


# virtual methods
.method public a(Lt/d;)V
    .registers 18

    move-object/from16 v8, p0

    .line 1
    sget-object v0, Lt/l$a;->a:[I

    iget-object v1, v8, Lt/p;->j:Lt/p$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq v0, v9, :cond_29

    if-eq v0, v1, :cond_23

    if-eq v0, v2, :cond_17

    goto :goto_2e

    .line 2
    :cond_17
    iget-object v0, v8, Lt/p;->b:Ls/e;

    iget-object v1, v0, Ls/e;->O:Ls/d;

    iget-object v0, v0, Ls/e;->Q:Ls/d;

    move-object/from16 v3, p1

    invoke-virtual {v8, v3, v1, v0, v10}, Lt/p;->n(Lt/d;Ls/d;Ls/d;I)V

    return-void

    :cond_23
    move-object/from16 v3, p1

    .line 3
    invoke-virtual/range {p0 .. p1}, Lt/p;->o(Lt/d;)V

    goto :goto_2e

    :cond_29
    move-object/from16 v3, p1

    .line 4
    invoke-virtual/range {p0 .. p1}, Lt/p;->p(Lt/d;)V

    .line 5
    :goto_2e
    iget-object v0, v8, Lt/p;->e:Lt/g;

    iget-boolean v0, v0, Lt/f;->j:Z

    const/high16 v11, 0x3f000000    # 0.5f

    if-nez v0, :cond_324

    .line 6
    iget-object v0, v8, Lt/p;->d:Ls/e$b;

    sget-object v3, Ls/e$b;->q:Ls/e$b;

    if-ne v0, v3, :cond_324

    .line 7
    iget-object v0, v8, Lt/p;->b:Ls/e;

    iget v3, v0, Ls/e;->w:I

    if-eq v3, v1, :cond_306

    if-eq v3, v2, :cond_46

    goto/16 :goto_324

    .line 8
    :cond_46
    iget v1, v0, Ls/e;->x:I

    const/4 v3, -0x1

    if-eqz v1, :cond_8f

    if-ne v1, v2, :cond_4e

    goto :goto_8f

    .line 9
    :cond_4e
    invoke-virtual {v0}, Ls/e;->u()I

    move-result v0

    if-eq v0, v3, :cond_77

    if-eqz v0, :cond_68

    if-eq v0, v9, :cond_5a

    const/4 v0, 0x0

    goto :goto_88

    .line 10
    :cond_5a
    iget-object v0, v8, Lt/p;->b:Ls/e;

    iget-object v1, v0, Ls/e;->f:Lt/n;

    iget-object v1, v1, Lt/p;->e:Lt/g;

    iget v1, v1, Lt/f;->g:I

    int-to-float v1, v1

    invoke-virtual {v0}, Ls/e;->t()F

    move-result v0

    goto :goto_84

    .line 11
    :cond_68
    iget-object v0, v8, Lt/p;->b:Ls/e;

    iget-object v1, v0, Ls/e;->f:Lt/n;

    iget-object v1, v1, Lt/p;->e:Lt/g;

    iget v1, v1, Lt/f;->g:I

    int-to-float v1, v1

    invoke-virtual {v0}, Ls/e;->t()F

    move-result v0

    div-float/2addr v1, v0

    goto :goto_86

    .line 12
    :cond_77
    iget-object v0, v8, Lt/p;->b:Ls/e;

    iget-object v1, v0, Ls/e;->f:Lt/n;

    iget-object v1, v1, Lt/p;->e:Lt/g;

    iget v1, v1, Lt/f;->g:I

    int-to-float v1, v1

    invoke-virtual {v0}, Ls/e;->t()F

    move-result v0

    :goto_84
    mul-float v1, v1, v0

    :goto_86
    add-float/2addr v1, v11

    float-to-int v0, v1

    .line 13
    :goto_88
    iget-object v1, v8, Lt/p;->e:Lt/g;

    invoke-virtual {v1, v0}, Lt/g;->d(I)V

    goto/16 :goto_324

    .line 14
    :cond_8f
    :goto_8f
    iget-object v1, v0, Ls/e;->f:Lt/n;

    iget-object v12, v1, Lt/p;->h:Lt/f;

    .line 15
    iget-object v13, v1, Lt/p;->i:Lt/f;

    .line 16
    iget-object v1, v0, Ls/e;->O:Ls/d;

    iget-object v1, v1, Ls/d;->f:Ls/d;

    if-eqz v1, :cond_9d

    const/4 v1, 0x1

    goto :goto_9e

    :cond_9d
    const/4 v1, 0x0

    .line 17
    :goto_9e
    iget-object v2, v0, Ls/e;->P:Ls/d;

    iget-object v2, v2, Ls/d;->f:Ls/d;

    if-eqz v2, :cond_a6

    const/4 v2, 0x1

    goto :goto_a7

    :cond_a6
    const/4 v2, 0x0

    .line 18
    :goto_a7
    iget-object v4, v0, Ls/e;->Q:Ls/d;

    iget-object v4, v4, Ls/d;->f:Ls/d;

    if-eqz v4, :cond_af

    const/4 v4, 0x1

    goto :goto_b0

    :cond_af
    const/4 v4, 0x0

    .line 19
    :goto_b0
    iget-object v5, v0, Ls/e;->R:Ls/d;

    iget-object v5, v5, Ls/d;->f:Ls/d;

    if-eqz v5, :cond_b8

    const/4 v5, 0x1

    goto :goto_b9

    :cond_b8
    const/4 v5, 0x0

    .line 20
    :goto_b9
    invoke-virtual {v0}, Ls/e;->u()I

    move-result v14

    if-eqz v1, :cond_200

    if-eqz v2, :cond_200

    if-eqz v4, :cond_200

    if-eqz v5, :cond_200

    .line 21
    iget-object v0, v8, Lt/p;->b:Ls/e;

    invoke-virtual {v0}, Ls/e;->t()F

    move-result v15

    .line 22
    iget-boolean v0, v12, Lt/f;->j:Z

    if-eqz v0, :cond_12e

    iget-boolean v0, v13, Lt/f;->j:Z

    if-eqz v0, :cond_12e

    .line 23
    iget-object v0, v8, Lt/p;->h:Lt/f;

    iget-boolean v1, v0, Lt/f;->c:Z

    if-eqz v1, :cond_12d

    iget-object v1, v8, Lt/p;->i:Lt/f;

    iget-boolean v1, v1, Lt/f;->c:Z

    if-nez v1, :cond_e0

    goto :goto_12d

    .line 24
    :cond_e0
    iget-object v0, v0, Lt/f;->l:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/f;

    iget v0, v0, Lt/f;->g:I

    iget-object v1, v8, Lt/p;->h:Lt/f;

    iget v1, v1, Lt/f;->f:I

    add-int v2, v0, v1

    .line 25
    iget-object v0, v8, Lt/p;->i:Lt/f;

    iget-object v0, v0, Lt/f;->l:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/f;

    iget v0, v0, Lt/f;->g:I

    iget-object v1, v8, Lt/p;->i:Lt/f;

    iget v1, v1, Lt/f;->f:I

    sub-int v3, v0, v1

    .line 26
    iget v0, v12, Lt/f;->g:I

    iget v1, v12, Lt/f;->f:I

    add-int v4, v0, v1

    .line 27
    iget v0, v13, Lt/f;->g:I

    iget v1, v13, Lt/f;->f:I

    sub-int v5, v0, v1

    .line 28
    sget-object v1, Lt/l;->k:[I

    move-object/from16 v0, p0

    move v6, v15

    move v7, v14

    invoke-direct/range {v0 .. v7}, Lt/l;->q([IIIIIFI)V

    .line 29
    iget-object v0, v8, Lt/p;->e:Lt/g;

    sget-object v1, Lt/l;->k:[I

    aget v1, v1, v10

    invoke-virtual {v0, v1}, Lt/g;->d(I)V

    .line 30
    iget-object v0, v8, Lt/p;->b:Ls/e;

    iget-object v0, v0, Ls/e;->f:Lt/n;

    iget-object v0, v0, Lt/p;->e:Lt/g;

    sget-object v1, Lt/l;->k:[I

    aget v1, v1, v9

    invoke-virtual {v0, v1}, Lt/g;->d(I)V

    :cond_12d
    :goto_12d
    return-void

    .line 31
    :cond_12e
    iget-object v0, v8, Lt/p;->h:Lt/f;

    iget-boolean v1, v0, Lt/f;->j:Z

    if-eqz v1, :cond_18b

    iget-object v1, v8, Lt/p;->i:Lt/f;

    iget-boolean v2, v1, Lt/f;->j:Z

    if-eqz v2, :cond_18b

    .line 32
    iget-boolean v2, v12, Lt/f;->c:Z

    if-eqz v2, :cond_18a

    iget-boolean v2, v13, Lt/f;->c:Z

    if-nez v2, :cond_143

    goto :goto_18a

    .line 33
    :cond_143
    iget v2, v0, Lt/f;->g:I

    iget v0, v0, Lt/f;->f:I

    add-int/2addr v2, v0

    .line 34
    iget v0, v1, Lt/f;->g:I

    iget v1, v1, Lt/f;->f:I

    sub-int v3, v0, v1

    .line 35
    iget-object v0, v12, Lt/f;->l:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/f;

    iget v0, v0, Lt/f;->g:I

    iget v1, v12, Lt/f;->f:I

    add-int v4, v0, v1

    .line 36
    iget-object v0, v13, Lt/f;->l:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/f;

    iget v0, v0, Lt/f;->g:I

    iget v1, v13, Lt/f;->f:I

    sub-int v5, v0, v1

    .line 37
    sget-object v1, Lt/l;->k:[I

    move-object/from16 v0, p0

    move v6, v15

    move v7, v14

    invoke-direct/range {v0 .. v7}, Lt/l;->q([IIIIIFI)V

    .line 38
    iget-object v0, v8, Lt/p;->e:Lt/g;

    sget-object v1, Lt/l;->k:[I

    aget v1, v1, v10

    invoke-virtual {v0, v1}, Lt/g;->d(I)V

    .line 39
    iget-object v0, v8, Lt/p;->b:Ls/e;

    iget-object v0, v0, Ls/e;->f:Lt/n;

    iget-object v0, v0, Lt/p;->e:Lt/g;

    sget-object v1, Lt/l;->k:[I

    aget v1, v1, v9

    invoke-virtual {v0, v1}, Lt/g;->d(I)V

    goto :goto_18b

    :cond_18a
    :goto_18a
    return-void

    .line 40
    :cond_18b
    :goto_18b
    iget-object v0, v8, Lt/p;->h:Lt/f;

    iget-boolean v1, v0, Lt/f;->c:Z

    if-eqz v1, :cond_1ff

    iget-object v1, v8, Lt/p;->i:Lt/f;

    iget-boolean v1, v1, Lt/f;->c:Z

    if-eqz v1, :cond_1ff

    iget-boolean v1, v12, Lt/f;->c:Z

    if-eqz v1, :cond_1ff

    iget-boolean v1, v13, Lt/f;->c:Z

    if-nez v1, :cond_1a0

    goto :goto_1ff

    .line 41
    :cond_1a0
    iget-object v0, v0, Lt/f;->l:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/f;

    iget v0, v0, Lt/f;->g:I

    iget-object v1, v8, Lt/p;->h:Lt/f;

    iget v1, v1, Lt/f;->f:I

    add-int v2, v0, v1

    .line 42
    iget-object v0, v8, Lt/p;->i:Lt/f;

    iget-object v0, v0, Lt/f;->l:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/f;

    iget v0, v0, Lt/f;->g:I

    iget-object v1, v8, Lt/p;->i:Lt/f;

    iget v1, v1, Lt/f;->f:I

    sub-int v3, v0, v1

    .line 43
    iget-object v0, v12, Lt/f;->l:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/f;

    iget v0, v0, Lt/f;->g:I

    iget v1, v12, Lt/f;->f:I

    add-int v4, v0, v1

    .line 44
    iget-object v0, v13, Lt/f;->l:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/f;

    iget v0, v0, Lt/f;->g:I

    iget v1, v13, Lt/f;->f:I

    sub-int v5, v0, v1

    .line 45
    sget-object v1, Lt/l;->k:[I

    move-object/from16 v0, p0

    move v6, v15

    move v7, v14

    invoke-direct/range {v0 .. v7}, Lt/l;->q([IIIIIFI)V

    .line 46
    iget-object v0, v8, Lt/p;->e:Lt/g;

    sget-object v1, Lt/l;->k:[I

    aget v1, v1, v10

    invoke-virtual {v0, v1}, Lt/g;->d(I)V

    .line 47
    iget-object v0, v8, Lt/p;->b:Ls/e;

    iget-object v0, v0, Ls/e;->f:Lt/n;

    iget-object v0, v0, Lt/p;->e:Lt/g;

    sget-object v1, Lt/l;->k:[I

    aget v1, v1, v9

    invoke-virtual {v0, v1}, Lt/g;->d(I)V

    goto/16 :goto_324

    :cond_1ff
    :goto_1ff
    return-void

    :cond_200
    if-eqz v1, :cond_28b

    if-eqz v4, :cond_28b

    .line 48
    iget-object v0, v8, Lt/p;->h:Lt/f;

    iget-boolean v0, v0, Lt/f;->c:Z

    if-eqz v0, :cond_28a

    iget-object v0, v8, Lt/p;->i:Lt/f;

    iget-boolean v0, v0, Lt/f;->c:Z

    if-nez v0, :cond_212

    goto/16 :goto_28a

    .line 49
    :cond_212
    iget-object v0, v8, Lt/p;->b:Ls/e;

    invoke-virtual {v0}, Ls/e;->t()F

    move-result v0

    .line 50
    iget-object v1, v8, Lt/p;->h:Lt/f;

    iget-object v1, v1, Lt/f;->l:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt/f;

    iget v1, v1, Lt/f;->g:I

    iget-object v2, v8, Lt/p;->h:Lt/f;

    iget v2, v2, Lt/f;->f:I

    add-int/2addr v1, v2

    .line 51
    iget-object v2, v8, Lt/p;->i:Lt/f;

    iget-object v2, v2, Lt/f;->l:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt/f;

    iget v2, v2, Lt/f;->g:I

    iget-object v4, v8, Lt/p;->i:Lt/f;

    iget v4, v4, Lt/f;->f:I

    sub-int/2addr v2, v4

    if-eq v14, v3, :cond_266

    if-eqz v14, :cond_266

    if-eq v14, v9, :cond_242

    goto/16 :goto_324

    :cond_242
    sub-int/2addr v2, v1

    .line 52
    invoke-virtual {v8, v2, v10}, Lt/p;->g(II)I

    move-result v1

    int-to-float v2, v1

    div-float/2addr v2, v0

    add-float/2addr v2, v11

    float-to-int v2, v2

    .line 53
    invoke-virtual {v8, v2, v9}, Lt/p;->g(II)I

    move-result v3

    if-eq v2, v3, :cond_256

    int-to-float v1, v3

    mul-float v1, v1, v0

    add-float/2addr v1, v11

    float-to-int v1, v1

    .line 54
    :cond_256
    iget-object v0, v8, Lt/p;->e:Lt/g;

    invoke-virtual {v0, v1}, Lt/g;->d(I)V

    .line 55
    iget-object v0, v8, Lt/p;->b:Ls/e;

    iget-object v0, v0, Ls/e;->f:Lt/n;

    iget-object v0, v0, Lt/p;->e:Lt/g;

    invoke-virtual {v0, v3}, Lt/g;->d(I)V

    goto/16 :goto_324

    :cond_266
    sub-int/2addr v2, v1

    .line 56
    invoke-virtual {v8, v2, v10}, Lt/p;->g(II)I

    move-result v1

    int-to-float v2, v1

    mul-float v2, v2, v0

    add-float/2addr v2, v11

    float-to-int v2, v2

    .line 57
    invoke-virtual {v8, v2, v9}, Lt/p;->g(II)I

    move-result v3

    if-eq v2, v3, :cond_27a

    int-to-float v1, v3

    div-float/2addr v1, v0

    add-float/2addr v1, v11

    float-to-int v1, v1

    .line 58
    :cond_27a
    iget-object v0, v8, Lt/p;->e:Lt/g;

    invoke-virtual {v0, v1}, Lt/g;->d(I)V

    .line 59
    iget-object v0, v8, Lt/p;->b:Ls/e;

    iget-object v0, v0, Ls/e;->f:Lt/n;

    iget-object v0, v0, Lt/p;->e:Lt/g;

    invoke-virtual {v0, v3}, Lt/g;->d(I)V

    goto/16 :goto_324

    :cond_28a
    :goto_28a
    return-void

    :cond_28b
    if-eqz v2, :cond_324

    if-eqz v5, :cond_324

    .line 60
    iget-boolean v0, v12, Lt/f;->c:Z

    if-eqz v0, :cond_305

    iget-boolean v0, v13, Lt/f;->c:Z

    if-nez v0, :cond_298

    goto :goto_305

    .line 61
    :cond_298
    iget-object v0, v8, Lt/p;->b:Ls/e;

    invoke-virtual {v0}, Ls/e;->t()F

    move-result v0

    .line 62
    iget-object v1, v12, Lt/f;->l:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt/f;

    iget v1, v1, Lt/f;->g:I

    iget v2, v12, Lt/f;->f:I

    add-int/2addr v1, v2

    .line 63
    iget-object v2, v13, Lt/f;->l:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt/f;

    iget v2, v2, Lt/f;->g:I

    iget v4, v13, Lt/f;->f:I

    sub-int/2addr v2, v4

    if-eq v14, v3, :cond_2e2

    if-eqz v14, :cond_2bf

    if-eq v14, v9, :cond_2e2

    goto :goto_324

    :cond_2bf
    sub-int/2addr v2, v1

    .line 64
    invoke-virtual {v8, v2, v9}, Lt/p;->g(II)I

    move-result v1

    int-to-float v2, v1

    mul-float v2, v2, v0

    add-float/2addr v2, v11

    float-to-int v2, v2

    .line 65
    invoke-virtual {v8, v2, v10}, Lt/p;->g(II)I

    move-result v3

    if-eq v2, v3, :cond_2d3

    int-to-float v1, v3

    div-float/2addr v1, v0

    add-float/2addr v1, v11

    float-to-int v1, v1

    .line 66
    :cond_2d3
    iget-object v0, v8, Lt/p;->e:Lt/g;

    invoke-virtual {v0, v3}, Lt/g;->d(I)V

    .line 67
    iget-object v0, v8, Lt/p;->b:Ls/e;

    iget-object v0, v0, Ls/e;->f:Lt/n;

    iget-object v0, v0, Lt/p;->e:Lt/g;

    invoke-virtual {v0, v1}, Lt/g;->d(I)V

    goto :goto_324

    :cond_2e2
    sub-int/2addr v2, v1

    .line 68
    invoke-virtual {v8, v2, v9}, Lt/p;->g(II)I

    move-result v1

    int-to-float v2, v1

    div-float/2addr v2, v0

    add-float/2addr v2, v11

    float-to-int v2, v2

    .line 69
    invoke-virtual {v8, v2, v10}, Lt/p;->g(II)I

    move-result v3

    if-eq v2, v3, :cond_2f6

    int-to-float v1, v3

    mul-float v1, v1, v0

    add-float/2addr v1, v11

    float-to-int v1, v1

    .line 70
    :cond_2f6
    iget-object v0, v8, Lt/p;->e:Lt/g;

    invoke-virtual {v0, v3}, Lt/g;->d(I)V

    .line 71
    iget-object v0, v8, Lt/p;->b:Ls/e;

    iget-object v0, v0, Ls/e;->f:Lt/n;

    iget-object v0, v0, Lt/p;->e:Lt/g;

    invoke-virtual {v0, v1}, Lt/g;->d(I)V

    goto :goto_324

    :cond_305
    :goto_305
    return-void

    .line 72
    :cond_306
    invoke-virtual {v0}, Ls/e;->I()Ls/e;

    move-result-object v0

    if-eqz v0, :cond_324

    .line 73
    iget-object v0, v0, Ls/e;->e:Lt/l;

    iget-object v0, v0, Lt/p;->e:Lt/g;

    iget-boolean v1, v0, Lt/f;->j:Z

    if-eqz v1, :cond_324

    .line 74
    iget-object v1, v8, Lt/p;->b:Ls/e;

    iget v1, v1, Ls/e;->B:F

    .line 75
    iget v0, v0, Lt/f;->g:I

    int-to-float v0, v0

    mul-float v0, v0, v1

    add-float/2addr v0, v11

    float-to-int v0, v0

    .line 76
    iget-object v1, v8, Lt/p;->e:Lt/g;

    invoke-virtual {v1, v0}, Lt/g;->d(I)V

    .line 77
    :cond_324
    :goto_324
    iget-object v0, v8, Lt/p;->h:Lt/f;

    iget-boolean v1, v0, Lt/f;->c:Z

    if-eqz v1, :cond_446

    iget-object v1, v8, Lt/p;->i:Lt/f;

    iget-boolean v2, v1, Lt/f;->c:Z

    if-nez v2, :cond_332

    goto/16 :goto_446

    .line 78
    :cond_332
    iget-boolean v0, v0, Lt/f;->j:Z

    if-eqz v0, :cond_341

    iget-boolean v0, v1, Lt/f;->j:Z

    if-eqz v0, :cond_341

    iget-object v0, v8, Lt/p;->e:Lt/g;

    iget-boolean v0, v0, Lt/f;->j:Z

    if-eqz v0, :cond_341

    return-void

    .line 79
    :cond_341
    iget-object v0, v8, Lt/p;->e:Lt/g;

    iget-boolean v0, v0, Lt/f;->j:Z

    if-nez v0, :cond_38b

    iget-object v0, v8, Lt/p;->d:Ls/e$b;

    sget-object v1, Ls/e$b;->q:Ls/e$b;

    if-ne v0, v1, :cond_38b

    iget-object v0, v8, Lt/p;->b:Ls/e;

    iget v1, v0, Ls/e;->w:I

    if-nez v1, :cond_38b

    .line 80
    invoke-virtual {v0}, Ls/e;->g0()Z

    move-result v0

    if-nez v0, :cond_38b

    .line 81
    iget-object v0, v8, Lt/p;->h:Lt/f;

    iget-object v0, v0, Lt/f;->l:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/f;

    .line 82
    iget-object v1, v8, Lt/p;->i:Lt/f;

    iget-object v1, v1, Lt/f;->l:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt/f;

    .line 83
    iget v0, v0, Lt/f;->g:I

    iget-object v2, v8, Lt/p;->h:Lt/f;

    iget v3, v2, Lt/f;->f:I

    add-int/2addr v0, v3

    .line 84
    iget v1, v1, Lt/f;->g:I

    iget-object v3, v8, Lt/p;->i:Lt/f;

    iget v3, v3, Lt/f;->f:I

    add-int/2addr v1, v3

    sub-int v3, v1, v0

    .line 85
    invoke-virtual {v2, v0}, Lt/f;->d(I)V

    .line 86
    iget-object v0, v8, Lt/p;->i:Lt/f;

    invoke-virtual {v0, v1}, Lt/f;->d(I)V

    .line 87
    iget-object v0, v8, Lt/p;->e:Lt/g;

    invoke-virtual {v0, v3}, Lt/g;->d(I)V

    return-void

    .line 88
    :cond_38b
    iget-object v0, v8, Lt/p;->e:Lt/g;

    iget-boolean v0, v0, Lt/f;->j:Z

    if-nez v0, :cond_3ef

    iget-object v0, v8, Lt/p;->d:Ls/e$b;

    sget-object v1, Ls/e$b;->q:Ls/e$b;

    if-ne v0, v1, :cond_3ef

    iget v0, v8, Lt/p;->a:I

    if-ne v0, v9, :cond_3ef

    .line 89
    iget-object v0, v8, Lt/p;->h:Lt/f;

    iget-object v0, v0, Lt/f;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3ef

    iget-object v0, v8, Lt/p;->i:Lt/f;

    iget-object v0, v0, Lt/f;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3ef

    .line 90
    iget-object v0, v8, Lt/p;->h:Lt/f;

    iget-object v0, v0, Lt/f;->l:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/f;

    .line 91
    iget-object v1, v8, Lt/p;->i:Lt/f;

    iget-object v1, v1, Lt/f;->l:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt/f;

    .line 92
    iget v0, v0, Lt/f;->g:I

    iget-object v2, v8, Lt/p;->h:Lt/f;

    iget v2, v2, Lt/f;->f:I

    add-int/2addr v0, v2

    .line 93
    iget v1, v1, Lt/f;->g:I

    iget-object v2, v8, Lt/p;->i:Lt/f;

    iget v2, v2, Lt/f;->f:I

    add-int/2addr v1, v2

    sub-int/2addr v1, v0

    .line 94
    iget-object v0, v8, Lt/p;->e:Lt/g;

    iget v0, v0, Lt/g;->m:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 95
    iget-object v1, v8, Lt/p;->b:Ls/e;

    iget v2, v1, Ls/e;->A:I

    .line 96
    iget v1, v1, Ls/e;->z:I

    .line 97
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-lez v2, :cond_3ea

    .line 98
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 99
    :cond_3ea
    iget-object v1, v8, Lt/p;->e:Lt/g;

    invoke-virtual {v1, v0}, Lt/g;->d(I)V

    .line 100
    :cond_3ef
    iget-object v0, v8, Lt/p;->e:Lt/g;

    iget-boolean v0, v0, Lt/f;->j:Z

    if-nez v0, :cond_3f6

    return-void

    .line 101
    :cond_3f6
    iget-object v0, v8, Lt/p;->h:Lt/f;

    iget-object v0, v0, Lt/f;->l:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/f;

    .line 102
    iget-object v1, v8, Lt/p;->i:Lt/f;

    iget-object v1, v1, Lt/f;->l:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt/f;

    .line 103
    iget v2, v0, Lt/f;->g:I

    iget-object v3, v8, Lt/p;->h:Lt/f;

    iget v3, v3, Lt/f;->f:I

    add-int/2addr v2, v3

    .line 104
    iget v3, v1, Lt/f;->g:I

    iget-object v4, v8, Lt/p;->i:Lt/f;

    iget v4, v4, Lt/f;->f:I

    add-int/2addr v3, v4

    .line 105
    iget-object v4, v8, Lt/p;->b:Ls/e;

    invoke-virtual {v4}, Ls/e;->w()F

    move-result v4

    if-ne v0, v1, :cond_426

    .line 106
    iget v2, v0, Lt/f;->g:I

    .line 107
    iget v3, v1, Lt/f;->g:I

    const/high16 v4, 0x3f000000    # 0.5f

    :cond_426
    sub-int/2addr v3, v2

    .line 108
    iget-object v0, v8, Lt/p;->e:Lt/g;

    iget v0, v0, Lt/f;->g:I

    sub-int/2addr v3, v0

    .line 109
    iget-object v0, v8, Lt/p;->h:Lt/f;

    int-to-float v1, v2

    add-float/2addr v1, v11

    int-to-float v2, v3

    mul-float v2, v2, v4

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lt/f;->d(I)V

    .line 110
    iget-object v0, v8, Lt/p;->i:Lt/f;

    iget-object v1, v8, Lt/p;->h:Lt/f;

    iget v1, v1, Lt/f;->g:I

    iget-object v2, v8, Lt/p;->e:Lt/g;

    iget v2, v2, Lt/f;->g:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lt/f;->d(I)V

    :cond_446
    :goto_446
    return-void
.end method

.method d()V
    .registers 7

    .line 1
    iget-object v0, p0, Lt/p;->b:Ls/e;

    iget-boolean v1, v0, Ls/e;->a:Z

    if-eqz v1, :cond_f

    .line 2
    iget-object v1, p0, Lt/p;->e:Lt/g;

    invoke-virtual {v0}, Ls/e;->U()I

    move-result v0

    invoke-virtual {v1, v0}, Lt/g;->d(I)V

    .line 3
    :cond_f
    iget-object v0, p0, Lt/p;->e:Lt/g;

    iget-boolean v0, v0, Lt/f;->j:Z

    if-nez v0, :cond_8c

    .line 4
    iget-object v0, p0, Lt/p;->b:Ls/e;

    invoke-virtual {v0}, Ls/e;->y()Ls/e$b;

    move-result-object v0

    iput-object v0, p0, Lt/p;->d:Ls/e$b;

    .line 5
    sget-object v1, Ls/e$b;->q:Ls/e$b;

    if-eq v0, v1, :cond_cc

    .line 6
    sget-object v1, Ls/e$b;->r:Ls/e$b;

    if-ne v0, v1, :cond_7a

    .line 7
    iget-object v0, p0, Lt/p;->b:Ls/e;

    invoke-virtual {v0}, Ls/e;->I()Ls/e;

    move-result-object v0

    if-eqz v0, :cond_7a

    .line 8
    invoke-virtual {v0}, Ls/e;->y()Ls/e$b;

    move-result-object v2

    sget-object v3, Ls/e$b;->o:Ls/e$b;

    if-eq v2, v3, :cond_3b

    .line 9
    invoke-virtual {v0}, Ls/e;->y()Ls/e$b;

    move-result-object v2

    if-ne v2, v1, :cond_7a

    .line 10
    :cond_3b
    invoke-virtual {v0}, Ls/e;->U()I

    move-result v1

    iget-object v2, p0, Lt/p;->b:Ls/e;

    iget-object v2, v2, Ls/e;->O:Ls/d;

    invoke-virtual {v2}, Ls/d;->e()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lt/p;->b:Ls/e;

    iget-object v2, v2, Ls/e;->Q:Ls/d;

    invoke-virtual {v2}, Ls/d;->e()I

    move-result v2

    sub-int/2addr v1, v2

    .line 11
    iget-object v2, p0, Lt/p;->h:Lt/f;

    iget-object v3, v0, Ls/e;->e:Lt/l;

    iget-object v3, v3, Lt/p;->h:Lt/f;

    iget-object v4, p0, Lt/p;->b:Ls/e;

    iget-object v4, v4, Ls/e;->O:Ls/d;

    invoke-virtual {v4}, Ls/d;->e()I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Lt/p;->b(Lt/f;Lt/f;I)V

    .line 12
    iget-object v2, p0, Lt/p;->i:Lt/f;

    iget-object v0, v0, Ls/e;->e:Lt/l;

    iget-object v0, v0, Lt/p;->i:Lt/f;

    iget-object v3, p0, Lt/p;->b:Ls/e;

    iget-object v3, v3, Ls/e;->Q:Ls/d;

    invoke-virtual {v3}, Ls/d;->e()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {p0, v2, v0, v3}, Lt/p;->b(Lt/f;Lt/f;I)V

    .line 13
    iget-object v0, p0, Lt/p;->e:Lt/g;

    invoke-virtual {v0, v1}, Lt/g;->d(I)V

    return-void

    .line 14
    :cond_7a
    iget-object v0, p0, Lt/p;->d:Ls/e$b;

    sget-object v1, Ls/e$b;->o:Ls/e$b;

    if-ne v0, v1, :cond_cc

    .line 15
    iget-object v0, p0, Lt/p;->e:Lt/g;

    iget-object v1, p0, Lt/p;->b:Ls/e;

    invoke-virtual {v1}, Ls/e;->U()I

    move-result v1

    invoke-virtual {v0, v1}, Lt/g;->d(I)V

    goto :goto_cc

    .line 16
    :cond_8c
    iget-object v0, p0, Lt/p;->d:Ls/e$b;

    sget-object v1, Ls/e$b;->r:Ls/e$b;

    if-ne v0, v1, :cond_cc

    .line 17
    iget-object v0, p0, Lt/p;->b:Ls/e;

    invoke-virtual {v0}, Ls/e;->I()Ls/e;

    move-result-object v0

    if-eqz v0, :cond_cc

    .line 18
    invoke-virtual {v0}, Ls/e;->y()Ls/e$b;

    move-result-object v2

    sget-object v3, Ls/e$b;->o:Ls/e$b;

    if-eq v2, v3, :cond_a8

    .line 19
    invoke-virtual {v0}, Ls/e;->y()Ls/e$b;

    move-result-object v2

    if-ne v2, v1, :cond_cc

    .line 20
    :cond_a8
    iget-object v1, p0, Lt/p;->h:Lt/f;

    iget-object v2, v0, Ls/e;->e:Lt/l;

    iget-object v2, v2, Lt/p;->h:Lt/f;

    iget-object v3, p0, Lt/p;->b:Ls/e;

    iget-object v3, v3, Ls/e;->O:Ls/d;

    invoke-virtual {v3}, Ls/d;->e()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lt/p;->b(Lt/f;Lt/f;I)V

    .line 21
    iget-object v1, p0, Lt/p;->i:Lt/f;

    iget-object v0, v0, Ls/e;->e:Lt/l;

    iget-object v0, v0, Lt/p;->i:Lt/f;

    iget-object v2, p0, Lt/p;->b:Ls/e;

    iget-object v2, v2, Ls/e;->Q:Ls/d;

    invoke-virtual {v2}, Ls/d;->e()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v1, v0, v2}, Lt/p;->b(Lt/f;Lt/f;I)V

    return-void

    .line 22
    :cond_cc
    :goto_cc
    iget-object v0, p0, Lt/p;->e:Lt/g;

    iget-boolean v1, v0, Lt/f;->j:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1dc

    iget-object v1, p0, Lt/p;->b:Ls/e;

    iget-boolean v4, v1, Ls/e;->a:Z

    if-eqz v4, :cond_1dc

    .line 23
    iget-object v0, v1, Ls/e;->W:[Ls/d;

    aget-object v4, v0, v2

    iget-object v4, v4, Ls/d;->f:Ls/d;

    if-eqz v4, :cond_14e

    aget-object v4, v0, v3

    iget-object v4, v4, Ls/d;->f:Ls/d;

    if-eqz v4, :cond_14e

    .line 24
    invoke-virtual {v1}, Ls/e;->g0()Z

    move-result v0

    if-eqz v0, :cond_10d

    .line 25
    iget-object v0, p0, Lt/p;->h:Lt/f;

    iget-object v1, p0, Lt/p;->b:Ls/e;

    iget-object v1, v1, Ls/e;->W:[Ls/d;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ls/d;->e()I

    move-result v1

    iput v1, v0, Lt/f;->f:I

    .line 26
    iget-object v0, p0, Lt/p;->i:Lt/f;

    iget-object v1, p0, Lt/p;->b:Ls/e;

    iget-object v1, v1, Ls/e;->W:[Ls/d;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ls/d;->e()I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Lt/f;->f:I

    goto/16 :goto_3e2

    .line 27
    :cond_10d
    iget-object v0, p0, Lt/p;->b:Ls/e;

    iget-object v0, v0, Ls/e;->W:[Ls/d;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lt/p;->h(Ls/d;)Lt/f;

    move-result-object v0

    if-eqz v0, :cond_128

    .line 28
    iget-object v1, p0, Lt/p;->h:Lt/f;

    iget-object v4, p0, Lt/p;->b:Ls/e;

    iget-object v4, v4, Ls/e;->W:[Ls/d;

    aget-object v2, v4, v2

    invoke-virtual {v2}, Ls/d;->e()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Lt/p;->b(Lt/f;Lt/f;I)V

    .line 29
    :cond_128
    iget-object v0, p0, Lt/p;->b:Ls/e;

    iget-object v0, v0, Ls/e;->W:[Ls/d;

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Lt/p;->h(Ls/d;)Lt/f;

    move-result-object v0

    if-eqz v0, :cond_144

    .line 30
    iget-object v1, p0, Lt/p;->i:Lt/f;

    iget-object v2, p0, Lt/p;->b:Ls/e;

    iget-object v2, v2, Ls/e;->W:[Ls/d;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ls/d;->e()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v1, v0, v2}, Lt/p;->b(Lt/f;Lt/f;I)V

    .line 31
    :cond_144
    iget-object v0, p0, Lt/p;->h:Lt/f;

    iput-boolean v3, v0, Lt/f;->b:Z

    .line 32
    iget-object v0, p0, Lt/p;->i:Lt/f;

    iput-boolean v3, v0, Lt/f;->b:Z

    goto/16 :goto_3e2

    .line 33
    :cond_14e
    aget-object v4, v0, v2

    iget-object v4, v4, Ls/d;->f:Ls/d;

    if-eqz v4, :cond_178

    .line 34
    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lt/p;->h(Ls/d;)Lt/f;

    move-result-object v0

    if-eqz v0, :cond_3e2

    .line 35
    iget-object v1, p0, Lt/p;->h:Lt/f;

    iget-object v3, p0, Lt/p;->b:Ls/e;

    iget-object v3, v3, Ls/e;->W:[Ls/d;

    aget-object v2, v3, v2

    invoke-virtual {v2}, Ls/d;->e()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Lt/p;->b(Lt/f;Lt/f;I)V

    .line 36
    iget-object v0, p0, Lt/p;->i:Lt/f;

    iget-object v1, p0, Lt/p;->h:Lt/f;

    iget-object v2, p0, Lt/p;->e:Lt/g;

    iget v2, v2, Lt/f;->g:I

    invoke-virtual {p0, v0, v1, v2}, Lt/p;->b(Lt/f;Lt/f;I)V

    goto/16 :goto_3e2

    .line 37
    :cond_178
    aget-object v2, v0, v3

    iget-object v2, v2, Ls/d;->f:Ls/d;

    if-eqz v2, :cond_1a4

    .line 38
    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Lt/p;->h(Ls/d;)Lt/f;

    move-result-object v0

    if-eqz v0, :cond_3e2

    .line 39
    iget-object v1, p0, Lt/p;->i:Lt/f;

    iget-object v2, p0, Lt/p;->b:Ls/e;

    iget-object v2, v2, Ls/e;->W:[Ls/d;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ls/d;->e()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v1, v0, v2}, Lt/p;->b(Lt/f;Lt/f;I)V

    .line 40
    iget-object v0, p0, Lt/p;->h:Lt/f;

    iget-object v1, p0, Lt/p;->i:Lt/f;

    iget-object v2, p0, Lt/p;->e:Lt/g;

    iget v2, v2, Lt/f;->g:I

    neg-int v2, v2

    invoke-virtual {p0, v0, v1, v2}, Lt/p;->b(Lt/f;Lt/f;I)V

    goto/16 :goto_3e2

    .line 41
    :cond_1a4
    instance-of v0, v1, Ls/h;

    if-nez v0, :cond_3e2

    invoke-virtual {v1}, Ls/e;->I()Ls/e;

    move-result-object v0

    if-eqz v0, :cond_3e2

    iget-object v0, p0, Lt/p;->b:Ls/e;

    sget-object v1, Ls/d$b;->u:Ls/d$b;

    .line 42
    invoke-virtual {v0, v1}, Ls/e;->m(Ls/d$b;)Ls/d;

    move-result-object v0

    iget-object v0, v0, Ls/d;->f:Ls/d;

    if-nez v0, :cond_3e2

    .line 43
    iget-object v0, p0, Lt/p;->b:Ls/e;

    invoke-virtual {v0}, Ls/e;->I()Ls/e;

    move-result-object v0

    iget-object v0, v0, Ls/e;->e:Lt/l;

    iget-object v0, v0, Lt/p;->h:Lt/f;

    .line 44
    iget-object v1, p0, Lt/p;->h:Lt/f;

    iget-object v2, p0, Lt/p;->b:Ls/e;

    invoke-virtual {v2}, Ls/e;->V()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Lt/p;->b(Lt/f;Lt/f;I)V

    .line 45
    iget-object v0, p0, Lt/p;->i:Lt/f;

    iget-object v1, p0, Lt/p;->h:Lt/f;

    iget-object v2, p0, Lt/p;->e:Lt/g;

    iget v2, v2, Lt/f;->g:I

    invoke-virtual {p0, v0, v1, v2}, Lt/p;->b(Lt/f;Lt/f;I)V

    goto/16 :goto_3e2

    .line 46
    :cond_1dc
    iget-object v1, p0, Lt/p;->d:Ls/e$b;

    sget-object v4, Ls/e$b;->q:Ls/e$b;

    if-ne v1, v4, :cond_311

    .line 47
    iget-object v1, p0, Lt/p;->b:Ls/e;

    iget v4, v1, Ls/e;->w:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2e4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1ee

    goto/16 :goto_311

    .line 48
    :cond_1ee
    iget v4, v1, Ls/e;->x:I

    if-ne v4, v5, :cond_293

    .line 49
    iget-object v4, p0, Lt/p;->h:Lt/f;

    iput-object p0, v4, Lt/f;->a:Lt/d;

    .line 50
    iget-object v4, p0, Lt/p;->i:Lt/f;

    iput-object p0, v4, Lt/f;->a:Lt/d;

    .line 51
    iget-object v4, v1, Ls/e;->f:Lt/n;

    iget-object v5, v4, Lt/p;->h:Lt/f;

    iput-object p0, v5, Lt/f;->a:Lt/d;

    .line 52
    iget-object v4, v4, Lt/p;->i:Lt/f;

    iput-object p0, v4, Lt/f;->a:Lt/d;

    .line 53
    iput-object p0, v0, Lt/f;->a:Lt/d;

    .line 54
    invoke-virtual {v1}, Ls/e;->i0()Z

    move-result v0

    if-eqz v0, :cond_260

    .line 55
    iget-object v0, p0, Lt/p;->e:Lt/g;

    iget-object v0, v0, Lt/f;->l:Ljava/util/List;

    iget-object v1, p0, Lt/p;->b:Ls/e;

    iget-object v1, v1, Ls/e;->f:Lt/n;

    iget-object v1, v1, Lt/p;->e:Lt/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lt/p;->b:Ls/e;

    iget-object v0, v0, Ls/e;->f:Lt/n;

    iget-object v0, v0, Lt/p;->e:Lt/g;

    iget-object v0, v0, Lt/f;->k:Ljava/util/List;

    iget-object v1, p0, Lt/p;->e:Lt/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lt/p;->b:Ls/e;

    iget-object v0, v0, Ls/e;->f:Lt/n;

    iget-object v1, v0, Lt/p;->e:Lt/g;

    iput-object p0, v1, Lt/f;->a:Lt/d;

    .line 58
    iget-object v1, p0, Lt/p;->e:Lt/g;

    iget-object v1, v1, Lt/f;->l:Ljava/util/List;

    iget-object v0, v0, Lt/p;->h:Lt/f;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lt/p;->e:Lt/g;

    iget-object v0, v0, Lt/f;->l:Ljava/util/List;

    iget-object v1, p0, Lt/p;->b:Ls/e;

    iget-object v1, v1, Ls/e;->f:Lt/n;

    iget-object v1, v1, Lt/p;->i:Lt/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lt/p;->b:Ls/e;

    iget-object v0, v0, Ls/e;->f:Lt/n;

    iget-object v0, v0, Lt/p;->h:Lt/f;

    iget-object v0, v0, Lt/f;->k:Ljava/util/List;

    iget-object v1, p0, Lt/p;->e:Lt/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lt/p;->b:Ls/e;

    iget-object v0, v0, Ls/e;->f:Lt/n;

    iget-object v0, v0, Lt/p;->i:Lt/f;

    iget-object v0, v0, Lt/f;->k:Ljava/util/List;

    iget-object v1, p0, Lt/p;->e:Lt/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_311

    .line 62
    :cond_260
    iget-object v0, p0, Lt/p;->b:Ls/e;

    invoke-virtual {v0}, Ls/e;->g0()Z

    move-result v0

    if-eqz v0, :cond_284

    .line 63
    iget-object v0, p0, Lt/p;->b:Ls/e;

    iget-object v0, v0, Ls/e;->f:Lt/n;

    iget-object v0, v0, Lt/p;->e:Lt/g;

    iget-object v0, v0, Lt/f;->l:Ljava/util/List;

    iget-object v1, p0, Lt/p;->e:Lt/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lt/p;->e:Lt/g;

    iget-object v0, v0, Lt/f;->k:Ljava/util/List;

    iget-object v1, p0, Lt/p;->b:Ls/e;

    iget-object v1, v1, Ls/e;->f:Lt/n;

    iget-object v1, v1, Lt/p;->e:Lt/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_311

    .line 65
    :cond_284
    iget-object v0, p0, Lt/p;->b:Ls/e;

    iget-object v0, v0, Ls/e;->f:Lt/n;

    iget-object v0, v0, Lt/p;->e:Lt/g;

    iget-object v0, v0, Lt/f;->l:Ljava/util/List;

    iget-object v1, p0, Lt/p;->e:Lt/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_311

    .line 66
    :cond_293
    iget-object v1, v1, Ls/e;->f:Lt/n;

    iget-object v1, v1, Lt/p;->e:Lt/g;

    .line 67
    iget-object v0, v0, Lt/f;->l:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, v1, Lt/f;->k:Ljava/util/List;

    iget-object v1, p0, Lt/p;->e:Lt/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lt/p;->b:Ls/e;

    iget-object v0, v0, Ls/e;->f:Lt/n;

    iget-object v0, v0, Lt/p;->h:Lt/f;

    iget-object v0, v0, Lt/f;->k:Ljava/util/List;

    iget-object v1, p0, Lt/p;->e:Lt/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lt/p;->b:Ls/e;

    iget-object v0, v0, Ls/e;->f:Lt/n;

    iget-object v0, v0, Lt/p;->i:Lt/f;

    iget-object v0, v0, Lt/f;->k:Ljava/util/List;

    iget-object v1, p0, Lt/p;->e:Lt/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lt/p;->e:Lt/g;

    iput-boolean v3, v0, Lt/f;->b:Z

    .line 72
    iget-object v0, v0, Lt/f;->k:Ljava/util/List;

    iget-object v1, p0, Lt/p;->h:Lt/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lt/p;->e:Lt/g;

    iget-object v0, v0, Lt/f;->k:Ljava/util/List;

    iget-object v1, p0, Lt/p;->i:Lt/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lt/p;->h:Lt/f;

    iget-object v0, v0, Lt/f;->l:Ljava/util/List;

    iget-object v1, p0, Lt/p;->e:Lt/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p0, Lt/p;->i:Lt/f;

    iget-object v0, v0, Lt/f;->l:Ljava/util/List;

    iget-object v1, p0, Lt/p;->e:Lt/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_311

    .line 76
    :cond_2e4
    invoke-virtual {v1}, Ls/e;->I()Ls/e;

    move-result-object v0

    if-nez v0, :cond_2eb

    goto :goto_311

    .line 77
    :cond_2eb
    iget-object v0, v0, Ls/e;->f:Lt/n;

    iget-object v0, v0, Lt/p;->e:Lt/g;

    .line 78
    iget-object v1, p0, Lt/p;->e:Lt/g;

    iget-object v1, v1, Lt/f;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, v0, Lt/f;->k:Ljava/util/List;

    iget-object v1, p0, Lt/p;->e:Lt/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lt/p;->e:Lt/g;

    iput-boolean v3, v0, Lt/f;->b:Z

    .line 81
    iget-object v0, v0, Lt/f;->k:Ljava/util/List;

    iget-object v1, p0, Lt/p;->h:Lt/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lt/p;->e:Lt/g;

    iget-object v0, v0, Lt/f;->k:Ljava/util/List;

    iget-object v1, p0, Lt/p;->i:Lt/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_311
    :goto_311
    iget-object v0, p0, Lt/p;->b:Ls/e;

    iget-object v1, v0, Ls/e;->W:[Ls/d;

    aget-object v4, v1, v2

    iget-object v4, v4, Ls/d;->f:Ls/d;

    if-eqz v4, :cond_36a

    aget-object v4, v1, v3

    iget-object v4, v4, Ls/d;->f:Ls/d;

    if-eqz v4, :cond_36a

    .line 84
    invoke-virtual {v0}, Ls/e;->g0()Z

    move-result v0

    if-eqz v0, :cond_346

    .line 85
    iget-object v0, p0, Lt/p;->h:Lt/f;

    iget-object v1, p0, Lt/p;->b:Ls/e;

    iget-object v1, v1, Ls/e;->W:[Ls/d;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ls/d;->e()I

    move-result v1

    iput v1, v0, Lt/f;->f:I

    .line 86
    iget-object v0, p0, Lt/p;->i:Lt/f;

    iget-object v1, p0, Lt/p;->b:Ls/e;

    iget-object v1, v1, Ls/e;->W:[Ls/d;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ls/d;->e()I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Lt/f;->f:I

    goto/16 :goto_3e2

    .line 87
    :cond_346
    iget-object v0, p0, Lt/p;->b:Ls/e;

    iget-object v0, v0, Ls/e;->W:[Ls/d;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lt/p;->h(Ls/d;)Lt/f;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lt/p;->b:Ls/e;

    iget-object v1, v1, Ls/e;->W:[Ls/d;

    aget-object v1, v1, v3

    invoke-virtual {p0, v1}, Lt/p;->h(Ls/d;)Lt/f;

    move-result-object v1

    if-eqz v0, :cond_35f

    .line 89
    invoke-virtual {v0, p0}, Lt/f;->b(Lt/d;)V

    :cond_35f
    if-eqz v1, :cond_364

    .line 90
    invoke-virtual {v1, p0}, Lt/f;->b(Lt/d;)V

    .line 91
    :cond_364
    sget-object v0, Lt/p$b;->r:Lt/p$b;

    iput-object v0, p0, Lt/p;->j:Lt/p$b;

    goto/16 :goto_3e2

    .line 92
    :cond_36a
    aget-object v4, v1, v2

    iget-object v4, v4, Ls/d;->f:Ls/d;

    if-eqz v4, :cond_391

    .line 93
    aget-object v0, v1, v2

    invoke-virtual {p0, v0}, Lt/p;->h(Ls/d;)Lt/f;

    move-result-object v0

    if-eqz v0, :cond_3e2

    .line 94
    iget-object v1, p0, Lt/p;->h:Lt/f;

    iget-object v4, p0, Lt/p;->b:Ls/e;

    iget-object v4, v4, Ls/e;->W:[Ls/d;

    aget-object v2, v4, v2

    invoke-virtual {v2}, Ls/d;->e()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Lt/p;->b(Lt/f;Lt/f;I)V

    .line 95
    iget-object v0, p0, Lt/p;->i:Lt/f;

    iget-object v1, p0, Lt/p;->h:Lt/f;

    iget-object v2, p0, Lt/p;->e:Lt/g;

    invoke-virtual {p0, v0, v1, v3, v2}, Lt/p;->c(Lt/f;Lt/f;ILt/g;)V

    goto :goto_3e2

    .line 96
    :cond_391
    aget-object v2, v1, v3

    iget-object v2, v2, Ls/d;->f:Ls/d;

    if-eqz v2, :cond_3ba

    .line 97
    aget-object v0, v1, v3

    invoke-virtual {p0, v0}, Lt/p;->h(Ls/d;)Lt/f;

    move-result-object v0

    if-eqz v0, :cond_3e2

    .line 98
    iget-object v1, p0, Lt/p;->i:Lt/f;

    iget-object v2, p0, Lt/p;->b:Ls/e;

    iget-object v2, v2, Ls/e;->W:[Ls/d;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ls/d;->e()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v1, v0, v2}, Lt/p;->b(Lt/f;Lt/f;I)V

    .line 99
    iget-object v0, p0, Lt/p;->h:Lt/f;

    iget-object v1, p0, Lt/p;->i:Lt/f;

    const/4 v2, -0x1

    iget-object v3, p0, Lt/p;->e:Lt/g;

    invoke-virtual {p0, v0, v1, v2, v3}, Lt/p;->c(Lt/f;Lt/f;ILt/g;)V

    goto :goto_3e2

    .line 100
    :cond_3ba
    instance-of v1, v0, Ls/h;

    if-nez v1, :cond_3e2

    invoke-virtual {v0}, Ls/e;->I()Ls/e;

    move-result-object v0

    if-eqz v0, :cond_3e2

    .line 101
    iget-object v0, p0, Lt/p;->b:Ls/e;

    invoke-virtual {v0}, Ls/e;->I()Ls/e;

    move-result-object v0

    iget-object v0, v0, Ls/e;->e:Lt/l;

    iget-object v0, v0, Lt/p;->h:Lt/f;

    .line 102
    iget-object v1, p0, Lt/p;->h:Lt/f;

    iget-object v2, p0, Lt/p;->b:Ls/e;

    invoke-virtual {v2}, Ls/e;->V()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Lt/p;->b(Lt/f;Lt/f;I)V

    .line 103
    iget-object v0, p0, Lt/p;->i:Lt/f;

    iget-object v1, p0, Lt/p;->h:Lt/f;

    iget-object v2, p0, Lt/p;->e:Lt/g;

    invoke-virtual {p0, v0, v1, v3, v2}, Lt/p;->c(Lt/f;Lt/f;ILt/g;)V

    :cond_3e2
    :goto_3e2
    return-void
.end method

.method public e()V
    .registers 3

    .line 1
    iget-object v0, p0, Lt/p;->h:Lt/f;

    iget-boolean v1, v0, Lt/f;->j:Z

    if-eqz v1, :cond_d

    .line 2
    iget-object v1, p0, Lt/p;->b:Ls/e;

    iget v0, v0, Lt/f;->g:I

    invoke-virtual {v1, v0}, Ls/e;->j1(I)V

    :cond_d
    return-void
.end method

.method f()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lt/p;->c:Lt/m;

    .line 2
    iget-object v0, p0, Lt/p;->h:Lt/f;

    invoke-virtual {v0}, Lt/f;->c()V

    .line 3
    iget-object v0, p0, Lt/p;->i:Lt/f;

    invoke-virtual {v0}, Lt/f;->c()V

    .line 4
    iget-object v0, p0, Lt/p;->e:Lt/g;

    invoke-virtual {v0}, Lt/f;->c()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lt/p;->g:Z

    return-void
.end method

.method m()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lt/p;->d:Ls/e$b;

    sget-object v1, Ls/e$b;->q:Ls/e$b;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_10

    .line 2
    iget-object v0, p0, Lt/p;->b:Ls/e;

    iget v0, v0, Ls/e;->w:I

    if-nez v0, :cond_e

    return v2

    :cond_e
    const/4 v0, 0x0

    return v0

    :cond_10
    return v2
.end method

.method r()V
    .registers 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lt/p;->g:Z

    .line 2
    iget-object v1, p0, Lt/p;->h:Lt/f;

    invoke-virtual {v1}, Lt/f;->c()V

    .line 3
    iget-object v1, p0, Lt/p;->h:Lt/f;

    iput-boolean v0, v1, Lt/f;->j:Z

    .line 4
    iget-object v1, p0, Lt/p;->i:Lt/f;

    invoke-virtual {v1}, Lt/f;->c()V

    .line 5
    iget-object v1, p0, Lt/p;->i:Lt/f;

    iput-boolean v0, v1, Lt/f;->j:Z

    .line 6
    iget-object v1, p0, Lt/p;->e:Lt/g;

    iput-boolean v0, v1, Lt/f;->j:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HorizontalRun "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lt/p;->b:Ls/e;

    invoke-virtual {v1}, Ls/e;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class t.l.a (t.l$a)
.class synthetic Lt/l$a;
.super Ljava/lang/Object;
.source "HorizontalWidgetRun.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lt/p$b;->values()[Lt/p$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lt/l$a;->a:[I

    :try_start_9
    sget-object v1, Lt/p$b;->p:Lt/p$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lt/l$a;->a:[I

    sget-object v1, Lt/p$b;->q:Lt/p$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lt/l$a;->a:[I

    sget-object v1, Lt/p$b;->r:Lt/p$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method
