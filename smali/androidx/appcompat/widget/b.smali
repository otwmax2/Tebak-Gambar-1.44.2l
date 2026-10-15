###### Class androidx.appcompat.widget.b (androidx.appcompat.widget.b)
.class Landroidx/appcompat/widget/b;
.super Landroid/graphics/drawable/Drawable;
.source "ActionBarBackgroundDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/b$a;
    }
.end annotation


# instance fields
.field final a:Landroidx/appcompat/widget/ActionBarContainer;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/ActionBarContainer;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/appcompat/widget/b;->a:Landroidx/appcompat/widget/ActionBarContainer;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/b;->a:Landroidx/appcompat/widget/ActionBarContainer;

    iget-boolean v1, v0, Landroidx/appcompat/widget/ActionBarContainer;->v:Z

    if-eqz v1, :cond_e

    .line 2
    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarContainer;->u:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_22

    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_22

    .line 4
    :cond_e
    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarContainer;->s:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_15

    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6
    :cond_15
    iget-object v0, p0, Landroidx/appcompat/widget/b;->a:Landroidx/appcompat/widget/ActionBarContainer;

    iget-object v1, v0, Landroidx/appcompat/widget/ActionBarContainer;->t:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_22

    iget-boolean v0, v0, Landroidx/appcompat/widget/ActionBarContainer;->w:Z

    if-eqz v0, :cond_22

    .line 7
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_22
    :goto_22
    return-void
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/b;->a:Landroidx/appcompat/widget/ActionBarContainer;

    iget-boolean v1, v0, Landroidx/appcompat/widget/ActionBarContainer;->v:Z

    if-eqz v1, :cond_10

    .line 2
    iget-object v1, v0, Landroidx/appcompat/widget/ActionBarContainer;->u:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_17

    .line 3
    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarContainer;->s:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroidx/appcompat/widget/b$a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Outline;)V

    goto :goto_17

    .line 4
    :cond_10
    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarContainer;->s:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_17

    .line 5
    invoke-static {v0, p1}, Landroidx/appcompat/widget/b$a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Outline;)V

    :cond_17
    :goto_17
    return-void
.end method

.method public setAlpha(I)V
    .registers 2

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    return-void
.end method

###### Class androidx.appcompat.widget.b.a (androidx.appcompat.widget.b$a)
.class Landroidx/appcompat/widget/b$a;
.super Ljava/lang/Object;
.source "ActionBarBackgroundDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method public static a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Outline;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    return-void
.end method
