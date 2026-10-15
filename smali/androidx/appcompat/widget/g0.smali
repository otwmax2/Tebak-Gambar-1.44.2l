###### Class androidx.appcompat.widget.g0 (androidx.appcompat.widget.g0)
.class Landroidx/appcompat/widget/g0;
.super Landroid/widget/ListView;
.source "DropDownListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/g0$c;,
        Landroidx/appcompat/widget/g0$e;,
        Landroidx/appcompat/widget/g0$a;,
        Landroidx/appcompat/widget/g0$b;,
        Landroidx/appcompat/widget/g0$f;,
        Landroidx/appcompat/widget/g0$d;
    }
.end annotation


# instance fields
.field A:Landroidx/appcompat/widget/g0$f;

.field private final o:Landroid/graphics/Rect;

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:Landroidx/appcompat/widget/g0$d;

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Landroidx/core/view/g0;

.field private z:Landroidx/core/widget/g;


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .registers 5

    .line 1
    sget v0, Lf/a;->A:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/g0;->o:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Landroidx/appcompat/widget/g0;->p:I

    .line 4
    iput p1, p0, Landroidx/appcompat/widget/g0;->q:I

    .line 5
    iput p1, p0, Landroidx/appcompat/widget/g0;->r:I

    .line 6
    iput p1, p0, Landroidx/appcompat/widget/g0;->s:I

    .line 7
    iput-boolean p2, p0, Landroidx/appcompat/widget/g0;->w:Z

    .line 8
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    return-void
.end method

