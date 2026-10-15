###### Class androidx.constraintlayout.motion.widget.h (androidx.constraintlayout.motion.widget.h)
.class public Landroidx/constraintlayout/motion/widget/h;
.super Landroidx/constraintlayout/widget/b;
.source "MotionHelper.java"

# interfaces
.implements Landroidx/constraintlayout/motion/widget/j$d;


# instance fields
.field protected A:[Landroid/view/View;

.field private x:Z

.field private y:Z

.field private z:F


# virtual methods
.method public a(Landroidx/constraintlayout/motion/widget/j;IIF)V
    .registers 5

    return-void
.end method

.method public b(Landroidx/constraintlayout/motion/widget/j;II)V
    .registers 4

    return-void
.end method

.method public c(Landroidx/constraintlayout/motion/widget/j;I)V
    .registers 3

    return-void
.end method

.method public getProgress()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/h;->z:F

    return v0
.end method

.method protected m(Landroid/util/AttributeSet;)V
    .registers 6

    .line 1
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/b;->m(Landroid/util/AttributeSet;)V

    if-eqz p1, :cond_39

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/constraintlayout/widget/i;->B6:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v0, :cond_36

    .line 4
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 5
    sget v3, Landroidx/constraintlayout/widget/i;->D6:I

    if-ne v2, v3, :cond_27

    .line 6
    iget-boolean v3, p0, Landroidx/constraintlayout/motion/widget/h;->x:Z

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/h;->x:Z

    goto :goto_33

    .line 7
    :cond_27
    sget v3, Landroidx/constraintlayout/widget/i;->C6:I

    if-ne v2, v3, :cond_33

    .line 8
    iget-boolean v3, p0, Landroidx/constraintlayout/motion/widget/h;->y:Z

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/h;->y:Z

    :cond_33
    :goto_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 9
    :cond_36
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_39
    return-void
.end method

.method public setProgress(F)V
    .registers 7

    .line 1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/h;->z:F

    .line 2
    iget v0, p0, Landroidx/constraintlayout/widget/b;->p:I

    const/4 v1, 0x0

    if-lez v0, :cond_21

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/b;->l(Landroidx/constraintlayout/widget/ConstraintLayout;)[Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/h;->A:[Landroid/view/View;

    .line 4
    :goto_13
    iget v0, p0, Landroidx/constraintlayout/widget/b;->p:I

    if-ge v1, v0, :cond_3c

    .line 5
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/h;->A:[Landroid/view/View;

    aget-object v0, v0, v1

    .line 6
    invoke-virtual {p0, v0, p1}, Landroidx/constraintlayout/motion/widget/h;->x(Landroid/view/View;F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 7
    :cond_21
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 8
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    :goto_2b
    if-ge v1, v2, :cond_3c

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 10
    instance-of v4, v3, Landroidx/constraintlayout/motion/widget/h;

    if-eqz v4, :cond_36

    goto :goto_39

    .line 11
    :cond_36
    invoke-virtual {p0, v3, p1}, Landroidx/constraintlayout/motion/widget/h;->x(Landroid/view/View;F)V

    :goto_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    :cond_3c
    return-void
.end method

.method public t()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public u()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/h;->y:Z

    return v0
.end method

.method public v()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/h;->x:Z

    return v0
.end method

.method public w(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method public x(Landroid/view/View;F)V
    .registers 3

    return-void
.end method
