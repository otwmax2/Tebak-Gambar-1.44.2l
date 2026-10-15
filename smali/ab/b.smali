###### Class ab.b (ab.b)
.class public Lab/b;
.super Ljava/lang/Object;
.source "PinchWidget.java"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lab/b;->b:F

    iput v0, p0, Lab/b;->c:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    iput v1, p0, Lab/b;->d:F

    .line 4
    iput v0, p0, Lab/b;->e:F

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 5
    invoke-direct {p0}, Lab/b;-><init>()V

    .line 6
    invoke-virtual {p0, p1}, Lab/b;->i(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private j(FFFFF)Z
    .registers 9

    .line 1
    iget-object v0, p0, Lab/b;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    mul-float v0, v0, p3

    iget-object v1, p0, Lab/b;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    mul-float v1, v1, p4

    sub-float p4, p1, v0

    sub-float v2, p2, v1

    add-float/2addr v0, p1

    add-float/2addr v1, p2

    .line 2
    iput p1, p0, Lab/b;->b:F

    .line 3
    iput p2, p0, Lab/b;->c:F

    .line 4
    iput p3, p0, Lab/b;->d:F

    .line 5
    iput p5, p0, Lab/b;->e:F

    .line 6
    iput p4, p0, Lab/b;->f:F

    .line 7
    iput v2, p0, Lab/b;->h:F

    .line 8
    iput v0, p0, Lab/b;->g:F

    .line 9
    iput v1, p0, Lab/b;->i:F

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public a(FF)Z
    .registers 4

    .line 1
    iget v0, p0, Lab/b;->f:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1a

    iget v0, p0, Lab/b;->g:F

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_1a

    iget p1, p0, Lab/b;->h:F

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_1a

    iget p1, p0, Lab/b;->i:F

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_1a

    const/4 p1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    return p1
.end method

.method public b(Landroid/graphics/Canvas;)V
    .registers 9

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 4
    iget v1, p0, Lab/b;->g:F

    iget v2, p0, Lab/b;->f:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 5
    iget v3, p0, Lab/b;->i:F

    iget v4, p0, Lab/b;->h:F

    add-float/2addr v3, v4

    div-float/2addr v3, v2

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 7
    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 8
    iget v2, p0, Lab/b;->e:F

    const/high16 v4, 0x43340000    # 180.0f

    mul-float v2, v2, v4

    const v4, 0x40490fdb    # (float)Math.PI

    div-float/2addr v2, v4

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->rotate(F)V

    neg-float v1, v1

    neg-float v2, v3

    .line 9
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 10
    iget-object v1, p0, Lab/b;->a:Landroid/graphics/Bitmap;

    if-nez v1, :cond_37

    return-void

    .line 11
    :cond_37
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lab/b;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lab/b;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 12
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lab/b;->f:F

    float-to-int v3, v3

    iget v4, p0, Lab/b;->h:F

    float-to-int v4, v4

    iget v5, p0, Lab/b;->g:F

    float-to-int v5, v5

    iget v6, p0, Lab/b;->i:F

    float-to-int v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 13
    iget-object v3, p0, Lab/b;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v3, v1, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 14
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public c()F
    .registers 2

    .line 1
    iget v0, p0, Lab/b;->e:F

    return v0
.end method

.method public d()F
    .registers 2

    .line 1
    iget v0, p0, Lab/b;->b:F

    return v0
.end method

.method public e()F
    .registers 2

    .line 1
    iget v0, p0, Lab/b;->c:F

    return v0
.end method

.method public f()F
    .registers 2

    .line 1
    iget v0, p0, Lab/b;->d:F

    return v0
.end method

.method public g(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lab/b;->h(Landroid/view/View;Z)V

    return-void
.end method

.method public h(Landroid/view/View;Z)V
    .registers 10

    if-eqz p2, :cond_11

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    iget-object v0, p0, Lab/b;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    iput p2, p0, Lab/b;->d:F

    .line 2
    :cond_11
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float v2, p2, v0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float v3, p1, v0

    .line 4
    iget v5, p0, Lab/b;->d:F

    iget v6, p0, Lab/b;->e:F

    move-object v1, p0

    move v4, v5

    invoke-direct/range {v1 .. v6}, Lab/b;->j(FFFFF)Z

    return-void
.end method

.method public i(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lab/b;->a:Landroid/graphics/Bitmap;

    return-void
.end method

.method public k(Lza/a$c;IIZ)Z
    .registers 13

    .line 1
    invoke-virtual {p1}, Lza/a$c;->n()F

    move-result v0

    .line 2
    invoke-virtual {p1}, Lza/a$c;->o()F

    move-result v1

    if-eqz p4, :cond_e

    .line 3
    iget v0, p0, Lab/b;->b:F

    .line 4
    iget v1, p0, Lab/b;->c:F

    :cond_e
    move v3, v0

    move v4, v1

    and-int/2addr p2, p3

    if-eqz p2, :cond_18

    .line 5
    invoke-virtual {p1}, Lza/a$c;->l()F

    move-result p3

    goto :goto_1c

    :cond_18
    invoke-virtual {p1}, Lza/a$c;->k()F

    move-result p3

    :goto_1c
    move v5, p3

    if-eqz p2, :cond_24

    .line 6
    invoke-virtual {p1}, Lza/a$c;->m()F

    move-result p2

    goto :goto_28

    :cond_24
    invoke-virtual {p1}, Lza/a$c;->k()F

    move-result p2

    :goto_28
    move v6, p2

    .line 7
    invoke-virtual {p1}, Lza/a$c;->j()F

    move-result v7

    move-object v2, p0

    .line 8
    invoke-direct/range {v2 .. v7}, Lab/b;->j(FFFFF)Z

    move-result p1

    return p1
.end method
