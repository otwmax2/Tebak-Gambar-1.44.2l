###### Class com.tebakgambar.component.CustomButton (com.tebakgambar.component.CustomButton)
.class public Lcom/tebakgambar/component/CustomButton;
.super Landroidx/appcompat/widget/AppCompatButton;
.source "CustomButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tebakgambar/component/CustomButton$b;
    }
.end annotation


# instance fields
.field private A:Ljava/lang/Integer;

.field private B:Landroid/graphics/Paint$Join;

.field private C:F

.field private D:[I

.field private E:Z

.field private r:Landroid/view/View$OnClickListener;

.field private s:Landroid/view/View$OnClickListener;

.field private t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tebakgambar/component/CustomButton$b;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tebakgambar/component/CustomButton$b;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private w:Landroid/graphics/Canvas;

.field private x:Landroid/graphics/Bitmap;

.field private y:Landroid/graphics/drawable/Drawable;

.field private z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Lcom/tebakgambar/component/CustomButton$a;

    invoke-direct {p1, p0}, Lcom/tebakgambar/component/CustomButton$a;-><init>(Lcom/tebakgambar/component/CustomButton;)V

    iput-object p1, p0, Lcom/tebakgambar/component/CustomButton;->s:Landroid/view/View$OnClickListener;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/tebakgambar/component/CustomButton;->E:Z

    .line 4
    invoke-virtual {p0, p2}, Lcom/tebakgambar/component/CustomButton;->g(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/tebakgambar/component/CustomButton;)Landroid/view/View$OnClickListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tebakgambar/component/CustomButton;->r:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method private f()V
    .registers 6

    :try_start_0
    const-string v0, "%dx%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1
    invoke-virtual {p0}, Landroid/widget/Button;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/widget/Button;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/tebakgambar/component/CustomButton;->v:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    if-eqz v1, :cond_36

    .line 3
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Canvas;

    iput-object v0, p0, Lcom/tebakgambar/component/CustomButton;->w:Landroid/graphics/Canvas;

    .line 4
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/tebakgambar/component/CustomButton;->x:Landroid/graphics/Bitmap;

    goto :goto_65

    .line 5
    :cond_36
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    iput-object v1, p0, Lcom/tebakgambar/component/CustomButton;->w:Landroid/graphics/Canvas;

    .line 6
    invoke-virtual {p0}, Landroid/widget/Button;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/Button;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/tebakgambar/component/CustomButton;->x:Landroid/graphics/Bitmap;

    .line 7
    iget-object v2, p0, Lcom/tebakgambar/component/CustomButton;->w:Landroid/graphics/Canvas;

    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 8
    iget-object v1, p0, Lcom/tebakgambar/component/CustomButton;->v:Ljava/util/WeakHashMap;

    new-instance v2, Landroid/util/Pair;

    iget-object v3, p0, Lcom/tebakgambar/component/CustomButton;->w:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/tebakgambar/component/CustomButton;->x:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_60} :catch_61

    goto :goto_65

    :catch_61
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_65
    return-void
.end method


