###### Class v2.i (v2.i)
.class public Lv2/i;
.super Ll2/b;
.source "SquaringDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv2/i$a;
    }
.end annotation


# instance fields
.field private o:Ll2/b;

.field private p:Lv2/i$a;

.field private q:Z


# direct methods
.method public constructor <init>(Ll2/b;I)V
    .registers 5

    .line 1
    new-instance v0, Lv2/i$a;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lv2/i$a;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;I)V

    const/4 p2, 0x0

    invoke-direct {p0, v0, p1, p2}, Lv2/i;-><init>(Lv2/i$a;Ll2/b;Landroid/content/res/Resources;)V

    return-void
.end method

.method constructor <init>(Lv2/i$a;Ll2/b;Landroid/content/res/Resources;)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ll2/b;-><init>()V

    .line 3
    iput-object p1, p0, Lv2/i;->p:Lv2/i$a;

    if-nez p2, :cond_23

    if-eqz p3, :cond_16

    .line 4
    invoke-static {p1}, Lv2/i$a;->a(Lv2/i$a;)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Ll2/b;

    iput-object p1, p0, Lv2/i;->o:Ll2/b;

    goto :goto_25

    .line 5
    :cond_16
    invoke-static {p1}, Lv2/i$a;->a(Lv2/i$a;)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Ll2/b;

    iput-object p1, p0, Lv2/i;->o:Ll2/b;

    goto :goto_25

    .line 6
    :cond_23
    iput-object p2, p0, Lv2/i;->o:Ll2/b;

    :goto_25
    return-void
.end method


# virtual methods
.method public b()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lv2/i;->o:Ll2/b;

    invoke-virtual {v0}, Ll2/b;->b()Z

    move-result v0

    return v0
.end method

.method public c(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lv2/i;->o:Ll2/b;

    invoke-virtual {v0, p1}, Ll2/b;->c(I)V

    return-void
.end method

.method public clearColorFilter()V
    .registers 2

    .line 1
    iget-object v0, p0, Lv2/i;->o:Ll2/b;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lv2/i;->o:Ll2/b;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getAlpha()I
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 1
    iget-object v0, p0, Lv2/i;->o:Ll2/b;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getCallback()Landroid/graphics/drawable/Drawable$Callback;
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 1
    iget-object v0, p0, Lv2/i;->o:Ll2/b;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    return-object v0
.end method

.method public getChangingConfigurations()I
    .registers 2

    .line 1
    iget-object v0, p0, Lv2/i;->o:Ll2/b;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 2

    .line 1
    iget-object v0, p0, Lv2/i;->p:Lv2/i$a;

    return-object v0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-object v0, p0, Lv2/i;->o:Ll2/b;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .line 1
    iget-object v0, p0, Lv2/i;->p:Lv2/i$a;

    invoke-static {v0}, Lv2/i$a;->b(Lv2/i$a;)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .line 1
    iget-object v0, p0, Lv2/i;->p:Lv2/i$a;

    invoke-static {v0}, Lv2/i$a;->b(Lv2/i$a;)I

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .registers 2

    .line 1
    iget-object v0, p0, Lv2/i;->o:Ll2/b;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .registers 2

    .line 1
    iget-object v0, p0, Lv2/i;->o:Ll2/b;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .registers 2

    .line 1
    iget-object v0, p0, Lv2/i;->o:Ll2/b;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lv2/i;->o:Ll2/b;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public invalidateSelf()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 2
    iget-object v0, p0, Lv2/i;->o:Ll2/b;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public isRunning()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lv2/i;->o:Ll2/b;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->isRunning()Z

    move-result v0

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1
    iget-boolean v0, p0, Lv2/i;->q:Z

    if-nez v0, :cond_20

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_20

    .line 2
    iget-object v0, p0, Lv2/i;->o:Ll2/b;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Ll2/b;

    iput-object v0, p0, Lv2/i;->o:Ll2/b;

    .line 3
    new-instance v0, Lv2/i$a;

    iget-object v1, p0, Lv2/i;->p:Lv2/i$a;

    invoke-direct {v0, v1}, Lv2/i$a;-><init>(Lv2/i$a;)V

    iput-object v0, p0, Lv2/i;->p:Lv2/i$a;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lv2/i;->q:Z

    :cond_20
    return-object p0
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 2
    iget-object v0, p0, Lv2/i;->o:Ll2/b;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lv2/i;->o:Ll2/b;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public setBounds(IIII)V
    .registers 6

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2
    iget-object v0, p0, Lv2/i;->o:Ll2/b;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .registers 3

    .line 3
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 4
    iget-object v0, p0, Lv2/i;->o:Ll2/b;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setChangingConfigurations(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lv2/i;->o:Ll2/b;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    return-void
.end method

.method public setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lv2/i;->o:Ll2/b;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 2
    iget-object v0, p0, Lv2/i;->o:Ll2/b;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setDither(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lv2/i;->o:Ll2/b;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    return-void
.end method

.method public setFilterBitmap(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lv2/i;->o:Ll2/b;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    return-void
.end method

.method public setVisible(ZZ)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lv2/i;->o:Ll2/b;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public start()V
    .registers 2

    .line 1
    iget-object v0, p0, Lv2/i;->o:Ll2/b;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    return-void
.end method

.method public stop()V
    .registers 2

    .line 1
    iget-object v0, p0, Lv2/i;->o:Ll2/b;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    return-void
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lv2/i;->o:Ll2/b;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class v2.i.a (v2.i$a)
.class Lv2/i$a;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SquaringDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv2/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/graphics/drawable/Drawable$ConstantState;

.field private final b:I


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable$ConstantState;I)V
    .registers 3

    .line 2
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 3
    iput-object p1, p0, Lv2/i$a;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 4
    iput p2, p0, Lv2/i$a;->b:I

    return-void
.end method

.method constructor <init>(Lv2/i$a;)V
    .registers 3

    .line 1
    iget-object v0, p1, Lv2/i$a;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    iget p1, p1, Lv2/i$a;->b:I

    invoke-direct {p0, v0, p1}, Lv2/i$a;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;I)V

    return-void
.end method

.method static synthetic a(Lv2/i$a;)Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 1

    .line 1
    iget-object p0, p0, Lv2/i$a;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    return-object p0
.end method

.method static synthetic b(Lv2/i$a;)I
    .registers 1

    .line 1
    iget p0, p0, Lv2/i$a;->b:I

    return p0
.end method


# virtual methods
.method public getChangingConfigurations()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lv2/i$a;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 2
    new-instance v0, Lv2/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lv2/i;-><init>(Lv2/i$a;Ll2/b;Landroid/content/res/Resources;)V

    return-object v0
.end method
