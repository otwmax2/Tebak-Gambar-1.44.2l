###### Class androidx.lifecycle.b0 (androidx.lifecycle.b0)
.class public final Landroidx/lifecycle/b0;
.super Ljava/lang/Object;
.source "SavedStateHandleSupport.kt"

# interfaces
.implements La1/c$c;


# instance fields
.field private final a:La1/c;

.field private b:Z

.field private c:Landroid/os/Bundle;

.field private final d:Lh9/h;


# direct methods
.method public constructor <init>(La1/c;Landroidx/lifecycle/m0;)V
    .registers 4

    const-string v0, "savedStateRegistry"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewModelStoreOwner"

    invoke-static {p2, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/lifecycle/b0;->a:La1/c;

    .line 3
    new-instance p1, Landroidx/lifecycle/b0$a;

    invoke-direct {p1, p2}, Landroidx/lifecycle/b0$a;-><init>(Landroidx/lifecycle/m0;)V

    invoke-static {p1}, Lh9/i;->a(Ls9/a;)Lh9/h;

    move-result-object p1

    iput-object p1, p0, Landroidx/lifecycle/b0;->d:Lh9/h;

    return-void
.end method

.method private final c()Landroidx/lifecycle/c0;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/b0;->d:Lh9/h;

    invoke-interface {v0}, Lh9/h;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/c0;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .registers 6

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Landroidx/lifecycle/b0;->c:Landroid/os/Bundle;

    if-eqz v1, :cond_c

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 4
    :cond_c
    invoke-direct {p0}, Landroidx/lifecycle/b0;->c()Landroidx/lifecycle/c0;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/c0;->j()Ljava/util/Map;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1c
    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/z;

    .line 7
    invoke-virtual {v2}, Landroidx/lifecycle/z;->d()La1/c$c;

    move-result-object v2

    invoke-interface {v2}, La1/c$c;->a()Landroid/os/Bundle;

    move-result-object v2

    .line 8
    sget-object v4, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-static {v2, v4}, Lt9/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 9
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1c

    :cond_48
    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p0, Landroidx/lifecycle/b0;->b:Z

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 6

    const-string v0, "key"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/lifecycle/b0;->d()V

    .line 2
    iget-object v0, p0, Landroidx/lifecycle/b0;->c:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_13

    :cond_12
    move-object v0, v1

    .line 3
    :goto_13
    iget-object v2, p0, Landroidx/lifecycle/b0;->c:Landroid/os/Bundle;

    if-eqz v2, :cond_1a

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 4
    :cond_1a
    iget-object p1, p0, Landroidx/lifecycle/b0;->c:Landroid/os/Bundle;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_27

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result p1

    if-ne p1, v2, :cond_27

    goto :goto_28

    :cond_27
    const/4 v2, 0x0

    :goto_28
    if-eqz v2, :cond_2c

    .line 5
    iput-object v1, p0, Landroidx/lifecycle/b0;->c:Landroid/os/Bundle;

    :cond_2c
    return-object v0
.end method

.method public final d()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/lifecycle/b0;->b:Z

    if-nez v0, :cond_14

    .line 2
    iget-object v0, p0, Landroidx/lifecycle/b0;->a:La1/c;

    const-string v1, "androidx.lifecycle.internal.SavedStateHandlesProvider"

    invoke-virtual {v0, v1}, La1/c;->b(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroidx/lifecycle/b0;->c:Landroid/os/Bundle;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/lifecycle/b0;->b:Z

    .line 4
    invoke-direct {p0}, Landroidx/lifecycle/b0;->c()Landroidx/lifecycle/c0;

    :cond_14
    return-void
.end method

###### Class androidx.lifecycle.b0.a (androidx.lifecycle.b0$a)
.class final Landroidx/lifecycle/b0$a;
.super Lt9/n;
.source "SavedStateHandleSupport.kt"

# interfaces
.implements Ls9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/b0;-><init>(La1/c;Landroidx/lifecycle/m0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt9/n;",
        "Ls9/a<",
        "Landroidx/lifecycle/c0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic o:Landroidx/lifecycle/m0;


# direct methods
.method constructor <init>(Landroidx/lifecycle/m0;)V
    .registers 2

    iput-object p1, p0, Landroidx/lifecycle/b0$a;->o:Landroidx/lifecycle/m0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lt9/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()Landroidx/lifecycle/c0;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/b0$a;->o:Landroidx/lifecycle/m0;

    invoke-static {v0}, Landroidx/lifecycle/a0;->e(Landroidx/lifecycle/m0;)Landroidx/lifecycle/c0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/lifecycle/b0$a;->c()Landroidx/lifecycle/c0;

    move-result-object v0

    return-object v0
.end method
