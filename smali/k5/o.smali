###### Class k5.o (k5.o)
.class public Lk5/o;
.super Ljava/lang/Object;
.source "ComponentRuntime.java"

# interfaces
.implements Lk5/e;
.implements Lc6/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk5/o$b;
    }
.end annotation


# static fields
.field private static final i:Lk6/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk6/b<",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lk5/c<",
            "*>;",
            "Lk6/b<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lk5/f0<",
            "*>;",
            "Lk6/b<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lk5/f0<",
            "*>;",
            "Lk5/y<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lk6/b<",
            "Lcom/google/firebase/components/ComponentRegistrar;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lk5/v;

.field private final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lk5/j;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Lk5/n;->a:Lk5/n;

    sput-object v0, Lk5/o;->i:Lk6/b;

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/Executor;Ljava/lang/Iterable;Ljava/util/Collection;Lk5/j;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/Iterable<",
            "Lk6/b<",
            "Lcom/google/firebase/components/ComponentRegistrar;",
            ">;>;",
            "Ljava/util/Collection<",
            "Lk5/c<",
            "*>;>;",
            "Lk5/j;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lk5/o;->a:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lk5/o;->b:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lk5/o;->c:Ljava/util/Map;

    .line 6
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lk5/o;->e:Ljava/util/Set;

    .line 7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lk5/o;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    new-instance v0, Lk5/v;

    invoke-direct {v0, p1}, Lk5/v;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lk5/o;->f:Lk5/v;

    .line 9
    iput-object p4, p0, Lk5/o;->h:Lk5/j;

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    const-class p4, Lk5/v;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Lh6/d;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-class v4, Lh6/c;

    aput-object v4, v1, v2

    invoke-static {v0, p4, v1}, Lk5/c;->s(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lk5/c;

    move-result-object p4

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    const-class p4, Lc6/a;

    new-array v0, v3, [Ljava/lang/Class;

    invoke-static {p0, p4, v0}, Lk5/c;->s(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lk5/c;

    move-result-object p4

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_59
    :goto_59
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_6b

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lk5/c;

    if-eqz p4, :cond_59

    .line 14
    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_59

    .line 15
    :cond_6b
    invoke-static {p2}, Lk5/o;->q(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lk5/o;->d:Ljava/util/List;

    .line 16
    invoke-direct {p0, p1}, Lk5/o;->n(Ljava/util/List;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/Executor;Ljava/lang/Iterable;Ljava/util/Collection;Lk5/j;Lk5/o$a;)V
    .registers 6

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lk5/o;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Iterable;Ljava/util/Collection;Lk5/j;)V

    return-void
.end method

.method public static synthetic j(Lk5/o;Lk5/c;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Lk5/o;->r(Lk5/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lk5/y;Lk6/b;)V
    .registers 2

    invoke-static {p0, p1}, Lk5/o;->t(Lk5/y;Lk6/b;)V

    return-void
.end method

.method public static synthetic l(Lk5/d0;Lk6/b;)V
    .registers 2

    invoke-static {p0, p1}, Lk5/o;->s(Lk5/d0;Lk6/b;)V

    return-void
.end method

.method public static m(Ljava/util/concurrent/Executor;)Lk5/o$b;
    .registers 2

    .line 1
    new-instance v0, Lk5/o$b;

    invoke-direct {v0, p0}, Lk5/o$b;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method private n(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lk5/c<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    monitor-enter p0

    .line 3
    :try_start_6
    iget-object v1, p0, Lk5/o;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4
    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk6/b;
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_e6

    .line 6
    :try_start_18
    invoke-interface {v2}, Lk6/b;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/components/ComponentRegistrar;

    if-eqz v2, :cond_c

    .line 7
    iget-object v3, p0, Lk5/o;->h:Lk5/j;

    invoke-interface {v3, v2}, Lk5/j;->a(Lcom/google/firebase/components/ComponentRegistrar;)Ljava/util/List;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_2c
    .catch Lk5/w; {:try_start_18 .. :try_end_2c} :catch_2d
    .catchall {:try_start_18 .. :try_end_2c} :catchall_e6

    goto :goto_c

    :catch_2d
    move-exception v2

    .line 9
    :try_start_2e
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    const-string v3, "ComponentDiscovery"

    const-string v4, "Invalid component registrar."

    .line 10
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 11
    :cond_39
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 12
    :cond_3d
    :goto_3d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk5/c;

    .line 14
    invoke-virtual {v2}, Lk5/c;->j()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_53
    if-ge v4, v3, :cond_3d

    aget-object v5, v2, v4

    .line 15
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "kotlinx.coroutines.CoroutineDispatcher"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7c

    .line 16
    iget-object v6, p0, Lk5/o;->e:Ljava/util/Set;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_73

    .line 17
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_3d

    .line 18
    :cond_73
    iget-object v6, p0, Lk5/o;->e:Ljava/util/Set;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_7c
    add-int/lit8 v4, v4, 0x1

    goto :goto_53

    .line 19
    :cond_7f
    iget-object v1, p0, Lk5/o;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 20
    invoke-static {p1}, Lk5/q;->a(Ljava/util/List;)V

    goto :goto_9c

    .line 21
    :cond_8b
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lk5/o;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 22
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 23
    invoke-static {v1}, Lk5/q;->a(Ljava/util/List;)V

    .line 24
    :goto_9c
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_bc

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk5/c;

    .line 25
    new-instance v3, Lk5/x;

    new-instance v4, Lk5/m;

    invoke-direct {v4, p0, v2}, Lk5/m;-><init>(Lk5/o;Lk5/c;)V

    invoke-direct {v3, v4}, Lk5/x;-><init>(Lk6/b;)V

    .line 26
    iget-object v4, p0, Lk5/o;->a:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a0

    .line 27
    :cond_bc
    invoke-direct {p0, p1}, Lk5/o;->w(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 28
    invoke-direct {p0}, Lk5/o;->x()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 29
    invoke-direct {p0}, Lk5/o;->v()V

    .line 30
    monitor-exit p0
    :try_end_ce
    .catchall {:try_start_2e .. :try_end_ce} :catchall_e6

    .line 31
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 32
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_d2

    .line 33
    :cond_e2
    invoke-direct {p0}, Lk5/o;->u()V

    return-void

    :catchall_e6
    move-exception p1

    .line 34
    :try_start_e7
    monitor-exit p0
    :try_end_e8
    .catchall {:try_start_e7 .. :try_end_e8} :catchall_e6

    goto :goto_ea

    :goto_e9
    throw p1

    :goto_ea
    goto :goto_e9
.end method

.method private o(Ljava/util/Map;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lk5/c<",
            "*>;",
            "Lk6/b<",
            "*>;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk5/c;

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk6/b;

    .line 4
    invoke-virtual {v1}, Lk5/c;->n()Z

    move-result v2

    if-nez v2, :cond_2e

    invoke-virtual {v1}, Lk5/c;->o()Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz p2, :cond_8

    .line 5
    :cond_2e
    invoke-interface {v0}, Lk6/b;->get()Ljava/lang/Object;

    goto :goto_8

    .line 6
    :cond_32
    iget-object p1, p0, Lk5/o;->f:Lk5/v;

    invoke-virtual {p1}, Lk5/v;->d()V

    return-void
.end method

.method private static q(Ljava/lang/Iterable;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_17
    return-object v0
.end method

.method private synthetic r(Lk5/c;)Ljava/lang/Object;
    .registers 4

    .line 1
    invoke-virtual {p1}, Lk5/c;->h()Lk5/h;

    move-result-object v0

    new-instance v1, Lk5/g0;

    invoke-direct {v1, p1, p0}, Lk5/g0;-><init>(Lk5/c;Lk5/e;)V

    .line 2
    invoke-interface {v0, v1}, Lk5/h;->a(Lk5/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic s(Lk5/d0;Lk6/b;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lk5/d0;->j(Lk6/b;)V

    return-void
.end method

.method private static synthetic t(Lk5/y;Lk6/b;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lk5/y;->a(Lk6/b;)V

    return-void
.end method

.method private u()V
    .registers 3

    .line 1
    iget-object v0, p0, Lk5/o;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_13

    .line 2
    iget-object v1, p0, Lk5/o;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v1, v0}, Lk5/o;->o(Ljava/util/Map;Z)V

    :cond_13
    return-void
.end method

.method private v()V
    .registers 7

    .line 1
    iget-object v0, p0, Lk5/o;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk5/c;

    .line 2
    invoke-virtual {v1}, Lk5/c;->g()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1e
    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk5/r;

    .line 3
    invoke-virtual {v3}, Lk5/r;->g()Z

    move-result v4

    if-eqz v4, :cond_4e

    iget-object v4, p0, Lk5/o;->c:Ljava/util/Map;

    invoke-virtual {v3}, Lk5/r;->c()Lk5/f0;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4e

    .line 4
    iget-object v4, p0, Lk5/o;->c:Ljava/util/Map;

    invoke-virtual {v3}, Lk5/r;->c()Lk5/f0;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v5

    invoke-static {v5}, Lk5/y;->b(Ljava/util/Collection;)Lk5/y;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    .line 5
    :cond_4e
    iget-object v4, p0, Lk5/o;->b:Ljava/util/Map;

    invoke-virtual {v3}, Lk5/r;->c()Lk5/f0;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e

    .line 6
    invoke-virtual {v3}, Lk5/r;->f()Z

    move-result v4

    if-nez v4, :cond_74

    .line 7
    invoke-virtual {v3}, Lk5/r;->g()Z

    move-result v4

    if-nez v4, :cond_1e

    .line 8
    iget-object v4, p0, Lk5/o;->b:Ljava/util/Map;

    invoke-virtual {v3}, Lk5/r;->c()Lk5/f0;

    move-result-object v3

    invoke-static {}, Lk5/d0;->e()Lk5/d0;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    .line 9
    :cond_74
    new-instance v0, Lk5/z;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v2, v4

    const/4 v1, 0x1

    .line 10
    invoke-virtual {v3}, Lk5/r;->c()Lk5/f0;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "Unsatisfied dependency for component %s: %s"

    .line 11
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lk5/z;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8d
    return-void
.end method

.method private w(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lk5/c<",
            "*>;>;)",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk5/c;

    .line 3
    invoke-virtual {v1}, Lk5/c;->p()Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_9

    .line 4
    :cond_1c
    iget-object v2, p0, Lk5/o;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk6/b;

    .line 5
    invoke-virtual {v1}, Lk5/c;->j()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk5/f0;

    .line 6
    iget-object v4, p0, Lk5/o;->b:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_46

    .line 7
    iget-object v4, p0, Lk5/o;->b:Ljava/util/Map;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c

    .line 8
    :cond_46
    iget-object v4, p0, Lk5/o;->b:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk6/b;

    .line 9
    check-cast v3, Lk5/d0;

    .line 10
    new-instance v4, Lk5/l;

    invoke-direct {v4, v3, v2}, Lk5/l;-><init>(Lk5/d0;Lk6/b;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    :cond_59
    return-object v0
.end method

.method private x()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    iget-object v2, p0, Lk5/o;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lk5/c;

    .line 5
    invoke-virtual {v4}, Lk5/c;->p()Z

    move-result v5

    if-eqz v5, :cond_2d

    goto :goto_14

    .line 6
    :cond_2d
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk6/b;

    .line 7
    invoke-virtual {v4}, Lk5/c;->j()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lk5/f0;

    .line 8
    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_55

    .line 9
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_55
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3b

    .line 11
    :cond_5f
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_67
    :goto_67
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 12
    iget-object v3, p0, Lk5/o;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_95

    .line 13
    iget-object v3, p0, Lk5/o;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lk5/f0;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2}, Lk5/y;->b(Ljava/util/Collection;)Lk5/y;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_67

    .line 14
    :cond_95
    iget-object v3, p0, Lk5/o;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk5/y;

    .line 15
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_ab
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_67

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lk6/b;

    .line 16
    new-instance v5, Lk5/k;

    invoke-direct {v5, v3, v4}, Lk5/k;-><init>(Lk5/y;Lk6/b;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ab

    :cond_c0
    return-object v0
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lk5/d;->a(Lk5/e;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized b(Lk5/f0;)Lk6/b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lk5/f0<",
            "TT;>;)",
            "Lk6/b<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "Null interface requested."

    .line 1
    invoke-static {p1, v0}, Lk5/e0;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lk5/o;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk6/b;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object p1

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public synthetic c(Ljava/lang/Class;)Lk6/b;
    .registers 2

    invoke-static {p0, p1}, Lk5/d;->d(Lk5/e;Ljava/lang/Class;)Lk6/b;

    move-result-object p1

    return-object p1
.end method

.method public synthetic d(Lk5/f0;)Ljava/util/Set;
    .registers 2

    invoke-static {p0, p1}, Lk5/d;->f(Lk5/e;Lk5/f0;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public synthetic e(Lk5/f0;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lk5/d;->b(Lk5/e;Lk5/f0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public f(Lk5/f0;)Lk6/a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lk5/f0<",
            "TT;>;)",
            "Lk6/a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lk5/o;->b(Lk5/f0;)Lk6/b;

    move-result-object p1

    if-nez p1, :cond_b

    .line 2
    invoke-static {}, Lk5/d0;->e()Lk5/d0;

    move-result-object p1

    return-object p1

    .line 3
    :cond_b
    instance-of v0, p1, Lk5/d0;

    if-eqz v0, :cond_12

    .line 4
    check-cast p1, Lk5/d0;

    return-object p1

    .line 5
    :cond_12
    invoke-static {p1}, Lk5/d0;->i(Lk6/b;)Lk5/d0;

    move-result-object p1

    return-object p1
.end method

.method public synthetic g(Ljava/lang/Class;)Ljava/util/Set;
    .registers 2

    invoke-static {p0, p1}, Lk5/d;->e(Lk5/e;Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized h(Lk5/f0;)Lk6/b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lk5/f0<",
            "TT;>;)",
            "Lk6/b<",
            "Ljava/util/Set<",
            "TT;>;>;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lk5/o;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk5/y;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_11

    if-eqz p1, :cond_d

    .line 2
    monitor-exit p0

    return-object p1

    .line 3
    :cond_d
    :try_start_d
    sget-object p1, Lk5/o;->i:Lk6/b;
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_11

    monitor-exit p0

    return-object p1

    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public synthetic i(Ljava/lang/Class;)Lk6/a;
    .registers 2

    invoke-static {p0, p1}, Lk5/d;->c(Lk5/e;Ljava/lang/Class;)Lk6/a;

    move-result-object p1

    return-object p1
.end method

.method public p(Z)V
    .registers 5

    .line 1
    iget-object v0, p0, Lk5/o;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    .line 2
    :cond_e
    monitor-enter p0

    .line 3
    :try_start_f
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lk5/o;->a:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 4
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_1b

    .line 5
    invoke-direct {p0, v0, p1}, Lk5/o;->o(Ljava/util/Map;Z)V

    return-void

    :catchall_1b
    move-exception p1

    .line 6
    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p1
.end method

###### Class k5.o.a (k5.o$a)
.class synthetic Lk5/o$a;
.super Ljava/lang/Object;
.source "ComponentRuntime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk5/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class k5.o.b (k5.o$b)
.class public final Lk5/o$b;
.super Ljava/lang/Object;
.source "ComponentRuntime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk5/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lk6/b<",
            "Lcom/google/firebase/components/ComponentRegistrar;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lk5/c<",
            "*>;>;"
        }
    .end annotation
.end field

.field private d:Lk5/j;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lk5/o$b;->b:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lk5/o$b;->c:Ljava/util/List;

    .line 4
    sget-object v0, Lk5/j;->a:Lk5/j;

    iput-object v0, p0, Lk5/o$b;->d:Lk5/j;

    .line 5
    iput-object p1, p0, Lk5/o$b;->a:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/components/ComponentRegistrar;)Lcom/google/firebase/components/ComponentRegistrar;
    .registers 1

    invoke-static {p0}, Lk5/o$b;->f(Lcom/google/firebase/components/ComponentRegistrar;)Lcom/google/firebase/components/ComponentRegistrar;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic f(Lcom/google/firebase/components/ComponentRegistrar;)Lcom/google/firebase/components/ComponentRegistrar;
    .registers 1

    return-object p0
.end method


# virtual methods
.method public b(Lk5/c;)Lk5/o$b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk5/c<",
            "*>;)",
            "Lk5/o$b;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk5/o$b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public c(Lcom/google/firebase/components/ComponentRegistrar;)Lk5/o$b;
    .registers 4

    .line 1
    iget-object v0, p0, Lk5/o$b;->b:Ljava/util/List;

    new-instance v1, Lk5/p;

    invoke-direct {v1, p1}, Lk5/p;-><init>(Lcom/google/firebase/components/ComponentRegistrar;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public d(Ljava/util/Collection;)Lk5/o$b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lk6/b<",
            "Lcom/google/firebase/components/ComponentRegistrar;",
            ">;>;)",
            "Lk5/o$b;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk5/o$b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public e()Lk5/o;
    .registers 8

    .line 1
    new-instance v6, Lk5/o;

    iget-object v1, p0, Lk5/o$b;->a:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lk5/o$b;->b:Ljava/util/List;

    iget-object v3, p0, Lk5/o$b;->c:Ljava/util/List;

    iget-object v4, p0, Lk5/o$b;->d:Lk5/j;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lk5/o;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Iterable;Ljava/util/Collection;Lk5/j;Lk5/o$a;)V

    return-object v6
.end method

.method public g(Lk5/j;)Lk5/o$b;
    .registers 2

    .line 1
    iput-object p1, p0, Lk5/o$b;->d:Lk5/j;

    return-object p0
.end method

###### Class k5.p (k5.p)
.class public final synthetic Lk5/p;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lk6/b;


# instance fields
.field public final synthetic a:Lcom/google/firebase/components/ComponentRegistrar;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/components/ComponentRegistrar;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk5/p;->a:Lcom/google/firebase/components/ComponentRegistrar;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lk5/p;->a:Lcom/google/firebase/components/ComponentRegistrar;

    invoke-static {v0}, Lk5/o$b;->a(Lcom/google/firebase/components/ComponentRegistrar;)Lcom/google/firebase/components/ComponentRegistrar;

    move-result-object v0

    return-object v0
.end method

###### Class k5.k (k5.k)
.class public final synthetic Lk5/k;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lk5/y;

.field public final synthetic p:Lk6/b;


# direct methods
.method public synthetic constructor <init>(Lk5/y;Lk6/b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk5/k;->o:Lk5/y;

    iput-object p2, p0, Lk5/k;->p:Lk6/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lk5/k;->o:Lk5/y;

    iget-object v1, p0, Lk5/k;->p:Lk6/b;

    invoke-static {v0, v1}, Lk5/o;->k(Lk5/y;Lk6/b;)V

    return-void
.end method

###### Class k5.l (k5.l)
.class public final synthetic Lk5/l;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lk5/d0;

.field public final synthetic p:Lk6/b;


# direct methods
.method public synthetic constructor <init>(Lk5/d0;Lk6/b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk5/l;->o:Lk5/d0;

    iput-object p2, p0, Lk5/l;->p:Lk6/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lk5/l;->o:Lk5/d0;

    iget-object v1, p0, Lk5/l;->p:Lk6/b;

    invoke-static {v0, v1}, Lk5/o;->l(Lk5/d0;Lk6/b;)V

    return-void
.end method

###### Class k5.m (k5.m)
.class public final synthetic Lk5/m;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lk6/b;


# instance fields
.field public final synthetic a:Lk5/o;

.field public final synthetic b:Lk5/c;


# direct methods
.method public synthetic constructor <init>(Lk5/o;Lk5/c;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk5/m;->a:Lk5/o;

    iput-object p2, p0, Lk5/m;->b:Lk5/c;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lk5/m;->a:Lk5/o;

    iget-object v1, p0, Lk5/m;->b:Lk5/c;

    invoke-static {v0, v1}, Lk5/o;->j(Lk5/o;Lk5/c;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class k5.n (k5.n)
.class public final synthetic Lk5/n;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lk6/b;


# static fields
.field public static final synthetic a:Lk5/n;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lk5/n;

    invoke-direct {v0}, Lk5/n;-><init>()V

    sput-object v0, Lk5/n;->a:Lk5/n;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
