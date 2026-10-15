###### Class com.google.android.material.card.a (com.google.android.material.card.a)
.class public Lcom/google/android/material/card/a;
.super Landroidx/cardview/widget/CardView;
.source "MaterialCardView.java"

# interfaces
.implements Landroid/widget/Checkable;
.implements Lo4/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/card/a$a;
    }
.end annotation


# static fields
.field private static final B:[I

.field private static final C:[I

.field private static final D:[I

.field private static final E:I


# instance fields
.field private A:Lcom/google/android/material/card/a$a;

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x101009f

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 1
    sput-object v1, Lcom/google/android/material/card/a;->B:[I

    new-array v1, v0, [I

    const v2, 0x10100a0

    aput v2, v1, v3

    .line 2
    sput-object v1, Lcom/google/android/material/card/a;->C:[I

    new-array v0, v0, [I

    .line 3
    sget v1, Ly3/b;->z:I

    aput v1, v0, v3

    sput-object v0, Lcom/google/android/material/card/a;->D:[I

    .line 4
    sget v0, Ly3/j;->k:I

    sput v0, Lcom/google/android/material/card/a;->E:I

    return-void
.end method

.method static synthetic f(Lcom/google/android/material/card/a;)F
    .registers 1

    .line 1
    invoke-super {p0}, Landroidx/cardview/widget/CardView;->getRadius()F

    move-result p0

    return p0
.end method

.method private g()V
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-gt v0, v1, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    .line 2
    throw v0
.end method

.method private getBoundsAsRectF()Landroid/graphics/RectF;
    .registers 2

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    const/4 v0, 0x0

    .line 2
    throw v0
.end method


# virtual methods
.method public getCardBackgroundColor()Landroid/content/res/ColorStateList;
    .registers 2

    const/4 v0, 0x0

    .line 1
    throw v0
.end method

.method public getCardForegroundColor()Landroid/content/res/ColorStateList;
    .registers 2

    const/4 v0, 0x0

    .line 1
    throw v0
.end method

.method getCardViewRadius()F
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/google/android/material/card/a;->f(Lcom/google/android/material/card/a;)F

    move-result v0

    return v0
.end method

.method public getCheckedIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    const/4 v0, 0x0

    .line 1
    throw v0
.end method

.method public getCheckedIconMargin()I
    .registers 2

    const/4 v0, 0x0

    .line 1
    throw v0
.end method

.method public getCheckedIconSize()I
    .registers 2

    const/4 v0, 0x0

    .line 1
    throw v0
.end method

.method public getCheckedIconTint()Landroid/content/res/ColorStateList;
    .registers 2

    const/4 v0, 0x0

    .line 1
    throw v0
.end method

.method public getContentPaddingBottom()I
    .registers 2

    const/4 v0, 0x0

    .line 1
    throw v0
.end method

.method public getContentPaddingLeft()I
    .registers 2

    const/4 v0, 0x0

    .line 1
    throw v0
.end method

.method public getContentPaddingRight()I
    .registers 2

    const/4 v0, 0x0

    .line 1
    throw v0
.end method

.method public getContentPaddingTop()I
    .registers 2

    const/4 v0, 0x0

    .line 1
    throw v0
.end method

.method public getProgress()F
    .registers 2

    const/4 v0, 0x0

    .line 1
    throw v0
.end method

.method public getRadius()F
    .registers 2

    const/4 v0, 0x0

    .line 1
    throw v0
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
    .registers 2

    const/4 v0, 0x0

    .line 1
    throw v0
.end method

.method public getShapeAppearanceModel()Lo4/k;
    .registers 2

    const/4 v0, 0x0

    .line 1
    throw v0
.end method

.method public getStrokeColor()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    throw v0
.end method

.method public getStrokeColorStateList()Landroid/content/res/ColorStateList;
    .registers 2

    const/4 v0, 0x0

    .line 1
    throw v0
.end method

.method public getStrokeWidth()I
    .registers 2

    const/4 v0, 0x0

    .line 1
    throw v0
.end method

.method public h()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public i()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/card/a;->z:Z

    return v0
.end method

.method public isChecked()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/card/a;->y:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x0

    .line 2
    throw v0
.end method

.method protected onCreateDrawableState(I)[I
    .registers 3

    add-int/lit8 p1, p1, 0x3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/card/a;->h()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3
    sget-object v0, Lcom/google/android/material/card/a;->B:[I

    invoke-static {p1, v0}, Landroid/widget/FrameLayout;->mergeDrawableStates([I[I)[I

    .line 4
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/material/card/a;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 5
    sget-object v0, Lcom/google/android/material/card/a;->C:[I

    invoke-static {p1, v0}, Landroid/widget/FrameLayout;->mergeDrawableStates([I[I)[I

    .line 6
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/material/card/a;->i()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 7
    sget-object v0, Lcom/google/android/material/card/a;->D:[I

    invoke-static {p1, v0}, Landroid/widget/FrameLayout;->mergeDrawableStates([I[I)[I

    :cond_27
    return-object p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-string v0, "androidx.cardview.widget.CardView"

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/card/a;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string v0, "androidx.cardview.widget.CardView"

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/card/a;->h()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isClickable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/card/a;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/cardview/widget/CardView;->onMeasure(II)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    const/4 p1, 0x0

    throw p1
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/card/a;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1
    iget-boolean p1, p0, Lcom/google/android/material/card/a;->x:Z

    if-nez p1, :cond_5

    return-void

    :cond_5
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method setBackgroundInternal(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCardBackgroundColor(I)V
    .registers 2

    .line 1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    throw p1
.end method

.method public setCardBackgroundColor(Landroid/content/res/ColorStateList;)V
    .registers 2

    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public setCardElevation(F)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setCardElevation(F)V

    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public setCardForegroundColor(Landroid/content/res/ColorStateList;)V
    .registers 2

    const/4 p1, 0x0

    .line 1
    throw p1
.end method

.method public setCheckable(Z)V
    .registers 2

    const/4 p1, 0x0

    .line 1
    throw p1
.end method

.method public setChecked(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/card/a;->y:Z

    if-eq v0, p1, :cond_7

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/card/a;->toggle()V

    :cond_7
    return-void
.end method

.method public setCheckedIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    const/4 p1, 0x0

    .line 1
    throw p1
.end method

.method public setCheckedIconMargin(I)V
    .registers 2

    const/4 p1, 0x0

    .line 1
    throw p1
.end method

.method public setCheckedIconMarginResource(I)V
    .registers 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    return-void

    .line 1
    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public setCheckedIconResource(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lg/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    throw p1
.end method

.method public setCheckedIconSize(I)V
    .registers 2

    const/4 p1, 0x0

    .line 1
    throw p1
.end method

.method public setCheckedIconSizeResource(I)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 1
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    const/4 p1, 0x0

    throw p1
.end method

.method public setCheckedIconTint(Landroid/content/res/ColorStateList;)V
    .registers 2

    const/4 p1, 0x0

    .line 1
    throw p1
.end method

.method public setClickable(Z)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    return-void
.end method

.method public setDragged(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/card/a;->z:Z

    if-eq v0, p1, :cond_f

    .line 2
    iput-boolean p1, p0, Lcom/google/android/material/card/a;->z:Z

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->refreshDrawableState()V

    .line 4
    invoke-direct {p0}, Lcom/google/android/material/card/a;->g()V

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_f
    return-void
.end method

.method public setMaxCardElevation(F)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setMaxCardElevation(F)V

    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public setOnCheckedChangeListener(Lcom/google/android/material/card/a$a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/card/a;->A:Lcom/google/android/material/card/a$a;

    return-void
.end method

.method public setPreventCornerOverlap(Z)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setPreventCornerOverlap(Z)V

    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public setProgress(F)V
    .registers 2

    const/4 p1, 0x0

    .line 1
    throw p1
.end method

.method public setRadius(F)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setRadius(F)V

    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .registers 2

    const/4 p1, 0x0

    .line 1
    throw p1
.end method

.method public setRippleColorResource(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lg/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public setShapeAppearanceModel(Lo4/k;)V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_11

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/card/a;->getBoundsAsRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo4/k;->u(Landroid/graphics/RectF;)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    :cond_11
    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public setStrokeColor(I)V
    .registers 2

    .line 1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    throw p1
.end method

.method public setStrokeColor(Landroid/content/res/ColorStateList;)V
    .registers 2

    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public setStrokeWidth(I)V
    .registers 2

    const/4 p1, 0x0

    .line 1
    throw p1
.end method

.method public setUseCompatPadding(Z)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setUseCompatPadding(Z)V

    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public toggle()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/card/a;->h()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2
    iget-boolean v0, p0, Lcom/google/android/material/card/a;->y:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/card/a;->y:Z

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->refreshDrawableState()V

    .line 4
    invoke-direct {p0}, Lcom/google/android/material/card/a;->g()V

    .line 5
    iget-object v0, p0, Lcom/google/android/material/card/a;->A:Lcom/google/android/material/card/a$a;

    if-eqz v0, :cond_21

    .line 6
    iget-boolean v1, p0, Lcom/google/android/material/card/a;->y:Z

    invoke-interface {v0, p0, v1}, Lcom/google/android/material/card/a$a;->a(Lcom/google/android/material/card/a;Z)V

    :cond_21
    return-void
.end method

###### Class com.google.android.material.card.a.InterfaceC0114a (com.google.android.material.card.a$a)
.class public interface abstract Lcom/google/android/material/card/a$a;
.super Ljava/lang/Object;
.source "MaterialCardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/card/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a(Lcom/google/android/material/card/a;Z)V
.end method
