###### Class m4.a (m4.a)
.class public Lm4/a;
.super Landroid/graphics/drawable/Drawable;
.source "RippleDrawableCompat.java"

# interfaces
.implements Lo4/n;
.implements Landroidx/core/graphics/drawable/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm4/a$b;
    }
.end annotation


# instance fields
.field private o:Lm4/a$b;


# direct methods
.method private constructor <init>(Lm4/a$b;)V
    .registers 2

    .line 3
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 4
    iput-object p1, p0, Lm4/a;->o:Lm4/a$b;

    return-void
.end method

.method synthetic constructor <init>(Lm4/a$b;Lm4/a$a;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lm4/a;-><init>(Lm4/a$b;)V

    return-void
.end method

.method public constructor <init>(Lo4/k;)V
    .registers 4

    .line 2
    new-instance v0, Lm4/a$b;

    new-instance v1, Lo4/g;

    invoke-direct {v1, p1}, Lo4/g;-><init>(Lo4/k;)V

    invoke-direct {v0, v1}, Lm4/a$b;-><init>(Lo4/g;)V

    invoke-direct {p0, v0}, Lm4/a;-><init>(Lm4/a$b;)V

    return-void
.end method


# virtual methods
.method public a()Lm4/a;
    .registers 3

    .line 1
    new-instance v0, Lm4/a$b;

    iget-object v1, p0, Lm4/a;->o:Lm4/a$b;

    invoke-direct {v0, v1}, Lm4/a$b;-><init>(Lm4/a$b;)V

    .line 2
    iput-object v0, p0, Lm4/a;->o:Lm4/a$b;

    return-object p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lm4/a;->o:Lm4/a$b;

    iget-boolean v1, v0, Lm4/a$b;->b:Z

    if-eqz v1, :cond_b

    .line 2
    iget-object v0, v0, Lm4/a$b;->a:Lo4/g;

    invoke-virtual {v0, p1}, Lo4/g;->draw(Landroid/graphics/Canvas;)V

    :cond_b
    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 2

    .line 1
    iget-object v0, p0, Lm4/a;->o:Lm4/a$b;

    return-object v0
.end method

.method public getOpacity()I
    .registers 2

    .line 1
    iget-object v0, p0, Lm4/a;->o:Lm4/a$b;

    iget-object v0, v0, Lm4/a$b;->a:Lo4/g;

    invoke-virtual {v0}, Lo4/g;->getOpacity()I

    move-result v0

    return v0
.end method

.method public isStateful()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mutate()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lm4/a;->a()Lm4/a;

    move-result-object v0

    return-object v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 2
    iget-object v0, p0, Lm4/a;->o:Lm4/a$b;

    iget-object v0, v0, Lm4/a$b;->a:Lo4/g;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected onStateChange([I)Z
    .registers 6

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v0

    .line 2
    iget-object v1, p0, Lm4/a;->o:Lm4/a$b;

    iget-object v1, v1, Lm4/a$b;->a:Lo4/g;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    .line 3
    :cond_10
    invoke-static {p1}, Lm4/b;->b([I)Z

    move-result p1

    .line 4
    iget-object v1, p0, Lm4/a;->o:Lm4/a$b;

    iget-boolean v3, v1, Lm4/a$b;->b:Z

    if-eq v3, p1, :cond_1d

    .line 5
    iput-boolean p1, v1, Lm4/a$b;->b:Z

    goto :goto_1e

    :cond_1d
    move v2, v0

    :goto_1e
    return v2
.end method

.method public setAlpha(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lm4/a;->o:Lm4/a$b;

    iget-object v0, v0, Lm4/a$b;->a:Lo4/g;

    invoke-virtual {v0, p1}, Lo4/g;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lm4/a;->o:Lm4/a$b;

    iget-object v0, v0, Lm4/a$b;->a:Lo4/g;

    invoke-virtual {v0, p1}, Lo4/g;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setShapeAppearanceModel(Lo4/k;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lm4/a;->o:Lm4/a$b;

    iget-object v0, v0, Lm4/a$b;->a:Lo4/g;

    invoke-virtual {v0, p1}, Lo4/g;->setShapeAppearanceModel(Lo4/k;)V

    return-void
.end method

.method public setTint(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lm4/a;->o:Lm4/a$b;

    iget-object v0, v0, Lm4/a$b;->a:Lo4/g;

    invoke-virtual {v0, p1}, Lo4/g;->setTint(I)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lm4/a;->o:Lm4/a$b;

    iget-object v0, v0, Lm4/a$b;->a:Lo4/g;

    invoke-virtual {v0, p1}, Lo4/g;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lm4/a;->o:Lm4/a$b;

    iget-object v0, v0, Lm4/a$b;->a:Lo4/g;

    invoke-virtual {v0, p1}, Lo4/g;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

###### Class m4.a.C0204a (m4.a$a)
.class synthetic Lm4/a$a;
.super Ljava/lang/Object;
.source "RippleDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm4/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class m4.a.b (m4.a$b)
.class final Lm4/a$b;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "RippleDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm4/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field a:Lo4/g;

.field b:Z


# direct methods
.method public constructor <init>(Lm4/a$b;)V
    .registers 3

    .line 4
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 5
    iget-object v0, p1, Lm4/a$b;->a:Lo4/g;

    invoke-virtual {v0}, Lo4/g;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lo4/g;

    iput-object v0, p0, Lm4/a$b;->a:Lo4/g;

    .line 6
    iget-boolean p1, p1, Lm4/a$b;->b:Z

    iput-boolean p1, p0, Lm4/a$b;->b:Z

    return-void
.end method

.method public constructor <init>(Lo4/g;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 2
    iput-object p1, p0, Lm4/a$b;->a:Lo4/g;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lm4/a$b;->b:Z

    return-void
.end method


# virtual methods
.method public a()Lm4/a;
    .registers 4

    .line 1
    new-instance v0, Lm4/a;

    new-instance v1, Lm4/a$b;

    invoke-direct {v1, p0}, Lm4/a$b;-><init>(Lm4/a$b;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lm4/a;-><init>(Lm4/a$b;Lm4/a$a;)V

    return-object v0
.end method

.method public getChangingConfigurations()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lm4/a$b;->a()Lm4/a;

    move-result-object v0

    return-object v0
.end method
