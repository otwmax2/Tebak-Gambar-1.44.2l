###### Class androidx.core.view.k (androidx.core.view.k)
.class public Landroidx/core/view/k;
.super Ljava/lang/Object;
.source "MenuHostHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/k$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Runnable;

.field private final b:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/core/view/m;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/core/view/m;",
            "Landroidx/core/view/k$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/view/k;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/core/view/k;->c:Ljava/util/Map;

    .line 4
    iput-object p1, p0, Landroidx/core/view/k;->a:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a(Landroidx/core/view/k;Landroidx/lifecycle/j$c;Landroidx/core/view/m;Landroidx/lifecycle/n;Landroidx/lifecycle/j$b;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/core/view/k;->g(Landroidx/lifecycle/j$c;Landroidx/core/view/m;Landroidx/lifecycle/n;Landroidx/lifecycle/j$b;)V

    return-void
.end method

.method public static synthetic b(Landroidx/core/view/k;Landroidx/core/view/m;Landroidx/lifecycle/n;Landroidx/lifecycle/j$b;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroidx/core/view/k;->f(Landroidx/core/view/m;Landroidx/lifecycle/n;Landroidx/lifecycle/j$b;)V

    return-void
.end method

.method private synthetic f(Landroidx/core/view/m;Landroidx/lifecycle/n;Landroidx/lifecycle/j$b;)V
    .registers 4

    .line 1
    sget-object p2, Landroidx/lifecycle/j$b;->ON_DESTROY:Landroidx/lifecycle/j$b;

    if-ne p3, p2, :cond_7

    .line 2
    invoke-virtual {p0, p1}, Landroidx/core/view/k;->l(Landroidx/core/view/m;)V

    :cond_7
    return-void
.end method

.method private synthetic g(Landroidx/lifecycle/j$c;Landroidx/core/view/m;Landroidx/lifecycle/n;Landroidx/lifecycle/j$b;)V
    .registers 5

    .line 1
    invoke-static {p1}, Landroidx/lifecycle/j$b;->g(Landroidx/lifecycle/j$c;)Landroidx/lifecycle/j$b;

    move-result-object p3

    if-ne p4, p3, :cond_a

    .line 2
    invoke-virtual {p0, p2}, Landroidx/core/view/k;->c(Landroidx/core/view/m;)V

    goto :goto_22

    .line 3
    :cond_a
    sget-object p3, Landroidx/lifecycle/j$b;->ON_DESTROY:Landroidx/lifecycle/j$b;

    if-ne p4, p3, :cond_12

    .line 4
    invoke-virtual {p0, p2}, Landroidx/core/view/k;->l(Landroidx/core/view/m;)V

    goto :goto_22

    .line 5
    :cond_12
    invoke-static {p1}, Landroidx/lifecycle/j$b;->c(Landroidx/lifecycle/j$c;)Landroidx/lifecycle/j$b;

    move-result-object p1

    if-ne p4, p1, :cond_22

    .line 6
    iget-object p1, p0, Landroidx/core/view/k;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 7
    iget-object p1, p0, Landroidx/core/view/k;->a:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_22
    :goto_22
    return-void
.end method


# virtual methods
.method public c(Landroidx/core/view/m;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/view/k;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p0, Landroidx/core/view/k;->a:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public d(Landroidx/core/view/m;Landroidx/lifecycle/n;)V
    .registers 6

    .line 1
    invoke-virtual {p0, p1}, Landroidx/core/view/k;->c(Landroidx/core/view/m;)V

    .line 2
    invoke-interface {p2}, Landroidx/lifecycle/n;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object p2

    .line 3
    iget-object v0, p0, Landroidx/core/view/k;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/view/k$a;

    if-eqz v0, :cond_14

    .line 4
    invoke-virtual {v0}, Landroidx/core/view/k$a;->a()V

    .line 5
    :cond_14
    new-instance v0, Landroidx/core/view/i;

    invoke-direct {v0, p0, p1}, Landroidx/core/view/i;-><init>(Landroidx/core/view/k;Landroidx/core/view/m;)V

    .line 6
    iget-object v1, p0, Landroidx/core/view/k;->c:Ljava/util/Map;

    new-instance v2, Landroidx/core/view/k$a;

    invoke-direct {v2, p2, v0}, Landroidx/core/view/k$a;-><init>(Landroidx/lifecycle/j;Landroidx/lifecycle/l;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public e(Landroidx/core/view/m;Landroidx/lifecycle/n;Landroidx/lifecycle/j$c;)V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LambdaLast"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Landroidx/lifecycle/n;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object p2

    .line 2
    iget-object v0, p0, Landroidx/core/view/k;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/view/k$a;

    if-eqz v0, :cond_11

    .line 3
    invoke-virtual {v0}, Landroidx/core/view/k$a;->a()V

    .line 4
    :cond_11
    new-instance v0, Landroidx/core/view/j;

    invoke-direct {v0, p0, p3, p1}, Landroidx/core/view/j;-><init>(Landroidx/core/view/k;Landroidx/lifecycle/j$c;Landroidx/core/view/m;)V

    .line 5
    iget-object p3, p0, Landroidx/core/view/k;->c:Ljava/util/Map;

    new-instance v1, Landroidx/core/view/k$a;

    invoke-direct {v1, p2, v0}, Landroidx/core/view/k$a;-><init>(Landroidx/lifecycle/j;Landroidx/lifecycle/l;)V

    invoke-interface {p3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public h(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/core/view/k;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/view/m;

    .line 2
    invoke-interface {v1, p1, p2}, Landroidx/core/view/m;->c(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public i(Landroid/view/Menu;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/core/view/k;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/view/m;

    .line 2
    invoke-interface {v1, p1}, Landroidx/core/view/m;->b(Landroid/view/Menu;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public j(Landroid/view/MenuItem;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/core/view/k;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/view/m;

    .line 2
    invoke-interface {v1, p1}, Landroidx/core/view/m;->a(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 p1, 0x1

    return p1

    :cond_1a
    const/4 p1, 0x0

    return p1
.end method

.method public k(Landroid/view/Menu;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/core/view/k;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/view/m;

    .line 2
    invoke-interface {v1, p1}, Landroidx/core/view/m;->d(Landroid/view/Menu;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public l(Landroidx/core/view/m;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/view/k;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Landroidx/core/view/k;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/core/view/k$a;

    if-eqz p1, :cond_12

    .line 3
    invoke-virtual {p1}, Landroidx/core/view/k$a;->a()V

    .line 4
    :cond_12
    iget-object p1, p0, Landroidx/core/view/k;->a:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

###### Class androidx.core.view.k.a (androidx.core.view.k$a)
.class Landroidx/core/view/k$a;
.super Ljava/lang/Object;
.source "MenuHostHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field final a:Landroidx/lifecycle/j;

.field private b:Landroidx/lifecycle/l;


# direct methods
.method constructor <init>(Landroidx/lifecycle/j;Landroidx/lifecycle/l;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/core/view/k$a;->a:Landroidx/lifecycle/j;

    .line 3
    iput-object p2, p0, Landroidx/core/view/k$a;->b:Landroidx/lifecycle/l;

    .line 4
    invoke-virtual {p1, p2}, Landroidx/lifecycle/j;->a(Landroidx/lifecycle/m;)V

    return-void
.end method


# virtual methods
.method a()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/view/k$a;->a:Landroidx/lifecycle/j;

    iget-object v1, p0, Landroidx/core/view/k$a;->b:Landroidx/lifecycle/l;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/j;->c(Landroidx/lifecycle/m;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/core/view/k$a;->b:Landroidx/lifecycle/l;

    return-void
.end method

###### Class androidx.core.view.i (androidx.core.view.i)
.class public final synthetic Landroidx/core/view/i;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/l;


# instance fields
.field public final synthetic a:Landroidx/core/view/k;

.field public final synthetic b:Landroidx/core/view/m;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/view/k;Landroidx/core/view/m;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/i;->a:Landroidx/core/view/k;

    iput-object p2, p0, Landroidx/core/view/i;->b:Landroidx/core/view/m;

    return-void
.end method


# virtual methods
.method public final c(Landroidx/lifecycle/n;Landroidx/lifecycle/j$b;)V
    .registers 5

    iget-object v0, p0, Landroidx/core/view/i;->a:Landroidx/core/view/k;

    iget-object v1, p0, Landroidx/core/view/i;->b:Landroidx/core/view/m;

    invoke-static {v0, v1, p1, p2}, Landroidx/core/view/k;->b(Landroidx/core/view/k;Landroidx/core/view/m;Landroidx/lifecycle/n;Landroidx/lifecycle/j$b;)V

    return-void
.end method

###### Class androidx.core.view.j (androidx.core.view.j)
.class public final synthetic Landroidx/core/view/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/l;


# instance fields
.field public final synthetic a:Landroidx/core/view/k;

.field public final synthetic b:Landroidx/lifecycle/j$c;

.field public final synthetic c:Landroidx/core/view/m;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/view/k;Landroidx/lifecycle/j$c;Landroidx/core/view/m;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/j;->a:Landroidx/core/view/k;

    iput-object p2, p0, Landroidx/core/view/j;->b:Landroidx/lifecycle/j$c;

    iput-object p3, p0, Landroidx/core/view/j;->c:Landroidx/core/view/m;

    return-void
.end method


# virtual methods
.method public final c(Landroidx/lifecycle/n;Landroidx/lifecycle/j$b;)V
    .registers 6

    iget-object v0, p0, Landroidx/core/view/j;->a:Landroidx/core/view/k;

    iget-object v1, p0, Landroidx/core/view/j;->b:Landroidx/lifecycle/j$c;

    iget-object v2, p0, Landroidx/core/view/j;->c:Landroidx/core/view/m;

    invoke-static {v0, v1, v2, p1, p2}, Landroidx/core/view/k;->a(Landroidx/core/view/k;Landroidx/lifecycle/j$c;Landroidx/core/view/m;Landroidx/lifecycle/n;Landroidx/lifecycle/j$b;)V

    return-void
.end method
