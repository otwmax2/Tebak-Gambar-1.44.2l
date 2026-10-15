###### Class t.i (t.i)
.class public Lt/i;
.super Ljava/lang/Object;
.source "Grouping.java"


# direct methods
.method public static a(Ls/e;ILjava/util/ArrayList;Lt/o;)Lt/o;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls/e;",
            "I",
            "Ljava/util/ArrayList<",
            "Lt/o;",
            ">;",
            "Lt/o;",
            ")",
            "Lt/o;"
        }
    .end annotation

    if-nez p1, :cond_5

    .line 1
    iget v0, p0, Ls/e;->H0:I

    goto :goto_7

    .line 2
    :cond_5
    iget v0, p0, Ls/e;->I0:I

    :goto_7
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_31

    if-eqz p3, :cond_11

    .line 3
    iget v3, p3, Lt/o;->b:I

    if-eq v0, v3, :cond_31

    :cond_11
    const/4 v3, 0x0

    .line 4
    :goto_12
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_34

    .line 5
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lt/o;

    .line 6
    invoke-virtual {v4}, Lt/o;->c()I

    move-result v5

    if-ne v5, v0, :cond_2e

    if-eqz p3, :cond_2c

    .line 7
    invoke-virtual {p3, p1, v4}, Lt/o;->g(ILt/o;)V

    .line 8
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2c
    move-object p3, v4

    goto :goto_34

    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_31
    if-eq v0, v2, :cond_34

    return-object p3

    :cond_34
    :goto_34
    if-nez p3, :cond_65

    .line 9
    instance-of v0, p0, Ls/i;

    if-eqz v0, :cond_5b

    .line 10
    move-object v0, p0

    check-cast v0, Ls/i;

    .line 11
    invoke-virtual {v0, p1}, Ls/i;->p1(I)I

    move-result v0

    if-eq v0, v2, :cond_5b

    const/4 v2, 0x0

    .line 12
    :goto_44
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5b

    .line 13
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt/o;

    .line 14
    invoke-virtual {v3}, Lt/o;->c()I

    move-result v4

    if-ne v4, v0, :cond_58

    move-object p3, v3

    goto :goto_5b

    :cond_58
    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    :cond_5b
    :goto_5b
    if-nez p3, :cond_62

    .line 15
    new-instance p3, Lt/o;

    invoke-direct {p3, p1}, Lt/o;-><init>(I)V

    .line 16
    :cond_62
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_65
    invoke-virtual {p3, p0}, Lt/o;->a(Ls/e;)Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 18
    instance-of v0, p0, Ls/g;

    if-eqz v0, :cond_80

    .line 19
    move-object v0, p0

    check-cast v0, Ls/g;

    .line 20
    invoke-virtual {v0}, Ls/g;->o1()Ls/d;

    move-result-object v2

    invoke-virtual {v0}, Ls/g;->p1()I

    move-result v0

    if-nez v0, :cond_7d

    const/4 v1, 0x1

    :cond_7d
    invoke-virtual {v2, v1, p2, p3}, Ls/d;->b(ILjava/util/ArrayList;Lt/o;)V

    :cond_80
    if-nez p1, :cond_93

    .line 21
    invoke-virtual {p3}, Lt/o;->c()I

    move-result v0

    iput v0, p0, Ls/e;->H0:I

    .line 22
    iget-object v0, p0, Ls/e;->O:Ls/d;

    invoke-virtual {v0, p1, p2, p3}, Ls/d;->b(ILjava/util/ArrayList;Lt/o;)V

    .line 23
    iget-object v0, p0, Ls/e;->Q:Ls/d;

    invoke-virtual {v0, p1, p2, p3}, Ls/d;->b(ILjava/util/ArrayList;Lt/o;)V

    goto :goto_a8

    .line 24
    :cond_93
    invoke-virtual {p3}, Lt/o;->c()I

    move-result v0

    iput v0, p0, Ls/e;->I0:I

    .line 25
    iget-object v0, p0, Ls/e;->P:Ls/d;

    invoke-virtual {v0, p1, p2, p3}, Ls/d;->b(ILjava/util/ArrayList;Lt/o;)V

    .line 26
    iget-object v0, p0, Ls/e;->S:Ls/d;

    invoke-virtual {v0, p1, p2, p3}, Ls/d;->b(ILjava/util/ArrayList;Lt/o;)V

    .line 27
    iget-object v0, p0, Ls/e;->R:Ls/d;

    invoke-virtual {v0, p1, p2, p3}, Ls/d;->b(ILjava/util/ArrayList;Lt/o;)V

    .line 28
    :goto_a8
    iget-object p0, p0, Ls/e;->V:Ls/d;

    invoke-virtual {p0, p1, p2, p3}, Ls/d;->b(ILjava/util/ArrayList;Lt/o;)V

    :cond_ad
    return-object p3
