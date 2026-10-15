###### Class t.k (t.k)
.class Lt/k;
.super Lt/p;
.source "HelperReferences.java"


# direct methods
.method public constructor <init>(Ls/e;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lt/p;-><init>(Ls/e;)V

    return-void
.end method

.method private q(Lt/f;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lt/p;->h:Lt/f;

    iget-object v0, v0, Lt/f;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p1, Lt/f;->l:Ljava/util/List;

    iget-object v0, p0, Lt/p;->h:Lt/f;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a(Lt/d;)V
    .registers 8

    .line 1
    iget-object p1, p0, Lt/p;->b:Ls/e;

    check-cast p1, Ls/a;

    .line 2
    invoke-virtual {p1}, Ls/a;->s1()I

    move-result v0

    .line 3
    iget-object v1, p0, Lt/p;->h:Lt/f;

    iget-object v1, v1, Lt/f;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lt/f;

    .line 4
    iget v5, v5, Lt/f;->g:I

    if-eq v4, v2, :cond_25

    if-ge v5, v4, :cond_26

    :cond_25
    move v4, v5

    :cond_26
    if-ge v3, v5, :cond_13

    move v3, v5

    goto :goto_13

    :cond_2a
    if-eqz v0, :cond_3b

    const/4 v1, 0x2

    if-ne v0, v1, :cond_30

    goto :goto_3b

    .line 5
    :cond_30
    iget-object v0, p0, Lt/p;->h:Lt/f;

    invoke-virtual {p1}, Ls/a;->t1()I

    move-result p1

    add-int/2addr v3, p1

    invoke-virtual {v0, v3}, Lt/f;->d(I)V

    goto :goto_45

    .line 6
    :cond_3b
    :goto_3b
    iget-object v0, p0, Lt/p;->h:Lt/f;

    invoke-virtual {p1}, Ls/a;->t1()I

    move-result p1

    add-int/2addr v4, p1

    invoke-virtual {v0, v4}, Lt/f;->d(I)V

    :goto_45
    return-void
.end method

.method d()V
    .registers 8

    .line 1
    iget-object v0, p0, Lt/p;->b:Ls/e;

    instance-of v1, v0, Ls/a;

    if-eqz v1, :cond_121

    .line 2
    iget-object v1, p0, Lt/p;->h:Lt/f;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lt/f;->b:Z

    .line 3
    check-cast v0, Ls/a;

    .line 4
    invoke-virtual {v0}, Ls/a;->s1()I

    move-result v1

    .line 5
    invoke-virtual {v0}, Ls/a;->r1()Z

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v1, :cond_e3

    if-eq v1, v2, :cond_a4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_64

    const/4 v2, 0x3

    if-eq v1, v2, :cond_24

    goto/16 :goto_121

    .line 6
    :cond_24
    iget-object v1, p0, Lt/p;->h:Lt/f;

    sget-object v2, Lt/f$a;->u:Lt/f$a;

    iput-object v2, v1, Lt/f;->e:Lt/f$a;

    .line 7
    :goto_2a
    iget v1, v0, Ls/i;->L0:I

    if-ge v5, v1, :cond_50

    .line 8
    iget-object v1, v0, Ls/i;->K0:[Ls/e;

    aget-object v1, v1, v5

    if-nez v3, :cond_3b

    .line 9
    invoke-virtual {v1}, Ls/e;->T()I

    move-result v2

    if-ne v2, v4, :cond_3b

    goto :goto_4d

    .line 10
    :cond_3b
    iget-object v1, v1, Ls/e;->f:Lt/n;

    iget-object v1, v1, Lt/p;->i:Lt/f;

    .line 11
    iget-object v2, v1, Lt/f;->k:Ljava/util/List;

    iget-object v6, p0, Lt/p;->h:Lt/f;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v2, p0, Lt/p;->h:Lt/f;

    iget-object v2, v2, Lt/f;->l:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4d
    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    .line 13
    :cond_50
    iget-object v0, p0, Lt/p;->b:Ls/e;

    iget-object v0, v0, Ls/e;->f:Lt/n;

    iget-object v0, v0, Lt/p;->h:Lt/f;

    invoke-direct {p0, v0}, Lt/k;->q(Lt/f;)V

    .line 14
    iget-object v0, p0, Lt/p;->b:Ls/e;

    iget-object v0, v0, Ls/e;->f:Lt/n;

    iget-object v0, v0, Lt/p;->i:Lt/f;

    invoke-direct {p0, v0}, Lt/k;->q(Lt/f;)V

    goto/16 :goto_121

    .line 15
    :cond_64
    iget-object v1, p0, Lt/p;->h:Lt/f;

    sget-object v2, Lt/f$a;->t:Lt/f$a;

    iput-object v2, v1, Lt/f;->e:Lt/f$a;

    .line 16
    :goto_6a
    iget v1, v0, Ls/i;->L0:I

    if-ge v5, v1, :cond_90

    .line 17
    iget-object v1, v0, Ls/i;->K0:[Ls/e;

    aget-object v1, v1, v5

    if-nez v3, :cond_7b

    .line 18
    invoke-virtual {v1}, Ls/e;->T()I

    move-result v2

    if-ne v2, v4, :cond_7b

    goto :goto_8d

    .line 19
    :cond_7b
    iget-object v1, v1, Ls/e;->f:Lt/n;

    iget-object v1, v1, Lt/p;->h:Lt/f;

    .line 20
    iget-object v2, v1, Lt/f;->k:Ljava/util/List;

    iget-object v6, p0, Lt/p;->h:Lt/f;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v2, p0, Lt/p;->h:Lt/f;

    iget-object v2, v2, Lt/f;->l:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_8d
    add-int/lit8 v5, v5, 0x1

    goto :goto_6a

    .line 22
    :cond_90
    iget-object v0, p0, Lt/p;->b:Ls/e;

    iget-object v0, v0, Ls/e;->f:Lt/n;

    iget-object v0, v0, Lt/p;->h:Lt/f;

    invoke-direct {p0, v0}, Lt/k;->q(Lt/f;)V

    .line 23
    iget-object v0, p0, Lt/p;->b:Ls/e;

    iget-object v0, v0, Ls/e;->f:Lt/n;

    iget-object v0, v0, Lt/p;->i:Lt/f;

    invoke-direct {p0, v0}, Lt/k;->q(Lt/f;)V

    goto/16 :goto_121

    .line 24
    :cond_a4
    iget-object v1, p0, Lt/p;->h:Lt/f;

    sget-object v2, Lt/f$a;->s:Lt/f$a;

    iput-object v2, v1, Lt/f;->e:Lt/f$a;

    .line 25
    :goto_aa
    iget v1, v0, Ls/i;->L0:I

    if-ge v5, v1, :cond_d0

    .line 26
    iget-object v1, v0, Ls/i;->K0:[Ls/e;

    aget-object v1, v1, v5

    if-nez v3, :cond_bb

    .line 27
    invoke-virtual {v1}, Ls/e;->T()I

    move-result v2

    if-ne v2, v4, :cond_bb

    goto :goto_cd

    .line 28
    :cond_bb
    iget-object v1, v1, Ls/e;->e:Lt/l;

    iget-object v1, v1, Lt/p;->i:Lt/f;

    .line 29
    iget-object v2, v1, Lt/f;->k:Ljava/util/List;

    iget-object v6, p0, Lt/p;->h:Lt/f;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object v2, p0, Lt/p;->h:Lt/f;

    iget-object v2, v2, Lt/f;->l:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_cd
    add-int/lit8 v5, v5, 0x1

    goto :goto_aa

    .line 31
    :cond_d0
    iget-object v0, p0, Lt/p;->b:Ls/e;

    iget-object v0, v0, Ls/e;->e:Lt/l;

    iget-object v0, v0, Lt/p;->h:Lt/f;

    invoke-direct {p0, v0}, Lt/k;->q(Lt/f;)V

    .line 32
    iget-object v0, p0, Lt/p;->b:Ls/e;

    iget-object v0, v0, Ls/e;->e:Lt/l;

    iget-object v0, v0, Lt/p;->i:Lt/f;

    invoke-direct {p0, v0}, Lt/k;->q(Lt/f;)V

    goto :goto_121

    .line 33
    :cond_e3
    iget-object v1, p0, Lt/p;->h:Lt/f;

    sget-object v2, Lt/f$a;->r:Lt/f$a;

    iput-object v2, v1, Lt/f;->e:Lt/f$a;

    .line 34
    :goto_e9
    iget v1, v0, Ls/i;->L0:I

    if-ge v5, v1, :cond_10f

    .line 35
    iget-object v1, v0, Ls/i;->K0:[Ls/e;

    aget-object v1, v1, v5

    if-nez v3, :cond_fa

    .line 36
    invoke-virtual {v1}, Ls/e;->T()I

    move-result v2

    if-ne v2, v4, :cond_fa

    goto :goto_10c

    .line 37
    :cond_fa
    iget-object v1, v1, Ls/e;->e:Lt/l;

    iget-object v1, v1, Lt/p;->h:Lt/f;

    .line 38
    iget-object v2, v1, Lt/f;->k:Ljava/util/List;

    iget-object v6, p0, Lt/p;->h:Lt/f;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v2, p0, Lt/p;->h:Lt/f;

    iget-object v2, v2, Lt/f;->l:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_10c
    add-int/lit8 v5, v5, 0x1

    goto :goto_e9

    .line 40
    :cond_10f
    iget-object v0, p0, Lt/p;->b:Ls/e;

    iget-object v0, v0, Ls/e;->e:Lt/l;

    iget-object v0, v0, Lt/p;->h:Lt/f;

    invoke-direct {p0, v0}, Lt/k;->q(Lt/f;)V

    .line 41
    iget-object v0, p0, Lt/p;->b:Ls/e;

    iget-object v0, v0, Ls/e;->e:Lt/l;

    iget-object v0, v0, Lt/p;->i:Lt/f;

    invoke-direct {p0, v0}, Lt/k;->q(Lt/f;)V

    :cond_121
    :goto_121
    return-void
.end method

.method public e()V
    .registers 3

    .line 1
    iget-object v0, p0, Lt/p;->b:Ls/e;

    instance-of v1, v0, Ls/a;

    if-eqz v1, :cond_25

    .line 2
    check-cast v0, Ls/a;

    .line 3
    invoke-virtual {v0}, Ls/a;->s1()I

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    goto :goto_1c

    .line 4
    :cond_12
    iget-object v0, p0, Lt/p;->b:Ls/e;

    iget-object v1, p0, Lt/p;->h:Lt/f;

    iget v1, v1, Lt/f;->g:I

    invoke-virtual {v0, v1}, Ls/e;->k1(I)V

    goto :goto_25

    .line 5
    :cond_1c
    :goto_1c
    iget-object v0, p0, Lt/p;->b:Ls/e;

    iget-object v1, p0, Lt/p;->h:Lt/f;

    iget v1, v1, Lt/f;->g:I

    invoke-virtual {v0, v1}, Ls/e;->j1(I)V

    :cond_25
    :goto_25
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

    return-void
.end method

.method m()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
