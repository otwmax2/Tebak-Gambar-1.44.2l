###### Class androidx.constraintlayout.motion.widget.g (androidx.constraintlayout.motion.widget.g)
.class public Landroidx/constraintlayout/motion/widget/g;
.super Ljava/lang/Object;
.source "MotionController.java"


# instance fields
.field a:Z

.field private b:Landroidx/constraintlayout/motion/widget/k;

.field private c:Landroidx/constraintlayout/motion/widget/k;

.field private d:Landroidx/constraintlayout/motion/widget/f;

.field private e:Landroidx/constraintlayout/motion/widget/f;

.field private f:[Lq/a;

.field private g:Lq/a;

.field h:F

.field i:F

.field private j:[I

.field private k:[D

.field private l:[D

.field private m:[Ljava/lang/String;

.field private n:[F

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/k;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lu/e;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lu/d;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lu/c;",
            ">;"
        }
    .end annotation
.end field

.field private s:[Landroidx/constraintlayout/motion/widget/e;

.field private t:I

.field private u:Landroid/view/View;

.field private v:I

.field private w:F

.field private x:Landroid/view/animation/Interpolator;

.field private y:Z


# direct methods
.method private a(F[F)F
    .registers 13

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p2, :cond_9

    .line 1
    aput v2, p2, v1

    goto :goto_29

    .line 2
    :cond_9
    iget v3, p0, Landroidx/constraintlayout/motion/widget/g;->i:F

    float-to-double v4, v3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v8, v4, v6

    if-eqz v8, :cond_29

    .line 3
    iget v4, p0, Landroidx/constraintlayout/motion/widget/g;->h:F

    cmpg-float v5, p1, v4

    if-gez v5, :cond_19

    const/4 p1, 0x0

    :cond_19
    cmpl-float v5, p1, v4

    if-lez v5, :cond_29

    float-to-double v8, p1

    cmpg-double v5, v8, v6

    if-gez v5, :cond_29

    sub-float/2addr p1, v4

    mul-float p1, p1, v3

    .line 4
    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 5
    :cond_29
    :goto_29
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/g;->b:Landroidx/constraintlayout/motion/widget/k;

    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/k;->o:Lq/b;

    const/high16 v4, 0x7fc00000    # Float.NaN

    .line 6
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/g;->o:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_35
    :goto_35
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_57

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/motion/widget/k;

    .line 7
    iget-object v7, v6, Landroidx/constraintlayout/motion/widget/k;->o:Lq/b;

    if-eqz v7, :cond_35

    .line 8
    iget v8, v6, Landroidx/constraintlayout/motion/widget/k;->q:F

    cmpg-float v9, v8, p1

    if-gez v9, :cond_4e

    move-object v3, v7

    move v0, v8

    goto :goto_35

    .line 9
    :cond_4e
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_35

    .line 10
    iget v4, v6, Landroidx/constraintlayout/motion/widget/k;->q:F

    goto :goto_35

    :cond_57
    if-eqz v3, :cond_76

    .line 11
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_60

    goto :goto_61

    :cond_60
    move v2, v4

    :goto_61
    sub-float/2addr p1, v0

    sub-float/2addr v2, v0

    div-float/2addr p1, v2

    float-to-double v4, p1

    .line 12
    invoke-virtual {v3, v4, v5}, Lq/b;->a(D)D

    move-result-wide v6

    double-to-float p1, v6

    mul-float p1, p1, v2

    add-float/2addr p1, v0

    if-eqz p2, :cond_76

    .line 13
    invoke-virtual {v3, v4, v5}, Lq/b;->b(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p2, v1

    :cond_76
    return p1
.end method


# virtual methods
.method public b(D[F[F)V
    .registers 14

    const/4 v0, 0x4

    new-array v5, v0, [D

    new-array v7, v0, [D

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/g;->f:[Lq/a;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, v5}, Lq/a;->b(D[D)V

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/g;->f:[Lq/a;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, v7}, Lq/a;->d(D[D)V

    const/4 v0, 0x0

    .line 3
    invoke-static {p4, v0}, Ljava/util/Arrays;->fill([FF)V

    .line 4
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/g;->b:Landroidx/constraintlayout/motion/widget/k;

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/g;->j:[I

    move-wide v2, p1

    move-object v6, p3

    move-object v8, p4

    invoke-virtual/range {v1 .. v8}, Landroidx/constraintlayout/motion/widget/k;->e(D[I[D[F[D[F)V

    return-void
.end method

.method c(Landroid/view/View;FJLq/c;)Z
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    const/4 v1, 0x0

    move/from16 v2, p2

    .line 1
    invoke-direct {v0, v2, v1}, Landroidx/constraintlayout/motion/widget/g;->a(F[F)F

    move-result v2

    .line 2
    iget v3, v0, Landroidx/constraintlayout/motion/widget/g;->v:I

    sget v4, Landroidx/constraintlayout/motion/widget/d;->a:I

    const/high16 v13, 0x3f800000    # 1.0f

    if-eq v3, v4, :cond_45

    int-to-float v3, v3

    div-float v3, v13, v3

    div-float v4, v2, v3

    float-to-double v4, v4

    .line 3
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float v4, v4, v3

    rem-float/2addr v2, v3

    div-float/2addr v2, v3

    .line 4
    iget v5, v0, Landroidx/constraintlayout/motion/widget/g;->w:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_2e

    .line 5
    iget v5, v0, Landroidx/constraintlayout/motion/widget/g;->w:F

    add-float/2addr v2, v5

    rem-float/2addr v2, v13

    .line 6
    :cond_2e
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/g;->x:Landroid/view/animation/Interpolator;

    if-eqz v5, :cond_37

    .line 7
    invoke-interface {v5, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    goto :goto_42

    :cond_37
    float-to-double v5, v2

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    cmpl-double v2, v5, v7

    if-lez v2, :cond_41

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_42

    :cond_41
    const/4 v2, 0x0

    :goto_42
    mul-float v2, v2, v3

    add-float/2addr v2, v4

    :cond_45
    move v14, v2

    .line 8
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/g;->q:Ljava/util/HashMap;

    if-eqz v2, :cond_62

    .line 9
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_52
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_62

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lu/d;

    .line 10
    invoke-virtual {v3, v11, v14}, Lu/d;->b(Landroid/view/View;F)V

    goto :goto_52

    .line 11
    :cond_62
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/g;->p:Ljava/util/HashMap;

    const/4 v15, 0x0

    if-eqz v2, :cond_96

    .line 12
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v8, v1

    const/4 v9, 0x0

    :goto_71
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_92

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu/e;

    .line 13
    instance-of v2, v1, Lu/e$a;

    if-eqz v2, :cond_85

    .line 14
    move-object v8, v1

    check-cast v8, Lu/e$a;

    goto :goto_71

    :cond_85
    move-object/from16 v2, p1

    move v3, v14

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    .line 15
    invoke-virtual/range {v1 .. v6}, Lu/e;->b(Landroid/view/View;FJLq/c;)Z

    move-result v1

    or-int/2addr v9, v1

    goto :goto_71

    :cond_92
    move/from16 v16, v9

    move-object v9, v8

    goto :goto_99

    :cond_96
    move-object v9, v1

    const/16 v16, 0x0

    .line 16
    :goto_99
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/g;->f:[Lq/a;

    const/4 v10, 0x1

    if-eqz v1, :cond_1f3

    .line 17
    aget-object v1, v1, v15

    float-to-double v7, v14

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/g;->k:[D

    invoke-virtual {v1, v7, v8, v2}, Lq/a;->b(D[D)V

    .line 18
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/g;->f:[Lq/a;

    aget-object v1, v1, v15

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/g;->l:[D

    invoke-virtual {v1, v7, v8, v2}, Lq/a;->d(D[D)V

    .line 19
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/g;->g:Lq/a;

    if-eqz v1, :cond_c2

    .line 20
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/g;->k:[D

    array-length v3, v2

    if-lez v3, :cond_c2

    .line 21
    invoke-virtual {v1, v7, v8, v2}, Lq/a;->b(D[D)V

    .line 22
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/g;->g:Lq/a;

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/g;->l:[D

    invoke-virtual {v1, v7, v8, v2}, Lq/a;->d(D[D)V

    .line 23
    :cond_c2
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/g;->y:Z

    if-nez v1, :cond_e2

    .line 24
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/g;->b:Landroidx/constraintlayout/motion/widget/k;

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/g;->j:[I

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/g;->k:[D

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/g;->l:[D

    const/16 v17, 0x0

    iget-boolean v3, v0, Landroidx/constraintlayout/motion/widget/g;->a:Z

    move v2, v14

    move/from16 v18, v3

    move-object/from16 v3, p1

    move-wide v12, v7

    move-object/from16 v7, v17

    move/from16 v8, v18

    invoke-virtual/range {v1 .. v8}, Landroidx/constraintlayout/motion/widget/k;->f(FLandroid/view/View;[I[D[D[DZ)V

    .line 25
    iput-boolean v15, v0, Landroidx/constraintlayout/motion/widget/g;->a:Z

    goto :goto_e3

    :cond_e2
    move-wide v12, v7

    .line 26
    :goto_e3
    iget v1, v0, Landroidx/constraintlayout/motion/widget/g;->t:I

    sget v2, Landroidx/constraintlayout/motion/widget/d;->a:I

    if-eq v1, v2, :cond_145

    .line 27
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/g;->u:Landroid/view/View;

    if-nez v1, :cond_fb

    .line 28
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 29
    iget v2, v0, Landroidx/constraintlayout/motion/widget/g;->t:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/g;->u:Landroid/view/View;

    .line 30
    :cond_fb
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/g;->u:Landroid/view/View;

    if-eqz v1, :cond_145

    .line 31
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/g;->u:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 32
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/g;->u:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/g;->u:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v2

    .line 33
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v2, v4

    if-lez v2, :cond_145

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v2, v4

    if-lez v2, :cond_145

    .line 34
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v3, v2

    .line 35
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 36
    invoke-virtual {v11, v3}, Landroid/view/View;->setPivotX(F)V

    .line 37
    invoke-virtual {v11, v1}, Landroid/view/View;->setPivotY(F)V

    .line 38
    :cond_145
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/g;->q:Ljava/util/HashMap;

    if-eqz v1, :cond_173

    .line 39
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_151
    :goto_151
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_173

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq/e;

    .line 40
    instance-of v2, v1, Lu/d$a;

    if-eqz v2, :cond_151

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/g;->l:[D

    array-length v3, v2

    if-le v3, v10, :cond_151

    .line 41
    check-cast v1, Lu/d$a;

    aget-wide v4, v2, v15

    aget-wide v6, v2, v10

    move-object/from16 v2, p1

    move v3, v14

    invoke-virtual/range {v1 .. v7}, Lu/d$a;->c(Landroid/view/View;FDD)V

    goto :goto_151

    :cond_173
    if-eqz v9, :cond_190

    .line 42
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/g;->l:[D

    aget-wide v7, v1, v15

    aget-wide v17, v1, v10

    move-object v1, v9

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move v4, v14

    move-wide/from16 v5, p3

    const/16 v19, 0x1

    move-wide/from16 v9, v17

    invoke-virtual/range {v1 .. v10}, Lu/e$a;->c(Landroid/view/View;Lq/c;FJDD)Z

    move-result v1

    or-int v1, v16, v1

    move/from16 v16, v1

    goto :goto_192

    :cond_190
    const/16 v19, 0x1

    :goto_192
    const/4 v10, 0x1

    .line 43
    :goto_193
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/g;->f:[Lq/a;

    array-length v2, v1

    if-ge v10, v2, :cond_1b7

    .line 44
    aget-object v1, v1, v10

    .line 45
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/g;->n:[F

    invoke-virtual {v1, v12, v13, v2}, Lq/a;->c(D[F)V

    .line 46
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/g;->b:Landroidx/constraintlayout/motion/widget/k;

    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/k;->C:Ljava/util/LinkedHashMap;

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/g;->m:[Ljava/lang/String;

    add-int/lit8 v3, v10, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/a;

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/g;->n:[F

    invoke-static {v1, v11, v2}, Lu/a;->b(Landroidx/constraintlayout/widget/a;Landroid/view/View;[F)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_193

    .line 47
    :cond_1b7
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/g;->d:Landroidx/constraintlayout/motion/widget/f;

    iget v2, v1, Landroidx/constraintlayout/motion/widget/f;->o:I

    if-nez v2, :cond_1e1

    const/4 v2, 0x0

    cmpg-float v2, v14, v2

    if-gtz v2, :cond_1c8

    .line 48
    iget v1, v1, Landroidx/constraintlayout/motion/widget/f;->p:I

    invoke-virtual {v11, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1e1

    :cond_1c8
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v14, v2

    if-ltz v2, :cond_1d6

    .line 49
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/g;->e:Landroidx/constraintlayout/motion/widget/f;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/f;->p:I

    invoke-virtual {v11, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1e1

    .line 50
    :cond_1d6
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/g;->e:Landroidx/constraintlayout/motion/widget/f;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/f;->p:I

    iget v1, v1, Landroidx/constraintlayout/motion/widget/f;->p:I

    if-eq v2, v1, :cond_1e1

    .line 51
    invoke-virtual {v11, v15}, Landroid/view/View;->setVisibility(I)V

    .line 52
    :cond_1e1
    :goto_1e1
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/g;->s:[Landroidx/constraintlayout/motion/widget/e;

    if-eqz v1, :cond_247

    const/4 v1, 0x0

    .line 53
    :goto_1e6
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/g;->s:[Landroidx/constraintlayout/motion/widget/e;

    array-length v3, v2

    if-ge v1, v3, :cond_247

    .line 54
    aget-object v2, v2, v1

    invoke-virtual {v2, v14, v11}, Landroidx/constraintlayout/motion/widget/e;->a(FLandroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e6

    :cond_1f3
    const/16 v19, 0x1

    .line 55
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/g;->b:Landroidx/constraintlayout/motion/widget/k;

    iget v2, v1, Landroidx/constraintlayout/motion/widget/k;->s:F

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/g;->c:Landroidx/constraintlayout/motion/widget/k;

    iget v4, v3, Landroidx/constraintlayout/motion/widget/k;->s:F

    sub-float/2addr v4, v2

    mul-float v4, v4, v14

    add-float/2addr v2, v4

    .line 56
    iget v4, v1, Landroidx/constraintlayout/motion/widget/k;->t:F

    iget v5, v3, Landroidx/constraintlayout/motion/widget/k;->t:F

    sub-float/2addr v5, v4

    mul-float v5, v5, v14

    add-float/2addr v4, v5

    .line 57
    iget v5, v1, Landroidx/constraintlayout/motion/widget/k;->u:F

    iget v6, v3, Landroidx/constraintlayout/motion/widget/k;->u:F

    sub-float v7, v6, v5

    mul-float v7, v7, v14

    add-float/2addr v7, v5

    .line 58
    iget v1, v1, Landroidx/constraintlayout/motion/widget/k;->v:F

    iget v3, v3, Landroidx/constraintlayout/motion/widget/k;->v:F

    sub-float v8, v3, v1

    mul-float v8, v8, v14

    add-float/2addr v8, v1

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v2, v9

    float-to-int v10, v2

    add-float/2addr v4, v9

    float-to-int v9, v4

    add-float/2addr v2, v7

    float-to-int v2, v2

    add-float/2addr v4, v8

    float-to-int v4, v4

    sub-int v7, v2, v10

    sub-int v8, v4, v9

    cmpl-float v5, v6, v5

    if-nez v5, :cond_235

    cmpl-float v1, v3, v1

    if-nez v1, :cond_235

    .line 59
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/g;->a:Z

    if-eqz v1, :cond_244

    :cond_235
    const/high16 v1, 0x40000000    # 2.0f

    .line 60
    invoke-static {v7, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 61
    invoke-static {v8, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 62
    invoke-virtual {v11, v3, v1}, Landroid/view/View;->measure(II)V

    .line 63
    iput-boolean v15, v0, Landroidx/constraintlayout/motion/widget/g;->a:Z

    .line 64
    :cond_244
    invoke-virtual {v11, v10, v9, v2, v4}, Landroid/view/View;->layout(IIII)V

    .line 65
    :cond_247
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/g;->r:Ljava/util/HashMap;

    if-eqz v1, :cond_276

    .line 66
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_253
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_276

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu/c;

    .line 67
    instance-of v2, v1, Lu/c$a;

    if-eqz v2, :cond_272

    .line 68
    check-cast v1, Lu/c$a;

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/g;->l:[D

    aget-wide v4, v2, v15

    aget-wide v6, v2, v19

    move-object/from16 v2, p1

    move v3, v14

    invoke-virtual/range {v1 .. v7}, Lu/c$a;->c(Landroid/view/View;FDD)V

    goto :goto_253

    .line 69
    :cond_272
    invoke-virtual {v1, v11, v14}, Lu/c;->b(Landroid/view/View;F)V

    goto :goto_253

    :cond_276
    return v16
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " start: x: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/g;->b:Landroidx/constraintlayout/motion/widget/k;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/k;->s:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/g;->b:Landroidx/constraintlayout/motion/widget/k;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/k;->t:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " end: x: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/g;->c:Landroidx/constraintlayout/motion/widget/k;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/k;->s:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/g;->c:Landroidx/constraintlayout/motion/widget/k;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/k;->t:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
