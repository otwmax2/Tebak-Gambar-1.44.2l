###### Class l4.d (l4.d)
.class public Ll4/d;
.super Ljava/lang/Object;
.source "TextAppearance.java"


# instance fields
.field public final a:Landroid/content/res/ColorStateList;

.field public final b:Landroid/content/res/ColorStateList;

.field public final c:Landroid/content/res/ColorStateList;

.field public final d:Landroid/content/res/ColorStateList;

.field public final e:Ljava/lang/String;

.field public final f:I

.field public final g:I

.field public final h:Z

.field public final i:F

.field public final j:F

.field public final k:F

.field public final l:Z

.field public final m:F

.field public n:F

.field private final o:I

.field private p:Z

.field private q:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ll4/d;->p:Z

    .line 3
    sget-object v1, Ly3/k;->e4:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 4
    sget v2, Ly3/k;->f4:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Ll4/d;->n:F

    .line 5
    sget v2, Ly3/k;->i4:I

    .line 6
    invoke-static {p1, v1, v2}, Ll4/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Ll4/d;->a:Landroid/content/res/ColorStateList;

    .line 7
    sget v2, Ly3/k;->j4:I

    .line 8
    invoke-static {p1, v1, v2}, Ll4/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Ll4/d;->b:Landroid/content/res/ColorStateList;

    .line 9
    sget v2, Ly3/k;->k4:I

    .line 10
    invoke-static {p1, v1, v2}, Ll4/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Ll4/d;->c:Landroid/content/res/ColorStateList;

    .line 11
    sget v2, Ly3/k;->h4:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Ll4/d;->f:I

    .line 12
    sget v2, Ly3/k;->g4:I

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Ll4/d;->g:I

    .line 13
    sget v2, Ly3/k;->q4:I

    sget v4, Ly3/k;->p4:I

    .line 14
    invoke-static {v1, v2, v4}, Ll4/c;->e(Landroid/content/res/TypedArray;II)I

    move-result v2

    .line 15
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Ll4/d;->o:I

    .line 16
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ll4/d;->e:Ljava/lang/String;

    .line 17
    sget v2, Ly3/k;->r4:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Ll4/d;->h:Z

    .line 18
    sget v2, Ly3/k;->l4:I

    .line 19
    invoke-static {p1, v1, v2}, Ll4/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Ll4/d;->d:Landroid/content/res/ColorStateList;

    .line 20
    sget v2, Ly3/k;->m4:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Ll4/d;->i:F

    .line 21
    sget v2, Ly3/k;->n4:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Ll4/d;->j:F

    .line 22
    sget v2, Ly3/k;->o4:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Ll4/d;->k:F

    .line 23
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 24
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_9b

    .line 25
    sget-object v0, Ly3/k;->P2:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 26
    sget p2, Ly3/k;->Q2:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    iput-boolean v0, p0, Ll4/d;->l:Z

    .line 27
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Ll4/d;->m:F

    .line 28
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_9f

    .line 29
    :cond_9b
    iput-boolean v0, p0, Ll4/d;->l:Z

    .line 30
    iput v3, p0, Ll4/d;->m:F

    :goto_9f
    return-void
.end method

.method static synthetic a(Ll4/d;)Landroid/graphics/Typeface;
    .registers 1

    .line 1
    iget-object p0, p0, Ll4/d;->q:Landroid/graphics/Typeface;

    return-object p0
.end method