.method private a()V
    .registers 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroidx/appcompat/widget/g0;->x:Z

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setPressed(Z)V

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/widget/g0;->drawableStateChanged()V

    .line 4
    iget v1, p0, Landroidx/appcompat/widget/g0;->t:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 5
    invoke-virtual {v1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 6
    :cond_19
    iget-object v0, p0, Landroidx/appcompat/widget/g0;->y:Landroidx/core/view/g0;

    if-eqz v0, :cond_23

    .line 7
    invoke-virtual {v0}, Landroidx/core/view/g0;->c()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Landroidx/appcompat/widget/g0;->y:Landroidx/core/view/g0;

    :cond_23
    return-void
.end method

.method private b(Landroid/view/View;I)V
    .registers 5

    .line 1
    invoke-virtual {p0, p2}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 2
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    return-void
.end method

.method private c(Landroid/graphics/Canvas;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/g0;->o:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 2
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 3
    iget-object v1, p0, Landroidx/appcompat/widget/g0;->o:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 4
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_16
    return-void
.end method

.method private f(ILandroid/view/View;)V
    .registers 8

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/g0;->o:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 3
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroidx/appcompat/widget/g0;->p:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 4
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroidx/appcompat/widget/g0;->q:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 5
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroidx/appcompat/widget/g0;->r:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 6
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroidx/appcompat/widget/g0;->s:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 7
    invoke-direct {p0}, Landroidx/appcompat/widget/g0;->j()Z

    move-result v0

    .line 8
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-eq p2, v0, :cond_46

    xor-int/lit8 p2, v0, 0x1

    .line 9
    invoke-direct {p0, p2}, Landroidx/appcompat/widget/g0;->k(Z)V

    const/4 p2, -0x1

    if-eq p1, p2, :cond_46

    .line 10
    invoke-virtual {p0}, Landroid/widget/ListView;->refreshDrawableState()V

    :cond_46
    return-void
.end method

.method private g(ILandroid/view/View;)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    const/4 v3, -0x1

    if-eq p1, v3, :cond_d

    const/4 v3, 0x1

    goto :goto_e

    :cond_d
    const/4 v3, 0x0

    :goto_e
    if-eqz v3, :cond_13

    .line 2
    invoke-virtual {v0, v2, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 3
    :cond_13
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/g0;->f(ILandroid/view/View;)V

    if-eqz v3, :cond_30

    .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/g0;->o:Landroid/graphics/Rect;

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result p2

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p1

    .line 7
    invoke-virtual {p0}, Landroid/widget/ListView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    :goto_2a
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 8
    invoke-static {v0, p2, p1}, Landroidx/core/graphics/drawable/a;->k(Landroid/graphics/drawable/Drawable;FF)V

    :cond_30
    return-void
.end method

.method private h(ILandroid/view/View;FF)V
    .registers 6

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/g0;->g(ILandroid/view/View;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_f

    const/4 v0, -0x1

    if-eq p1, v0, :cond_f

    .line 3
    invoke-static {p2, p3, p4}, Landroidx/core/graphics/drawable/a;->k(Landroid/graphics/drawable/Drawable;FF)V

    :cond_f
    return-void
.end method

.method private i(Landroid/view/View;IFF)V
    .registers 11

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/appcompat/widget/g0;->x:Z

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_c

    .line 3
    invoke-static {p0, p3, p4}, Landroidx/appcompat/widget/g0$a;->a(Landroid/view/View;FF)V

    .line 4
    :cond_c
    invoke-virtual {p0}, Landroid/widget/ListView;->isPressed()Z

    move-result v3

    if-nez v3, :cond_15

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setPressed(Z)V

    .line 6
    :cond_15
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 7
    iget v3, p0, Landroidx/appcompat/widget/g0;->t:I

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eq v3, v4, :cond_34

    .line 8
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_34

    if-eq v3, p1, :cond_34

    .line 9
    invoke-virtual {v3}, Landroid/view/View;->isPressed()Z

    move-result v4

    if-eqz v4, :cond_34

    .line 10
    invoke-virtual {v3, v5}, Landroid/view/View;->setPressed(Z)V

    .line 11
    :cond_34
    iput p2, p0, Landroidx/appcompat/widget/g0;->t:I

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, p3, v3

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    sub-float v4, p4, v4

    if-lt v1, v2, :cond_49

    .line 14
    invoke-static {p1, v3, v4}, Landroidx/appcompat/widget/g0$a;->a(Landroid/view/View;FF)V

    .line 15
    :cond_49
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-nez v1, :cond_52

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 17
    :cond_52
    invoke-direct {p0, p2, p1, p3, p4}, Landroidx/appcompat/widget/g0;->h(ILandroid/view/View;FF)V

    .line 18
    invoke-direct {p0, v5}, Landroidx/appcompat/widget/g0;->setSelectorEnabled(Z)V

    .line 19
    invoke-virtual {p0}, Landroid/widget/ListView;->refreshDrawableState()V

    return-void
.end method

.method private j()Z
    .registers 2

    .line 1
    invoke-static {}, Landroidx/core/os/a;->d()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2
    invoke-static {p0}, Landroidx/appcompat/widget/g0$c;->a(Landroid/widget/AbsListView;)Z

    move-result v0

    return v0

    .line 3
    :cond_b
    invoke-static {p0}, Landroidx/appcompat/widget/g0$e;->a(Landroid/widget/AbsListView;)Z

    move-result v0

    return v0
.end method

.method private k(Z)V
    .registers 3

    .line 1
    invoke-static {}, Landroidx/core/os/a;->d()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2
    invoke-static {p0, p1}, Landroidx/appcompat/widget/g0$c;->b(Landroid/widget/AbsListView;Z)V

    goto :goto_d

    .line 3
    :cond_a
    invoke-static {p0, p1}, Landroidx/appcompat/widget/g0$e;->b(Landroid/widget/AbsListView;Z)V

    :goto_d
    return-void
.end method

.method private l()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/g0;->x:Z

    return v0
.end method

.method private m()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 2
    invoke-direct {p0}, Landroidx/appcompat/widget/g0;->l()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {p0}, Landroid/widget/ListView;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 3
    invoke-virtual {p0}, Landroid/widget/ListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_19
    return-void
.end method

.method private setSelectorEnabled(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/g0;->u:Landroidx/appcompat/widget/g0$d;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/g0$d;->c(Z)V

    :cond_7
    return-void
.end method


# virtual methods
.method public d(IIIII)I
    .registers 16

    .line 1
    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingTop()I

    move-result p2

    .line 2
    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingBottom()I

    move-result p3

    .line 3
    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v0

    .line 4
    invoke-virtual {p0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-nez v2, :cond_18

    add-int/2addr p2, p3

    return p2

    :cond_18
    add-int/2addr p2, p3

    const/4 p3, 0x0

    if-lez v0, :cond_1f

    if-eqz v1, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    .line 6
    :goto_20
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    const/4 v3, 0x0

    move-object v6, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_29
    if-ge v4, v1, :cond_75

    .line 7
    invoke-interface {v2, v4}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v8

    if-eq v8, v5, :cond_33

    move-object v6, v3

    move v5, v8

    .line 8
    :cond_33
    invoke-interface {v2, v4, v6, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 9
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-nez v8, :cond_44

    .line 10
    invoke-virtual {p0}, Landroid/widget/ListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 11
    invoke-virtual {v6, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    :cond_44
    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v8, :cond_4f

    const/high16 v9, 0x40000000    # 2.0f

    .line 13
    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    goto :goto_53

    .line 14
    :cond_4f
    invoke-static {p3, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 15
    :goto_53
    invoke-virtual {v6, p1, v8}, Landroid/view/View;->measure(II)V

    .line 16
    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    if-lez v4, :cond_5c

    add-int/2addr p2, v0

    .line 17
    :cond_5c
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr p2, v8

    if-lt p2, p4, :cond_6d

    if-ltz p5, :cond_6c

    if-le v4, p5, :cond_6c

    if-lez v7, :cond_6c

    if-eq p2, p4, :cond_6c

    move p4, v7

    :cond_6c
    return p4

    :cond_6d
    if-ltz p5, :cond_72

    if-lt v4, p5, :cond_72

    move v7, p2

    :cond_72
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    :cond_75
    return p2
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/g0;->c(Landroid/graphics/Canvas;)V

    .line 2
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawableStateChanged()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/g0;->A:Landroidx/appcompat/widget/g0$f;

    if-eqz v0, :cond_5

    return-void

    .line 2
    :cond_5
    invoke-super {p0}, Landroid/widget/ListView;->drawableStateChanged()V

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/g0;->setSelectorEnabled(Z)V

    .line 4
    invoke-direct {p0}, Landroidx/appcompat/widget/g0;->m()V

    return-void
.end method

.method public e(Landroid/view/MotionEvent;I)Z
    .registers 10

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_16

    const/4 v3, 0x2

    if-eq v0, v3, :cond_14

    const/4 p2, 0x3

    if-eq v0, p2, :cond_11

    :cond_e
    :goto_e
    const/4 p2, 0x0

    const/4 v3, 0x1

    goto :goto_46

    :cond_11
    :goto_11
    const/4 p2, 0x0

    const/4 v3, 0x0

    goto :goto_46

    :cond_14
    const/4 v3, 0x1

    goto :goto_17

    :cond_16
    const/4 v3, 0x0

    .line 2
    :goto_17
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p2

    if-gez p2, :cond_1e

    goto :goto_11

    .line 3
    :cond_1e
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    float-to-int p2, p2

    .line 5
    invoke-virtual {p0, v4, p2}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_31

    const/4 p2, 0x1

    goto :goto_46

    .line 6
    :cond_31
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v5, v3

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    int-to-float v4, v4

    int-to-float p2, p2

    .line 7
    invoke-direct {p0, v3, v5, v4, p2}, Landroidx/appcompat/widget/g0;->i(Landroid/view/View;IFF)V

    if-ne v0, v2, :cond_e

    .line 8
    invoke-direct {p0, v3, v5}, Landroidx/appcompat/widget/g0;->b(Landroid/view/View;I)V

    goto :goto_e

    :goto_46
    if-eqz v3, :cond_4a

    if-eqz p2, :cond_4d

    .line 9
    :cond_4a
    invoke-direct {p0}, Landroidx/appcompat/widget/g0;->a()V

    :cond_4d
    if-eqz v3, :cond_65

    .line 10
    iget-object p2, p0, Landroidx/appcompat/widget/g0;->z:Landroidx/core/widget/g;

    if-nez p2, :cond_5a

    .line 11
    new-instance p2, Landroidx/core/widget/g;

    invoke-direct {p2, p0}, Landroidx/core/widget/g;-><init>(Landroid/widget/ListView;)V

    iput-object p2, p0, Landroidx/appcompat/widget/g0;->z:Landroidx/core/widget/g;

    .line 12
    :cond_5a
    iget-object p2, p0, Landroidx/appcompat/widget/g0;->z:Landroidx/core/widget/g;

    invoke-virtual {p2, v2}, Landroidx/core/widget/a;->w(Z)Landroidx/core/widget/a;

    .line 13
    iget-object p2, p0, Landroidx/appcompat/widget/g0;->z:Landroidx/core/widget/g;

    invoke-virtual {p2, p0, p1}, Landroidx/core/widget/a;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_6c

    .line 14
    :cond_65
    iget-object p1, p0, Landroidx/appcompat/widget/g0;->z:Landroidx/core/widget/g;

    if-eqz p1, :cond_6c

    .line 15
    invoke-virtual {p1, v1}, Landroidx/core/widget/a;->w(Z)Landroidx/core/widget/a;

    :cond_6c
    :goto_6c
    return v3
.end method

.method public hasFocus()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/g0;->w:Z

    if-nez v0, :cond_d

    invoke-super {p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public hasWindowFocus()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/g0;->w:Z

    if-nez v0, :cond_d

    invoke-super {p0}, Landroid/widget/ListView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public isFocused()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/g0;->w:Z

    if-nez v0, :cond_d

    invoke-super {p0}, Landroid/widget/ListView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public isInTouchMode()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/g0;->w:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Landroidx/appcompat/widget/g0;->v:Z

    if-nez v0, :cond_e

    :cond_8
    invoke-super {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Landroidx/appcompat/widget/g0;->A:Landroidx/appcompat/widget/g0$f;

    .line 2
    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_b

    .line 2
    invoke-super {p0, p1}, Landroid/widget/ListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_21

    .line 4
    iget-object v2, p0, Landroidx/appcompat/widget/g0;->A:Landroidx/appcompat/widget/g0$f;

    if-nez v2, :cond_21

    .line 5
    new-instance v2, Landroidx/appcompat/widget/g0$f;

    invoke-direct {v2, p0}, Landroidx/appcompat/widget/g0$f;-><init>(Landroidx/appcompat/widget/g0;)V

    iput-object v2, p0, Landroidx/appcompat/widget/g0;->A:Landroidx/appcompat/widget/g0$f;

    .line 6
    invoke-virtual {v2}, Landroidx/appcompat/widget/g0$f;->b()V

    .line 7
    :cond_21
    invoke-super {p0, p1}, Landroid/widget/ListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    const/16 v3, 0x9

    const/4 v4, -0x1

    if-eq v1, v3, :cond_32

    const/4 v3, 0x7

    if-ne v1, v3, :cond_2e

    goto :goto_32

    .line 8
    :cond_2e
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_78

    .line 9
    :cond_32
    :goto_32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v1, p1}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result p1

    if-eq p1, v4, :cond_78

    .line 10
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v1

    if-eq p1, v1, :cond_78

    .line 11
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_75

    .line 13
    invoke-virtual {p0}, Landroid/widget/ListView;->requestFocus()Z

    const/16 v3, 0x1e

    if-lt v0, v3, :cond_69

    .line 14
    invoke-static {}, Landroidx/appcompat/widget/g0$b;->a()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 15
    invoke-static {p0, p1, v1}, Landroidx/appcompat/widget/g0$b;->b(Landroidx/appcompat/widget/g0;ILandroid/view/View;)V

    goto :goto_75

    .line 16
    :cond_69
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 17
    :cond_75
    :goto_75
    invoke-direct {p0}, Landroidx/appcompat/widget/g0;->m()V

    :cond_78
    :goto_78
    return v2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_17

    .line 2
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/g0;->t:I

    .line 3
    :goto_17
    iget-object v0, p0, Landroidx/appcompat/widget/g0;->A:Landroidx/appcompat/widget/g0$f;

    if-eqz v0, :cond_1e

    .line 4
    invoke-virtual {v0}, Landroidx/appcompat/widget/g0$f;->a()V

    .line 5
    :cond_1e
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method setListSelectionHidden(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/g0;->v:Z

    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    if-eqz p1, :cond_8

    .line 1
    new-instance v0, Landroidx/appcompat/widget/g0$d;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/g0$d;-><init>(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    iput-object v0, p0, Landroidx/appcompat/widget/g0;->u:Landroidx/appcompat/widget/g0$d;

    .line 2
    invoke-super {p0, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    if-eqz p1, :cond_18

    .line 4
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 5
    :cond_18
    iget p1, v0, Landroid/graphics/Rect;->left:I

    iput p1, p0, Landroidx/appcompat/widget/g0;->p:I

    .line 6
    iget p1, v0, Landroid/graphics/Rect;->top:I

    iput p1, p0, Landroidx/appcompat/widget/g0;->q:I

    .line 7
    iget p1, v0, Landroid/graphics/Rect;->right:I

    iput p1, p0, Landroidx/appcompat/widget/g0;->r:I

    .line 8
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    iput p1, p0, Landroidx/appcompat/widget/g0;->s:I

    return-void
.end method

###### Class androidx.appcompat.widget.g0.a (androidx.appcompat.widget.g0$a)
.class Landroidx/appcompat/widget/g0$a;
.super Ljava/lang/Object;
.source "DropDownListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method static a(Landroid/view/View;FF)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    return-void
.end method

###### Class androidx.appcompat.widget.g0.b (androidx.appcompat.widget.g0$b)
.class Landroidx/appcompat/widget/g0$b;
.super Ljava/lang/Object;
.source "DropDownListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field private static a:Ljava/lang/reflect/Method;

.field private static b:Ljava/lang/reflect/Method;

.field private static c:Ljava/lang/reflect/Method;

.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 1
    :try_start_0
    const-class v0, Landroid/widget/AbsListView;

    const-string v1, "positionSelector"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v5, Landroid/view/View;

    const/4 v6, 0x1

    aput-object v5, v2, v6

    const/4 v5, 0x2

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v2, v5

    const/4 v5, 0x3

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v7, v2, v5

    const/4 v5, 0x4

    aput-object v7, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/widget/g0$b;->a:Ljava/lang/reflect/Method;

    .line 2
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 3
    const-class v0, Landroid/widget/AdapterView;

    const-string v1, "setSelectedPositionInt"

    new-array v2, v6, [Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/widget/g0$b;->b:Ljava/lang/reflect/Method;

    .line 4
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 5
    const-class v0, Landroid/widget/AdapterView;

    const-string v1, "setNextSelectedPositionInt"

    new-array v2, v6, [Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/widget/g0$b;->c:Ljava/lang/reflect/Method;

    .line 6
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 7
    sput-boolean v6, Landroidx/appcompat/widget/g0$b;->d:Z
    :try_end_4b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_4b} :catch_4c

    goto :goto_50

    :catch_4c
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_50
    return-void
.end method

.method static a()Z
    .registers 1

    .line 1
    sget-boolean v0, Landroidx/appcompat/widget/g0$b;->d:Z

    return v0
.end method

.method static b(Landroidx/appcompat/widget/g0;ILandroid/view/View;)V
    .registers 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BanUncheckedReflection"
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Landroidx/appcompat/widget/g0$b;->a:Ljava/lang/reflect/Method;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 p2, 0x2

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v4, v1, p2

    const/4 p2, 0x3

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, p2

    const/4 p2, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, p2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object p2, Landroidx/appcompat/widget/g0$b;->b:Ljava/lang/reflect/Method;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p2, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object p2, Landroidx/appcompat/widget/g0$b;->c:Ljava/lang/reflect/Method;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-virtual {p2, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_40
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_40} :catch_46
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_40} :catch_41

    goto :goto_4a

    :catch_41
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_4a

    :catch_46
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_4a
    return-void
.end method

###### Class androidx.appcompat.widget.g0.c (androidx.appcompat.widget.g0$c)
.class Landroidx/appcompat/widget/g0$c;
.super Ljava/lang/Object;
.source "DropDownListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method static a(Landroid/widget/AbsListView;)Z
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isSelectedChildViewEnabled()Z

    move-result p0

    return p0
.end method

.method static b(Landroid/widget/AbsListView;Z)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setSelectedChildViewEnabled(Z)V

    return-void
.end method

###### Class androidx.appcompat.widget.g0.d (androidx.appcompat.widget.g0$d)
.class Landroidx/appcompat/widget/g0$d;
.super Lh/c;
.source "DropDownListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private p:Z


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lh/c;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/appcompat/widget/g0$d;->p:Z

    return-void
.end method


# virtual methods
.method c(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/g0$d;->p:Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/g0$d;->p:Z

    if-eqz v0, :cond_7

    .line 2
    invoke-super {p0, p1}, Lh/c;->draw(Landroid/graphics/Canvas;)V

    :cond_7
    return-void
.end method

.method public setHotspot(FF)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/g0$d;->p:Z

    if-eqz v0, :cond_7

    .line 2
    invoke-super {p0, p1, p2}, Lh/c;->setHotspot(FF)V

    :cond_7
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .registers 6

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/g0$d;->p:Z

    if-eqz v0, :cond_7

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Lh/c;->setHotspotBounds(IIII)V

    :cond_7
    return-void
.end method

.method public setState([I)Z
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/g0$d;->p:Z

    if-eqz v0, :cond_9

    .line 2
    invoke-super {p0, p1}, Lh/c;->setState([I)Z

    move-result p1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public setVisible(ZZ)Z
    .registers 4

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/g0$d;->p:Z

    if-eqz v0, :cond_9

    .line 2
    invoke-super {p0, p1, p2}, Lh/c;->setVisible(ZZ)Z

    move-result p1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

###### Class androidx.appcompat.widget.g0.e (androidx.appcompat.widget.g0$e)
.class Landroidx/appcompat/widget/g0$e;
.super Ljava/lang/Object;
.source "DropDownListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# static fields
.field private static final a:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x0

    .line 1
    :try_start_1
    const-class v1, Landroid/widget/AbsListView;

    const-string v2, "mIsChildViewEnabled"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_d
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 4
    :goto_12
    sput-object v0, Landroidx/appcompat/widget/g0$e;->a:Ljava/lang/reflect/Field;

    return-void
.end method

.method static a(Landroid/widget/AbsListView;)Z
    .registers 2

    .line 1
    sget-object v0, Landroidx/appcompat/widget/g0$e;->a:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_d

    .line 2
    :try_start_4
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result p0
    :try_end_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method static b(Landroid/widget/AbsListView;Z)V
    .registers 3

    .line 1
    sget-object v0, Landroidx/appcompat/widget/g0$e;->a:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_10

    .line 2
    :try_start_4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_b} :catch_c

    goto :goto_10

    :catch_c
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_10
    :goto_10
    return-void
.end method

###### Class androidx.appcompat.widget.g0.f (androidx.appcompat.widget.g0$f)
.class Landroidx/appcompat/widget/g0$f;
.super Ljava/lang/Object;
.source "DropDownListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic o:Landroidx/appcompat/widget/g0;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/g0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/g0$f;->o:Landroidx/appcompat/widget/g0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/g0$f;->o:Landroidx/appcompat/widget/g0;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/appcompat/widget/g0;->A:Landroidx/appcompat/widget/g0$f;

    .line 2
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/g0$f;->o:Landroidx/appcompat/widget/g0;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/g0$f;->o:Landroidx/appcompat/widget/g0;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/appcompat/widget/g0;->A:Landroidx/appcompat/widget/g0$f;

    .line 2
    invoke-virtual {v0}, Landroidx/appcompat/widget/g0;->drawableStateChanged()V

    return-void
.end method
