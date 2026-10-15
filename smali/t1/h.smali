###### Class t1.h (t1.h)
.class public Lt1/h;
.super Ljava/lang/Object;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt1/h$h;,
        Lt1/h$i;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final i:Ljava/util/concurrent/ExecutorService;

.field private static final j:Ljava/util/concurrent/Executor;

.field public static final k:Ljava/util/concurrent/Executor;

.field private static volatile l:Lt1/h$i;

.field private static m:Lt1/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt1/h<",
            "*>;"
        }
    .end annotation
.end field

.field private static n:Lt1/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt1/h<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static o:Lt1/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt1/h<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static p:Lt1/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt1/h<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Z

.field private c:Z

.field private d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTResult;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/Exception;

.field private f:Z

.field private g:Lt1/j;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lt1/f<",
            "TTResult;",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    invoke-static {}, Lt1/b;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lt1/h;->i:Ljava/util/concurrent/ExecutorService;

    .line 2
    invoke-static {}, Lt1/b;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    sput-object v0, Lt1/h;->j:Ljava/util/concurrent/Executor;

    .line 3
    invoke-static {}, Lt1/a;->c()Ljava/util/concurrent/Executor;

    move-result-object v0

    sput-object v0, Lt1/h;->k:Ljava/util/concurrent/Executor;

    .line 4
    new-instance v0, Lt1/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lt1/h;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lt1/h;->m:Lt1/h;

    .line 5
    new-instance v0, Lt1/h;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lt1/h;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lt1/h;->n:Lt1/h;

    .line 6
    new-instance v0, Lt1/h;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lt1/h;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lt1/h;->o:Lt1/h;

    .line 7
    new-instance v0, Lt1/h;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lt1/h;-><init>(Z)V

    sput-object v0, Lt1/h;->p:Lt1/h;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lt1/h;->a:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lt1/h;->h:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lt1/h;->a:Ljava/lang/Object;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lt1/h;->h:Ljava/util/List;

    .line 7
    invoke-virtual {p0, p1}, Lt1/h;->F(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lt1/h;->a:Ljava/lang/Object;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lt1/h;->h:Ljava/util/List;

    if-eqz p1, :cond_17

    .line 11
    invoke-virtual {p0}, Lt1/h;->D()Z

    goto :goto_1b

    :cond_17
    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1}, Lt1/h;->F(Ljava/lang/Object;)Z

    :goto_1b
    return-void
.end method

.method private C()V
    .registers 4

    .line 1
    iget-object v0, p0, Lt1/h;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lt1/h;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt1/f;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_27

    .line 3
    :try_start_15
    invoke-interface {v2, p0}, Lt1/f;->a(Lt1/h;)Ljava/lang/Object;
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_18} :catch_20
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_19
    .catchall {:try_start_15 .. :try_end_18} :catchall_27

    goto :goto_9

    :catch_19
    move-exception v1

    .line 4
    :try_start_1a
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_20
    move-exception v1

    .line 5
    throw v1

    :cond_22
    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lt1/h;->h:Ljava/util/List;

    .line 7
    monitor-exit v0

    return-void

    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_1a .. :try_end_29} :catchall_27

    goto :goto_2b

    :goto_2a
    throw v1

    :goto_2b
    goto :goto_2a
.end method

.method static synthetic a(Lt1/i;Lt1/f;Lt1/h;Ljava/util/concurrent/Executor;Lt1/c;)V
    .registers 5

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lt1/h;->h(Lt1/i;Lt1/f;Lt1/h;Ljava/util/concurrent/Executor;Lt1/c;)V

    return-void
.end method

.method static synthetic b(Lt1/i;Lt1/f;Lt1/h;Ljava/util/concurrent/Executor;Lt1/c;)V
    .registers 5

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lt1/h;->g(Lt1/i;Lt1/f;Lt1/h;Ljava/util/concurrent/Executor;Lt1/c;)V

    return-void
.end method

