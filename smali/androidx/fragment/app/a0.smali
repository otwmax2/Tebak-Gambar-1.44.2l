###### Class androidx.fragment.app.a0 (androidx.fragment.app.a0)
.class Landroidx/fragment/app/a0;
.super Ljava/lang/Object;
.source "FragmentViewLifecycleOwner.java"

# interfaces
.implements Landroidx/lifecycle/i;
.implements La1/e;
.implements Landroidx/lifecycle/m0;


# instance fields
.field private final o:Landroidx/fragment/app/Fragment;

.field private final p:Landroidx/lifecycle/l0;

.field private q:Landroidx/lifecycle/h0$b;

.field private r:Landroidx/lifecycle/o;

.field private s:La1/d;


# direct methods
.method constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/l0;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/fragment/app/a0;->r:Landroidx/lifecycle/o;

    .line 3
    iput-object v0, p0, Landroidx/fragment/app/a0;->s:La1/d;

    .line 4
    iput-object p1, p0, Landroidx/fragment/app/a0;->o:Landroidx/fragment/app/Fragment;

    .line 5
    iput-object p2, p0, Landroidx/fragment/app/a0;->p:Landroidx/lifecycle/l0;

    return-void
.end method


# virtual methods
.method a(Landroidx/lifecycle/j$b;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/a0;->r:Landroidx/lifecycle/o;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/o;->h(Landroidx/lifecycle/j$b;)V

    return-void
.end method

.method b()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/a0;->r:Landroidx/lifecycle/o;

    if-nez v0, :cond_11

    .line 2
    new-instance v0, Landroidx/lifecycle/o;

    invoke-direct {v0, p0}, Landroidx/lifecycle/o;-><init>(Landroidx/lifecycle/n;)V

    iput-object v0, p0, Landroidx/fragment/app/a0;->r:Landroidx/lifecycle/o;

    .line 3
    invoke-static {p0}, La1/d;->a(La1/e;)La1/d;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/a0;->s:La1/d;

    :cond_11
    return-void
.end method

.method c()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/a0;->r:Landroidx/lifecycle/o;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method d(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/a0;->s:La1/d;

    invoke-virtual {v0, p1}, La1/d;->d(Landroid/os/Bundle;)V

    return-void
.end method

.method e(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/a0;->s:La1/d;

    invoke-virtual {v0, p1}, La1/d;->e(Landroid/os/Bundle;)V

    return-void
.end method

.method f(Landroidx/lifecycle/j$c;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/a0;->r:Landroidx/lifecycle/o;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/o;->o(Landroidx/lifecycle/j$c;)V

    return-void
.end method

.method public synthetic getDefaultViewModelCreationExtras()Ls0/a;
    .registers 2

    invoke-static {p0}, Landroidx/lifecycle/h;->a(Landroidx/lifecycle/i;)Ls0/a;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultViewModelProviderFactory()Landroidx/lifecycle/h0$b;
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/a0;->o:Landroidx/fragment/app/Fragment;

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/h0$b;

    move-result-object v0

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/a0;->o:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mDefaultFactory:Landroidx/lifecycle/h0$b;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 4
    iput-object v0, p0, Landroidx/fragment/app/a0;->q:Landroidx/lifecycle/h0$b;

    return-object v0

    .line 5
    :cond_13
    iget-object v0, p0, Landroidx/fragment/app/a0;->q:Landroidx/lifecycle/h0$b;

    if-nez v0, :cond_42

    const/4 v0, 0x0

    .line 6
    iget-object v1, p0, Landroidx/fragment/app/a0;->o:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 7
    :goto_22
    instance-of v2, v1, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_35

    .line 8
    instance-of v2, v1, Landroid/app/Application;

    if-eqz v2, :cond_2e

    .line 9
    move-object v0, v1

    check-cast v0, Landroid/app/Application;

    goto :goto_35

    .line 10
    :cond_2e
    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_22

    .line 11
    :cond_35
    :goto_35
    new-instance v1, Landroidx/lifecycle/d0;

    iget-object v2, p0, Landroidx/fragment/app/a0;->o:Landroidx/fragment/app/Fragment;

    .line 12
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v0, p0, v2}, Landroidx/lifecycle/d0;-><init>(Landroid/app/Application;La1/e;Landroid/os/Bundle;)V

    iput-object v1, p0, Landroidx/fragment/app/a0;->q:Landroidx/lifecycle/h0$b;

    .line 13
    :cond_42
    iget-object v0, p0, Landroidx/fragment/app/a0;->q:Landroidx/lifecycle/h0$b;

    return-object v0
.end method

.method public getLifecycle()Landroidx/lifecycle/j;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/a0;->b()V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/a0;->r:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public getSavedStateRegistry()La1/c;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/a0;->b()V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/a0;->s:La1/d;

    invoke-virtual {v0}, La1/d;->b()La1/c;

    move-result-object v0

    return-object v0
.end method

.method public getViewModelStore()Landroidx/lifecycle/l0;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/a0;->b()V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/a0;->p:Landroidx/lifecycle/l0;

    return-object v0
.end method
