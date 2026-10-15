###### Class androidx.constraintlayout.widget.k (androidx.constraintlayout.widget.k)
.class public abstract Landroidx/constraintlayout/widget/k;
.super Landroidx/constraintlayout/widget/b;
.source "VirtualLayout.java"


# instance fields
.field private x:Z

.field private y:Z


# virtual methods
.method protected i(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/b;->h(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method protected m(Landroid/util/AttributeSet;)V
    .registers 7

    .line 1
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/b;->m(Landroid/util/AttributeSet;)V

    if-eqz p1, :cond_2e

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/constraintlayout/widget/i;->n1:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v0, :cond_2b

    .line 4
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 5
    sget v3, Landroidx/constraintlayout/widget/i;->p1:I

    const/4 v4, 0x1

    if-ne v2, v3, :cond_22

    .line 6
    iput-boolean v4, p0, Landroidx/constraintlayout/widget/k;->x:Z

    goto :goto_28

    .line 7
    :cond_22
    sget v3, Landroidx/constraintlayout/widget/i;->u1:I

    if-ne v2, v3, :cond_28

    .line 8
    iput-boolean v4, p0, Landroidx/constraintlayout/widget/k;->y:Z

    :cond_28
    :goto_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 9
    :cond_2b
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2e
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 9

    .line 1
    invoke-super {p0}, Landroidx/constraintlayout/widget/b;->onAttachedToWindow()V

    .line 2
    iget-boolean v0, p0, Landroidx/constraintlayout/widget/k;->x:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Landroidx/constraintlayout/widget/k;->y:Z

    if-eqz v0, :cond_53

    .line 3
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 4
    instance-of v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v1, :cond_53

    .line 5
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    .line 7
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    const/4 v4, 0x0

    if-lt v2, v3, :cond_25

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    move-result v2

    goto :goto_26

    :cond_25
    const/4 v2, 0x0

    :goto_26
    const/4 v5, 0x0

    .line 9
    :goto_27
    iget v6, p0, Landroidx/constraintlayout/widget/b;->p:I

    if-ge v5, v6, :cond_53

    .line 10
    iget-object v6, p0, Landroidx/constraintlayout/widget/b;->o:[I

    aget v6, v6, v5

    .line 11
    invoke-virtual {v0, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->i(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_50

    .line 12
    iget-boolean v7, p0, Landroidx/constraintlayout/widget/k;->x:Z

    if-eqz v7, :cond_3c

    .line 13
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    :cond_3c
    iget-boolean v7, p0, Landroidx/constraintlayout/widget/k;->y:Z

    if-eqz v7, :cond_50

    cmpl-float v7, v2, v4

    if-lez v7, :cond_50

    .line 15
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v3, :cond_50

    .line 16
    invoke-virtual {v6}, Landroid/view/View;->getTranslationZ()F

    move-result v7

    add-float/2addr v7, v2

    invoke-virtual {v6, v7}, Landroid/view/View;->setTranslationZ(F)V

    :cond_50
    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    :cond_53
    return-void
.end method

.method public setElevation(F)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setElevation(F)V

    .line 2
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/b;->g()V

    return-void
.end method

.method public setVisibility(I)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/b;->g()V

    return-void
.end method

.method public t(Ls/k;II)V
    .registers 4

    return-void
.end method
