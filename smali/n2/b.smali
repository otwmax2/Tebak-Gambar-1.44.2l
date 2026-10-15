###### Class n2.b (n2.b)
.class public Ln2/b;
.super Ll2/b;
.source "GifDrawable.java"

# interfaces
.implements Ln2/f$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln2/b$a;
    }
.end annotation


# instance fields
.field private final o:Landroid/graphics/Paint;

.field private final p:Landroid/graphics/Rect;

.field private final q:Ln2/b$a;

.field private final r:Lx1/a;

.field private final s:Ln2/f;

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:I

.field private y:I

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lx1/a$a;Lc2/c;Lz1/g;IILx1/c;[BLandroid/graphics/Bitmap;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lx1/a$a;",
            "Lc2/c;",
            "Lz1/g<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Lx1/c;",
            "[B",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v10, Ln2/b$a;

    move-object v0, v10

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    move-object v3, p1

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Ln2/b$a;-><init>(Lx1/c;[BLandroid/content/Context;Lz1/g;IILx1/a$a;Lc2/c;Landroid/graphics/Bitmap;)V

    move-object v0, p0

    invoke-direct {p0, v10}, Ln2/b;-><init>(Ln2/b$a;)V

    return-void
.end method

.method constructor <init>(Ln2/b$a;)V
    .registers 9

    .line 3
    invoke-direct {p0}, Ll2/b;-><init>()V

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Ln2/b;->p:Landroid/graphics/Rect;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Ln2/b;->w:Z

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Ln2/b;->y:I

    const-string v0, "GifState must not be null"

    .line 7
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    iput-object p1, p0, Ln2/b;->q:Ln2/b$a;

    .line 9
    new-instance v4, Lx1/a;

    iget-object v0, p1, Ln2/b$a;->g:Lx1/a$a;

    invoke-direct {v4, v0}, Lx1/a;-><init>(Lx1/a$a;)V

    iput-object v4, p0, Ln2/b;->r:Lx1/a;

    .line 10
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Ln2/b;->o:Landroid/graphics/Paint;

    .line 11
    iget-object v0, p1, Ln2/b$a;->a:Lx1/c;

    iget-object v1, p1, Ln2/b$a;->b:[B

    invoke-virtual {v4, v0, v1}, Lx1/a;->n(Lx1/c;[B)V

    .line 12
    new-instance v0, Ln2/f;

    iget-object v2, p1, Ln2/b$a;->c:Landroid/content/Context;

    iget v5, p1, Ln2/b$a;->e:I

    iget v6, p1, Ln2/b$a;->f:I

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Ln2/f;-><init>(Landroid/content/Context;Ln2/f$c;Lx1/a;II)V

    iput-object v0, p0, Ln2/b;->s:Ln2/f;

    .line 13
    iget-object p1, p1, Ln2/b$a;->d:Lz1/g;

    invoke-virtual {v0, p1}, Ln2/f;->f(Lz1/g;)V

    return-void
.end method

.method public constructor <init>(Ln2/b;Landroid/graphics/Bitmap;Lz1/g;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln2/b;",
            "Landroid/graphics/Bitmap;",
            "Lz1/g<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 2
    new-instance v10, Ln2/b$a;

    iget-object p1, p1, Ln2/b;->q:Ln2/b$a;

    iget-object v1, p1, Ln2/b$a;->a:Lx1/c;

    iget-object v2, p1, Ln2/b$a;->b:[B

    iget-object v3, p1, Ln2/b$a;->c:Landroid/content/Context;

    iget v5, p1, Ln2/b$a;->e:I

    iget v6, p1, Ln2/b$a;->f:I

    iget-object v7, p1, Ln2/b$a;->g:Lx1/a$a;

    iget-object v8, p1, Ln2/b$a;->h:Lc2/c;

    move-object v0, v10

    move-object v4, p3

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Ln2/b$a;-><init>(Lx1/c;[BLandroid/content/Context;Lz1/g;IILx1/a$a;Lc2/c;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v10}, Ln2/b;-><init>(Ln2/b$a;)V

    return-void
.end method

.method private i()V
    .registers 2

    .line 1
    iget-object v0, p0, Ln2/b;->s:Ln2/f;

    invoke-virtual {v0}, Ln2/f;->a()V

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private j()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Ln2/b;->x:I

    return-void
.end method

.method private k()V
    .registers 3

    .line 1
    iget-object v0, p0, Ln2/b;->r:Lx1/a;

    invoke-virtual {v0}, Lx1/a;->f()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_1b

    .line 3
    :cond_d
    iget-boolean v0, p0, Ln2/b;->t:Z

    if-nez v0, :cond_1b

    .line 4
    iput-boolean v1, p0, Ln2/b;->t:Z

    .line 5
    iget-object v0, p0, Ln2/b;->s:Ln2/f;

    invoke-virtual {v0}, Ln2/f;->g()V

    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1b
    :goto_1b
    return-void
.end method

.method private l()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Ln2/b;->t:Z

    .line 2
    iget-object v0, p0, Ln2/b;->s:Ln2/f;

    invoke-virtual {v0}, Ln2/f;->h()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_13

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_13

    .line 2
    invoke-virtual {p0}, Ln2/b;->stop()V

    .line 3
    invoke-direct {p0}, Ln2/b;->i()V

    return-void

    .line 4
    :cond_13
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 5
    iget-object v0, p0, Ln2/b;->r:Lx1/a;

    invoke-virtual {v0}, Lx1/a;->f()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_26

    .line 6
    iget p1, p0, Ln2/b;->x:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ln2/b;->x:I

    .line 7
    :cond_26
    iget p1, p0, Ln2/b;->y:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_32

    iget v0, p0, Ln2/b;->x:I

    if-lt v0, p1, :cond_32

    .line 8
    invoke-virtual {p0}, Ln2/b;->stop()V

    :cond_32
    return-void
.end method

.method public b()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public c(I)V
    .registers 3

    const/4 v0, -0x1

    if-gtz p1, :cond_10

    if-eq p1, v0, :cond_10

    if-nez p1, :cond_8

    goto :goto_10

    .line 1
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Loop count must be greater than 0, or equal to GlideDrawable.LOOP_FOREVER, or equal to GlideDrawable.LOOP_INTRINSIC"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    :goto_10
    if-nez p1, :cond_1f

    .line 2
    iget-object p1, p0, Ln2/b;->r:Lx1/a;

    invoke-virtual {p1}, Lx1/a;->j()I

    move-result p1

    if-nez p1, :cond_1b

    goto :goto_1c

    :cond_1b
    move v0, p1

    .line 3
    :goto_1c
    iput v0, p0, Ln2/b;->y:I

    goto :goto_21

    .line 4
    :cond_1f
    iput p1, p0, Ln2/b;->y:I

    :goto_21
    return-void
.end method

.method public d()[B
    .registers 2

    .line 1
    iget-object v0, p0, Ln2/b;->q:Ln2/b$a;

    iget-object v0, v0, Ln2/b$a;->b:[B

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 1
    iget-boolean v0, p0, Ln2/b;->v:Z

    if-eqz v0, :cond_5

    return-void

    .line 2
    :cond_5
    iget-boolean v0, p0, Ln2/b;->z:Z

    if-eqz v0, :cond_1f

    const/16 v0, 0x77

    .line 3
    invoke-virtual {p0}, Ln2/b;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Ln2/b;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Ln2/b;->p:Landroid/graphics/Rect;

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Ln2/b;->z:Z

    .line 5
    :cond_1f
    iget-object v0, p0, Ln2/b;->s:Ln2/f;

    invoke-virtual {v0}, Ln2/f;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_28

    goto :goto_2c

    .line 6
    :cond_28
    iget-object v0, p0, Ln2/b;->q:Ln2/b$a;

    iget-object v0, v0, Ln2/b$a;->i:Landroid/graphics/Bitmap;

    :goto_2c
    const/4 v1, 0x0

    .line 7
    iget-object v2, p0, Ln2/b;->p:Landroid/graphics/Rect;

    iget-object v3, p0, Ln2/b;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public e()Landroid/graphics/Bitmap;
    .registers 2

    .line 1
    iget-object v0, p0, Ln2/b;->q:Ln2/b$a;

    iget-object v0, v0, Ln2/b$a;->i:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public f()I
    .registers 2

    .line 1
    iget-object v0, p0, Ln2/b;->r:Lx1/a;

    invoke-virtual {v0}, Lx1/a;->f()I

    move-result v0

    return v0
.end method

.method public g()Lz1/g;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz1/g<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln2/b;->q:Ln2/b$a;

    iget-object v0, v0, Ln2/b$a;->d:Lz1/g;

    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 2

    .line 1
    iget-object v0, p0, Ln2/b;->q:Ln2/b$a;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .line 1
    iget-object v0, p0, Ln2/b;->q:Ln2/b$a;

    iget-object v0, v0, Ln2/b$a;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .line 1
    iget-object v0, p0, Ln2/b;->q:Ln2/b$a;

    iget-object v0, v0, Ln2/b$a;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x2

    return v0
.end method

.method public h()V
    .registers 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Ln2/b;->v:Z

    .line 2
    iget-object v0, p0, Ln2/b;->q:Ln2/b$a;

    iget-object v1, v0, Ln2/b$a;->h:Lc2/c;

    iget-object v0, v0, Ln2/b$a;->i:Landroid/graphics/Bitmap;

    invoke-interface {v1, v0}, Lc2/c;->a(Landroid/graphics/Bitmap;)Z

    .line 3
    iget-object v0, p0, Ln2/b;->s:Ln2/f;

    invoke-virtual {v0}, Ln2/f;->a()V

    .line 4
    iget-object v0, p0, Ln2/b;->s:Ln2/f;

    invoke-virtual {v0}, Ln2/f;->h()V

    return-void
.end method

.method public isRunning()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Ln2/b;->t:Z

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Ln2/b;->z:Z

    return-void
.end method

.method public setAlpha(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Ln2/b;->o:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 1
    iget-object v0, p0, Ln2/b;->o:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setVisible(ZZ)Z
    .registers 4

    .line 1
    iput-boolean p1, p0, Ln2/b;->w:Z

    if-nez p1, :cond_8

    .line 2
    invoke-direct {p0}, Ln2/b;->l()V

    goto :goto_f

    .line 3
    :cond_8
    iget-boolean v0, p0, Ln2/b;->u:Z

    if-eqz v0, :cond_f

    .line 4
    invoke-direct {p0}, Ln2/b;->k()V

    .line 5
    :cond_f
    :goto_f
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public start()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Ln2/b;->u:Z

    .line 2
    invoke-direct {p0}, Ln2/b;->j()V

    .line 3
    iget-boolean v0, p0, Ln2/b;->w:Z

    if-eqz v0, :cond_d

    .line 4
    invoke-direct {p0}, Ln2/b;->k()V

    :cond_d
    return-void
.end method

.method public stop()V
    .registers 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Ln2/b;->u:Z

    .line 2
    invoke-direct {p0}, Ln2/b;->l()V

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_f

    .line 4
    invoke-direct {p0}, Ln2/b;->i()V

    :cond_f
    return-void
.end method

###### Class n2.b.a (n2.b$a)
.class Ln2/b$a;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "GifDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Lx1/c;

.field b:[B

.field c:Landroid/content/Context;

.field d:Lz1/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz1/g<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field e:I

.field f:I

.field g:Lx1/a$a;

.field h:Lc2/c;

.field i:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lx1/c;[BLandroid/content/Context;Lz1/g;IILx1/a$a;Lc2/c;Landroid/graphics/Bitmap;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx1/c;",
            "[B",
            "Landroid/content/Context;",
            "Lz1/g<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Lx1/a$a;",
            "Lc2/c;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const-string v0, "The first frame of the GIF must not be null"

    .line 2
    invoke-static {p9, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Ln2/b$a;->a:Lx1/c;

    .line 4
    iput-object p2, p0, Ln2/b$a;->b:[B

    .line 5
    iput-object p8, p0, Ln2/b$a;->h:Lc2/c;

    .line 6
    iput-object p9, p0, Ln2/b$a;->i:Landroid/graphics/Bitmap;

    .line 7
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Ln2/b$a;->c:Landroid/content/Context;

    .line 8
    iput-object p4, p0, Ln2/b$a;->d:Lz1/g;

    .line 9
    iput p5, p0, Ln2/b$a;->e:I

    .line 10
    iput p6, p0, Ln2/b$a;->f:I

    .line 11
    iput-object p7, p0, Ln2/b$a;->g:Lx1/a$a;

    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 2
    new-instance v0, Ln2/b;

    invoke-direct {v0, p0}, Ln2/b;-><init>(Ln2/b$a;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    invoke-virtual {p0}, Ln2/b$a;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method
