###### Class com.google.android.gms.tasks.z (com.google.android.gms.tasks.z)
.class final Lcom/google/android/gms/tasks/z;
.super Lcom/google/android/gms/tasks/Task;
.source "com.google.android.gms:play-services-tasks@@18.0.2"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/tasks/Task<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lcom/google/android/gms/tasks/v;

.field private c:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private volatile d:Z

.field private e:Ljava/lang/Object;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private f:Ljava/lang/Exception;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/tasks/Task;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tasks/z;->a:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/tasks/v;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/v;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tasks/z;->b:Lcom/google/android/gms/tasks/v;

    return-void
.end method

.method private final B()V
    .registers 3
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/tasks/z;->c:Z

    const-string v1, "Task is not yet complete"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->o(ZLjava/lang/Object;)V

    return-void
.end method

.method private final C()V
    .registers 3
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/tasks/z;->d:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Task is already canceled."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final D()V
    .registers 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/tasks/z;->c:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {p0}, Lcom/google/android/gms/tasks/DuplicateTaskCompletionException;->a(Lcom/google/android/gms/tasks/Task;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method

.method private final E()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/z;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/tasks/z;->c:Z

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    .line 2
    :cond_9
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_10

    iget-object v0, p0, Lcom/google/android/gms/tasks/z;->b:Lcom/google/android/gms/tasks/v;

    .line 3
    invoke-virtual {v0, p0}, Lcom/google/android/gms/tasks/v;->b(Lcom/google/android/gms/tasks/Task;)V

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
.method public final A(Ljava/lang/Object;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/z;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/tasks/z;->c:Z

    if-eqz v1, :cond_a

    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :cond_a
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/tasks/z;->c:Z

    iput-object p1, p0, Lcom/google/android/gms/tasks/z;->e:Ljava/lang/Object;

    .line 2
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_16

    iget-object p1, p0, Lcom/google/android/gms/tasks/z;->b:Lcom/google/android/gms/tasks/v;

    .line 3
    invoke-virtual {p1, p0}, Lcom/google/android/gms/tasks/v;->b(Lcom/google/android/gms/tasks/Task;)V

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

.method public final a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/OnCanceledListener;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/z;->b:Lcom/google/android/gms/tasks/v;

    new-instance v1, Lcom/google/android/gms/tasks/k;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/tasks/k;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCanceledListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/v;->a(Lcom/google/android/gms/tasks/u;)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/tasks/z;->E()V

    return-object p0
.end method

.method public final b(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/tasks/OnCompleteListener<",
            "TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/tasks/m;

    sget-object v1, Lcom/google/android/gms/tasks/TaskExecutors;->a:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/tasks/m;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)V

    iget-object p2, p0, Lcom/google/android/gms/tasks/z;->b:Lcom/google/android/gms/tasks/v;

    .line 2
    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/v;->a(Lcom/google/android/gms/tasks/u;)V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/tasks/y;->l(Landroid/app/Activity;)Lcom/google/android/gms/tasks/y;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/y;->m(Lcom/google/android/gms/tasks/u;)V

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/tasks/z;->E()V

    return-object p0
.end method

.method public final c(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/OnCompleteListener<",
            "TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/tasks/TaskExecutors;->a:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/google/android/gms/tasks/z;->b:Lcom/google/android/gms/tasks/v;

    new-instance v2, Lcom/google/android/gms/tasks/m;

    invoke-direct {v2, v0, p1}, Lcom/google/android/gms/tasks/m;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)V

    .line 2
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/v;->a(Lcom/google/android/gms/tasks/u;)V

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/tasks/z;->E()V

    return-object p0
.end method

.method public final d(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/OnCompleteListener<",
            "TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/z;->b:Lcom/google/android/gms/tasks/v;

    new-instance v1, Lcom/google/android/gms/tasks/m;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/tasks/m;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/v;->a(Lcom/google/android/gms/tasks/u;)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/tasks/z;->E()V

    return-object p0
.end method

.method public final e(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/tasks/OnFailureListener;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/tasks/o;

    sget-object v1, Lcom/google/android/gms/tasks/TaskExecutors;->a:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/tasks/o;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)V

    iget-object p2, p0, Lcom/google/android/gms/tasks/z;->b:Lcom/google/android/gms/tasks/v;

    .line 2
    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/v;->a(Lcom/google/android/gms/tasks/u;)V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/tasks/y;->l(Landroid/app/Activity;)Lcom/google/android/gms/tasks/y;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/y;->m(Lcom/google/android/gms/tasks/u;)V

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/tasks/z;->E()V

    return-object p0
.end method

.method public final f(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/OnFailureListener;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/tasks/TaskExecutors;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/tasks/z;->g(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-object p0
.end method

.method public final g(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/OnFailureListener;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/z;->b:Lcom/google/android/gms/tasks/v;

    new-instance v1, Lcom/google/android/gms/tasks/o;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/tasks/o;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/v;->a(Lcom/google/android/gms/tasks/u;)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/tasks/z;->E()V

    return-object p0
.end method

.method public final h(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/tasks/OnSuccessListener<",
            "-TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/tasks/q;

    sget-object v1, Lcom/google/android/gms/tasks/TaskExecutors;->a:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/tasks/q;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)V

    iget-object p2, p0, Lcom/google/android/gms/tasks/z;->b:Lcom/google/android/gms/tasks/v;

    .line 2
    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/v;->a(Lcom/google/android/gms/tasks/u;)V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/tasks/y;->l(Landroid/app/Activity;)Lcom/google/android/gms/tasks/y;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/y;->m(Lcom/google/android/gms/tasks/u;)V

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/tasks/z;->E()V

    return-object p0
.end method

.method public final i(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/OnSuccessListener<",
            "-TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/tasks/TaskExecutors;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/tasks/z;->j(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    return-object p0
.end method

.method public final j(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/OnSuccessListener<",
            "-TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/z;->b:Lcom/google/android/gms/tasks/v;

    new-instance v1, Lcom/google/android/gms/tasks/q;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/tasks/q;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/v;->a(Lcom/google/android/gms/tasks/u;)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/tasks/z;->E()V

    return-object p0
.end method

.method public final k(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Continuation<",
            "TTResult;TTContinuationResult;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/tasks/TaskExecutors;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/tasks/Task;->l(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final l(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/Continuation<",
            "TTResult;TTContinuationResult;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/tasks/z;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/z;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/tasks/z;->b:Lcom/google/android/gms/tasks/v;

    new-instance v2, Lcom/google/android/gms/tasks/g;

    invoke-direct {v2, p1, p2, v0}, Lcom/google/android/gms/tasks/g;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;Lcom/google/android/gms/tasks/z;)V

    .line 2
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/v;->a(Lcom/google/android/gms/tasks/u;)V

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/tasks/z;->E()V

    return-object v0
.end method

.method public final m(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Continuation<",
            "TTResult;",
            "Lcom/google/android/gms/tasks/Task<",
            "TTContinuationResult;>;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/tasks/TaskExecutors;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/tasks/Task;->n(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final n(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/Continuation<",
            "TTResult;",
            "Lcom/google/android/gms/tasks/Task<",
            "TTContinuationResult;>;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/tasks/z;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/z;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/tasks/z;->b:Lcom/google/android/gms/tasks/v;

    new-instance v2, Lcom/google/android/gms/tasks/i;

    invoke-direct {v2, p1, p2, v0}, Lcom/google/android/gms/tasks/i;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;Lcom/google/android/gms/tasks/z;)V

    .line 2
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/v;->a(Lcom/google/android/gms/tasks/u;)V

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/tasks/z;->E()V

    return-object v0
.end method

.method public final o()Ljava/lang/Exception;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/z;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/tasks/z;->f:Ljava/lang/Exception;

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

.method public final p()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/z;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/google/android/gms/tasks/z;->B()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/tasks/z;->C()V

    iget-object v1, p0, Lcom/google/android/gms/tasks/z;->f:Ljava/lang/Exception;

    if-nez v1, :cond_11

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/tasks/z;->e:Ljava/lang/Object;

    .line 4
    monitor-exit v0

    return-object v1

    .line 5
    :cond_11
    new-instance v2, Lcom/google/android/gms/tasks/RuntimeExecutionException;

    .line 6
    invoke-direct {v2, v1}, Lcom/google/android/gms/tasks/RuntimeExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catchall_17
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public final q(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TX;>;)TTResult;^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/z;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/google/android/gms/tasks/z;->B()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/tasks/z;->C()V

    iget-object v1, p0, Lcom/google/android/gms/tasks/z;->f:Ljava/lang/Exception;

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/tasks/z;->f:Ljava/lang/Exception;

    if-nez p1, :cond_19

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/tasks/z;->e:Ljava/lang/Object;

    .line 6
    monitor-exit v0

    return-object p1

    .line 7
    :cond_19
    new-instance v1, Lcom/google/android/gms/tasks/RuntimeExecutionException;

    .line 8
    invoke-direct {v1, p1}, Lcom/google/android/gms/tasks/RuntimeExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 9
    :cond_1f
    iget-object v1, p0, Lcom/google/android/gms/tasks/z;->f:Ljava/lang/Exception;

    .line 10
    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :catchall_28
    move-exception p1

    .line 11
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p1
.end method

.method public final r()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/tasks/z;->d:Z

    return v0
.end method

.method public final s()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/z;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/tasks/z;->c:Z

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

.method public final t()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/z;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/tasks/z;->c:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    iget-boolean v1, p0, Lcom/google/android/gms/tasks/z;->d:Z

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/google/android/gms/tasks/z;->f:Ljava/lang/Exception;

    if-nez v1, :cond_11

    const/4 v2, 0x1

    :cond_11
    monitor-exit v0

    return v2

    :catchall_13
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public final u(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/SuccessContinuation<",
            "TTResult;TTContinuationResult;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/tasks/TaskExecutors;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/tasks/z;

    .line 2
    invoke-direct {v1}, Lcom/google/android/gms/tasks/z;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/tasks/z;->b:Lcom/google/android/gms/tasks/v;

    new-instance v3, Lcom/google/android/gms/tasks/t;

    invoke-direct {v3, v0, p1, v1}, Lcom/google/android/gms/tasks/t;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;Lcom/google/android/gms/tasks/z;)V

    .line 3
    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/v;->a(Lcom/google/android/gms/tasks/u;)V

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/tasks/z;->E()V

    return-object v1
.end method

.method public final v(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/SuccessContinuation<",
            "TTResult;TTContinuationResult;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/tasks/z;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/z;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/tasks/z;->b:Lcom/google/android/gms/tasks/v;

    new-instance v2, Lcom/google/android/gms/tasks/t;

    invoke-direct {v2, p1, p2, v0}, Lcom/google/android/gms/tasks/t;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;Lcom/google/android/gms/tasks/z;)V

    .line 2
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/v;->a(Lcom/google/android/gms/tasks/u;)V

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/tasks/z;->E()V

    return-object v0
.end method

.method public final w(Ljava/lang/Exception;)V
    .registers 4

    const-string v0, "Exception must not be null"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/tasks/z;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_8
    invoke-direct {p0}, Lcom/google/android/gms/tasks/z;->D()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/tasks/z;->c:Z

    iput-object p1, p0, Lcom/google/android/gms/tasks/z;->f:Ljava/lang/Exception;

    .line 3
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_17

    iget-object p1, p0, Lcom/google/android/gms/tasks/z;->b:Lcom/google/android/gms/tasks/v;

    .line 4
    invoke-virtual {p1, p0}, Lcom/google/android/gms/tasks/v;->b(Lcom/google/android/gms/tasks/Task;)V

    return-void

    :catchall_17
    move-exception p1

    .line 5
    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public final x(Ljava/lang/Object;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/z;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/google/android/gms/tasks/z;->D()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/tasks/z;->c:Z

    iput-object p1, p0, Lcom/google/android/gms/tasks/z;->e:Ljava/lang/Object;

    .line 2
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_12

    iget-object p1, p0, Lcom/google/android/gms/tasks/z;->b:Lcom/google/android/gms/tasks/v;

    .line 3
    invoke-virtual {p1, p0}, Lcom/google/android/gms/tasks/v;->b(Lcom/google/android/gms/tasks/Task;)V

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

.method public final y()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/z;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/tasks/z;->c:Z

    if-eqz v1, :cond_a

    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :cond_a
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/tasks/z;->c:Z

    iput-boolean v1, p0, Lcom/google/android/gms/tasks/z;->d:Z

    .line 2
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_16

    iget-object v0, p0, Lcom/google/android/gms/tasks/z;->b:Lcom/google/android/gms/tasks/v;

    .line 3
    invoke-virtual {v0, p0}, Lcom/google/android/gms/tasks/v;->b(Lcom/google/android/gms/tasks/Task;)V

    return v1

    :catchall_16
    move-exception v1

    .line 4
    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public final z(Ljava/lang/Exception;)Z
    .registers 4

    const-string v0, "Exception must not be null"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/tasks/z;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    iget-boolean v1, p0, Lcom/google/android/gms/tasks/z;->c:Z

    if-eqz v1, :cond_f

    .line 2
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :cond_f
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/tasks/z;->c:Z

    iput-object p1, p0, Lcom/google/android/gms/tasks/z;->f:Ljava/lang/Exception;

    .line 3
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_1b

    iget-object p1, p0, Lcom/google/android/gms/tasks/z;->b:Lcom/google/android/gms/tasks/v;

    .line 4
    invoke-virtual {p1, p0}, Lcom/google/android/gms/tasks/v;->b(Lcom/google/android/gms/tasks/Task;)V

    return v1

    :catchall_1b
    move-exception p1

    .line 5
    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p1
.end method
