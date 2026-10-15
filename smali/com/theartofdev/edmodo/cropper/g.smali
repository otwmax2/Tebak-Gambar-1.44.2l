###### Class com.theartofdev.edmodo.cropper.g (com.theartofdev.edmodo.cropper.g)
.class final Lcom/theartofdev/edmodo/cropper/g;
.super Ljava/lang/Object;
.source "CropWindowHandler.java"


# instance fields
.field private final a:Landroid/graphics/RectF;

.field private final b:Landroid/graphics/RectF;

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/g;->a:Landroid/graphics/RectF;

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/g;->b:Landroid/graphics/RectF;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    iput v0, p0, Lcom/theartofdev/edmodo/cropper/g;->k:F

    .line 5
    iput v0, p0, Lcom/theartofdev/edmodo/cropper/g;->l:F

    return-void
.end method

.method private a()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/g;->s()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private g(FF)Lcom/theartofdev/edmodo/cropper/h$b;
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/g;->a:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40c00000    # 6.0f

    div-float/2addr v0, v1

    .line 2
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/g;->a:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float v4, v3, v0

    const/high16 v5, 0x40a00000    # 5.0f

    mul-float v0, v0, v5

    add-float/2addr v3, v0

    .line 3
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v1

    .line 4
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/g;->a:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float v2, v1, v0

    mul-float v0, v0, v5

    add-float/2addr v1, v0

    cmpg-float v0, p1, v4

    if-gez v0, :cond_37

    cmpg-float p1, p2, v2

    if-gez p1, :cond_2d

    .line 5
    sget-object p1, Lcom/theartofdev/edmodo/cropper/h$b;->o:Lcom/theartofdev/edmodo/cropper/h$b;

    goto :goto_5c

    :cond_2d
    cmpg-float p1, p2, v1

    if-gez p1, :cond_34

    .line 6
    sget-object p1, Lcom/theartofdev/edmodo/cropper/h$b;->s:Lcom/theartofdev/edmodo/cropper/h$b;

    goto :goto_5c

    .line 7
    :cond_34
    sget-object p1, Lcom/theartofdev/edmodo/cropper/h$b;->q:Lcom/theartofdev/edmodo/cropper/h$b;

    goto :goto_5c

    :cond_37
    cmpg-float p1, p1, v3

    if-gez p1, :cond_4c

    cmpg-float p1, p2, v2

    if-gez p1, :cond_42

    .line 8
    sget-object p1, Lcom/theartofdev/edmodo/cropper/h$b;->t:Lcom/theartofdev/edmodo/cropper/h$b;

    goto :goto_5c

    :cond_42
    cmpg-float p1, p2, v1

    if-gez p1, :cond_49

    .line 9
    sget-object p1, Lcom/theartofdev/edmodo/cropper/h$b;->w:Lcom/theartofdev/edmodo/cropper/h$b;

    goto :goto_5c

    .line 10
    :cond_49
    sget-object p1, Lcom/theartofdev/edmodo/cropper/h$b;->v:Lcom/theartofdev/edmodo/cropper/h$b;

    goto :goto_5c

    :cond_4c
    cmpg-float p1, p2, v2

    if-gez p1, :cond_53

    .line 11
    sget-object p1, Lcom/theartofdev/edmodo/cropper/h$b;->p:Lcom/theartofdev/edmodo/cropper/h$b;

    goto :goto_5c

    :cond_53
    cmpg-float p1, p2, v1

    if-gez p1, :cond_5a

    .line 12
    sget-object p1, Lcom/theartofdev/edmodo/cropper/h$b;->u:Lcom/theartofdev/edmodo/cropper/h$b;

    goto :goto_5c

    .line 13
    :cond_5a
    sget-object p1, Lcom/theartofdev/edmodo/cropper/h$b;->r:Lcom/theartofdev/edmodo/cropper/h$b;

    :goto_5c
    return-object p1
.end method

