###### Class androidx.room.l0 (androidx.room.l0)
.class Landroidx/room/l0;
.super Ljava/lang/Object;
.source "TransactionExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field private final o:Ljava/util/concurrent/Executor;

.field private final p:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/room/l0;->p:Ljava/util/ArrayDeque;

    .line 3
    iput-object p1, p0, Landroidx/room/l0;->o:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method declared-synchronized a()V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Landroidx/room/l0;->p:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Landroidx/room/l0;->q:Ljava/lang/Runnable;

    if-eqz v0, :cond_12

    .line 2
    iget-object v1, p0, Landroidx/room/l0;->o:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 3
    :cond_12
    monitor-exit p0

    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized execute(Ljava/lang/Runnable;)V
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Landroidx/room/l0;->p:Ljava/util/ArrayDeque;

    new-instance v1, Landroidx/room/l0$a;

    invoke-direct {v1, p0, p1}, Landroidx/room/l0$a;-><init>(Landroidx/room/l0;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p0, Landroidx/room/l0;->q:Ljava/lang/Runnable;

    if-nez p1, :cond_12

    .line 3
    invoke-virtual {p0}, Landroidx/room/l0;->a()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 4
    :cond_12
    monitor-exit p0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

###### Class androidx.room.l0.a (androidx.room.l0$a)
.class Landroidx/room/l0$a;
.super Ljava/lang/Object;
.source "TransactionExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/l0;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Ljava/lang/Runnable;

.field final synthetic p:Landroidx/room/l0;


# direct methods
.method constructor <init>(Landroidx/room/l0;Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/room/l0$a;->p:Landroidx/room/l0;

    iput-object p2, p0, Landroidx/room/l0$a;->o:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/room/l0$a;->o:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_b

    .line 2
    iget-object v0, p0, Landroidx/room/l0$a;->p:Landroidx/room/l0;

    invoke-virtual {v0}, Landroidx/room/l0;->a()V

    return-void

    :catchall_b
    move-exception v0

    iget-object v1, p0, Landroidx/room/l0$a;->p:Landroidx/room/l0;

    invoke-virtual {v1}, Landroidx/room/l0;->a()V

    .line 3
    throw v0
.end method
