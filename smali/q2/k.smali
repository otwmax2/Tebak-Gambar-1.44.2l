###### Class q2.k (q2.k)
.class public Lq2/k;
.super Ljava/lang/Object;
.source "RequestManagerRetriever.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final s:Lq2/k;


# instance fields
.field private volatile o:Lv1/j;

.field final p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/FragmentManager;",
            "Lq2/j;",
            ">;"
        }
    .end annotation
.end field

.field final q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/fragment/app/n;",
            "Lq2/n;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lq2/k;

    invoke-direct {v0}, Lq2/k;-><init>()V

    sput-object v0, Lq2/k;->s:Lq2/k;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lq2/k;->p:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lq2/k;->q:Ljava/util/Map;

    .line 4
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lq2/k;->r:Landroid/os/Handler;

    return-void
.end method

.method private static a(Landroid/app/Activity;)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_15

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_15

    .line 2
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "You cannot start a load for a destroyed activity"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    :goto_15
    return-void
.end method

.method public static c()Lq2/k;
    .registers 1

    .line 1
    sget-object v0, Lq2/k;->s:Lq2/k;

    return-object v0
.end method

.method private g(Landroid/content/Context;)Lv1/j;
    .registers 5

    .line 1
    iget-object v0, p0, Lq2/k;->o:Lv1/j;

    if-nez v0, :cond_23

    .line 2
    monitor-enter p0

    .line 3
    :try_start_5
    iget-object v0, p0, Lq2/k;->o:Lv1/j;

    if-nez v0, :cond_1e

    .line 4
    new-instance v0, Lv1/j;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Lq2/b;

    invoke-direct {v1}, Lq2/b;-><init>()V

    new-instance v2, Lq2/f;

    invoke-direct {v2}, Lq2/f;-><init>()V

    invoke-direct {v0, p1, v1, v2}, Lv1/j;-><init>(Landroid/content/Context;Lq2/g;Lq2/l;)V

    iput-object v0, p0, Lq2/k;->o:Lv1/j;

    .line 5
    :cond_1e
    monitor-exit p0

    goto :goto_23

    :catchall_20
    move-exception p1

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_20

    throw p1

    .line 6
    :cond_23
    :goto_23
    iget-object p1, p0, Lq2/k;->o:Lv1/j;

    return-object p1
.end method


# virtual methods
.method b(Landroid/content/Context;Landroid/app/FragmentManager;)Lv1/j;
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lq2/k;->h(Landroid/app/FragmentManager;)Lq2/j;

    move-result-object p2

    .line 2
    invoke-virtual {p2}, Lq2/j;->c()Lv1/j;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 3
    new-instance v0, Lv1/j;

    invoke-virtual {p2}, Lq2/j;->b()Lq2/a;

    move-result-object v1

    invoke-virtual {p2}, Lq2/j;->d()Lq2/l;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lv1/j;-><init>(Landroid/content/Context;Lq2/g;Lq2/l;)V

    .line 4
    invoke-virtual {p2, v0}, Lq2/j;->f(Lv1/j;)V

    :cond_1a
    return-object v0
.end method

.method public d(Landroid/app/Activity;)Lv1/j;
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 1
    invoke-static {}, Lx2/h;->i()Z

    move-result v0

    if-nez v0, :cond_19

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_d

    goto :goto_19

    .line 2
    :cond_d
    invoke-static {p1}, Lq2/k;->a(Landroid/app/Activity;)V

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 4
    invoke-virtual {p0, p1, v0}, Lq2/k;->b(Landroid/content/Context;Landroid/app/FragmentManager;)Lv1/j;

    move-result-object p1

    return-object p1

    .line 5
    :cond_19
    :goto_19
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lq2/k;->e(Landroid/content/Context;)Lv1/j;

    move-result-object p1

    return-object p1
.end method

