###### Class y4.t (y4.t)
.class final Ly4/t;
.super Ly4/e;
.source "com.google.android.play:core@@1.10.2"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Ly4/e<",
        "TResultT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ly4/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly4/o<",
            "TResultT;>;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TResultT;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/Exception;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ly4/e;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ly4/t;->a:Ljava/lang/Object;

    new-instance v0, Ly4/o;

    invoke-direct {v0}, Ly4/o;-><init>()V

    iput-object v0, p0, Ly4/t;->b:Ly4/o;

    return-void
.end method

.method private final l()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Ly4/t;->c:Z

    const-string v1, "Task is not yet complete"

    invoke-static {v0, v1}, Lv4/s;->b(ZLjava/lang/Object;)V

    return-void
.end method

.method private final m()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Ly4/t;->c:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Task is already complete"

    invoke-static {v0, v1}, Lv4/s;->b(ZLjava/lang/Object;)V

    return-void
.end method

.method private final n()V
    .registers 3

    .line 1
    iget-object v0, p0, Ly4/t;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Ly4/t;->c:Z

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    .line 2
    :cond_9
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_10

    iget-object v0, p0, Ly4/t;->b:Ly4/o;

    .line 3
    invoke-virtual {v0, p0}, Ly4/o;->b(Ly4/e;)V

    return-void

    :catchall_10
    move-exception v1

    .line 4
    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v1
.end method


# virtual methods
.method public final a(Ly4/a;)Ly4/e;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly4/a<",
            "TResultT;>;)",
            "Ly4/e<",
            "TResultT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Ly4/f;->a:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Ly4/t;->b:Ly4/o;

    new-instance v2, Ly4/i;

    .line 2
    invoke-direct {v2, v0, p1}, Ly4/i;-><init>(Ljava/util/concurrent/Executor;Ly4/a;)V

    invoke-virtual {v1, v2}, Ly4/o;->a(Ly4/n;)V

    .line 3
    invoke-direct {p0}, Ly4/t;->n()V

    return-object p0
.end method

.method public final b(Ljava/util/concurrent/Executor;Ly4/b;)Ly4/e;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ly4/b;",
            ")",
            "Ly4/e<",
            "TResultT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ly4/t;->b:Ly4/o;

    new-instance v1, Ly4/k;

    invoke-direct {v1, p1, p2}, Ly4/k;-><init>(Ljava/util/concurrent/Executor;Ly4/b;)V

    invoke-virtual {v0, v1}, Ly4/o;->a(Ly4/n;)V

    .line 2
    invoke-direct {p0}, Ly4/t;->n()V

    return-object p0
.end method

.method public final c(Ljava/util/concurrent/Executor;Ly4/c;)Ly4/e;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ly4/c<",
            "-TResultT;>;)",
            "Ly4/e<",
            "TResultT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ly4/t;->b:Ly4/o;

    new-instance v1, Ly4/m;

    invoke-direct {v1, p1, p2}, Ly4/m;-><init>(Ljava/util/concurrent/Executor;Ly4/c;)V

    invoke-virtual {v0, v1}, Ly4/o;->a(Ly4/n;)V

    .line 2
    invoke-direct {p0}, Ly4/t;->n()V

    return-object p0
.end method

.method public final d()Ljava/lang/Exception;
    .registers 3

    .line 1
    iget-object v0, p0, Ly4/t;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ly4/t;->e:Ljava/lang/Exception;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final e()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResultT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ly4/t;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Ly4/t;->l()V

    iget-object v1, p0, Ly4/t;->e:Ljava/lang/Exception;

    if-nez v1, :cond_e

    .line 2
    iget-object v1, p0, Ly4/t;->d:Ljava/lang/Object;

    .line 3
    monitor-exit v0

    return-object v1

    .line 4
    :cond_e
    new-instance v2, Ly4/d;

    .line 5
    invoke-direct {v2, v1}, Ly4/d;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catchall_14
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public final f()Z
    .registers 3

    .line 1
    iget-object v0, p0, Ly4/t;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Ly4/t;->c:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final g()Z
    .registers 4

    .line 1
    iget-object v0, p0, Ly4/t;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Ly4/t;->c:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    iget-object v1, p0, Ly4/t;->e:Ljava/lang/Exception;

    if-nez v1, :cond_d

    const/4 v2, 0x1

    :cond_d
    monitor-exit v0

    return v2

    :catchall_f
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public final h(Ljava/lang/Exception;)V
    .registers 4

    .line 1
    iget-object v0, p0, Ly4/t;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Ly4/t;->m()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Ly4/t;->c:Z

    iput-object p1, p0, Ly4/t;->e:Ljava/lang/Exception;

    .line 2
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_12

    iget-object p1, p0, Ly4/t;->b:Ly4/o;

    .line 3
    invoke-virtual {p1, p0}, Ly4/o;->b(Ly4/e;)V

    return-void

    :catchall_12
    move-exception p1

    .line 4
    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public final i(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ly4/t;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Ly4/t;->m()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Ly4/t;->c:Z

    iput-object p1, p0, Ly4/t;->d:Ljava/lang/Object;

    .line 2
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_12

    iget-object p1, p0, Ly4/t;->b:Ly4/o;

    .line 3
    invoke-virtual {p1, p0}, Ly4/o;->b(Ly4/e;)V

    return-void

    :catchall_12
    move-exception p1

    .line 4
    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public final j(Ljava/lang/Exception;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Ly4/t;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Ly4/t;->c:Z

    if-eqz v1, :cond_a

    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :cond_a
    const/4 v1, 0x1

    iput-boolean v1, p0, Ly4/t;->c:Z

    iput-object p1, p0, Ly4/t;->e:Ljava/lang/Exception;

    .line 2
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_16

    iget-object p1, p0, Ly4/t;->b:Ly4/o;

    .line 3
    invoke-virtual {p1, p0}, Ly4/o;->b(Ly4/e;)V

    return v1

    :catchall_16
    move-exception p1

    .line 4
    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public final k(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ly4/t;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Ly4/t;->c:Z

    if-eqz v1, :cond_a

    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :cond_a
    const/4 v1, 0x1

    iput-boolean v1, p0, Ly4/t;->c:Z

    iput-object p1, p0, Ly4/t;->d:Ljava/lang/Object;

    .line 2
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_16

    iget-object p1, p0, Ly4/t;->b:Ly4/o;

    .line 3
    invoke-virtual {p1, p0}, Ly4/o;->b(Ly4/e;)V

    return v1

    :catchall_16
    move-exception p1

    .line 4
    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p1
.end method
