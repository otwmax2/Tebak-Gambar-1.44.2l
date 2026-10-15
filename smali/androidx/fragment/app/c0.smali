###### Class androidx.fragment.app.c0 (androidx.fragment.app.c0)
.class abstract Landroidx/fragment/app/c0;
.super Ljava/lang/Object;
.source "SpecialEffectsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/c0$d;,
        Landroidx/fragment/app/c0$e;
    }
.end annotation


# instance fields
.field private final a:Landroid/view/ViewGroup;

.field final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/c0$e;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/c0$e;",
            ">;"
        }
    .end annotation
.end field

.field d:Z

.field e:Z


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/c0;->b:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/c0;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroidx/fragment/app/c0;->d:Z

    .line 5
    iput-boolean v0, p0, Landroidx/fragment/app/c0;->e:Z

    .line 6
    iput-object p1, p0, Landroidx/fragment/app/c0;->a:Landroid/view/ViewGroup;

    return-void
.end method

.method private a(Landroidx/fragment/app/c0$e$c;Landroidx/fragment/app/c0$e$b;Landroidx/fragment/app/u;)V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c0;->b:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_3
    new-instance v1, Landroidx/core/os/e;

    invoke-direct {v1}, Landroidx/core/os/e;-><init>()V

    .line 3
    invoke-virtual {p3}, Landroidx/fragment/app/u;->k()Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-direct {p0, v2}, Landroidx/fragment/app/c0;->h(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/c0$e;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 4
    invoke-virtual {v2, p1, p2}, Landroidx/fragment/app/c0$e;->k(Landroidx/fragment/app/c0$e$c;Landroidx/fragment/app/c0$e$b;)V

    .line 5
    monitor-exit v0

    return-void

    .line 6
    :cond_17
    new-instance v2, Landroidx/fragment/app/c0$d;

    invoke-direct {v2, p1, p2, p3, v1}, Landroidx/fragment/app/c0$d;-><init>(Landroidx/fragment/app/c0$e$c;Landroidx/fragment/app/c0$e$b;Landroidx/fragment/app/u;Landroidx/core/os/e;)V

    .line 7
    iget-object p1, p0, Landroidx/fragment/app/c0;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance p1, Landroidx/fragment/app/c0$a;

    invoke-direct {p1, p0, v2}, Landroidx/fragment/app/c0$a;-><init>(Landroidx/fragment/app/c0;Landroidx/fragment/app/c0$d;)V

    invoke-virtual {v2, p1}, Landroidx/fragment/app/c0$e;->a(Ljava/lang/Runnable;)V

    .line 9
    new-instance p1, Landroidx/fragment/app/c0$b;

    invoke-direct {p1, p0, v2}, Landroidx/fragment/app/c0$b;-><init>(Landroidx/fragment/app/c0;Landroidx/fragment/app/c0$d;)V

    invoke-virtual {v2, p1}, Landroidx/fragment/app/c0$e;->a(Ljava/lang/Runnable;)V

    .line 10
    monitor-exit v0

    return-void

    :catchall_33
    move-exception p1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw p1
.end method

.method private h(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/c0$e;
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c0;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/c0$e;

    .line 2
    invoke-virtual {v1}, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Landroidx/fragment/app/c0$e;->h()Z

    move-result v2

    if-nez v2, :cond_6

    return-object v1

    :cond_23
    const/4 p1, 0x0

    return-object p1
.end method

.method private i(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/c0$e;
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c0;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/c0$e;

    .line 2
    invoke-virtual {v1}, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Landroidx/fragment/app/c0$e;->h()Z

    move-result v2

    if-nez v2, :cond_6

    return-object v1

    :cond_23
    const/4 p1, 0x0

    return-object p1
.end method

.method static n(Landroid/view/ViewGroup;Landroidx/fragment/app/n;)Landroidx/fragment/app/c0;
    .registers 2

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/n;->y0()Landroidx/fragment/app/d0;

    move-result-object p1

    .line 2
    invoke-static {p0, p1}, Landroidx/fragment/app/c0;->o(Landroid/view/ViewGroup;Landroidx/fragment/app/d0;)Landroidx/fragment/app/c0;

    move-result-object p0

    return-object p0
.end method

.method static o(Landroid/view/ViewGroup;Landroidx/fragment/app/d0;)Landroidx/fragment/app/c0;
    .registers 5

    .line 1
    sget v0, Lo0/b;->b:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 2
    instance-of v2, v1, Landroidx/fragment/app/c0;

    if-eqz v2, :cond_d

    .line 3
    check-cast v1, Landroidx/fragment/app/c0;

    return-object v1

    .line 4
    :cond_d
    invoke-interface {p1, p0}, Landroidx/fragment/app/d0;->a(Landroid/view/ViewGroup;)Landroidx/fragment/app/c0;

    move-result-object p1

    .line 5
    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    return-object p1
.end method

.method private q()V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c0;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/c0$e;

    .line 2
    invoke-virtual {v1}, Landroidx/fragment/app/c0$e;->g()Landroidx/fragment/app/c0$e$b;

    move-result-object v2

    sget-object v3, Landroidx/fragment/app/c0$e$b;->p:Landroidx/fragment/app/c0$e$b;

    if-ne v2, v3, :cond_6

    .line 3
    invoke-virtual {v1}, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-static {v2}, Landroidx/fragment/app/c0$e$c;->e(I)Landroidx/fragment/app/c0$e$c;

    move-result-object v2

    .line 6
    sget-object v3, Landroidx/fragment/app/c0$e$b;->o:Landroidx/fragment/app/c0$e$b;

    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/c0$e;->k(Landroidx/fragment/app/c0$e$c;Landroidx/fragment/app/c0$e$b;)V

    goto :goto_6

    :cond_30
    return-void
.end method


# virtual methods
.method b(Landroidx/fragment/app/c0$e$c;Landroidx/fragment/app/u;)V
    .registers 5

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Landroidx/fragment/app/n;->F0(I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpecialEffectsController: Enqueuing add operation for fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p2}, Landroidx/fragment/app/u;->k()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_21
    sget-object v0, Landroidx/fragment/app/c0$e$b;->p:Landroidx/fragment/app/c0$e$b;

    invoke-direct {p0, p1, v0, p2}, Landroidx/fragment/app/c0;->a(Landroidx/fragment/app/c0$e$c;Landroidx/fragment/app/c0$e$b;Landroidx/fragment/app/u;)V

    return-void
.end method

.method c(Landroidx/fragment/app/u;)V
    .registers 4

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Landroidx/fragment/app/n;->F0(I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpecialEffectsController: Enqueuing hide operation for fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/u;->k()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_21
    sget-object v0, Landroidx/fragment/app/c0$e$c;->q:Landroidx/fragment/app/c0$e$c;

    sget-object v1, Landroidx/fragment/app/c0$e$b;->o:Landroidx/fragment/app/c0$e$b;

    invoke-direct {p0, v0, v1, p1}, Landroidx/fragment/app/c0;->a(Landroidx/fragment/app/c0$e$c;Landroidx/fragment/app/c0$e$b;Landroidx/fragment/app/u;)V

    return-void
.end method

.method d(Landroidx/fragment/app/u;)V
    .registers 4

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Landroidx/fragment/app/n;->F0(I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpecialEffectsController: Enqueuing remove operation for fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/u;->k()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_21
    sget-object v0, Landroidx/fragment/app/c0$e$c;->o:Landroidx/fragment/app/c0$e$c;

    sget-object v1, Landroidx/fragment/app/c0$e$b;->q:Landroidx/fragment/app/c0$e$b;

    invoke-direct {p0, v0, v1, p1}, Landroidx/fragment/app/c0;->a(Landroidx/fragment/app/c0$e$c;Landroidx/fragment/app/c0$e$b;Landroidx/fragment/app/u;)V

    return-void
.end method

.method e(Landroidx/fragment/app/u;)V
    .registers 4

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Landroidx/fragment/app/n;->F0(I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpecialEffectsController: Enqueuing show operation for fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/u;->k()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_21
    sget-object v0, Landroidx/fragment/app/c0$e$c;->p:Landroidx/fragment/app/c0$e$c;

    sget-object v1, Landroidx/fragment/app/c0$e$b;->o:Landroidx/fragment/app/c0$e$b;

    invoke-direct {p0, v0, v1, p1}, Landroidx/fragment/app/c0;->a(Landroidx/fragment/app/c0$e$c;Landroidx/fragment/app/c0$e$b;Landroidx/fragment/app/u;)V

    return-void
.end method

.method abstract f(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/fragment/app/c0$e;",
            ">;Z)V"
        }
    .end annotation
.end method

.method g()V
    .registers 8

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/c0;->e:Z

    if-eqz v0, :cond_5

    return-void

    .line 2
    :cond_5
    iget-object v0, p0, Landroidx/fragment/app/c0;->a:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/core/view/a0;->T(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/c0;->j()V

    .line 4
    iput-boolean v1, p0, Landroidx/fragment/app/c0;->d:Z

    return-void

    .line 5
    :cond_14
    iget-object v0, p0, Landroidx/fragment/app/c0;->b:Ljava/util/ArrayList;

    monitor-enter v0

    .line 6
    :try_start_17
    iget-object v2, p0, Landroidx/fragment/app/c0;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_96

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/c0;->c:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8
    iget-object v3, p0, Landroidx/fragment/app/c0;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 9
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2f
    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_67

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/c0$e;

    const/4 v4, 0x2

    .line 10
    invoke-static {v4}, Landroidx/fragment/app/n;->F0(I)Z

    move-result v4

    if-eqz v4, :cond_58

    const-string v4, "FragmentManager"

    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SpecialEffectsController: Cancelling operation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_58
    invoke-virtual {v3}, Landroidx/fragment/app/c0$e;->b()V

    .line 13
    invoke-virtual {v3}, Landroidx/fragment/app/c0$e;->i()Z

    move-result v4

    if-nez v4, :cond_2f

    .line 14
    iget-object v4, p0, Landroidx/fragment/app/c0;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 15
    :cond_67
    invoke-direct {p0}, Landroidx/fragment/app/c0;->q()V

    .line 16
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/c0;->b:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 17
    iget-object v3, p0, Landroidx/fragment/app/c0;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 18
    iget-object v3, p0, Landroidx/fragment/app/c0;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 19
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/c0$e;

    .line 20
    invoke-virtual {v4}, Landroidx/fragment/app/c0$e;->l()V

    goto :goto_7f

    .line 21
    :cond_8f
    iget-boolean v3, p0, Landroidx/fragment/app/c0;->d:Z

    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/c0;->f(Ljava/util/List;Z)V

    .line 22
    iput-boolean v1, p0, Landroidx/fragment/app/c0;->d:Z

    .line 23
    :cond_96
    monitor-exit v0

    return-void

    :catchall_98
    move-exception v1

    monitor-exit v0
    :try_end_9a
    .catchall {:try_start_17 .. :try_end_9a} :catchall_98

    goto :goto_9c

    :goto_9b
    throw v1

    :goto_9c
    goto :goto_9b
.end method

.method j()V
    .registers 10

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c0;->a:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/core/view/a0;->T(Landroid/view/View;)Z

    move-result v0

    .line 2
    iget-object v1, p0, Landroidx/fragment/app/c0;->b:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3
    :try_start_9
    invoke-direct {p0}, Landroidx/fragment/app/c0;->q()V

    .line 4
    iget-object v2, p0, Landroidx/fragment/app/c0;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/c0$e;

    .line 5
    invoke-virtual {v3}, Landroidx/fragment/app/c0$e;->l()V

    goto :goto_12

    .line 6
    :cond_22
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/c0;->c:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_7f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/c0$e;

    .line 8
    invoke-static {v4}, Landroidx/fragment/app/n;->F0(I)Z

    move-result v4

    if-eqz v4, :cond_7b

    const-string v4, "FragmentManager"

    .line 9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SpecialEffectsController: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_51

    const-string v6, ""

    goto :goto_69

    .line 10
    :cond_51
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Container "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroidx/fragment/app/c0;->a:Landroid/view/ViewGroup;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " is not attached to window. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_69
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Cancelling running operation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 11
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_7b
    invoke-virtual {v3}, Landroidx/fragment/app/c0$e;->b()V

    goto :goto_2d

    .line 13
    :cond_7f
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/c0;->b:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 14
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_db

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/c0$e;

    .line 15
    invoke-static {v4}, Landroidx/fragment/app/n;->F0(I)Z

    move-result v5

    if-eqz v5, :cond_d7

    const-string v5, "FragmentManager"

    .line 16
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SpecialEffectsController: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_ad

    const-string v7, ""

    goto :goto_c5

    .line 17
    :cond_ad
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Container "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Landroidx/fragment/app/c0;->a:Landroid/view/ViewGroup;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " is not attached to window. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_c5
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "Cancelling pending operation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 18
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_d7
    invoke-virtual {v3}, Landroidx/fragment/app/c0$e;->b()V

    goto :goto_8a

    .line 20
    :cond_db
    monitor-exit v1

    return-void

    :catchall_dd
    move-exception v0

    monitor-exit v1
    :try_end_df
    .catchall {:try_start_9 .. :try_end_df} :catchall_dd

    goto :goto_e1

    :goto_e0
    throw v0

    :goto_e1
    goto :goto_e0
.end method

.method k()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/c0;->e:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/c0;->e:Z

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/c0;->g()V

    :cond_a
    return-void
.end method

.method l(Landroidx/fragment/app/u;)Landroidx/fragment/app/c0$e$b;
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/u;->k()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/fragment/app/c0;->h(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/c0$e;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/c0$e;->g()Landroidx/fragment/app/c0$e$b;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 3
    :goto_10
    invoke-virtual {p1}, Landroidx/fragment/app/u;->k()Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/fragment/app/c0;->i(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/c0$e;

    move-result-object p1

    if-eqz p1, :cond_25

    if-eqz v0, :cond_20

    .line 4
    sget-object v1, Landroidx/fragment/app/c0$e$b;->o:Landroidx/fragment/app/c0$e$b;

    if-ne v0, v1, :cond_25

    .line 5
    :cond_20
    invoke-virtual {p1}, Landroidx/fragment/app/c0$e;->g()Landroidx/fragment/app/c0$e$b;

    move-result-object p1

    return-object p1

    :cond_25
    return-object v0
.end method

.method public m()Landroid/view/ViewGroup;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c0;->a:Landroid/view/ViewGroup;

    return-object v0
.end method

.method p()V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c0;->b:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_3
    invoke-direct {p0}, Landroidx/fragment/app/c0;->q()V

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Landroidx/fragment/app/c0;->e:Z

    .line 4
    iget-object v1, p0, Landroidx/fragment/app/c0;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_11
    if-ltz v1, :cond_3d

    .line 5
    iget-object v2, p0, Landroidx/fragment/app/c0;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/c0$e;

    .line 6
    invoke-virtual {v2}, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object v3

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v3}, Landroidx/fragment/app/c0$e$c;->f(Landroid/view/View;)Landroidx/fragment/app/c0$e$c;

    move-result-object v3

    .line 7
    invoke-virtual {v2}, Landroidx/fragment/app/c0$e;->e()Landroidx/fragment/app/c0$e$c;

    move-result-object v4

    sget-object v5, Landroidx/fragment/app/c0$e$c;->p:Landroidx/fragment/app/c0$e$c;

    if-ne v4, v5, :cond_3a

    if-eq v3, v5, :cond_3a

    .line 8
    invoke-virtual {v2}, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isPostponed()Z

    move-result v1

    iput-boolean v1, p0, Landroidx/fragment/app/c0;->e:Z

    goto :goto_3d

    :cond_3a
    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    .line 10
    :cond_3d
    :goto_3d
    monitor-exit v0

    return-void

    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_3f

    goto :goto_43

    :goto_42
    throw v1

    :goto_43
    goto :goto_42
.end method

.method r(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroidx/fragment/app/c0;->d:Z

    return-void
.end method

###### Class androidx.fragment.app.c0.a (androidx.fragment.app.c0$a)
.class Landroidx/fragment/app/c0$a;
.super Ljava/lang/Object;
.source "SpecialEffectsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/c0;->a(Landroidx/fragment/app/c0$e$c;Landroidx/fragment/app/c0$e$b;Landroidx/fragment/app/u;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Landroidx/fragment/app/c0$d;

.field final synthetic p:Landroidx/fragment/app/c0;


# direct methods
.method constructor <init>(Landroidx/fragment/app/c0;Landroidx/fragment/app/c0$d;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/c0$a;->p:Landroidx/fragment/app/c0;

    iput-object p2, p0, Landroidx/fragment/app/c0$a;->o:Landroidx/fragment/app/c0$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c0$a;->p:Landroidx/fragment/app/c0;

    iget-object v0, v0, Landroidx/fragment/app/c0;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/c0$a;->o:Landroidx/fragment/app/c0$d;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/c0$a;->o:Landroidx/fragment/app/c0$d;

    invoke-virtual {v0}, Landroidx/fragment/app/c0$e;->e()Landroidx/fragment/app/c0$e$c;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/c0$a;->o:Landroidx/fragment/app/c0$d;

    invoke-virtual {v1}, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object v1

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/c0$e$c;->c(Landroid/view/View;)V

    :cond_1d
    return-void
.end method

###### Class androidx.fragment.app.c0.b (androidx.fragment.app.c0$b)
.class Landroidx/fragment/app/c0$b;
.super Ljava/lang/Object;
.source "SpecialEffectsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/c0;->a(Landroidx/fragment/app/c0$e$c;Landroidx/fragment/app/c0$e$b;Landroidx/fragment/app/u;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Landroidx/fragment/app/c0$d;

.field final synthetic p:Landroidx/fragment/app/c0;


# direct methods
.method constructor <init>(Landroidx/fragment/app/c0;Landroidx/fragment/app/c0$d;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/c0$b;->p:Landroidx/fragment/app/c0;

    iput-object p2, p0, Landroidx/fragment/app/c0$b;->o:Landroidx/fragment/app/c0$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c0$b;->p:Landroidx/fragment/app/c0;

    iget-object v0, v0, Landroidx/fragment/app/c0;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/c0$b;->o:Landroidx/fragment/app/c0$d;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/c0$b;->p:Landroidx/fragment/app/c0;

    iget-object v0, v0, Landroidx/fragment/app/c0;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/c0$b;->o:Landroidx/fragment/app/c0$d;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

###### Class androidx.fragment.app.c0.c (androidx.fragment.app.c0$c)
.class synthetic Landroidx/fragment/app/c0$c;
.super Ljava/lang/Object;
.source "SpecialEffectsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    invoke-static {}, Landroidx/fragment/app/c0$e$b;->values()[Landroidx/fragment/app/c0$e$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroidx/fragment/app/c0$c;->b:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Landroidx/fragment/app/c0$e$b;->p:Landroidx/fragment/app/c0$e$b;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Landroidx/fragment/app/c0$c;->b:[I

    sget-object v3, Landroidx/fragment/app/c0$e$b;->q:Landroidx/fragment/app/c0$e$b;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    :catch_1d
    const/4 v2, 0x3

    :try_start_1e
    sget-object v3, Landroidx/fragment/app/c0$c;->b:[I

    sget-object v4, Landroidx/fragment/app/c0$e$b;->o:Landroidx/fragment/app/c0$e$b;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_28} :catch_28

    .line 2
    :catch_28
    invoke-static {}, Landroidx/fragment/app/c0$e$c;->values()[Landroidx/fragment/app/c0$e$c;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Landroidx/fragment/app/c0$c;->a:[I

    :try_start_31
    sget-object v4, Landroidx/fragment/app/c0$e$c;->o:Landroidx/fragment/app/c0$e$c;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_39} :catch_39

    :catch_39
    :try_start_39
    sget-object v1, Landroidx/fragment/app/c0$c;->a:[I

    sget-object v3, Landroidx/fragment/app/c0$e$c;->p:Landroidx/fragment/app/c0$e$c;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_43} :catch_43

    :catch_43
    :try_start_43
    sget-object v0, Landroidx/fragment/app/c0$c;->a:[I

    sget-object v1, Landroidx/fragment/app/c0$e$c;->q:Landroidx/fragment/app/c0$e$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_4d} :catch_4d

    :catch_4d
    :try_start_4d
    sget-object v0, Landroidx/fragment/app/c0$c;->a:[I

    sget-object v1, Landroidx/fragment/app/c0$e$c;->r:Landroidx/fragment/app/c0$e$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d .. :try_end_58} :catch_58

    :catch_58
    return-void
.end method

###### Class androidx.fragment.app.c0.d (androidx.fragment.app.c0$d)
.class Landroidx/fragment/app/c0$d;
.super Landroidx/fragment/app/c0$e;
.source "SpecialEffectsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private final h:Landroidx/fragment/app/u;


# direct methods
.method constructor <init>(Landroidx/fragment/app/c0$e$c;Landroidx/fragment/app/c0$e$b;Landroidx/fragment/app/u;Landroidx/core/os/e;)V
    .registers 6

    .line 1
    invoke-virtual {p3}, Landroidx/fragment/app/u;->k()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p4}, Landroidx/fragment/app/c0$e;-><init>(Landroidx/fragment/app/c0$e$c;Landroidx/fragment/app/c0$e$b;Landroidx/fragment/app/Fragment;Landroidx/core/os/e;)V

    .line 2
    iput-object p3, p0, Landroidx/fragment/app/c0$d;->h:Landroidx/fragment/app/u;

    return-void
.end method


# virtual methods
.method public c()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/c0$e;->c()V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/c0$d;->h:Landroidx/fragment/app/u;

    invoke-virtual {v0}, Landroidx/fragment/app/u;->m()V

    return-void
.end method

.method l()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/c0$e;->g()Landroidx/fragment/app/c0$e$b;

    move-result-object v0

    sget-object v1, Landroidx/fragment/app/c0$e$b;->p:Landroidx/fragment/app/c0$e$b;

    if-ne v0, v1, :cond_6e

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/c0$d;->h:Landroidx/fragment/app/u;

    invoke-virtual {v0}, Landroidx/fragment/app/u;->k()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 3
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3e

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setFocusedView(Landroid/view/View;)V

    const/4 v2, 0x2

    .line 5
    invoke-static {v2}, Landroidx/fragment/app/n;->F0(I)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestFocus: Saved focused view "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for Fragment "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FragmentManager"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_3e
    invoke-virtual {p0}, Landroidx/fragment/app/c0$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_55

    .line 9
    iget-object v2, p0, Landroidx/fragment/app/c0$d;->h:Landroidx/fragment/app/u;

    invoke-virtual {v2}, Landroidx/fragment/app/u;->b()V

    .line 10
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 11
    :cond_55
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v3

    if-nez v2, :cond_67

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_67

    const/4 v2, 0x4

    .line 12
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 13
    :cond_67
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getPostOnViewCreatedAlpha()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_6e
    return-void
.end method

###### Class androidx.fragment.app.c0.e (androidx.fragment.app.c0$e)
.class Landroidx/fragment/app/c0$e;
.super Ljava/lang/Object;
.source "SpecialEffectsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/c0$e$b;,
        Landroidx/fragment/app/c0$e$c;
    }
.end annotation


# instance fields
.field private a:Landroidx/fragment/app/c0$e$c;

.field private b:Landroidx/fragment/app/c0$e$b;

.field private final c:Landroidx/fragment/app/Fragment;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroidx/core/os/e;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Z


# direct methods
.method constructor <init>(Landroidx/fragment/app/c0$e$c;Landroidx/fragment/app/c0$e$b;Landroidx/fragment/app/Fragment;Landroidx/core/os/e;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/c0$e;->d:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/c0$e;->e:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroidx/fragment/app/c0$e;->f:Z

    .line 5
    iput-boolean v0, p0, Landroidx/fragment/app/c0$e;->g:Z

    .line 6
    iput-object p1, p0, Landroidx/fragment/app/c0$e;->a:Landroidx/fragment/app/c0$e$c;

    .line 7
    iput-object p2, p0, Landroidx/fragment/app/c0$e;->b:Landroidx/fragment/app/c0$e$b;

    .line 8
    iput-object p3, p0, Landroidx/fragment/app/c0$e;->c:Landroidx/fragment/app/Fragment;

    .line 9
    new-instance p1, Landroidx/fragment/app/c0$e$a;

    invoke-direct {p1, p0}, Landroidx/fragment/app/c0$e$a;-><init>(Landroidx/fragment/app/c0$e;)V

    invoke-virtual {p4, p1}, Landroidx/core/os/e;->c(Landroidx/core/os/e$b;)V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c0$e;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final b()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/c0$e;->h()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/c0$e;->f:Z

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/c0$e;->e:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/c0$e;->c()V

    goto :goto_31

    .line 5
    :cond_16
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/c0$e;->e:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/os/e;

    .line 7
    invoke-virtual {v1}, Landroidx/core/os/e;->a()V

    goto :goto_21

    :cond_31
    :goto_31
    return-void
.end method

.method public c()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/c0$e;->g:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/n;->F0(I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpecialEffectsController: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " has called complete."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroidx/fragment/app/c0$e;->g:Z

    .line 5
    iget-object v0, p0, Landroidx/fragment/app/c0$e;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 6
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_30

    :cond_40
    return-void
.end method

.method public final d(Landroidx/core/os/e;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c0$e;->e:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Landroidx/fragment/app/c0$e;->e:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/c0$e;->c()V

    :cond_13
    return-void
.end method

.method public e()Landroidx/fragment/app/c0$e$c;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c0$e;->a:Landroidx/fragment/app/c0$e$c;

    return-object v0
.end method

.method public final f()Landroidx/fragment/app/Fragment;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c0$e;->c:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method g()Landroidx/fragment/app/c0$e$b;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c0$e;->b:Landroidx/fragment/app/c0$e$b;

    return-object v0
.end method

.method final h()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/c0$e;->f:Z

    return v0
.end method

.method final i()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/c0$e;->g:Z

    return v0
.end method

.method public final j(Landroidx/core/os/e;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/c0$e;->l()V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/c0$e;->e:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final k(Landroidx/fragment/app/c0$e$c;Landroidx/fragment/app/c0$e$b;)V
    .registers 8

    .line 1
    sget-object v0, Landroidx/fragment/app/c0$c;->b:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    const-string v1, "SpecialEffectsController: For fragment "

    const-string v2, "FragmentManager"

    const/4 v3, 0x2

    if-eq p2, v0, :cond_8b

    const-string v0, " mFinalState = "

    if-eq p2, v3, :cond_51

    const/4 v4, 0x3

    if-eq p2, v4, :cond_19

    goto/16 :goto_c2

    .line 2
    :cond_19
    iget-object p2, p0, Landroidx/fragment/app/c0$e;->a:Landroidx/fragment/app/c0$e$c;

    sget-object v4, Landroidx/fragment/app/c0$e$c;->o:Landroidx/fragment/app/c0$e$c;

    if-eq p2, v4, :cond_c2

    .line 3
    invoke-static {v3}, Landroidx/fragment/app/n;->F0(I)Z

    move-result p2

    if-eqz p2, :cond_4e

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/c0$e;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/fragment/app/c0$e;->a:Landroidx/fragment/app/c0$e$c;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_4e
    iput-object p1, p0, Landroidx/fragment/app/c0$e;->a:Landroidx/fragment/app/c0$e$c;

    goto :goto_c2

    .line 6
    :cond_51
    invoke-static {v3}, Landroidx/fragment/app/n;->F0(I)Z

    move-result p1

    if-eqz p1, :cond_82

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Landroidx/fragment/app/c0$e;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Landroidx/fragment/app/c0$e;->a:Landroidx/fragment/app/c0$e$c;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " -> REMOVED. mLifecycleImpact  = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Landroidx/fragment/app/c0$e;->b:Landroidx/fragment/app/c0$e$b;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " to REMOVING."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_82
    sget-object p1, Landroidx/fragment/app/c0$e$c;->o:Landroidx/fragment/app/c0$e$c;

    iput-object p1, p0, Landroidx/fragment/app/c0$e;->a:Landroidx/fragment/app/c0$e$c;

    .line 9
    sget-object p1, Landroidx/fragment/app/c0$e$b;->q:Landroidx/fragment/app/c0$e$b;

    iput-object p1, p0, Landroidx/fragment/app/c0$e;->b:Landroidx/fragment/app/c0$e$b;

    goto :goto_c2

    .line 10
    :cond_8b
    iget-object p1, p0, Landroidx/fragment/app/c0$e;->a:Landroidx/fragment/app/c0$e$c;

    sget-object p2, Landroidx/fragment/app/c0$e$c;->o:Landroidx/fragment/app/c0$e$c;

    if-ne p1, p2, :cond_c2

    .line 11
    invoke-static {v3}, Landroidx/fragment/app/n;->F0(I)Z

    move-result p1

    if-eqz p1, :cond_ba

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Landroidx/fragment/app/c0$e;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " mFinalState = REMOVED -> VISIBLE. mLifecycleImpact = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Landroidx/fragment/app/c0$e;->b:Landroidx/fragment/app/c0$e$b;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " to ADDING."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_ba
    sget-object p1, Landroidx/fragment/app/c0$e$c;->p:Landroidx/fragment/app/c0$e$c;

    iput-object p1, p0, Landroidx/fragment/app/c0$e;->a:Landroidx/fragment/app/c0$e$c;

    .line 14
    sget-object p1, Landroidx/fragment/app/c0$e$b;->p:Landroidx/fragment/app/c0$e$b;

    iput-object p1, p0, Landroidx/fragment/app/c0$e;->b:Landroidx/fragment/app/c0$e$b;

    :cond_c2
    :goto_c2
    return-void
.end method

.method l()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Operation "

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "} "

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mFinalState = "

    .line 7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object v3, p0, Landroidx/fragment/app/c0$e;->a:Landroidx/fragment/app/c0$e$c;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mLifecycleImpact = "

    .line 11
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget-object v3, p0, Landroidx/fragment/app/c0$e;->b:Landroidx/fragment/app/c0$e$b;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mFragment = "

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v1, p0, Landroidx/fragment/app/c0$e;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class androidx.fragment.app.c0.e.a (androidx.fragment.app.c0$e$a)
.class Landroidx/fragment/app/c0$e$a;
.super Ljava/lang/Object;
.source "SpecialEffectsController.java"

# interfaces
.implements Landroidx/core/os/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/c0$e;-><init>(Landroidx/fragment/app/c0$e$c;Landroidx/fragment/app/c0$e$b;Landroidx/fragment/app/Fragment;Landroidx/core/os/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/c0$e;


# direct methods
.method constructor <init>(Landroidx/fragment/app/c0$e;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/c0$e$a;->a:Landroidx/fragment/app/c0$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/c0$e$a;->a:Landroidx/fragment/app/c0$e;

    invoke-virtual {v0}, Landroidx/fragment/app/c0$e;->b()V

    return-void
.end method

###### Class androidx.fragment.app.c0.e.b (androidx.fragment.app.c0$e$b)
.class final enum Landroidx/fragment/app/c0$e$b;
.super Ljava/lang/Enum;
.source "SpecialEffectsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/c0$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/fragment/app/c0$e$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum o:Landroidx/fragment/app/c0$e$b;

.field public static final enum p:Landroidx/fragment/app/c0$e$b;

.field public static final enum q:Landroidx/fragment/app/c0$e$b;

.field private static final synthetic r:[Landroidx/fragment/app/c0$e$b;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1
    new-instance v0, Landroidx/fragment/app/c0$e$b;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/fragment/app/c0$e$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/fragment/app/c0$e$b;->o:Landroidx/fragment/app/c0$e$b;

    .line 2
    new-instance v1, Landroidx/fragment/app/c0$e$b;

    const-string v3, "ADDING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroidx/fragment/app/c0$e$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/fragment/app/c0$e$b;->p:Landroidx/fragment/app/c0$e$b;

    .line 3
    new-instance v3, Landroidx/fragment/app/c0$e$b;

    const-string v5, "REMOVING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroidx/fragment/app/c0$e$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/fragment/app/c0$e$b;->q:Landroidx/fragment/app/c0$e$b;

    const/4 v5, 0x3

    new-array v5, v5, [Landroidx/fragment/app/c0$e$b;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Landroidx/fragment/app/c0$e$b;->r:[Landroidx/fragment/app/c0$e$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/fragment/app/c0$e$b;
    .registers 2

    .line 1
    const-class v0, Landroidx/fragment/app/c0$e$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/c0$e$b;

    return-object p0
.end method

.method public static values()[Landroidx/fragment/app/c0$e$b;
    .registers 1

    .line 1
    sget-object v0, Landroidx/fragment/app/c0$e$b;->r:[Landroidx/fragment/app/c0$e$b;

    invoke-virtual {v0}, [Landroidx/fragment/app/c0$e$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/fragment/app/c0$e$b;

    return-object v0
.end method

###### Class androidx.fragment.app.c0.e.c (androidx.fragment.app.c0$e$c)
.class final enum Landroidx/fragment/app/c0$e$c;
.super Ljava/lang/Enum;
.source "SpecialEffectsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/c0$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/fragment/app/c0$e$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum o:Landroidx/fragment/app/c0$e$c;

.field public static final enum p:Landroidx/fragment/app/c0$e$c;

.field public static final enum q:Landroidx/fragment/app/c0$e$c;

.field public static final enum r:Landroidx/fragment/app/c0$e$c;

.field private static final synthetic s:[Landroidx/fragment/app/c0$e$c;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 1
    new-instance v0, Landroidx/fragment/app/c0$e$c;

    const-string v1, "REMOVED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/fragment/app/c0$e$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/fragment/app/c0$e$c;->o:Landroidx/fragment/app/c0$e$c;

    .line 2
    new-instance v1, Landroidx/fragment/app/c0$e$c;

    const-string v3, "VISIBLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroidx/fragment/app/c0$e$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/fragment/app/c0$e$c;->p:Landroidx/fragment/app/c0$e$c;

    .line 3
    new-instance v3, Landroidx/fragment/app/c0$e$c;

    const-string v5, "GONE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroidx/fragment/app/c0$e$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/fragment/app/c0$e$c;->q:Landroidx/fragment/app/c0$e$c;

    .line 4
    new-instance v5, Landroidx/fragment/app/c0$e$c;

    const-string v7, "INVISIBLE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroidx/fragment/app/c0$e$c;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroidx/fragment/app/c0$e$c;->r:Landroidx/fragment/app/c0$e$c;

    const/4 v7, 0x4

    new-array v7, v7, [Landroidx/fragment/app/c0$e$c;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Landroidx/fragment/app/c0$e$c;->s:[Landroidx/fragment/app/c0$e$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static e(I)Landroidx/fragment/app/c0$e$c;
    .registers 4

    if-eqz p0, :cond_26

    const/4 v0, 0x4

    if-eq p0, v0, :cond_23

    const/16 v0, 0x8

    if-ne p0, v0, :cond_c

    .line 1
    sget-object p0, Landroidx/fragment/app/c0$e$c;->q:Landroidx/fragment/app/c0$e$c;

    return-object p0

    .line 2
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown visibility "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_23
    sget-object p0, Landroidx/fragment/app/c0$e$c;->r:Landroidx/fragment/app/c0$e$c;

    return-object p0

    .line 4
    :cond_26
    sget-object p0, Landroidx/fragment/app/c0$e$c;->p:Landroidx/fragment/app/c0$e$c;

    return-object p0
.end method

.method static f(Landroid/view/View;)Landroidx/fragment/app/c0$e$c;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_12

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_12

    .line 2
    sget-object p0, Landroidx/fragment/app/c0$e$c;->r:Landroidx/fragment/app/c0$e$c;

    return-object p0

    .line 3
    :cond_12
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    invoke-static {p0}, Landroidx/fragment/app/c0$e$c;->e(I)Landroidx/fragment/app/c0$e$c;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/fragment/app/c0$e$c;
    .registers 2

    .line 1
    const-class v0, Landroidx/fragment/app/c0$e$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/c0$e$c;

    return-object p0
.end method

.method public static values()[Landroidx/fragment/app/c0$e$c;
    .registers 1

    .line 1
    sget-object v0, Landroidx/fragment/app/c0$e$c;->s:[Landroidx/fragment/app/c0$e$c;

    invoke-virtual {v0}, [Landroidx/fragment/app/c0$e$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/fragment/app/c0$e$c;

    return-object v0
.end method


# virtual methods
.method c(Landroid/view/View;)V
    .registers 7

    .line 1
    sget-object v0, Landroidx/fragment/app/c0$c;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, "FragmentManager"

    const/4 v3, 0x2

    if-eq v0, v1, :cond_80

    const-string v1, "SpecialEffectsController: Setting view "

    if-eq v0, v3, :cond_5e

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3b

    const/4 v4, 0x4

    if-eq v0, v4, :cond_1a

    goto/16 :goto_ad

    .line 2
    :cond_1a
    invoke-static {v3}, Landroidx/fragment/app/n;->F0(I)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to INVISIBLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_37
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_ad

    .line 5
    :cond_3b
    invoke-static {v3}, Landroidx/fragment/app/n;->F0(I)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to GONE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_58
    const/16 v0, 0x8

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_ad

    .line 8
    :cond_5e
    invoke-static {v3}, Landroidx/fragment/app/n;->F0(I)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to VISIBLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7b
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_ad

    .line 11
    :cond_80
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_ad

    .line 12
    invoke-static {v3}, Landroidx/fragment/app/n;->F0(I)Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SpecialEffectsController: Removing view "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " from container "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :cond_aa
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_ad
    :goto_ad
    return-void
.end method
