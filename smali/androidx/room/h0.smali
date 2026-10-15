###### Class androidx.room.h0 (androidx.room.h0)
.class public abstract Landroidx/room/h0;
.super Ljava/lang/Object;
.source "RoomDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/h0$f;,
        Landroidx/room/h0$e;,
        Landroidx/room/h0$b;,
        Landroidx/room/h0$d;,
        Landroidx/room/h0$a;,
        Landroidx/room/h0$c;
    }
.end annotation


# instance fields
.field protected volatile a:Lb1/g;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private b:Ljava/util/concurrent/Executor;

.field private c:Ljava/util/concurrent/Executor;

.field private d:Lb1/h;

.field private final e:Landroidx/room/o;

.field private f:Z

.field g:Z

.field protected h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/room/h0$b;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ly0/a;",
            ">;",
            "Ly0/a;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private k:Landroidx/room/a;

.field private final l:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Landroidx/room/h0;->j:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 3
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Landroidx/room/h0;->l:Ljava/lang/ThreadLocal;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/room/h0;->m:Ljava/util/Map;

    .line 6
    invoke-virtual {p0}, Landroidx/room/h0;->g()Landroidx/room/o;

    move-result-object v0

    iput-object v0, p0, Landroidx/room/h0;->e:Landroidx/room/o;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/room/h0;->n:Ljava/util/Map;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/room/h0;->i:Ljava/util/Map;

    return-void
.end method

