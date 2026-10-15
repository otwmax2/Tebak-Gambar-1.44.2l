###### Class androidx.lifecycle.LegacySavedStateHandleController (androidx.lifecycle.LegacySavedStateHandleController)
.class Landroidx/lifecycle/LegacySavedStateHandleController;
.super Ljava/lang/Object;
.source "LegacySavedStateHandleController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/LegacySavedStateHandleController$a;
    }
.end annotation


# direct methods
.method static a(Landroidx/lifecycle/g0;La1/c;Landroidx/lifecycle/j;)V
    .registers 4

    const-string v0, "androidx.lifecycle.savedstate.vm.tag"

    .line 1
    invoke-virtual {p0, v0}, Landroidx/lifecycle/g0;->g(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/SavedStateHandleController;

    if-eqz p0, :cond_16

    .line 2
    invoke-virtual {p0}, Landroidx/lifecycle/SavedStateHandleController;->j()Z

    move-result v0

    if-nez v0, :cond_16

    .line 3
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/SavedStateHandleController;->h(La1/c;Landroidx/lifecycle/j;)V

    .line 4
    invoke-static {p1, p2}, Landroidx/lifecycle/LegacySavedStateHandleController;->c(La1/c;Landroidx/lifecycle/j;)V

    :cond_16
    return-void
.end method

.method static b(La1/c;Landroidx/lifecycle/j;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/lifecycle/SavedStateHandleController;
    .registers 5

    .line 1
    invoke-virtual {p0, p2}, La1/c;->b(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 2
    invoke-static {v0, p3}, Landroidx/lifecycle/z;->c(Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/lifecycle/z;

    move-result-object p3

    .line 3
    new-instance v0, Landroidx/lifecycle/SavedStateHandleController;

    invoke-direct {v0, p2, p3}, Landroidx/lifecycle/SavedStateHandleController;-><init>(Ljava/lang/String;Landroidx/lifecycle/z;)V

    .line 4
    invoke-virtual {v0, p0, p1}, Landroidx/lifecycle/SavedStateHandleController;->h(La1/c;Landroidx/lifecycle/j;)V

    .line 5
    invoke-static {p0, p1}, Landroidx/lifecycle/LegacySavedStateHandleController;->c(La1/c;Landroidx/lifecycle/j;)V

    return-object v0
.end method

.method private static c(La1/c;Landroidx/lifecycle/j;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroidx/lifecycle/j;->b()Landroidx/lifecycle/j$c;

    move-result-object v0

    .line 2
    sget-object v1, Landroidx/lifecycle/j$c;->p:Landroidx/lifecycle/j$c;

    if-eq v0, v1, :cond_1a

    sget-object v1, Landroidx/lifecycle/j$c;->r:Landroidx/lifecycle/j$c;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/j$c;->c(Landroidx/lifecycle/j$c;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_1a

    .line 3
    :cond_11
    new-instance v0, Landroidx/lifecycle/LegacySavedStateHandleController$1;

    invoke-direct {v0, p1, p0}, Landroidx/lifecycle/LegacySavedStateHandleController$1;-><init>(Landroidx/lifecycle/j;La1/c;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/j;->a(Landroidx/lifecycle/m;)V

    goto :goto_1f

    .line 4
    :cond_1a
    :goto_1a
    const-class p1, Landroidx/lifecycle/LegacySavedStateHandleController$a;

    invoke-virtual {p0, p1}, La1/c;->i(Ljava/lang/Class;)V

    :goto_1f
    return-void
.end method

###### Class androidx.lifecycle.LegacySavedStateHandleController.AnonymousClass1 (androidx.lifecycle.LegacySavedStateHandleController$1)
.class Landroidx/lifecycle/LegacySavedStateHandleController$1;
.super Ljava/lang/Object;
.source "LegacySavedStateHandleController.java"

# interfaces
.implements Landroidx/lifecycle/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/LegacySavedStateHandleController;->c(La1/c;Landroidx/lifecycle/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/lifecycle/j;

.field final synthetic b:La1/c;


# direct methods
.method constructor <init>(Landroidx/lifecycle/j;La1/c;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/lifecycle/LegacySavedStateHandleController$1;->a:Landroidx/lifecycle/j;

    iput-object p2, p0, Landroidx/lifecycle/LegacySavedStateHandleController$1;->b:La1/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroidx/lifecycle/n;Landroidx/lifecycle/j$b;)V
    .registers 3

    .line 1
    sget-object p1, Landroidx/lifecycle/j$b;->ON_START:Landroidx/lifecycle/j$b;

    if-ne p2, p1, :cond_10

    .line 2
    iget-object p1, p0, Landroidx/lifecycle/LegacySavedStateHandleController$1;->a:Landroidx/lifecycle/j;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/j;->c(Landroidx/lifecycle/m;)V

    .line 3
    iget-object p1, p0, Landroidx/lifecycle/LegacySavedStateHandleController$1;->b:La1/c;

    const-class p2, Landroidx/lifecycle/LegacySavedStateHandleController$a;

    invoke-virtual {p1, p2}, La1/c;->i(Ljava/lang/Class;)V

    :cond_10
    return-void
.end method

###### Class androidx.lifecycle.LegacySavedStateHandleController.a (androidx.lifecycle.LegacySavedStateHandleController$a)
.class final Landroidx/lifecycle/LegacySavedStateHandleController$a;
.super Ljava/lang/Object;
.source "LegacySavedStateHandleController.java"

# interfaces
.implements La1/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/LegacySavedStateHandleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La1/e;)V
    .registers 7

    .line 1
    instance-of v0, p1, Landroidx/lifecycle/m0;

    if-eqz v0, :cond_3f

    .line 2
    move-object v0, p1

    check-cast v0, Landroidx/lifecycle/m0;

    invoke-interface {v0}, Landroidx/lifecycle/m0;->getViewModelStore()Landroidx/lifecycle/l0;

    move-result-object v0

    .line 3
    invoke-interface {p1}, La1/e;->getSavedStateRegistry()La1/c;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Landroidx/lifecycle/l0;->c()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v3}, Landroidx/lifecycle/l0;->b(Ljava/lang/String;)Landroidx/lifecycle/g0;

    move-result-object v3

    .line 6
    invoke-interface {p1}, Landroidx/lifecycle/n;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object v4

    invoke-static {v3, v1, v4}, Landroidx/lifecycle/LegacySavedStateHandleController;->a(Landroidx/lifecycle/g0;La1/c;Landroidx/lifecycle/j;)V

    goto :goto_17

    .line 7
    :cond_2f
    invoke-virtual {v0}, Landroidx/lifecycle/l0;->c()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3e

    .line 8
    const-class p1, Landroidx/lifecycle/LegacySavedStateHandleController$a;

    invoke-virtual {v1, p1}, La1/c;->i(Ljava/lang/Class;)V

    :cond_3e
    return-void

    .line 9
    :cond_3f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Internal error: OnRecreation should be registered only on components that implement ViewModelStoreOwner"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_48

    :goto_47
    throw p1

    :goto_48
    goto :goto_47
.end method
