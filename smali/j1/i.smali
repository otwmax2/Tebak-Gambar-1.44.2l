###### Class j1.i (j1.i)
.class public Lj1/i;
.super Li1/t;
.source "WorkManagerImpl.java"


# static fields
.field private static final j:Ljava/lang/String;

.field private static k:Lj1/i;

.field private static l:Lj1/i;

.field private static final m:Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroidx/work/a;

.field private c:Landroidx/work/impl/WorkDatabase;

.field private d:Ls1/a;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lj1/e;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lj1/d;

.field private g:Lr1/e;

.field private h:Z

.field private i:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "WorkManagerImpl"

    .line 1
    invoke-static {v0}, Li1/j;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lj1/i;->j:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lj1/i;->k:Lj1/i;

    .line 3
    sput-object v0, Lj1/i;->l:Lj1/i;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lj1/i;->m:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/a;Ls1/a;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Li1/p;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lj1/i;-><init>(Landroid/content/Context;Landroidx/work/a;Ls1/a;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/a;Ls1/a;Landroidx/work/impl/WorkDatabase;)V
    .registers 15

    .line 7
    invoke-direct {p0}, Li1/t;-><init>()V

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 9
    new-instance v1, Li1/j$a;

    invoke-virtual {p2}, Landroidx/work/a;->j()I

    move-result v2

    invoke-direct {v1, v2}, Li1/j$a;-><init>(I)V

    invoke-static {v1}, Li1/j;->e(Li1/j;)V

    .line 10
    invoke-virtual {p0, v0, p2, p3}, Lj1/i;->h(Landroid/content/Context;Landroidx/work/a;Ls1/a;)Ljava/util/List;

    move-result-object v0

    .line 11
    new-instance v9, Lj1/d;

    move-object v3, v9

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, v0

    invoke-direct/range {v3 .. v8}, Lj1/d;-><init>(Landroid/content/Context;Landroidx/work/a;Ls1/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    move-object v3, p0

    .line 12
    invoke-direct/range {v3 .. v9}, Lj1/i;->r(Landroid/content/Context;Landroidx/work/a;Ls1/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;Lj1/d;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/a;Ls1/a;Z)V
    .registers 7

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    invoke-interface {p3}, Ls1/a;->getBackgroundExecutor()Lr1/g;

    move-result-object v1

    .line 5
    invoke-static {v0, v1, p4}, Landroidx/work/impl/WorkDatabase;->C(Landroid/content/Context;Ljava/util/concurrent/Executor;Z)Landroidx/work/impl/WorkDatabase;

    move-result-object p4

    .line 6
    invoke-direct {p0, p1, p2, p3, p4}, Lj1/i;-><init>(Landroid/content/Context;Landroidx/work/a;Ls1/a;Landroidx/work/impl/WorkDatabase;)V

    return-void
.end method

.method public static f(Landroid/content/Context;Landroidx/work/a;)V
    .registers 6

    .line 1
    sget-object v0, Lj1/i;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    sget-object v1, Lj1/i;->k:Lj1/i;

    if-eqz v1, :cond_14

    sget-object v2, Lj1/i;->l:Lj1/i;

    if-nez v2, :cond_c

    goto :goto_14

    .line 3
    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class level Javadoc for more information."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    :goto_14
    if-nez v1, :cond_32

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 5
    sget-object v1, Lj1/i;->l:Lj1/i;

    if-nez v1, :cond_2e

    .line 6
    new-instance v1, Lj1/i;

    new-instance v2, Ls1/b;

    .line 7
    invoke-virtual {p1}, Landroidx/work/a;->l()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-direct {v2, v3}, Ls1/b;-><init>(Ljava/util/concurrent/Executor;)V

    invoke-direct {v1, p0, p1, v2}, Lj1/i;-><init>(Landroid/content/Context;Landroidx/work/a;Ls1/a;)V

    sput-object v1, Lj1/i;->l:Lj1/i;

    .line 8
    :cond_2e
    sget-object p0, Lj1/i;->l:Lj1/i;

    sput-object p0, Lj1/i;->k:Lj1/i;

    .line 9
    :cond_32
    monitor-exit v0

    return-void

    :catchall_34
    move-exception p0

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw p0
.end method

.method public static k()Lj1/i;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lj1/i;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    sget-object v1, Lj1/i;->k:Lj1/i;

    if-eqz v1, :cond_9

    .line 3
    monitor-exit v0

    return-object v1

    .line 4
    :cond_9
    sget-object v1, Lj1/i;->l:Lj1/i;

    monitor-exit v0

    return-object v1

    :catchall_d
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public static l(Landroid/content/Context;)Lj1/i;
    .registers 3

    .line 1
    sget-object v0, Lj1/i;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    invoke-static {}, Lj1/i;->k()Lj1/i;

    move-result-object v1

    if-nez v1, :cond_28

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 4
    instance-of v1, p0, Landroidx/work/a$c;

    if-eqz v1, :cond_20

    .line 5
    move-object v1, p0

    check-cast v1, Landroidx/work/a$c;

    .line 6
    invoke-interface {v1}, Landroidx/work/a$c;->a()Landroidx/work/a;

    move-result-object v1

    .line 7
    invoke-static {p0, v1}, Lj1/i;->f(Landroid/content/Context;Landroidx/work/a;)V

    .line 8
    invoke-static {p0}, Lj1/i;->l(Landroid/content/Context;)Lj1/i;

    move-result-object v1

    goto :goto_28

    .line 9
    :cond_20
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_28
    :goto_28
    monitor-exit v0

    return-object v1

    :catchall_2a
    move-exception p0

    .line 11
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method private r(Landroid/content/Context;Landroidx/work/a;Ls1/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;Lj1/d;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/work/a;",
            "Ls1/a;",
            "Landroidx/work/impl/WorkDatabase;",
            "Ljava/util/List<",
            "Lj1/e;",
            ">;",
            "Lj1/d;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 2
    iput-object p1, p0, Lj1/i;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lj1/i;->b:Landroidx/work/a;

    .line 4
    iput-object p3, p0, Lj1/i;->d:Ls1/a;

    .line 5
    iput-object p4, p0, Lj1/i;->c:Landroidx/work/impl/WorkDatabase;

    .line 6
    iput-object p5, p0, Lj1/i;->e:Ljava/util/List;

    .line 7
    iput-object p6, p0, Lj1/i;->f:Lj1/d;

    .line 8
    new-instance p2, Lr1/e;

    invoke-direct {p2, p4}, Lr1/e;-><init>(Landroidx/work/impl/WorkDatabase;)V

    iput-object p2, p0, Lj1/i;->g:Lr1/e;

    const/4 p2, 0x0

    .line 9
    iput-boolean p2, p0, Lj1/i;->h:Z

    .line 10
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x18

    if-lt p2, p3, :cond_2f

    invoke-virtual {p1}, Landroid/content/Context;->isDeviceProtectedStorage()Z

    move-result p2

    if-nez p2, :cond_27

    goto :goto_2f

    .line 11
    :cond_27
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot initialize WorkManager in direct boot mode"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_2f
    :goto_2f
    iget-object p2, p0, Lj1/i;->d:Ls1/a;

    new-instance p3, Landroidx/work/impl/utils/ForceStopRunnable;

    invoke-direct {p3, p1, p0}, Landroidx/work/impl/utils/ForceStopRunnable;-><init>(Landroid/content/Context;Lj1/i;)V

    invoke-interface {p2, p3}, Ls1/a;->b(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Li1/m;
    .registers 3

    .line 1
    invoke-static {p1, p0}, Lr1/a;->d(Ljava/lang/String;Lj1/i;)Lr1/a;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lj1/i;->d:Ls1/a;

    invoke-interface {v0, p1}, Ls1/a;->b(Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {p1}, Lr1/a;->e()Li1/m;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/util/List;)Li1/m;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Li1/u;",
            ">;)",
            "Li1/m;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 2
    new-instance v0, Lj1/g;

    invoke-direct {v0, p0, p1}, Lj1/g;-><init>(Lj1/i;Ljava/util/List;)V

    invoke-virtual {v0}, Lj1/g;->a()Li1/m;

    move-result-object p1

    return-object p1

    .line 3
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enqueue needs at least one WorkRequest."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g(Ljava/util/UUID;)Li1/m;
    .registers 3

    .line 1
    invoke-static {p1, p0}, Lr1/a;->b(Ljava/util/UUID;Lj1/i;)Lr1/a;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lj1/i;->d:Ls1/a;

    invoke-interface {v0, p1}, Ls1/a;->b(Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {p1}, Lr1/a;->e()Li1/m;

    move-result-object p1

    return-object p1
.end method

.method public h(Landroid/content/Context;Landroidx/work/a;Ls1/a;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/work/a;",
            "Ls1/a;",
            ")",
            "Ljava/util/List<",
            "Lj1/e;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lj1/e;

    .line 1
    invoke-static {p1, p0}, Lj1/f;->a(Landroid/content/Context;Lj1/i;)Lj1/e;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lk1/b;

    invoke-direct {v1, p1, p2, p3, p0}, Lk1/b;-><init>(Landroid/content/Context;Landroidx/work/a;Ls1/a;Lj1/i;)V

    const/4 p1, 0x1

    aput-object v1, v0, p1

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public i()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Lj1/i;->a:Landroid/content/Context;

    return-object v0
.end method

.method public j()Landroidx/work/a;
    .registers 2

    .line 1
    iget-object v0, p0, Lj1/i;->b:Landroidx/work/a;

    return-object v0
.end method

.method public m()Lr1/e;
    .registers 2

    .line 1
    iget-object v0, p0, Lj1/i;->g:Lr1/e;

    return-object v0
.end method

.method public n()Lj1/d;
    .registers 2

    .line 1
    iget-object v0, p0, Lj1/i;->f:Lj1/d;

    return-object v0
.end method

.method public o()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lj1/e;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lj1/i;->e:Ljava/util/List;

    return-object v0
.end method

.method public p()Landroidx/work/impl/WorkDatabase;
    .registers 2

    .line 1
    iget-object v0, p0, Lj1/i;->c:Landroidx/work/impl/WorkDatabase;

    return-object v0
.end method

.method public q()Ls1/a;
    .registers 2

    .line 1
    iget-object v0, p0, Lj1/i;->d:Ls1/a;

    return-object v0
.end method

.method public s()V
    .registers 3

    .line 1
    sget-object v0, Lj1/i;->m:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_4
    iput-boolean v1, p0, Lj1/i;->h:Z

    .line 3
    iget-object v1, p0, Lj1/i;->i:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v1, :cond_10

    .line 4
    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lj1/i;->i:Landroid/content/BroadcastReceiver$PendingResult;

    .line 6
    :cond_10
    monitor-exit v0

    return-void

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public t()V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_d

    .line 2
    invoke-virtual {p0}, Lj1/i;->i()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ll1/b;->b(Landroid/content/Context;)V

    .line 3
    :cond_d
    invoke-virtual {p0}, Lj1/i;->p()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->L()Lq1/q;

    move-result-object v0

    invoke-interface {v0}, Lq1/q;->u()I

    .line 4
    invoke-virtual {p0}, Lj1/i;->j()Landroidx/work/a;

    move-result-object v0

    invoke-virtual {p0}, Lj1/i;->p()Landroidx/work/impl/WorkDatabase;

    move-result-object v1

    invoke-virtual {p0}, Lj1/i;->o()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lj1/f;->b(Landroidx/work/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    return-void
.end method

.method public u(Landroid/content/BroadcastReceiver$PendingResult;)V
    .registers 4

    .line 1
    sget-object v0, Lj1/i;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iput-object p1, p0, Lj1/i;->i:Landroid/content/BroadcastReceiver$PendingResult;

    .line 3
    iget-boolean v1, p0, Lj1/i;->h:Z

    if-eqz v1, :cond_f

    .line 4
    invoke-virtual {p1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lj1/i;->i:Landroid/content/BroadcastReceiver$PendingResult;

    .line 6
    :cond_f
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public v(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lj1/i;->w(Ljava/lang/String;Landroidx/work/WorkerParameters$a;)V

    return-void
.end method

.method public w(Ljava/lang/String;Landroidx/work/WorkerParameters$a;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lj1/i;->d:Ls1/a;

    new-instance v1, Lr1/h;

    invoke-direct {v1, p0, p1, p2}, Lr1/h;-><init>(Lj1/i;Ljava/lang/String;Landroidx/work/WorkerParameters$a;)V

    .line 2
    invoke-interface {v0, v1}, Ls1/a;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public x(Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lj1/i;->d:Ls1/a;

    new-instance v1, Lr1/i;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lr1/i;-><init>(Lj1/i;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ls1/a;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public y(Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lj1/i;->d:Ls1/a;

    new-instance v1, Lr1/i;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lr1/i;-><init>(Lj1/i;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ls1/a;->b(Ljava/lang/Runnable;)V

    return-void
.end method
