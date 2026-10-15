###### Class o4.k (o4.k)
.class public Lo4/k;
.super Ljava/lang/Object;
.source "ShapeAppearanceModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo4/k$c;,
        Lo4/k$b;
    }
.end annotation


# static fields
.field public static final m:Lo4/c;


# instance fields
.field a:Lo4/d;

.field b:Lo4/d;

.field c:Lo4/d;

.field d:Lo4/d;

.field e:Lo4/c;

.field f:Lo4/c;

.field g:Lo4/c;

.field h:Lo4/c;

.field i:Lo4/f;

.field j:Lo4/f;

.field k:Lo4/f;

.field l:Lo4/f;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lo4/i;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1}, Lo4/i;-><init>(F)V

    sput-object v0, Lo4/k;->m:Lo4/c;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Lo4/h;->b()Lo4/d;

    move-result-object v0

    iput-object v0, p0, Lo4/k;->a:Lo4/d;

    .line 17
    invoke-static {}, Lo4/h;->b()Lo4/d;

    move-result-object v0

    iput-object v0, p0, Lo4/k;->b:Lo4/d;

    .line 18
    invoke-static {}, Lo4/h;->b()Lo4/d;

    move-result-object v0

    iput-object v0, p0, Lo4/k;->c:Lo4/d;

    .line 19
    invoke-static {}, Lo4/h;->b()Lo4/d;

    move-result-object v0

    iput-object v0, p0, Lo4/k;->d:Lo4/d;

    .line 20
    new-instance v0, Lo4/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo4/a;-><init>(F)V

    iput-object v0, p0, Lo4/k;->e:Lo4/c;

    .line 21
    new-instance v0, Lo4/a;

    invoke-direct {v0, v1}, Lo4/a;-><init>(F)V

    iput-object v0, p0, Lo4/k;->f:Lo4/c;

    .line 22
    new-instance v0, Lo4/a;

    invoke-direct {v0, v1}, Lo4/a;-><init>(F)V

    iput-object v0, p0, Lo4/k;->g:Lo4/c;

    .line 23
    new-instance v0, Lo4/a;

    invoke-direct {v0, v1}, Lo4/a;-><init>(F)V

    iput-object v0, p0, Lo4/k;->h:Lo4/c;

    .line 24
    invoke-static {}, Lo4/h;->c()Lo4/f;

    move-result-object v0

    iput-object v0, p0, Lo4/k;->i:Lo4/f;

    .line 25
    invoke-static {}, Lo4/h;->c()Lo4/f;

    move-result-object v0

    iput-object v0, p0, Lo4/k;->j:Lo4/f;

    .line 26
    invoke-static {}, Lo4/h;->c()Lo4/f;

    move-result-object v0

    iput-object v0, p0, Lo4/k;->k:Lo4/f;

    .line 27
    invoke-static {}, Lo4/h;->c()Lo4/f;

    move-result-object v0

    iput-object v0, p0, Lo4/k;->l:Lo4/f;

    return-void
.end method

.method private constructor <init>(Lo4/k$b;)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lo4/k$b;->a(Lo4/k$b;)Lo4/d;

    move-result-object v0

    iput-object v0, p0, Lo4/k;->a:Lo4/d;

    .line 4
    invoke-static {p1}, Lo4/k$b;->e(Lo4/k$b;)Lo4/d;

    move-result-object v0

    iput-object v0, p0, Lo4/k;->b:Lo4/d;

    .line 5
    invoke-static {p1}, Lo4/k$b;->f(Lo4/k$b;)Lo4/d;

    move-result-object v0

    iput-object v0, p0, Lo4/k;->c:Lo4/d;

    .line 6
    invoke-static {p1}, Lo4/k$b;->g(Lo4/k$b;)Lo4/d;

    move-result-object v0

    iput-object v0, p0, Lo4/k;->d:Lo4/d;

    .line 7
    invoke-static {p1}, Lo4/k$b;->h(Lo4/k$b;)Lo4/c;

    move-result-object v0

    iput-object v0, p0, Lo4/k;->e:Lo4/c;

    .line 8
    invoke-static {p1}, Lo4/k$b;->i(Lo4/k$b;)Lo4/c;

    move-result-object v0

    iput-object v0, p0, Lo4/k;->f:Lo4/c;

    .line 9
    invoke-static {p1}, Lo4/k$b;->j(Lo4/k$b;)Lo4/c;

    move-result-object v0

    iput-object v0, p0, Lo4/k;->g:Lo4/c;

    .line 10
    invoke-static {p1}, Lo4/k$b;->k(Lo4/k$b;)Lo4/c;

    move-result-object v0

    iput-object v0, p0, Lo4/k;->h:Lo4/c;

    .line 11
    invoke-static {p1}, Lo4/k$b;->l(Lo4/k$b;)Lo4/f;

    move-result-object v0

    iput-object v0, p0, Lo4/k;->i:Lo4/f;

    .line 12
    invoke-static {p1}, Lo4/k$b;->b(Lo4/k$b;)Lo4/f;

    move-result-object v0

    iput-object v0, p0, Lo4/k;->j:Lo4/f;

    .line 13
    invoke-static {p1}, Lo4/k$b;->c(Lo4/k$b;)Lo4/f;

    move-result-object v0

    iput-object v0, p0, Lo4/k;->k:Lo4/f;

    .line 14
    invoke-static {p1}, Lo4/k$b;->d(Lo4/k$b;)Lo4/f;

    move-result-object p1

    iput-object p1, p0, Lo4/k;->l:Lo4/f;

    return-void
