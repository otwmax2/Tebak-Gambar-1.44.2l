###### Class com.google.android.material.timepicker.ClockFaceView (com.google.android.material.timepicker.ClockFaceView)
.class Lcom/google/android/material/timepicker/ClockFaceView;
.super Lcom/google/android/material/timepicker/b;
.source "ClockFaceView.java"

# interfaces
.implements Lcom/google/android/material/timepicker/ClockHandView$d;


# instance fields
.field private final P:Lcom/google/android/material/timepicker/ClockHandView;

.field private final Q:Landroid/graphics/Rect;

.field private final R:Landroid/graphics/RectF;

.field private final S:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private final T:Landroidx/core/view/a;

.field private final U:[I

.field private final V:[F

.field private final W:I

.field private a0:[Ljava/lang/String;

.field private b0:F

.field private final c0:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 1
    sget v0, Ly3/b;->t:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/timepicker/ClockFaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/timepicker/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->Q:Landroid/graphics/Rect;

    .line 4
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->R:Landroid/graphics/RectF;

    .line 5
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->S:Landroid/util/SparseArray;

    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 6
    fill-array-data v1, :array_b2

    iput-object v1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->V:[F

    .line 7
    sget-object v1, Ly3/k;->M0:[I

    sget v2, Ly3/j;->s:I

    .line 8
    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 10
    sget v1, Ly3/k;->O0:I

    .line 11
    invoke-static {p1, p2, v1}, Ll4/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->c0:Landroid/content/res/ColorStateList;

    .line 12
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Ly3/h;->f:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 13
    sget v2, Ly3/f;->j:I

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/timepicker/ClockHandView;

    iput-object v2, p0, Lcom/google/android/material/timepicker/ClockFaceView;->P:Lcom/google/android/material/timepicker/ClockHandView;

    .line 14
    sget v3, Ly3/d;->j:I

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/timepicker/ClockFaceView;->W:I

    new-array p3, v4, [I

    const v3, 0x10100a1

    const/4 v5, 0x0

    aput v3, p3, v5

    .line 15
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    .line 16
    invoke-virtual {v1, p3, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p3

    new-array v0, v0, [I

    aput p3, v0, v5

    aput p3, v0, v4

    .line 17
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p3

    const/4 v1, 0x2

    aput p3, v0, v1

    iput-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->U:[I

    .line 18
    invoke-virtual {v2, p0}, Lcom/google/android/material/timepicker/ClockHandView;->b(Lcom/google/android/material/timepicker/ClockHandView$d;)V

    .line 19
    sget p3, Ly3/c;->b:I

    .line 20
    invoke-static {p1, p3}, Lg/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 21
    invoke-virtual {p3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p3

    .line 22
    sget v0, Ly3/k;->N0:I

    .line 23
    invoke-static {p1, p2, v0}, Ll4/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    if-nez p1, :cond_85

    goto :goto_89

    .line 24
    :cond_85
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p3

    .line 25
    :goto_89
    invoke-virtual {p0, p3}, Lcom/google/android/material/timepicker/b;->setBackgroundColor(I)V

    .line 26
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p3, Lcom/google/android/material/timepicker/ClockFaceView$a;

    invoke-direct {p3, p0}, Lcom/google/android/material/timepicker/ClockFaceView$a;-><init>(Lcom/google/android/material/timepicker/ClockFaceView;)V

    .line 27
    invoke-virtual {p1, p3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 28
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 29
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 30
    new-instance p1, Lcom/google/android/material/timepicker/ClockFaceView$b;

    invoke-direct {p1, p0}, Lcom/google/android/material/timepicker/ClockFaceView$b;-><init>(Lcom/google/android/material/timepicker/ClockFaceView;)V

    iput-object p1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->T:Landroidx/core/view/a;

    const/16 p1, 0xc

    new-array p1, p1, [Ljava/lang/String;

    const-string p2, ""

    .line 31
    invoke-static {p1, p2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    invoke-virtual {p0, p1, v5}, Lcom/google/android/material/timepicker/ClockFaceView;->M([Ljava/lang/String;I)V

    return-void

    :array_b2
    .array-data 4
        0x0
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic H(Lcom/google/android/material/timepicker/ClockFaceView;)Lcom/google/android/material/timepicker/ClockHandView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->P:Lcom/google/android/material/timepicker/ClockHandView;

    return-object p0
.end method

.method static synthetic I(Lcom/google/android/material/timepicker/ClockFaceView;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->W:I

    return p0
.end method

.method static synthetic J(Lcom/google/android/material/timepicker/ClockFaceView;)Landroid/util/SparseArray;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->S:Landroid/util/SparseArray;

    return-object p0
.end method

.method private K()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->P:Lcom/google/android/material/timepicker/ClockHandView;

    invoke-virtual {v0}, Lcom/google/android/material/timepicker/ClockHandView;->d()Landroid/graphics/RectF;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_7
    iget-object v2, p0, Lcom/google/android/material/timepicker/ClockFaceView;->S:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4b

    .line 3
    iget-object v2, p0, Lcom/google/android/material/timepicker/ClockFaceView;->S:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-nez v2, :cond_1a

    goto :goto_48

    .line 4
    :cond_1a
    iget-object v3, p0, Lcom/google/android/material/timepicker/ClockFaceView;->Q:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 5
    iget-object v3, p0, Lcom/google/android/material/timepicker/ClockFaceView;->Q:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 6
    iget-object v3, p0, Lcom/google/android/material/timepicker/ClockFaceView;->Q:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 7
    iget-object v3, p0, Lcom/google/android/material/timepicker/ClockFaceView;->R:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/google/android/material/timepicker/ClockFaceView;->Q:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 8
    iget-object v3, p0, Lcom/google/android/material/timepicker/ClockFaceView;->R:Landroid/graphics/RectF;

    invoke-direct {p0, v0, v3}, Lcom/google/android/material/timepicker/ClockFaceView;->L(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RadialGradient;

    move-result-object v3

    .line 9
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 10
    invoke-virtual {v2}, Landroid/widget/TextView;->invalidate()V

    :goto_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_4b
    return-void
.end method

.method private L(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RadialGradient;
    .registers 10

    .line 1
    invoke-static {p1, p2}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result p2

    if-nez p2, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_8
    new-instance p2, Landroid/graphics/RadialGradient;

    .line 3
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->R:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float v1, v0, v1

    .line 4
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget-object v2, p0, Lcom/google/android/material/timepicker/ClockFaceView;->R:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float v2, v0, v2

    .line 5
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v3, p1, v0

    iget-object v4, p0, Lcom/google/android/material/timepicker/ClockFaceView;->U:[I

    iget-object v5, p0, Lcom/google/android/material/timepicker/ClockFaceView;->V:[F

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object p2
.end method

.method private N(I)V
    .registers 10

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->S:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_10
    iget-object v4, p0, Lcom/google/android/material/timepicker/ClockFaceView;->a0:[Ljava/lang/String;

    array-length v4, v4

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-ge v3, v4, :cond_77

    .line 4
    iget-object v4, p0, Lcom/google/android/material/timepicker/ClockFaceView;->S:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 5
    iget-object v5, p0, Lcom/google/android/material/timepicker/ClockFaceView;->a0:[Ljava/lang/String;

    array-length v5, v5

    if-lt v3, v5, :cond_2f

    .line 6
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 7
    iget-object v4, p0, Lcom/google/android/material/timepicker/ClockFaceView;->S:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_74

    :cond_2f
    if-nez v4, :cond_41

    .line 8
    sget v4, Ly3/h;->e:I

    invoke-virtual {v0, v4, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 9
    iget-object v5, p0, Lcom/google/android/material/timepicker/ClockFaceView;->S:Landroid/util/SparseArray;

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 10
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 11
    :cond_41
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-object v5, p0, Lcom/google/android/material/timepicker/ClockFaceView;->a0:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    sget v5, Ly3/f;->p:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 14
    iget-object v5, p0, Lcom/google/android/material/timepicker/ClockFaceView;->T:Landroidx/core/view/a;

    invoke-static {v4, v5}, Landroidx/core/view/a0;->q0(Landroid/view/View;Landroidx/core/view/a;)V

    .line 15
    iget-object v5, p0, Lcom/google/android/material/timepicker/ClockFaceView;->c0:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    if-eqz p1, :cond_74

    .line 16
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 17
    iget-object v7, p0, Lcom/google/android/material/timepicker/ClockFaceView;->a0:[Ljava/lang/String;

    aget-object v7, v7, v3

    aput-object v7, v6, v2

    invoke-virtual {v5, p1, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_74
    :goto_74
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_77
    return-void
.end method


# virtual methods
.method public D(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/b;->C()I

    move-result v0

    if-eq p1, v0, :cond_12

    .line 2
    invoke-super {p0, p1}, Lcom/google/android/material/timepicker/b;->D(I)V

    .line 3
    iget-object p1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->P:Lcom/google/android/material/timepicker/ClockHandView;

    invoke-virtual {p0}, Lcom/google/android/material/timepicker/b;->C()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/timepicker/ClockHandView;->j(I)V

    :cond_12
    return-void
.end method

.method public M([Ljava/lang/String;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->a0:[Ljava/lang/String;

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/material/timepicker/ClockFaceView;->N(I)V

    return-void
.end method

.method public a(FZ)V
    .registers 4

    .line 1
    iget p2, p0, Lcom/google/android/material/timepicker/ClockFaceView;->b0:F

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const v0, 0x3a83126f    # 0.001f

    cmpl-float p2, p2, v0

    if-lez p2, :cond_13

    .line 2
    iput p1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->b0:F

    .line 3
    invoke-direct {p0}, Lcom/google/android/material/timepicker/ClockFaceView;->K()V

    :cond_13
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    invoke-static {p1}, Landroidx/core/view/accessibility/c;->x0(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/c;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->a0:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4
    invoke-static {v1, v0, v2, v1}, Landroidx/core/view/accessibility/c$b;->a(IIZI)Landroidx/core/view/accessibility/c$b;

    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/c;->Z(Ljava/lang/Object;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 1
    invoke-super/range {p0 .. p5}, Landroidx/constraintlayout/widget/ConstraintLayout;->onLayout(ZIIII)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/timepicker/ClockFaceView;->K()V

    return-void
.end method

###### Class com.google.android.material.timepicker.ClockFaceView.a (com.google.android.material.timepicker.ClockFaceView$a)
.class Lcom/google/android/material/timepicker/ClockFaceView$a;
.super Ljava/lang/Object;
.source "ClockFaceView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/timepicker/ClockFaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/google/android/material/timepicker/ClockFaceView;


# direct methods
.method constructor <init>(Lcom/google/android/material/timepicker/ClockFaceView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/timepicker/ClockFaceView$a;->o:Lcom/google/android/material/timepicker/ClockFaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView$a;->o:Lcom/google/android/material/timepicker/ClockFaceView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    return v1

    .line 2
    :cond_a
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView$a;->o:Lcom/google/android/material/timepicker/ClockFaceView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView$a;->o:Lcom/google/android/material/timepicker/ClockFaceView;

    .line 4
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Lcom/google/android/material/timepicker/ClockFaceView$a;->o:Lcom/google/android/material/timepicker/ClockFaceView;

    invoke-static {v2}, Lcom/google/android/material/timepicker/ClockFaceView;->H(Lcom/google/android/material/timepicker/ClockFaceView;)Lcom/google/android/material/timepicker/ClockHandView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/material/timepicker/ClockHandView;->g()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/material/timepicker/ClockFaceView$a;->o:Lcom/google/android/material/timepicker/ClockFaceView;

    invoke-static {v2}, Lcom/google/android/material/timepicker/ClockFaceView;->I(Lcom/google/android/material/timepicker/ClockFaceView;)I

    move-result v2

    sub-int/2addr v0, v2

    .line 5
    iget-object v2, p0, Lcom/google/android/material/timepicker/ClockFaceView$a;->o:Lcom/google/android/material/timepicker/ClockFaceView;

    invoke-virtual {v2, v0}, Lcom/google/android/material/timepicker/ClockFaceView;->D(I)V

    return v1
.end method

###### Class com.google.android.material.timepicker.ClockFaceView.b (com.google.android.material.timepicker.ClockFaceView$b)
.class Lcom/google/android/material/timepicker/ClockFaceView$b;
.super Landroidx/core/view/a;
.source "ClockFaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/timepicker/ClockFaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/google/android/material/timepicker/ClockFaceView;


# direct methods
.method constructor <init>(Lcom/google/android/material/timepicker/ClockFaceView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/timepicker/ClockFaceView$b;->d:Lcom/google/android/material/timepicker/ClockFaceView;

    invoke-direct {p0}, Landroidx/core/view/a;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Landroid/view/View;Landroidx/core/view/accessibility/c;)V
    .registers 10

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/core/view/a;->g(Landroid/view/View;Landroidx/core/view/accessibility/c;)V

    .line 2
    sget v0, Ly3/f;->p:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_22

    .line 3
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView$b;->d:Lcom/google/android/material/timepicker/ClockFaceView;

    invoke-static {v0}, Lcom/google/android/material/timepicker/ClockFaceView;->J(Lcom/google/android/material/timepicker/ClockFaceView;)Landroid/util/SparseArray;

    move-result-object v0

    add-int/lit8 v1, v3, -0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/c;->u0(Landroid/view/View;)V

    :cond_22
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v6

    .line 5
    invoke-static/range {v1 .. v6}, Landroidx/core/view/accessibility/c$c;->a(IIIIZZ)Landroidx/core/view/accessibility/c$c;

    move-result-object p1

    .line 6
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/c;->a0(Ljava/lang/Object;)V

    return-void
.end method
