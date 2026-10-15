###### Class o4.g (o4.g)
.class public Lo4/g;
.super Landroid/graphics/drawable/Drawable;
.source "MaterialShapeDrawable.java"

# interfaces
.implements Landroidx/core/graphics/drawable/e;
.implements Lo4/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo4/g$c;
    }
.end annotation


# static fields
.field private static final K:Ljava/lang/String;

.field private static final L:Landroid/graphics/Paint;


# instance fields
.field private A:Lo4/k;

.field private final B:Landroid/graphics/Paint;

.field private final C:Landroid/graphics/Paint;

.field private final D:Ln4/a;

.field private final E:Lo4/l$b;

.field private final F:Lo4/l;

.field private G:Landroid/graphics/PorterDuffColorFilter;

.field private H:Landroid/graphics/PorterDuffColorFilter;

.field private final I:Landroid/graphics/RectF;

.field private J:Z

.field private o:Lo4/g$c;

.field private final p:[Lo4/m$g;

.field private final q:[Lo4/m$g;

.field private final r:Ljava/util/BitSet;

.field private s:Z

.field private final t:Landroid/graphics/Matrix;

.field private final u:Landroid/graphics/Path;

.field private final v:Landroid/graphics/Path;

.field private final w:Landroid/graphics/RectF;

.field private final x:Landroid/graphics/RectF;

.field private final y:Landroid/graphics/Region;

.field private final z:Landroid/graphics/Region;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const-class v0, Lo4/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo4/g;->K:Ljava/lang/String;

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lo4/g;->L:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 2
    new-instance v0, Lo4/k;

    invoke-direct {v0}, Lo4/k;-><init>()V

    invoke-direct {p0, v0}, Lo4/g;-><init>(Lo4/k;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 3
    invoke-static {p1, p2, p3, p4}, Lo4/k;->e(Landroid/content/Context;Landroid/util/AttributeSet;II)Lo4/k$b;

    move-result-object p1

    invoke-virtual {p1}, Lo4/k$b;->m()Lo4/k;

    move-result-object p1

    invoke-direct {p0, p1}, Lo4/g;-><init>(Lo4/k;)V

    return-void
.end method

.method private constructor <init>(Lo4/g$c;)V
    .registers 7

    .line 5
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Lo4/m$g;

    .line 6
    iput-object v1, p0, Lo4/g;->p:[Lo4/m$g;

    new-array v0, v0, [Lo4/m$g;

    .line 7
    iput-object v0, p0, Lo4/g;->q:[Lo4/m$g;

    .line 8
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lo4/g;->r:Ljava/util/BitSet;

    .line 9
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lo4/g;->t:Landroid/graphics/Matrix;

    .line 10
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lo4/g;->u:Landroid/graphics/Path;

    .line 11
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lo4/g;->v:Landroid/graphics/Path;

    .line 12
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lo4/g;->w:Landroid/graphics/RectF;

    .line 13
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lo4/g;->x:Landroid/graphics/RectF;

    .line 14
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lo4/g;->y:Landroid/graphics/Region;

    .line 15
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lo4/g;->z:Landroid/graphics/Region;

    .line 16
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lo4/g;->B:Landroid/graphics/Paint;

    .line 17
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lo4/g;->C:Landroid/graphics/Paint;

    .line 18
    new-instance v3, Ln4/a;

    invoke-direct {v3}, Ln4/a;-><init>()V

    iput-object v3, p0, Lo4/g;->D:Ln4/a;

    .line 19
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-ne v3, v4, :cond_6f

    .line 20
    invoke-static {}, Lo4/l;->k()Lo4/l;

    move-result-object v3

    goto :goto_74

    :cond_6f
    new-instance v3, Lo4/l;

    invoke-direct {v3}, Lo4/l;-><init>()V

    :goto_74
    iput-object v3, p0, Lo4/g;->F:Lo4/l;

    .line 21
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lo4/g;->I:Landroid/graphics/RectF;

    .line 22
    iput-boolean v1, p0, Lo4/g;->J:Z

    .line 23
    iput-object p1, p0, Lo4/g;->o:Lo4/g$c;

    .line 24
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 25
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 26
    sget-object p1, Lo4/g;->L:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 27
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 28
    invoke-direct {p0}, Lo4/g;->g0()Z

    .line 29
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-direct {p0, p1}, Lo4/g;->f0([I)Z

    .line 30
    new-instance p1, Lo4/g$a;

    invoke-direct {p1, p0}, Lo4/g$a;-><init>(Lo4/g;)V

    iput-object p1, p0, Lo4/g;->E:Lo4/l$b;

    return-void
.end method

.method synthetic constructor <init>(Lo4/g$c;Lo4/g$a;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lo4/g;-><init>(Lo4/g$c;)V

    return-void
.end method

.method public constructor <init>(Lo4/k;)V
    .registers 4

    .line 4
    new-instance v0, Lo4/g$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lo4/g$c;-><init>(Lo4/k;Lh4/a;)V

    invoke-direct {p0, v0}, Lo4/g;-><init>(Lo4/g$c;)V

    return-void
.end method

.method private D()F
    .registers 3

    .line 1
    invoke-direct {p0}, Lo4/g;->L()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2
    iget-object v0, p0, Lo4/g;->C:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method private J()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lo4/g;->o:Lo4/g$c;

    iget v1, v0, Lo4/g$c;->q:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_15

    iget v0, v0, Lo4/g$c;->r:I

    if-lez v0, :cond_15

    const/4 v0, 0x2

    if-eq v1, v0, :cond_16

    .line 2
    invoke-virtual {p0}, Lo4/g;->T()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :cond_16
    :goto_16
    return v2
.end method

.method private K()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lo4/g;->o:Lo4/g$c;

    iget-object v0, v0, Lo4/g$c;->v:Landroid/graphics/Paint$Style;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    if-eq v0, v1, :cond_f

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method private L()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lo4/g;->o:Lo4/g$c;

    iget-object v0, v0, Lo4/g$c;->v:Landroid/graphics/Paint$Style;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    if-eq v0, v1, :cond_c

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_19

    :cond_c
    iget-object v0, p0, Lo4/g;->C:Landroid/graphics/Paint;

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    return v0
.end method

.method private N()V
    .registers 1

    .line 1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private Q(Landroid/graphics/Canvas;)V
    .registers 8

    .line 1
    invoke-direct {p0}, Lo4/g;->J()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 2
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3
    invoke-direct {p0, p1}, Lo4/g;->S(Landroid/graphics/Canvas;)V

    .line 4
    iget-boolean v0, p0, Lo4/g;->J:Z

    if-nez v0, :cond_18

    .line 5
    invoke-direct {p0, p1}, Lo4/g;->n(Landroid/graphics/Canvas;)V

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 7
    :cond_18
    iget-object v0, p0, Lo4/g;->I:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 8
    iget-object v1, p0, Lo4/g;->I:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    if-ltz v0, :cond_94

    if-ltz v1, :cond_94

    .line 9
    iget-object v2, p0, Lo4/g;->I:Landroid/graphics/RectF;

    .line 10
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lo4/g;->o:Lo4/g$c;

    iget v3, v3, Lo4/g$c;->r:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    iget-object v3, p0, Lo4/g;->I:Landroid/graphics/RectF;

    .line 11
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lo4/g;->o:Lo4/g$c;

    iget v4, v4, Lo4/g$c;->r:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 12
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 13
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 14
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lo4/g;->o:Lo4/g$c;

    iget v5, v5, Lo4/g$c;->r:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v0

    int-to-float v0, v4

    .line 15
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lo4/g;->o:Lo4/g$c;

    iget v5, v5, Lo4/g$c;->r:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    int-to-float v1, v4

    neg-float v4, v0

    neg-float v5, v1

    .line 16
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 17
    invoke-direct {p0, v3}, Lo4/g;->n(Landroid/graphics/Canvas;)V

    const/4 v3, 0x0

    .line 18
    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 19
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 20
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 21
    :cond_94
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid shadow bounds. Check that the treatments result in a valid path."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static R(II)I
    .registers 3

    ushr-int/lit8 v0, p1, 0x7

    add-int/2addr p1, v0

    mul-int p0, p0, p1

    ushr-int/lit8 p0, p0, 0x8

    return p0
.end method

.method private S(Landroid/graphics/Canvas;)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lo4/g;->z()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lo4/g;->A()I

    move-result v1

    .line 3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_27

    iget-boolean v2, p0, Lo4/g;->J:Z

    if-eqz v2, :cond_27

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5
    iget-object v3, p0, Lo4/g;->o:Lo4/g$c;

    iget v3, v3, Lo4/g$c;->r:I

    neg-int v4, v3

    neg-int v3, v3

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 6
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 7
    sget-object v3, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    :cond_27
    int-to-float v0, v0

    int-to-float v1, v1

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method static synthetic b(Lo4/g;)Ljava/util/BitSet;
    .registers 1

    .line 1
    iget-object p0, p0, Lo4/g;->r:Ljava/util/BitSet;

    return-object p0
.end method

.method static synthetic c(Lo4/g;)[Lo4/m$g;
    .registers 1

    .line 1
    iget-object p0, p0, Lo4/g;->p:[Lo4/m$g;

    return-object p0
.end method

.method static synthetic d(Lo4/g;)[Lo4/m$g;
    .registers 1

    .line 1
    iget-object p0, p0, Lo4/g;->q:[Lo4/m$g;

    return-object p0
.end method

.method static synthetic e(Lo4/g;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lo4/g;->s:Z

    return p1
.end method

.method private f(Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;
    .registers 4

    if-eqz p2, :cond_14

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    .line 2
    invoke-virtual {p0, p1}, Lo4/g;->l(I)I

    move-result p2

    if-eq p2, p1, :cond_14

    .line 3
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p1

    :cond_14
    const/4 p1, 0x0

    return-object p1
.end method

.method private f0([I)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lo4/g;->o:Lo4/g$c;

    iget-object v0, v0, Lo4/g$c;->d:Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    if-eqz v0, :cond_1e

    .line 2
    iget-object v0, p0, Lo4/g;->B:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 3
    iget-object v2, p0, Lo4/g;->o:Lo4/g$c;

    iget-object v2, v2, Lo4/g$c;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, p1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    if-eq v0, v2, :cond_1e

    .line 4
    iget-object v0, p0, Lo4/g;->B:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    .line 5
    :goto_1f
    iget-object v2, p0, Lo4/g;->o:Lo4/g$c;

    iget-object v2, v2, Lo4/g$c;->e:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_3b

    .line 6
    iget-object v2, p0, Lo4/g;->C:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    .line 7
    iget-object v3, p0, Lo4/g;->o:Lo4/g$c;

    iget-object v3, v3, Lo4/g$c;->e:Landroid/content/res/ColorStateList;

    .line 8
    invoke-virtual {v3, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    if-eq v2, p1, :cond_3b

    .line 9
    iget-object v0, p0, Lo4/g;->C:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3c

    :cond_3b
    move v1, v0

    :goto_3c
    return v1
.end method

.method private g(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .registers 7

    .line 1
    invoke-virtual {p0, p1, p2}, Lo4/g;->h(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 2
    iget-object v0, p0, Lo4/g;->o:Lo4/g$c;

    iget v0, v0, Lo4/g$c;->j:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2c

    .line 3
    iget-object v0, p0, Lo4/g;->t:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 4
    iget-object v0, p0, Lo4/g;->t:Landroid/graphics/Matrix;

    iget-object v1, p0, Lo4/g;->o:Lo4/g$c;

    iget v1, v1, Lo4/g$c;->j:F

    .line 5
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr p1, v3

    .line 6
    invoke-virtual {v0, v1, v1, v2, p1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 7
    iget-object p1, p0, Lo4/g;->t:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 8
    :cond_2c
    iget-object p1, p0, Lo4/g;->I:Landroid/graphics/RectF;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    return-void
.end method

.method private g0()Z
    .registers 8

    .line 1
    iget-object v0, p0, Lo4/g;->G:Landroid/graphics/PorterDuffColorFilter;

    .line 2
    iget-object v1, p0, Lo4/g;->H:Landroid/graphics/PorterDuffColorFilter;

    .line 3
    iget-object v2, p0, Lo4/g;->o:Lo4/g$c;

    iget-object v3, v2, Lo4/g$c;->g:Landroid/content/res/ColorStateList;

    iget-object v2, v2, Lo4/g$c;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v4, p0, Lo4/g;->B:Landroid/graphics/Paint;

    const/4 v5, 0x1

    .line 4
    invoke-direct {p0, v3, v2, v4, v5}, Lo4/g;->k(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    iput-object v2, p0, Lo4/g;->G:Landroid/graphics/PorterDuffColorFilter;

    .line 5
    iget-object v2, p0, Lo4/g;->o:Lo4/g$c;

    iget-object v3, v2, Lo4/g$c;->f:Landroid/content/res/ColorStateList;

    iget-object v2, v2, Lo4/g$c;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v4, p0, Lo4/g;->C:Landroid/graphics/Paint;

    const/4 v6, 0x0

    .line 6
    invoke-direct {p0, v3, v2, v4, v6}, Lo4/g;->k(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    iput-object v2, p0, Lo4/g;->H:Landroid/graphics/PorterDuffColorFilter;

    .line 7
    iget-object v2, p0, Lo4/g;->o:Lo4/g$c;

    iget-boolean v3, v2, Lo4/g$c;->u:Z

    if-eqz v3, :cond_37

    .line 8
    iget-object v3, p0, Lo4/g;->D:Ln4/a;

    iget-object v2, v2, Lo4/g$c;->g:Landroid/content/res/ColorStateList;

    .line 9
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v4

    invoke-virtual {v2, v4, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    .line 10
    invoke-virtual {v3, v2}, Ln4/a;->d(I)V

    .line 11
    :cond_37
    iget-object v2, p0, Lo4/g;->G:Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v0, v2}, Landroidx/core/util/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lo4/g;->H:Landroid/graphics/PorterDuffColorFilter;

    .line 12
    invoke-static {v1, v0}, Landroidx/core/util/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    goto :goto_49

    :cond_48
    const/4 v5, 0x0

    :cond_49
    :goto_49
    return v5
.end method

.method private h0()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lo4/g;->I()F

    move-result v0

    .line 2
    iget-object v1, p0, Lo4/g;->o:Lo4/g$c;

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float v2, v2, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v1, Lo4/g$c;->r:I

    .line 3
    iget-object v1, p0, Lo4/g;->o:Lo4/g$c;

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float v0, v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, v1, Lo4/g$c;->s:I

    .line 4
    invoke-direct {p0}, Lo4/g;->g0()Z

    .line 5
    invoke-direct {p0}, Lo4/g;->N()V

    return-void
.end method

.method private i()V
    .registers 6

    .line 1
    invoke-direct {p0}, Lo4/g;->D()F

    move-result v0

    neg-float v0, v0

    .line 2
    invoke-virtual {p0}, Lo4/g;->C()Lo4/k;

    move-result-object v1

    new-instance v2, Lo4/g$b;

    invoke-direct {v2, p0, v0}, Lo4/g$b;-><init>(Lo4/g;F)V

    .line 3
    invoke-virtual {v1, v2}, Lo4/k;->y(Lo4/k$c;)Lo4/k;

    move-result-object v0

    iput-object v0, p0, Lo4/g;->A:Lo4/k;

    .line 4
    iget-object v1, p0, Lo4/g;->F:Lo4/l;

    iget-object v2, p0, Lo4/g;->o:Lo4/g$c;

    iget v2, v2, Lo4/g$c;->k:F

    .line 5
    invoke-direct {p0}, Lo4/g;->v()Landroid/graphics/RectF;

    move-result-object v3

    iget-object v4, p0, Lo4/g;->v:Landroid/graphics/Path;

    .line 6
    invoke-virtual {v1, v0, v2, v3, v4}, Lo4/l;->d(Lo4/k;FLandroid/graphics/RectF;Landroid/graphics/Path;)V

    return-void
.end method

.method private j(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Z)Landroid/graphics/PorterDuffColorFilter;
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    if-eqz p3, :cond_f

    .line 2
    invoke-virtual {p0, p1}, Lo4/g;->l(I)I

    move-result p1

    .line 3
    :cond_f
    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p3, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p3
.end method

.method private k(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;
    .registers 5

    if-eqz p1, :cond_a

    if-nez p2, :cond_5

    goto :goto_a

    .line 1
    :cond_5
    invoke-direct {p0, p1, p2, p4}, Lo4/g;->j(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Z)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    goto :goto_e

    .line 2
    :cond_a
    :goto_a
    invoke-direct {p0, p3, p4}, Lo4/g;->f(Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    :goto_e
    return-object p1
.end method

.method public static m(Landroid/content/Context;F)Lo4/g;
    .registers 4

    .line 1
    sget v0, Ly3/b;->l:I

    const-class v1, Lo4/g;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {p0, v0, v1}, Le4/a;->b(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    .line 4
    new-instance v1, Lo4/g;

    invoke-direct {v1}, Lo4/g;-><init>()V

    .line 5
    invoke-virtual {v1, p0}, Lo4/g;->M(Landroid/content/Context;)V

    .line 6
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v1, p0}, Lo4/g;->W(Landroid/content/res/ColorStateList;)V

    .line 7
    invoke-virtual {v1, p1}, Lo4/g;->V(F)V

    return-object v1
.end method

.method private n(Landroid/graphics/Canvas;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lo4/g;->r:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-lez v0, :cond_f

    .line 2
    sget-object v0, Lo4/g;->K:Ljava/lang/String;

    const-string v1, "Compatibility shadow requested but can\'t be drawn for all operations in this shape."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_f
    iget-object v0, p0, Lo4/g;->o:Lo4/g$c;

    iget v0, v0, Lo4/g$c;->s:I

    if-eqz v0, :cond_20

    .line 4
    iget-object v0, p0, Lo4/g;->u:Landroid/graphics/Path;

    iget-object v1, p0, Lo4/g;->D:Ln4/a;

    invoke-virtual {v1}, Ln4/a;->c()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_20
    const/4 v0, 0x0

    :goto_21
    const/4 v1, 0x4

    if-ge v0, v1, :cond_41

    .line 5
    iget-object v1, p0, Lo4/g;->p:[Lo4/m$g;

    aget-object v1, v1, v0

    iget-object v2, p0, Lo4/g;->D:Ln4/a;

    iget-object v3, p0, Lo4/g;->o:Lo4/g$c;

    iget v3, v3, Lo4/g$c;->r:I

    invoke-virtual {v1, v2, v3, p1}, Lo4/m$g;->b(Ln4/a;ILandroid/graphics/Canvas;)V

    .line 6
    iget-object v1, p0, Lo4/g;->q:[Lo4/m$g;

    aget-object v1, v1, v0

    iget-object v2, p0, Lo4/g;->D:Ln4/a;

    iget-object v3, p0, Lo4/g;->o:Lo4/g$c;

    iget v3, v3, Lo4/g$c;->r:I

    invoke-virtual {v1, v2, v3, p1}, Lo4/m$g;->b(Ln4/a;ILandroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 7
    :cond_41
    iget-boolean v0, p0, Lo4/g;->J:Z

    if-eqz v0, :cond_60

    .line 8
    invoke-virtual {p0}, Lo4/g;->z()I

    move-result v0

    .line 9
    invoke-virtual {p0}, Lo4/g;->A()I

    move-result v1

    neg-int v2, v0

    int-to-float v2, v2

    neg-int v3, v1

    int-to-float v3, v3

    .line 10
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 11
    iget-object v2, p0, Lo4/g;->u:Landroid/graphics/Path;

    sget-object v3, Lo4/g;->L:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    int-to-float v0, v0

    int-to-float v1, v1

    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_60
    return-void
.end method

.method private o(Landroid/graphics/Canvas;)V
    .registers 8

    .line 1
    iget-object v2, p0, Lo4/g;->B:Landroid/graphics/Paint;

    iget-object v3, p0, Lo4/g;->u:Landroid/graphics/Path;

    iget-object v0, p0, Lo4/g;->o:Lo4/g$c;

    iget-object v4, v0, Lo4/g$c;->a:Lo4/k;

    invoke-virtual {p0}, Lo4/g;->u()Landroid/graphics/RectF;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lo4/g;->q(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lo4/k;Landroid/graphics/RectF;)V

    return-void
.end method

.method private q(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lo4/k;Landroid/graphics/RectF;)V
    .registers 7

    .line 1
    invoke-virtual {p4, p5}, Lo4/k;->u(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2
    invoke-virtual {p4}, Lo4/k;->t()Lo4/c;

    move-result-object p3

    invoke-interface {p3, p5}, Lo4/c;->a(Landroid/graphics/RectF;)F

    move-result p3

    iget-object p4, p0, Lo4/g;->o:Lo4/g$c;

    iget p4, p4, Lo4/g$c;->k:F

    mul-float p3, p3, p4

    .line 3
    invoke-virtual {p1, p5, p3, p3, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1b

    .line 4
    :cond_18
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_1b
    return-void
.end method

.method private r(Landroid/graphics/Canvas;)V
    .registers 8

    .line 1
    iget-object v2, p0, Lo4/g;->C:Landroid/graphics/Paint;

    iget-object v3, p0, Lo4/g;->v:Landroid/graphics/Path;

    iget-object v4, p0, Lo4/g;->A:Lo4/k;

    .line 2
    invoke-direct {p0}, Lo4/g;->v()Landroid/graphics/RectF;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    .line 3
    invoke-direct/range {v0 .. v5}, Lo4/g;->q(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lo4/k;Landroid/graphics/RectF;)V

    return-void
.end method

.method private v()Landroid/graphics/RectF;
    .registers 3

    .line 1
    iget-object v0, p0, Lo4/g;->x:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lo4/g;->u()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 2
    invoke-direct {p0}, Lo4/g;->D()F

    move-result v0

    .line 3
    iget-object v1, p0, Lo4/g;->x:Landroid/graphics/RectF;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 4
    iget-object v0, p0, Lo4/g;->x:Landroid/graphics/RectF;

    return-object v0
.end method


# virtual methods
.method public A()I
    .registers 6

    .line 1
    iget-object v0, p0, Lo4/g;->o:Lo4/g$c;

    iget v1, v0, Lo4/g$c;->s:I

    int-to-double v1, v1

    iget v0, v0, Lo4/g$c;->t:I

    int-to-double v3, v0

    .line 2
    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-int v0, v1

    return v0
.end method

.method public B()I
    .registers 2

    .line 1
    iget-object v0, p0, Lo4/g;->o:Lo4/g$c;

    iget v0, v0, Lo4/g$c;->r:I

    return v0
.end method

.method public C()Lo4/k;
    .registers 2

    .line 1
    iget-object v0, p0, Lo4/g;->o:Lo4/g$c;

    iget-object v0, v0, Lo4/g$c;->a:Lo4/k;

    return-object v0
.end method

.method public E()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Lo4/g;->o:Lo4/g$c;

    iget-object v0, v0, Lo4/g$c;->g:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public F()F
    .registers 3

    .line 1
    iget-object v0, p0, Lo4/g;->o:Lo4/g$c;

    iget-object v0, v0, Lo4/g$c;->a:Lo4/k;

    .line 2
    invoke-virtual {v0}, Lo4/k;->r()Lo4/c;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lo4/g;->u()Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Lo4/c;->a(Landroid/graphics/RectF;)F

    move-result v0

    return v0
.end method

.method public G()F
    .registers 3

    .line 1
    iget-object v0, p0, Lo4/g;->o:Lo4/g$c;

    iget-object v0, v0, Lo4/g$c;->a:Lo4/k;

    .line 2
    invoke-virtual {v0}, Lo4/k;->t()Lo4/c;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lo4/g;->u()Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Lo4/c;->a(Landroid/graphics/RectF;)F

    move-result v0

    return v0
.end method

.method public H()F
    .registers 2

    .line 1
    iget-object v0, p0, Lo4/g;->o:Lo4/g$c;

    iget v0, v0, Lo4/g$c;->p:F

    return v0
.end method

.method public I()F
    .registers 3

    .line 1
    invoke-virtual {p0}, Lo4/g;->w()F

    move-result v0

    invoke-virtual {p0}, Lo4/g;->H()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public M(Landroid/content/Context;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lo4/g;->o:Lo4/g$c;

    new-instance v1, Lh4/a;

    invoke-direct {v1, p1}, Lh4/a;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lo4/g$c;->b:Lh4/a;

    .line 2
    invoke-direct {p0}, Lo4/g;->h0()V

    return-void
.end method

.method public O()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lo4/g;->o:Lo4/g$c;

    iget-object v0, v0, Lo4/g$c;->b:Lh4/a;

    if-eqz v0, :cond_e

    .line 2
    invoke-virtual {v0}, Lh4/a;->d()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public P()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lo4/g;->o:Lo4/g$c;

    iget-object v0, v0, Lo4/g$c;->a:Lo4/k;

    invoke-virtual {p0}, Lo4/g;->u()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo4/k;->u(Landroid/graphics/RectF;)Z

    move-result v0

    return v0
.end method

.method public T()Z
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1b

    .line 2
    invoke-virtual {p0}, Lo4/g;->P()Z

    move-result v1

    if-nez v1, :cond_19

    iget-object v1, p0, Lo4/g;->u:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isConvex()Z

    move-result v1

    if-nez v1, :cond_19

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    return v0
.end method

.method public U(Lo4/c;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lo4/g;->o:Lo4/g$c;

    iget-object v0, v0, Lo4/g$c;->a:Lo4/k;

    invoke-virtual {v0, p1}, Lo4/k;->x(Lo4/c;)Lo4/k;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo4/g;->setShapeAppearanceModel(Lo4/k;)V

    return-void
.end method

.method public V(F)V
    .registers 4

    .line 1
    iget-object v0, p0, Lo4/g;->o:Lo4/g$c;

    iget v1, v0, Lo4/g$c;->o:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_d

    .line 2
    iput p1, v0, Lo4/g$c;->o:F

    .line 3
    invoke-direct {p0}, Lo4/g;->h0()V

    :cond_d
    return-void
.end method

.method public W(Landroid/content/res/ColorStateList;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lo4/g;->o:Lo4/g$c;

    iget-object v1, v0, Lo4/g$c;->d:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_f

    .line 2
    iput-object p1, v0, Lo4/g$c;->d:Landroid/content/res/ColorStateList;

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lo4/g;->onStateChange([I)Z

    :cond_f
    return-void
.end method

.method public X(F)V
    .registers 4

    .line 1
    iget-object v0, p0, Lo4/g;->o:Lo4/g$c;

    iget v1, v0, Lo4/g$c;->k:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_10

    .line 2
    iput p1, v0, Lo4/g$c;->k:F

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lo4/g;->s:Z

    .line 4
    invoke-virtual {p0}, Lo4/g;->invalidateSelf()V

    :cond_10
    return-void
.end method

.method public Y(IIII)V
    .registers 7

    .line 1
    iget-object v0, p0, Lo4/g;->o:Lo4/g$c;

    iget-object v1, v0, Lo4/g$c;->i:Landroid/graphics/Rect;

    if-nez v1, :cond_d

    .line 2
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lo4/g$c;->i:Landroid/graphics/Rect;

    .line 3
    :cond_d
    iget-object v0, p0, Lo4/g;->o:Lo4/g$c;

    iget-object v0, v0, Lo4/g$c;->i:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 4
    invoke-virtual {p0}, Lo4/g;->invalidateSelf()V

    return-void
.end method

.method public Z(F)V
    .registers 4

    .line 1
    iget-object v0, p0, Lo4/g;->o:Lo4/g$c;

    iget v1, v0, Lo4/g$c;->n:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_d

    .line 2
    iput p1, v0, Lo4/g$c;->n:F

    .line 3
    invoke-direct {p0}, Lo4/g;->h0()V

    :cond_d
    return-void
.end method

.method public a0(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lo4/g;->o:Lo4/g$c;

    iget v1, v0, Lo4/g$c;->t:I

    if-eq v1, p1, :cond_b

    .line 2
    iput p1, v0, Lo4/g$c;->t:I

    .line 3
    invoke-direct {p0}, Lo4/g;->N()V

    :cond_b
    return-void
.end method

.method public b0(FI)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lo4/g;->e0(F)V

    .line 2
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo4/g;->d0(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public c0(FLandroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lo4/g;->e0(F)V

    .line 2
    invoke-virtual {p0, p2}, Lo4/g;->d0(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public d0(Landroid/content/res/ColorStateList;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lo4/g;->o:Lo4/g$c;

    iget-object v1, v0, Lo4/g$c;->e:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_f

    .line 2
    iput-object p1, v0, Lo4/g$c;->e:Landroid/content/res/ColorStateList;

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lo4/g;->onStateChange([I)Z

    :cond_f
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lo4/g;->B:Landroid/graphics/Paint;

    iget-object v1, p0, Lo4/g;->G:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 2
    iget-object v0, p0, Lo4/g;->B:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 3
    iget-object v1, p0, Lo4/g;->B:Landroid/graphics/Paint;

    iget-object v2, p0, Lo4/g;->o:Lo4/g$c;

    iget v2, v2, Lo4/g$c;->m:I

    invoke-static {v0, v2}, Lo4/g;->R(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4
    iget-object v1, p0, Lo4/g;->C:Landroid/graphics/Paint;

    iget-object v2, p0, Lo4/g;->H:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 5
    iget-object v1, p0, Lo4/g;->C:Landroid/graphics/Paint;

    iget-object v2, p0, Lo4/g;->o:Lo4/g$c;

    iget v2, v2, Lo4/g$c;->l:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 6
    iget-object v1, p0, Lo4/g;->C:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    .line 7
    iget-object v2, p0, Lo4/g;->C:Landroid/graphics/Paint;

    iget-object v3, p0, Lo4/g;->o:Lo4/g$c;

    iget v3, v3, Lo4/g$c;->m:I

    invoke-static {v1, v3}, Lo4/g;->R(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 8
    iget-boolean v2, p0, Lo4/g;->s:Z

    if-eqz v2, :cond_50

    .line 9
    invoke-direct {p0}, Lo4/g;->i()V

    .line 10
    invoke-virtual {p0}, Lo4/g;->u()Landroid/graphics/RectF;

    move-result-object v2

    iget-object v3, p0, Lo4/g;->u:Landroid/graphics/Path;

    invoke-direct {p0, v2, v3}, Lo4/g;->g(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    const/4 v2, 0x0

    .line 11
    iput-boolean v2, p0, Lo4/g;->s:Z

    .line 12
    :cond_50
    invoke-direct {p0, p1}, Lo4/g;->Q(Landroid/graphics/Canvas;)V

    .line 13
    invoke-direct {p0}, Lo4/g;->K()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 14
    invoke-direct {p0, p1}, Lo4/g;->o(Landroid/graphics/Canvas;)V

    .line 15
    :cond_5c
    invoke-direct {p0}, Lo4/g;->L()Z

    move-result v2

    if-eqz v2, :cond_65

    .line 16
    invoke-direct {p0, p1}, Lo4/g;->r(Landroid/graphics/Canvas;)V

    .line 17
    :cond_65
    iget-object p1, p0, Lo4/g;->B:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 18
    iget-object p1, p0, Lo4/g;->C:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public e0(F)V
    .registers 3

    .line 1
    iget-object v0, p0, Lo4/g;->o:Lo4/g$c;

    iput p1, v0, Lo4/g$c;->l:F

    .line 2
    invoke-virtual {p0}, Lo4/g;->invalidateSelf()V

    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 2

    .line 1
    iget-object v0, p0, Lo4/g;->o:Lo4/g$c;

    return-object v0
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x3

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    iget-object v0, p0, Lo4/g;->o:Lo4/g$c;

    iget v0, v0, Lo4/g$c;->q:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    return-void

    .line 2
    :cond_8
    invoke-virtual {p0}, Lo4/g;->P()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 3
    invoke-virtual {p0}, Lo4/g;->F()F

    move-result v0

    iget-object v1, p0, Lo4/g;->o:Lo4/g$c;

    iget v1, v1, Lo4/g$c;->k:F

    mul-float v0, v0, v1

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void

    .line 5
    :cond_20
    invoke-virtual {p0}, Lo4/g;->u()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lo4/g;->u:Landroid/graphics/Path;

    invoke-direct {p0, v0, v1}, Lo4/g;->g(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 6
    iget-object v0, p0, Lo4/g;->u:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isConvex()Z

    move-result v0

    if-nez v0, :cond_37

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_3c

    .line 7
    :cond_37
    :try_start_37
    iget-object v0, p0, Lo4/g;->u:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V
    :try_end_3c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_37 .. :try_end_3c} :catch_3c

    :catch_3c
    :cond_3c
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lo4/g;->o:Lo4/g$c;

    iget-object v0, v0, Lo4/g$c;->i:Landroid/graphics/Rect;

    if-eqz v0, :cond_b

    .line 2
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_b
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lo4/g;->y:Landroid/graphics/Region;

    invoke-virtual {v1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 3
    invoke-virtual {p0}, Lo4/g;->u()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lo4/g;->u:Landroid/graphics/Path;

    invoke-direct {p0, v0, v1}, Lo4/g;->g(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 4
    iget-object v0, p0, Lo4/g;->z:Landroid/graphics/Region;

    iget-object v1, p0, Lo4/g;->u:Landroid/graphics/Path;

    iget-object v2, p0, Lo4/g;->y:Landroid/graphics/Region;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 5
    iget-object v0, p0, Lo4/g;->y:Landroid/graphics/Region;

    iget-object v1, p0, Lo4/g;->z:Landroid/graphics/Region;

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 6
    iget-object v0, p0, Lo4/g;->y:Landroid/graphics/Region;

    return-object v0
.end method

.method protected final h(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lo4/g;->F:Lo4/l;

    iget-object v1, p0, Lo4/g;->o:Lo4/g$c;

    iget-object v2, v1, Lo4/g$c;->a:Lo4/k;

    iget v3, v1, Lo4/g$c;->k:F

    iget-object v4, p0, Lo4/g;->E:Lo4/l$b;

    move-object v1, v2

    move v2, v3

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lo4/l;->e(Lo4/k;FLandroid/graphics/RectF;Lo4/l$b;Landroid/graphics/Path;)V

    return-void
.end method

.method public invalidateSelf()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lo4/g;->s:Z

    .line 2
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public isStateful()Z
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lo4/g;->o:Lo4/g$c;

    iget-object v0, v0, Lo4/g$c;->g:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_12

    .line 2
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_39

    :cond_12
    iget-object v0, p0, Lo4/g;->o:Lo4/g$c;

    iget-object v0, v0, Lo4/g$c;->f:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1e

    .line 3
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_39

    :cond_1e
    iget-object v0, p0, Lo4/g;->o:Lo4/g$c;

    iget-object v0, v0, Lo4/g$c;->e:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2a

    .line 4
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_39

    :cond_2a
    iget-object v0, p0, Lo4/g;->o:Lo4/g$c;

    iget-object v0, v0, Lo4/g$c;->d:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_37

    .line 5
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_37

    goto :goto_39

    :cond_37
    const/4 v0, 0x0

    goto :goto_3a

    :cond_39
    :goto_39
    const/4 v0, 0x1

    :goto_3a
    return v0
.end method

.method protected l(I)I
    .registers 4

    .line 1
    invoke-virtual {p0}, Lo4/g;->I()F

    move-result v0

    invoke-virtual {p0}, Lo4/g;->y()F

    move-result v1

    add-float/2addr v0, v1

    .line 2
    iget-object v1, p0, Lo4/g;->o:Lo4/g$c;

    iget-object v1, v1, Lo4/g$c;->b:Lh4/a;

    if-eqz v1, :cond_13

    .line 3
    invoke-virtual {v1, p1, v0}, Lh4/a;->c(IF)I

    move-result p1

    :cond_13
    return p1
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1
    new-instance v0, Lo4/g$c;

    iget-object v1, p0, Lo4/g;->o:Lo4/g$c;

    invoke-direct {v0, v1}, Lo4/g$c;-><init>(Lo4/g$c;)V

    .line 2
    iput-object v0, p0, Lo4/g;->o:Lo4/g$c;

    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lo4/g;->s:Z

    .line 2
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected onStateChange([I)Z
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lo4/g;->f0([I)Z

    move-result p1

    .line 2
    invoke-direct {p0}, Lo4/g;->g0()Z

    move-result v0

    if-nez p1, :cond_f

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    if-eqz p1, :cond_15

    .line 3
    invoke-virtual {p0}, Lo4/g;->invalidateSelf()V

    :cond_15
    return p1
.end method

.method protected p(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Landroid/graphics/RectF;)V
    .registers 12

    .line 1
    iget-object v0, p0, Lo4/g;->o:Lo4/g$c;

    iget-object v5, v0, Lo4/g$c;->a:Lo4/k;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lo4/g;->q(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lo4/k;Landroid/graphics/RectF;)V

    return-void
.end method

.method public s()F
    .registers 3

    .line 1
    iget-object v0, p0, Lo4/g;->o:Lo4/g$c;

    iget-object v0, v0, Lo4/g$c;->a:Lo4/k;

    .line 2
    invoke-virtual {v0}, Lo4/k;->j()Lo4/c;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lo4/g;->u()Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Lo4/c;->a(Landroid/graphics/RectF;)F

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lo4/g;->o:Lo4/g$c;

    iget v1, v0, Lo4/g$c;->m:I

    if-eq v1, p1, :cond_b

    .line 2
    iput p1, v0, Lo4/g$c;->m:I

    .line 3
    invoke-direct {p0}, Lo4/g;->N()V

    :cond_b
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lo4/g;->o:Lo4/g$c;

    iput-object p1, v0, Lo4/g$c;->c:Landroid/graphics/ColorFilter;

    .line 2
    invoke-direct {p0}, Lo4/g;->N()V

    return-void
.end method

.method public setShapeAppearanceModel(Lo4/k;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lo4/g;->o:Lo4/g$c;

    iput-object p1, v0, Lo4/g$c;->a:Lo4/k;

    .line 2
    invoke-virtual {p0}, Lo4/g;->invalidateSelf()V

    return-void
.end method

.method public setTint(I)V
    .registers 2

    .line 1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo4/g;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lo4/g;->o:Lo4/g$c;

    iput-object p1, v0, Lo4/g$c;->g:Landroid/content/res/ColorStateList;

    .line 2
    invoke-direct {p0}, Lo4/g;->g0()Z

    .line 3
    invoke-direct {p0}, Lo4/g;->N()V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lo4/g;->o:Lo4/g$c;

    iget-object v1, v0, Lo4/g$c;->h:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_e

    .line 2
    iput-object p1, v0, Lo4/g$c;->h:Landroid/graphics/PorterDuff$Mode;

    .line 3
    invoke-direct {p0}, Lo4/g;->g0()Z

    .line 4
    invoke-direct {p0}, Lo4/g;->N()V

    :cond_e
    return-void
.end method

.method public t()F
    .registers 3

    .line 1
    iget-object v0, p0, Lo4/g;->o:Lo4/g$c;

    iget-object v0, v0, Lo4/g$c;->a:Lo4/k;

    .line 2
    invoke-virtual {v0}, Lo4/k;->l()Lo4/c;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lo4/g;->u()Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Lo4/c;->a(Landroid/graphics/RectF;)F

    move-result v0

    return v0
.end method

.method protected u()Landroid/graphics/RectF;
    .registers 3

    .line 1
    iget-object v0, p0, Lo4/g;->w:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 2
    iget-object v0, p0, Lo4/g;->w:Landroid/graphics/RectF;

    return-object v0
.end method

.method public w()F
    .registers 2

    .line 1
    iget-object v0, p0, Lo4/g;->o:Lo4/g$c;

    iget v0, v0, Lo4/g$c;->o:F

    return v0
.end method

.method public x()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Lo4/g;->o:Lo4/g$c;

    iget-object v0, v0, Lo4/g$c;->d:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public y()F
    .registers 2

    .line 1
    iget-object v0, p0, Lo4/g;->o:Lo4/g$c;

    iget v0, v0, Lo4/g$c;->n:F

    return v0
.end method

.method public z()I
    .registers 6

    .line 1
    iget-object v0, p0, Lo4/g;->o:Lo4/g$c;

    iget v1, v0, Lo4/g$c;->s:I

    int-to-double v1, v1

    iget v0, v0, Lo4/g$c;->t:I

    int-to-double v3, v0

    .line 2
    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-int v0, v1

    return v0
.end method

###### Class o4.g.a (o4.g$a)
.class Lo4/g$a;
.super Ljava/lang/Object;
.source "MaterialShapeDrawable.java"

# interfaces
.implements Lo4/l$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo4/g;-><init>(Lo4/g$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo4/g;


# direct methods
.method constructor <init>(Lo4/g;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lo4/g$a;->a:Lo4/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo4/m;Landroid/graphics/Matrix;I)V
    .registers 7

    .line 1
    iget-object v0, p0, Lo4/g$a;->a:Lo4/g;

    invoke-static {v0}, Lo4/g;->b(Lo4/g;)Ljava/util/BitSet;

    move-result-object v0

    add-int/lit8 v1, p3, 0x4

    invoke-virtual {p1}, Lo4/m;->e()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 2
    iget-object v0, p0, Lo4/g$a;->a:Lo4/g;

    invoke-static {v0}, Lo4/g;->d(Lo4/g;)[Lo4/m$g;

    move-result-object v0

    invoke-virtual {p1, p2}, Lo4/m;->f(Landroid/graphics/Matrix;)Lo4/m$g;

    move-result-object p1

    aput-object p1, v0, p3

    return-void
.end method

.method public b(Lo4/m;Landroid/graphics/Matrix;I)V
    .registers 6

    .line 1
    iget-object v0, p0, Lo4/g$a;->a:Lo4/g;

    invoke-static {v0}, Lo4/g;->b(Lo4/g;)Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {p1}, Lo4/m;->e()Z

    move-result v1

    invoke-virtual {v0, p3, v1}, Ljava/util/BitSet;->set(IZ)V

    .line 2
    iget-object v0, p0, Lo4/g$a;->a:Lo4/g;

    invoke-static {v0}, Lo4/g;->c(Lo4/g;)[Lo4/m$g;

    move-result-object v0

    invoke-virtual {p1, p2}, Lo4/m;->f(Landroid/graphics/Matrix;)Lo4/m$g;

    move-result-object p1

    aput-object p1, v0, p3

    return-void
.end method

###### Class o4.g.b (o4.g$b)
.class Lo4/g$b;
.super Ljava/lang/Object;
.source "MaterialShapeDrawable.java"

# interfaces
.implements Lo4/k$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo4/g;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Lo4/g;


# direct methods
.method constructor <init>(Lo4/g;F)V
    .registers 3

    .line 1
    iput-object p1, p0, Lo4/g$b;->b:Lo4/g;

    iput p2, p0, Lo4/g$b;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo4/c;)Lo4/c;
    .registers 4

    .line 1
    instance-of v0, p1, Lo4/i;

    if-eqz v0, :cond_5

    goto :goto_d

    :cond_5
    new-instance v0, Lo4/b;

    iget v1, p0, Lo4/g$b;->a:F

    invoke-direct {v0, v1, p1}, Lo4/b;-><init>(FLo4/c;)V

    move-object p1, v0

    :goto_d
    return-object p1
.end method

###### Class o4.g.c (o4.g$c)
.class final Lo4/g$c;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "MaterialShapeDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo4/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field public a:Lo4/k;

.field public b:Lh4/a;

.field public c:Landroid/graphics/ColorFilter;

.field public d:Landroid/content/res/ColorStateList;

.field public e:Landroid/content/res/ColorStateList;

.field public f:Landroid/content/res/ColorStateList;

.field public g:Landroid/content/res/ColorStateList;

.field public h:Landroid/graphics/PorterDuff$Mode;

.field public i:Landroid/graphics/Rect;

.field public j:F

.field public k:F

.field public l:F

.field public m:I

.field public n:F

.field public o:F

.field public p:F

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:Z

.field public v:Landroid/graphics/Paint$Style;


# direct methods
.method public constructor <init>(Lo4/g$c;)V
    .registers 4

    .line 22
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lo4/g$c;->d:Landroid/content/res/ColorStateList;

    .line 24
    iput-object v0, p0, Lo4/g$c;->e:Landroid/content/res/ColorStateList;

    .line 25
    iput-object v0, p0, Lo4/g$c;->f:Landroid/content/res/ColorStateList;

    .line 26
    iput-object v0, p0, Lo4/g$c;->g:Landroid/content/res/ColorStateList;

    .line 27
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v1, p0, Lo4/g$c;->h:Landroid/graphics/PorterDuff$Mode;

    .line 28
    iput-object v0, p0, Lo4/g$c;->i:Landroid/graphics/Rect;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 29
    iput v0, p0, Lo4/g$c;->j:F

    .line 30
    iput v0, p0, Lo4/g$c;->k:F

    const/16 v0, 0xff

    .line 31
    iput v0, p0, Lo4/g$c;->m:I

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lo4/g$c;->n:F

    .line 33
    iput v0, p0, Lo4/g$c;->o:F

    .line 34
    iput v0, p0, Lo4/g$c;->p:F

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lo4/g$c;->q:I

    .line 36
    iput v0, p0, Lo4/g$c;->r:I

    .line 37
    iput v0, p0, Lo4/g$c;->s:I

    .line 38
    iput v0, p0, Lo4/g$c;->t:I

    .line 39
    iput-boolean v0, p0, Lo4/g$c;->u:Z

    .line 40
    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    iput-object v0, p0, Lo4/g$c;->v:Landroid/graphics/Paint$Style;

    .line 41
    iget-object v0, p1, Lo4/g$c;->a:Lo4/k;

    iput-object v0, p0, Lo4/g$c;->a:Lo4/k;

    .line 42
    iget-object v0, p1, Lo4/g$c;->b:Lh4/a;

    iput-object v0, p0, Lo4/g$c;->b:Lh4/a;

    .line 43
    iget v0, p1, Lo4/g$c;->l:F

    iput v0, p0, Lo4/g$c;->l:F

    .line 44
    iget-object v0, p1, Lo4/g$c;->c:Landroid/graphics/ColorFilter;

    iput-object v0, p0, Lo4/g$c;->c:Landroid/graphics/ColorFilter;

    .line 45
    iget-object v0, p1, Lo4/g$c;->d:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lo4/g$c;->d:Landroid/content/res/ColorStateList;

    .line 46
    iget-object v0, p1, Lo4/g$c;->e:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lo4/g$c;->e:Landroid/content/res/ColorStateList;

    .line 47
    iget-object v0, p1, Lo4/g$c;->h:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lo4/g$c;->h:Landroid/graphics/PorterDuff$Mode;

    .line 48
    iget-object v0, p1, Lo4/g$c;->g:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lo4/g$c;->g:Landroid/content/res/ColorStateList;

    .line 49
    iget v0, p1, Lo4/g$c;->m:I

    iput v0, p0, Lo4/g$c;->m:I

    .line 50
    iget v0, p1, Lo4/g$c;->j:F

    iput v0, p0, Lo4/g$c;->j:F

    .line 51
    iget v0, p1, Lo4/g$c;->s:I

    iput v0, p0, Lo4/g$c;->s:I

    .line 52
    iget v0, p1, Lo4/g$c;->q:I

    iput v0, p0, Lo4/g$c;->q:I

    .line 53
    iget-boolean v0, p1, Lo4/g$c;->u:Z

    iput-boolean v0, p0, Lo4/g$c;->u:Z

    .line 54
    iget v0, p1, Lo4/g$c;->k:F

    iput v0, p0, Lo4/g$c;->k:F

    .line 55
    iget v0, p1, Lo4/g$c;->n:F

    iput v0, p0, Lo4/g$c;->n:F

    .line 56
    iget v0, p1, Lo4/g$c;->o:F

    iput v0, p0, Lo4/g$c;->o:F

    .line 57
    iget v0, p1, Lo4/g$c;->p:F

    iput v0, p0, Lo4/g$c;->p:F

    .line 58
    iget v0, p1, Lo4/g$c;->r:I

    iput v0, p0, Lo4/g$c;->r:I

    .line 59
    iget v0, p1, Lo4/g$c;->t:I

    iput v0, p0, Lo4/g$c;->t:I

    .line 60
    iget-object v0, p1, Lo4/g$c;->f:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lo4/g$c;->f:Landroid/content/res/ColorStateList;

    .line 61
    iget-object v0, p1, Lo4/g$c;->v:Landroid/graphics/Paint$Style;

    iput-object v0, p0, Lo4/g$c;->v:Landroid/graphics/Paint$Style;

    .line 62
    iget-object v0, p1, Lo4/g$c;->i:Landroid/graphics/Rect;

    if-eqz v0, :cond_93

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    iget-object p1, p1, Lo4/g$c;->i:Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lo4/g$c;->i:Landroid/graphics/Rect;

    :cond_93
    return-void
.end method

.method public constructor <init>(Lo4/k;Lh4/a;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lo4/g$c;->d:Landroid/content/res/ColorStateList;

    .line 3
    iput-object v0, p0, Lo4/g$c;->e:Landroid/content/res/ColorStateList;

    .line 4
    iput-object v0, p0, Lo4/g$c;->f:Landroid/content/res/ColorStateList;

    .line 5
    iput-object v0, p0, Lo4/g$c;->g:Landroid/content/res/ColorStateList;

    .line 6
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v1, p0, Lo4/g$c;->h:Landroid/graphics/PorterDuff$Mode;

    .line 7
    iput-object v0, p0, Lo4/g$c;->i:Landroid/graphics/Rect;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 8
    iput v0, p0, Lo4/g$c;->j:F

    .line 9
    iput v0, p0, Lo4/g$c;->k:F

    const/16 v0, 0xff

    .line 10
    iput v0, p0, Lo4/g$c;->m:I

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lo4/g$c;->n:F

    .line 12
    iput v0, p0, Lo4/g$c;->o:F

    .line 13
    iput v0, p0, Lo4/g$c;->p:F

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lo4/g$c;->q:I

    .line 15
    iput v0, p0, Lo4/g$c;->r:I

    .line 16
    iput v0, p0, Lo4/g$c;->s:I

    .line 17
    iput v0, p0, Lo4/g$c;->t:I

    .line 18
    iput-boolean v0, p0, Lo4/g$c;->u:Z

    .line 19
    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    iput-object v0, p0, Lo4/g$c;->v:Landroid/graphics/Paint$Style;

    .line 20
    iput-object p1, p0, Lo4/g$c;->a:Lo4/k;

    .line 21
    iput-object p2, p0, Lo4/g$c;->b:Lh4/a;

    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1
    new-instance v0, Lo4/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo4/g;-><init>(Lo4/g$c;Lo4/g$a;)V

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1}, Lo4/g;->e(Lo4/g;Z)Z

    return-object v0
.end method
