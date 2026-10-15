###### Class ab.a (ab.a)
.class public Lab/a;
.super Landroid/view/View;
.source "MultiTouchView.java"

# interfaces
.implements Lza/a$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/view/View;",
        "Lza/a$a<",
        "Lab/b;",
        ">;"
    }
.end annotation


# instance fields
.field private o:I

.field private p:Lza/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lza/a<",
            "Lab/b;",
            ">;"
        }
    .end annotation
.end field

.field private q:I

.field private r:I

.field protected s:Lab/b;

.field private t:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 2
    iput p2, p0, Lab/a;->o:I

    .line 3
    new-instance p2, Lza/a;

    invoke-direct {p2, p0}, Lza/a;-><init>(Lza/a$a;)V

    iput-object p2, p0, Lab/a;->p:Lza/a;

    .line 4
    iput-object p1, p0, Lab/a;->t:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Lza/a$b;)V
    .registers 3

    .line 1
    check-cast p1, Lab/b;

    invoke-virtual {p0, p1, p2}, Lab/a;->g(Lab/b;Lza/a$b;)V

    return-void
.end method

.method public bridge synthetic b(Lza/a$b;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lab/a;->e(Lza/a$b;)Lab/b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c(Ljava/lang/Object;Lza/a$c;)V
    .registers 3

    .line 1
    check-cast p1, Lab/b;

    invoke-virtual {p0, p1, p2}, Lab/a;->f(Lab/b;Lza/a$c;)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;Lza/a$c;Lza/a$b;)Z
    .registers 4

    .line 1
    check-cast p1, Lab/b;

    invoke-virtual {p0, p1, p2, p3}, Lab/a;->h(Lab/b;Lza/a$c;Lza/a$b;)Z

    move-result p1

    return p1
.end method

.method public e(Lza/a$b;)Lab/b;
    .registers 4

    .line 1
    invoke-virtual {p1}, Lza/a$b;->i()F

    move-result v0

    invoke-virtual {p1}, Lza/a$b;->j()F

    move-result p1

    .line 2
    iget-object v1, p0, Lab/a;->s:Lab/b;

    invoke-virtual {v1, v0, p1}, Lab/b;->a(FF)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 3
    iget-object p1, p0, Lab/a;->s:Lab/b;

    return-object p1

    :cond_13
    const/4 p1, 0x0

    return-object p1
.end method

.method public f(Lab/b;Lza/a$c;)V
    .registers 14

    .line 1
    invoke-virtual {p1}, Lab/b;->d()F

    move-result v1

    invoke-virtual {p1}, Lab/b;->e()F

    move-result v2

    iget v0, p0, Lab/a;->o:I

    and-int/lit8 v0, v0, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_12

    const/4 v5, 0x1

    goto :goto_13

    :cond_12
    const/4 v5, 0x0

    .line 2
    :goto_13
    invoke-virtual {p1}, Lab/b;->f()F

    move-result v0

    invoke-virtual {p1}, Lab/b;->f()F

    move-result v6

    add-float/2addr v0, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v0, v6

    iget v0, p0, Lab/a;->o:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_28

    const/4 v7, 0x1

    goto :goto_29

    :cond_28
    const/4 v7, 0x0

    .line 3
    :goto_29
    invoke-virtual {p1}, Lab/b;->f()F

    move-result v8

    .line 4
    invoke-virtual {p1}, Lab/b;->f()F

    move-result v9

    iget v0, p0, Lab/a;->o:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_38

    const/4 v10, 0x1

    goto :goto_39

    :cond_38
    const/4 v10, 0x0

    .line 5
    :goto_39
    invoke-virtual {p1}, Lab/b;->c()F

    move-result p1

    move-object v0, p2

    move v3, v5

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v9

    move v8, v10

    move v9, p1

    .line 6
    invoke-virtual/range {v0 .. v9}, Lza/a$c;->q(FFZFZFFZF)V

    return-void
.end method

.method public g(Lab/b;Lza/a$b;)V
    .registers 3

    .line 1
    invoke-virtual {p2}, Lza/a$b;->k()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 2
    iput-object p1, p0, Lab/a;->s:Lab/b;

    .line 3
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public h(Lab/b;Lza/a$c;Lza/a$b;)Z
    .registers 6

    .line 1
    iget v0, p0, Lab/a;->o:I

    invoke-virtual {p3}, Lza/a$b;->l()Z

    move-result p3

    const/4 v1, 0x2

    invoke-virtual {p1, p2, v0, v1, p3}, Lab/b;->k(Lza/a$c;IIZ)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_10
    return p1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lab/a;->s:Lab/b;

    invoke-virtual {v0, p1}, Lab/b;->b(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    iput p1, p0, Lab/a;->q:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result p1

    invoke-static {p1, p2}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    iput p1, p0, Lab/a;->r:I

    .line 3
    iget p2, p0, Lab/a;->q:I

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lab/a;->p:Lza/a;

    invoke-virtual {v0, p1}, Lza/a;->e(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setPinchWidget(Landroid/graphics/Bitmap;)V
    .registers 3

    .line 1
    new-instance v0, Lab/b;

    invoke-direct {v0, p1}, Lab/b;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lab/a;->s:Lab/b;

    .line 2
    invoke-virtual {v0, p0}, Lab/b;->g(Landroid/view/View;)V

    return-void
.end method
