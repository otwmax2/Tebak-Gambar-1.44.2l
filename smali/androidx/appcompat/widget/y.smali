###### Class androidx.appcompat.widget.y (androidx.appcompat.widget.y)
.class public Landroidx/appcompat/widget/y;
.super Landroid/widget/Spinner;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroidx/core/view/y;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/y$c;,
        Landroidx/appcompat/widget/y$d;,
        Landroidx/appcompat/widget/y$e;,
        Landroidx/appcompat/widget/y$h;,
        Landroidx/appcompat/widget/y$f;,
        Landroidx/appcompat/widget/y$j;,
        Landroidx/appcompat/widget/y$g;,
        Landroidx/appcompat/widget/y$i;
    }
.end annotation


# static fields
.field private static final w:[I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation
.end field


# instance fields
.field private final o:Landroidx/appcompat/widget/e;

.field private final p:Landroid/content/Context;

.field private q:Landroidx/appcompat/widget/i0;

.field private r:Landroid/widget/SpinnerAdapter;

.field private final s:Z

.field private t:Landroidx/appcompat/widget/y$j;

.field u:I

.field final v:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10102f1

    aput v2, v0, v1

    .line 1
    sput-object v0, Landroidx/appcompat/widget/y;->w:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 1
    sget v0, Lf/a;->K:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/y;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/appcompat/widget/y;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 3
    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/widget/y;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V
    .registers 12

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/y;->v:Landroid/graphics/Rect;

    .line 6
    invoke-virtual {p0}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/appcompat/widget/r0;->a(Landroid/view/View;Landroid/content/Context;)V

    .line 7
    sget-object v0, Lf/j;->x2:[I

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, p3, v1}, Landroidx/appcompat/widget/w0;->v(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/w0;

    move-result-object v0

    .line 8
    new-instance v2, Landroidx/appcompat/widget/e;

    invoke-direct {v2, p0}, Landroidx/appcompat/widget/e;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Landroidx/appcompat/widget/y;->o:Landroidx/appcompat/widget/e;

    if-eqz p5, :cond_29

    .line 9
    new-instance v2, Landroidx/appcompat/view/d;

    invoke-direct {v2, p1, p5}, Landroidx/appcompat/view/d;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    iput-object v2, p0, Landroidx/appcompat/widget/y;->p:Landroid/content/Context;

    goto :goto_3b

    .line 10
    :cond_29
    sget p5, Lf/j;->C2:I

    invoke-virtual {v0, p5, v1}, Landroidx/appcompat/widget/w0;->n(II)I

    move-result p5

    if-eqz p5, :cond_39

    .line 11
    new-instance v2, Landroidx/appcompat/view/d;

    invoke-direct {v2, p1, p5}, Landroidx/appcompat/view/d;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Landroidx/appcompat/widget/y;->p:Landroid/content/Context;

    goto :goto_3b

    .line 12
    :cond_39
    iput-object p1, p0, Landroidx/appcompat/widget/y;->p:Landroid/content/Context;

    :goto_3b
    const/4 p5, -0x1

    const/4 v2, 0x0

    if-ne p4, p5, :cond_6b

    .line 13
    :try_start_3f
    sget-object p5, Landroidx/appcompat/widget/y;->w:[I

    invoke-virtual {p1, p2, p5, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p5
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_45} :catch_57
    .catchall {:try_start_3f .. :try_end_45} :catchall_55

    .line 14
    :try_start_45
    invoke-virtual {p5, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 15
    invoke-virtual {p5, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4f} :catch_53
    .catchall {:try_start_45 .. :try_end_4f} :catchall_63

    .line 16
    :cond_4f
    :goto_4f
    invoke-virtual {p5}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_6b

    :catch_53
    move-exception v3

    goto :goto_59

    :catchall_55
    move-exception p1

    goto :goto_65

    :catch_57
    move-exception v3

    move-object p5, v2

    :goto_59
    :try_start_59
    const-string v4, "AppCompatSpinner"

    const-string v5, "Could not read android:spinnerMode"

    .line 17
    invoke-static {v4, v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_60
    .catchall {:try_start_59 .. :try_end_60} :catchall_63

    if-eqz p5, :cond_6b

    goto :goto_4f

    :catchall_63
    move-exception p1

    move-object v2, p5

    :goto_65
    if-eqz v2, :cond_6a

    .line 18
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 19
    :cond_6a
    throw p1

    :cond_6b
    :goto_6b
    const/4 p5, 0x1

    if-eqz p4, :cond_a8

    if-eq p4, p5, :cond_71

    goto :goto_b8

    .line 20
    :cond_71
    new-instance p4, Landroidx/appcompat/widget/y$h;

    iget-object v3, p0, Landroidx/appcompat/widget/y;->p:Landroid/content/Context;

    invoke-direct {p4, p0, v3, p2, p3}, Landroidx/appcompat/widget/y$h;-><init>(Landroidx/appcompat/widget/y;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    iget-object v3, p0, Landroidx/appcompat/widget/y;->p:Landroid/content/Context;

    sget-object v4, Lf/j;->x2:[I

    invoke-static {v3, p2, v4, p3, v1}, Landroidx/appcompat/widget/w0;->v(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/w0;

    move-result-object v1

    .line 22
    sget v3, Lf/j;->B2:I

    const/4 v4, -0x2

    invoke-virtual {v1, v3, v4}, Landroidx/appcompat/widget/w0;->m(II)I

    move-result v3

    iput v3, p0, Landroidx/appcompat/widget/y;->u:I

    .line 23
    sget v3, Lf/j;->z2:I

    .line 24
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/w0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 25
    invoke-virtual {p4, v3}, Landroidx/appcompat/widget/j0;->b(Landroid/graphics/drawable/Drawable;)V

    .line 26
    sget v3, Lf/j;->A2:I

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/w0;->o(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Landroidx/appcompat/widget/y$h;->k(Ljava/lang/CharSequence;)V

    .line 27
    invoke-virtual {v1}, Landroidx/appcompat/widget/w0;->w()V

    .line 28
    iput-object p4, p0, Landroidx/appcompat/widget/y;->t:Landroidx/appcompat/widget/y$j;

    .line 29
    new-instance v1, Landroidx/appcompat/widget/y$a;

    invoke-direct {v1, p0, p0, p4}, Landroidx/appcompat/widget/y$a;-><init>(Landroidx/appcompat/widget/y;Landroid/view/View;Landroidx/appcompat/widget/y$h;)V

    iput-object v1, p0, Landroidx/appcompat/widget/y;->q:Landroidx/appcompat/widget/i0;

    goto :goto_b8

    .line 30
    :cond_a8
    new-instance p4, Landroidx/appcompat/widget/y$f;

    invoke-direct {p4, p0}, Landroidx/appcompat/widget/y$f;-><init>(Landroidx/appcompat/widget/y;)V

    iput-object p4, p0, Landroidx/appcompat/widget/y;->t:Landroidx/appcompat/widget/y$j;

    .line 31
    sget v1, Lf/j;->A2:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/w0;->o(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v1}, Landroidx/appcompat/widget/y$j;->k(Ljava/lang/CharSequence;)V

    .line 32
    :goto_b8
    sget p4, Lf/j;->y2:I

    invoke-virtual {v0, p4}, Landroidx/appcompat/widget/w0;->q(I)[Ljava/lang/CharSequence;

    move-result-object p4

    if-eqz p4, :cond_d0

    .line 33
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    invoke-direct {v1, p1, v3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 34
    sget p1, Lf/g;->t:I

    invoke-virtual {v1, p1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 35
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/y;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 36
    :cond_d0
    invoke-virtual {v0}, Landroidx/appcompat/widget/w0;->w()V

    .line 37
    iput-boolean p5, p0, Landroidx/appcompat/widget/y;->s:Z

    .line 38
    iget-object p1, p0, Landroidx/appcompat/widget/y;->r:Landroid/widget/SpinnerAdapter;

    if-eqz p1, :cond_de

    .line 39
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/y;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 40
    iput-object v2, p0, Landroidx/appcompat/widget/y;->r:Landroid/widget/SpinnerAdapter;

    .line 41
    :cond_de
    iget-object p1, p0, Landroidx/appcompat/widget/y;->o:Landroidx/appcompat/widget/e;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/e;->e(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .registers 13

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1
    :cond_4
    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 2
    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 3
    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 4
    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v4

    add-int/lit8 v5, v3, 0xf

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int v5, v4, v3

    rsub-int/lit8 v5, v5, 0xf

    sub-int/2addr v3, v5

    .line 5
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v5, 0x0

    move v6, v3

    move-object v7, v5

    const/4 v3, 0x0

    :goto_33
    if-ge v6, v4, :cond_5e

    .line 6
    invoke-interface {p1, v6}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    move-result v8

    if-eq v8, v0, :cond_3d

    move-object v7, v5

    move v0, v8

    .line 7
    :cond_3d
    invoke-interface {p1, v6, v7, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 8
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-nez v8, :cond_50

    .line 9
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v8, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    :cond_50
    invoke-virtual {v7, v1, v2}, Landroid/view/View;->measure(II)V

    .line 11
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_33

    :cond_5e
    if-eqz p2, :cond_6d

    .line 12
    iget-object p1, p0, Landroidx/appcompat/widget/y;->v:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 13
    iget-object p1, p0, Landroidx/appcompat/widget/y;->v:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr p2, p1

    add-int/2addr v3, p2

    :cond_6d
    return v3
.end method

.method b()V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_14

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/y;->t:Landroidx/appcompat/widget/y$j;

    invoke-static {p0}, Landroidx/appcompat/widget/y$d;->b(Landroid/view/View;)I

    move-result v1

    invoke-static {p0}, Landroidx/appcompat/widget/y$d;->a(Landroid/view/View;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroidx/appcompat/widget/y$j;->n(II)V

    goto :goto_1a

    .line 3
    :cond_14
    iget-object v0, p0, Landroidx/appcompat/widget/y;->t:Landroidx/appcompat/widget/y$j;

    const/4 v1, -0x1

    invoke-interface {v0, v1, v1}, Landroidx/appcompat/widget/y$j;->n(II)V

    :goto_1a
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/widget/Spinner;->drawableStateChanged()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/y;->o:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_a

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/widget/e;->b()V

    :cond_a
    return-void
.end method

.method public getDropDownHorizontalOffset()I
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/y;->t:Landroidx/appcompat/widget/y$j;

    if-eqz v0, :cond_9

    .line 2
    invoke-interface {v0}, Landroidx/appcompat/widget/y$j;->c()I

    move-result v0

    return v0

    .line 3
    :cond_9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_14

    .line 4
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownHorizontalOffset()I

    move-result v0

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public getDropDownVerticalOffset()I
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/y;->t:Landroidx/appcompat/widget/y$j;

    if-eqz v0, :cond_9

    .line 2
    invoke-interface {v0}, Landroidx/appcompat/widget/y$j;->o()I

    move-result v0

    return v0

    .line 3
    :cond_9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_14

    .line 4
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownVerticalOffset()I

    move-result v0

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public getDropDownWidth()I
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/y;->t:Landroidx/appcompat/widget/y$j;

    if-eqz v0, :cond_7

    .line 2
    iget v0, p0, Landroidx/appcompat/widget/y;->u:I

    return v0

    .line 3
    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_12

    .line 4
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownWidth()I

    move-result v0

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method final getInternalPopup()Landroidx/appcompat/widget/y$j;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/y;->t:Landroidx/appcompat/widget/y$j;

    return-object v0
.end method

.method public getPopupBackground()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/y;->t:Landroidx/appcompat/widget/y$j;

    if-eqz v0, :cond_9

    .line 2
    invoke-interface {v0}, Landroidx/appcompat/widget/y$j;->i()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 3
    :cond_9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_14

    .line 4
    invoke-super {p0}, Landroid/widget/Spinner;->getPopupBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPopupContext()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/y;->p:Landroid/content/Context;

    return-object v0
.end method

.method public getPrompt()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/y;->t:Landroidx/appcompat/widget/y$j;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Landroidx/appcompat/widget/y$j;->f()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_d

    :cond_9
    invoke-super {p0}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/y;->o:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Landroidx/appcompat/widget/e;->c()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/y;->o:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Landroidx/appcompat/widget/e;->d()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/widget/Spinner;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/y;->t:Landroidx/appcompat/widget/y$j;

    if-eqz v0, :cond_12

    invoke-interface {v0}, Landroidx/appcompat/widget/y$j;->a()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/y;->t:Landroidx/appcompat/widget/y$j;

    invoke-interface {v0}, Landroidx/appcompat/widget/y$j;->dismiss()V

    :cond_12
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/Spinner;->onMeasure(II)V

    .line 2
    iget-object p2, p0, Landroidx/appcompat/widget/y;->t:Landroidx/appcompat/widget/y$j;

    if-eqz p2, :cond_32

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/high16 v0, -0x80000000

    if-ne p2, v0, :cond_32

    .line 3
    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredWidth()I

    move-result p2

    .line 4
    invoke-virtual {p0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/y;->a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 5
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 6
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 7
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 8
    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredHeight()I

    move-result p2

    .line 9
    invoke-virtual {p0, p1, p2}, Landroid/widget/Spinner;->setMeasuredDimension(II)V

    :cond_32
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 1
    check-cast p1, Landroidx/appcompat/widget/y$i;

    .line 2
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/Spinner;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3
    iget-boolean p1, p1, Landroidx/appcompat/widget/y$i;->o:Z

    if-eqz p1, :cond_1b

    .line 4
    invoke-virtual {p0}, Landroid/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 5
    new-instance v0, Landroidx/appcompat/widget/y$b;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/y$b;-><init>(Landroidx/appcompat/widget/y;)V

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1b
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 1
    new-instance v0, Landroidx/appcompat/widget/y$i;

    .line 2
    invoke-super {p0}, Landroid/widget/Spinner;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/y$i;-><init>(Landroid/os/Parcelable;)V

    .line 3
    iget-object v1, p0, Landroidx/appcompat/widget/y;->t:Landroidx/appcompat/widget/y$j;

    if-eqz v1, :cond_15

    invoke-interface {v1}, Landroidx/appcompat/widget/y$j;->a()Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, 0x1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    iput-boolean v1, v0, Landroidx/appcompat/widget/y$i;->o:Z

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/y;->q:Landroidx/appcompat/widget/i0;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p0, p1}, Landroidx/appcompat/widget/i0;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_c
    invoke-super {p0, p1}, Landroid/widget/Spinner;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public performClick()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/y;->t:Landroidx/appcompat/widget/y$j;

    if-eqz v0, :cond_f

    .line 2
    invoke-interface {v0}, Landroidx/appcompat/widget/y$j;->a()Z

    move-result v0

    if-nez v0, :cond_d

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/widget/y;->b()V

    :cond_d
    const/4 v0, 0x1

    return v0

    .line 4
    :cond_f
    invoke-super {p0}, Landroid/widget/Spinner;->performClick()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2

    .line 1
    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/y;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .registers 5

    .line 2
    iget-boolean v0, p0, Landroidx/appcompat/widget/y;->s:Z

    if-nez v0, :cond_7

    .line 3
    iput-object p1, p0, Landroidx/appcompat/widget/y;->r:Landroid/widget/SpinnerAdapter;

    return-void

    .line 4
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/y;->t:Landroidx/appcompat/widget/y$j;

    if-eqz v0, :cond_24

    .line 6
    iget-object v0, p0, Landroidx/appcompat/widget/y;->p:Landroid/content/Context;

    if-nez v0, :cond_16

    invoke-virtual {p0}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 7
    :cond_16
    iget-object v1, p0, Landroidx/appcompat/widget/y;->t:Landroidx/appcompat/widget/y$j;

    new-instance v2, Landroidx/appcompat/widget/y$g;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-direct {v2, p1, v0}, Landroidx/appcompat/widget/y$g;-><init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V

    invoke-interface {v1, v2}, Landroidx/appcompat/widget/y$j;->p(Landroid/widget/ListAdapter;)V

    :cond_24
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/y;->o:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_a

    .line 3
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/e;->f(Landroid/graphics/drawable/Drawable;)V

    :cond_a
    return-void
.end method

.method public setBackgroundResource(I)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setBackgroundResource(I)V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/y;->o:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_a

    .line 3
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/e;->g(I)V

    :cond_a
    return-void
.end method

.method public setDropDownHorizontalOffset(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/y;->t:Landroidx/appcompat/widget/y$j;

    if-eqz v0, :cond_d

    .line 2
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/y$j;->m(I)V

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/y;->t:Landroidx/appcompat/widget/y$j;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/y$j;->e(I)V

    goto :goto_16

    .line 4
    :cond_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_16

    .line 5
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownHorizontalOffset(I)V

    :cond_16
    :goto_16
    return-void
.end method

.method public setDropDownVerticalOffset(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/y;->t:Landroidx/appcompat/widget/y$j;

    if-eqz v0, :cond_8

    .line 2
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/y$j;->l(I)V

    goto :goto_11

    .line 3
    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_11

    .line 4
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownVerticalOffset(I)V

    :cond_11
    :goto_11
    return-void
.end method

.method public setDropDownWidth(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/y;->t:Landroidx/appcompat/widget/y$j;

    if-eqz v0, :cond_7

    .line 2
    iput p1, p0, Landroidx/appcompat/widget/y;->u:I

    goto :goto_10

    .line 3
    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_10

    .line 4
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownWidth(I)V

    :cond_10
    :goto_10
    return-void
.end method

.method public setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/y;->t:Landroidx/appcompat/widget/y$j;

    if-eqz v0, :cond_8

    .line 2
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/y$j;->b(Landroid/graphics/drawable/Drawable;)V

    goto :goto_11

    .line 3
    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_11

    .line 4
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_11
    :goto_11
    return-void
.end method

.method public setPopupBackgroundResource(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/y;->getPopupContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lg/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/y;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPrompt(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/y;->t:Landroidx/appcompat/widget/y$j;

    if-eqz v0, :cond_8

    .line 2
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/y$j;->k(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 3
    :cond_8
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    :goto_b
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/y;->o:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/e;->i(Landroid/content/res/ColorStateList;)V

    :cond_7
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/y;->o:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/e;->j(Landroid/graphics/PorterDuff$Mode;)V

    :cond_7
    return-void
.end method

###### Class androidx.appcompat.widget.y.a (androidx.appcompat.widget.y$a)
.class Landroidx/appcompat/widget/y$a;
.super Landroidx/appcompat/widget/i0;
.source "AppCompatSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/y;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic x:Landroidx/appcompat/widget/y$h;

.field final synthetic y:Landroidx/appcompat/widget/y;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/y;Landroid/view/View;Landroidx/appcompat/widget/y$h;)V
    .registers 4

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/y$a;->y:Landroidx/appcompat/widget/y;

    iput-object p3, p0, Landroidx/appcompat/widget/y$a;->x:Landroidx/appcompat/widget/y$h;

    invoke-direct {p0, p2}, Landroidx/appcompat/widget/i0;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public b()Landroidx/appcompat/view/menu/p;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/y$a;->x:Landroidx/appcompat/widget/y$h;

    return-object v0
.end method

.method public d()Z
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/y$a;->y:Landroidx/appcompat/widget/y;

    invoke-virtual {v0}, Landroidx/appcompat/widget/y;->getInternalPopup()Landroidx/appcompat/widget/y$j;

    move-result-object v0

    invoke-interface {v0}, Landroidx/appcompat/widget/y$j;->a()Z

    move-result v0

    if-nez v0, :cond_11

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/y$a;->y:Landroidx/appcompat/widget/y;

    invoke-virtual {v0}, Landroidx/appcompat/widget/y;->b()V

    :cond_11
    const/4 v0, 0x1

    return v0
.end method

###### Class androidx.appcompat.widget.y.b (androidx.appcompat.widget.y$b)
.class Landroidx/appcompat/widget/y$b;
.super Ljava/lang/Object;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/y;->onRestoreInstanceState(Landroid/os/Parcelable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Landroidx/appcompat/widget/y;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/y;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/y$b;->o:Landroidx/appcompat/widget/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/y$b;->o:Landroidx/appcompat/widget/y;

    invoke-virtual {v0}, Landroidx/appcompat/widget/y;->getInternalPopup()Landroidx/appcompat/widget/y$j;

    move-result-object v0

    invoke-interface {v0}, Landroidx/appcompat/widget/y$j;->a()Z

    move-result v0

    if-nez v0, :cond_11

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/y$b;->o:Landroidx/appcompat/widget/y;

    invoke-virtual {v0}, Landroidx/appcompat/widget/y;->b()V

    .line 3
    :cond_11
    iget-object v0, p0, Landroidx/appcompat/widget/y$b;->o:Landroidx/appcompat/widget/y;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_23

    .line 5
    invoke-static {v0, p0}, Landroidx/appcompat/widget/y$c;->a(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_26

    .line 6
    :cond_23
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_26
    :goto_26
    return-void
.end method

###### Class androidx.appcompat.widget.y.c (androidx.appcompat.widget.y$c)
.class final Landroidx/appcompat/widget/y$c;
.super Ljava/lang/Object;
.source "AppCompatSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# direct methods
.method static a(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

###### Class androidx.appcompat.widget.y.d (androidx.appcompat.widget.y$d)
.class final Landroidx/appcompat/widget/y$d;
.super Ljava/lang/Object;
.source "AppCompatSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# direct methods
.method static a(Landroid/view/View;)I
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getTextAlignment()I

    move-result p0

    return p0
.end method

.method static b(Landroid/view/View;)I
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getTextDirection()I

    move-result p0

    return p0
.end method

.method static c(Landroid/view/View;I)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setTextAlignment(I)V

    return-void
.end method

.method static d(Landroid/view/View;I)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setTextDirection(I)V

    return-void
.end method

###### Class androidx.appcompat.widget.y.e (androidx.appcompat.widget.y$e)
.class final Landroidx/appcompat/widget/y$e;
.super Ljava/lang/Object;
.source "AppCompatSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# direct methods
.method static a(Landroid/widget/ThemedSpinnerAdapter;Landroid/content/res/Resources$Theme;)V
    .registers 3

    .line 1
    invoke-interface {p0}, Landroid/widget/ThemedSpinnerAdapter;->getDropDownViewTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/util/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 2
    invoke-interface {p0, p1}, Landroid/widget/ThemedSpinnerAdapter;->setDropDownViewTheme(Landroid/content/res/Resources$Theme;)V

    :cond_d
    return-void
.end method

###### Class androidx.appcompat.widget.y.f (androidx.appcompat.widget.y$f)
.class Landroidx/appcompat/widget/y$f;
.super Ljava/lang/Object;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroidx/appcompat/widget/y$j;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field o:Landroidx/appcompat/app/b;

.field private p:Landroid/widget/ListAdapter;

.field private q:Ljava/lang/CharSequence;

.field final synthetic r:Landroidx/appcompat/widget/y;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/y;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/y$f;->r:Landroidx/appcompat/widget/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/y$f;->o:Landroidx/appcompat/app/b;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    const-string p1, "AppCompatSpinner"

    const-string v0, "Cannot set popup background for MODE_DIALOG, ignoring"

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public c()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public dismiss()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/y$f;->o:Landroidx/appcompat/app/b;

    if-eqz v0, :cond_a

    .line 2
    invoke-virtual {v0}, Landroidx/appcompat/app/j;->dismiss()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroidx/appcompat/widget/y$f;->o:Landroidx/appcompat/app/b;

    :cond_a
    return-void
.end method

.method public e(I)V
    .registers 3

    const-string p1, "AppCompatSpinner"

    const-string v0, "Cannot set horizontal offset for MODE_DIALOG, ignoring"

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public f()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/y$f;->q:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public i()Landroid/graphics/drawable/Drawable;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public k(Ljava/lang/CharSequence;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/y$f;->q:Ljava/lang/CharSequence;

    return-void
.end method

.method public l(I)V
    .registers 3

    const-string p1, "AppCompatSpinner"

    const-string v0, "Cannot set vertical offset for MODE_DIALOG, ignoring"

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public m(I)V
    .registers 3

    const-string p1, "AppCompatSpinner"

    const-string v0, "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring"

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public n(II)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/y$f;->p:Landroid/widget/ListAdapter;

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    new-instance v0, Landroidx/appcompat/app/b$a;

    iget-object v1, p0, Landroidx/appcompat/widget/y$f;->r:Landroidx/appcompat/widget/y;

    invoke-virtual {v1}, Landroidx/appcompat/widget/y;->getPopupContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/b$a;-><init>(Landroid/content/Context;)V

    .line 3
    iget-object v1, p0, Landroidx/appcompat/widget/y$f;->q:Ljava/lang/CharSequence;

    if-eqz v1, :cond_17

    .line 4
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/b$a;->h(Ljava/lang/CharSequence;)Landroidx/appcompat/app/b$a;

    .line 5
    :cond_17
    iget-object v1, p0, Landroidx/appcompat/widget/y$f;->p:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroidx/appcompat/widget/y$f;->r:Landroidx/appcompat/widget/y;

    .line 6
    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    .line 7
    invoke-virtual {v0, v1, v2, p0}, Landroidx/appcompat/app/b$a;->g(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroidx/appcompat/app/b$a;->a()Landroidx/appcompat/app/b;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/y$f;->o:Landroidx/appcompat/app/b;

    .line 9
    invoke-virtual {v0}, Landroidx/appcompat/app/b;->i()Landroid/widget/ListView;

    move-result-object v0

    .line 10
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_39

    .line 11
    invoke-static {v0, p1}, Landroidx/appcompat/widget/y$d;->d(Landroid/view/View;I)V

    .line 12
    invoke-static {v0, p2}, Landroidx/appcompat/widget/y$d;->c(Landroid/view/View;I)V

    .line 13
    :cond_39
    iget-object p1, p0, Landroidx/appcompat/widget/y$f;->o:Landroidx/appcompat/app/b;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public o()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    .line 1
    iget-object p1, p0, Landroidx/appcompat/widget/y$f;->r:Landroidx/appcompat/widget/y;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/y$f;->r:Landroidx/appcompat/widget/y;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 3
    iget-object p1, p0, Landroidx/appcompat/widget/y$f;->r:Landroidx/appcompat/widget/y;

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/appcompat/widget/y$f;->p:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/widget/Spinner;->performItemClick(Landroid/view/View;IJ)Z

    .line 4
    :cond_19
    invoke-virtual {p0}, Landroidx/appcompat/widget/y$f;->dismiss()V

    return-void
.end method

.method public p(Landroid/widget/ListAdapter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/y$f;->p:Landroid/widget/ListAdapter;

    return-void
.end method

###### Class androidx.appcompat.widget.y.g (androidx.appcompat.widget.y$g)
.class Landroidx/appcompat/widget/y$g;
.super Ljava/lang/Object;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroid/widget/ListAdapter;
.implements Landroid/widget/SpinnerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation


# instance fields
.field private o:Landroid/widget/SpinnerAdapter;

.field private p:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/appcompat/widget/y$g;->o:Landroid/widget/SpinnerAdapter;

    .line 3
    instance-of v0, p1, Landroid/widget/ListAdapter;

    if-eqz v0, :cond_e

    .line 4
    move-object v0, p1

    check-cast v0, Landroid/widget/ListAdapter;

    iput-object v0, p0, Landroidx/appcompat/widget/y$g;->p:Landroid/widget/ListAdapter;

    :cond_e
    if-eqz p2, :cond_2f

    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_20

    instance-of v0, p1, Landroid/widget/ThemedSpinnerAdapter;

    if-eqz v0, :cond_20

    .line 6
    check-cast p1, Landroid/widget/ThemedSpinnerAdapter;

    .line 7
    invoke-static {p1, p2}, Landroidx/appcompat/widget/y$e;->a(Landroid/widget/ThemedSpinnerAdapter;Landroid/content/res/Resources$Theme;)V

    goto :goto_2f

    .line 8
    :cond_20
    instance-of v0, p1, Landroidx/appcompat/widget/s0;

    if-eqz v0, :cond_2f

    .line 9
    check-cast p1, Landroidx/appcompat/widget/s0;

    .line 10
    invoke-interface {p1}, Landroidx/appcompat/widget/s0;->getDropDownViewTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-nez v0, :cond_2f

    .line 11
    invoke-interface {p1, p2}, Landroidx/appcompat/widget/s0;->setDropDownViewTheme(Landroid/content/res/Resources$Theme;)V

    :cond_2f
    :goto_2f
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/y$g;->p:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_9

    .line 2
    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/y$g;->o:Landroid/widget/SpinnerAdapter;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    :goto_a
    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/y$g;->o:Landroid/widget/SpinnerAdapter;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    goto :goto_a

    .line 2
    :cond_6
    invoke-interface {v0, p1, p2, p3}, Landroid/widget/SpinnerAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    :goto_a
    return-object p1
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/y$g;->o:Landroid/widget/SpinnerAdapter;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    :goto_a
    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/y$g;->o:Landroid/widget/SpinnerAdapter;

    if-nez v0, :cond_7

    const-wide/16 v0, -0x1

    goto :goto_b

    :cond_7
    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v0

    :goto_b
    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/widget/y$g;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getViewTypeCount()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/y$g;->o:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/y$g;->getCount()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isEnabled(I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/y$g;->p:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_9

    .line 2
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p1

    return p1

    :cond_9
    const/4 p1, 0x1

    return p1
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/y$g;->o:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_7
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/y$g;->o:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_7
    return-void
.end method

###### Class androidx.appcompat.widget.y.h (androidx.appcompat.widget.y$h)
.class Landroidx/appcompat/widget/y$h;
.super Landroidx/appcompat/widget/j0;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroidx/appcompat/widget/y$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "h"
.end annotation


# instance fields
.field private X:Ljava/lang/CharSequence;

.field Y:Landroid/widget/ListAdapter;

.field private final Z:Landroid/graphics/Rect;

.field private a0:I

.field final synthetic b0:Landroidx/appcompat/widget/y;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/y;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/y$h;->b0:Landroidx/appcompat/widget/y;

    .line 2
    invoke-direct {p0, p2, p3, p4}, Landroidx/appcompat/widget/j0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/widget/y$h;->Z:Landroid/graphics/Rect;

    .line 4
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/j0;->D(Landroid/view/View;)V

    const/4 p2, 0x1

    .line 5
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/j0;->J(Z)V

    const/4 p2, 0x0

    .line 6
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/j0;->O(I)V

    .line 7
    new-instance p2, Landroidx/appcompat/widget/y$h$a;

    invoke-direct {p2, p0, p1}, Landroidx/appcompat/widget/y$h$a;-><init>(Landroidx/appcompat/widget/y$h;Landroidx/appcompat/widget/y;)V

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/j0;->L(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic R(Landroidx/appcompat/widget/y$h;)V
    .registers 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/widget/j0;->h()V

    return-void
.end method


# virtual methods
.method S()V
    .registers 9

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/j0;->i()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    .line 2
    iget-object v1, p0, Landroidx/appcompat/widget/y$h;->b0:Landroidx/appcompat/widget/y;

    iget-object v1, v1, Landroidx/appcompat/widget/y;->v:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/y$h;->b0:Landroidx/appcompat/widget/y;

    invoke-static {v0}, Landroidx/appcompat/widget/f1;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroidx/appcompat/widget/y$h;->b0:Landroidx/appcompat/widget/y;

    iget-object v0, v0, Landroidx/appcompat/widget/y;->v:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    goto :goto_24

    .line 4
    :cond_1d
    iget-object v0, p0, Landroidx/appcompat/widget/y$h;->b0:Landroidx/appcompat/widget/y;

    iget-object v0, v0, Landroidx/appcompat/widget/y;->v:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    :goto_24
    move v1, v0

    goto :goto_2e

    .line 5
    :cond_26
    iget-object v0, p0, Landroidx/appcompat/widget/y$h;->b0:Landroidx/appcompat/widget/y;

    iget-object v0, v0, Landroidx/appcompat/widget/y;->v:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 6
    :goto_2e
    iget-object v0, p0, Landroidx/appcompat/widget/y$h;->b0:Landroidx/appcompat/widget/y;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getPaddingLeft()I

    move-result v0

    .line 7
    iget-object v2, p0, Landroidx/appcompat/widget/y$h;->b0:Landroidx/appcompat/widget/y;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getPaddingRight()I

    move-result v2

    .line 8
    iget-object v3, p0, Landroidx/appcompat/widget/y$h;->b0:Landroidx/appcompat/widget/y;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getWidth()I

    move-result v3

    .line 9
    iget-object v4, p0, Landroidx/appcompat/widget/y$h;->b0:Landroidx/appcompat/widget/y;

    iget v5, v4, Landroidx/appcompat/widget/y;->u:I

    const/4 v6, -0x2

    if-ne v5, v6, :cond_7b

    .line 10
    iget-object v5, p0, Landroidx/appcompat/widget/y$h;->Y:Landroid/widget/ListAdapter;

    check-cast v5, Landroid/widget/SpinnerAdapter;

    .line 11
    invoke-virtual {p0}, Landroidx/appcompat/widget/j0;->i()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 12
    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/widget/y;->a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v4

    .line 13
    iget-object v5, p0, Landroidx/appcompat/widget/y$h;->b0:Landroidx/appcompat/widget/y;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 14
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v6, p0, Landroidx/appcompat/widget/y$h;->b0:Landroidx/appcompat/widget/y;

    iget-object v6, v6, Landroidx/appcompat/widget/y;->v:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v7

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_70

    move v4, v5

    :cond_70
    sub-int v5, v3, v0

    sub-int/2addr v5, v2

    .line 15
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroidx/appcompat/widget/j0;->F(I)V

    goto :goto_88

    :cond_7b
    const/4 v4, -0x1

    if-ne v5, v4, :cond_85

    sub-int v4, v3, v0

    sub-int/2addr v4, v2

    .line 16
    invoke-virtual {p0, v4}, Landroidx/appcompat/widget/j0;->F(I)V

    goto :goto_88

    .line 17
    :cond_85
    invoke-virtual {p0, v5}, Landroidx/appcompat/widget/j0;->F(I)V

    .line 18
    :goto_88
    iget-object v4, p0, Landroidx/appcompat/widget/y$h;->b0:Landroidx/appcompat/widget/y;

    invoke-static {v4}, Landroidx/appcompat/widget/f1;->b(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_9d

    sub-int/2addr v3, v2

    .line 19
    invoke-virtual {p0}, Landroidx/appcompat/widget/j0;->z()I

    move-result v0

    sub-int/2addr v3, v0

    .line 20
    invoke-virtual {p0}, Landroidx/appcompat/widget/y$h;->T()I

    move-result v0

    sub-int/2addr v3, v0

    add-int/2addr v1, v3

    goto :goto_a3

    .line 21
    :cond_9d
    invoke-virtual {p0}, Landroidx/appcompat/widget/y$h;->T()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    .line 22
    :goto_a3
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/j0;->e(I)V

    return-void
.end method

.method public T()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/y$h;->a0:I

    return v0
.end method

.method U(Landroid/view/View;)Z
    .registers 3

    .line 1
    invoke-static {p1}, Landroidx/core/view/a0;->T(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroidx/appcompat/widget/y$h;->Z:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method public f()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/y$h;->X:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public k(Ljava/lang/CharSequence;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/y$h;->X:Ljava/lang/CharSequence;

    return-void
.end method

.method public m(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/y$h;->a0:I

    return-void
.end method

.method public n(II)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/j0;->a()Z

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/y$h;->S()V

    const/4 v1, 0x2

    .line 3
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/j0;->I(I)V

    .line 4
    invoke-super {p0}, Landroidx/appcompat/widget/j0;->h()V

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/widget/j0;->j()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    .line 6
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 7
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_22

    .line 8
    invoke-static {v1, p1}, Landroidx/appcompat/widget/y$d;->d(Landroid/view/View;I)V

    .line 9
    invoke-static {v1, p2}, Landroidx/appcompat/widget/y$d;->c(Landroid/view/View;I)V

    .line 10
    :cond_22
    iget-object p1, p0, Landroidx/appcompat/widget/y$h;->b0:Landroidx/appcompat/widget/y;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/j0;->P(I)V

    if-eqz v0, :cond_2e

    return-void

    .line 11
    :cond_2e
    iget-object p1, p0, Landroidx/appcompat/widget/y$h;->b0:Landroidx/appcompat/widget/y;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eqz p1, :cond_46

    .line 12
    new-instance p2, Landroidx/appcompat/widget/y$h$b;

    invoke-direct {p2, p0}, Landroidx/appcompat/widget/y$h$b;-><init>(Landroidx/appcompat/widget/y$h;)V

    .line 13
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 14
    new-instance p1, Landroidx/appcompat/widget/y$h$c;

    invoke-direct {p1, p0, p2}, Landroidx/appcompat/widget/y$h$c;-><init>(Landroidx/appcompat/widget/y$h;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/j0;->K(Landroid/widget/PopupWindow$OnDismissListener;)V

    :cond_46
    return-void
.end method

.method public p(Landroid/widget/ListAdapter;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/j0;->p(Landroid/widget/ListAdapter;)V

    .line 2
    iput-object p1, p0, Landroidx/appcompat/widget/y$h;->Y:Landroid/widget/ListAdapter;

    return-void
.end method

###### Class androidx.appcompat.widget.y.h.a (androidx.appcompat.widget.y$h$a)
.class Landroidx/appcompat/widget/y$h$a;
.super Ljava/lang/Object;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/y$h;-><init>(Landroidx/appcompat/widget/y;Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Landroidx/appcompat/widget/y;

.field final synthetic p:Landroidx/appcompat/widget/y$h;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/y$h;Landroidx/appcompat/widget/y;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/y$h$a;->p:Landroidx/appcompat/widget/y$h;

    iput-object p2, p0, Landroidx/appcompat/widget/y$h$a;->o:Landroidx/appcompat/widget/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Landroidx/appcompat/widget/y$h$a;->p:Landroidx/appcompat/widget/y$h;

    iget-object p1, p1, Landroidx/appcompat/widget/y$h;->b0:Landroidx/appcompat/widget/y;

    invoke-virtual {p1, p3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/y$h$a;->p:Landroidx/appcompat/widget/y$h;

    iget-object p1, p1, Landroidx/appcompat/widget/y$h;->b0:Landroidx/appcompat/widget/y;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 3
    iget-object p1, p0, Landroidx/appcompat/widget/y$h$a;->p:Landroidx/appcompat/widget/y$h;

    iget-object p4, p1, Landroidx/appcompat/widget/y$h;->b0:Landroidx/appcompat/widget/y;

    iget-object p1, p1, Landroidx/appcompat/widget/y$h;->Y:Landroid/widget/ListAdapter;

    .line 4
    invoke-interface {p1, p3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    invoke-virtual {p4, p2, p3, v0, v1}, Landroid/widget/Spinner;->performItemClick(Landroid/view/View;IJ)Z

    .line 5
    :cond_1e
    iget-object p1, p0, Landroidx/appcompat/widget/y$h$a;->p:Landroidx/appcompat/widget/y$h;

    invoke-virtual {p1}, Landroidx/appcompat/widget/j0;->dismiss()V

    return-void
.end method

###### Class androidx.appcompat.widget.y.h.b (androidx.appcompat.widget.y$h$b)
.class Landroidx/appcompat/widget/y$h$b;
.super Ljava/lang/Object;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/y$h;->n(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Landroidx/appcompat/widget/y$h;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/y$h;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/y$h$b;->o:Landroidx/appcompat/widget/y$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/y$h$b;->o:Landroidx/appcompat/widget/y$h;

    iget-object v1, v0, Landroidx/appcompat/widget/y$h;->b0:Landroidx/appcompat/widget/y;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/y$h;->U(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/y$h$b;->o:Landroidx/appcompat/widget/y$h;

    invoke-virtual {v0}, Landroidx/appcompat/widget/j0;->dismiss()V

    goto :goto_1a

    .line 3
    :cond_10
    iget-object v0, p0, Landroidx/appcompat/widget/y$h$b;->o:Landroidx/appcompat/widget/y$h;

    invoke-virtual {v0}, Landroidx/appcompat/widget/y$h;->S()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/y$h$b;->o:Landroidx/appcompat/widget/y$h;

    invoke-static {v0}, Landroidx/appcompat/widget/y$h;->R(Landroidx/appcompat/widget/y$h;)V

    :goto_1a
    return-void
.end method

###### Class androidx.appcompat.widget.y.h.c (androidx.appcompat.widget.y$h$c)
.class Landroidx/appcompat/widget/y$h$c;
.super Ljava/lang/Object;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/y$h;->n(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field final synthetic p:Landroidx/appcompat/widget/y$h;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/y$h;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/y$h$c;->p:Landroidx/appcompat/widget/y$h;

    iput-object p2, p0, Landroidx/appcompat/widget/y$h$c;->o:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/y$h$c;->p:Landroidx/appcompat/widget/y$h;

    iget-object v0, v0, Landroidx/appcompat/widget/y$h;->b0:Landroidx/appcompat/widget/y;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 2
    iget-object v1, p0, Landroidx/appcompat/widget/y$h$c;->o:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_f
    return-void
.end method

###### Class androidx.appcompat.widget.y.i (androidx.appcompat.widget.y$i)
.class Landroidx/appcompat/widget/y$i;
.super Landroid/view/View$BaseSavedState;
.source "AppCompatSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "i"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/appcompat/widget/y$i;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field o:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroidx/appcompat/widget/y$i$a;

    invoke-direct {v0}, Landroidx/appcompat/widget/y$i$a;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/y$i;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    iput-boolean p1, p0, Landroidx/appcompat/widget/y$i;->o:Z

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget-boolean p2, p0, Landroidx/appcompat/widget/y$i;->o:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method

###### Class androidx.appcompat.widget.y.i.a (androidx.appcompat.widget.y$i$a)
.class Landroidx/appcompat/widget/y$i$a;
.super Ljava/lang/Object;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/y$i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroidx/appcompat/widget/y$i;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Landroidx/appcompat/widget/y$i;
    .registers 3

    .line 1
    new-instance v0, Landroidx/appcompat/widget/y$i;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/y$i;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public b(I)[Landroidx/appcompat/widget/y$i;
    .registers 2

    .line 1
    new-array p1, p1, [Landroidx/appcompat/widget/y$i;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/y$i$a;->a(Landroid/os/Parcel;)Landroidx/appcompat/widget/y$i;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/y$i$a;->b(I)[Landroidx/appcompat/widget/y$i;

    move-result-object p1

    return-object p1
.end method

###### Class androidx.appcompat.widget.y.j (androidx.appcompat.widget.y$j)
.class interface abstract Landroidx/appcompat/widget/y$j;
.super Ljava/lang/Object;
.source "AppCompatSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "j"
.end annotation


# virtual methods
.method public abstract a()Z
.end method

.method public abstract b(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract c()I
.end method

.method public abstract dismiss()V
.end method

.method public abstract e(I)V
.end method

.method public abstract f()Ljava/lang/CharSequence;
.end method

.method public abstract i()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract k(Ljava/lang/CharSequence;)V
.end method

.method public abstract l(I)V
.end method

.method public abstract m(I)V
.end method

.method public abstract n(II)V
.end method

.method public abstract o()I
.end method

.method public abstract p(Landroid/widget/ListAdapter;)V
.end method