.method private B(Ljava/lang/Class;Lb1/h;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lb1/h;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p2

    .line 2
    :cond_7
    instance-of v0, p2, Landroidx/room/j;

    if-eqz v0, :cond_16

    .line 3
    check-cast p2, Landroidx/room/j;

    invoke-interface {p2}, Landroidx/room/j;->b()Lb1/h;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroidx/room/h0;->B(Ljava/lang/Class;Lb1/h;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_16
    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic a(Landroidx/room/h0;Lb1/g;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Landroidx/room/h0;->w(Lb1/g;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroidx/room/h0;Lb1/g;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Landroidx/room/h0;->x(Lb1/g;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private r()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/room/h0;->c()V

    .line 2
    iget-object v0, p0, Landroidx/room/h0;->d:Lb1/h;

    invoke-interface {v0}, Lb1/h;->K1()Lb1/g;

    move-result-object v0

    .line 3
    iget-object v1, p0, Landroidx/room/h0;->e:Landroidx/room/o;

    invoke-virtual {v1, v0}, Landroidx/room/o;->p(Lb1/g;)V

    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1e

    .line 5
    invoke-interface {v0}, Lb1/g;->h3()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 6
    invoke-interface {v0}, Lb1/g;->z1()V

    goto :goto_21

    .line 7
    :cond_1e
    invoke-interface {v0}, Lb1/g;->V()V

    :goto_21
    return-void
.end method

.method private s()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/room/h0;->d:Lb1/h;

    invoke-interface {v0}, Lb1/h;->K1()Lb1/g;

    move-result-object v0

    invoke-interface {v0}, Lb1/g;->X1()V

    .line 2
    invoke-virtual {p0}, Landroidx/room/h0;->p()Z

    move-result v0

    if-nez v0, :cond_14

    .line 3
    iget-object v0, p0, Landroidx/room/h0;->e:Landroidx/room/o;

    invoke-virtual {v0}, Landroidx/room/o;->h()V

    :cond_14
    return-void
.end method

.method private static u()Z
    .registers 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private synthetic w(Lb1/g;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/room/h0;->r()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic x(Lb1/g;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/room/h0;->s()V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public A()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/h0;->d:Lb1/h;

    invoke-interface {v0}, Lb1/h;->K1()Lb1/g;

    move-result-object v0

    invoke-interface {v0}, Lb1/g;->u1()V

    return-void
.end method

.method public c()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/room/h0;->f:Z

    if-eqz v0, :cond_5

    return-void

    .line 2
    :cond_5
    invoke-static {}, Landroidx/room/h0;->u()Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 3
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access database on the main thread since it may potentially lock the UI for a long period of time."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/room/h0;->p()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Landroidx/room/h0;->l:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_f

    goto :goto_17

    .line 2
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access database on a different coroutine context inherited from a suspending transaction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    :goto_17
    return-void
.end method

.method public e()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/room/h0;->c()V

    .line 2
    iget-object v0, p0, Landroidx/room/h0;->k:Landroidx/room/a;

    if-nez v0, :cond_b

    .line 3
    invoke-direct {p0}, Landroidx/room/h0;->r()V

    goto :goto_13

    .line 4
    :cond_b
    new-instance v1, Lx0/h;

    invoke-direct {v1, p0}, Lx0/h;-><init>(Landroidx/room/h0;)V

    invoke-virtual {v0, v1}, Landroidx/room/a;->c(Ll/a;)Ljava/lang/Object;

    :goto_13
    return-void
.end method

.method public f(Ljava/lang/String;)Lb1/k;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/room/h0;->c()V

    .line 2
    invoke-virtual {p0}, Landroidx/room/h0;->d()V

    .line 3
    iget-object v0, p0, Landroidx/room/h0;->d:Lb1/h;

    invoke-interface {v0}, Lb1/h;->K1()Lb1/g;

    move-result-object v0

    invoke-interface {v0, p1}, Lb1/g;->w0(Ljava/lang/String;)Lb1/k;

    move-result-object p1

    return-object p1
.end method

.method protected abstract g()Landroidx/room/o;
.end method

.method protected abstract h(Landroidx/room/i;)Lb1/h;
.end method

.method public i()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/h0;->k:Landroidx/room/a;

    if-nez v0, :cond_8

    .line 2
    invoke-direct {p0}, Landroidx/room/h0;->s()V

    goto :goto_10

    .line 3
    :cond_8
    new-instance v1, Lx0/i;

    invoke-direct {v1, p0}, Lx0/i;-><init>(Landroidx/room/h0;)V

    invoke-virtual {v0, v1}, Landroidx/room/a;->c(Ll/a;)Ljava/lang/Object;

    :goto_10
    return-void
.end method

.method public j(Ljava/util/Map;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ly0/a;",
            ">;",
            "Ly0/a;",
            ">;)",
            "Ljava/util/List<",
            "Ly0/b;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method k()Ljava/util/concurrent/locks/Lock;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/room/h0;->j:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    return-object v0
.end method

.method public l()Lb1/h;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/room/h0;->d:Lb1/h;

    return-object v0
.end method

.method public m()Ljava/util/concurrent/Executor;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/room/h0;->b:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public n()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Ly0/a;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected o()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public p()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/room/h0;->d:Lb1/h;

    invoke-interface {v0}, Lb1/h;->K1()Lb1/g;

    move-result-object v0

    invoke-interface {v0}, Lb1/g;->O2()Z

    move-result v0

    return v0
.end method

.method public q(Landroidx/room/i;)V
    .registers 12

    .line 1
    invoke-virtual {p0, p1}, Landroidx/room/h0;->h(Landroidx/room/i;)Lb1/h;

    move-result-object v0

    iput-object v0, p0, Landroidx/room/h0;->d:Lb1/h;

    .line 2
    invoke-virtual {p0}, Landroidx/room/h0;->n()Ljava/util/Set;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    .line 4
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v2, :cond_72

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 5
    iget-object v5, p1, Landroidx/room/i;->h:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    :goto_28
    if-ltz v5, :cond_42

    .line 6
    iget-object v4, p1, Landroidx/room/i;->h:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 7
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 8
    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    move v3, v5

    goto :goto_42

    :cond_3f
    add-int/lit8 v5, v5, -0x1

    goto :goto_28

    :cond_42
    :goto_42
    if-ltz v3, :cond_52

    .line 9
    iget-object v4, p0, Landroidx/room/h0;->i:Ljava/util/Map;

    iget-object v5, p1, Landroidx/room/i;->h:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ly0/a;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 10
    :cond_52
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A required auto migration spec ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") is missing in the database configuration."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_72
    iget-object v0, p1, Landroidx/room/i;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v4

    :goto_79
    if-ltz v0, :cond_8c

    .line 13
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_84

    add-int/lit8 v0, v0, -0x1

    goto :goto_79

    .line 14
    :cond_84
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unexpected auto migration specs found. Annotate AutoMigrationSpec implementation with @ProvidedAutoMigrationSpec annotation or remove this spec from the builder."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_8c
    iget-object v0, p0, Landroidx/room/h0;->i:Ljava/util/Map;

    invoke-virtual {p0, v0}, Landroidx/room/h0;->j(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_96
    :goto_96
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_bf

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly0/b;

    .line 17
    iget-object v5, p1, Landroidx/room/i;->d:Landroidx/room/h0$d;

    invoke-virtual {v5}, Landroidx/room/h0$d;->e()Ljava/util/Map;

    move-result-object v5

    iget v6, v1, Ly0/b;->a:I

    .line 18
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_96

    .line 19
    iget-object v5, p1, Landroidx/room/i;->d:Landroidx/room/h0$d;

    new-array v6, v4, [Ly0/b;

    aput-object v1, v6, v2

    invoke-virtual {v5, v6}, Landroidx/room/h0$d;->b([Ly0/b;)V

    goto :goto_96

    .line 20
    :cond_bf
    const-class v0, Landroidx/room/j0;

    iget-object v1, p0, Landroidx/room/h0;->d:Lb1/h;

    invoke-direct {p0, v0, v1}, Landroidx/room/h0;->B(Ljava/lang/Class;Lb1/h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/room/j0;

    if-eqz v0, :cond_ce

    .line 21
    invoke-virtual {v0, p1}, Landroidx/room/j0;->e(Landroidx/room/i;)V

    .line 22
    :cond_ce
    const-class v0, Landroidx/room/f;

    iget-object v1, p0, Landroidx/room/h0;->d:Lb1/h;

    .line 23
    invoke-direct {p0, v0, v1}, Landroidx/room/h0;->B(Ljava/lang/Class;Lb1/h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/room/f;

    if-eqz v0, :cond_e5

    .line 24
    invoke-virtual {v0}, Landroidx/room/f;->c()Landroidx/room/a;

    move-result-object v0

    iput-object v0, p0, Landroidx/room/h0;->k:Landroidx/room/a;

    .line 25
    iget-object v1, p0, Landroidx/room/h0;->e:Landroidx/room/o;

    invoke-virtual {v1, v0}, Landroidx/room/o;->k(Landroidx/room/a;)V

    .line 26
    :cond_e5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_f7

    .line 27
    iget-object v0, p1, Landroidx/room/i;->j:Landroidx/room/h0$c;

    sget-object v1, Landroidx/room/h0$c;->q:Landroidx/room/h0$c;

    if-ne v0, v1, :cond_f2

    const/4 v2, 0x1

    .line 28
    :cond_f2
    iget-object v0, p0, Landroidx/room/h0;->d:Lb1/h;

    invoke-interface {v0, v2}, Lb1/h;->setWriteAheadLoggingEnabled(Z)V

    .line 29
    :cond_f7
    iget-object v0, p1, Landroidx/room/i;->e:Ljava/util/List;

    iput-object v0, p0, Landroidx/room/h0;->h:Ljava/util/List;

    .line 30
    iget-object v0, p1, Landroidx/room/i;->k:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroidx/room/h0;->b:Ljava/util/concurrent/Executor;

    .line 31
    new-instance v0, Landroidx/room/l0;

    iget-object v1, p1, Landroidx/room/i;->l:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1}, Landroidx/room/l0;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroidx/room/h0;->c:Ljava/util/concurrent/Executor;

    .line 32
    iget-boolean v0, p1, Landroidx/room/i;->i:Z

    iput-boolean v0, p0, Landroidx/room/h0;->f:Z

    .line 33
    iput-boolean v2, p0, Landroidx/room/h0;->g:Z

    .line 34
    iget-boolean v0, p1, Landroidx/room/i;->m:Z

    if-eqz v0, :cond_11b

    .line 35
    iget-object v0, p0, Landroidx/room/h0;->e:Landroidx/room/o;

    iget-object v1, p1, Landroidx/room/i;->b:Landroid/content/Context;

    iget-object v2, p1, Landroidx/room/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroidx/room/o;->l(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    :cond_11b
    invoke-virtual {p0}, Landroidx/room/h0;->o()Ljava/util/Map;

    move-result-object v0

    .line 37
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    .line 38
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1ab

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 39
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 40
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_148
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    .line 41
    iget-object v7, p1, Landroidx/room/i;->g:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v4

    :goto_15b
    if-ltz v7, :cond_174

    .line 42
    iget-object v8, p1, Landroidx/room/i;->g:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 43
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_171

    .line 44
    invoke-virtual {v1, v7}, Ljava/util/BitSet;->set(I)V

    goto :goto_175

    :cond_171
    add-int/lit8 v7, v7, -0x1

    goto :goto_15b

    :cond_174
    const/4 v7, -0x1

    :goto_175
    if-ltz v7, :cond_183

    .line 45
    iget-object v8, p0, Landroidx/room/h0;->n:Ljava/util/Map;

    iget-object v9, p1, Landroidx/room/i;->g:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v8, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_148

    .line 46
    :cond_183
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A required type converter ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is missing in the database configuration."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 48
    :cond_1ab
    iget-object v0, p1, Landroidx/room/i;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v4

    :goto_1b2
    if-ltz v0, :cond_1df

    .line 49
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1bd

    add-int/lit8 v0, v0, -0x1

    goto :goto_1b2

    .line 50
    :cond_1bd
    iget-object p1, p1, Landroidx/room/i;->g:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type converter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". Annotate TypeConverter class with @ProvidedTypeConverter annotation or remove this converter from the builder."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1df
    return-void
.end method

.method protected t(Lb1/g;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/room/h0;->e:Landroidx/room/o;

    invoke-virtual {v0, p1}, Landroidx/room/o;->e(Lb1/g;)V

    return-void
.end method

.method public v()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/room/h0;->k:Landroidx/room/a;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Landroidx/room/a;->g()Z

    move-result v0

    return v0

    .line 3
    :cond_9
    iget-object v0, p0, Landroidx/room/h0;->a:Lb1/g;

    if-eqz v0, :cond_15

    .line 4
    invoke-interface {v0}, Lb1/g;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method

.method public y(Lb1/j;)Landroid/database/Cursor;
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroidx/room/h0;->z(Lb1/j;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public z(Lb1/j;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/room/h0;->c()V

    .line 2
    invoke-virtual {p0}, Landroidx/room/h0;->d()V

    if-eqz p2, :cond_19

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_19

    .line 4
    iget-object v0, p0, Landroidx/room/h0;->d:Lb1/h;

    invoke-interface {v0}, Lb1/h;->K1()Lb1/g;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lb1/g;->s0(Lb1/j;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    .line 5
    :cond_19
    iget-object p2, p0, Landroidx/room/h0;->d:Lb1/h;

    invoke-interface {p2}, Lb1/h;->K1()Lb1/g;

    move-result-object p2

    invoke-interface {p2, p1}, Lb1/g;->c1(Lb1/j;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

###### Class androidx.room.h0.a (androidx.room.h0$a)
.class public Landroidx/room/h0$a;
.super Ljava/lang/Object;
.source "RoomDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/room/h0;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;

.field private final c:Landroid/content/Context;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/room/h0$b;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroidx/room/h0$e;

.field private f:Landroidx/room/h0$f;

.field private g:Ljava/util/concurrent/Executor;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ly0/a;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/concurrent/Executor;

.field private k:Ljava/util/concurrent/Executor;

.field private l:Lb1/h$c;

.field private m:Z

.field private n:Landroidx/room/h0$c;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:J

.field private s:Ljava/util/concurrent/TimeUnit;

.field private final t:Landroidx/room/h0$d;

.field private u:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/lang/String;

.field private x:Ljava/io/File;

.field private y:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Landroidx/room/h0$a;->r:J

    .line 3
    iput-object p1, p0, Landroidx/room/h0$a;->c:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Landroidx/room/h0$a;->a:Ljava/lang/Class;

    .line 5
    iput-object p3, p0, Landroidx/room/h0$a;->b:Ljava/lang/String;

    .line 6
    sget-object p1, Landroidx/room/h0$c;->o:Landroidx/room/h0$c;

    iput-object p1, p0, Landroidx/room/h0$a;->n:Landroidx/room/h0$c;

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Landroidx/room/h0$a;->p:Z

    .line 8
    new-instance p1, Landroidx/room/h0$d;

    invoke-direct {p1}, Landroidx/room/h0$d;-><init>()V

    iput-object p1, p0, Landroidx/room/h0$a;->t:Landroidx/room/h0$d;

    return-void
.end method


# virtual methods
.method public a(Landroidx/room/h0$b;)Landroidx/room/h0$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/room/h0$b;",
            ")",
            "Landroidx/room/h0$a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/h0$a;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/room/h0$a;->d:Ljava/util/ArrayList;

    .line 3
    :cond_b
    iget-object v0, p0, Landroidx/room/h0$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public varargs b([Ly0/b;)Landroidx/room/h0$a;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ly0/b;",
            ")",
            "Landroidx/room/h0$a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/h0$a;->v:Ljava/util/Set;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/room/h0$a;->v:Ljava/util/Set;

    .line 3
    :cond_b
    array-length v0, p1

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_2a

    aget-object v2, p1, v1

    .line 4
    iget-object v3, p0, Landroidx/room/h0$a;->v:Ljava/util/Set;

    iget v4, v2, Ly0/b;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v3, p0, Landroidx/room/h0$a;->v:Ljava/util/Set;

    iget v2, v2, Ly0/b;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 6
    :cond_2a
    iget-object v0, p0, Landroidx/room/h0$a;->t:Landroidx/room/h0$d;

    invoke-virtual {v0, p1}, Landroidx/room/h0$d;->b([Ly0/b;)V

    return-object p0
.end method

.method public c()Landroidx/room/h0$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/room/h0$a<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/room/h0$a;->m:Z

    return-object p0
.end method

.method public d()Landroidx/room/h0;
    .registers 26
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Landroidx/room/h0$a;->c:Landroid/content/Context;

    if-eqz v1, :cond_134

    .line 2
    iget-object v1, v0, Landroidx/room/h0$a;->a:Ljava/lang/Class;

    if-eqz v1, :cond_12c

    .line 3
    iget-object v1, v0, Landroidx/room/h0$a;->j:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_1b

    iget-object v2, v0, Landroidx/room/h0$a;->k:Ljava/util/concurrent/Executor;

    if-nez v2, :cond_1b

    .line 4
    invoke-static {}, Lj/a;->d()Ljava/util/concurrent/Executor;

    move-result-object v1

    iput-object v1, v0, Landroidx/room/h0$a;->k:Ljava/util/concurrent/Executor;

    iput-object v1, v0, Landroidx/room/h0$a;->j:Ljava/util/concurrent/Executor;

    goto :goto_2c

    :cond_1b
    if-eqz v1, :cond_24

    .line 5
    iget-object v2, v0, Landroidx/room/h0$a;->k:Ljava/util/concurrent/Executor;

    if-nez v2, :cond_24

    .line 6
    iput-object v1, v0, Landroidx/room/h0$a;->k:Ljava/util/concurrent/Executor;

    goto :goto_2c

    :cond_24
    if-nez v1, :cond_2c

    .line 7
    iget-object v1, v0, Landroidx/room/h0$a;->k:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_2c

    .line 8
    iput-object v1, v0, Landroidx/room/h0$a;->j:Ljava/util/concurrent/Executor;

    .line 9
    :cond_2c
    :goto_2c
    iget-object v1, v0, Landroidx/room/h0$a;->v:Ljava/util/Set;

    if-eqz v1, :cond_64

    iget-object v2, v0, Landroidx/room/h0$a;->u:Ljava/util/Set;

    if-eqz v2, :cond_64

    .line 10
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_38
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 11
    iget-object v3, v0, Landroidx/room/h0$a;->u:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4d

    goto :goto_38

    .line 12
    :cond_4d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inconsistency detected. A Migration was supplied to addMigration(Migration... migrations) that has a start or end version equal to a start version supplied to fallbackToDestructiveMigrationFrom(int... startVersions). Start version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 13
    :cond_64
    iget-object v1, v0, Landroidx/room/h0$a;->l:Lb1/h$c;

    if-nez v1, :cond_6d

    .line 14
    new-instance v1, Lc1/c;

    invoke-direct {v1}, Lc1/c;-><init>()V

    .line 15
    :cond_6d
    iget-wide v2, v0, Landroidx/room/h0$a;->r:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_91

    .line 16
    iget-object v4, v0, Landroidx/room/h0$a;->b:Ljava/lang/String;

    if-eqz v4, :cond_89

    .line 17
    new-instance v4, Landroidx/room/a;

    iget-object v5, v0, Landroidx/room/h0$a;->s:Ljava/util/concurrent/TimeUnit;

    iget-object v6, v0, Landroidx/room/h0$a;->k:Ljava/util/concurrent/Executor;

    invoke-direct {v4, v2, v3, v5, v6}, Landroidx/room/a;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/Executor;)V

    .line 18
    new-instance v2, Landroidx/room/h;

    invoke-direct {v2, v1, v4}, Landroidx/room/h;-><init>(Lb1/h$c;Landroidx/room/a;)V

    move-object v1, v2

    goto :goto_91

    .line 19
    :cond_89
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot create auto-closing database for an in-memory database."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 20
    :cond_91
    :goto_91
    iget-object v2, v0, Landroidx/room/h0$a;->w:Ljava/lang/String;

    if-nez v2, :cond_9d

    iget-object v3, v0, Landroidx/room/h0$a;->x:Ljava/io/File;

    if-nez v3, :cond_9d

    iget-object v3, v0, Landroidx/room/h0$a;->y:Ljava/util/concurrent/Callable;

    if-eqz v3, :cond_bf

    .line 21
    :cond_9d
    iget-object v3, v0, Landroidx/room/h0$a;->b:Ljava/lang/String;

    if-eqz v3, :cond_124

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_a7

    const/4 v5, 0x0

    goto :goto_a8

    :cond_a7
    const/4 v5, 0x1

    .line 22
    :goto_a8
    iget-object v6, v0, Landroidx/room/h0$a;->x:Ljava/io/File;

    if-nez v6, :cond_ae

    const/4 v7, 0x0

    goto :goto_af

    :cond_ae
    const/4 v7, 0x1

    :goto_af
    add-int/2addr v5, v7

    .line 23
    iget-object v7, v0, Landroidx/room/h0$a;->y:Ljava/util/concurrent/Callable;

    if-nez v7, :cond_b5

    goto :goto_b6

    :cond_b5
    const/4 v3, 0x1

    :goto_b6
    add-int/2addr v5, v3

    if-ne v5, v4, :cond_11c

    .line 24
    new-instance v3, Landroidx/room/k0;

    invoke-direct {v3, v2, v6, v7, v1}, Landroidx/room/k0;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;Lb1/h$c;)V

    move-object v1, v3

    .line 25
    :cond_bf
    iget-object v2, v0, Landroidx/room/h0$a;->f:Landroidx/room/h0$f;

    if-eqz v2, :cond_cc

    .line 26
    new-instance v3, Landroidx/room/b0;

    iget-object v4, v0, Landroidx/room/h0$a;->g:Ljava/util/concurrent/Executor;

    invoke-direct {v3, v1, v2, v4}, Landroidx/room/b0;-><init>(Lb1/h$c;Landroidx/room/h0$f;Ljava/util/concurrent/Executor;)V

    move-object v8, v3

    goto :goto_cd

    :cond_cc
    move-object v8, v1

    .line 27
    :goto_cd
    new-instance v1, Landroidx/room/i;

    move-object v5, v1

    iget-object v2, v0, Landroidx/room/h0$a;->c:Landroid/content/Context;

    move-object v6, v2

    iget-object v7, v0, Landroidx/room/h0$a;->b:Ljava/lang/String;

    iget-object v9, v0, Landroidx/room/h0$a;->t:Landroidx/room/h0$d;

    iget-object v10, v0, Landroidx/room/h0$a;->d:Ljava/util/ArrayList;

    iget-boolean v11, v0, Landroidx/room/h0$a;->m:Z

    iget-object v3, v0, Landroidx/room/h0$a;->n:Landroidx/room/h0$c;

    .line 28
    invoke-virtual {v3, v2}, Landroidx/room/h0$c;->e(Landroid/content/Context;)Landroidx/room/h0$c;

    move-result-object v12

    iget-object v13, v0, Landroidx/room/h0$a;->j:Ljava/util/concurrent/Executor;

    iget-object v14, v0, Landroidx/room/h0$a;->k:Ljava/util/concurrent/Executor;

    iget-boolean v15, v0, Landroidx/room/h0$a;->o:Z

    iget-boolean v2, v0, Landroidx/room/h0$a;->p:Z

    move/from16 v16, v2

    iget-boolean v2, v0, Landroidx/room/h0$a;->q:Z

    move/from16 v17, v2

    iget-object v2, v0, Landroidx/room/h0$a;->u:Ljava/util/Set;

    move-object/from16 v18, v2

    iget-object v2, v0, Landroidx/room/h0$a;->w:Ljava/lang/String;

    move-object/from16 v19, v2

    iget-object v2, v0, Landroidx/room/h0$a;->x:Ljava/io/File;

    move-object/from16 v20, v2

    iget-object v2, v0, Landroidx/room/h0$a;->y:Ljava/util/concurrent/Callable;

    move-object/from16 v21, v2

    iget-object v2, v0, Landroidx/room/h0$a;->e:Landroidx/room/h0$e;

    move-object/from16 v22, v2

    iget-object v2, v0, Landroidx/room/h0$a;->h:Ljava/util/List;

    move-object/from16 v23, v2

    iget-object v2, v0, Landroidx/room/h0$a;->i:Ljava/util/List;

    move-object/from16 v24, v2

    invoke-direct/range {v5 .. v24}, Landroidx/room/i;-><init>(Landroid/content/Context;Ljava/lang/String;Lb1/h$c;Landroidx/room/h0$d;Ljava/util/List;ZLandroidx/room/h0$c;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZZZLjava/util/Set;Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;Landroidx/room/h0$e;Ljava/util/List;Ljava/util/List;)V

    .line 29
    iget-object v2, v0, Landroidx/room/h0$a;->a:Ljava/lang/Class;

    const-string v3, "_Impl"

    invoke-static {v2, v3}, Landroidx/room/g0;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/h0;

    .line 30
    invoke-virtual {v2, v1}, Landroidx/room/h0;->q(Landroidx/room/i;)V

    return-object v2

    .line 31
    :cond_11c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "More than one of createFromAsset(), createFromInputStream(), and createFromFile() were called on this Builder, but the database can only be created using one of the three configurations."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 32
    :cond_124
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot create from asset or file for an in-memory database."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 33
    :cond_12c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must provide an abstract class that extends RoomDatabase"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 34
    :cond_134
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot provide null context for the database."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_13d

    :goto_13c
    throw v1

    :goto_13d
    goto :goto_13c
.end method

.method public e()Landroidx/room/h0$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/room/h0$a<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroidx/room/h0$a;->p:Z

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/room/h0$a;->q:Z

    return-object p0
.end method

.method public f(Lb1/h$c;)Landroidx/room/h0$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb1/h$c;",
            ")",
            "Landroidx/room/h0$a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/room/h0$a;->l:Lb1/h$c;

    return-object p0
.end method

.method public g(Ljava/util/concurrent/Executor;)Landroidx/room/h0$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Landroidx/room/h0$a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/room/h0$a;->j:Ljava/util/concurrent/Executor;

    return-object p0
.end method

###### Class androidx.room.h0.b (androidx.room.h0$b)
.class public abstract Landroidx/room/h0$b;
.super Ljava/lang/Object;
.source "RoomDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb1/g;)V
    .registers 2

    return-void
.end method

.method public b(Lb1/g;)V
    .registers 2

    return-void
.end method

.method public c(Lb1/g;)V
    .registers 2

    return-void
.end method

###### Class androidx.room.h0.c (androidx.room.h0$c)
.class public final enum Landroidx/room/h0$c;
.super Ljava/lang/Enum;
.source "RoomDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/room/h0$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum o:Landroidx/room/h0$c;

.field public static final enum p:Landroidx/room/h0$c;

.field public static final enum q:Landroidx/room/h0$c;

.field private static final synthetic r:[Landroidx/room/h0$c;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1
    new-instance v0, Landroidx/room/h0$c;

    const-string v1, "AUTOMATIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/room/h0$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/room/h0$c;->o:Landroidx/room/h0$c;

    .line 2
    new-instance v1, Landroidx/room/h0$c;

    const-string v3, "TRUNCATE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroidx/room/h0$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/room/h0$c;->p:Landroidx/room/h0$c;

    .line 3
    new-instance v3, Landroidx/room/h0$c;

    const-string v5, "WRITE_AHEAD_LOGGING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroidx/room/h0$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/room/h0$c;->q:Landroidx/room/h0$c;

    const/4 v5, 0x3

    new-array v5, v5, [Landroidx/room/h0$c;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Landroidx/room/h0$c;->r:[Landroidx/room/h0$c;

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

.method private static c(Landroid/app/ActivityManager;)Z
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_b

    .line 2
    invoke-static {p0}, Lb1/c;->b(Landroid/app/ActivityManager;)Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/room/h0$c;
    .registers 2

    .line 1
    const-class v0, Landroidx/room/h0$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/room/h0$c;

    return-object p0
.end method

.method public static values()[Landroidx/room/h0$c;
    .registers 1

    .line 1
    sget-object v0, Landroidx/room/h0$c;->r:[Landroidx/room/h0$c;

    invoke-virtual {v0}, [Landroidx/room/h0$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/room/h0$c;

    return-object v0
.end method


# virtual methods
.method e(Landroid/content/Context;)Landroidx/room/h0$c;
    .registers 4

    .line 1
    sget-object v0, Landroidx/room/h0$c;->o:Landroidx/room/h0$c;

    if-eq p0, v0, :cond_5

    return-object p0

    .line 2
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1e

    const-string v0, "activity"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    if-eqz p1, :cond_1e

    .line 4
    invoke-static {p1}, Landroidx/room/h0$c;->c(Landroid/app/ActivityManager;)Z

    move-result p1

    if-nez p1, :cond_1e

    .line 5
    sget-object p1, Landroidx/room/h0$c;->q:Landroidx/room/h0$c;

    return-object p1

    .line 6
    :cond_1e
    sget-object p1, Landroidx/room/h0$c;->p:Landroidx/room/h0$c;

    return-object p1
.end method

###### Class androidx.room.h0.d (androidx.room.h0$d)
.class public Landroidx/room/h0$d;
.super Ljava/lang/Object;
.source "RoomDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ly0/b;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/room/h0$d;->a:Ljava/util/HashMap;

    return-void
.end method

.method private a(Ly0/b;)V
    .registers 7

    .line 1
    iget v0, p1, Ly0/b;->a:I

    .line 2
    iget v1, p1, Ly0/b;->b:I

    .line 3
    iget-object v2, p0, Landroidx/room/h0$d;->a:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/TreeMap;

    if-nez v2, :cond_20

    .line 4
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 5
    iget-object v3, p0, Landroidx/room/h0$d;->a:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly0/b;

    if-eqz v0, :cond_4a

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Overriding migration "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " with "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ROOM"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_4a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private d(Ljava/util/List;ZII)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ly0/b;",
            ">;ZII)",
            "Ljava/util/List<",
            "Ly0/b;",
            ">;"
        }
    .end annotation

    :cond_0
    if-eqz p2, :cond_5

    if-ge p3, p4, :cond_5a

    goto :goto_7

    :cond_5
    if-le p3, p4, :cond_5a

    .line 1
    :goto_7
    iget-object v0, p0, Landroidx/room/h0$d;->a:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeMap;

    const/4 v1, 0x0

    if-nez v0, :cond_17

    return-object v1

    :cond_17
    if-eqz p2, :cond_1e

    .line 2
    invoke-virtual {v0}, Ljava/util/TreeMap;->descendingKeySet()Ljava/util/NavigableSet;

    move-result-object v2

    goto :goto_22

    .line 3
    :cond_1e
    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 4
    :goto_22
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz p2, :cond_40

    if-gt v3, p4, :cond_45

    if-le v3, p3, :cond_45

    :goto_3e
    const/4 v5, 0x1

    goto :goto_45

    :cond_40
    if-lt v3, p4, :cond_45

    if-ge v3, p3, :cond_45

    goto :goto_3e

    :cond_45
    :goto_45
    if-eqz v5, :cond_26

    .line 5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ly0/b;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move p3, v3

    goto :goto_57

    :cond_56
    const/4 v4, 0x0

    :goto_57
    if-nez v4, :cond_0

    return-object v1

    :cond_5a
    return-object p1
.end method


# virtual methods
.method public varargs b([Ly0/b;)V
    .registers 5

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_c

    aget-object v2, p1, v1

    .line 2
    invoke-direct {p0, v2}, Landroidx/room/h0$d;->a(Ly0/b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    return-void
.end method

.method public c(II)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ly0/b;",
            ">;"
        }
    .end annotation

    if-ne p1, p2, :cond_7

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_7
    if-le p2, p1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 2
    :goto_c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-direct {p0, v1, v0, p1, p2}, Landroidx/room/h0$d;->d(Ljava/util/List;ZII)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public e()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ly0/b;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/h0$d;->a:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

###### Class androidx.room.h0.e (androidx.room.h0$e)
.class public abstract Landroidx/room/h0$e;
.super Ljava/lang/Object;
.source "RoomDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "e"
.end annotation

###### Class androidx.room.h0.f (androidx.room.h0$f)
.class public interface abstract Landroidx/room/h0$f;
.super Ljava/lang/Object;
.source "RoomDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "f"
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

###### Class x0.h (x0.h)
.class public final synthetic Lx0/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ll/a;


# instance fields
.field public final synthetic a:Landroidx/room/h0;


# direct methods
.method public synthetic constructor <init>(Landroidx/room/h0;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx0/h;->a:Landroidx/room/h0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lx0/h;->a:Landroidx/room/h0;

    check-cast p1, Lb1/g;

    invoke-static {v0, p1}, Landroidx/room/h0;->a(Landroidx/room/h0;Lb1/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class x0.i (x0.i)
.class public final synthetic Lx0/i;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ll/a;


# instance fields
.field public final synthetic a:Landroidx/room/h0;


# direct methods
.method public synthetic constructor <init>(Landroidx/room/h0;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx0/i;->a:Landroidx/room/h0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lx0/i;->a:Landroidx/room/h0;

    check-cast p1, Lb1/g;

    invoke-static {v0, p1}, Landroidx/room/h0;->b(Landroidx/room/h0;Lb1/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
