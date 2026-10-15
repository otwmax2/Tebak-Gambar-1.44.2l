###### Class t.e (t.e)
.class public Lt/e;
.super Ljava/lang/Object;
.source "DependencyGraph.java"


# instance fields
.field private a:Ls/f;

.field private b:Z

.field private c:Z

.field private d:Ls/f;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lt/p;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lt/m;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lt/b$b;

.field private h:Lt/b$a;

.field i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lt/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls/f;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lt/e;->b:Z

    .line 3
    iput-boolean v0, p0, Lt/e;->c:Z

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lt/e;->e:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lt/e;->f:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lt/e;->g:Lt/b$b;

    .line 7
    new-instance v0, Lt/b$a;

    invoke-direct {v0}, Lt/b$a;-><init>()V

    iput-object v0, p0, Lt/e;->h:Lt/b$a;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lt/e;->i:Ljava/util/ArrayList;

    .line 9
    iput-object p1, p0, Lt/e;->a:Ls/f;

    .line 10
    iput-object p1, p0, Lt/e;->d:Ls/f;

    return-void
.end method

.method private a(Lt/f;IILt/f;Ljava/util/ArrayList;Lt/m;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt/f;",
            "II",
            "Lt/f;",
            "Ljava/util/ArrayList<",
            "Lt/m;",
            ">;",
            "Lt/m;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lt/f;->d:Lt/p;

    .line 2
    iget-object v0, p1, Lt/p;->c:Lt/m;

    if-nez v0, :cond_107

    iget-object v0, p0, Lt/e;->a:Ls/f;

    iget-object v1, v0, Ls/e;->e:Lt/l;

    if-eq p1, v1, :cond_107

    iget-object v0, v0, Ls/e;->f:Lt/n;

    if-ne p1, v0, :cond_12

    goto/16 :goto_107

    :cond_12
    if-nez p6, :cond_1c

    .line 3
    new-instance p6, Lt/m;

    invoke-direct {p6, p1, p3}, Lt/m;-><init>(Lt/p;I)V

    .line 4
    invoke-virtual {p5, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_1c
    iput-object p6, p1, Lt/p;->c:Lt/m;

    .line 6
    invoke-virtual {p6, p1}, Lt/m;->a(Lt/p;)V

    .line 7
    iget-object p3, p1, Lt/p;->h:Lt/f;

    iget-object p3, p3, Lt/f;->k:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_29
    :goto_29
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/d;

    .line 8
    instance-of v1, v0, Lt/f;

    if-eqz v1, :cond_29

    .line 9
    move-object v1, v0

    check-cast v1, Lt/f;

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lt/e;->a(Lt/f;IILt/f;Ljava/util/ArrayList;Lt/m;)V

    goto :goto_29

    .line 10
    :cond_46
    iget-object p3, p1, Lt/p;->i:Lt/f;

    iget-object p3, p3, Lt/f;->k:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_4e
    :goto_4e
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/d;

    .line 11
    instance-of v1, v0, Lt/f;

    if-eqz v1, :cond_4e

    .line 12
    move-object v1, v0

    check-cast v1, Lt/f;

    const/4 v3, 0x1

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lt/e;->a(Lt/f;IILt/f;Ljava/util/ArrayList;Lt/m;)V

    goto :goto_4e

    :cond_6b
    const/4 p3, 0x1

    if-ne p2, p3, :cond_9a

    .line 13
    instance-of v0, p1, Lt/n;

    if-eqz v0, :cond_9a

    .line 14
    move-object v0, p1

    check-cast v0, Lt/n;

    iget-object v0, v0, Lt/n;->k:Lt/f;

    iget-object v0, v0, Lt/f;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7d
    :goto_7d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/d;

    .line 15
    instance-of v1, v0, Lt/f;

    if-eqz v1, :cond_7d

    .line 16
    move-object v1, v0

    check-cast v1, Lt/f;

    const/4 v3, 0x2

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lt/e;->a(Lt/f;IILt/f;Ljava/util/ArrayList;Lt/m;)V

    goto :goto_7d

    .line 17
    :cond_9a
    iget-object v0, p1, Lt/p;->h:Lt/f;

    iget-object v0, v0, Lt/f;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_a2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bd

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lt/f;

    if-ne v1, p4, :cond_b3

    .line 18
    iput-boolean p3, p6, Lt/m;->b:Z

    :cond_b3
    const/4 v3, 0x0

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 19
    invoke-direct/range {v0 .. v6}, Lt/e;->a(Lt/f;IILt/f;Ljava/util/ArrayList;Lt/m;)V

    goto :goto_a2

    .line 20
    :cond_bd
    iget-object v0, p1, Lt/p;->i:Lt/f;

    iget-object v0, v0, Lt/f;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_c5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lt/f;

    if-ne v1, p4, :cond_d6

    .line 21
    iput-boolean p3, p6, Lt/m;->b:Z

    :cond_d6
    const/4 v3, 0x1

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 22
    invoke-direct/range {v0 .. v6}, Lt/e;->a(Lt/f;IILt/f;Ljava/util/ArrayList;Lt/m;)V

    goto :goto_c5

    :cond_e0
    if-ne p2, p3, :cond_107

    .line 23
    instance-of p3, p1, Lt/n;

    if-eqz p3, :cond_107

    .line 24
    check-cast p1, Lt/n;

    iget-object p1, p1, Lt/n;->k:Lt/f;

    iget-object p1, p1, Lt/f;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_107

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Lt/f;

    const/4 v3, 0x2

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 25
    :try_start_103
    invoke-direct/range {v0 .. v6}, Lt/e;->a(Lt/f;IILt/f;Ljava/util/ArrayList;Lt/m;)V
    :try_end_106
    .catchall {:try_start_103 .. :try_end_106} :catchall_108

    goto :goto_f0

    :cond_107
    :goto_107
    return-void

    :catchall_108
    move-exception p1

    goto :goto_10b

    :goto_10a
    throw p1

    :goto_10b
    goto :goto_10a
.end method

.method private b(Ls/f;)Z
    .registers 18

    move-object/from16 v0, p1

    .line 1
    iget-object v1, v0, Ls/l;->K0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_342

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls/e;

    .line 2
    iget-object v4, v2, Ls/e;->Z:[Ls/e$b;

    aget-object v5, v4, v3

    const/4 v10, 0x1

    .line 3
    aget-object v4, v4, v10

    .line 4
    invoke-virtual {v2}, Ls/e;->T()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_27

    .line 5
    iput-boolean v10, v2, Ls/e;->a:Z

    goto :goto_8

    .line 6
    :cond_27
    iget v6, v2, Ls/e;->B:F

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v7, 0x2

    cmpg-float v6, v6, v11

    if-gez v6, :cond_36

    sget-object v6, Ls/e$b;->q:Ls/e$b;

    if-ne v5, v6, :cond_36

    .line 7
    iput v7, v2, Ls/e;->w:I

    .line 8
    :cond_36
    iget v6, v2, Ls/e;->E:F

    cmpg-float v6, v6, v11

    if-gez v6, :cond_42

    sget-object v6, Ls/e$b;->q:Ls/e$b;

    if-ne v4, v6, :cond_42

    .line 9
    iput v7, v2, Ls/e;->x:I

    .line 10
    :cond_42
    invoke-virtual {v2}, Ls/e;->t()F

    move-result v6

    const/4 v8, 0x0

    const/4 v9, 0x3

    cmpl-float v6, v6, v8

    if-lez v6, :cond_78

    .line 11
    sget-object v6, Ls/e$b;->q:Ls/e$b;

    if-ne v5, v6, :cond_5b

    sget-object v8, Ls/e$b;->p:Ls/e$b;

    if-eq v4, v8, :cond_58

    sget-object v8, Ls/e$b;->o:Ls/e$b;

    if-ne v4, v8, :cond_5b

    .line 12
    :cond_58
    iput v9, v2, Ls/e;->w:I

    goto :goto_78

    :cond_5b
    if-ne v4, v6, :cond_68

    .line 13
    sget-object v8, Ls/e$b;->p:Ls/e$b;

    if-eq v5, v8, :cond_65

    sget-object v8, Ls/e$b;->o:Ls/e$b;

    if-ne v5, v8, :cond_68

    .line 14
    :cond_65
    iput v9, v2, Ls/e;->x:I

    goto :goto_78

    :cond_68
    if-ne v5, v6, :cond_78

    if-ne v4, v6, :cond_78

    .line 15
    iget v6, v2, Ls/e;->w:I

    if-nez v6, :cond_72

    .line 16
    iput v9, v2, Ls/e;->w:I

    .line 17
    :cond_72
    iget v6, v2, Ls/e;->x:I

    if-nez v6, :cond_78

    .line 18
    iput v9, v2, Ls/e;->x:I

    .line 19
    :cond_78
    :goto_78
    sget-object v6, Ls/e$b;->q:Ls/e$b;

    if-ne v5, v6, :cond_8e

    iget v8, v2, Ls/e;->w:I

    if-ne v8, v10, :cond_8e

    .line 20
    iget-object v8, v2, Ls/e;->O:Ls/d;

    iget-object v8, v8, Ls/d;->f:Ls/d;

    if-eqz v8, :cond_8c

    iget-object v8, v2, Ls/e;->Q:Ls/d;

    iget-object v8, v8, Ls/d;->f:Ls/d;

    if-nez v8, :cond_8e

    .line 21
    :cond_8c
    sget-object v5, Ls/e$b;->p:Ls/e$b;

    :cond_8e
    move-object v8, v5

    if-ne v4, v6, :cond_a3

    .line 22
    iget v5, v2, Ls/e;->x:I

    if-ne v5, v10, :cond_a3

    .line 23
    iget-object v5, v2, Ls/e;->P:Ls/d;

    iget-object v5, v5, Ls/d;->f:Ls/d;

    if-eqz v5, :cond_a1

    iget-object v5, v2, Ls/e;->R:Ls/d;

    iget-object v5, v5, Ls/d;->f:Ls/d;

    if-nez v5, :cond_a3

    .line 24
    :cond_a1
    sget-object v4, Ls/e$b;->p:Ls/e$b;

    :cond_a3
    move-object v12, v4

    .line 25
    iget-object v4, v2, Ls/e;->e:Lt/l;

    iput-object v8, v4, Lt/p;->d:Ls/e$b;

    .line 26
    iget v5, v2, Ls/e;->w:I

    iput v5, v4, Lt/p;->a:I

    .line 27
    iget-object v4, v2, Ls/e;->f:Lt/n;

    iput-object v12, v4, Lt/p;->d:Ls/e$b;

    .line 28
    iget v13, v2, Ls/e;->x:I

    iput v13, v4, Lt/p;->a:I

    .line 29
    sget-object v4, Ls/e$b;->r:Ls/e$b;

    if-eq v8, v4, :cond_c0

    sget-object v14, Ls/e$b;->o:Ls/e$b;

    if-eq v8, v14, :cond_c0

    sget-object v14, Ls/e$b;->p:Ls/e$b;

    if-ne v8, v14, :cond_cc

    :cond_c0
    if-eq v12, v4, :cond_2ec

    sget-object v14, Ls/e$b;->o:Ls/e$b;

    if-eq v12, v14, :cond_2ec

    sget-object v14, Ls/e$b;->p:Ls/e$b;

    if-ne v12, v14, :cond_cc

    goto/16 :goto_2ec

    :cond_cc
    const/high16 v14, 0x3f000000    # 0.5f

    if-ne v8, v6, :cond_19e

    .line 30
    sget-object v15, Ls/e$b;->p:Ls/e$b;

    if-eq v12, v15, :cond_d8

    sget-object v11, Ls/e$b;->o:Ls/e$b;

    if-ne v12, v11, :cond_19e

    :cond_d8
    if-ne v5, v9, :cond_114

    if-ne v12, v15, :cond_e6

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object v5, v2

    move-object v6, v15

    move-object v8, v15

    .line 31
    invoke-direct/range {v4 .. v9}, Lt/e;->l(Ls/e;Ls/e$b;ILs/e$b;I)V

    .line 32
    :cond_e6
    invoke-virtual {v2}, Ls/e;->v()I

    move-result v9

    int-to-float v3, v9

    .line 33
    iget v4, v2, Ls/e;->d0:F

    mul-float v3, v3, v4

    add-float/2addr v3, v14

    float-to-int v7, v3

    .line 34
    sget-object v8, Ls/e$b;->o:Ls/e$b;

    move-object/from16 v4, p0

    move-object v5, v2

    move-object v6, v8

    invoke-direct/range {v4 .. v9}, Lt/e;->l(Ls/e;Ls/e$b;ILs/e$b;I)V

    .line 35
    iget-object v3, v2, Ls/e;->e:Lt/l;

    iget-object v3, v3, Lt/p;->e:Lt/g;

    invoke-virtual {v2}, Ls/e;->U()I

    move-result v4

    invoke-virtual {v3, v4}, Lt/g;->d(I)V

    .line 36
    iget-object v3, v2, Ls/e;->f:Lt/n;

    iget-object v3, v3, Lt/p;->e:Lt/g;

    invoke-virtual {v2}, Ls/e;->v()I

    move-result v4

    invoke-virtual {v3, v4}, Lt/g;->d(I)V

    .line 37
    iput-boolean v10, v2, Ls/e;->a:Z

    goto/16 :goto_8

    :cond_114
    if-ne v5, v10, :cond_12c

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object v5, v2

    move-object v6, v15

    move-object v8, v12

    .line 38
    invoke-direct/range {v4 .. v9}, Lt/e;->l(Ls/e;Ls/e$b;ILs/e$b;I)V

    .line 39
    iget-object v3, v2, Ls/e;->e:Lt/l;

    iget-object v3, v3, Lt/p;->e:Lt/g;

    invoke-virtual {v2}, Ls/e;->U()I

    move-result v2

    iput v2, v3, Lt/g;->m:I

    goto/16 :goto_8

    :cond_12c
    if-ne v5, v7, :cond_16c

    .line 40
    iget-object v11, v0, Ls/e;->Z:[Ls/e$b;

    aget-object v15, v11, v3

    sget-object v7, Ls/e$b;->o:Ls/e$b;

    if-eq v15, v7, :cond_13a

    aget-object v11, v11, v3

    if-ne v11, v4, :cond_19e

    .line 41
    :cond_13a
    iget v3, v2, Ls/e;->B:F

    .line 42
    invoke-virtual/range {p1 .. p1}, Ls/e;->U()I

    move-result v4

    int-to-float v4, v4

    mul-float v3, v3, v4

    add-float/2addr v3, v14

    float-to-int v3, v3

    .line 43
    invoke-virtual {v2}, Ls/e;->v()I

    move-result v9

    move-object/from16 v4, p0

    move-object v5, v2

    move-object v6, v7

    move v7, v3

    move-object v8, v12

    .line 44
    invoke-direct/range {v4 .. v9}, Lt/e;->l(Ls/e;Ls/e$b;ILs/e$b;I)V

    .line 45
    iget-object v3, v2, Ls/e;->e:Lt/l;

    iget-object v3, v3, Lt/p;->e:Lt/g;

    invoke-virtual {v2}, Ls/e;->U()I

    move-result v4

    invoke-virtual {v3, v4}, Lt/g;->d(I)V

    .line 46
    iget-object v3, v2, Ls/e;->f:Lt/n;

    iget-object v3, v3, Lt/p;->e:Lt/g;

    invoke-virtual {v2}, Ls/e;->v()I

    move-result v4

    invoke-virtual {v3, v4}, Lt/g;->d(I)V

    .line 47
    iput-boolean v10, v2, Ls/e;->a:Z

    goto/16 :goto_8

    .line 48
    :cond_16c
    iget-object v7, v2, Ls/e;->W:[Ls/d;

    aget-object v11, v7, v3

    iget-object v11, v11, Ls/d;->f:Ls/d;

    if-eqz v11, :cond_17a

    aget-object v7, v7, v10

    iget-object v7, v7, Ls/d;->f:Ls/d;

    if-nez v7, :cond_19e

    :cond_17a
    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object v5, v2

    move-object v6, v15

    move-object v8, v12

    .line 49
    invoke-direct/range {v4 .. v9}, Lt/e;->l(Ls/e;Ls/e$b;ILs/e$b;I)V

    .line 50
    iget-object v3, v2, Ls/e;->e:Lt/l;

    iget-object v3, v3, Lt/p;->e:Lt/g;

    invoke-virtual {v2}, Ls/e;->U()I

    move-result v4

    invoke-virtual {v3, v4}, Lt/g;->d(I)V

    .line 51
    iget-object v3, v2, Ls/e;->f:Lt/n;

    iget-object v3, v3, Lt/p;->e:Lt/g;

    invoke-virtual {v2}, Ls/e;->v()I

    move-result v4

    invoke-virtual {v3, v4}, Lt/g;->d(I)V

    .line 52
    iput-boolean v10, v2, Ls/e;->a:Z

    goto/16 :goto_8

    :cond_19e
    if-ne v12, v6, :cond_27a

    .line 53
    sget-object v11, Ls/e$b;->p:Ls/e$b;

    if-eq v8, v11, :cond_1a8

    sget-object v7, Ls/e$b;->o:Ls/e$b;

    if-ne v8, v7, :cond_27a

    :cond_1a8
    if-ne v13, v9, :cond_1ef

    if-ne v8, v11, :cond_1b6

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object v5, v2

    move-object v6, v11

    move-object v8, v11

    .line 54
    invoke-direct/range {v4 .. v9}, Lt/e;->l(Ls/e;Ls/e$b;ILs/e$b;I)V

    .line 55
    :cond_1b6
    invoke-virtual {v2}, Ls/e;->U()I

    move-result v7

    .line 56
    iget v3, v2, Ls/e;->d0:F

    .line 57
    invoke-virtual {v2}, Ls/e;->u()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1c7

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v3, v4, v3

    :cond_1c7
    int-to-float v4, v7

    mul-float v4, v4, v3

    add-float/2addr v4, v14

    float-to-int v9, v4

    .line 58
    sget-object v8, Ls/e$b;->o:Ls/e$b;

    move-object/from16 v4, p0

    move-object v5, v2

    move-object v6, v8

    invoke-direct/range {v4 .. v9}, Lt/e;->l(Ls/e;Ls/e$b;ILs/e$b;I)V

    .line 59
    iget-object v3, v2, Ls/e;->e:Lt/l;

    iget-object v3, v3, Lt/p;->e:Lt/g;

    invoke-virtual {v2}, Ls/e;->U()I

    move-result v4

    invoke-virtual {v3, v4}, Lt/g;->d(I)V

    .line 60
    iget-object v3, v2, Ls/e;->f:Lt/n;

    iget-object v3, v3, Lt/p;->e:Lt/g;

    invoke-virtual {v2}, Ls/e;->v()I

    move-result v4

    invoke-virtual {v3, v4}, Lt/g;->d(I)V

    .line 61
    iput-boolean v10, v2, Ls/e;->a:Z

    goto/16 :goto_8

    :cond_1ef
    if-ne v13, v10, :cond_207

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object v5, v2

    move-object v6, v8

    move-object v8, v11

    .line 62
    invoke-direct/range {v4 .. v9}, Lt/e;->l(Ls/e;Ls/e$b;ILs/e$b;I)V

    .line 63
    iget-object v3, v2, Ls/e;->f:Lt/n;

    iget-object v3, v3, Lt/p;->e:Lt/g;

    invoke-virtual {v2}, Ls/e;->v()I

    move-result v2

    iput v2, v3, Lt/g;->m:I

    goto/16 :goto_8

    :cond_207
    const/4 v7, 0x2

    if-ne v13, v7, :cond_247

    .line 64
    iget-object v7, v0, Ls/e;->Z:[Ls/e$b;

    aget-object v9, v7, v10

    sget-object v11, Ls/e$b;->o:Ls/e$b;

    if-eq v9, v11, :cond_216

    aget-object v7, v7, v10

    if-ne v7, v4, :cond_27a

    .line 65
    :cond_216
    iget v3, v2, Ls/e;->E:F

    .line 66
    invoke-virtual {v2}, Ls/e;->U()I

    move-result v7

    .line 67
    invoke-virtual/range {p1 .. p1}, Ls/e;->v()I

    move-result v4

    int-to-float v4, v4

    mul-float v3, v3, v4

    add-float/2addr v3, v14

    float-to-int v9, v3

    move-object/from16 v4, p0

    move-object v5, v2

    move-object v6, v8

    move-object v8, v11

    .line 68
    invoke-direct/range {v4 .. v9}, Lt/e;->l(Ls/e;Ls/e$b;ILs/e$b;I)V

    .line 69
    iget-object v3, v2, Ls/e;->e:Lt/l;

    iget-object v3, v3, Lt/p;->e:Lt/g;

    invoke-virtual {v2}, Ls/e;->U()I

    move-result v4

    invoke-virtual {v3, v4}, Lt/g;->d(I)V

    .line 70
    iget-object v3, v2, Ls/e;->f:Lt/n;

    iget-object v3, v3, Lt/p;->e:Lt/g;

    invoke-virtual {v2}, Ls/e;->v()I

    move-result v4

    invoke-virtual {v3, v4}, Lt/g;->d(I)V

    .line 71
    iput-boolean v10, v2, Ls/e;->a:Z

    goto/16 :goto_8

    .line 72
    :cond_247
    iget-object v4, v2, Ls/e;->W:[Ls/d;

    const/4 v7, 0x2

    aget-object v15, v4, v7

    iget-object v7, v15, Ls/d;->f:Ls/d;

    if-eqz v7, :cond_256

    aget-object v4, v4, v9

    iget-object v4, v4, Ls/d;->f:Ls/d;

    if-nez v4, :cond_27a

    :cond_256
    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object v5, v2

    move-object v6, v11

    move-object v8, v12

    .line 73
    invoke-direct/range {v4 .. v9}, Lt/e;->l(Ls/e;Ls/e$b;ILs/e$b;I)V

    .line 74
    iget-object v3, v2, Ls/e;->e:Lt/l;

    iget-object v3, v3, Lt/p;->e:Lt/g;

    invoke-virtual {v2}, Ls/e;->U()I

    move-result v4

    invoke-virtual {v3, v4}, Lt/g;->d(I)V

    .line 75
    iget-object v3, v2, Ls/e;->f:Lt/n;

    iget-object v3, v3, Lt/p;->e:Lt/g;

    invoke-virtual {v2}, Ls/e;->v()I

    move-result v4

    invoke-virtual {v3, v4}, Lt/g;->d(I)V

    .line 76
    iput-boolean v10, v2, Ls/e;->a:Z

    goto/16 :goto_8

    :cond_27a
    if-ne v8, v6, :cond_8

    if-ne v12, v6, :cond_8

    if-eq v5, v10, :cond_2cb

    if-ne v13, v10, :cond_283

    goto :goto_2cb

    :cond_283
    const/4 v4, 0x2

    if-ne v13, v4, :cond_8

    if-ne v5, v4, :cond_8

    .line 77
    iget-object v4, v0, Ls/e;->Z:[Ls/e$b;

    aget-object v3, v4, v3

    sget-object v8, Ls/e$b;->o:Ls/e$b;

    if-ne v3, v8, :cond_8

    aget-object v3, v4, v10

    if-ne v3, v8, :cond_8

    .line 78
    iget v3, v2, Ls/e;->B:F

    .line 79
    iget v4, v2, Ls/e;->E:F

    .line 80
    invoke-virtual/range {p1 .. p1}, Ls/e;->U()I

    move-result v5

    int-to-float v5, v5

    mul-float v3, v3, v5

    add-float/2addr v3, v14

    float-to-int v7, v3

    .line 81
    invoke-virtual/range {p1 .. p1}, Ls/e;->v()I

    move-result v3

    int-to-float v3, v3

    mul-float v4, v4, v3

    add-float/2addr v4, v14

    float-to-int v9, v4

    move-object/from16 v4, p0

    move-object v5, v2

    move-object v6, v8

    .line 82
    invoke-direct/range {v4 .. v9}, Lt/e;->l(Ls/e;Ls/e$b;ILs/e$b;I)V

    .line 83
    iget-object v3, v2, Ls/e;->e:Lt/l;

    iget-object v3, v3, Lt/p;->e:Lt/g;

    invoke-virtual {v2}, Ls/e;->U()I

    move-result v4

    invoke-virtual {v3, v4}, Lt/g;->d(I)V

    .line 84
    iget-object v3, v2, Ls/e;->f:Lt/n;

    iget-object v3, v3, Lt/p;->e:Lt/g;

    invoke-virtual {v2}, Ls/e;->v()I

    move-result v4

    invoke-virtual {v3, v4}, Lt/g;->d(I)V

    .line 85
    iput-boolean v10, v2, Ls/e;->a:Z

    goto/16 :goto_8

    .line 86
    :cond_2cb
    :goto_2cb
    sget-object v8, Ls/e$b;->p:Ls/e$b;

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object v5, v2

    move-object v6, v8

    invoke-direct/range {v4 .. v9}, Lt/e;->l(Ls/e;Ls/e$b;ILs/e$b;I)V

    .line 87
    iget-object v3, v2, Ls/e;->e:Lt/l;

    iget-object v3, v3, Lt/p;->e:Lt/g;

    invoke-virtual {v2}, Ls/e;->U()I

    move-result v4

    iput v4, v3, Lt/g;->m:I

    .line 88
    iget-object v3, v2, Ls/e;->f:Lt/n;

    iget-object v3, v3, Lt/p;->e:Lt/g;

    invoke-virtual {v2}, Ls/e;->v()I

    move-result v2

    iput v2, v3, Lt/g;->m:I

    goto/16 :goto_8

    .line 89
    :cond_2ec
    :goto_2ec
    invoke-virtual {v2}, Ls/e;->U()I

    move-result v3

    if-ne v8, v4, :cond_305

    .line 90
    invoke-virtual/range {p1 .. p1}, Ls/e;->U()I

    move-result v3

    iget-object v5, v2, Ls/e;->O:Ls/d;

    iget v5, v5, Ls/d;->g:I

    sub-int/2addr v3, v5

    iget-object v5, v2, Ls/e;->Q:Ls/d;

    iget v5, v5, Ls/d;->g:I

    sub-int/2addr v3, v5

    .line 91
    sget-object v5, Ls/e$b;->o:Ls/e$b;

    move v7, v3

    move-object v6, v5

    goto :goto_307

    :cond_305
    move v7, v3

    move-object v6, v8

    .line 92
    :goto_307
    invoke-virtual {v2}, Ls/e;->v()I

    move-result v3

    if-ne v12, v4, :cond_320

    .line 93
    invoke-virtual/range {p1 .. p1}, Ls/e;->v()I

    move-result v3

    iget-object v4, v2, Ls/e;->P:Ls/d;

    iget v4, v4, Ls/d;->g:I

    sub-int/2addr v3, v4

    iget-object v4, v2, Ls/e;->R:Ls/d;

    iget v4, v4, Ls/d;->g:I

    sub-int/2addr v3, v4

    .line 94
    sget-object v4, Ls/e$b;->o:Ls/e$b;

    move v9, v3

    move-object v8, v4

    goto :goto_322

    :cond_320
    move v9, v3

    move-object v8, v12

    :goto_322
    move-object/from16 v4, p0

    move-object v5, v2

    .line 95
    invoke-direct/range {v4 .. v9}, Lt/e;->l(Ls/e;Ls/e$b;ILs/e$b;I)V

    .line 96
    iget-object v3, v2, Ls/e;->e:Lt/l;

    iget-object v3, v3, Lt/p;->e:Lt/g;

    invoke-virtual {v2}, Ls/e;->U()I

    move-result v4

    invoke-virtual {v3, v4}, Lt/g;->d(I)V

    .line 97
    iget-object v3, v2, Ls/e;->f:Lt/n;

    iget-object v3, v3, Lt/p;->e:Lt/g;

    invoke-virtual {v2}, Ls/e;->v()I

    move-result v4

    invoke-virtual {v3, v4}, Lt/g;->d(I)V

    .line 98
    iput-boolean v10, v2, Ls/e;->a:Z

    goto/16 :goto_8

    :cond_342
    return v3
.end method

.method private e(Ls/f;I)I
    .registers 9

    .line 1
    iget-object v0, p0, Lt/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v0, :cond_1e

    .line 2
    iget-object v4, p0, Lt/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lt/m;

    .line 3
    invoke-virtual {v4, p1, p2}, Lt/m;->b(Ls/f;I)J

    move-result-wide v4

    .line 4
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_1e
    long-to-int p1, v1

    return p1
.end method

.method private i(Lt/p;ILjava/util/ArrayList;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt/p;",
            "I",
            "Ljava/util/ArrayList<",
            "Lt/m;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lt/p;->h:Lt/f;

    iget-object v0, v0, Lt/f;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt/d;

    .line 2
    instance-of v2, v1, Lt/f;

    if-eqz v2, :cond_26

    .line 3
    move-object v4, v1

    check-cast v4, Lt/f;

    const/4 v6, 0x0

    .line 4
    iget-object v7, p1, Lt/p;->i:Lt/f;

    const/4 v9, 0x0

    move-object v3, p0

    move v5, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v9}, Lt/e;->a(Lt/f;IILt/f;Ljava/util/ArrayList;Lt/m;)V

    goto :goto_8

    .line 5
    :cond_26
    instance-of v2, v1, Lt/p;

    if-eqz v2, :cond_8

    .line 6
    check-cast v1, Lt/p;

    .line 7
    iget-object v3, v1, Lt/p;->h:Lt/f;

    const/4 v5, 0x0

    iget-object v6, p1, Lt/p;->i:Lt/f;

    const/4 v8, 0x0

    move-object v2, p0

    move v4, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v8}, Lt/e;->a(Lt/f;IILt/f;Ljava/util/ArrayList;Lt/m;)V

    goto :goto_8

    .line 8
    :cond_39
    iget-object v0, p1, Lt/p;->i:Lt/f;

    iget-object v0, v0, Lt/f;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_41
    :goto_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_72

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt/d;

    .line 9
    instance-of v2, v1, Lt/f;

    if-eqz v2, :cond_5f

    .line 10
    move-object v4, v1

    check-cast v4, Lt/f;

    const/4 v6, 0x1

    .line 11
    iget-object v7, p1, Lt/p;->h:Lt/f;

    const/4 v9, 0x0

    move-object v3, p0

    move v5, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v9}, Lt/e;->a(Lt/f;IILt/f;Ljava/util/ArrayList;Lt/m;)V

    goto :goto_41

    .line 12
    :cond_5f
    instance-of v2, v1, Lt/p;

    if-eqz v2, :cond_41

    .line 13
    check-cast v1, Lt/p;

    .line 14
    iget-object v3, v1, Lt/p;->i:Lt/f;

    const/4 v5, 0x1

    iget-object v6, p1, Lt/p;->h:Lt/f;

    const/4 v8, 0x0

    move-object v2, p0

    move v4, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v8}, Lt/e;->a(Lt/f;IILt/f;Ljava/util/ArrayList;Lt/m;)V

    goto :goto_41

    :cond_72
    const/4 v0, 0x1

    if-ne p2, v0, :cond_9c

    .line 15
    check-cast p1, Lt/n;

    iget-object p1, p1, Lt/n;->k:Lt/f;

    iget-object p1, p1, Lt/f;->k:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7f
    :goto_7f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/d;

    .line 16
    instance-of v1, v0, Lt/f;

    if-eqz v1, :cond_7f

    .line 17
    move-object v3, v0

    check-cast v3, Lt/f;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move v4, p2

    move-object v7, p3

    .line 18
    invoke-direct/range {v2 .. v8}, Lt/e;->a(Lt/f;IILt/f;Ljava/util/ArrayList;Lt/m;)V

    goto :goto_7f

    :cond_9c
    return-void
.end method

.method private l(Ls/e;Ls/e$b;ILs/e$b;I)V
    .registers 7

    .line 1
    iget-object v0, p0, Lt/e;->h:Lt/b$a;

    iput-object p2, v0, Lt/b$a;->a:Ls/e$b;

    .line 2
    iput-object p4, v0, Lt/b$a;->b:Ls/e$b;

    .line 3
    iput p3, v0, Lt/b$a;->c:I

    .line 4
    iput p5, v0, Lt/b$a;->d:I

    .line 5
    iget-object p2, p0, Lt/e;->g:Lt/b$b;

    invoke-interface {p2, p1, v0}, Lt/b$b;->b(Ls/e;Lt/b$a;)V

    .line 6
    iget-object p2, p0, Lt/e;->h:Lt/b$a;

    iget p2, p2, Lt/b$a;->e:I

    invoke-virtual {p1, p2}, Ls/e;->h1(I)V

    .line 7
    iget-object p2, p0, Lt/e;->h:Lt/b$a;

    iget p2, p2, Lt/b$a;->f:I

    invoke-virtual {p1, p2}, Ls/e;->I0(I)V

    .line 8
    iget-object p2, p0, Lt/e;->h:Lt/b$a;

    iget-boolean p2, p2, Lt/b$a;->h:Z

    invoke-virtual {p1, p2}, Ls/e;->H0(Z)V

    .line 9
    iget-object p2, p0, Lt/e;->h:Lt/b$a;

    iget p2, p2, Lt/b$a;->g:I

    invoke-virtual {p1, p2}, Ls/e;->x0(I)V

    return-void
.end method


# virtual methods
.method public c()V
    .registers 5

    .line 1
    iget-object v0, p0, Lt/e;->e:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lt/e;->d(Ljava/util/ArrayList;)V

    .line 2
    iget-object v0, p0, Lt/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 3
    sput v0, Lt/m;->h:I

    .line 4
    iget-object v1, p0, Lt/e;->a:Ls/f;

    iget-object v1, v1, Ls/e;->e:Lt/l;

    iget-object v2, p0, Lt/e;->i:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v0, v2}, Lt/e;->i(Lt/p;ILjava/util/ArrayList;)V

    .line 5
    iget-object v1, p0, Lt/e;->a:Ls/f;

    iget-object v1, v1, Ls/e;->f:Lt/n;

    iget-object v2, p0, Lt/e;->i:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {p0, v1, v3, v2}, Lt/e;->i(Lt/p;ILjava/util/ArrayList;)V

    .line 6
    iput-boolean v0, p0, Lt/e;->b:Z

    return-void
.end method

.method public d(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lt/p;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p0, Lt/e;->d:Ls/f;

    iget-object v0, v0, Ls/e;->e:Lt/l;

    invoke-virtual {v0}, Lt/l;->f()V

    .line 3
    iget-object v0, p0, Lt/e;->d:Ls/f;

    iget-object v0, v0, Ls/e;->f:Lt/n;

    invoke-virtual {v0}, Lt/n;->f()V

    .line 4
    iget-object v0, p0, Lt/e;->d:Ls/f;

    iget-object v0, v0, Ls/e;->e:Lt/l;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lt/e;->d:Ls/f;

    iget-object v0, v0, Ls/e;->f:Lt/n;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lt/e;->d:Ls/f;

    iget-object v0, v0, Ls/l;->K0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_28
    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_96

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls/e;

    .line 7
    instance-of v3, v2, Ls/g;

    if-eqz v3, :cond_41

    .line 8
    new-instance v3, Lt/j;

    invoke-direct {v3, v2}, Lt/j;-><init>(Ls/e;)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 9
    :cond_41
    invoke-virtual {v2}, Ls/e;->g0()Z

    move-result v3

    if-eqz v3, :cond_60

    .line 10
    iget-object v3, v2, Ls/e;->c:Lt/c;

    if-nez v3, :cond_53

    .line 11
    new-instance v3, Lt/c;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lt/c;-><init>(Ls/e;I)V

    iput-object v3, v2, Ls/e;->c:Lt/c;

    :cond_53
    if-nez v1, :cond_5a

    .line 12
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 13
    :cond_5a
    iget-object v3, v2, Ls/e;->c:Lt/c;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_65

    .line 14
    :cond_60
    iget-object v3, v2, Ls/e;->e:Lt/l;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    :goto_65
    invoke-virtual {v2}, Ls/e;->i0()Z

    move-result v3

    if-eqz v3, :cond_84

    .line 16
    iget-object v3, v2, Ls/e;->d:Lt/c;

    if-nez v3, :cond_77

    .line 17
    new-instance v3, Lt/c;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Lt/c;-><init>(Ls/e;I)V

    iput-object v3, v2, Ls/e;->d:Lt/c;

    :cond_77
    if-nez v1, :cond_7e

    .line 18
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 19
    :cond_7e
    iget-object v3, v2, Ls/e;->d:Lt/c;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_89

    .line 20
    :cond_84
    iget-object v3, v2, Ls/e;->f:Lt/n;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    :goto_89
    instance-of v3, v2, Ls/i;

    if-eqz v3, :cond_28

    .line 22
    new-instance v3, Lt/k;

    invoke-direct {v3, v2}, Lt/k;-><init>(Ls/e;)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_96
    if-eqz v1, :cond_9b

    .line 23
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 24
    :cond_9b
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_af

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt/p;

    .line 25
    invoke-virtual {v1}, Lt/p;->f()V

    goto :goto_9f

    .line 26
    :cond_af
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ca

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/p;

    .line 27
    iget-object v1, v0, Lt/p;->b:Ls/e;

    iget-object v2, p0, Lt/e;->d:Ls/f;

    if-ne v1, v2, :cond_c6

    goto :goto_b3

    .line 28
    :cond_c6
    invoke-virtual {v0}, Lt/p;->d()V

    goto :goto_b3

    :cond_ca
    return-void
.end method

.method public f(Z)Z
    .registers 11

    const/4 v0, 0x1

    and-int/2addr p1, v0

    .line 1
    iget-boolean v1, p0, Lt/e;->b:Z

    const/4 v2, 0x0

    if-nez v1, :cond_b

    iget-boolean v1, p0, Lt/e;->c:Z

    if-eqz v1, :cond_46

    .line 2
    :cond_b
    iget-object v1, p0, Lt/e;->a:Ls/f;

    iget-object v1, v1, Ls/l;->K0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls/e;

    .line 3
    invoke-virtual {v3}, Ls/e;->l()V

    .line 4
    iput-boolean v2, v3, Ls/e;->a:Z

    .line 5
    iget-object v4, v3, Ls/e;->e:Lt/l;

    invoke-virtual {v4}, Lt/l;->r()V

    .line 6
    iget-object v3, v3, Ls/e;->f:Lt/n;

    invoke-virtual {v3}, Lt/n;->q()V

    goto :goto_13

    .line 7
    :cond_2f
    iget-object v1, p0, Lt/e;->a:Ls/f;

    invoke-virtual {v1}, Ls/e;->l()V

    .line 8
    iget-object v1, p0, Lt/e;->a:Ls/f;

    iput-boolean v2, v1, Ls/e;->a:Z

    .line 9
    iget-object v1, v1, Ls/e;->e:Lt/l;

    invoke-virtual {v1}, Lt/l;->r()V

    .line 10
    iget-object v1, p0, Lt/e;->a:Ls/f;

    iget-object v1, v1, Ls/e;->f:Lt/n;

    invoke-virtual {v1}, Lt/n;->q()V

    .line 11
    iput-boolean v2, p0, Lt/e;->c:Z

    .line 12
    :cond_46
    iget-object v1, p0, Lt/e;->d:Ls/f;

    invoke-direct {p0, v1}, Lt/e;->b(Ls/f;)Z

    move-result v1

    if-eqz v1, :cond_4f

    return v2

    .line 13
    :cond_4f
    iget-object v1, p0, Lt/e;->a:Ls/f;

    invoke-virtual {v1, v2}, Ls/e;->j1(I)V

    .line 14
    iget-object v1, p0, Lt/e;->a:Ls/f;

    invoke-virtual {v1, v2}, Ls/e;->k1(I)V

    .line 15
    iget-object v1, p0, Lt/e;->a:Ls/f;

    invoke-virtual {v1, v2}, Ls/e;->s(I)Ls/e$b;

    move-result-object v1

    .line 16
    iget-object v3, p0, Lt/e;->a:Ls/f;

    invoke-virtual {v3, v0}, Ls/e;->s(I)Ls/e$b;

    move-result-object v3

    .line 17
    iget-boolean v4, p0, Lt/e;->b:Z

    if-eqz v4, :cond_6c

    .line 18
    invoke-virtual {p0}, Lt/e;->c()V

    .line 19
    :cond_6c
    iget-object v4, p0, Lt/e;->a:Ls/f;

    invoke-virtual {v4}, Ls/e;->V()I

    move-result v4

    .line 20
    iget-object v5, p0, Lt/e;->a:Ls/f;

    invoke-virtual {v5}, Ls/e;->W()I

    move-result v5

    .line 21
    iget-object v6, p0, Lt/e;->a:Ls/f;

    iget-object v6, v6, Ls/e;->e:Lt/l;

    iget-object v6, v6, Lt/p;->h:Lt/f;

    invoke-virtual {v6, v4}, Lt/f;->d(I)V

    .line 22
    iget-object v6, p0, Lt/e;->a:Ls/f;

    iget-object v6, v6, Ls/e;->f:Lt/n;

    iget-object v6, v6, Lt/p;->h:Lt/f;

    invoke-virtual {v6, v5}, Lt/f;->d(I)V

    .line 23
    invoke-virtual {p0}, Lt/e;->m()V

    .line 24
    sget-object v6, Ls/e$b;->p:Ls/e$b;

    if-eq v1, v6, :cond_93

    if-ne v3, v6, :cond_f4

    :cond_93
    if-eqz p1, :cond_ae

    .line 25
    iget-object v6, p0, Lt/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_ae

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lt/p;

    .line 26
    invoke-virtual {v7}, Lt/p;->m()Z

    move-result v7

    if-nez v7, :cond_9b

    const/4 p1, 0x0

    :cond_ae
    if-eqz p1, :cond_d1

    .line 27
    sget-object v6, Ls/e$b;->p:Ls/e$b;

    if-ne v1, v6, :cond_d1

    .line 28
    iget-object v6, p0, Lt/e;->a:Ls/f;

    sget-object v7, Ls/e$b;->o:Ls/e$b;

    invoke-virtual {v6, v7}, Ls/e;->M0(Ls/e$b;)V

    .line 29
    iget-object v6, p0, Lt/e;->a:Ls/f;

    invoke-direct {p0, v6, v2}, Lt/e;->e(Ls/f;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ls/e;->h1(I)V

    .line 30
    iget-object v6, p0, Lt/e;->a:Ls/f;

    iget-object v7, v6, Ls/e;->e:Lt/l;

    iget-object v7, v7, Lt/p;->e:Lt/g;

    invoke-virtual {v6}, Ls/e;->U()I

    move-result v6

    invoke-virtual {v7, v6}, Lt/g;->d(I)V

    :cond_d1
    if-eqz p1, :cond_f4

    .line 31
    sget-object p1, Ls/e$b;->p:Ls/e$b;

    if-ne v3, p1, :cond_f4

    .line 32
    iget-object p1, p0, Lt/e;->a:Ls/f;

    sget-object v6, Ls/e$b;->o:Ls/e$b;

    invoke-virtual {p1, v6}, Ls/e;->d1(Ls/e$b;)V

    .line 33
    iget-object p1, p0, Lt/e;->a:Ls/f;

    invoke-direct {p0, p1, v0}, Lt/e;->e(Ls/f;I)I

    move-result v6

    invoke-virtual {p1, v6}, Ls/e;->I0(I)V

    .line 34
    iget-object p1, p0, Lt/e;->a:Ls/f;

    iget-object v6, p1, Ls/e;->f:Lt/n;

    iget-object v6, v6, Lt/p;->e:Lt/g;

    invoke-virtual {p1}, Ls/e;->v()I

    move-result p1

    invoke-virtual {v6, p1}, Lt/g;->d(I)V

    .line 35
    :cond_f4
    iget-object p1, p0, Lt/e;->a:Ls/f;

    iget-object v6, p1, Ls/e;->Z:[Ls/e$b;

    aget-object v7, v6, v2

    sget-object v8, Ls/e$b;->o:Ls/e$b;

    if-eq v7, v8, :cond_107

    aget-object v6, v6, v2

    sget-object v7, Ls/e$b;->r:Ls/e$b;

    if-ne v6, v7, :cond_105

    goto :goto_107

    :cond_105
    const/4 p1, 0x0

    goto :goto_14c

    .line 36
    :cond_107
    :goto_107
    invoke-virtual {p1}, Ls/e;->U()I

    move-result p1

    add-int/2addr p1, v4

    .line 37
    iget-object v6, p0, Lt/e;->a:Ls/f;

    iget-object v6, v6, Ls/e;->e:Lt/l;

    iget-object v6, v6, Lt/p;->i:Lt/f;

    invoke-virtual {v6, p1}, Lt/f;->d(I)V

    .line 38
    iget-object v6, p0, Lt/e;->a:Ls/f;

    iget-object v6, v6, Ls/e;->e:Lt/l;

    iget-object v6, v6, Lt/p;->e:Lt/g;

    sub-int/2addr p1, v4

    invoke-virtual {v6, p1}, Lt/g;->d(I)V

    .line 39
    invoke-virtual {p0}, Lt/e;->m()V

    .line 40
    iget-object p1, p0, Lt/e;->a:Ls/f;

    iget-object v4, p1, Ls/e;->Z:[Ls/e$b;

    aget-object v6, v4, v0

    if-eq v6, v8, :cond_130

    aget-object v4, v4, v0

    sget-object v6, Ls/e$b;->r:Ls/e$b;

    if-ne v4, v6, :cond_148

    .line 41
    :cond_130
    invoke-virtual {p1}, Ls/e;->v()I

    move-result p1

    add-int/2addr p1, v5

    .line 42
    iget-object v4, p0, Lt/e;->a:Ls/f;

    iget-object v4, v4, Ls/e;->f:Lt/n;

    iget-object v4, v4, Lt/p;->i:Lt/f;

    invoke-virtual {v4, p1}, Lt/f;->d(I)V

    .line 43
    iget-object v4, p0, Lt/e;->a:Ls/f;

    iget-object v4, v4, Ls/e;->f:Lt/n;

    iget-object v4, v4, Lt/p;->e:Lt/g;

    sub-int/2addr p1, v5

    invoke-virtual {v4, p1}, Lt/g;->d(I)V

    .line 44
    :cond_148
    invoke-virtual {p0}, Lt/e;->m()V

    const/4 p1, 0x1

    .line 45
    :goto_14c
    iget-object v4, p0, Lt/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_152
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_16d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lt/p;

    .line 46
    iget-object v6, v5, Lt/p;->b:Ls/e;

    iget-object v7, p0, Lt/e;->a:Ls/f;

    if-ne v6, v7, :cond_169

    iget-boolean v6, v5, Lt/p;->g:Z

    if-nez v6, :cond_169

    goto :goto_152

    .line 47
    :cond_169
    invoke-virtual {v5}, Lt/p;->e()V

    goto :goto_152

    .line 48
    :cond_16d
    iget-object v4, p0, Lt/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_173
    :goto_173
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1aa

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lt/p;

    if-nez p1, :cond_188

    .line 49
    iget-object v6, v5, Lt/p;->b:Ls/e;

    iget-object v7, p0, Lt/e;->a:Ls/f;

    if-ne v6, v7, :cond_188

    goto :goto_173

    .line 50
    :cond_188
    iget-object v6, v5, Lt/p;->h:Lt/f;

    iget-boolean v6, v6, Lt/f;->j:Z

    if-nez v6, :cond_190

    :goto_18e
    const/4 v0, 0x0

    goto :goto_1aa

    .line 51
    :cond_190
    iget-object v6, v5, Lt/p;->i:Lt/f;

    iget-boolean v6, v6, Lt/f;->j:Z

    if-nez v6, :cond_19b

    instance-of v6, v5, Lt/j;

    if-nez v6, :cond_19b

    goto :goto_18e

    .line 52
    :cond_19b
    iget-object v6, v5, Lt/p;->e:Lt/g;

    iget-boolean v6, v6, Lt/f;->j:Z

    if-nez v6, :cond_173

    instance-of v6, v5, Lt/c;

    if-nez v6, :cond_173

    instance-of v5, v5, Lt/j;

    if-nez v5, :cond_173

    goto :goto_18e

    .line 53
    :cond_1aa
    :goto_1aa
    iget-object p1, p0, Lt/e;->a:Ls/f;

    invoke-virtual {p1, v1}, Ls/e;->M0(Ls/e$b;)V

    .line 54
    iget-object p1, p0, Lt/e;->a:Ls/f;

    invoke-virtual {p1, v3}, Ls/e;->d1(Ls/e$b;)V

    return v0
.end method

.method public g(Z)Z
    .registers 6

    .line 1
    iget-boolean p1, p0, Lt/e;->b:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_59

    .line 2
    iget-object p1, p0, Lt/e;->a:Ls/f;

    iget-object p1, p1, Ls/l;->K0:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls/e;

    .line 3
    invoke-virtual {v1}, Ls/e;->l()V

    .line 4
    iput-boolean v0, v1, Ls/e;->a:Z

    .line 5
    iget-object v2, v1, Ls/e;->e:Lt/l;

    iget-object v3, v2, Lt/p;->e:Lt/g;

    iput-boolean v0, v3, Lt/f;->j:Z

    .line 6
    iput-boolean v0, v2, Lt/p;->g:Z

    .line 7
    invoke-virtual {v2}, Lt/l;->r()V

    .line 8
    iget-object v1, v1, Ls/e;->f:Lt/n;

    iget-object v2, v1, Lt/p;->e:Lt/g;

    iput-boolean v0, v2, Lt/f;->j:Z

    .line 9
    iput-boolean v0, v1, Lt/p;->g:Z

    .line 10
    invoke-virtual {v1}, Lt/n;->q()V

    goto :goto_d

    .line 11
    :cond_35
    iget-object p1, p0, Lt/e;->a:Ls/f;

    invoke-virtual {p1}, Ls/e;->l()V

    .line 12
    iget-object p1, p0, Lt/e;->a:Ls/f;

    iput-boolean v0, p1, Ls/e;->a:Z

    .line 13
    iget-object p1, p1, Ls/e;->e:Lt/l;

    iget-object v1, p1, Lt/p;->e:Lt/g;

    iput-boolean v0, v1, Lt/f;->j:Z

    .line 14
    iput-boolean v0, p1, Lt/p;->g:Z

    .line 15
    invoke-virtual {p1}, Lt/l;->r()V

    .line 16
    iget-object p1, p0, Lt/e;->a:Ls/f;

    iget-object p1, p1, Ls/e;->f:Lt/n;

    iget-object v1, p1, Lt/p;->e:Lt/g;

    iput-boolean v0, v1, Lt/f;->j:Z

    .line 17
    iput-boolean v0, p1, Lt/p;->g:Z

    .line 18
    invoke-virtual {p1}, Lt/n;->q()V

    .line 19
    invoke-virtual {p0}, Lt/e;->c()V

    .line 20
    :cond_59
    iget-object p1, p0, Lt/e;->d:Ls/f;

    invoke-direct {p0, p1}, Lt/e;->b(Ls/f;)Z

    move-result p1

    if-eqz p1, :cond_62

    return v0

    .line 21
    :cond_62
    iget-object p1, p0, Lt/e;->a:Ls/f;

    invoke-virtual {p1, v0}, Ls/e;->j1(I)V

    .line 22
    iget-object p1, p0, Lt/e;->a:Ls/f;

    invoke-virtual {p1, v0}, Ls/e;->k1(I)V

    .line 23
    iget-object p1, p0, Lt/e;->a:Ls/f;

    iget-object p1, p1, Ls/e;->e:Lt/l;

    iget-object p1, p1, Lt/p;->h:Lt/f;

    invoke-virtual {p1, v0}, Lt/f;->d(I)V

    .line 24
    iget-object p1, p0, Lt/e;->a:Ls/f;

    iget-object p1, p1, Ls/e;->f:Lt/n;

    iget-object p1, p1, Lt/p;->h:Lt/f;

    invoke-virtual {p1, v0}, Lt/f;->d(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public h(ZI)Z
    .registers 12

    const/4 v0, 0x1

    and-int/2addr p1, v0

    .line 1
    iget-object v1, p0, Lt/e;->a:Ls/f;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ls/e;->s(I)Ls/e$b;

    move-result-object v1

    .line 2
    iget-object v3, p0, Lt/e;->a:Ls/f;

    invoke-virtual {v3, v0}, Ls/e;->s(I)Ls/e$b;

    move-result-object v3

    .line 3
    iget-object v4, p0, Lt/e;->a:Ls/f;

    invoke-virtual {v4}, Ls/e;->V()I

    move-result v4

    .line 4
    iget-object v5, p0, Lt/e;->a:Ls/f;

    invoke-virtual {v5}, Ls/e;->W()I

    move-result v5

    if-eqz p1, :cond_89

    .line 5
    sget-object v6, Ls/e$b;->p:Ls/e$b;

    if-eq v1, v6, :cond_23

    if-ne v3, v6, :cond_89

    .line 6
    :cond_23
    iget-object v6, p0, Lt/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_29
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_40

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lt/p;

    .line 7
    iget v8, v7, Lt/p;->f:I

    if-ne v8, p2, :cond_29

    .line 8
    invoke-virtual {v7}, Lt/p;->m()Z

    move-result v7

    if-nez v7, :cond_29

    const/4 p1, 0x0

    :cond_40
    if-nez p2, :cond_66

    if-eqz p1, :cond_89

    .line 9
    sget-object p1, Ls/e$b;->p:Ls/e$b;

    if-ne v1, p1, :cond_89

    .line 10
    iget-object p1, p0, Lt/e;->a:Ls/f;

    sget-object v6, Ls/e$b;->o:Ls/e$b;

    invoke-virtual {p1, v6}, Ls/e;->M0(Ls/e$b;)V

    .line 11
    iget-object p1, p0, Lt/e;->a:Ls/f;

    invoke-direct {p0, p1, v2}, Lt/e;->e(Ls/f;I)I

    move-result v6

    invoke-virtual {p1, v6}, Ls/e;->h1(I)V

    .line 12
    iget-object p1, p0, Lt/e;->a:Ls/f;

    iget-object v6, p1, Ls/e;->e:Lt/l;

    iget-object v6, v6, Lt/p;->e:Lt/g;

    invoke-virtual {p1}, Ls/e;->U()I

    move-result p1

    invoke-virtual {v6, p1}, Lt/g;->d(I)V

    goto :goto_89

    :cond_66
    if-eqz p1, :cond_89

    .line 13
    sget-object p1, Ls/e$b;->p:Ls/e$b;

    if-ne v3, p1, :cond_89

    .line 14
    iget-object p1, p0, Lt/e;->a:Ls/f;

    sget-object v6, Ls/e$b;->o:Ls/e$b;

    invoke-virtual {p1, v6}, Ls/e;->d1(Ls/e$b;)V

    .line 15
    iget-object p1, p0, Lt/e;->a:Ls/f;

    invoke-direct {p0, p1, v0}, Lt/e;->e(Ls/f;I)I

    move-result v6

    invoke-virtual {p1, v6}, Ls/e;->I0(I)V

    .line 16
    iget-object p1, p0, Lt/e;->a:Ls/f;

    iget-object v6, p1, Ls/e;->f:Lt/n;

    iget-object v6, v6, Lt/p;->e:Lt/g;

    invoke-virtual {p1}, Ls/e;->v()I

    move-result p1

    invoke-virtual {v6, p1}, Lt/g;->d(I)V

    :cond_89
    :goto_89
    if-nez p2, :cond_b4

    .line 17
    iget-object p1, p0, Lt/e;->a:Ls/f;

    iget-object v5, p1, Ls/e;->Z:[Ls/e$b;

    aget-object v6, v5, v2

    sget-object v7, Ls/e$b;->o:Ls/e$b;

    if-eq v6, v7, :cond_9b

    aget-object v5, v5, v2

    sget-object v6, Ls/e$b;->r:Ls/e$b;

    if-ne v5, v6, :cond_c5

    .line 18
    :cond_9b
    invoke-virtual {p1}, Ls/e;->U()I

    move-result p1

    add-int/2addr p1, v4

    .line 19
    iget-object v5, p0, Lt/e;->a:Ls/f;

    iget-object v5, v5, Ls/e;->e:Lt/l;

    iget-object v5, v5, Lt/p;->i:Lt/f;

    invoke-virtual {v5, p1}, Lt/f;->d(I)V

    .line 20
    iget-object v5, p0, Lt/e;->a:Ls/f;

    iget-object v5, v5, Ls/e;->e:Lt/l;

    iget-object v5, v5, Lt/p;->e:Lt/g;

    sub-int/2addr p1, v4

    invoke-virtual {v5, p1}, Lt/g;->d(I)V

    goto :goto_df

    .line 21
    :cond_b4
    iget-object p1, p0, Lt/e;->a:Ls/f;

    iget-object v4, p1, Ls/e;->Z:[Ls/e$b;

    aget-object v6, v4, v0

    sget-object v7, Ls/e$b;->o:Ls/e$b;

    if-eq v6, v7, :cond_c7

    aget-object v4, v4, v0

    sget-object v6, Ls/e$b;->r:Ls/e$b;

    if-ne v4, v6, :cond_c5

    goto :goto_c7

    :cond_c5
    const/4 p1, 0x0

    goto :goto_e0

    .line 22
    :cond_c7
    :goto_c7
    invoke-virtual {p1}, Ls/e;->v()I

    move-result p1

    add-int/2addr p1, v5

    .line 23
    iget-object v4, p0, Lt/e;->a:Ls/f;

    iget-object v4, v4, Ls/e;->f:Lt/n;

    iget-object v4, v4, Lt/p;->i:Lt/f;

    invoke-virtual {v4, p1}, Lt/f;->d(I)V

    .line 24
    iget-object v4, p0, Lt/e;->a:Ls/f;

    iget-object v4, v4, Ls/e;->f:Lt/n;

    iget-object v4, v4, Lt/p;->e:Lt/g;

    sub-int/2addr p1, v5

    invoke-virtual {v4, p1}, Lt/g;->d(I)V

    :goto_df
    const/4 p1, 0x1

    .line 25
    :goto_e0
    invoke-virtual {p0}, Lt/e;->m()V

    .line 26
    iget-object v4, p0, Lt/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_e9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_109

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lt/p;

    .line 27
    iget v6, v5, Lt/p;->f:I

    if-eq v6, p2, :cond_fa

    goto :goto_e9

    .line 28
    :cond_fa
    iget-object v6, v5, Lt/p;->b:Ls/e;

    iget-object v7, p0, Lt/e;->a:Ls/f;

    if-ne v6, v7, :cond_105

    iget-boolean v6, v5, Lt/p;->g:Z

    if-nez v6, :cond_105

    goto :goto_e9

    .line 29
    :cond_105
    invoke-virtual {v5}, Lt/p;->e()V

    goto :goto_e9

    .line 30
    :cond_109
    iget-object v4, p0, Lt/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_10f
    :goto_10f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_143

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lt/p;

    .line 31
    iget v6, v5, Lt/p;->f:I

    if-eq v6, p2, :cond_120

    goto :goto_10f

    :cond_120
    if-nez p1, :cond_129

    .line 32
    iget-object v6, v5, Lt/p;->b:Ls/e;

    iget-object v7, p0, Lt/e;->a:Ls/f;

    if-ne v6, v7, :cond_129

    goto :goto_10f

    .line 33
    :cond_129
    iget-object v6, v5, Lt/p;->h:Lt/f;

    iget-boolean v6, v6, Lt/f;->j:Z

    if-nez v6, :cond_131

    :goto_12f
    const/4 v0, 0x0

    goto :goto_143

    .line 34
    :cond_131
    iget-object v6, v5, Lt/p;->i:Lt/f;

    iget-boolean v6, v6, Lt/f;->j:Z

    if-nez v6, :cond_138

    goto :goto_12f

    .line 35
    :cond_138
    instance-of v6, v5, Lt/c;

    if-nez v6, :cond_10f

    iget-object v5, v5, Lt/p;->e:Lt/g;

    iget-boolean v5, v5, Lt/f;->j:Z

    if-nez v5, :cond_10f

    goto :goto_12f

    .line 36
    :cond_143
    :goto_143
    iget-object p1, p0, Lt/e;->a:Ls/f;

    invoke-virtual {p1, v1}, Ls/e;->M0(Ls/e$b;)V

    .line 37
    iget-object p1, p0, Lt/e;->a:Ls/f;

    invoke-virtual {p1, v3}, Ls/e;->d1(Ls/e$b;)V

    return v0
.end method

.method public j()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lt/e;->b:Z

    return-void
.end method

.method public k()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lt/e;->c:Z

    return-void
.end method

.method public m()V
    .registers 13

    .line 1
    iget-object v0, p0, Lt/e;->a:Ls/f;

    iget-object v0, v0, Ls/l;->K0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls/e;

    .line 2
    iget-boolean v2, v1, Ls/e;->a:Z

    if-eqz v2, :cond_19

    goto :goto_8

    .line 3
    :cond_19
    iget-object v2, v1, Ls/e;->Z:[Ls/e$b;

    const/4 v3, 0x0

    aget-object v8, v2, v3

    const/4 v9, 0x1

    .line 4
    aget-object v10, v2, v9

    .line 5
    iget v2, v1, Ls/e;->w:I

    .line 6
    iget v4, v1, Ls/e;->x:I

    .line 7
    sget-object v6, Ls/e$b;->p:Ls/e$b;

    if-eq v8, v6, :cond_32

    sget-object v5, Ls/e$b;->q:Ls/e$b;

    if-ne v8, v5, :cond_30

    if-ne v2, v9, :cond_30

    goto :goto_32

    :cond_30
    const/4 v2, 0x0

    goto :goto_33

    :cond_32
    :goto_32
    const/4 v2, 0x1

    :goto_33
    if-eq v10, v6, :cond_3b

    .line 8
    sget-object v5, Ls/e$b;->q:Ls/e$b;

    if-ne v10, v5, :cond_3c

    if-ne v4, v9, :cond_3c

    :cond_3b
    const/4 v3, 0x1

    .line 9
    :cond_3c
    iget-object v4, v1, Ls/e;->e:Lt/l;

    iget-object v4, v4, Lt/p;->e:Lt/g;

    iget-boolean v5, v4, Lt/f;->j:Z

    .line 10
    iget-object v7, v1, Ls/e;->f:Lt/n;

    iget-object v7, v7, Lt/p;->e:Lt/g;

    iget-boolean v11, v7, Lt/f;->j:Z

    if-eqz v5, :cond_5b

    if-eqz v11, :cond_5b

    .line 11
    sget-object v6, Ls/e$b;->o:Ls/e$b;

    iget v5, v4, Lt/f;->g:I

    iget v7, v7, Lt/f;->g:I

    move-object v2, p0

    move-object v3, v1

    move-object v4, v6

    invoke-direct/range {v2 .. v7}, Lt/e;->l(Ls/e;Ls/e$b;ILs/e$b;I)V

    .line 12
    iput-boolean v9, v1, Ls/e;->a:Z

    goto :goto_b6

    :cond_5b
    if-eqz v5, :cond_89

    if-eqz v3, :cond_89

    .line 13
    sget-object v5, Ls/e$b;->o:Ls/e$b;

    iget v8, v4, Lt/f;->g:I

    iget v7, v7, Lt/f;->g:I

    move-object v2, p0

    move-object v3, v1

    move-object v4, v5

    move v5, v8

    invoke-direct/range {v2 .. v7}, Lt/e;->l(Ls/e;Ls/e$b;ILs/e$b;I)V

    .line 14
    sget-object v2, Ls/e$b;->q:Ls/e$b;

    if-ne v10, v2, :cond_7b

    .line 15
    iget-object v2, v1, Ls/e;->f:Lt/n;

    iget-object v2, v2, Lt/p;->e:Lt/g;

    invoke-virtual {v1}, Ls/e;->v()I

    move-result v3

    iput v3, v2, Lt/g;->m:I

    goto :goto_b6

    .line 16
    :cond_7b
    iget-object v2, v1, Ls/e;->f:Lt/n;

    iget-object v2, v2, Lt/p;->e:Lt/g;

    invoke-virtual {v1}, Ls/e;->v()I

    move-result v3

    invoke-virtual {v2, v3}, Lt/g;->d(I)V

    .line 17
    iput-boolean v9, v1, Ls/e;->a:Z

    goto :goto_b6

    :cond_89
    if-eqz v11, :cond_b6

    if-eqz v2, :cond_b6

    .line 18
    iget v5, v4, Lt/f;->g:I

    sget-object v10, Ls/e$b;->o:Ls/e$b;

    iget v7, v7, Lt/f;->g:I

    move-object v2, p0

    move-object v3, v1

    move-object v4, v6

    move-object v6, v10

    invoke-direct/range {v2 .. v7}, Lt/e;->l(Ls/e;Ls/e$b;ILs/e$b;I)V

    .line 19
    sget-object v2, Ls/e$b;->q:Ls/e$b;

    if-ne v8, v2, :cond_a9

    .line 20
    iget-object v2, v1, Ls/e;->e:Lt/l;

    iget-object v2, v2, Lt/p;->e:Lt/g;

    invoke-virtual {v1}, Ls/e;->U()I

    move-result v3

    iput v3, v2, Lt/g;->m:I

    goto :goto_b6

    .line 21
    :cond_a9
    iget-object v2, v1, Ls/e;->e:Lt/l;

    iget-object v2, v2, Lt/p;->e:Lt/g;

    invoke-virtual {v1}, Ls/e;->U()I

    move-result v3

    invoke-virtual {v2, v3}, Lt/g;->d(I)V

    .line 22
    iput-boolean v9, v1, Ls/e;->a:Z

    .line 23
    :cond_b6
    :goto_b6
    iget-boolean v2, v1, Ls/e;->a:Z

    if-eqz v2, :cond_8

    iget-object v2, v1, Ls/e;->f:Lt/n;

    iget-object v2, v2, Lt/n;->l:Lt/g;

    if-eqz v2, :cond_8

    .line 24
    invoke-virtual {v1}, Ls/e;->n()I

    move-result v1

    invoke-virtual {v2, v1}, Lt/g;->d(I)V

    goto/16 :goto_8

    :cond_c9
    return-void
.end method

.method public n(Lt/b$b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lt/e;->g:Lt/b$b;

    return-void
.end method
