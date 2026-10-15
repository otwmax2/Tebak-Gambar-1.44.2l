###### Class androidx.appcompat.view.menu.c (androidx.appcompat.view.menu.c)
.class abstract Landroidx/appcompat/view/menu/c;
.super Ljava/lang/Object;
.source "BaseMenuWrapper.java"


# instance fields
.field final a:Landroid/content/Context;

.field private b:Lo/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/g<",
            "Lx/b;",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lo/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/g<",
            "Lx/c;",
            "Landroid/view/SubMenu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/appcompat/view/menu/c;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method final c(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .registers 4

    .line 1
    instance-of v0, p1, Lx/b;

    if-eqz v0, :cond_28

    .line 2
    check-cast p1, Lx/b;

    .line 3
    iget-object v0, p0, Landroidx/appcompat/view/menu/c;->b:Lo/g;

    if-nez v0, :cond_11

    .line 4
    new-instance v0, Lo/g;

    invoke-direct {v0}, Lo/g;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/c;->b:Lo/g;

    .line 5
    :cond_11
    iget-object v0, p0, Landroidx/appcompat/view/menu/c;->b:Lo/g;

    invoke-virtual {v0, p1}, Lo/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    if-nez v0, :cond_27

    .line 6
    new-instance v0, Landroidx/appcompat/view/menu/j;

    iget-object v1, p0, Landroidx/appcompat/view/menu/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/view/menu/j;-><init>(Landroid/content/Context;Lx/b;)V

    .line 7
    iget-object v1, p0, Landroidx/appcompat/view/menu/c;->b:Lo/g;

    invoke-virtual {v1, p1, v0}, Lo/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    return-object v0

    :cond_28
    return-object p1
.end method

.method final d(Landroid/view/SubMenu;)Landroid/view/SubMenu;
    .registers 4

    .line 1
    instance-of v0, p1, Lx/c;

    if-eqz v0, :cond_28

    .line 2
    check-cast p1, Lx/c;

    .line 3
    iget-object v0, p0, Landroidx/appcompat/view/menu/c;->c:Lo/g;

    if-nez v0, :cond_11

    .line 4
    new-instance v0, Lo/g;

    invoke-direct {v0}, Lo/g;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/c;->c:Lo/g;

    .line 5
    :cond_11
    iget-object v0, p0, Landroidx/appcompat/view/menu/c;->c:Lo/g;

    invoke-virtual {v0, p1}, Lo/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    if-nez v0, :cond_27

    .line 6
    new-instance v0, Landroidx/appcompat/view/menu/s;

    iget-object v1, p0, Landroidx/appcompat/view/menu/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/view/menu/s;-><init>(Landroid/content/Context;Lx/c;)V

    .line 7
    iget-object v1, p0, Landroidx/appcompat/view/menu/c;->c:Lo/g;

    invoke-virtual {v1, p1, v0}, Lo/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    return-object v0

    :cond_28
    return-object p1
.end method

.method final e()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/c;->b:Lo/g;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Lo/g;->clear()V

    .line 3
    :cond_7
    iget-object v0, p0, Landroidx/appcompat/view/menu/c;->c:Lo/g;

    if-eqz v0, :cond_e

    .line 4
    invoke-virtual {v0}, Lo/g;->clear()V

    :cond_e
    return-void
.end method

.method final f(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/c;->b:Lo/g;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 2
    :goto_6
    iget-object v1, p0, Landroidx/appcompat/view/menu/c;->b:Lo/g;

    invoke-virtual {v1}, Lo/g;->size()I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 3
    iget-object v1, p0, Landroidx/appcompat/view/menu/c;->b:Lo/g;

    invoke-virtual {v1, v0}, Lo/g;->k(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx/b;

    invoke-interface {v1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v1

    if-ne v1, p1, :cond_23

    .line 4
    iget-object v1, p0, Landroidx/appcompat/view/menu/c;->b:Lo/g;

    invoke-virtual {v1, v0}, Lo/g;->m(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_26
    return-void
.end method

.method final g(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/c;->b:Lo/g;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 2
    :goto_6
    iget-object v1, p0, Landroidx/appcompat/view/menu/c;->b:Lo/g;

    invoke-virtual {v1}, Lo/g;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 3
    iget-object v1, p0, Landroidx/appcompat/view/menu/c;->b:Lo/g;

    invoke-virtual {v1, v0}, Lo/g;->k(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx/b;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, p1, :cond_22

    .line 4
    iget-object p1, p0, Landroidx/appcompat/view/menu/c;->b:Lo/g;

    invoke-virtual {p1, v0}, Lo/g;->m(I)Ljava/lang/Object;

    goto :goto_25

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_25
    :goto_25
    return-void
.end method
