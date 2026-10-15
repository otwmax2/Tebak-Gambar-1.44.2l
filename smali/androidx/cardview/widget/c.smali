###### Class androidx.cardview.widget.c (androidx.cardview.widget.c)
.class Landroidx/cardview/widget/c;
.super Ljava/lang/Object;
.source "CardViewBaseImpl.java"

# interfaces
.implements Landroidx/cardview/widget/e;


# instance fields
.field final a:Landroid/graphics/RectF;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroidx/cardview/widget/c;->a:Landroid/graphics/RectF;

    return-void
.end method

.method private o(Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)Landroidx/cardview/widget/g;
    .registers 13

    .line 1
    new-instance v6, Landroidx/cardview/widget/g;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object v0, v6

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/cardview/widget/g;-><init>(Landroid/content/res/Resources;Landroid/content/res/ColorStateList;FFF)V

    return-object v6
.end method

.method private p(Landroidx/cardview/widget/d;)Landroidx/cardview/widget/g;
    .registers 2

    .line 1
    invoke-interface {p1}, Landroidx/cardview/widget/d;->f()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/g;

    return-object p1
.end method


# virtual methods
.method public a(Landroidx/cardview/widget/d;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V
    .registers 13

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 1
    invoke-direct/range {v0 .. v5}, Landroidx/cardview/widget/c;->o(Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)Landroidx/cardview/widget/g;

    move-result-object p2

    .line 2
    invoke-interface {p1}, Landroidx/cardview/widget/d;->d()Z

    move-result p3

    invoke-virtual {p2, p3}, Landroidx/cardview/widget/g;->m(Z)V

    .line 3
    invoke-interface {p1, p2}, Landroidx/cardview/widget/d;->c(Landroid/graphics/drawable/Drawable;)V

    .line 4
    invoke-virtual {p0, p1}, Landroidx/cardview/widget/c;->q(Landroidx/cardview/widget/d;)V

    return-void
.end method

.method public b(Landroidx/cardview/widget/d;F)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Landroidx/cardview/widget/c;->p(Landroidx/cardview/widget/d;)Landroidx/cardview/widget/g;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/cardview/widget/g;->p(F)V

    .line 2
    invoke-virtual {p0, p1}, Landroidx/cardview/widget/c;->q(Landroidx/cardview/widget/d;)V

    return-void
.end method

.method public c(Landroidx/cardview/widget/d;)F
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/cardview/widget/c;->p(Landroidx/cardview/widget/d;)Landroidx/cardview/widget/g;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/cardview/widget/g;->l()F

    move-result p1

    return p1
.end method

.method public d(Landroidx/cardview/widget/d;)F
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/cardview/widget/c;->p(Landroidx/cardview/widget/d;)Landroidx/cardview/widget/g;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/cardview/widget/g;->g()F

    move-result p1

    return p1
.end method

.method public e(Landroidx/cardview/widget/d;)V
    .registers 2

    return-void
.end method

.method public f(Landroidx/cardview/widget/d;F)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Landroidx/cardview/widget/c;->p(Landroidx/cardview/widget/d;)Landroidx/cardview/widget/g;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/cardview/widget/g;->r(F)V

    return-void
.end method

.method public g(Landroidx/cardview/widget/d;)F
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/cardview/widget/c;->p(Landroidx/cardview/widget/d;)Landroidx/cardview/widget/g;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/cardview/widget/g;->i()F

    move-result p1

    return p1
.end method

.method public h(Landroidx/cardview/widget/d;)Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/cardview/widget/c;->p(Landroidx/cardview/widget/d;)Landroidx/cardview/widget/g;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/cardview/widget/g;->f()Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method public i()V
    .registers 2

    .line 1
    new-instance v0, Landroidx/cardview/widget/c$a;

    invoke-direct {v0, p0}, Landroidx/cardview/widget/c$a;-><init>(Landroidx/cardview/widget/c;)V

    sput-object v0, Landroidx/cardview/widget/g;->r:Landroidx/cardview/widget/g$a;

    return-void
.end method

.method public j(Landroidx/cardview/widget/d;)F
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/cardview/widget/c;->p(Landroidx/cardview/widget/d;)Landroidx/cardview/widget/g;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/cardview/widget/g;->j()F

    move-result p1

    return p1
.end method

.method public k(Landroidx/cardview/widget/d;)F
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/cardview/widget/c;->p(Landroidx/cardview/widget/d;)Landroidx/cardview/widget/g;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/cardview/widget/g;->k()F

    move-result p1

    return p1
.end method

.method public l(Landroidx/cardview/widget/d;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Landroidx/cardview/widget/c;->p(Landroidx/cardview/widget/d;)Landroidx/cardview/widget/g;

    move-result-object v0

    invoke-interface {p1}, Landroidx/cardview/widget/d;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/g;->m(Z)V

    .line 2
    invoke-virtual {p0, p1}, Landroidx/cardview/widget/c;->q(Landroidx/cardview/widget/d;)V

    return-void
.end method

.method public m(Landroidx/cardview/widget/d;Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Landroidx/cardview/widget/c;->p(Landroidx/cardview/widget/d;)Landroidx/cardview/widget/g;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/cardview/widget/g;->o(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public n(Landroidx/cardview/widget/d;F)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Landroidx/cardview/widget/c;->p(Landroidx/cardview/widget/d;)Landroidx/cardview/widget/g;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/cardview/widget/g;->q(F)V

    .line 2
    invoke-virtual {p0, p1}, Landroidx/cardview/widget/c;->q(Landroidx/cardview/widget/d;)V

    return-void
.end method

.method public q(Landroidx/cardview/widget/d;)V
    .registers 6

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    invoke-direct {p0, p1}, Landroidx/cardview/widget/c;->p(Landroidx/cardview/widget/d;)Landroidx/cardview/widget/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/cardview/widget/g;->h(Landroid/graphics/Rect;)V

    .line 3
    invoke-virtual {p0, p1}, Landroidx/cardview/widget/c;->k(Landroidx/cardview/widget/d;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 4
    invoke-virtual {p0, p1}, Landroidx/cardview/widget/c;->j(Landroidx/cardview/widget/d;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 5
    invoke-interface {p1, v1, v2}, Landroidx/cardview/widget/d;->b(II)V

    .line 6
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {p1, v1, v2, v3, v0}, Landroidx/cardview/widget/d;->a(IIII)V

    return-void
.end method

###### Class androidx.cardview.widget.c.a (androidx.cardview.widget.c$a)
.class Landroidx/cardview/widget/c$a;
.super Ljava/lang/Object;
.source "CardViewBaseImpl.java"

# interfaces
.implements Landroidx/cardview/widget/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/cardview/widget/c;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/cardview/widget/c;


# direct methods
.method constructor <init>(Landroidx/cardview/widget/c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/cardview/widget/c$a;->a:Landroidx/cardview/widget/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v1, v1, p3

    .line 1
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float/2addr v2, v1

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v10, v2, v9

    .line 2
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    sub-float/2addr v2, v1

    sub-float v11, v2, v9

    cmpl-float v1, p3, v9

    if-ltz v1, :cond_a0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float v12, p3, v1

    .line 3
    iget-object v1, v0, Landroidx/cardview/widget/c$a;->a:Landroidx/cardview/widget/c;

    iget-object v1, v1, Landroidx/cardview/widget/c;->a:Landroid/graphics/RectF;

    neg-float v2, v12

    invoke-virtual {v1, v2, v2, v12, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v13

    .line 5
    iget v1, v8, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v12

    iget v2, v8, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v12

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6
    iget-object v1, v0, Landroidx/cardview/widget/c$a;->a:Landroidx/cardview/widget/c;

    iget-object v2, v1, Landroidx/cardview/widget/c;->a:Landroid/graphics/RectF;

    const/high16 v3, 0x43340000    # 180.0f

    const/high16 v4, 0x42b40000    # 90.0f

    const/4 v5, 0x1

    move-object/from16 v1, p1

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    const/4 v14, 0x0

    .line 7
    invoke-virtual {v7, v10, v14}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v15, 0x42b40000    # 90.0f

    .line 8
    invoke-virtual {v7, v15}, Landroid/graphics/Canvas;->rotate(F)V

    .line 9
    iget-object v1, v0, Landroidx/cardview/widget/c$a;->a:Landroidx/cardview/widget/c;

    iget-object v2, v1, Landroidx/cardview/widget/c;->a:Landroid/graphics/RectF;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 10
    invoke-virtual {v7, v11, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 11
    invoke-virtual {v7, v15}, Landroid/graphics/Canvas;->rotate(F)V

    .line 12
    iget-object v1, v0, Landroidx/cardview/widget/c$a;->a:Landroidx/cardview/widget/c;

    iget-object v2, v1, Landroidx/cardview/widget/c;->a:Landroid/graphics/RectF;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 13
    invoke-virtual {v7, v10, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 14
    invoke-virtual {v7, v15}, Landroid/graphics/Canvas;->rotate(F)V

    .line 15
    iget-object v1, v0, Landroidx/cardview/widget/c$a;->a:Landroidx/cardview/widget/c;

    iget-object v2, v1, Landroidx/cardview/widget/c;->a:Landroid/graphics/RectF;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 16
    invoke-virtual {v7, v13}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 17
    iget v1, v8, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v12

    sub-float v2, v1, v9

    iget v3, v8, Landroid/graphics/RectF;->top:F

    iget v1, v8, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v12

    add-float v4, v1, v9

    add-float v5, v3, v12

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 18
    iget v1, v8, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v12

    sub-float v2, v1, v9

    iget v5, v8, Landroid/graphics/RectF;->bottom:F

    sub-float v3, v5, v12

    iget v1, v8, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v12

    add-float v4, v1, v9

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 19
    :cond_a0
    iget v2, v8, Landroid/graphics/RectF;->left:F

    iget v1, v8, Landroid/graphics/RectF;->top:F

    add-float v3, v1, p3

    iget v4, v8, Landroid/graphics/RectF;->right:F

    iget v1, v8, Landroid/graphics/RectF;->bottom:F

    sub-float v5, v1, p3

    move-object/from16 v1, p1

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method
