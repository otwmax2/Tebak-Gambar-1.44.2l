###### Class com.tebakgambar.component.CustomEditText (com.tebakgambar.component.CustomEditText)
.class public Lcom/tebakgambar/component/CustomEditText;
.super Landroid/widget/EditText;
.source "CustomEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tebakgambar/component/CustomEditText$b;,
        Lcom/tebakgambar/component/CustomEditText$a;
    }
.end annotation


# instance fields
.field private A:Z

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tebakgambar/component/CustomEditText$b;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tebakgambar/component/CustomEditText$b;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/WeakHashMap;
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

.field private r:Landroid/graphics/Canvas;

.field private s:Landroid/graphics/Bitmap;

.field private t:Landroid/graphics/drawable/Drawable;

.field private u:F

.field private v:Ljava/lang/Integer;

.field private w:Landroid/graphics/Paint$Join;

.field private x:F

.field private y:Lcom/tebakgambar/component/CustomEditText$a;

.field private z:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/tebakgambar/component/CustomEditText;->A:Z

    .line 3
    invoke-virtual {p0, p2}, Lcom/tebakgambar/component/CustomEditText;->e(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private d()V
    .registers 6

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroid/widget/EditText;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%dx%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/tebakgambar/component/CustomEditText;->q:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    if-eqz v1, :cond_36

    .line 3
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Canvas;

    iput-object v0, p0, Lcom/tebakgambar/component/CustomEditText;->r:Landroid/graphics/Canvas;

    .line 4
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/tebakgambar/component/CustomEditText;->s:Landroid/graphics/Bitmap;

    goto :goto_60

    .line 5
    :cond_36
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    iput-object v1, p0, Lcom/tebakgambar/component/CustomEditText;->r:Landroid/graphics/Canvas;

    .line 6
    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/EditText;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/tebakgambar/component/CustomEditText;->s:Landroid/graphics/Bitmap;

    .line 7
    iget-object v2, p0, Lcom/tebakgambar/component/CustomEditText;->r:Landroid/graphics/Canvas;

    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 8
    iget-object v1, p0, Lcom/tebakgambar/component/CustomEditText;->q:Ljava/util/WeakHashMap;

    new-instance v2, Landroid/util/Pair;

    iget-object v3, p0, Lcom/tebakgambar/component/CustomEditText;->r:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/tebakgambar/component/CustomEditText;->s:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_60
    return-void
.end method


# virtual methods
.method public a(FFFI)V
    .registers 7

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_8

    const p1, 0x38d1b717    # 1.0E-4f

    .line 1
    :cond_8
    iget-object v0, p0, Lcom/tebakgambar/component/CustomEditText;->p:Ljava/util/ArrayList;

    new-instance v1, Lcom/tebakgambar/component/CustomEditText$b;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/tebakgambar/component/CustomEditText$b;-><init>(FFFI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(FFFI)V
    .registers 7

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_8

    const p1, 0x38d1b717    # 1.0E-4f

    .line 1
    :cond_8
    iget-object v0, p0, Lcom/tebakgambar/component/CustomEditText;->o:Ljava/util/ArrayList;

    new-instance v1, Lcom/tebakgambar/component/CustomEditText$b;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/tebakgambar/component/CustomEditText$b;-><init>(FFFI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()V
    .registers 5

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 1
    invoke-virtual {p0}, Lcom/tebakgambar/component/CustomEditText;->getCompoundPaddingLeft()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 2
    invoke-virtual {p0}, Lcom/tebakgambar/component/CustomEditText;->getCompoundPaddingRight()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 3
    invoke-virtual {p0}, Lcom/tebakgambar/component/CustomEditText;->getCompoundPaddingTop()I

    move-result v1

    const/4 v3, 0x2

    aput v1, v0, v3

    .line 4
    invoke-virtual {p0}, Lcom/tebakgambar/component/CustomEditText;->getCompoundPaddingBottom()I

    move-result v1

    const/4 v3, 0x3

    aput v1, v0, v3

    iput-object v0, p0, Lcom/tebakgambar/component/CustomEditText;->z:[I

    .line 5
    iput-boolean v2, p0, Lcom/tebakgambar/component/CustomEditText;->A:Z

    return-void
.end method

.method public e(Landroid/util/AttributeSet;)V
    .registers 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tebakgambar/component/CustomEditText;->o:Ljava/util/ArrayList;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tebakgambar/component/CustomEditText;->p:Ljava/util/ArrayList;

    .line 3
    iget-object v0, p0, Lcom/tebakgambar/component/CustomEditText;->q:Ljava/util/WeakHashMap;

    if-nez v0, :cond_19

    .line 4
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/tebakgambar/component/CustomEditText;->q:Ljava/util/WeakHashMap;

    :cond_19
    if-eqz p1, :cond_ea

    .line 5
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lg8/u;->X:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 v0, 0xe

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_48

    .line 7
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v0, v4, v1

    const-string v0, "fonts/%s.ttf"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 9
    :cond_48
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/high16 v3, -0x1000000

    if-eqz v0, :cond_61

    .line 10
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 11
    invoke-virtual {p0, v0}, Lcom/tebakgambar/component/CustomEditText;->setForegroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_61

    .line 12
    :cond_5a
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 13
    :cond_61
    :goto_61
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 14
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_71

    .line 15
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_78

    .line 16
    :cond_71
    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setBackgroundColor(I)V

    :cond_78
    :goto_78
    const/4 v0, 0x2

    .line 17
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_96

    const/4 v4, 0x5

    .line 18
    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    const/4 v6, 0x3

    .line 19
    invoke-virtual {p1, v6, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    const/4 v7, 0x4

    .line 20
    invoke-virtual {p1, v7, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    .line 21
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    .line 22
    invoke-virtual {p0, v4, v6, v7, v8}, Lcom/tebakgambar/component/CustomEditText;->a(FFFI)V

    :cond_96
    const/4 v4, 0x6

    .line 23
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_b5

    const/16 v6, 0x9

    .line 24
    invoke-virtual {p1, v6, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    const/4 v7, 0x7

    .line 25
    invoke-virtual {p1, v7, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    const/16 v8, 0x8

    .line 26
    invoke-virtual {p1, v8, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    .line 27
    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 28
    invoke-virtual {p0, v6, v7, v5, v4}, Lcom/tebakgambar/component/CustomEditText;->b(FFFI)V

    :cond_b5
    const/16 v4, 0xa

    .line 29
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_ea

    const/16 v5, 0xd

    const/high16 v6, 0x3f800000    # 1.0f

    .line 30
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    .line 31
    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    const/16 v4, 0xc

    const/high16 v6, 0x41200000    # 10.0f

    .line 32
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    const/4 v6, 0x0

    const/16 v7, 0xb

    .line 33
    invoke-virtual {p1, v7, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    if-eqz p1, :cond_e5

    if-eq p1, v2, :cond_e2

    if-eq p1, v0, :cond_df

    goto :goto_e7

    .line 34
    :cond_df
    sget-object v6, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    goto :goto_e7

    .line 35
    :cond_e2
    sget-object v6, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    goto :goto_e7

    .line 36
    :cond_e5
    sget-object v6, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    .line 37
    :goto_e7
    invoke-virtual {p0, v5, v3, v6, v4}, Lcom/tebakgambar/component/CustomEditText;->f(FILandroid/graphics/Paint$Join;F)V

    :cond_ea
    return-void
.end method

.method public f(FILandroid/graphics/Paint$Join;F)V
    .registers 5

    .line 1
    iput p1, p0, Lcom/tebakgambar/component/CustomEditText;->u:F

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/tebakgambar/component/CustomEditText;->v:Ljava/lang/Integer;

    .line 3
    iput-object p3, p0, Lcom/tebakgambar/component/CustomEditText;->w:Landroid/graphics/Paint$Join;

    .line 4
    iput p4, p0, Lcom/tebakgambar/component/CustomEditText;->x:F

    return-void
.end method

.method public g()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/tebakgambar/component/CustomEditText;->A:Z

    return-void
.end method

.method public getCompoundPaddingBottom()I
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/tebakgambar/component/CustomEditText;->A:Z

    if-nez v0, :cond_9

    invoke-super {p0}, Landroid/widget/EditText;->getCompoundPaddingBottom()I

    move-result v0

    goto :goto_e

    :cond_9
    iget-object v0, p0, Lcom/tebakgambar/component/CustomEditText;->z:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    :goto_e
    return v0
.end method

.method public getCompoundPaddingLeft()I
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/tebakgambar/component/CustomEditText;->A:Z

    if-nez v0, :cond_9

    invoke-super {p0}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result v0

    goto :goto_e

    :cond_9
    iget-object v0, p0, Lcom/tebakgambar/component/CustomEditText;->z:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    :goto_e
    return v0
.end method

.method public getCompoundPaddingRight()I
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/tebakgambar/component/CustomEditText;->A:Z

    if-nez v0, :cond_9

    invoke-super {p0}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    move-result v0

    goto :goto_e

    :cond_9
    iget-object v0, p0, Lcom/tebakgambar/component/CustomEditText;->z:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    :goto_e
    return v0
.end method

.method public getCompoundPaddingTop()I
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/tebakgambar/component/CustomEditText;->A:Z

    if-nez v0, :cond_9

    invoke-super {p0}, Landroid/widget/EditText;->getCompoundPaddingTop()I

    move-result v0

    goto :goto_e

    :cond_9
    iget-object v0, p0, Lcom/tebakgambar/component/CustomEditText;->z:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    :goto_e
    return v0
.end method

.method public getForeground()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/component/CustomEditText;->t:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    goto :goto_e

    :cond_5
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/widget/EditText;->getCurrentTextColor()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :goto_e
    return-object v0
.end method

.method public invalidate()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/tebakgambar/component/CustomEditText;->A:Z

    if-nez v0, :cond_7

    invoke-super {p0}, Landroid/widget/EditText;->invalidate()V

    :cond_7
    return-void
.end method

.method public invalidate(IIII)V
    .registers 6

    .line 3
    iget-boolean v0, p0, Lcom/tebakgambar/component/CustomEditText;->A:Z

    if-nez v0, :cond_7

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->invalidate(IIII)V

    :cond_7
    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .registers 3

    .line 2
    iget-boolean v0, p0, Lcom/tebakgambar/component/CustomEditText;->A:Z

    if-nez v0, :cond_7

    invoke-super {p0, p1}, Landroid/widget/EditText;->invalidate(Landroid/graphics/Rect;)V

    :cond_7
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 14

    .line 1
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0}, Lcom/tebakgambar/component/CustomEditText;->c()V

    .line 3
    invoke-virtual {p0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Landroid/widget/EditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Landroid/widget/EditText;->getCurrentTextColor()I

    move-result v2

    const/4 v3, 0x0

    .line 6
    invoke-virtual {p0, v3, v3, v3, v3}, Landroid/widget/EditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget-object v4, p0, Lcom/tebakgambar/component/CustomEditText;->o:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_37

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tebakgambar/component/CustomEditText$b;

    .line 8
    iget v6, v5, Lcom/tebakgambar/component/CustomEditText$b;->a:F

    iget v7, v5, Lcom/tebakgambar/component/CustomEditText$b;->b:F

    iget v8, v5, Lcom/tebakgambar/component/CustomEditText$b;->c:F

    iget v5, v5, Lcom/tebakgambar/component/CustomEditText$b;->d:I

    invoke-virtual {p0, v6, v7, v8, v5}, Landroid/widget/EditText;->setShadowLayer(FFFI)V

    .line 9
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_1c

    :cond_37
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 10
    invoke-virtual {p0, v4, v4, v4, v5}, Landroid/widget/EditText;->setShadowLayer(FFFI)V

    .line 11
    invoke-virtual {p0, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 12
    iget-object v6, p0, Lcom/tebakgambar/component/CustomEditText;->t:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_7d

    instance-of v6, v6, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_7d

    .line 13
    invoke-direct {p0}, Lcom/tebakgambar/component/CustomEditText;->d()V

    .line 14
    iget-object v6, p0, Lcom/tebakgambar/component/CustomEditText;->r:Landroid/graphics/Canvas;

    invoke-super {p0, v6}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 15
    iget-object v6, p0, Lcom/tebakgambar/component/CustomEditText;->t:Landroid/graphics/drawable/Drawable;

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    .line 16
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 17
    iget-object v6, p0, Lcom/tebakgambar/component/CustomEditText;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 18
    iget-object v6, p0, Lcom/tebakgambar/component/CustomEditText;->t:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/tebakgambar/component/CustomEditText;->r:Landroid/graphics/Canvas;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 19
    iget-object v6, p0, Lcom/tebakgambar/component/CustomEditText;->s:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v6, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 20
    iget-object v6, p0, Lcom/tebakgambar/component/CustomEditText;->r:Landroid/graphics/Canvas;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v5, v7}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 21
    :cond_7d
    iget-object v6, p0, Lcom/tebakgambar/component/CustomEditText;->v:Ljava/lang/Integer;

    if-eqz v6, :cond_ad

    .line 22
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    .line 23
    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 24
    iget-object v7, p0, Lcom/tebakgambar/component/CustomEditText;->w:Landroid/graphics/Paint$Join;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 25
    iget v7, p0, Lcom/tebakgambar/component/CustomEditText;->x:F

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setStrokeMiter(F)V

    .line 26
    iget-object v7, p0, Lcom/tebakgambar/component/CustomEditText;->v:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/widget/EditText;->setTextColor(I)V

    .line 27
    iget v7, p0, Lcom/tebakgambar/component/CustomEditText;->u:F

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 28
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 29
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 30
    invoke-virtual {p0, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 31
    :cond_ad
    iget-object v6, p0, Lcom/tebakgambar/component/CustomEditText;->p:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_124

    .line 32
    invoke-direct {p0}, Lcom/tebakgambar/component/CustomEditText;->d()V

    .line 33
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    .line 34
    iget-object v7, p0, Lcom/tebakgambar/component/CustomEditText;->p:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_c2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_124

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tebakgambar/component/CustomEditText$b;

    .line 35
    iget v9, v8, Lcom/tebakgambar/component/CustomEditText$b;->d:I

    invoke-virtual {p0, v9}, Landroid/widget/EditText;->setTextColor(I)V

    .line 36
    iget-object v9, p0, Lcom/tebakgambar/component/CustomEditText;->r:Landroid/graphics/Canvas;

    invoke-super {p0, v9}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    const/high16 v9, -0x1000000

    .line 37
    invoke-virtual {p0, v9}, Landroid/widget/EditText;->setTextColor(I)V

    .line 38
    new-instance v9, Landroid/graphics/PorterDuffXfermode;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 39
    new-instance v9, Landroid/graphics/BlurMaskFilter;

    iget v10, v8, Lcom/tebakgambar/component/CustomEditText$b;->a:F

    sget-object v11, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v9, v10, v11}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 40
    iget-object v9, p0, Lcom/tebakgambar/component/CustomEditText;->r:Landroid/graphics/Canvas;

    invoke-virtual {v9}, Landroid/graphics/Canvas;->save()I

    .line 41
    iget-object v9, p0, Lcom/tebakgambar/component/CustomEditText;->r:Landroid/graphics/Canvas;

    iget v10, v8, Lcom/tebakgambar/component/CustomEditText$b;->b:F

    iget v8, v8, Lcom/tebakgambar/component/CustomEditText$b;->c:F

    invoke-virtual {v9, v10, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 42
    iget-object v8, p0, Lcom/tebakgambar/component/CustomEditText;->r:Landroid/graphics/Canvas;

    invoke-super {p0, v8}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 43
    iget-object v8, p0, Lcom/tebakgambar/component/CustomEditText;->r:Landroid/graphics/Canvas;

    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V

    .line 44
    iget-object v8, p0, Lcom/tebakgambar/component/CustomEditText;->s:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v8, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 45
    iget-object v8, p0, Lcom/tebakgambar/component/CustomEditText;->r:Landroid/graphics/Canvas;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v5, v9}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 46
    invoke-virtual {v6, v3}, Landroid/text/TextPaint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 47
    invoke-virtual {v6, v3}, Landroid/text/TextPaint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 48
    invoke-virtual {p0, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 49
    invoke-virtual {p0, v4, v4, v4, v5}, Landroid/widget/EditText;->setShadowLayer(FFFI)V

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

    invoke-virtual {p0, p1, v3, v4, v1}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 51
    :cond_134
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    invoke-virtual {p0, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 53
    invoke-virtual {p0}, Lcom/tebakgambar/component/CustomEditText;->g()V

    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_15

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_15

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/component/CustomEditText;->y:Lcom/tebakgambar/component/CustomEditText$a;

    if-eqz p1, :cond_15

    invoke-interface {p1, p0}, Lcom/tebakgambar/component/CustomEditText$a;->a(Lcom/tebakgambar/component/CustomEditText;)V

    .line 3
    :cond_15
    invoke-super {p0, p2}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public postInvalidate()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/tebakgambar/component/CustomEditText;->A:Z

    if-nez v0, :cond_7

    invoke-super {p0}, Landroid/widget/EditText;->postInvalidate()V

    :cond_7
    return-void
.end method

.method public postInvalidate(IIII)V
    .registers 6

    .line 2
    iget-boolean v0, p0, Lcom/tebakgambar/component/CustomEditText;->A:Z

    if-nez v0, :cond_7

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->postInvalidate(IIII)V

    :cond_7
    return-void
.end method

.method public requestLayout()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/tebakgambar/component/CustomEditText;->A:Z

    if-nez v0, :cond_7

    invoke-super {p0}, Landroid/widget/EditText;->requestLayout()V

    :cond_7
    return-void
.end method

.method public setBackPressedListener(Lcom/tebakgambar/component/CustomEditText$a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/component/CustomEditText;->y:Lcom/tebakgambar/component/CustomEditText$a;

    return-void
.end method

.method public setForegroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/component/CustomEditText;->t:Landroid/graphics/drawable/Drawable;

    return-void
.end method

###### Class com.tebakgambar.component.CustomEditText.a (com.tebakgambar.component.CustomEditText$a)
.class public interface abstract Lcom/tebakgambar/component/CustomEditText$a;
.super Ljava/lang/Object;
.source "CustomEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/component/CustomEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a(Lcom/tebakgambar/component/CustomEditText;)V
.end method

###### Class com.tebakgambar.component.CustomEditText.b (com.tebakgambar.component.CustomEditText$b)
.class public Lcom/tebakgambar/component/CustomEditText$b;
.super Ljava/lang/Object;
.source "CustomEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/component/CustomEditText;
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
    iput p1, p0, Lcom/tebakgambar/component/CustomEditText$b;->a:F

    .line 3
    iput p2, p0, Lcom/tebakgambar/component/CustomEditText$b;->b:F

    .line 4
    iput p3, p0, Lcom/tebakgambar/component/CustomEditText$b;->c:F

    .line 5
    iput p4, p0, Lcom/tebakgambar/component/CustomEditText$b;->d:I

    return-void
.end method
