###### Class k2.j (k2.j)
.class public Lk2/j;
.super Ll2/b;
.source "GlideBitmapDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk2/j$a;
    }
.end annotation


# instance fields
.field private final o:Landroid/graphics/Rect;

.field private p:I

.field private q:I

.field private r:Z

.field private s:Z

.field private t:Lk2/j$a;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .registers 4

    .line 1
    new-instance v0, Lk2/j$a;

    invoke-direct {v0, p2}, Lk2/j$a;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, p1, v0}, Lk2/j;-><init>(Landroid/content/res/Resources;Lk2/j$a;)V

    return-void
.end method

.method constructor <init>(Landroid/content/res/Resources;Lk2/j$a;)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ll2/b;-><init>()V

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lk2/j;->o:Landroid/graphics/Rect;

    const-string v0, "BitmapState must not be null"

    .line 4
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Lk2/j;->t:Lk2/j$a;

    if-eqz p1, :cond_20

    .line 6
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    if-nez p1, :cond_1d

    const/16 p1, 0xa0

    .line 7
    :cond_1d
    iput p1, p2, Lk2/j$a;->b:I

    goto :goto_22

    .line 8
    :cond_20
    iget p1, p2, Lk2/j$a;->b:I

    .line 9
    :goto_22
    iget-object v0, p2, Lk2/j$a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->getScaledWidth(I)I

    move-result v0

    iput v0, p0, Lk2/j;->p:I

    .line 10
    iget-object p2, p2, Lk2/j$a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p2, p1}, Landroid/graphics/Bitmap;->getScaledHeight(I)I

    move-result p1

    iput p1, p0, Lk2/j;->q:I

    return-void
.end method


# virtual methods
.method public b()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public c(I)V
    .registers 2

    return-void
.end method

.method public d()Landroid/graphics/Bitmap;
    .registers 2

    .line 1
    iget-object v0, p0, Lk2/j;->t:Lk2/j$a;

    iget-object v0, v0, Lk2/j$a;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 1
    iget-boolean v0, p0, Lk2/j;->r:Z

    if-eqz v0, :cond_16

    const/16 v0, 0x77

    .line 2
    iget v1, p0, Lk2/j;->p:I

    iget v2, p0, Lk2/j;->q:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lk2/j;->o:Landroid/graphics/Rect;

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lk2/j;->r:Z

    .line 4
    :cond_16
    iget-object v0, p0, Lk2/j;->t:Lk2/j$a;

    iget-object v1, v0, Lk2/j$a;->a:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget-object v3, p0, Lk2/j;->o:Landroid/graphics/Rect;

    iget-object v0, v0, Lk2/j$a;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 2

    .line 1
    iget-object v0, p0, Lk2/j;->t:Lk2/j$a;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .line 1
    iget v0, p0, Lk2/j;->q:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .line 1
    iget v0, p0, Lk2/j;->p:I

    return v0
.end method

.method public getOpacity()I
    .registers 3

    .line 1
    iget-object v0, p0, Lk2/j;->t:Lk2/j$a;

    iget-object v0, v0, Lk2/j$a;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1b

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lk2/j;->t:Lk2/j$a;

    iget-object v0, v0, Lk2/j$a;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, -0x1

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, -0x3

    :goto_1c
    return v0
.end method

.method public isRunning()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1
    iget-boolean v0, p0, Lk2/j;->s:Z

    if-nez v0, :cond_16

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_16

    .line 2
    new-instance v0, Lk2/j$a;

    iget-object v1, p0, Lk2/j;->t:Lk2/j$a;

    invoke-direct {v0, v1}, Lk2/j$a;-><init>(Lk2/j$a;)V

    iput-object v0, p0, Lk2/j;->t:Lk2/j$a;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lk2/j;->s:Z

    :cond_16
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lk2/j;->r:Z

    return-void
.end method

.method public setAlpha(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lk2/j;->t:Lk2/j$a;

    iget-object v0, v0, Lk2/j$a;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eq v0, p1, :cond_12

    .line 2
    iget-object v0, p0, Lk2/j;->t:Lk2/j$a;

    invoke-virtual {v0, p1}, Lk2/j$a;->b(I)V

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_12
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lk2/j;->t:Lk2/j$a;

    invoke-virtual {v0, p1}, Lk2/j$a;->c(Landroid/graphics/ColorFilter;)V

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public start()V
    .registers 1

    return-void
.end method

.method public stop()V
    .registers 1

    return-void
.end method

###### Class k2.j.a (k2.j$a)
.class Lk2/j$a;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "GlideBitmapDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk2/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final d:Landroid/graphics/Paint;


# instance fields
.field final a:Landroid/graphics/Bitmap;

.field b:I

.field c:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lk2/j$a;->d:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 2
    sget-object v0, Lk2/j$a;->d:Landroid/graphics/Paint;

    iput-object v0, p0, Lk2/j$a;->c:Landroid/graphics/Paint;

    .line 3
    iput-object p1, p0, Lk2/j$a;->a:Landroid/graphics/Bitmap;

    return-void
.end method

.method constructor <init>(Lk2/j$a;)V
    .registers 3

    .line 4
    iget-object v0, p1, Lk2/j$a;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lk2/j$a;-><init>(Landroid/graphics/Bitmap;)V

    .line 5
    iget p1, p1, Lk2/j$a;->b:I

    iput p1, p0, Lk2/j$a;->b:I

    return-void
.end method


# virtual methods
.method a()V
    .registers 3

    .line 1
    sget-object v0, Lk2/j$a;->d:Landroid/graphics/Paint;

    iget-object v1, p0, Lk2/j$a;->c:Landroid/graphics/Paint;

    if-ne v0, v1, :cond_e

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lk2/j$a;->c:Landroid/graphics/Paint;

    :cond_e
    return-void
.end method

.method b(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lk2/j$a;->a()V

    .line 2
    iget-object v0, p0, Lk2/j$a;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method c(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lk2/j$a;->a()V

    .line 2
    iget-object v0, p0, Lk2/j$a;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public getChangingConfigurations()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1
    new-instance v0, Lk2/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lk2/j;-><init>(Landroid/content/res/Resources;Lk2/j$a;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 2
    new-instance v0, Lk2/j;

    invoke-direct {v0, p1, p0}, Lk2/j;-><init>(Landroid/content/res/Resources;Lk2/j$a;)V

    return-object v0
.end method