.method public static c(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;Lt1/c;)Lt1/h;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            "Lt1/c;",
            ")",
            "Lt1/h<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lt1/i;

    invoke-direct {v0}, Lt1/i;-><init>()V

    .line 2
    :try_start_5
    new-instance v1, Lt1/h$g;

    invoke-direct {v1, p2, v0, p0}, Lt1/h$g;-><init>(Lt1/c;Lt1/i;Ljava/util/concurrent/Callable;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_d} :catch_e

    goto :goto_17

    :catch_e
    move-exception p0

    .line 3
    new-instance p1, Lt1/g;

    invoke-direct {p1, p0}, Lt1/g;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {v0, p1}, Lt1/i;->c(Ljava/lang/Exception;)V

    .line 4
    :goto_17
    invoke-virtual {v0}, Lt1/i;->a()Lt1/h;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/util/concurrent/Callable;)Lt1/h;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TTResult;>;)",
            "Lt1/h<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lt1/h;->i:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lt1/h;->c(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;Lt1/c;)Lt1/h;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/util/concurrent/Callable;Lt1/c;)Lt1/h;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TTResult;>;",
            "Lt1/c;",
            ")",
            "Lt1/h<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lt1/h;->i:Ljava/util/concurrent/ExecutorService;

    invoke-static {p0, v0, p1}, Lt1/h;->c(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;Lt1/c;)Lt1/h;

    move-result-object p0

    return-object p0
.end method

.method public static f()Lt1/h;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">()",
            "Lt1/h<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lt1/h;->p:Lt1/h;

    return-object v0
.end method