.method static synthetic b(Ll4/d;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .registers 2

    .line 1
    iput-object p1, p0, Ll4/d;->q:Landroid/graphics/Typeface;

    return-object p1
.end method

.method static synthetic c(Ll4/d;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Ll4/d;->p:Z

    return p1
.end method

.method private d()V
    .registers 3

    .line 1
    iget-object v0, p0, Ll4/d;->q:Landroid/graphics/Typeface;

    if-nez v0, :cond_10

    iget-object v0, p0, Ll4/d;->e:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 2
    iget v1, p0, Ll4/d;->f:I

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Ll4/d;->q:Landroid/graphics/Typeface;

    .line 3
    :cond_10
    iget-object v0, p0, Ll4/d;->q:Landroid/graphics/Typeface;

    if-nez v0, :cond_3c

    .line 4
    iget v0, p0, Ll4/d;->g:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_29

    const/4 v1, 0x3

    if-eq v0, v1, :cond_24

    .line 5
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, Ll4/d;->q:Landroid/graphics/Typeface;

    goto :goto_32

    .line 6
    :cond_24
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object v0, p0, Ll4/d;->q:Landroid/graphics/Typeface;

    goto :goto_32

    .line 7
    :cond_29
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    iput-object v0, p0, Ll4/d;->q:Landroid/graphics/Typeface;

    goto :goto_32

    .line 8
    :cond_2e
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iput-object v0, p0, Ll4/d;->q:Landroid/graphics/Typeface;

    .line 9
    :goto_32
    iget-object v0, p0, Ll4/d;->q:Landroid/graphics/Typeface;

    iget v1, p0, Ll4/d;->f:I

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Ll4/d;->q:Landroid/graphics/Typeface;

    :cond_3c
    return-void
.end method

.method private i(Landroid/content/Context;)Z
    .registers 2

    .line 1
    invoke-static {}, Ll4/e;->a()Z

    move-result p1

    return p1
.end method


# virtual methods
.method public e()Landroid/graphics/Typeface;
    .registers 2

    .line 1
    invoke-direct {p0}, Ll4/d;->d()V

    .line 2
    iget-object v0, p0, Ll4/d;->q:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public f(Landroid/content/Context;)Landroid/graphics/Typeface;
    .registers 4

    .line 1
    iget-boolean v0, p0, Ll4/d;->p:Z

    if-eqz v0, :cond_7

    .line 2
    iget-object p1, p0, Ll4/d;->q:Landroid/graphics/Typeface;

    return-object p1

    .line 3
    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_39

    .line 4
    :try_start_d
    iget v0, p0, Ll4/d;->o:I

    invoke-static {p1, v0}, Landroidx/core/content/res/h;->f(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Ll4/d;->q:Landroid/graphics/Typeface;

    if-eqz p1, :cond_39

    .line 5
    iget v0, p0, Ll4/d;->f:I

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Ll4/d;->q:Landroid/graphics/Typeface;
    :try_end_1f
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_d .. :try_end_1f} :catch_39
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_1f} :catch_39
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1f} :catch_20

    goto :goto_39

    :catch_20
    move-exception p1

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error loading font "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ll4/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextAppearance"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7
    :catch_39
    :cond_39
    :goto_39
    invoke-direct {p0}, Ll4/d;->d()V

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Ll4/d;->p:Z

    .line 9
    iget-object p1, p0, Ll4/d;->q:Landroid/graphics/Typeface;

    return-object p1
.end method

