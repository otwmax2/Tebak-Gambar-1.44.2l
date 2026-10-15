###### Class com.tebakgambar.component.ClickableImageView (com.tebakgambar.component.ClickableImageView)
.class public Lcom/tebakgambar/component/ClickableImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "ClickableImageView.java"


# instance fields
.field A:F

.field private B:Landroid/view/View$OnClickListener;

.field private C:Landroid/view/View$OnClickListener;

.field private D:Landroid/view/View$OnTouchListener;

.field private r:F

.field private s:F

.field private t:F

.field private u:F

.field v:I

.field w:I

.field x:I

.field y:I

.field z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Lcom/tebakgambar/component/ClickableImageView$a;

    invoke-direct {p1, p0}, Lcom/tebakgambar/component/ClickableImageView$a;-><init>(Lcom/tebakgambar/component/ClickableImageView;)V

    iput-object p1, p0, Lcom/tebakgambar/component/ClickableImageView;->C:Landroid/view/View$OnClickListener;

    .line 3
    new-instance p1, Lcom/tebakgambar/component/ClickableImageView$b;

    invoke-direct {p1, p0}, Lcom/tebakgambar/component/ClickableImageView$b;-><init>(Lcom/tebakgambar/component/ClickableImageView;)V

    iput-object p1, p0, Lcom/tebakgambar/component/ClickableImageView;->D:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method static synthetic c(Lcom/tebakgambar/component/ClickableImageView;)Landroid/view/View$OnClickListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tebakgambar/component/ClickableImageView;->B:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic d(Lcom/tebakgambar/component/ClickableImageView;)F
    .registers 1

    .line 1
    iget p0, p0, Lcom/tebakgambar/component/ClickableImageView;->r:F

    return p0
.end method

.method static synthetic e(Lcom/tebakgambar/component/ClickableImageView;F)F
    .registers 2

    .line 1
    iput p1, p0, Lcom/tebakgambar/component/ClickableImageView;->r:F

    return p1
.end method

.method static synthetic f(Lcom/tebakgambar/component/ClickableImageView;)F
    .registers 1

    .line 1
    iget p0, p0, Lcom/tebakgambar/component/ClickableImageView;->s:F

    return p0
.end method

.method static synthetic g(Lcom/tebakgambar/component/ClickableImageView;F)F
    .registers 2

    .line 1
    iput p1, p0, Lcom/tebakgambar/component/ClickableImageView;->s:F

    return p1
.end method

.method static synthetic h(Lcom/tebakgambar/component/ClickableImageView;)F
    .registers 1

    .line 1
    iget p0, p0, Lcom/tebakgambar/component/ClickableImageView;->t:F

    return p0
.end method

.method static synthetic i(Lcom/tebakgambar/component/ClickableImageView;F)F
    .registers 2

    .line 1
    iput p1, p0, Lcom/tebakgambar/component/ClickableImageView;->t:F

    return p1
.end method

.method static synthetic j(Lcom/tebakgambar/component/ClickableImageView;)F
    .registers 1

    .line 1
    iget p0, p0, Lcom/tebakgambar/component/ClickableImageView;->u:F

    return p0
.end method

.method static synthetic k(Lcom/tebakgambar/component/ClickableImageView;F)F
    .registers 2

    .line 1
    iput p1, p0, Lcom/tebakgambar/component/ClickableImageView;->u:F

    return p1
.end method


# virtual methods
.method public l()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/component/ClickableImageView;->D:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onFinishInflate()V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/component/ClickableImageView;->C:Landroid/view/View$OnClickListener;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/component/ClickableImageView;->B:Landroid/view/View$OnClickListener;

    return-void
.end method

###### Class com.tebakgambar.component.ClickableImageView.a (com.tebakgambar.component.ClickableImageView$a)
.class Lcom/tebakgambar/component/ClickableImageView$a;
.super Ljava/lang/Object;
.source "ClickableImageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/component/ClickableImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/tebakgambar/component/ClickableImageView;


