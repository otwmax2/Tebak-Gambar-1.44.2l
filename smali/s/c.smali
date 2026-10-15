###### Class s.c (s.c)
.class public Ls/c;
.super Ljava/lang/Object;
.source "ChainHead.java"


# instance fields
.field protected a:Ls/e;

.field protected b:Ls/e;

.field protected c:Ls/e;

.field protected d:Ls/e;

.field protected e:Ls/e;

.field protected f:Ls/e;

.field protected g:Ls/e;

.field protected h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ls/e;",
            ">;"
        }
    .end annotation
.end field

.field protected i:I

.field protected j:I

.field protected k:F

.field l:I

.field m:I

.field n:I

.field o:Z

.field private p:I

.field private q:Z

.field protected r:Z

.field protected s:Z

.field protected t:Z

.field protected u:Z

.field private v:Z


# direct methods
.method public constructor <init>(Ls/e;IZ)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ls/c;->k:F

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Ls/c;->q:Z

    .line 4
    iput-object p1, p0, Ls/c;->a:Ls/e;

    .line 5
    iput p2, p0, Ls/c;->p:I

    .line 6
    iput-boolean p3, p0, Ls/c;->q:Z

    return-void
.end method

.method private b()V
    .registers 14

    .line 1
    iget v0, p0, Ls/c;->p:I

    const/4 v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    .line 2
    iget-object v2, p0, Ls/c;->a:Ls/e;

    const/4 v3, 0x1

    .line 3
    iput-boolean v3, p0, Ls/c;->o:Z

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    :goto_d
    if-nez v6, :cond_138

    .line 4
    iget v7, p0, Ls/c;->i:I

    add-int/2addr v7, v3

    iput v7, p0, Ls/c;->i:I

    .line 5
    iget-object v7, v2, Ls/e;->E0:[Ls/e;

    iget v8, p0, Ls/c;->p:I

    const/4 v9, 0x0

    aput-object v9, v7, v8

    .line 6
    iget-object v7, v2, Ls/e;->D0:[Ls/e;

    aput-object v9, v7, v8

    .line 7
    invoke-virtual {v2}, Ls/e;->T()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_109

    .line 8
    iget v7, p0, Ls/c;->l:I

    add-int/2addr v7, v3

    iput v7, p0, Ls/c;->l:I

    .line 9
    iget v7, p0, Ls/c;->p:I

    invoke-virtual {v2, v7}, Ls/e;->s(I)Ls/e$b;

    move-result-object v7

    sget-object v8, Ls/e$b;->q:Ls/e$b;

    if-eq v7, v8, :cond_41

    .line 10
    iget v7, p0, Ls/c;->m:I

    iget v10, p0, Ls/c;->p:I

    invoke-virtual {v2, v10}, Ls/e;->C(I)I

    move-result v10

    add-int/2addr v7, v10

    iput v7, p0, Ls/c;->m:I

    .line 11
    :cond_41
    iget v7, p0, Ls/c;->m:I

    iget-object v10, v2, Ls/e;->W:[Ls/d;

    aget-object v10, v10, v0

    invoke-virtual {v10}, Ls/d;->e()I

    move-result v10

    add-int/2addr v7, v10

    iput v7, p0, Ls/c;->m:I

    .line 12
    iget-object v10, v2, Ls/e;->W:[Ls/d;

    add-int/lit8 v11, v0, 0x1

    aget-object v10, v10, v11

    invoke-virtual {v10}, Ls/d;->e()I

    move-result v10

    add-int/2addr v7, v10

    iput v7, p0, Ls/c;->m:I

    .line 13
    iget v7, p0, Ls/c;->n:I

    iget-object v10, v2, Ls/e;->W:[Ls/d;

    aget-object v10, v10, v0

    invoke-virtual {v10}, Ls/d;->e()I

    move-result v10

    add-int/2addr v7, v10

    iput v7, p0, Ls/c;->n:I

    .line 14
    iget-object v10, v2, Ls/e;->W:[Ls/d;

    aget-object v10, v10, v11

    invoke-virtual {v10}, Ls/d;->e()I

    move-result v10

    add-int/2addr v7, v10

    iput v7, p0, Ls/c;->n:I

    .line 15
    iget-object v7, p0, Ls/c;->b:Ls/e;

    if-nez v7, :cond_79

    .line 16
    iput-object v2, p0, Ls/c;->b:Ls/e;

    .line 17
    :cond_79
    iput-object v2, p0, Ls/c;->d:Ls/e;

    .line 18
    iget-object v7, v2, Ls/e;->Z:[Ls/e$b;

    iget v10, p0, Ls/c;->p:I

    aget-object v7, v7, v10

    if-ne v7, v8, :cond_109

    .line 19
    iget-object v7, v2, Ls/e;->y:[I

    aget v8, v7, v10

    const/4 v11, 0x0

    if-eqz v8, :cond_93

    aget v8, v7, v10

    const/4 v12, 0x3

    if-eq v8, v12, :cond_93

    aget v7, v7, v10

    if-ne v7, v1, :cond_d8

    .line 20
    :cond_93
    iget v7, p0, Ls/c;->j:I

    add-int/2addr v7, v3

    iput v7, p0, Ls/c;->j:I

    .line 21
    iget-object v7, v2, Ls/e;->C0:[F

    aget v8, v7, v10

    cmpl-float v12, v8, v11

    if-lez v12, :cond_a7

    .line 22
    iget v12, p0, Ls/c;->k:F

    aget v7, v7, v10

    add-float/2addr v12, v7

    iput v12, p0, Ls/c;->k:F

    .line 23
    :cond_a7
    invoke-static {v2, v10}, Ls/c;->c(Ls/e;I)Z

    move-result v7

    if-eqz v7, :cond_c6

    cmpg-float v7, v8, v11

    if-gez v7, :cond_b4

    .line 24
    iput-boolean v3, p0, Ls/c;->r:Z

    goto :goto_b6

    .line 25
    :cond_b4
    iput-boolean v3, p0, Ls/c;->s:Z

    .line 26
    :goto_b6
    iget-object v7, p0, Ls/c;->h:Ljava/util/ArrayList;

    if-nez v7, :cond_c1

    .line 27
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Ls/c;->h:Ljava/util/ArrayList;

    .line 28
    :cond_c1
    iget-object v7, p0, Ls/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_c6
    iget-object v7, p0, Ls/c;->f:Ls/e;

    if-nez v7, :cond_cc

    .line 30
    iput-object v2, p0, Ls/c;->f:Ls/e;

    .line 31
    :cond_cc
    iget-object v7, p0, Ls/c;->g:Ls/e;

    if-eqz v7, :cond_d6

    .line 32
    iget-object v7, v7, Ls/e;->D0:[Ls/e;

    iget v8, p0, Ls/c;->p:I

    aput-object v2, v7, v8

    .line 33
    :cond_d6
    iput-object v2, p0, Ls/c;->g:Ls/e;

    .line 34
    :cond_d8
    iget v7, p0, Ls/c;->p:I

    if-nez v7, :cond_ee

    .line 35
    iget v7, v2, Ls/e;->w:I

    if-eqz v7, :cond_e3

    .line 36
    iput-boolean v4, p0, Ls/c;->o:Z

    goto :goto_ff

    .line 37
    :cond_e3
    iget v7, v2, Ls/e;->z:I

    if-nez v7, :cond_eb

    iget v7, v2, Ls/e;->A:I

    if-eqz v7, :cond_ff

    .line 38
    :cond_eb
    iput-boolean v4, p0, Ls/c;->o:Z

    goto :goto_ff

    .line 39
    :cond_ee
    iget v7, v2, Ls/e;->x:I

    if-eqz v7, :cond_f5

    .line 40
    iput-boolean v4, p0, Ls/c;->o:Z

    goto :goto_ff

    .line 41
    :cond_f5
    iget v7, v2, Ls/e;->C:I

    if-nez v7, :cond_fd

    iget v7, v2, Ls/e;->D:I

    if-eqz v7, :cond_ff

    .line 42
    :cond_fd
    iput-boolean v4, p0, Ls/c;->o:Z

    .line 43
    :cond_ff
    :goto_ff
    iget v7, v2, Ls/e;->d0:F

    cmpl-float v7, v7, v11

    if-eqz v7, :cond_109

    .line 44
    iput-boolean v4, p0, Ls/c;->o:Z

    .line 45
    iput-boolean v3, p0, Ls/c;->u:Z

    :cond_109
    if-eq v5, v2, :cond_111

    .line 46
    iget-object v5, v5, Ls/e;->E0:[Ls/e;

    iget v7, p0, Ls/c;->p:I

    aput-object v2, v5, v7

    .line 47
    :cond_111
    iget-object v5, v2, Ls/e;->W:[Ls/d;

    add-int/lit8 v7, v0, 0x1

    aget-object v5, v5, v7

    iget-object v5, v5, Ls/d;->f:Ls/d;

    if-eqz v5, :cond_12f

    .line 48
    iget-object v5, v5, Ls/d;->d:Ls/e;

    .line 49
    iget-object v7, v5, Ls/e;->W:[Ls/d;

    aget-object v8, v7, v0

    iget-object v8, v8, Ls/d;->f:Ls/d;

    if-eqz v8, :cond_12f

    aget-object v7, v7, v0

    iget-object v7, v7, Ls/d;->f:Ls/d;

    iget-object v7, v7, Ls/d;->d:Ls/e;

    if-eq v7, v2, :cond_12e

    goto :goto_12f

    :cond_12e
    move-object v9, v5

    :cond_12f
    :goto_12f
    if-eqz v9, :cond_132

    goto :goto_134

    :cond_132
    move-object v9, v2

    const/4 v6, 0x1

    :goto_134
    move-object v5, v2

    move-object v2, v9

    goto/16 :goto_d

    .line 50
    :cond_138
    iget-object v1, p0, Ls/c;->b:Ls/e;

    if-eqz v1, :cond_149

    .line 51
    iget v5, p0, Ls/c;->m:I

    iget-object v1, v1, Ls/e;->W:[Ls/d;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ls/d;->e()I

    move-result v1

    sub-int/2addr v5, v1

    iput v5, p0, Ls/c;->m:I

    .line 52
    :cond_149
    iget-object v1, p0, Ls/c;->d:Ls/e;

    if-eqz v1, :cond_15b

    .line 53
    iget v5, p0, Ls/c;->m:I

    iget-object v1, v1, Ls/e;->W:[Ls/d;

    add-int/2addr v0, v3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ls/d;->e()I

    move-result v0

    sub-int/2addr v5, v0

    iput v5, p0, Ls/c;->m:I

    .line 54
    :cond_15b
    iput-object v2, p0, Ls/c;->c:Ls/e;

    .line 55
    iget v0, p0, Ls/c;->p:I

    if-nez v0, :cond_168

    iget-boolean v0, p0, Ls/c;->q:Z

    if-eqz v0, :cond_168

    .line 56
    iput-object v2, p0, Ls/c;->e:Ls/e;

    goto :goto_16c

    .line 57
    :cond_168
    iget-object v0, p0, Ls/c;->a:Ls/e;

    iput-object v0, p0, Ls/c;->e:Ls/e;

    .line 58
    :goto_16c
    iget-boolean v0, p0, Ls/c;->s:Z

    if-eqz v0, :cond_175

    iget-boolean v0, p0, Ls/c;->r:Z

    if-eqz v0, :cond_175

    goto :goto_176

    :cond_175
    const/4 v3, 0x0

    :goto_176
    iput-boolean v3, p0, Ls/c;->t:Z

    return-void
.end method

.method private static c(Ls/e;I)Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Ls/e;->T()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1d

    iget-object v0, p0, Ls/e;->Z:[Ls/e$b;

    aget-object v0, v0, p1

    sget-object v1, Ls/e$b;->q:Ls/e$b;

    if-ne v0, v1, :cond_1d

    iget-object p0, p0, Ls/e;->y:[I

    aget v0, p0, p1

    if-eqz v0, :cond_1b

    aget p0, p0, p1

    const/4 p1, 0x3

    if-ne p0, p1, :cond_1d

    :cond_1b
    const/4 p0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    :goto_1e
    return p0
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Ls/c;->v:Z

    if-nez v0, :cond_7

    .line 2
    invoke-direct {p0}, Ls/c;->b()V

    :cond_7
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Ls/c;->v:Z

    return-void
.end method
