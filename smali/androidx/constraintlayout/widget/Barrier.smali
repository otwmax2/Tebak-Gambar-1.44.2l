###### Class androidx.constraintlayout.widget.Barrier (androidx.constraintlayout.widget.Barrier)
.class public Landroidx/constraintlayout/widget/Barrier;
.super Landroidx/constraintlayout/widget/b;
.source "Barrier.java"


# instance fields
.field private x:I

.field private y:I

.field private z:Ls/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/b;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x8

    .line 2
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x8

    .line 4
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private t(Ls/e;IZ)V
    .registers 9

    .line 1
    iput p2, p0, Landroidx/constraintlayout/widget/Barrier;->y:I

    .line 2
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/16 v4, 0x11

    if-ge p2, v4, :cond_18

    .line 3
    iget p2, p0, Landroidx/constraintlayout/widget/Barrier;->x:I

    if-ne p2, v3, :cond_13

    .line 4
    iput v1, p0, Landroidx/constraintlayout/widget/Barrier;->y:I

    goto :goto_31

    :cond_13
    if-ne p2, v2, :cond_31

    .line 5
    iput v0, p0, Landroidx/constraintlayout/widget/Barrier;->y:I

    goto :goto_31

    :cond_18
    if-eqz p3, :cond_26

    .line 6
    iget p2, p0, Landroidx/constraintlayout/widget/Barrier;->x:I

    if-ne p2, v3, :cond_21

    .line 7
    iput v0, p0, Landroidx/constraintlayout/widget/Barrier;->y:I

    goto :goto_31

    :cond_21
    if-ne p2, v2, :cond_31

    .line 8
    iput v1, p0, Landroidx/constraintlayout/widget/Barrier;->y:I

    goto :goto_31

    .line 9
    :cond_26
    iget p2, p0, Landroidx/constraintlayout/widget/Barrier;->x:I

    if-ne p2, v3, :cond_2d

    .line 10
    iput v1, p0, Landroidx/constraintlayout/widget/Barrier;->y:I

    goto :goto_31

    :cond_2d
    if-ne p2, v2, :cond_31

    .line 11
    iput v0, p0, Landroidx/constraintlayout/widget/Barrier;->y:I

    .line 12
    :cond_31
    :goto_31
    instance-of p2, p1, Ls/a;

    if-eqz p2, :cond_3c

    .line 13
    check-cast p1, Ls/a;

    .line 14
    iget p2, p0, Landroidx/constraintlayout/widget/Barrier;->y:I

    invoke-virtual {p1, p2}, Ls/a;->x1(I)V

    :cond_3c
    return-void
.end method


# virtual methods
.method public getAllowsGoneWidget()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/Barrier;->z:Ls/a;

    invoke-virtual {v0}, Ls/a;->r1()Z

    move-result v0

    return v0
.end method

.method public getMargin()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/Barrier;->z:Ls/a;

    invoke-virtual {v0}, Ls/a;->t1()I

    move-result v0

    return v0
.end method

.method public getType()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/Barrier;->x:I

    return v0
.end method

.method protected m(Landroid/util/AttributeSet;)V
    .registers 8

    .line 1
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/b;->m(Landroid/util/AttributeSet;)V

    .line 2
    new-instance v0, Ls/a;

    invoke-direct {v0}, Ls/a;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/Barrier;->z:Ls/a;

    if-eqz p1, :cond_50

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/constraintlayout/widget/i;->n1:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v0, :cond_4d

    .line 5
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 6
    sget v4, Landroidx/constraintlayout/widget/i;->w1:I

    if-ne v3, v4, :cond_2e

    .line 7
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/widget/Barrier;->setType(I)V

    goto :goto_4a

    .line 8
    :cond_2e
    sget v4, Landroidx/constraintlayout/widget/i;->v1:I

    if-ne v3, v4, :cond_3d

    .line 9
    iget-object v4, p0, Landroidx/constraintlayout/widget/Barrier;->z:Ls/a;

    const/4 v5, 0x1

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {v4, v3}, Ls/a;->w1(Z)V

    goto :goto_4a

    .line 10
    :cond_3d
    sget v4, Landroidx/constraintlayout/widget/i;->x1:I

    if-ne v3, v4, :cond_4a

    .line 11
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 12
    iget-object v4, p0, Landroidx/constraintlayout/widget/Barrier;->z:Ls/a;

    invoke-virtual {v4, v3}, Ls/a;->y1(I)V

    :cond_4a
    :goto_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 13
    :cond_4d
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 14
    :cond_50
    iget-object p1, p0, Landroidx/constraintlayout/widget/Barrier;->z:Ls/a;

    iput-object p1, p0, Landroidx/constraintlayout/widget/b;->r:Ls/h;

    .line 15
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/b;->s()V

    return-void
.end method

.method public n(Ls/e;Z)V
    .registers 4

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/Barrier;->x:I

    invoke-direct {p0, p1, v0, p2}, Landroidx/constraintlayout/widget/Barrier;->t(Ls/e;IZ)V

    return-void
.end method

.method public setAllowsGoneWidget(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/Barrier;->z:Ls/a;

    invoke-virtual {v0, p1}, Ls/a;->w1(Z)V

    return-void
.end method

.method public setDpMargin(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/widget/Barrier;->z:Ls/a;

    invoke-virtual {v0, p1}, Ls/a;->y1(I)V

    return-void
.end method

.method public setMargin(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/Barrier;->z:Ls/a;

    invoke-virtual {v0, p1}, Ls/a;->y1(I)V

    return-void
.end method

.method public setType(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/constraintlayout/widget/Barrier;->x:I

    return-void
.end method