# direct methods
.method constructor <init>(Lcom/tebakgambar/component/ClickableImageView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/component/ClickableImageView$a;->o:Lcom/tebakgambar/component/ClickableImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/component/ClickableImageView$a;->o:Lcom/tebakgambar/component/ClickableImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110005

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ly8/y;->Z(Landroid/content/Context;Ljava/lang/Integer;)V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/component/ClickableImageView$a;->o:Lcom/tebakgambar/component/ClickableImageView;

    invoke-static {v0}, Lcom/tebakgambar/component/ClickableImageView;->c(Lcom/tebakgambar/component/ClickableImageView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 3
    iget-object v0, p0, Lcom/tebakgambar/component/ClickableImageView$a;->o:Lcom/tebakgambar/component/ClickableImageView;

    invoke-static {v0}, Lcom/tebakgambar/component/ClickableImageView;->c(Lcom/tebakgambar/component/ClickableImageView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_21
    return-void
.end method

###### Class com.tebakgambar.component.ClickableImageView.b (com.tebakgambar.component.ClickableImageView$b)
.class Lcom/tebakgambar/component/ClickableImageView$b;
.super Ljava/lang/Object;
.source "ClickableImageView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/component/ClickableImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/tebakgambar/component/ClickableImageView;


# direct methods
.method constructor <init>(Lcom/tebakgambar/component/ClickableImageView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/component/ClickableImageView$b;->o:Lcom/tebakgambar/component/ClickableImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 12

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_12b

    const/4 v3, 0x2

    if-eq v1, v2, :cond_b7

    if-eq v1, v3, :cond_14

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_14
    iget-object v1, p0, Lcom/tebakgambar/component/ClickableImageView$b;->o:Lcom/tebakgambar/component/ClickableImageView;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    iput v3, v1, Lcom/tebakgambar/component/ClickableImageView;->v:I

    .line 4
    iget-object v1, p0, Lcom/tebakgambar/component/ClickableImageView$b;->o:Lcom/tebakgambar/component/ClickableImageView;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    iput v3, v1, Lcom/tebakgambar/component/ClickableImageView;->w:I

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 6
    iget-object v3, p0, Lcom/tebakgambar/component/ClickableImageView$b;->o:Lcom/tebakgambar/component/ClickableImageView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    iput v4, v3, Lcom/tebakgambar/component/ClickableImageView;->x:I

    .line 7
    iget-object v3, p0, Lcom/tebakgambar/component/ClickableImageView$b;->o:Lcom/tebakgambar/component/ClickableImageView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, v3, Lcom/tebakgambar/component/ClickableImageView;->y:I

    .line 8
    iget-object v1, p0, Lcom/tebakgambar/component/ClickableImageView$b;->o:Lcom/tebakgambar/component/ClickableImageView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget-object v4, p0, Lcom/tebakgambar/component/ClickableImageView$b;->o:Lcom/tebakgambar/component/ClickableImageView;

    invoke-static {v4}, Lcom/tebakgambar/component/ClickableImageView;->h(Lcom/tebakgambar/component/ClickableImageView;)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v1, Lcom/tebakgambar/component/ClickableImageView;->z:F

    .line 9
    iget-object v1, p0, Lcom/tebakgambar/component/ClickableImageView$b;->o:Lcom/tebakgambar/component/ClickableImageView;

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    int-to-float v3, v3

    iget v4, v1, Lcom/tebakgambar/component/ClickableImageView;->z:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v1, Lcom/tebakgambar/component/ClickableImageView;->z:F

    .line 10
    iget-object v1, p0, Lcom/tebakgambar/component/ClickableImageView$b;->o:Lcom/tebakgambar/component/ClickableImageView;

    iget v3, v1, Lcom/tebakgambar/component/ClickableImageView;->x:I

    iget v4, v1, Lcom/tebakgambar/component/ClickableImageView;->v:I

    sub-int/2addr v3, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v1, Lcom/tebakgambar/component/ClickableImageView;->z:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v1, Lcom/tebakgambar/component/ClickableImageView;->z:F

    .line 11
    iget-object v1, p0, Lcom/tebakgambar/component/ClickableImageView$b;->o:Lcom/tebakgambar/component/ClickableImageView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget-object v3, p0, Lcom/tebakgambar/component/ClickableImageView$b;->o:Lcom/tebakgambar/component/ClickableImageView;

    invoke-static {v3}, Lcom/tebakgambar/component/ClickableImageView;->j(Lcom/tebakgambar/component/ClickableImageView;)F

    move-result v3

    add-float/2addr p2, v3

    iput p2, v1, Lcom/tebakgambar/component/ClickableImageView;->A:F

    .line 12
    iget-object p2, p0, Lcom/tebakgambar/component/ClickableImageView$b;->o:Lcom/tebakgambar/component/ClickableImageView;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float v1, v1

    iget v3, p2, Lcom/tebakgambar/component/ClickableImageView;->A:F

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p2, Lcom/tebakgambar/component/ClickableImageView;->A:F

    .line 13
    iget-object p2, p0, Lcom/tebakgambar/component/ClickableImageView$b;->o:Lcom/tebakgambar/component/ClickableImageView;

    iget v1, p2, Lcom/tebakgambar/component/ClickableImageView;->y:I

    iget v3, p2, Lcom/tebakgambar/component/ClickableImageView;->w:I

    sub-int/2addr v1, v3

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    iget v1, p2, Lcom/tebakgambar/component/ClickableImageView;->A:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p2, Lcom/tebakgambar/component/ClickableImageView;->A:F

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/tebakgambar/component/ClickableImageView$b;->o:Lcom/tebakgambar/component/ClickableImageView;

    iget p2, p2, Lcom/tebakgambar/component/ClickableImageView;->z:F

    .line 15
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/tebakgambar/component/ClickableImageView$b;->o:Lcom/tebakgambar/component/ClickableImageView;

    iget p2, p2, Lcom/tebakgambar/component/ClickableImageView;->A:F

    .line 16
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x0

    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_159

    .line 19
    :cond_b7
    iget-object v1, p0, Lcom/tebakgambar/component/ClickableImageView$b;->o:Lcom/tebakgambar/component/ClickableImageView;

    iget v4, v1, Lcom/tebakgambar/component/ClickableImageView;->z:F

    iget v5, v1, Lcom/tebakgambar/component/ClickableImageView;->x:I

    iget v6, v1, Lcom/tebakgambar/component/ClickableImageView;->v:I

    sub-int v7, v5, v6

    iget v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v7, v8

    div-int/2addr v7, v3

    int-to-float v3, v7

    cmpl-float v3, v4, v3

    if-lez v3, :cond_d0

    sub-int/2addr v5, v6

    sub-int/2addr v5, v8

    int-to-float v0, v5

    .line 20
    iput v0, v1, Lcom/tebakgambar/component/ClickableImageView;->z:F

    goto :goto_d5

    .line 21
    :cond_d0
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    int-to-float v0, v0

    iput v0, v1, Lcom/tebakgambar/component/ClickableImageView;->z:F

    .line 22
    :goto_d5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 23
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    .line 24
    iget-object v1, p0, Lcom/tebakgambar/component/ClickableImageView$b;->o:Lcom/tebakgambar/component/ClickableImageView;

    invoke-static {v1}, Lcom/tebakgambar/component/ClickableImageView;->d(Lcom/tebakgambar/component/ClickableImageView;)F

    move-result v1

    sub-float/2addr v0, v1

    .line 25
    iget-object v1, p0, Lcom/tebakgambar/component/ClickableImageView$b;->o:Lcom/tebakgambar/component/ClickableImageView;

    invoke-static {v1}, Lcom/tebakgambar/component/ClickableImageView;->f(Lcom/tebakgambar/component/ClickableImageView;)F

    move-result v1

    sub-float/2addr p2, v1

    .line 26
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_104

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpg-float p2, p2, v1

    if-gez p2, :cond_104

    .line 27
    iget-object p1, p0, Lcom/tebakgambar/component/ClickableImageView$b;->o:Lcom/tebakgambar/component/ClickableImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->performClick()Z

    move-result p1

    return p1

    .line 28
    :cond_104
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/tebakgambar/component/ClickableImageView$b;->o:Lcom/tebakgambar/component/ClickableImageView;

    iget p2, p2, Lcom/tebakgambar/component/ClickableImageView;->z:F

    .line 29
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/tebakgambar/component/ClickableImageView$b;->o:Lcom/tebakgambar/component/ClickableImageView;

    iget p2, p2, Lcom/tebakgambar/component/ClickableImageView;->A:F

    .line 30
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {p2}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    .line 31
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    .line 32
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_159

    .line 34
    :cond_12b
    iget-object v0, p0, Lcom/tebakgambar/component/ClickableImageView$b;->o:Lcom/tebakgambar/component/ClickableImageView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/tebakgambar/component/ClickableImageView;->e(Lcom/tebakgambar/component/ClickableImageView;F)F

    .line 35
    iget-object v0, p0, Lcom/tebakgambar/component/ClickableImageView$b;->o:Lcom/tebakgambar/component/ClickableImageView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-static {v0, v1}, Lcom/tebakgambar/component/ClickableImageView;->g(Lcom/tebakgambar/component/ClickableImageView;F)F

    .line 36
    iget-object v0, p0, Lcom/tebakgambar/component/ClickableImageView$b;->o:Lcom/tebakgambar/component/ClickableImageView;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    sub-float/2addr v1, v3

    invoke-static {v0, v1}, Lcom/tebakgambar/component/ClickableImageView;->i(Lcom/tebakgambar/component/ClickableImageView;F)F

    .line 37
    iget-object v0, p0, Lcom/tebakgambar/component/ClickableImageView$b;->o:Lcom/tebakgambar/component/ClickableImageView;

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    sub-float/2addr p1, p2

    invoke-static {v0, p1}, Lcom/tebakgambar/component/ClickableImageView;->k(Lcom/tebakgambar/component/ClickableImageView;F)F

    :goto_159
    return v2
.end method