.end method

.method private static b(Ljava/util/ArrayList;I)Lt/o;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lt/o;",
            ">;I)",
            "Lt/o;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_15

    .line 2
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt/o;

    .line 3
    iget v3, v2, Lt/o;->b:I

    if-ne p1, v3, :cond_12

    return-object v2

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Ls/f;Lt/b$b;)Z
    .registers 18

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Ls/l;->o1()Ljava/util/ArrayList;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v2, :cond_2e

    .line 3
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls/e;

    .line 4
    invoke-virtual/range {p0 .. p0}, Ls/e;->y()Ls/e$b;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Ls/e;->R()Ls/e$b;

    move-result-object v7

    .line 5
    invoke-virtual {v5}, Ls/e;->y()Ls/e$b;

    move-result-object v8

    invoke-virtual {v5}, Ls/e;->R()Ls/e$b;

    move-result-object v5

    .line 6
    invoke-static {v6, v7, v8, v5}, Lt/i;->d(Ls/e$b;Ls/e$b;Ls/e$b;Ls/e$b;)Z

    move-result v5

    if-nez v5, :cond_2b

    return v3

    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_2e
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_35
    if-ge v5, v2, :cond_111

    .line 7
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ls/e;

    .line 8
    invoke-virtual/range {p0 .. p0}, Ls/e;->y()Ls/e$b;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Ls/e;->R()Ls/e$b;

    move-result-object v15

    .line 9
    invoke-virtual {v13}, Ls/e;->y()Ls/e$b;

    move-result-object v4

    invoke-virtual {v13}, Ls/e;->R()Ls/e$b;

    move-result-object v12

    .line 10
    invoke-static {v14, v15, v4, v12}, Lt/i;->d(Ls/e$b;Ls/e$b;Ls/e$b;Ls/e$b;)Z

    move-result v4

    if-nez v4, :cond_5d

    .line 11
    iget-object v4, v0, Ls/f;->o1:Lt/b$a;

    sget v12, Lt/b$a;->k:I

    move-object/from16 v14, p1

    invoke-static {v3, v13, v14, v4, v12}, Ls/f;->O1(ILs/e;Lt/b$b;Lt/b$a;I)Z

    goto :goto_5f

    :cond_5d
    move-object/from16 v14, p1

    .line 12
    :goto_5f
    instance-of v4, v13, Ls/g;

    if-eqz v4, :cond_88

    .line 13
    move-object v12, v13

    check-cast v12, Ls/g;

    .line 14
    invoke-virtual {v12}, Ls/g;->p1()I

    move-result v15

    if-nez v15, :cond_76

    if-nez v8, :cond_73

    .line 15
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 16
    :cond_73
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_76
    invoke-virtual {v12}, Ls/g;->p1()I

    move-result v15

    const/4 v3, 0x1

    if-ne v15, v3, :cond_88

    if-nez v6, :cond_85

    .line 18
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v3

    .line 19
    :cond_85
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_88
    instance-of v3, v13, Ls/i;

    if-eqz v3, :cond_cc

    .line 21
    instance-of v3, v13, Ls/a;

    if-eqz v3, :cond_b5

    .line 22
    move-object v3, v13

    check-cast v3, Ls/a;

    .line 23
    invoke-virtual {v3}, Ls/a;->u1()I

    move-result v12

    if-nez v12, :cond_a3

    if-nez v7, :cond_a0

    .line 24
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 25
    :cond_a0
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    :cond_a3
    invoke-virtual {v3}, Ls/a;->u1()I

    move-result v12

    const/4 v15, 0x1

    if-ne v12, v15, :cond_cc

    if-nez v9, :cond_b1

    .line 27
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 28
    :cond_b1
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_cc

    .line 29
    :cond_b5
    move-object v3, v13

    check-cast v3, Ls/i;

    if-nez v7, :cond_bf

    .line 30
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 31
    :cond_bf
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v9, :cond_c9

    .line 32
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 33
    :cond_c9
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_cc
    :goto_cc
    iget-object v3, v13, Ls/e;->O:Ls/d;

    iget-object v3, v3, Ls/d;->f:Ls/d;

    if-nez v3, :cond_e9

    iget-object v3, v13, Ls/e;->Q:Ls/d;

    iget-object v3, v3, Ls/d;->f:Ls/d;

    if-nez v3, :cond_e9

    if-nez v4, :cond_e9

    instance-of v3, v13, Ls/a;

    if-nez v3, :cond_e9

    if-nez v10, :cond_e6

    .line 35
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v3

    .line 36
    :cond_e6
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_e9
    iget-object v3, v13, Ls/e;->P:Ls/d;

    iget-object v3, v3, Ls/d;->f:Ls/d;

    if-nez v3, :cond_10c

    iget-object v3, v13, Ls/e;->R:Ls/d;

    iget-object v3, v3, Ls/d;->f:Ls/d;

    if-nez v3, :cond_10c

    iget-object v3, v13, Ls/e;->S:Ls/d;

    iget-object v3, v3, Ls/d;->f:Ls/d;

    if-nez v3, :cond_10c

    if-nez v4, :cond_10c

    instance-of v3, v13, Ls/a;

    if-nez v3, :cond_10c

    if-nez v11, :cond_109

    .line 38
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v3

    .line 39
    :cond_109
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10c
    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x0

    goto/16 :goto_35

    .line 40
    :cond_111
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v6, :cond_12e

    .line 41
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_11c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls/g;

    const/4 v6, 0x0

    const/4 v12, 0x0

    .line 42
    invoke-static {v5, v6, v3, v12}, Lt/i;->a(Ls/e;ILjava/util/ArrayList;Lt/o;)Lt/o;

    goto :goto_11c

    :cond_12e
    const/4 v6, 0x0

    const/4 v12, 0x0

    if-eqz v7, :cond_14f

    .line 43
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_136
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls/i;

    .line 44
    invoke-static {v5, v6, v3, v12}, Lt/i;->a(Ls/e;ILjava/util/ArrayList;Lt/o;)Lt/o;

    move-result-object v7

    .line 45
    invoke-virtual {v5, v3, v6, v7}, Ls/i;->o1(Ljava/util/ArrayList;ILt/o;)V

    .line 46
    invoke-virtual {v7, v3}, Lt/o;->b(Ljava/util/ArrayList;)V

    const/4 v6, 0x0

    const/4 v12, 0x0

    goto :goto_136

    .line 47
    :cond_14f
    sget-object v4, Ls/d$b;->p:Ls/d$b;

    invoke-virtual {v0, v4}, Ls/e;->m(Ls/d$b;)Ls/d;

    move-result-object v4

    .line 48
    invoke-virtual {v4}, Ls/d;->c()Ljava/util/HashSet;

    move-result-object v5

    if-eqz v5, :cond_177

    .line 49
    invoke-virtual {v4}, Ls/d;->c()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_163
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_177

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls/d;

    .line 50
    iget-object v5, v5, Ls/d;->d:Ls/e;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v3, v7}, Lt/i;->a(Ls/e;ILjava/util/ArrayList;Lt/o;)Lt/o;

    goto :goto_163

    .line 51
    :cond_177
    sget-object v4, Ls/d$b;->r:Ls/d$b;

    invoke-virtual {v0, v4}, Ls/e;->m(Ls/d$b;)Ls/d;

    move-result-object v4

    .line 52
    invoke-virtual {v4}, Ls/d;->c()Ljava/util/HashSet;

    move-result-object v5

    if-eqz v5, :cond_19f

    .line 53
    invoke-virtual {v4}, Ls/d;->c()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_18b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls/d;

    .line 54
    iget-object v5, v5, Ls/d;->d:Ls/e;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v3, v7}, Lt/i;->a(Ls/e;ILjava/util/ArrayList;Lt/o;)Lt/o;

    goto :goto_18b

    .line 55
    :cond_19f
    sget-object v4, Ls/d$b;->u:Ls/d$b;

    invoke-virtual {v0, v4}, Ls/e;->m(Ls/d$b;)Ls/d;

    move-result-object v4

    .line 56
    invoke-virtual {v4}, Ls/d;->c()Ljava/util/HashSet;

    move-result-object v5

    if-eqz v5, :cond_1c7

    .line 57
    invoke-virtual {v4}, Ls/d;->c()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1b3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1c7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls/d;

    .line 58
    iget-object v5, v5, Ls/d;->d:Ls/e;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v3, v7}, Lt/i;->a(Ls/e;ILjava/util/ArrayList;Lt/o;)Lt/o;

    goto :goto_1b3

    :cond_1c7
    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v10, :cond_1df

    .line 59
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1cf
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1df

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls/e;

    .line 60
    invoke-static {v5, v6, v3, v7}, Lt/i;->a(Ls/e;ILjava/util/ArrayList;Lt/o;)Lt/o;

    goto :goto_1cf

    :cond_1df
    if-eqz v8, :cond_1f6

    .line 61
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1e5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1f6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls/g;

    const/4 v6, 0x1

    .line 62
    invoke-static {v5, v6, v3, v7}, Lt/i;->a(Ls/e;ILjava/util/ArrayList;Lt/o;)Lt/o;

    goto :goto_1e5

    :cond_1f6
    const/4 v6, 0x1

    if-eqz v9, :cond_216

    .line 63
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1fd
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_216

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls/i;

    .line 64
    invoke-static {v5, v6, v3, v7}, Lt/i;->a(Ls/e;ILjava/util/ArrayList;Lt/o;)Lt/o;

    move-result-object v8

    .line 65
    invoke-virtual {v5, v3, v6, v8}, Ls/i;->o1(Ljava/util/ArrayList;ILt/o;)V

    .line 66
    invoke-virtual {v8, v3}, Lt/o;->b(Ljava/util/ArrayList;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    goto :goto_1fd

    .line 67
    :cond_216
    sget-object v4, Ls/d$b;->q:Ls/d$b;

    invoke-virtual {v0, v4}, Ls/e;->m(Ls/d$b;)Ls/d;

    move-result-object v4

    .line 68
    invoke-virtual {v4}, Ls/d;->c()Ljava/util/HashSet;

    move-result-object v5

    if-eqz v5, :cond_23e

    .line 69
    invoke-virtual {v4}, Ls/d;->c()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_22a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_23e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls/d;

    .line 70
    iget-object v5, v5, Ls/d;->d:Ls/e;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v5, v6, v3, v7}, Lt/i;->a(Ls/e;ILjava/util/ArrayList;Lt/o;)Lt/o;

    goto :goto_22a

    .line 71
    :cond_23e
    sget-object v4, Ls/d$b;->t:Ls/d$b;

    invoke-virtual {v0, v4}, Ls/e;->m(Ls/d$b;)Ls/d;

    move-result-object v4

    .line 72
    invoke-virtual {v4}, Ls/d;->c()Ljava/util/HashSet;

    move-result-object v5

    if-eqz v5, :cond_266

    .line 73
    invoke-virtual {v4}, Ls/d;->c()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_252
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_266

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls/d;

    .line 74
    iget-object v5, v5, Ls/d;->d:Ls/e;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v5, v6, v3, v7}, Lt/i;->a(Ls/e;ILjava/util/ArrayList;Lt/o;)Lt/o;

    goto :goto_252

    .line 75
    :cond_266
    sget-object v4, Ls/d$b;->s:Ls/d$b;

    invoke-virtual {v0, v4}, Ls/e;->m(Ls/d$b;)Ls/d;

    move-result-object v4

    .line 76
    invoke-virtual {v4}, Ls/d;->c()Ljava/util/HashSet;

    move-result-object v5

    if-eqz v5, :cond_28e

    .line 77
    invoke-virtual {v4}, Ls/d;->c()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_27a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_28e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls/d;

    .line 78
    iget-object v5, v5, Ls/d;->d:Ls/e;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v5, v6, v3, v7}, Lt/i;->a(Ls/e;ILjava/util/ArrayList;Lt/o;)Lt/o;

    goto :goto_27a

    .line 79
    :cond_28e
    sget-object v4, Ls/d$b;->u:Ls/d$b;

    invoke-virtual {v0, v4}, Ls/e;->m(Ls/d$b;)Ls/d;

    move-result-object v4

    .line 80
    invoke-virtual {v4}, Ls/d;->c()Ljava/util/HashSet;

    move-result-object v5

    if-eqz v5, :cond_2b6

    .line 81
    invoke-virtual {v4}, Ls/d;->c()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2a2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls/d;

    .line 82
    iget-object v5, v5, Ls/d;->d:Ls/e;

    const/4 v6, 0x1

    const/4 v12, 0x0

    invoke-static {v5, v6, v3, v12}, Lt/i;->a(Ls/e;ILjava/util/ArrayList;Lt/o;)Lt/o;

    goto :goto_2a2

    :cond_2b6
    const/4 v6, 0x1

    const/4 v12, 0x0

    if-eqz v11, :cond_2ce

    .line 83
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2be
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2ce

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls/e;

    .line 84
    invoke-static {v5, v6, v3, v12}, Lt/i;->a(Ls/e;ILjava/util/ArrayList;Lt/o;)Lt/o;

    goto :goto_2be

    :cond_2ce
    const/4 v4, 0x0

    :goto_2cf
    if-ge v4, v2, :cond_2fb

    .line 85
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls/e;

    .line 86
    invoke-virtual {v5}, Ls/e;->q0()Z

    move-result v6

    if-eqz v6, :cond_2f8

    .line 87
    iget v6, v5, Ls/e;->H0:I

    invoke-static {v3, v6}, Lt/i;->b(Ljava/util/ArrayList;I)Lt/o;

    move-result-object v6

    .line 88
    iget v5, v5, Ls/e;->I0:I

    invoke-static {v3, v5}, Lt/i;->b(Ljava/util/ArrayList;I)Lt/o;

    move-result-object v5

    if-eqz v6, :cond_2f8

    if-eqz v5, :cond_2f8

    const/4 v7, 0x0

    .line 89
    invoke-virtual {v6, v7, v5}, Lt/o;->g(ILt/o;)V

    const/4 v7, 0x2

    .line 90
    invoke-virtual {v5, v7}, Lt/o;->i(I)V

    .line 91
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2f8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2cf

    .line 92
    :cond_2fb
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_304

    const/4 v1, 0x0

    return v1

    .line 93
    :cond_304
    invoke-virtual/range {p0 .. p0}, Ls/e;->y()Ls/e$b;

    move-result-object v1

    sget-object v2, Ls/e$b;->p:Ls/e$b;

    if-ne v1, v2, :cond_346

    .line 94
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, v12

    const/4 v6, 0x0

    :cond_312
    :goto_312
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_337

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lt/o;

    .line 95
    invoke-virtual {v4}, Lt/o;->d()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_326

    goto :goto_312

    :cond_326
    const/4 v5, 0x0

    .line 96
    invoke-virtual {v4, v5}, Lt/o;->h(Z)V

    .line 97
    invoke-virtual/range {p0 .. p0}, Ls/f;->H1()Lp/d;

    move-result-object v7

    invoke-virtual {v4, v7, v5}, Lt/o;->f(Lp/d;I)I

    move-result v7

    if-le v7, v6, :cond_312

    move-object v2, v4

    move v6, v7

    goto :goto_312

    :cond_337
    if-eqz v2, :cond_346

    .line 98
    sget-object v1, Ls/e$b;->o:Ls/e$b;

    invoke-virtual {v0, v1}, Ls/e;->M0(Ls/e$b;)V

    .line 99
    invoke-virtual {v0, v6}, Ls/e;->h1(I)V

    const/4 v1, 0x1

    .line 100
    invoke-virtual {v2, v1}, Lt/o;->h(Z)V

    goto :goto_347

    :cond_346
    move-object v2, v12

    .line 101
    :goto_347
    invoke-virtual/range {p0 .. p0}, Ls/e;->R()Ls/e$b;

    move-result-object v1

    sget-object v4, Ls/e$b;->p:Ls/e$b;

    if-ne v1, v4, :cond_38b

    .line 102
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v3, v12

    const/4 v6, 0x0

    :cond_355
    :goto_355
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lt/o;

    .line 103
    invoke-virtual {v4}, Lt/o;->d()I

    move-result v5

    if-nez v5, :cond_368

    goto :goto_355

    :cond_368
    const/4 v5, 0x0

    .line 104
    invoke-virtual {v4, v5}, Lt/o;->h(Z)V

    .line 105
    invoke-virtual/range {p0 .. p0}, Ls/f;->H1()Lp/d;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Lt/o;->f(Lp/d;I)I

    move-result v7

    if-le v7, v6, :cond_355

    move-object v3, v4

    move v6, v7

    goto :goto_355

    :cond_37a
    const/4 v5, 0x0

    const/4 v8, 0x1

    if-eqz v3, :cond_38d

    .line 106
    sget-object v1, Ls/e$b;->o:Ls/e$b;

    invoke-virtual {v0, v1}, Ls/e;->d1(Ls/e$b;)V

    .line 107
    invoke-virtual {v0, v6}, Ls/e;->I0(I)V

    .line 108
    invoke-virtual {v3, v8}, Lt/o;->h(Z)V

    move-object v4, v3

    goto :goto_38e

    :cond_38b
    const/4 v5, 0x0

    const/4 v8, 0x1

    :cond_38d
    move-object v4, v12

    :goto_38e
    if-nez v2, :cond_395

    if-eqz v4, :cond_393

    goto :goto_395

    :cond_393
    const/4 v3, 0x0

    goto :goto_396

    :cond_395
    :goto_395
    const/4 v3, 0x1

    :goto_396
    return v3
.end method

.method public static d(Ls/e$b;Ls/e$b;Ls/e$b;Ls/e$b;)Z
    .registers 9

    .line 1
    sget-object v0, Ls/e$b;->o:Ls/e$b;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v0, :cond_13

    sget-object v3, Ls/e$b;->p:Ls/e$b;

    if-eq p2, v3, :cond_13

    sget-object v4, Ls/e$b;->r:Ls/e$b;

    if-ne p2, v4, :cond_11

    if-eq p0, v3, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    if-eq p3, v0, :cond_23

    .line 2
    sget-object p2, Ls/e$b;->p:Ls/e$b;

    if-eq p3, p2, :cond_23

    sget-object v0, Ls/e$b;->r:Ls/e$b;

    if-ne p3, v0, :cond_21

    if-eq p1, p2, :cond_21

    goto :goto_23

    :cond_21
    const/4 p1, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 p1, 0x1

    :goto_24
    if-nez p0, :cond_2a

    if-eqz p1, :cond_29

    goto :goto_2a

    :cond_29
    return v1

    :cond_2a
    :goto_2a
    return v2
.end method