.method private static g(Lt1/i;Lt1/f;Lt1/h;Ljava/util/concurrent/Executor;Lt1/c;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lt1/i<",
            "TTContinuationResult;>;",
            "Lt1/f<",
            "TTResult;",
            "Lt1/h<",
            "TTContinuationResult;>;>;",
            "Lt1/h<",
            "TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            "Lt1/c;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lt1/h$f;

    invoke-direct {v0, p4, p0, p1, p2}, Lt1/h$f;-><init>(Lt1/c;Lt1/i;Lt1/f;Lt1/h;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_12

    :catch_9
    move-exception p1

    .line 2
    new-instance p2, Lt1/g;

    invoke-direct {p2, p1}, Lt1/g;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {p0, p2}, Lt1/i;->c(Ljava/lang/Exception;)V

    :goto_12
    return-void
.end method

.method private static h(Lt1/i;Lt1/f;Lt1/h;Ljava/util/concurrent/Executor;Lt1/c;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lt1/i<",
            "TTContinuationResult;>;",
            "Lt1/f<",
            "TTResult;TTContinuationResult;>;",
            "Lt1/h<",
            "TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            "Lt1/c;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lt1/h$e;

    invoke-direct {v0, p4, p0, p1, p2}, Lt1/h$e;-><init>(Lt1/c;Lt1/i;Lt1/f;Lt1/h;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_12

    :catch_9
    move-exception p1

    .line 2
    new-instance p2, Lt1/g;

    invoke-direct {p2, p1}, Lt1/g;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {p0, p2}, Lt1/i;->c(Ljava/lang/Exception;)V

    :goto_12
    return-void
.end method

.method public static o()Lt1/h$h;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">()",
            "Lt1/h<",
            "TTResult;>.h;"
        }
    .end annotation

    .line 1
    new-instance v0, Lt1/h;

    invoke-direct {v0}, Lt1/h;-><init>()V

    .line 2
    new-instance v1, Lt1/h$h;

    invoke-direct {v1, v0}, Lt1/h$h;-><init>(Lt1/h;)V

    return-object v1
.end method

.method public static p(Ljava/lang/Exception;)Lt1/h;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Exception;",
            ")",
            "Lt1/h<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lt1/i;

    invoke-direct {v0}, Lt1/i;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lt1/i;->c(Ljava/lang/Exception;)V

    .line 3
    invoke-virtual {v0}, Lt1/i;->a()Lt1/h;

    move-result-object p0

    return-object p0
.end method

.method public static q(Ljava/lang/Object;)Lt1/h;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(TTResult;)",
            "Lt1/h<",
            "TTResult;>;"
        }
    .end annotation

    if-nez p0, :cond_5

    .line 1
    sget-object p0, Lt1/h;->m:Lt1/h;

    return-object p0

    .line 2
    :cond_5
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_17

    .line 3
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_14

    sget-object p0, Lt1/h;->n:Lt1/h;

    goto :goto_16

    :cond_14
    sget-object p0, Lt1/h;->o:Lt1/h;

    :goto_16
    return-object p0

    .line 4
    :cond_17
    new-instance v0, Lt1/i;

    invoke-direct {v0}, Lt1/i;-><init>()V

    .line 5
    invoke-virtual {v0, p0}, Lt1/i;->d(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {v0}, Lt1/i;->a()Lt1/h;

    move-result-object p0

    return-object p0
.end method

.method public static t()Lt1/h$i;
    .registers 1

    .line 1
    sget-object v0, Lt1/h;->l:Lt1/h$i;

    return-object v0
.end method


# virtual methods
.method public A(Lt1/f;Ljava/util/concurrent/Executor;)Lt1/h;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lt1/f<",
            "TTResult;",
            "Lt1/h<",
            "TTContinuationResult;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lt1/h<",
            "TTContinuationResult;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lt1/h;->B(Lt1/f;Ljava/util/concurrent/Executor;Lt1/c;)Lt1/h;

    move-result-object p1

    return-object p1
.end method

.method public B(Lt1/f;Ljava/util/concurrent/Executor;Lt1/c;)Lt1/h;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lt1/f<",
            "TTResult;",
            "Lt1/h<",
            "TTContinuationResult;>;>;",
            "Ljava/util/concurrent/Executor;",
            "Lt1/c;",
            ")",
            "Lt1/h<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lt1/h$d;

    invoke-direct {v0, p0, p3, p1}, Lt1/h$d;-><init>(Lt1/h;Lt1/c;Lt1/f;)V

    invoke-virtual {p0, v0, p2}, Lt1/h;->m(Lt1/f;Ljava/util/concurrent/Executor;)Lt1/h;

    move-result-object p1

    return-object p1
.end method

.method D()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lt1/h;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-boolean v1, p0, Lt1/h;->b:Z

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    .line 3
    monitor-exit v0

    return v1

    :cond_a
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lt1/h;->b:Z

    .line 5
    iput-boolean v1, p0, Lt1/h;->c:Z

    .line 6
    iget-object v2, p0, Lt1/h;->a:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 7
    invoke-direct {p0}, Lt1/h;->C()V

    .line 8
    monitor-exit v0

    return v1

    :catchall_19
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method E(Ljava/lang/Exception;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lt1/h;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-boolean v1, p0, Lt1/h;->b:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    .line 3
    monitor-exit v0

    return v2

    :cond_a
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lt1/h;->b:Z

    .line 5
    iput-object p1, p0, Lt1/h;->e:Ljava/lang/Exception;

    .line 6
    iput-boolean v2, p0, Lt1/h;->f:Z

    .line 7
    iget-object p1, p0, Lt1/h;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 8
    invoke-direct {p0}, Lt1/h;->C()V

    .line 9
    iget-boolean p1, p0, Lt1/h;->f:Z

    if-nez p1, :cond_2a

    invoke-static {}, Lt1/h;->t()Lt1/h$i;

    move-result-object p1

    if-eqz p1, :cond_2a

    .line 10
    new-instance p1, Lt1/j;

    invoke-direct {p1, p0}, Lt1/j;-><init>(Lt1/h;)V

    iput-object p1, p0, Lt1/h;->g:Lt1/j;

    .line 11
    :cond_2a
    monitor-exit v0

    return v1

    :catchall_2c
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method F(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lt1/h;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-boolean v1, p0, Lt1/h;->b:Z

    if-eqz v1, :cond_a

    const/4 p1, 0x0

    .line 3
    monitor-exit v0

    return p1

    :cond_a
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lt1/h;->b:Z

    .line 5
    iput-object p1, p0, Lt1/h;->d:Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lt1/h;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 7
    invoke-direct {p0}, Lt1/h;->C()V

    .line 8
    monitor-exit v0

    return v1

    :catchall_19
    move-exception p1

    .line 9
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public i(Lt1/f;)Lt1/h;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lt1/f<",
            "TTResult;TTContinuationResult;>;)",
            "Lt1/h<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lt1/h;->j:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lt1/h;->j(Lt1/f;Ljava/util/concurrent/Executor;Lt1/c;)Lt1/h;

    move-result-object p1

    return-object p1
.end method

.method public j(Lt1/f;Ljava/util/concurrent/Executor;Lt1/c;)Lt1/h;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lt1/f<",
            "TTResult;TTContinuationResult;>;",
            "Ljava/util/concurrent/Executor;",
            "Lt1/c;",
            ")",
            "Lt1/h<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    new-instance v6, Lt1/i;

    invoke-direct {v6}, Lt1/i;-><init>()V

    .line 2
    iget-object v7, p0, Lt1/h;->a:Ljava/lang/Object;

    monitor-enter v7

    .line 3
    :try_start_8
    invoke-virtual {p0}, Lt1/h;->v()Z

    move-result v8

    if-nez v8, :cond_1e

    .line 4
    iget-object v9, p0, Lt1/h;->h:Ljava/util/List;

    new-instance v10, Lt1/h$a;

    move-object v0, v10

    move-object v1, p0

    move-object v2, v6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lt1/h$a;-><init>(Lt1/h;Lt1/i;Lt1/f;Ljava/util/concurrent/Executor;Lt1/c;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_1e
    monitor-exit v7
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_29

    if-eqz v8, :cond_24

    .line 6
    invoke-static {v6, p1, p0, p2, p3}, Lt1/h;->h(Lt1/i;Lt1/f;Lt1/h;Ljava/util/concurrent/Executor;Lt1/c;)V

    .line 7
    :cond_24
    invoke-virtual {v6}, Lt1/i;->a()Lt1/h;

    move-result-object p1

    return-object p1

    :catchall_29
    move-exception p1

    .line 8
    :try_start_2a
    monitor-exit v7
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p1
.end method

.method public k(Lt1/f;Lt1/c;)Lt1/h;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lt1/f<",
            "TTResult;TTContinuationResult;>;",
            "Lt1/c;",
            ")",
            "Lt1/h<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lt1/h;->j:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0, p2}, Lt1/h;->j(Lt1/f;Ljava/util/concurrent/Executor;Lt1/c;)Lt1/h;

    move-result-object p1

    return-object p1
.end method

.method public l(Lt1/f;)Lt1/h;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lt1/f<",
            "TTResult;",
            "Lt1/h<",
            "TTContinuationResult;>;>;)",
            "Lt1/h<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lt1/h;->j:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lt1/h;->n(Lt1/f;Ljava/util/concurrent/Executor;Lt1/c;)Lt1/h;

    move-result-object p1

    return-object p1
.end method

.method public m(Lt1/f;Ljava/util/concurrent/Executor;)Lt1/h;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lt1/f<",
            "TTResult;",
            "Lt1/h<",
            "TTContinuationResult;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lt1/h<",
            "TTContinuationResult;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lt1/h;->n(Lt1/f;Ljava/util/concurrent/Executor;Lt1/c;)Lt1/h;

    move-result-object p1

    return-object p1
.end method

.method public n(Lt1/f;Ljava/util/concurrent/Executor;Lt1/c;)Lt1/h;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lt1/f<",
            "TTResult;",
            "Lt1/h<",
            "TTContinuationResult;>;>;",
            "Ljava/util/concurrent/Executor;",
            "Lt1/c;",
            ")",
            "Lt1/h<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    new-instance v6, Lt1/i;

    invoke-direct {v6}, Lt1/i;-><init>()V

    .line 2
    iget-object v7, p0, Lt1/h;->a:Ljava/lang/Object;

    monitor-enter v7

    .line 3
    :try_start_8
    invoke-virtual {p0}, Lt1/h;->v()Z

    move-result v8

    if-nez v8, :cond_1e

    .line 4
    iget-object v9, p0, Lt1/h;->h:Ljava/util/List;

    new-instance v10, Lt1/h$b;

    move-object v0, v10

    move-object v1, p0

    move-object v2, v6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lt1/h$b;-><init>(Lt1/h;Lt1/i;Lt1/f;Ljava/util/concurrent/Executor;Lt1/c;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_1e
    monitor-exit v7
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_29

    if-eqz v8, :cond_24

    .line 6
    invoke-static {v6, p1, p0, p2, p3}, Lt1/h;->g(Lt1/i;Lt1/f;Lt1/h;Ljava/util/concurrent/Executor;Lt1/c;)V

    .line 7
    :cond_24
    invoke-virtual {v6}, Lt1/i;->a()Lt1/h;

    move-result-object p1

    return-object p1

    :catchall_29
    move-exception p1

    .line 8
    :try_start_2a
    monitor-exit v7
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p1
.end method

.method public r()Ljava/lang/Exception;
    .registers 3

    .line 1
    iget-object v0, p0, Lt1/h;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lt1/h;->e:Ljava/lang/Exception;

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lt1/h;->f:Z

    .line 4
    iget-object v1, p0, Lt1/h;->g:Lt1/j;

    if-eqz v1, :cond_14

    .line 5
    invoke-virtual {v1}, Lt1/j;->a()V

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lt1/h;->g:Lt1/j;

    .line 7
    :cond_14
    iget-object v1, p0, Lt1/h;->e:Ljava/lang/Exception;

    monitor-exit v0

    return-object v1

    :catchall_18
    move-exception v1

    .line 8
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public s()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lt1/h;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lt1/h;->d:Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public u()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lt1/h;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-boolean v1, p0, Lt1/h;->c:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public v()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lt1/h;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-boolean v1, p0, Lt1/h;->b:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public w()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lt1/h;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    invoke-virtual {p0}, Lt1/h;->r()Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    monitor-exit v0

    return v1

    :catchall_e
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public x(Lt1/f;)Lt1/h;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lt1/f<",
            "TTResult;TTContinuationResult;>;)",
            "Lt1/h<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lt1/h;->j:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lt1/h;->y(Lt1/f;Ljava/util/concurrent/Executor;Lt1/c;)Lt1/h;

    move-result-object p1

    return-object p1
.end method

.method public y(Lt1/f;Ljava/util/concurrent/Executor;Lt1/c;)Lt1/h;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lt1/f<",
            "TTResult;TTContinuationResult;>;",
            "Ljava/util/concurrent/Executor;",
            "Lt1/c;",
            ")",
            "Lt1/h<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lt1/h$c;

    invoke-direct {v0, p0, p3, p1}, Lt1/h$c;-><init>(Lt1/h;Lt1/c;Lt1/f;)V

    invoke-virtual {p0, v0, p2}, Lt1/h;->m(Lt1/f;Ljava/util/concurrent/Executor;)Lt1/h;

    move-result-object p1

    return-object p1
.end method

.method public z(Lt1/f;)Lt1/h;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lt1/f<",
            "TTResult;",
            "Lt1/h<",
            "TTContinuationResult;>;>;)",
            "Lt1/h<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lt1/h;->j:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0}, Lt1/h;->A(Lt1/f;Ljava/util/concurrent/Executor;)Lt1/h;

    move-result-object p1

    return-object p1
.end method

###### Class t1.h.a (t1.h$a)
.class Lt1/h$a;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lt1/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt1/h;->j(Lt1/f;Ljava/util/concurrent/Executor;Lt1/c;)Lt1/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lt1/f<",
        "TTResult;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lt1/i;

.field final synthetic b:Lt1/f;

.field final synthetic c:Ljava/util/concurrent/Executor;

.field final synthetic d:Lt1/c;

.field final synthetic e:Lt1/h;


# direct methods
.method constructor <init>(Lt1/h;Lt1/i;Lt1/f;Ljava/util/concurrent/Executor;Lt1/c;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lt1/h$a;->e:Lt1/h;

    iput-object p2, p0, Lt1/h$a;->a:Lt1/i;

    iput-object p3, p0, Lt1/h$a;->b:Lt1/f;

    iput-object p4, p0, Lt1/h$a;->c:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lt1/h$a;->d:Lt1/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lt1/h;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lt1/h$a;->b(Lt1/h;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public b(Lt1/h;)Ljava/lang/Void;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt1/h<",
            "TTResult;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lt1/h$a;->a:Lt1/i;

    iget-object v1, p0, Lt1/h$a;->b:Lt1/f;

    iget-object v2, p0, Lt1/h$a;->c:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lt1/h$a;->d:Lt1/c;

    invoke-static {v0, v1, p1, v2, v3}, Lt1/h;->a(Lt1/i;Lt1/f;Lt1/h;Ljava/util/concurrent/Executor;Lt1/c;)V

    const/4 p1, 0x0

    return-object p1
.end method

###### Class t1.h.b (t1.h$b)
.class Lt1/h$b;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lt1/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt1/h;->n(Lt1/f;Ljava/util/concurrent/Executor;Lt1/c;)Lt1/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lt1/f<",
        "TTResult;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lt1/i;

.field final synthetic b:Lt1/f;

.field final synthetic c:Ljava/util/concurrent/Executor;

.field final synthetic d:Lt1/c;

.field final synthetic e:Lt1/h;


# direct methods
.method constructor <init>(Lt1/h;Lt1/i;Lt1/f;Ljava/util/concurrent/Executor;Lt1/c;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lt1/h$b;->e:Lt1/h;

    iput-object p2, p0, Lt1/h$b;->a:Lt1/i;

    iput-object p3, p0, Lt1/h$b;->b:Lt1/f;

    iput-object p4, p0, Lt1/h$b;->c:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lt1/h$b;->d:Lt1/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lt1/h;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lt1/h$b;->b(Lt1/h;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public b(Lt1/h;)Ljava/lang/Void;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt1/h<",
            "TTResult;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lt1/h$b;->a:Lt1/i;

    iget-object v1, p0, Lt1/h$b;->b:Lt1/f;

    iget-object v2, p0, Lt1/h$b;->c:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lt1/h$b;->d:Lt1/c;

    invoke-static {v0, v1, p1, v2, v3}, Lt1/h;->b(Lt1/i;Lt1/f;Lt1/h;Ljava/util/concurrent/Executor;Lt1/c;)V

    const/4 p1, 0x0

    return-object p1
.end method

###### Class t1.h.c (t1.h$c)
.class Lt1/h$c;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lt1/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt1/h;->y(Lt1/f;Ljava/util/concurrent/Executor;Lt1/c;)Lt1/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lt1/f<",
        "TTResult;",
        "Lt1/h<",
        "TTContinuationResult;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lt1/c;

.field final synthetic b:Lt1/f;

.field final synthetic c:Lt1/h;


# direct methods
.method constructor <init>(Lt1/h;Lt1/c;Lt1/f;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lt1/h$c;->c:Lt1/h;

    iput-object p2, p0, Lt1/h$c;->a:Lt1/c;

    iput-object p3, p0, Lt1/h$c;->b:Lt1/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lt1/h;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lt1/h$c;->b(Lt1/h;)Lt1/h;

    move-result-object p1

    return-object p1
.end method

.method public b(Lt1/h;)Lt1/h;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt1/h<",
            "TTResult;>;)",
            "Lt1/h<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lt1/h$c;->a:Lt1/c;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lt1/c;->a()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2
    invoke-static {}, Lt1/h;->f()Lt1/h;

    move-result-object p1

    return-object p1

    .line 3
    :cond_f
    invoke-virtual {p1}, Lt1/h;->w()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 4
    invoke-virtual {p1}, Lt1/h;->r()Ljava/lang/Exception;

    move-result-object p1

    invoke-static {p1}, Lt1/h;->p(Ljava/lang/Exception;)Lt1/h;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1e
    invoke-virtual {p1}, Lt1/h;->u()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 6
    invoke-static {}, Lt1/h;->f()Lt1/h;

    move-result-object p1

    return-object p1

    .line 7
    :cond_29
    iget-object v0, p0, Lt1/h$c;->b:Lt1/f;

    invoke-virtual {p1, v0}, Lt1/h;->i(Lt1/f;)Lt1/h;

    move-result-object p1

    return-object p1
.end method

###### Class t1.h.d (t1.h$d)
.class Lt1/h$d;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lt1/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt1/h;->B(Lt1/f;Ljava/util/concurrent/Executor;Lt1/c;)Lt1/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lt1/f<",
        "TTResult;",
        "Lt1/h<",
        "TTContinuationResult;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lt1/c;

.field final synthetic b:Lt1/f;

.field final synthetic c:Lt1/h;


# direct methods
.method constructor <init>(Lt1/h;Lt1/c;Lt1/f;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lt1/h$d;->c:Lt1/h;

    iput-object p2, p0, Lt1/h$d;->a:Lt1/c;

    iput-object p3, p0, Lt1/h$d;->b:Lt1/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lt1/h;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lt1/h$d;->b(Lt1/h;)Lt1/h;

    move-result-object p1

    return-object p1
.end method

.method public b(Lt1/h;)Lt1/h;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt1/h<",
            "TTResult;>;)",
            "Lt1/h<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lt1/h$d;->a:Lt1/c;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lt1/c;->a()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2
    invoke-static {}, Lt1/h;->f()Lt1/h;

    move-result-object p1

    return-object p1

    .line 3
    :cond_f
    invoke-virtual {p1}, Lt1/h;->w()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 4
    invoke-virtual {p1}, Lt1/h;->r()Ljava/lang/Exception;

    move-result-object p1

    invoke-static {p1}, Lt1/h;->p(Ljava/lang/Exception;)Lt1/h;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1e
    invoke-virtual {p1}, Lt1/h;->u()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 6
    invoke-static {}, Lt1/h;->f()Lt1/h;

    move-result-object p1

    return-object p1

    .line 7
    :cond_29
    iget-object v0, p0, Lt1/h$d;->b:Lt1/f;

    invoke-virtual {p1, v0}, Lt1/h;->l(Lt1/f;)Lt1/h;

    move-result-object p1

    return-object p1
.end method

###### Class t1.h.e (t1.h$e)
.class final Lt1/h$e;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt1/h;->h(Lt1/i;Lt1/f;Lt1/h;Ljava/util/concurrent/Executor;Lt1/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic o:Lt1/c;

.field final synthetic p:Lt1/i;

.field final synthetic q:Lt1/f;

.field final synthetic r:Lt1/h;


# direct methods
.method constructor <init>(Lt1/c;Lt1/i;Lt1/f;Lt1/h;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lt1/h$e;->o:Lt1/c;

    iput-object p2, p0, Lt1/h$e;->p:Lt1/i;

    iput-object p3, p0, Lt1/h$e;->q:Lt1/f;

    iput-object p4, p0, Lt1/h$e;->r:Lt1/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lt1/h$e;->o:Lt1/c;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lt1/c;->a()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2
    iget-object v0, p0, Lt1/h$e;->p:Lt1/i;

    invoke-virtual {v0}, Lt1/i;->b()V

    return-void

    .line 3
    :cond_10
    :try_start_10
    iget-object v0, p0, Lt1/h$e;->q:Lt1/f;

    iget-object v1, p0, Lt1/h$e;->r:Lt1/h;

    invoke-interface {v0, v1}, Lt1/f;->a(Lt1/h;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lt1/h$e;->p:Lt1/i;

    invoke-virtual {v1, v0}, Lt1/i;->d(Ljava/lang/Object;)V
    :try_end_1d
    .catch Ljava/util/concurrent/CancellationException; {:try_start_10 .. :try_end_1d} :catch_25
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1d} :catch_1e

    goto :goto_2a

    :catch_1e
    move-exception v0

    .line 5
    iget-object v1, p0, Lt1/h$e;->p:Lt1/i;

    invoke-virtual {v1, v0}, Lt1/i;->c(Ljava/lang/Exception;)V

    goto :goto_2a

    .line 6
    :catch_25
    iget-object v0, p0, Lt1/h$e;->p:Lt1/i;

    invoke-virtual {v0}, Lt1/i;->b()V

    :goto_2a
    return-void
.end method

###### Class t1.h.f (t1.h$f)
.class final Lt1/h$f;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt1/h;->g(Lt1/i;Lt1/f;Lt1/h;Ljava/util/concurrent/Executor;Lt1/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic o:Lt1/c;

.field final synthetic p:Lt1/i;

.field final synthetic q:Lt1/f;

.field final synthetic r:Lt1/h;


# direct methods
.method constructor <init>(Lt1/c;Lt1/i;Lt1/f;Lt1/h;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lt1/h$f;->o:Lt1/c;

    iput-object p2, p0, Lt1/h$f;->p:Lt1/i;

    iput-object p3, p0, Lt1/h$f;->q:Lt1/f;

    iput-object p4, p0, Lt1/h$f;->r:Lt1/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lt1/h$f;->o:Lt1/c;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lt1/c;->a()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2
    iget-object v0, p0, Lt1/h$f;->p:Lt1/i;

    invoke-virtual {v0}, Lt1/i;->b()V

    return-void

    .line 3
    :cond_10
    :try_start_10
    iget-object v0, p0, Lt1/h$f;->q:Lt1/f;

    iget-object v1, p0, Lt1/h$f;->r:Lt1/h;

    invoke-interface {v0, v1}, Lt1/f;->a(Lt1/h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt1/h;

    if-nez v0, :cond_23

    .line 4
    iget-object v0, p0, Lt1/h$f;->p:Lt1/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lt1/i;->d(Ljava/lang/Object;)V

    goto :goto_38

    .line 5
    :cond_23
    new-instance v1, Lt1/h$f$a;

    invoke-direct {v1, p0}, Lt1/h$f$a;-><init>(Lt1/h$f;)V

    invoke-virtual {v0, v1}, Lt1/h;->i(Lt1/f;)Lt1/h;
    :try_end_2b
    .catch Ljava/util/concurrent/CancellationException; {:try_start_10 .. :try_end_2b} :catch_33
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2b} :catch_2c

    goto :goto_38

    :catch_2c
    move-exception v0

    .line 6
    iget-object v1, p0, Lt1/h$f;->p:Lt1/i;

    invoke-virtual {v1, v0}, Lt1/i;->c(Ljava/lang/Exception;)V

    goto :goto_38

    .line 7
    :catch_33
    iget-object v0, p0, Lt1/h$f;->p:Lt1/i;

    invoke-virtual {v0}, Lt1/i;->b()V

    :goto_38
    return-void
.end method

###### Class t1.h.f.a (t1.h$f$a)
.class Lt1/h$f$a;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lt1/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt1/h$f;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lt1/f<",
        "TTContinuationResult;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lt1/h$f;


# direct methods
.method constructor <init>(Lt1/h$f;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lt1/h$f$a;->a:Lt1/h$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lt1/h;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lt1/h$f$a;->b(Lt1/h;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public b(Lt1/h;)Ljava/lang/Void;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt1/h<",
            "TTContinuationResult;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lt1/h$f$a;->a:Lt1/h$f;

    iget-object v0, v0, Lt1/h$f;->o:Lt1/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lt1/c;->a()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2
    iget-object p1, p0, Lt1/h$f$a;->a:Lt1/h$f;

    iget-object p1, p1, Lt1/h$f;->p:Lt1/i;

    invoke-virtual {p1}, Lt1/i;->b()V

    return-object v1

    .line 3
    :cond_15
    invoke-virtual {p1}, Lt1/h;->u()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 4
    iget-object p1, p0, Lt1/h$f$a;->a:Lt1/h$f;

    iget-object p1, p1, Lt1/h$f;->p:Lt1/i;

    invoke-virtual {p1}, Lt1/i;->b()V

    goto :goto_40

    .line 5
    :cond_23
    invoke-virtual {p1}, Lt1/h;->w()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 6
    iget-object v0, p0, Lt1/h$f$a;->a:Lt1/h$f;

    iget-object v0, v0, Lt1/h$f;->p:Lt1/i;

    invoke-virtual {p1}, Lt1/h;->r()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {v0, p1}, Lt1/i;->c(Ljava/lang/Exception;)V

    goto :goto_40

    .line 7
    :cond_35
    iget-object v0, p0, Lt1/h$f$a;->a:Lt1/h$f;

    iget-object v0, v0, Lt1/h$f;->p:Lt1/i;

    invoke-virtual {p1}, Lt1/h;->s()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lt1/i;->d(Ljava/lang/Object;)V

    :goto_40
    return-object v1
.end method

###### Class t1.h.g (t1.h$g)
.class final Lt1/h$g;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt1/h;->c(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;Lt1/c;)Lt1/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic o:Lt1/c;

.field final synthetic p:Lt1/i;

.field final synthetic q:Ljava/util/concurrent/Callable;


# direct methods
.method constructor <init>(Lt1/c;Lt1/i;Ljava/util/concurrent/Callable;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lt1/h$g;->o:Lt1/c;

    iput-object p2, p0, Lt1/h$g;->p:Lt1/i;

    iput-object p3, p0, Lt1/h$g;->q:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lt1/h$g;->o:Lt1/c;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lt1/c;->a()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2
    iget-object v0, p0, Lt1/h$g;->p:Lt1/i;

    invoke-virtual {v0}, Lt1/i;->b()V

    return-void

    .line 3
    :cond_10
    :try_start_10
    iget-object v0, p0, Lt1/h$g;->p:Lt1/i;

    iget-object v1, p0, Lt1/h$g;->q:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lt1/i;->d(Ljava/lang/Object;)V
    :try_end_1b
    .catch Ljava/util/concurrent/CancellationException; {:try_start_10 .. :try_end_1b} :catch_23
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1b} :catch_1c

    goto :goto_28

    :catch_1c
    move-exception v0

    .line 4
    iget-object v1, p0, Lt1/h$g;->p:Lt1/i;

    invoke-virtual {v1, v0}, Lt1/i;->c(Ljava/lang/Exception;)V

    goto :goto_28

    .line 5
    :catch_23
    iget-object v0, p0, Lt1/h$g;->p:Lt1/i;

    invoke-virtual {v0}, Lt1/i;->b()V

    :goto_28
    return-void
.end method

###### Class t1.h.C0255h (t1.h$h)
.class public Lt1/h$h;
.super Lt1/i;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt1/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt1/i<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lt1/h;


# direct methods
.method constructor <init>(Lt1/h;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lt1/h$h;->b:Lt1/h;

    invoke-direct {p0}, Lt1/i;-><init>()V

    return-void
.end method

###### Class t1.h.i (t1.h$i)
.class public interface abstract Lt1/h$i;
.super Ljava/lang/Object;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt1/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "i"
.end annotation


# virtual methods
.method public abstract a(Lt1/h;Lt1/k;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt1/h<",
            "*>;",
            "Lt1/k;",
            ")V"
        }
    .end annotation
.end method