.end method

.method synthetic constructor <init>(Lo4/k$b;Lo4/k$a;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lo4/k;-><init>(Lo4/k$b;)V

    return-void
.end method

.method public static a()Lo4/k$b;
    .registers 1

    .line 1
    new-instance v0, Lo4/k$b;

    invoke-direct {v0}, Lo4/k$b;-><init>()V

    return-object v0
.end method

.method public static b(Landroid/content/Context;II)Lo4/k$b;
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0}, Lo4/k;->c(Landroid/content/Context;III)Lo4/k$b;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/content/Context;III)Lo4/k$b;
    .registers 5

    .line 1
    new-instance v0, Lo4/a;

    int-to-float p3, p3

    invoke-direct {v0, p3}, Lo4/a;-><init>(F)V

    invoke-static {p0, p1, p2, v0}, Lo4/k;->d(Landroid/content/Context;IILo4/c;)Lo4/k$b;

    move-result-object p0

    return-object p0
.end method

.method private static d(Landroid/content/Context;IILo4/c;)Lo4/k$b;
    .registers 10

    if-eqz p2, :cond_9

    .line 1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p0, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move p1, p2

    move-object p0, v0

    .line 2
    :cond_9
    sget-object p2, Ly3/k;->y3:[I

    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 4
    :try_start_f
    sget p1, Ly3/k;->z3:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 5
    sget p2, Ly3/k;->C3:I

    .line 6
    invoke-virtual {p0, p2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 7
    sget v0, Ly3/k;->D3:I

    .line 8
    invoke-virtual {p0, v0, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 9
    sget v1, Ly3/k;->B3:I

    .line 10
    invoke-virtual {p0, v1, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 11
    sget v2, Ly3/k;->A3:I

    .line 12
    invoke-virtual {p0, v2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 13
    sget v2, Ly3/k;->E3:I

    .line 14
    invoke-static {p0, v2, p3}, Lo4/k;->m(Landroid/content/res/TypedArray;ILo4/c;)Lo4/c;

    move-result-object p3

    .line 15
    sget v2, Ly3/k;->H3:I

    .line 16
    invoke-static {p0, v2, p3}, Lo4/k;->m(Landroid/content/res/TypedArray;ILo4/c;)Lo4/c;

    move-result-object v2

    .line 17
    sget v3, Ly3/k;->I3:I

    .line 18
    invoke-static {p0, v3, p3}, Lo4/k;->m(Landroid/content/res/TypedArray;ILo4/c;)Lo4/c;

    move-result-object v3

    .line 19
    sget v4, Ly3/k;->G3:I

    .line 20
    invoke-static {p0, v4, p3}, Lo4/k;->m(Landroid/content/res/TypedArray;ILo4/c;)Lo4/c;

    move-result-object v4

    .line 21
    sget v5, Ly3/k;->F3:I

    .line 22
    invoke-static {p0, v5, p3}, Lo4/k;->m(Landroid/content/res/TypedArray;ILo4/c;)Lo4/c;

    move-result-object p3

    .line 23
    new-instance v5, Lo4/k$b;

    invoke-direct {v5}, Lo4/k$b;-><init>()V

    .line 24
    invoke-virtual {v5, p2, v2}, Lo4/k$b;->y(ILo4/c;)Lo4/k$b;

    move-result-object p2

    .line 25
    invoke-virtual {p2, v0, v3}, Lo4/k$b;->C(ILo4/c;)Lo4/k$b;

    move-result-object p2

    .line 26
    invoke-virtual {p2, v1, v4}, Lo4/k$b;->u(ILo4/c;)Lo4/k$b;

    move-result-object p2

    .line 27
    invoke-virtual {p2, p1, p3}, Lo4/k$b;->q(ILo4/c;)Lo4/k$b;

    move-result-object p1
    :try_end_61
    .catchall {:try_start_f .. :try_end_61} :catchall_65

    .line 28
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1

    :catchall_65
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 29
    throw p1
.end method

.method public static e(Landroid/content/Context;Landroid/util/AttributeSet;II)Lo4/k$b;
    .registers 5

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, p3, v0}, Lo4/k;->f(Landroid/content/Context;Landroid/util/AttributeSet;III)Lo4/k$b;

    move-result-object p0

    return-object p0
.end method

.method public static f(Landroid/content/Context;Landroid/util/AttributeSet;III)Lo4/k$b;
    .registers 6

    .line 1
    new-instance v0, Lo4/a;

    int-to-float p4, p4

    invoke-direct {v0, p4}, Lo4/a;-><init>(F)V

    invoke-static {p0, p1, p2, p3, v0}, Lo4/k;->g(Landroid/content/Context;Landroid/util/AttributeSet;IILo4/c;)Lo4/k$b;

    move-result-object p0

    return-object p0
.end method

.method public static g(Landroid/content/Context;Landroid/util/AttributeSet;IILo4/c;)Lo4/k$b;
    .registers 6

    .line 1
    sget-object v0, Ly3/k;->M2:[I

    .line 2
    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    sget p2, Ly3/k;->N2:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 4
    sget v0, Ly3/k;->O2:I

    .line 5
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 7
    invoke-static {p0, p2, p3, p4}, Lo4/k;->d(Landroid/content/Context;IILo4/c;)Lo4/k$b;

    move-result-object p0

    return-object p0
.end method

.method private static m(Landroid/content/res/TypedArray;ILo4/c;)Lo4/c;
    .registers 5

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p1

    if-nez p1, :cond_7

    return-object p2

    .line 2
    :cond_7
    iget v0, p1, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_21

    .line 3
    new-instance p2, Lo4/a;

    iget p1, p1, Landroid/util/TypedValue;->data:I

    .line 4
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p0

    int-to-float p0, p0

    invoke-direct {p2, p0}, Lo4/a;-><init>(F)V

    return-object p2

    :cond_21
    const/4 p0, 0x6

    if-ne v0, p0, :cond_30

    .line 5
    new-instance p0, Lo4/i;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, p2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result p1

    invoke-direct {p0, p1}, Lo4/i;-><init>(F)V

    return-object p0

    :cond_30
    return-object p2
.end method


# virtual methods
.method public h()Lo4/f;
    .registers 2

    .line 1
    iget-object v0, p0, Lo4/k;->k:Lo4/f;

    return-object v0
.end method

.method public i()Lo4/d;
    .registers 2

    .line 1
    iget-object v0, p0, Lo4/k;->d:Lo4/d;

    return-object v0
.end method

.method public j()Lo4/c;
    .registers 2

    .line 1
    iget-object v0, p0, Lo4/k;->h:Lo4/c;

    return-object v0
.end method

.method public k()Lo4/d;
    .registers 2

    .line 1
    iget-object v0, p0, Lo4/k;->c:Lo4/d;

    return-object v0
.end method

.method public l()Lo4/c;
    .registers 2

    .line 1
    iget-object v0, p0, Lo4/k;->g:Lo4/c;

    return-object v0
.end method

.method public n()Lo4/f;
    .registers 2

    .line 1
    iget-object v0, p0, Lo4/k;->l:Lo4/f;

    return-object v0
.end method

.method public o()Lo4/f;
    .registers 2

    .line 1
    iget-object v0, p0, Lo4/k;->j:Lo4/f;

    return-object v0
.end method

.method public p()Lo4/f;
    .registers 2

    .line 1
    iget-object v0, p0, Lo4/k;->i:Lo4/f;

    return-object v0
.end method

.method public q()Lo4/d;
    .registers 2

    .line 1
    iget-object v0, p0, Lo4/k;->a:Lo4/d;

    return-object v0
.end method

.method public r()Lo4/c;
    .registers 2

    .line 1
    iget-object v0, p0, Lo4/k;->e:Lo4/c;

    return-object v0
.end method

.method public s()Lo4/d;
    .registers 2

    .line 1
    iget-object v0, p0, Lo4/k;->b:Lo4/d;

    return-object v0
.end method

.method public t()Lo4/c;
    .registers 2

    .line 1
    iget-object v0, p0, Lo4/k;->f:Lo4/c;

    return-object v0
.end method

.method public u(Landroid/graphics/RectF;)Z
    .registers 7

    .line 1
    const-class v0, Lo4/f;

    iget-object v1, p0, Lo4/k;->l:Lo4/f;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_36

    iget-object v1, p0, Lo4/k;->j:Lo4/f;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    iget-object v1, p0, Lo4/k;->i:Lo4/f;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    iget-object v1, p0, Lo4/k;->k:Lo4/f;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    const/4 v0, 0x1

    goto :goto_37

    :cond_36
    const/4 v0, 0x0

    .line 6
    :goto_37
    iget-object v1, p0, Lo4/k;->e:Lo4/c;

    invoke-interface {v1, p1}, Lo4/c;->a(Landroid/graphics/RectF;)F

    move-result v1

    .line 7
    iget-object v4, p0, Lo4/k;->f:Lo4/c;

    .line 8
    invoke-interface {v4, p1}, Lo4/c;->a(Landroid/graphics/RectF;)F

    move-result v4

    cmpl-float v4, v4, v1

    if-nez v4, :cond_5d

    iget-object v4, p0, Lo4/k;->h:Lo4/c;

    .line 9
    invoke-interface {v4, p1}, Lo4/c;->a(Landroid/graphics/RectF;)F

    move-result v4

    cmpl-float v4, v4, v1

    if-nez v4, :cond_5d

    iget-object v4, p0, Lo4/k;->g:Lo4/c;

    .line 10
    invoke-interface {v4, p1}, Lo4/c;->a(Landroid/graphics/RectF;)F

    move-result p1

    cmpl-float p1, p1, v1

    if-nez p1, :cond_5d

    const/4 p1, 0x1

    goto :goto_5e

    :cond_5d
    const/4 p1, 0x0

    .line 11
    :goto_5e
    iget-object v1, p0, Lo4/k;->b:Lo4/d;

    instance-of v1, v1, Lo4/j;

    if-eqz v1, :cond_78

    iget-object v1, p0, Lo4/k;->a:Lo4/d;

    instance-of v1, v1, Lo4/j;

    if-eqz v1, :cond_78

    iget-object v1, p0, Lo4/k;->c:Lo4/d;

    instance-of v1, v1, Lo4/j;

    if-eqz v1, :cond_78

    iget-object v1, p0, Lo4/k;->d:Lo4/d;

    instance-of v1, v1, Lo4/j;

    if-eqz v1, :cond_78

    const/4 v1, 0x1

    goto :goto_79

    :cond_78
    const/4 v1, 0x0

    :goto_79
    if-eqz v0, :cond_80

    if-eqz p1, :cond_80

    if-eqz v1, :cond_80

    goto :goto_81

    :cond_80
    const/4 v2, 0x0

    :goto_81
    return v2
.end method

.method public v()Lo4/k$b;
    .registers 2

    .line 1
    new-instance v0, Lo4/k$b;

    invoke-direct {v0, p0}, Lo4/k$b;-><init>(Lo4/k;)V

    return-object v0
.end method

.method public w(F)Lo4/k;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lo4/k;->v()Lo4/k$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo4/k$b;->o(F)Lo4/k$b;

    move-result-object p1

    invoke-virtual {p1}, Lo4/k$b;->m()Lo4/k;

    move-result-object p1

    return-object p1
.end method

.method public x(Lo4/c;)Lo4/k;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lo4/k;->v()Lo4/k$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo4/k$b;->p(Lo4/c;)Lo4/k$b;

    move-result-object p1

    invoke-virtual {p1}, Lo4/k$b;->m()Lo4/k;

    move-result-object p1

    return-object p1
.end method

.method public y(Lo4/k$c;)Lo4/k;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lo4/k;->v()Lo4/k$b;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lo4/k;->r()Lo4/c;

    move-result-object v1

    invoke-interface {p1, v1}, Lo4/k$c;->a(Lo4/c;)Lo4/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo4/k$b;->B(Lo4/c;)Lo4/k$b;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lo4/k;->t()Lo4/c;

    move-result-object v1

    invoke-interface {p1, v1}, Lo4/k$c;->a(Lo4/c;)Lo4/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo4/k$b;->F(Lo4/c;)Lo4/k$b;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lo4/k;->j()Lo4/c;

    move-result-object v1

    invoke-interface {p1, v1}, Lo4/k$c;->a(Lo4/c;)Lo4/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo4/k$b;->t(Lo4/c;)Lo4/k$b;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lo4/k;->l()Lo4/c;

    move-result-object v1

    invoke-interface {p1, v1}, Lo4/k$c;->a(Lo4/c;)Lo4/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo4/k$b;->x(Lo4/c;)Lo4/k$b;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lo4/k$b;->m()Lo4/k;

    move-result-object p1

    return-object p1
.end method

###### Class o4.k.a (o4.k$a)
.class synthetic Lo4/k$a;
.super Ljava/lang/Object;
.source "ShapeAppearanceModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo4/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class o4.k.b (o4.k$b)
.class public final Lo4/k$b;
.super Ljava/lang/Object;
.source "ShapeAppearanceModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo4/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Lo4/d;

.field private b:Lo4/d;

.field private c:Lo4/d;

.field private d:Lo4/d;

.field private e:Lo4/c;

.field private f:Lo4/c;

.field private g:Lo4/c;

.field private h:Lo4/c;

.field private i:Lo4/f;

.field private j:Lo4/f;

.field private k:Lo4/f;

.field private l:Lo4/f;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lo4/h;->b()Lo4/d;

    move-result-object v0

    iput-object v0, p0, Lo4/k$b;->a:Lo4/d;

    .line 3
    invoke-static {}, Lo4/h;->b()Lo4/d;

    move-result-object v0

    iput-object v0, p0, Lo4/k$b;->b:Lo4/d;

    .line 4
    invoke-static {}, Lo4/h;->b()Lo4/d;

    move-result-object v0

    iput-object v0, p0, Lo4/k$b;->c:Lo4/d;

    .line 5
    invoke-static {}, Lo4/h;->b()Lo4/d;

    move-result-object v0

    iput-object v0, p0, Lo4/k$b;->d:Lo4/d;

    .line 6
    new-instance v0, Lo4/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo4/a;-><init>(F)V

    iput-object v0, p0, Lo4/k$b;->e:Lo4/c;

    .line 7
    new-instance v0, Lo4/a;

    invoke-direct {v0, v1}, Lo4/a;-><init>(F)V

    iput-object v0, p0, Lo4/k$b;->f:Lo4/c;

    .line 8
    new-instance v0, Lo4/a;

    invoke-direct {v0, v1}, Lo4/a;-><init>(F)V

    iput-object v0, p0, Lo4/k$b;->g:Lo4/c;

    .line 9
    new-instance v0, Lo4/a;

    invoke-direct {v0, v1}, Lo4/a;-><init>(F)V

    iput-object v0, p0, Lo4/k$b;->h:Lo4/c;

    .line 10
    invoke-static {}, Lo4/h;->c()Lo4/f;

    move-result-object v0

    iput-object v0, p0, Lo4/k$b;->i:Lo4/f;

    .line 11
    invoke-static {}, Lo4/h;->c()Lo4/f;

    move-result-object v0

    iput-object v0, p0, Lo4/k$b;->j:Lo4/f;

    .line 12
    invoke-static {}, Lo4/h;->c()Lo4/f;

    move-result-object v0

    iput-object v0, p0, Lo4/k$b;->k:Lo4/f;

    .line 13
    invoke-static {}, Lo4/h;->c()Lo4/f;

    move-result-object v0

    iput-object v0, p0, Lo4/k$b;->l:Lo4/f;

    return-void
.end method

.method public constructor <init>(Lo4/k;)V
    .registers 4

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {}, Lo4/h;->b()Lo4/d;

    move-result-object v0

    iput-object v0, p0, Lo4/k$b;->a:Lo4/d;

    .line 16
    invoke-static {}, Lo4/h;->b()Lo4/d;

    move-result-object v0

    iput-object v0, p0, Lo4/k$b;->b:Lo4/d;

    .line 17
    invoke-static {}, Lo4/h;->b()Lo4/d;

    move-result-object v0

    iput-object v0, p0, Lo4/k$b;->c:Lo4/d;

    .line 18
    invoke-static {}, Lo4/h;->b()Lo4/d;

    move-result-object v0

    iput-object v0, p0, Lo4/k$b;->d:Lo4/d;

    .line 19
    new-instance v0, Lo4/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo4/a;-><init>(F)V

    iput-object v0, p0, Lo4/k$b;->e:Lo4/c;

    .line 20
    new-instance v0, Lo4/a;

    invoke-direct {v0, v1}, Lo4/a;-><init>(F)V

    iput-object v0, p0, Lo4/k$b;->f:Lo4/c;

    .line 21
    new-instance v0, Lo4/a;

    invoke-direct {v0, v1}, Lo4/a;-><init>(F)V

    iput-object v0, p0, Lo4/k$b;->g:Lo4/c;

    .line 22
    new-instance v0, Lo4/a;

    invoke-direct {v0, v1}, Lo4/a;-><init>(F)V

    iput-object v0, p0, Lo4/k$b;->h:Lo4/c;

    .line 23
    invoke-static {}, Lo4/h;->c()Lo4/f;

    move-result-object v0

    iput-object v0, p0, Lo4/k$b;->i:Lo4/f;

    .line 24
    invoke-static {}, Lo4/h;->c()Lo4/f;

    move-result-object v0

    iput-object v0, p0, Lo4/k$b;->j:Lo4/f;

    .line 25
    invoke-static {}, Lo4/h;->c()Lo4/f;

    move-result-object v0

    iput-object v0, p0, Lo4/k$b;->k:Lo4/f;

    .line 26
    invoke-static {}, Lo4/h;->c()Lo4/f;

    move-result-object v0

    iput-object v0, p0, Lo4/k$b;->l:Lo4/f;

    .line 27
    iget-object v0, p1, Lo4/k;->a:Lo4/d;

    iput-object v0, p0, Lo4/k$b;->a:Lo4/d;

    .line 28
    iget-object v0, p1, Lo4/k;->b:Lo4/d;

    iput-object v0, p0, Lo4/k$b;->b:Lo4/d;

    .line 29
    iget-object v0, p1, Lo4/k;->c:Lo4/d;

    iput-object v0, p0, Lo4/k$b;->c:Lo4/d;

    .line 30
    iget-object v0, p1, Lo4/k;->d:Lo4/d;

    iput-object v0, p0, Lo4/k$b;->d:Lo4/d;

    .line 31
    iget-object v0, p1, Lo4/k;->e:Lo4/c;

    iput-object v0, p0, Lo4/k$b;->e:Lo4/c;

    .line 32
    iget-object v0, p1, Lo4/k;->f:Lo4/c;

    iput-object v0, p0, Lo4/k$b;->f:Lo4/c;

    .line 33
    iget-object v0, p1, Lo4/k;->g:Lo4/c;

    iput-object v0, p0, Lo4/k$b;->g:Lo4/c;

    .line 34
    iget-object v0, p1, Lo4/k;->h:Lo4/c;

    iput-object v0, p0, Lo4/k$b;->h:Lo4/c;

    .line 35
    iget-object v0, p1, Lo4/k;->i:Lo4/f;

    iput-object v0, p0, Lo4/k$b;->i:Lo4/f;

    .line 36
    iget-object v0, p1, Lo4/k;->j:Lo4/f;

    iput-object v0, p0, Lo4/k$b;->j:Lo4/f;

    .line 37
    iget-object v0, p1, Lo4/k;->k:Lo4/f;

    iput-object v0, p0, Lo4/k$b;->k:Lo4/f;

    .line 38
    iget-object p1, p1, Lo4/k;->l:Lo4/f;

    iput-object p1, p0, Lo4/k$b;->l:Lo4/f;

    return-void
.end method

.method static synthetic a(Lo4/k$b;)Lo4/d;
    .registers 1

    .line 1
    iget-object p0, p0, Lo4/k$b;->a:Lo4/d;

    return-object p0
.end method

.method static synthetic b(Lo4/k$b;)Lo4/f;
    .registers 1

    .line 1
    iget-object p0, p0, Lo4/k$b;->j:Lo4/f;

    return-object p0
.end method

.method static synthetic c(Lo4/k$b;)Lo4/f;
    .registers 1

    .line 1
    iget-object p0, p0, Lo4/k$b;->k:Lo4/f;

    return-object p0
.end method

.method static synthetic d(Lo4/k$b;)Lo4/f;
    .registers 1

    .line 1
    iget-object p0, p0, Lo4/k$b;->l:Lo4/f;

    return-object p0
.end method

.method static synthetic e(Lo4/k$b;)Lo4/d;
    .registers 1

    .line 1
    iget-object p0, p0, Lo4/k$b;->b:Lo4/d;

    return-object p0
.end method

.method static synthetic f(Lo4/k$b;)Lo4/d;
    .registers 1

    .line 1
    iget-object p0, p0, Lo4/k$b;->c:Lo4/d;

    return-object p0
.end method

.method static synthetic g(Lo4/k$b;)Lo4/d;
    .registers 1

    .line 1
    iget-object p0, p0, Lo4/k$b;->d:Lo4/d;

    return-object p0
.end method

.method static synthetic h(Lo4/k$b;)Lo4/c;
    .registers 1

    .line 1
    iget-object p0, p0, Lo4/k$b;->e:Lo4/c;

    return-object p0
.end method

.method static synthetic i(Lo4/k$b;)Lo4/c;
    .registers 1

    .line 1
    iget-object p0, p0, Lo4/k$b;->f:Lo4/c;

    return-object p0
.end method

.method static synthetic j(Lo4/k$b;)Lo4/c;
    .registers 1

    .line 1
    iget-object p0, p0, Lo4/k$b;->g:Lo4/c;

    return-object p0
.end method

.method static synthetic k(Lo4/k$b;)Lo4/c;
    .registers 1

    .line 1
    iget-object p0, p0, Lo4/k$b;->h:Lo4/c;

    return-object p0
.end method

.method static synthetic l(Lo4/k$b;)Lo4/f;
    .registers 1

    .line 1
    iget-object p0, p0, Lo4/k$b;->i:Lo4/f;

    return-object p0
.end method

.method private static n(Lo4/d;)F
    .registers 2

    .line 1
    instance-of v0, p0, Lo4/j;

    if-eqz v0, :cond_9

    .line 2
    check-cast p0, Lo4/j;

    iget p0, p0, Lo4/j;->a:F

    return p0

    .line 3
    :cond_9
    instance-of v0, p0, Lo4/e;

    if-eqz v0, :cond_12

    .line 4
    check-cast p0, Lo4/e;

    iget p0, p0, Lo4/e;->a:F

    return p0

    :cond_12
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method


# virtual methods
.method public A(F)Lo4/k$b;
    .registers 3

    .line 1
    new-instance v0, Lo4/a;

    invoke-direct {v0, p1}, Lo4/a;-><init>(F)V

    iput-object v0, p0, Lo4/k$b;->e:Lo4/c;

    return-object p0
.end method

.method public B(Lo4/c;)Lo4/k$b;
    .registers 2

    .line 1
    iput-object p1, p0, Lo4/k$b;->e:Lo4/c;

    return-object p0
.end method

.method public C(ILo4/c;)Lo4/k$b;
    .registers 3

    .line 1
    invoke-static {p1}, Lo4/h;->a(I)Lo4/d;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo4/k$b;->D(Lo4/d;)Lo4/k$b;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Lo4/k$b;->F(Lo4/c;)Lo4/k$b;

    move-result-object p1

    return-object p1
.end method

.method public D(Lo4/d;)Lo4/k$b;
    .registers 3

    .line 1
    iput-object p1, p0, Lo4/k$b;->b:Lo4/d;

    .line 2
    invoke-static {p1}, Lo4/k$b;->n(Lo4/d;)F

    move-result p1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_f

    .line 3
    invoke-virtual {p0, p1}, Lo4/k$b;->E(F)Lo4/k$b;

    :cond_f
    return-object p0
.end method

.method public E(F)Lo4/k$b;
    .registers 3

    .line 1
    new-instance v0, Lo4/a;

    invoke-direct {v0, p1}, Lo4/a;-><init>(F)V

    iput-object v0, p0, Lo4/k$b;->f:Lo4/c;

    return-object p0
.end method

.method public F(Lo4/c;)Lo4/k$b;
    .registers 2

    .line 1
    iput-object p1, p0, Lo4/k$b;->f:Lo4/c;

    return-object p0
.end method

.method public m()Lo4/k;
    .registers 3

    .line 1
    new-instance v0, Lo4/k;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo4/k;-><init>(Lo4/k$b;Lo4/k$a;)V

    return-object v0
.end method

.method public o(F)Lo4/k$b;
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lo4/k$b;->A(F)Lo4/k$b;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lo4/k$b;->E(F)Lo4/k$b;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Lo4/k$b;->w(F)Lo4/k$b;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lo4/k$b;->s(F)Lo4/k$b;

    move-result-object p1

    return-object p1
.end method

.method public p(Lo4/c;)Lo4/k$b;
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lo4/k$b;->B(Lo4/c;)Lo4/k$b;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lo4/k$b;->F(Lo4/c;)Lo4/k$b;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Lo4/k$b;->x(Lo4/c;)Lo4/k$b;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lo4/k$b;->t(Lo4/c;)Lo4/k$b;

    move-result-object p1

    return-object p1
.end method

.method public q(ILo4/c;)Lo4/k$b;
    .registers 3

    .line 1
    invoke-static {p1}, Lo4/h;->a(I)Lo4/d;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo4/k$b;->r(Lo4/d;)Lo4/k$b;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Lo4/k$b;->t(Lo4/c;)Lo4/k$b;

    move-result-object p1

    return-object p1
.end method

.method public r(Lo4/d;)Lo4/k$b;
    .registers 3

    .line 1
    iput-object p1, p0, Lo4/k$b;->d:Lo4/d;

    .line 2
    invoke-static {p1}, Lo4/k$b;->n(Lo4/d;)F

    move-result p1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_f

    .line 3
    invoke-virtual {p0, p1}, Lo4/k$b;->s(F)Lo4/k$b;

    :cond_f
    return-object p0
.end method

.method public s(F)Lo4/k$b;
    .registers 3

    .line 1
    new-instance v0, Lo4/a;

    invoke-direct {v0, p1}, Lo4/a;-><init>(F)V

    iput-object v0, p0, Lo4/k$b;->h:Lo4/c;

    return-object p0
.end method

.method public t(Lo4/c;)Lo4/k$b;
    .registers 2

    .line 1
    iput-object p1, p0, Lo4/k$b;->h:Lo4/c;

    return-object p0
.end method

.method public u(ILo4/c;)Lo4/k$b;
    .registers 3

    .line 1
    invoke-static {p1}, Lo4/h;->a(I)Lo4/d;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo4/k$b;->v(Lo4/d;)Lo4/k$b;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Lo4/k$b;->x(Lo4/c;)Lo4/k$b;

    move-result-object p1

    return-object p1
.end method

.method public v(Lo4/d;)Lo4/k$b;
    .registers 3

    .line 1
    iput-object p1, p0, Lo4/k$b;->c:Lo4/d;

    .line 2
    invoke-static {p1}, Lo4/k$b;->n(Lo4/d;)F

    move-result p1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_f

    .line 3
    invoke-virtual {p0, p1}, Lo4/k$b;->w(F)Lo4/k$b;

    :cond_f
    return-object p0
.end method

.method public w(F)Lo4/k$b;
    .registers 3

    .line 1
    new-instance v0, Lo4/a;

    invoke-direct {v0, p1}, Lo4/a;-><init>(F)V

    iput-object v0, p0, Lo4/k$b;->g:Lo4/c;

    return-object p0
.end method

.method public x(Lo4/c;)Lo4/k$b;
    .registers 2

    .line 1
    iput-object p1, p0, Lo4/k$b;->g:Lo4/c;

    return-object p0
.end method

.method public y(ILo4/c;)Lo4/k$b;
    .registers 3

    .line 1
    invoke-static {p1}, Lo4/h;->a(I)Lo4/d;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo4/k$b;->z(Lo4/d;)Lo4/k$b;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Lo4/k$b;->B(Lo4/c;)Lo4/k$b;

    move-result-object p1

    return-object p1
.end method

.method public z(Lo4/d;)Lo4/k$b;
    .registers 3

    .line 1
    iput-object p1, p0, Lo4/k$b;->a:Lo4/d;

    .line 2
    invoke-static {p1}, Lo4/k$b;->n(Lo4/d;)F

    move-result p1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_f

    .line 3
    invoke-virtual {p0, p1}, Lo4/k$b;->A(F)Lo4/k$b;

    :cond_f
    return-object p0
.end method

###### Class o4.k.c (o4.k$c)
.class public interface abstract Lo4/k$c;
.super Ljava/lang/Object;
.source "ShapeAppearanceModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo4/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation


# virtual methods
.method public abstract a(Lo4/c;)Lo4/c;
.end method
