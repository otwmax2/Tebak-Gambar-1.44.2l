###### Class t1.d (t1.d)
.class public Lt1/d;
.super Ljava/lang/Object;
.source "CancellationTokenRegistration.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final o:Ljava/lang/Object;

.field private p:Lt1/e;

.field private q:Ljava/lang/Runnable;

.field private r:Z


# direct methods
.method private c()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lt1/d;->r:Z

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Object already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method b()V
    .registers 3

    .line 1
    iget-object v0, p0, Lt1/d;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    invoke-direct {p0}, Lt1/d;->c()V

    .line 3
    iget-object v1, p0, Lt1/d;->q:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 4
    invoke-virtual {p0}, Lt1/d;->close()V

    .line 5
    monitor-exit v0

    return-void

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public close()V
    .registers 3

    .line 1
    iget-object v0, p0, Lt1/d;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-boolean v1, p0, Lt1/d;->r:Z

    if-eqz v1, :cond_9

    .line 3
    monitor-exit v0

    return-void

    :cond_9
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lt1/d;->r:Z

    .line 5
    iget-object v1, p0, Lt1/d;->p:Lt1/e;

    invoke-virtual {v1, p0}, Lt1/e;->h(Lt1/d;)V

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lt1/d;->p:Lt1/e;

    .line 7
    iput-object v1, p0, Lt1/d;->q:Ljava/lang/Runnable;

    .line 8
    monitor-exit v0

    return-void

    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method
