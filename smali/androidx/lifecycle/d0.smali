###### Class androidx.lifecycle.d0 (androidx.lifecycle.d0)
.class public final Landroidx/lifecycle/d0;
.super Landroidx/lifecycle/h0$d;
.source "SavedStateViewModelFactory.kt"

# interfaces
.implements Landroidx/lifecycle/h0$b;


# instance fields
.field private b:Landroid/app/Application;

.field private final c:Landroidx/lifecycle/h0$b;

.field private d:Landroid/os/Bundle;

.field private e:Landroidx/lifecycle/j;

.field private f:La1/c;


# direct methods
.method public constructor <init>(Landroid/app/Application;La1/e;Landroid/os/Bundle;)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LambdaLast"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p2, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/h0$d;-><init>()V

    .line 2
    invoke-interface {p2}, La1/e;->getSavedStateRegistry()La1/c;

    move-result-object v0

    iput-object v0, p0, Landroidx/lifecycle/d0;->f:La1/c;

    .line 3
    invoke-interface {p2}, Landroidx/lifecycle/n;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object p2

    iput-object p2, p0, Landroidx/lifecycle/d0;->e:Landroidx/lifecycle/j;

    .line 4
    iput-object p3, p0, Landroidx/lifecycle/d0;->d:Landroid/os/Bundle;

    .line 5
    iput-object p1, p0, Landroidx/lifecycle/d0;->b:Landroid/app/Application;

    if-eqz p1, :cond_21

    .line 6
    sget-object p2, Landroidx/lifecycle/h0$a;->f:Landroidx/lifecycle/h0$a$a;

    invoke-virtual {p2, p1}, Landroidx/lifecycle/h0$a$a;->b(Landroid/app/Application;)Landroidx/lifecycle/h0$a;

    move-result-object p1

    goto :goto_26

    .line 7
    :cond_21
    new-instance p1, Landroidx/lifecycle/h0$a;

    invoke-direct {p1}, Landroidx/lifecycle/h0$a;-><init>()V

    .line 8
    :goto_26
    iput-object p1, p0, Landroidx/lifecycle/d0;->c:Landroidx/lifecycle/h0$b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Landroidx/lifecycle/g0;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/g0;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 2
    invoke-virtual {p0, v0, p1}, Landroidx/lifecycle/d0;->d(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/g0;

    move-result-object p1

    return-object p1

    .line 3
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/lang/Class;Ls0/a;)Landroidx/lifecycle/g0;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/g0;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ls0/a;",
            ")TT;"
        }
    .end annotation

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p2, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Landroidx/lifecycle/h0$c;->d:Ls0/a$b;

    invoke-virtual {p2, v0}, Ls0/a;->a(Ls0/a$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_84

    .line 2
    sget-object v1, Landroidx/lifecycle/a0;->a:Ls0/a$b;

    invoke-virtual {p2, v1}, Ls0/a;->a(Ls0/a$b;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_73

    .line 3
    sget-object v1, Landroidx/lifecycle/a0;->b:Ls0/a$b;

    invoke-virtual {p2, v1}, Ls0/a;->a(Ls0/a$b;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_73

    .line 4
    sget-object v0, Landroidx/lifecycle/h0$a;->h:Ls0/a$b;

    invoke-virtual {p2, v0}, Ls0/a;->a(Ls0/a$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    const-class v1, Landroidx/lifecycle/a;

    .line 5
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3f

    if-eqz v0, :cond_3f

    .line 6
    invoke-static {}, Landroidx/lifecycle/e0;->a()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v2}, Landroidx/lifecycle/e0;->c(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    goto :goto_47

    .line 7
    :cond_3f
    invoke-static {}, Landroidx/lifecycle/e0;->b()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v2}, Landroidx/lifecycle/e0;->c(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    :goto_47
    if-nez v2, :cond_50

    .line 8
    iget-object v0, p0, Landroidx/lifecycle/d0;->c:Landroidx/lifecycle/h0$b;

    invoke-interface {v0, p1, p2}, Landroidx/lifecycle/h0$b;->b(Ljava/lang/Class;Ls0/a;)Landroidx/lifecycle/g0;

    move-result-object p1

    return-object p1

    :cond_50
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_66

    if-eqz v0, :cond_66

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    .line 9
    invoke-static {p2}, Landroidx/lifecycle/a0;->b(Ls0/a;)Landroidx/lifecycle/z;

    move-result-object p2

    aput-object p2, v1, v4

    invoke-static {p1, v2, v1}, Landroidx/lifecycle/e0;->d(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/g0;

    move-result-object p1

    goto :goto_7b

    :cond_66
    new-array v0, v4, [Ljava/lang/Object;

    .line 10
    invoke-static {p2}, Landroidx/lifecycle/a0;->b(Ls0/a;)Landroidx/lifecycle/z;

    move-result-object p2

    aput-object p2, v0, v3

    invoke-static {p1, v2, v0}, Landroidx/lifecycle/e0;->d(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/g0;

    move-result-object p1

    goto :goto_7b

    .line 11
    :cond_73
    iget-object p2, p0, Landroidx/lifecycle/d0;->e:Landroidx/lifecycle/j;

    if-eqz p2, :cond_7c

    .line 12
    invoke-virtual {p0, v0, p1}, Landroidx/lifecycle/d0;->d(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/g0;

    move-result-object p1

    :goto_7b
    return-object p1

    .line 13
    :cond_7c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "SAVED_STATE_REGISTRY_OWNER_KEY andVIEW_MODEL_STORE_OWNER_KEY must be provided in the creation extras tosuccessfully create a ViewModel."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_84
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "VIEW_MODEL_KEY must always be provided by ViewModelProvider"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Landroidx/lifecycle/g0;)V
    .registers 4

    const-string v0, "viewModel"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/d0;->e:Landroidx/lifecycle/j;

    if-eqz v0, :cond_e

    .line 2
    iget-object v1, p0, Landroidx/lifecycle/d0;->f:La1/c;

    .line 3
    invoke-static {p1, v1, v0}, Landroidx/lifecycle/LegacySavedStateHandleController;->a(Landroidx/lifecycle/g0;La1/c;Landroidx/lifecycle/j;)V

    :cond_e
    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/g0;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/g0;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelClass"

    invoke-static {p2, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/d0;->e:Landroidx/lifecycle/j;

    if-eqz v0, :cond_82

    .line 2
    const-class v0, Landroidx/lifecycle/a;

    .line 3
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 4
    iget-object v1, p0, Landroidx/lifecycle/d0;->b:Landroid/app/Application;

    if-eqz v1, :cond_23

    .line 5
    invoke-static {}, Landroidx/lifecycle/e0;->a()Ljava/util/List;

    move-result-object v1

    invoke-static {p2, v1}, Landroidx/lifecycle/e0;->c(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    goto :goto_2b

    .line 6
    :cond_23
    invoke-static {}, Landroidx/lifecycle/e0;->b()Ljava/util/List;

    move-result-object v1

    invoke-static {p2, v1}, Landroidx/lifecycle/e0;->c(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    :goto_2b
    if-nez v1, :cond_43

    .line 7
    iget-object p1, p0, Landroidx/lifecycle/d0;->b:Landroid/app/Application;

    if-eqz p1, :cond_38

    iget-object p1, p0, Landroidx/lifecycle/d0;->c:Landroidx/lifecycle/h0$b;

    invoke-interface {p1, p2}, Landroidx/lifecycle/h0$b;->a(Ljava/lang/Class;)Landroidx/lifecycle/g0;

    move-result-object p1

    goto :goto_42

    .line 8
    :cond_38
    sget-object p1, Landroidx/lifecycle/h0$c;->b:Landroidx/lifecycle/h0$c$a;

    invoke-virtual {p1}, Landroidx/lifecycle/h0$c$a;->a()Landroidx/lifecycle/h0$c;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/lifecycle/h0$c;->a(Ljava/lang/Class;)Landroidx/lifecycle/g0;

    move-result-object p1

    :goto_42
    return-object p1

    .line 9
    :cond_43
    iget-object v2, p0, Landroidx/lifecycle/d0;->f:La1/c;

    iget-object v3, p0, Landroidx/lifecycle/d0;->e:Landroidx/lifecycle/j;

    iget-object v4, p0, Landroidx/lifecycle/d0;->d:Landroid/os/Bundle;

    .line 10
    invoke-static {v2, v3, p1, v4}, Landroidx/lifecycle/LegacySavedStateHandleController;->b(La1/c;Landroidx/lifecycle/j;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/lifecycle/SavedStateHandleController;

    move-result-object p1

    const-string v2, "controller.handle"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_6d

    .line 11
    iget-object v0, p0, Landroidx/lifecycle/d0;->b:Landroid/app/Application;

    if-eqz v0, :cond_6d

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 12
    invoke-static {v0}, Lt9/m;->b(Ljava/lang/Object;)V

    aput-object v0, v5, v3

    invoke-virtual {p1}, Landroidx/lifecycle/SavedStateHandleController;->i()Landroidx/lifecycle/z;

    move-result-object v0

    invoke-static {v0, v2}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v0, v5, v4

    invoke-static {p2, v1, v5}, Landroidx/lifecycle/e0;->d(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/g0;

    move-result-object p2

    goto :goto_7c

    :cond_6d
    new-array v0, v4, [Ljava/lang/Object;

    .line 13
    invoke-virtual {p1}, Landroidx/lifecycle/SavedStateHandleController;->i()Landroidx/lifecycle/z;

    move-result-object v4

    invoke-static {v4, v2}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v4, v0, v3

    invoke-static {p2, v1, v0}, Landroidx/lifecycle/e0;->d(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/g0;

    move-result-object p2

    :goto_7c
    const-string v0, "androidx.lifecycle.savedstate.vm.tag"

    .line 14
    invoke-virtual {p2, v0, p1}, Landroidx/lifecycle/g0;->i(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    .line 15
    :cond_82
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "SavedStateViewModelFactory constructed with empty constructor supports only calls to create(modelClass: Class<T>, extras: CreationExtras)."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