.method public e(Landroid/content/Context;)Lv1/j;
    .registers 3

    if-eqz p1, :cond_36

    .line 1
    invoke-static {}, Lx2/h;->j()Z

    move-result v0

    if-eqz v0, :cond_31

    instance-of v0, p1, Landroid/app/Application;

    if-nez v0, :cond_31

    .line 2
    instance-of v0, p1, Landroidx/fragment/app/e;

    if-eqz v0, :cond_17

    .line 3
    check-cast p1, Landroidx/fragment/app/e;

    invoke-virtual {p0, p1}, Lq2/k;->f(Landroidx/fragment/app/e;)Lv1/j;

    move-result-object p1

    return-object p1

    .line 4
    :cond_17
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_22

    .line 5
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lq2/k;->d(Landroid/app/Activity;)Lv1/j;

    move-result-object p1

    return-object p1

    .line 6
    :cond_22
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_31

    .line 7
    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lq2/k;->e(Landroid/content/Context;)Lv1/j;

    move-result-object p1

    return-object p1

    .line 8
    :cond_31
    invoke-direct {p0, p1}, Lq2/k;->g(Landroid/content/Context;)Lv1/j;

    move-result-object p1

    return-object p1

    .line 9
    :cond_36
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You cannot start a load on a null Context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f(Landroidx/fragment/app/e;)Lv1/j;
    .registers 3

    .line 1
    invoke-static {}, Lx2/h;->i()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lq2/k;->e(Landroid/content/Context;)Lv1/j;

    move-result-object p1

    return-object p1

    .line 3
    :cond_f
    invoke-static {p1}, Lq2/k;->a(Landroid/app/Activity;)V

    .line 4
    invoke-virtual {p1}, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;

    move-result-object v0

    .line 5
    invoke-virtual {p0, p1, v0}, Lq2/k;->j(Landroid/content/Context;Landroidx/fragment/app/n;)Lv1/j;

    move-result-object p1

    return-object p1
.end method

.method h(Landroid/app/FragmentManager;)Lq2/j;
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    const-string v0, "com.bumptech.glide.manager"

    .line 1
    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lq2/j;

    if-nez v1, :cond_33

    .line 2
    iget-object v1, p0, Lq2/k;->p:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq2/j;

    if-nez v1, :cond_33

    .line 3
    new-instance v1, Lq2/j;

    invoke-direct {v1}, Lq2/j;-><init>()V

    .line 4
    iget-object v2, p0, Lq2/k;->p:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 6
    iget-object v0, p0, Lq2/k;->r:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_33
    return-object v1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 7

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_18

    const/4 v3, 0x2

    if-eq v0, v3, :cond_c

    const/4 v2, 0x0

    move-object p1, v1

    goto :goto_26

    .line 2
    :cond_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Landroidx/fragment/app/n;

    .line 3
    iget-object p1, p0, Lq2/k;->q:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_23

    .line 4
    :cond_18
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Landroid/app/FragmentManager;

    .line 5
    iget-object p1, p0, Lq2/k;->p:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_23
    move-object v4, v1

    move-object v1, p1

    move-object p1, v4

    :goto_26
    if-eqz v2, :cond_47

    if-nez v1, :cond_47

    const/4 v0, 0x5

    const-string v1, "RMRetriever"

    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to remove expected request manager fragment, manager: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    return v2
.end method

.method i(Landroidx/fragment/app/n;)Lq2/n;
    .registers 5

    const-string v0, "com.bumptech.glide.manager"

    .line 1
    invoke-virtual {p1, v0}, Landroidx/fragment/app/n;->i0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lq2/n;

    if-nez v1, :cond_33

    .line 2
    iget-object v1, p0, Lq2/k;->q:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq2/n;

    if-nez v1, :cond_33

    .line 3
    new-instance v1, Lq2/n;

    invoke-direct {v1}, Lq2/n;-><init>()V

    .line 4
    iget-object v2, p0, Lq2/k;->q:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Landroidx/fragment/app/n;->m()Landroidx/fragment/app/w;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroidx/fragment/app/w;->d(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/w;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/w;->g()I

    .line 6
    iget-object v0, p0, Lq2/k;->r:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_33
    return-object v1
.end method

.method j(Landroid/content/Context;Landroidx/fragment/app/n;)Lv1/j;
    .registers 6

    .line 1
    invoke-virtual {p0, p2}, Lq2/k;->i(Landroidx/fragment/app/n;)Lq2/n;

    move-result-object p2

    .line 2
    invoke-virtual {p2}, Lq2/n;->q()Lv1/j;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 3
    new-instance v0, Lv1/j;

    invoke-virtual {p2}, Lq2/n;->p()Lq2/a;

    move-result-object v1

    invoke-virtual {p2}, Lq2/n;->r()Lq2/l;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lv1/j;-><init>(Landroid/content/Context;Lq2/g;Lq2/l;)V

    .line 4
    invoke-virtual {p2, v0}, Lq2/n;->t(Lv1/j;)V

    :cond_1a
    return-object v0
.end method