.method public g(Landroid/content/Context;Landroid/text/TextPaint;Ll4/f;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Ll4/d;->e()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Ll4/d;->l(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    .line 2
    new-instance v0, Ll4/d$b;

    invoke-direct {v0, p0, p2, p3}, Ll4/d$b;-><init>(Ll4/d;Landroid/text/TextPaint;Ll4/f;)V

    invoke-virtual {p0, p1, v0}, Ll4/d;->h(Landroid/content/Context;Ll4/f;)V

    return-void
.end method

.method public h(Landroid/content/Context;Ll4/f;)V
    .registers 7

    .line 1
    invoke-direct {p0, p1}, Ll4/d;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2
    invoke-virtual {p0, p1}, Ll4/d;->f(Landroid/content/Context;)Landroid/graphics/Typeface;

    goto :goto_d

    .line 3
    :cond_a
    invoke-direct {p0}, Ll4/d;->d()V

    .line 4
    :goto_d
    iget v0, p0, Ll4/d;->o:I

    const/4 v1, 0x1

    if-nez v0, :cond_14

    .line 5
    iput-boolean v1, p0, Ll4/d;->p:Z

    .line 6
    :cond_14
    iget-boolean v2, p0, Ll4/d;->p:Z

    if-eqz v2, :cond_1e

    .line 7
    iget-object p1, p0, Ll4/d;->q:Landroid/graphics/Typeface;

    invoke-virtual {p2, p1, v1}, Ll4/f;->b(Landroid/graphics/Typeface;Z)V

    return-void

    .line 8
    :cond_1e
    :try_start_1e
    new-instance v2, Ll4/d$a;

    invoke-direct {v2, p0, p2}, Ll4/d$a;-><init>(Ll4/d;Ll4/f;)V

    const/4 v3, 0x0

    invoke-static {p1, v0, v2, v3}, Landroidx/core/content/res/h;->h(Landroid/content/Context;ILandroidx/core/content/res/h$f;Landroid/os/Handler;)V
    :try_end_27
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1e .. :try_end_27} :catch_48
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_27} :catch_28

    goto :goto_4d

    :catch_28
    move-exception p1

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error loading font "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ll4/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TextAppearance"

    invoke-static {v2, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10
    iput-boolean v1, p0, Ll4/d;->p:Z

    const/4 p1, -0x3

    .line 11
    invoke-virtual {p2, p1}, Ll4/f;->a(I)V

    goto :goto_4d

    .line 12
    :catch_48
    iput-boolean v1, p0, Ll4/d;->p:Z

    .line 13
    invoke-virtual {p2, v1}, Ll4/f;->a(I)V

    :goto_4d
    return-void
.end method

.method public j(Landroid/content/Context;Landroid/text/TextPaint;Ll4/f;)V
    .registers 8

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Ll4/d;->k(Landroid/content/Context;Landroid/text/TextPaint;Ll4/f;)V

    .line 2
    iget-object p1, p0, Ll4/d;->a:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_12

    iget-object p3, p2, Landroid/text/TextPaint;->drawableState:[I

    .line 3
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {p1, p3, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    goto :goto_14

    :cond_12
    const/high16 p1, -0x1000000

    .line 4
    :goto_14
    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 5
    iget p1, p0, Ll4/d;->k:F

    iget p3, p0, Ll4/d;->i:F

    iget v0, p0, Ll4/d;->j:F

    iget-object v1, p0, Ll4/d;->d:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_2c

    iget-object v2, p2, Landroid/text/TextPaint;->drawableState:[I

    .line 6
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_2d

    :cond_2c
    const/4 v1, 0x0

    .line 7
    :goto_2d
    invoke-virtual {p2, p1, p3, v0, v1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    return-void
.end method

.method public k(Landroid/content/Context;Landroid/text/TextPaint;Ll4/f;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Ll4/d;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2
    invoke-virtual {p0, p1}, Ll4/d;->f(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Ll4/d;->l(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    goto :goto_11

    .line 3
    :cond_e
    invoke-virtual {p0, p1, p2, p3}, Ll4/d;->g(Landroid/content/Context;Landroid/text/TextPaint;Ll4/f;)V

    :goto_11
    return-void
.end method

.method public l(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V
    .registers 4

    .line 1
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2
    iget v0, p0, Ll4/d;->f:I

    invoke-virtual {p2}, Landroid/graphics/Typeface;->getStyle()I

    move-result p2

    xor-int/lit8 p2, p2, -0x1

    and-int/2addr p2, v0

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 3
    :goto_13
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1d

    const/high16 p2, -0x41800000    # -0.25f

    goto :goto_1e

    :cond_1d
    const/4 p2, 0x0

    .line 4
    :goto_1e
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 5
    iget p2, p0, Ll4/d;->n:F

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 6
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p2, v0, :cond_35

    .line 7
    iget-boolean p2, p0, Ll4/d;->l:Z

    if-eqz p2, :cond_35

    .line 8
    iget p2, p0, Ll4/d;->m:F

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    :cond_35
    return-void
.end method

###### Class l4.d.a (l4.d$a)
.class Ll4/d$a;
.super Landroidx/core/content/res/h$f;
.source "TextAppearance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll4/d;->h(Landroid/content/Context;Ll4/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ll4/f;

.field final synthetic b:Ll4/d;


# direct methods
.method constructor <init>(Ll4/d;Ll4/f;)V
    .registers 3

    .line 1
    iput-object p1, p0, Ll4/d$a;->b:Ll4/d;

    iput-object p2, p0, Ll4/d$a;->a:Ll4/f;

    invoke-direct {p0}, Landroidx/core/content/res/h$f;-><init>()V

    return-void
.end method


# virtual methods
.method public h(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Ll4/d$a;->b:Ll4/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ll4/d;->c(Ll4/d;Z)Z

    .line 2
    iget-object v0, p0, Ll4/d$a;->a:Ll4/f;

    invoke-virtual {v0, p1}, Ll4/f;->a(I)V

    return-void
.end method

.method public i(Landroid/graphics/Typeface;)V
    .registers 4

    .line 1
    iget-object v0, p0, Ll4/d$a;->b:Ll4/d;

    iget v1, v0, Ll4/d;->f:I

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-static {v0, p1}, Ll4/d;->b(Ll4/d;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2
    iget-object p1, p0, Ll4/d$a;->b:Ll4/d;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ll4/d;->c(Ll4/d;Z)Z

    .line 3
    iget-object p1, p0, Ll4/d$a;->a:Ll4/f;

    iget-object v0, p0, Ll4/d$a;->b:Ll4/d;

    invoke-static {v0}, Ll4/d;->a(Ll4/d;)Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ll4/f;->b(Landroid/graphics/Typeface;Z)V

    return-void
.end method

###### Class l4.d.b (l4.d$b)
.class Ll4/d$b;
.super Ll4/f;
.source "TextAppearance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll4/d;->g(Landroid/content/Context;Landroid/text/TextPaint;Ll4/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/text/TextPaint;

.field final synthetic b:Ll4/f;

.field final synthetic c:Ll4/d;


# direct methods
.method constructor <init>(Ll4/d;Landroid/text/TextPaint;Ll4/f;)V
    .registers 4

    .line 1
    iput-object p1, p0, Ll4/d$b;->c:Ll4/d;

    iput-object p2, p0, Ll4/d$b;->a:Landroid/text/TextPaint;

    iput-object p3, p0, Ll4/d$b;->b:Ll4/f;

    invoke-direct {p0}, Ll4/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Ll4/d$b;->b:Ll4/f;

    invoke-virtual {v0, p1}, Ll4/f;->a(I)V

    return-void
.end method

.method public b(Landroid/graphics/Typeface;Z)V
    .registers 5

    .line 1
    iget-object v0, p0, Ll4/d$b;->c:Ll4/d;

    iget-object v1, p0, Ll4/d$b;->a:Landroid/text/TextPaint;

    invoke-virtual {v0, v1, p1}, Ll4/d;->l(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    .line 2
    iget-object v0, p0, Ll4/d$b;->b:Ll4/f;

    invoke-virtual {v0, p1, p2}, Ll4/f;->b(Landroid/graphics/Typeface;Z)V

    return-void
.end method