.method private i(FFF)Lcom/theartofdev/edmodo/cropper/h$b;
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/g;->a:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-static {p1, p2, v1, v0, p3}, Lcom/theartofdev/edmodo/cropper/g;->m(FFFFF)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2
    sget-object p1, Lcom/theartofdev/edmodo/cropper/h$b;->o:Lcom/theartofdev/edmodo/cropper/h$b;

    goto/16 :goto_c8

    .line 3
    :cond_10
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/g;->a:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-static {p1, p2, v1, v0, p3}, Lcom/theartofdev/edmodo/cropper/g;->m(FFFFF)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 4
    sget-object p1, Lcom/theartofdev/edmodo/cropper/h$b;->p:Lcom/theartofdev/edmodo/cropper/h$b;

    goto/16 :goto_c8

    .line 5
    :cond_20
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/g;->a:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {p1, p2, v1, v0, p3}, Lcom/theartofdev/edmodo/cropper/g;->m(FFFFF)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 6
    sget-object p1, Lcom/theartofdev/edmodo/cropper/h$b;->q:Lcom/theartofdev/edmodo/cropper/h$b;

    goto/16 :goto_c8

    .line 7
    :cond_30
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/g;->a:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {p1, p2, v1, v0, p3}, Lcom/theartofdev/edmodo/cropper/g;->m(FFFFF)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 8
    sget-object p1, Lcom/theartofdev/edmodo/cropper/h$b;->r:Lcom/theartofdev/edmodo/cropper/h$b;

    goto/16 :goto_c8

    .line 9
    :cond_40
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/g;->a:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget v5, v0, Landroid/graphics/RectF;->right:F

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    move v1, p1

    move v2, p2

    invoke-static/range {v1 .. v6}, Lcom/theartofdev/edmodo/cropper/g;->l(FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 10
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/g;->a()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 11
    sget-object p1, Lcom/theartofdev/edmodo/cropper/h$b;->w:Lcom/theartofdev/edmodo/cropper/h$b;

    goto/16 :goto_c8

    .line 12
    :cond_5c
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/g;->a:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget v5, v0, Landroid/graphics/RectF;->top:F

    move v1, p1

    move v2, p2

    move v6, p3

    invoke-static/range {v1 .. v6}, Lcom/theartofdev/edmodo/cropper/g;->n(FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 13
    sget-object p1, Lcom/theartofdev/edmodo/cropper/h$b;->t:Lcom/theartofdev/edmodo/cropper/h$b;

    goto :goto_c8

    .line 14
    :cond_70
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/g;->a:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    move v1, p1

    move v2, p2

    move v6, p3

    invoke-static/range {v1 .. v6}, Lcom/theartofdev/edmodo/cropper/g;->n(FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 15
    sget-object p1, Lcom/theartofdev/edmodo/cropper/h$b;->v:Lcom/theartofdev/edmodo/cropper/h$b;

    goto :goto_c8

    .line 16
    :cond_84
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/g;->a:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    move v1, p1

    move v2, p2

    move v6, p3

    invoke-static/range {v1 .. v6}, Lcom/theartofdev/edmodo/cropper/g;->o(FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 17
    sget-object p1, Lcom/theartofdev/edmodo/cropper/h$b;->s:Lcom/theartofdev/edmodo/cropper/h$b;

    goto :goto_c8

    .line 18
    :cond_98
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/g;->a:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    move v1, p1

    move v2, p2

    move v6, p3

    invoke-static/range {v1 .. v6}, Lcom/theartofdev/edmodo/cropper/g;->o(FFFFFF)Z

    move-result p3

    if-eqz p3, :cond_ac

    .line 19
    sget-object p1, Lcom/theartofdev/edmodo/cropper/h$b;->u:Lcom/theartofdev/edmodo/cropper/h$b;

    goto :goto_c8

    .line 20
    :cond_ac
    iget-object p3, p0, Lcom/theartofdev/edmodo/cropper/g;->a:Landroid/graphics/RectF;

    iget v2, p3, Landroid/graphics/RectF;->left:F

    iget v3, p3, Landroid/graphics/RectF;->top:F

    iget v4, p3, Landroid/graphics/RectF;->right:F

    iget v5, p3, Landroid/graphics/RectF;->bottom:F

    move v0, p1

    move v1, p2

    invoke-static/range {v0 .. v5}, Lcom/theartofdev/edmodo/cropper/g;->l(FFFFFF)Z

    move-result p1

    if-eqz p1, :cond_c7

    .line 21
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/g;->a()Z

    move-result p1

    if-nez p1, :cond_c7

    .line 22
    sget-object p1, Lcom/theartofdev/edmodo/cropper/h$b;->w:Lcom/theartofdev/edmodo/cropper/h$b;

    goto :goto_c8

    :cond_c7
    const/4 p1, 0x0

    :goto_c8
    return-object p1
.end method

.method private static l(FFFFFF)Z
    .registers 6

    cmpl-float p2, p0, p2

    if-lez p2, :cond_12

    cmpg-float p0, p0, p4

    if-gez p0, :cond_12

    cmpl-float p0, p1, p3

    if-lez p0, :cond_12

    cmpg-float p0, p1, p5

    if-gez p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method private static m(FFFFF)Z
    .registers 5

    sub-float/2addr p0, p2

    .line 1
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p4

    if-gtz p0, :cond_14

    sub-float/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p4

    if-gtz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method private static n(FFFFFF)Z
    .registers 6

    cmpl-float p2, p0, p2

    if-lez p2, :cond_13

    cmpg-float p0, p0, p3

    if-gez p0, :cond_13

    sub-float/2addr p1, p4

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p5

    if-gtz p0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method private static o(FFFFFF)Z
    .registers 6

    sub-float/2addr p0, p2

    .line 1
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p5

    if-gtz p0, :cond_13

    cmpl-float p0, p1, p3

    if-lez p0, :cond_13

    cmpg-float p0, p1, p4

    if-gez p0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method


# virtual methods
.method public b()F
    .registers 4

    .line 1
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/g;->f:F

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/g;->j:F

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/g;->l:F

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public c()F
    .registers 4

    .line 1
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/g;->e:F

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/g;->i:F

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/g;->k:F

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public d()F
    .registers 4

    .line 1
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/g;->d:F

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/g;->h:F

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/g;->l:F

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public e()F
    .registers 4

    .line 1
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/g;->c:F

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/g;->g:F

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/g;->k:F

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public f(FFFLcom/theartofdev/edmodo/cropper/CropImageView$c;)Lcom/theartofdev/edmodo/cropper/h;
    .registers 6

    .line 1
    sget-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$c;->p:Lcom/theartofdev/edmodo/cropper/CropImageView$c;

    if-ne p4, v0, :cond_9

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/theartofdev/edmodo/cropper/g;->g(FF)Lcom/theartofdev/edmodo/cropper/h$b;

    move-result-object p3

    goto :goto_d

    .line 3
    :cond_9
    invoke-direct {p0, p1, p2, p3}, Lcom/theartofdev/edmodo/cropper/g;->i(FFF)Lcom/theartofdev/edmodo/cropper/h$b;

    move-result-object p3

    :goto_d
    if-eqz p3, :cond_15

    .line 4
    new-instance p4, Lcom/theartofdev/edmodo/cropper/h;

    invoke-direct {p4, p3, p0, p1, p2}, Lcom/theartofdev/edmodo/cropper/h;-><init>(Lcom/theartofdev/edmodo/cropper/h$b;Lcom/theartofdev/edmodo/cropper/g;FF)V

    goto :goto_16

    :cond_15
    const/4 p4, 0x0

    :goto_16
    return-object p4
.end method

.method public h()Landroid/graphics/RectF;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/g;->b:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/g;->a:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 2
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/g;->b:Landroid/graphics/RectF;

    return-object v0
.end method

.method public j()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/g;->l:F

    return v0
.end method

.method public k()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/g;->k:F

    return v0
.end method

.method public p(FFFF)V
    .registers 5

    .line 1
    iput p1, p0, Lcom/theartofdev/edmodo/cropper/g;->e:F

    .line 2
    iput p2, p0, Lcom/theartofdev/edmodo/cropper/g;->f:F

    .line 3
    iput p3, p0, Lcom/theartofdev/edmodo/cropper/g;->k:F

    .line 4
    iput p4, p0, Lcom/theartofdev/edmodo/cropper/g;->l:F

    return-void
.end method

.method public q(Lcom/theartofdev/edmodo/cropper/f;)V
    .registers 3

    .line 1
    iget v0, p1, Lcom/theartofdev/edmodo/cropper/f;->L:I

    int-to-float v0, v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/g;->c:F

    .line 2
    iget v0, p1, Lcom/theartofdev/edmodo/cropper/f;->M:I

    int-to-float v0, v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/g;->d:F

    .line 3
    iget v0, p1, Lcom/theartofdev/edmodo/cropper/f;->N:I

    int-to-float v0, v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/g;->g:F

    .line 4
    iget v0, p1, Lcom/theartofdev/edmodo/cropper/f;->O:I

    int-to-float v0, v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/g;->h:F

    .line 5
    iget v0, p1, Lcom/theartofdev/edmodo/cropper/f;->P:I

    int-to-float v0, v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/g;->i:F

    .line 6
    iget p1, p1, Lcom/theartofdev/edmodo/cropper/f;->Q:I

    int-to-float p1, p1

    iput p1, p0, Lcom/theartofdev/edmodo/cropper/g;->j:F

    return-void
.end method

.method public r(Landroid/graphics/RectF;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/g;->a:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public s()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/g;->a:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_18

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/g;->a:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method