# virtual methods
.method public b(FFFI)V
    .registers 7

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_8

    const p1, 0x38d1b717    # 1.0E-4f

    .line 1
    :cond_8
    iget-object v0, p0, Lcom/tebakgambar/component/CustomButton;->u:Ljava/util/ArrayList;

    new-instance v1, Lcom/tebakgambar/component/CustomButton$b;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/tebakgambar/component/CustomButton$b;-><init>(FFFI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(FFFI)V
    .registers 7

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_8

    const p1, 0x38d1b717    # 1.0E-4f

    .line 1
    :cond_8
    iget-object v0, p0, Lcom/tebakgambar/component/CustomButton;->t:Ljava/util/ArrayList;

    new-instance v1, Lcom/tebakgambar/component/CustomButton$b;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/tebakgambar/component/CustomButton$b;-><init>(FFFI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public d(II)V
    .registers 6

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    const-string p1, "textColor"

    .line 1
    invoke-static {p0, p1, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 2
    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xc8

    .line 3
    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 p2, -0x1

    .line 4
    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 5
    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 6
    new-instance p2, Landroid/animation/ArgbEvaluator;

    invoke-direct {p2}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 7
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 8
    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 9
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public e()V
    .registers 5

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 1
    invoke-virtual {p0}, Lcom/tebakgambar/component/CustomButton;->getCompoundPaddingLeft()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 2
    invoke-virtual {p0}, Lcom/tebakgambar/component/CustomButton;->getCompoundPaddingRight()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-virtual {p0}, Lcom/tebakgambar/component/CustomButton;->getCompoundPaddingTop()I

    move-result v1

    const/4 v3, 0x2

    aput v1, v0, v3

    .line 3
    invoke-virtual {p0}, Lcom/tebakgambar/component/CustomButton;->getCompoundPaddingBottom()I

    move-result v1

    const/4 v3, 0x3

    aput v1, v0, v3

    iput-object v0, p0, Lcom/tebakgambar/component/CustomButton;->D:[I

    .line 4
    iput-boolean v2, p0, Lcom/tebakgambar/component/CustomButton;->E:Z

    return-void
.end method

.method public g(Landroid/util/AttributeSet;)V
    .registers 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tebakgambar/component/CustomButton;->t:Ljava/util/ArrayList;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tebakgambar/component/CustomButton;->u:Ljava/util/ArrayList;

    .line 3
    iget-object v0, p0, Lcom/tebakgambar/component/CustomButton;->v:Ljava/util/WeakHashMap;

    if-nez v0, :cond_19

    .line 4
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/tebakgambar/component/CustomButton;->v:Ljava/util/WeakHashMap;

    :cond_19
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setSoundEffectsEnabled(Z)V

    if-eqz p1, :cond_ed

    .line 6
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lg8/u;->X:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 v1, 0xe

    .line 7
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4b

    .line 8
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v1, v4, v0

    const-string v1, "fonts/%s.ttf"

    .line 9
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-static {v3, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 11
    invoke-virtual {p0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 12
    :cond_4b
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    const/high16 v3, -0x1000000

    if-eqz v1, :cond_64

    .line 13
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_5d

    .line 14
    invoke-virtual {p0, v1}, Lcom/tebakgambar/component/CustomButton;->setForegroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_64

    .line 15
    :cond_5d
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 16
    :cond_64
    :goto_64
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 17
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_74

    .line 18
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7b

    .line 19
    :cond_74
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    :cond_7b
    :goto_7b
    const/4 v1, 0x2

    .line 20
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_99

    const/4 v4, 0x5

    .line 21
    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    const/4 v6, 0x3

    .line 22
    invoke-virtual {p1, v6, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    const/4 v7, 0x4

    .line 23
    invoke-virtual {p1, v7, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    .line 24
    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    .line 25
    invoke-virtual {p0, v4, v6, v7, v8}, Lcom/tebakgambar/component/CustomButton;->b(FFFI)V

    :cond_99
    const/4 v4, 0x6

    .line 26
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_b8

    const/16 v6, 0x9

    .line 27
    invoke-virtual {p1, v6, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    const/4 v7, 0x7

    .line 28
    invoke-virtual {p1, v7, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    const/16 v8, 0x8

    .line 29
    invoke-virtual {p1, v8, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    .line 30
    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 31
    invoke-virtual {p0, v6, v7, v5, v4}, Lcom/tebakgambar/component/CustomButton;->c(FFFI)V

    :cond_b8
    const/16 v4, 0xa

    .line 32
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_ed

    const/16 v5, 0xd

    const/high16 v6, 0x3f800000    # 1.0f

    .line 33
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    .line 34
    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    const/16 v4, 0xc

    const/high16 v6, 0x41200000    # 10.0f

    .line 35
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    const/4 v6, 0x0

    const/16 v7, 0xb

    .line 36
    invoke-virtual {p1, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    if-eqz p1, :cond_e8

    if-eq p1, v2, :cond_e5

    if-eq p1, v1, :cond_e2

    goto :goto_ea

    .line 37
    :cond_e2
    sget-object v6, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    goto :goto_ea

    .line 38
    :cond_e5
    sget-object v6, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    goto :goto_ea

    .line 39
    :cond_e8
    sget-object v6, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    .line 40
    :goto_ea
    invoke-virtual {p0, v5, v3, v6, v4}, Lcom/tebakgambar/component/CustomButton;->h(FILandroid/graphics/Paint$Join;F)V

    :cond_ed
    return-void
.end method

.method public getCompoundPaddingBottom()I
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/tebakgambar/component/CustomButton;->E:Z

    if-nez v0, :cond_9

    invoke-super {p0}, Landroid/widget/Button;->getCompoundPaddingBottom()I

    move-result v0

    goto :goto_e

    .line 2
    :cond_9
    iget-object v0, p0, Lcom/tebakgambar/component/CustomButton;->D:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    :goto_e
    return v0
.end method

.method public getCompoundPaddingLeft()I
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/tebakgambar/component/CustomButton;->E:Z

    if-nez v0, :cond_9

    invoke-super {p0}, Landroid/widget/Button;->getCompoundPaddingLeft()I

    move-result v0

    goto :goto_e

    .line 2
    :cond_9
    iget-object v0, p0, Lcom/tebakgambar/component/CustomButton;->D:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    :goto_e
    return v0
.end method

.method public getCompoundPaddingRight()I
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/tebakgambar/component/CustomButton;->E:Z

    if-nez v0, :cond_9

    invoke-super {p0}, Landroid/widget/Button;->getCompoundPaddingRight()I

    move-result v0

    goto :goto_e

    .line 2
    :cond_9
    iget-object v0, p0, Lcom/tebakgambar/component/CustomButton;->D:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    :goto_e
    return v0
.end method

.method public getCompoundPaddingTop()I
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/tebakgambar/component/CustomButton;->E:Z

    if-nez v0, :cond_9

    invoke-super {p0}, Landroid/widget/Button;->getCompoundPaddingTop()I

    move-result v0

    goto :goto_e

    .line 2
    :cond_9
    iget-object v0, p0, Lcom/tebakgambar/component/CustomButton;->D:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    :goto_e
    return v0
.end method

.method public getForeground()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/component/CustomButton;->y:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    goto :goto_e

    .line 2
    :cond_5
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/widget/Button;->getCurrentTextColor()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :goto_e
    return-object v0
.end method

.method public h(FILandroid/graphics/Paint$Join;F)V
    .registers 5

    .line 1
    iput p1, p0, Lcom/tebakgambar/component/CustomButton;->z:F

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/tebakgambar/component/CustomButton;->A:Ljava/lang/Integer;

    .line 3
    iput-object p3, p0, Lcom/tebakgambar/component/CustomButton;->B:Landroid/graphics/Paint$Join;

    .line 4
    iput p4, p0, Lcom/tebakgambar/component/CustomButton;->C:F

    return-void
.end method

.method public i()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/tebakgambar/component/CustomButton;->E:Z

    return-void
.end method

.method public invalidate()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/tebakgambar/component/CustomButton;->E:Z

    if-nez v0, :cond_7

    .line 2
    invoke-super {p0}, Landroid/widget/Button;->invalidate()V

    :cond_7
    return-void
.end method

.method public invalidate(IIII)V
    .registers 6

    .line 5
    iget-boolean v0, p0, Lcom/tebakgambar/component/CustomButton;->E:Z

    if-nez v0, :cond_7

    .line 6
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Button;->invalidate(IIII)V

    :cond_7
    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .registers 3

    .line 3
    iget-boolean v0, p0, Lcom/tebakgambar/component/CustomButton;->E:Z

    if-nez v0, :cond_7

    .line 4
    invoke-super {p0, p1}, Landroid/widget/Button;->invalidate(Landroid/graphics/Rect;)V

    :cond_7
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 14

    .line 1
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0}, Lcom/tebakgambar/component/CustomButton;->e()V

    .line 3
    invoke-virtual {p0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Landroid/widget/Button;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Landroid/widget/Button;->getCurrentTextColor()I

    move-result v2

    const/4 v3, 0x0

    .line 6
    invoke-virtual {p0, v3, v3, v3, v3}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget-object v4, p0, Lcom/tebakgambar/component/CustomButton;->t:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_37

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tebakgambar/component/CustomButton$b;

    .line 8
    iget v6, v5, Lcom/tebakgambar/component/CustomButton$b;->a:F

    iget v7, v5, Lcom/tebakgambar/component/CustomButton$b;->b:F

    iget v8, v5, Lcom/tebakgambar/component/CustomButton$b;->c:F

    iget v5, v5, Lcom/tebakgambar/component/CustomButton$b;->d:I

    invoke-virtual {p0, v6, v7, v8, v5}, Landroid/widget/Button;->setShadowLayer(FFFI)V

    .line 9
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_1c

    :cond_37
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 10
    invoke-virtual {p0, v4, v4, v4, v5}, Landroid/widget/Button;->setShadowLayer(FFFI)V

    .line 11
    invoke-virtual {p0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 12
    iget-object v6, p0, Lcom/tebakgambar/component/CustomButton;->y:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_7d

    instance-of v6, v6, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_7d

    .line 13
    invoke-direct {p0}, Lcom/tebakgambar/component/CustomButton;->f()V

    .line 14
    iget-object v6, p0, Lcom/tebakgambar/component/CustomButton;->w:Landroid/graphics/Canvas;

    invoke-super {p0, v6}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 15
    iget-object v6, p0, Lcom/tebakgambar/component/CustomButton;->y:Landroid/graphics/drawable/Drawable;

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    .line 16
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 17
    iget-object v6, p0, Lcom/tebakgambar/component/CustomButton;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 18
    iget-object v6, p0, Lcom/tebakgambar/component/CustomButton;->y:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/tebakgambar/component/CustomButton;->w:Landroid/graphics/Canvas;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 19
    iget-object v6, p0, Lcom/tebakgambar/component/CustomButton;->x:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v6, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 20
    iget-object v6, p0, Lcom/tebakgambar/component/CustomButton;->w:Landroid/graphics/Canvas;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v5, v7}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 21
    :cond_7d
    iget-object v6, p0, Lcom/tebakgambar/component/CustomButton;->A:Ljava/lang/Integer;

    if-eqz v6, :cond_ad

    .line 22
    invoke-virtual {p0}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    .line 23
    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 24
    iget-object v7, p0, Lcom/tebakgambar/component/CustomButton;->B:Landroid/graphics/Paint$Join;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 25
    iget v7, p0, Lcom/tebakgambar/component/CustomButton;->C:F

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setStrokeMiter(F)V

    .line 26
    iget-object v7, p0, Lcom/tebakgambar/component/CustomButton;->A:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/widget/Button;->setTextColor(I)V

    .line 27
    iget v7, p0, Lcom/tebakgambar/component/CustomButton;->z:F

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 28
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 29
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 30
    invoke-virtual {p0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 31
    :cond_ad
    iget-object v6, p0, Lcom/tebakgambar/component/CustomButton;->u:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_124

    .line 32
    invoke-direct {p0}, Lcom/tebakgambar/component/CustomButton;->f()V

    .line 33
    invoke-virtual {p0}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    .line 34
    iget-object v7, p0, Lcom/tebakgambar/component/CustomButton;->u:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_c2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_124

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tebakgambar/component/CustomButton$b;

    .line 35
    iget v9, v8, Lcom/tebakgambar/component/CustomButton$b;->d:I

    invoke-virtual {p0, v9}, Landroid/widget/Button;->setTextColor(I)V

    .line 36
    iget-object v9, p0, Lcom/tebakgambar/component/CustomButton;->w:Landroid/graphics/Canvas;

    invoke-super {p0, v9}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    const/high16 v9, -0x1000000

    .line 37
    invoke-virtual {p0, v9}, Landroid/widget/Button;->setTextColor(I)V

    .line 38
    new-instance v9, Landroid/graphics/PorterDuffXfermode;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 39
    new-instance v9, Landroid/graphics/BlurMaskFilter;

    iget v10, v8, Lcom/tebakgambar/component/CustomButton$b;->a:F

    sget-object v11, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v9, v10, v11}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 40
    iget-object v9, p0, Lcom/tebakgambar/component/CustomButton;->w:Landroid/graphics/Canvas;

    invoke-virtual {v9}, Landroid/graphics/Canvas;->save()I

    .line 41
    iget-object v9, p0, Lcom/tebakgambar/component/CustomButton;->w:Landroid/graphics/Canvas;

    iget v10, v8, Lcom/tebakgambar/component/CustomButton$b;->b:F

    iget v8, v8, Lcom/tebakgambar/component/CustomButton$b;->c:F

    invoke-virtual {v9, v10, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 42
    iget-object v8, p0, Lcom/tebakgambar/component/CustomButton;->w:Landroid/graphics/Canvas;

    invoke-super {p0, v8}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 43
    iget-object v8, p0, Lcom/tebakgambar/component/CustomButton;->w:Landroid/graphics/Canvas;

    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V

    .line 44
    iget-object v8, p0, Lcom/tebakgambar/component/CustomButton;->x:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v8, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 45
    iget-object v8, p0, Lcom/tebakgambar/component/CustomButton;->w:Landroid/graphics/Canvas;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v5, v9}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 46
    invoke-virtual {v6, v3}, Landroid/text/TextPaint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 47
    invoke-virtual {v6, v3}, Landroid/text/TextPaint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 48
    invoke-virtual {p0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 49
    invoke-virtual {p0, v4, v4, v4, v5}, Landroid/widget/Button;->setShadowLayer(FFFI)V

    goto :goto_c2

    :cond_124
    if-eqz v1, :cond_134

    .line 50
    aget-object p1, v1, v5

    const/4 v3, 0x1

    aget-object v3, v1, v3

    const/4 v4, 0x2

    aget-object v4, v1, v4

    const/4 v5, 0x3

    aget-object v1, v1, v5

    invoke-virtual {p0, p1, v3, v4, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 51
    :cond_134
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    invoke-virtual {p0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 53
    invoke-virtual {p0}, Lcom/tebakgambar/component/CustomButton;->i()V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/widget/Button;->onFinishInflate()V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/component/CustomButton;->s:Landroid/view/View$OnClickListener;

    invoke-super {p0, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public postInvalidate()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/tebakgambar/component/CustomButton;->E:Z

    if-nez v0, :cond_7

    .line 2
    invoke-super {p0}, Landroid/widget/Button;->postInvalidate()V

    :cond_7
    return-void
.end method

.method public postInvalidate(IIII)V
    .registers 6

    .line 3
    iget-boolean v0, p0, Lcom/tebakgambar/component/CustomButton;->E:Z

    if-nez v0, :cond_7

    .line 4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Button;->postInvalidate(IIII)V

    :cond_7
    return-void
.end method

.method public requestLayout()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/tebakgambar/component/CustomButton;->E:Z

    if-nez v0, :cond_7

    .line 2
    invoke-super {p0}, Landroid/widget/Button;->requestLayout()V

    :cond_7
    return-void
.end method

.method public setForegroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/component/CustomButton;->y:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/component/CustomButton;->r:Landroid/view/View$OnClickListener;

    return-void
.end method

###### Class com.tebakgambar.component.CustomButton.a (com.tebakgambar.component.CustomButton$a)
.class Lcom/tebakgambar/component/CustomButton$a;
.super Ljava/lang/Object;
.source "CustomButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/component/CustomButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/tebakgambar/component/CustomButton;


# direct methods
.method constructor <init>(Lcom/tebakgambar/component/CustomButton;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/component/CustomButton$a;->o:Lcom/tebakgambar/component/CustomButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/component/CustomButton$a;->o:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {v0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110005

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ly8/y;->Z(Landroid/content/Context;Ljava/lang/Integer;)V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/component/CustomButton$a;->o:Lcom/tebakgambar/component/CustomButton;

    invoke-static {v0}, Lcom/tebakgambar/component/CustomButton;->a(Lcom/tebakgambar/component/CustomButton;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 3
    iget-object v0, p0, Lcom/tebakgambar/component/CustomButton$a;->o:Lcom/tebakgambar/component/CustomButton;

    invoke-static {v0}, Lcom/tebakgambar/component/CustomButton;->a(Lcom/tebakgambar/component/CustomButton;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_21
    return-void
.end method

###### Class com.tebakgambar.component.CustomButton.b (com.tebakgambar.component.CustomButton$b)
.class public Lcom/tebakgambar/component/CustomButton$b;
.super Ljava/lang/Object;
.source "CustomButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/component/CustomButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field a:F

.field b:F

.field c:F

.field d:I


# direct methods
.method public constructor <init>(FFFI)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/tebakgambar/component/CustomButton$b;->a:F

    .line 3
    iput p2, p0, Lcom/tebakgambar/component/CustomButton$b;->b:F

    .line 4
    iput p3, p0, Lcom/tebakgambar/component/CustomButton$b;->c:F

    .line 5
    iput p4, p0, Lcom/tebakgambar/component/CustomButton$b;->d:I

    return-void
.end method
