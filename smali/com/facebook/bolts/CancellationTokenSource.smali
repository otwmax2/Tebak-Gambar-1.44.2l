###### Class com.facebook.bolts.CancellationTokenSource (com.facebook.bolts.CancellationTokenSource)
.class public final Lcom/facebook/bolts/CancellationTokenSource;
.super Ljava/lang/Object;
.source "CancellationTokenSource.kt"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private cancellationRequested:Z

.field private closed:Z

.field private final executor:Ljava/util/concurrent/ScheduledExecutorService;

.field private final lock:Ljava/lang/Object;

.field private final registrations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/bolts/CancellationTokenRegistration;",
            ">;"
        }
    .end annotation
.end field

.field private scheduledCancellation:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/bolts/CancellationTokenSource;->lock:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/bolts/CancellationTokenSource;->registrations:Ljava/util/List;

    .line 4
    sget-object v0, Lcom/facebook/bolts/BoltsExecutors;->Companion:Lcom/facebook/bolts/BoltsExecutors$Companion;

    invoke-virtual {v0}, Lcom/facebook/bolts/BoltsExecutors$Companion;->scheduled$facebook_bolts_release()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/bolts/CancellationTokenSource;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public static synthetic b(Lcom/facebook/bolts/CancellationTokenSource;)V
    .registers 1

    invoke-static {p0}, Lcom/facebook/bolts/CancellationTokenSource;->cancelAfter$lambda-6$lambda-5(Lcom/facebook/bolts/CancellationTokenSource;)V

    return-void
.end method

.method private final cancelAfter(JLjava/util/concurrent/TimeUnit;)V
    .registers 9

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-ltz v2, :cond_8

    const/4 v2, 0x1

    goto :goto_9

    :cond_8
    const/4 v2, 0x0

    :goto_9
    if-eqz v2, :cond_39

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-nez v4, :cond_15

    .line 2
    invoke-virtual {p0}, Lcom/facebook/bolts/CancellationTokenSource;->cancel()V

    return-void

    .line 3
    :cond_15
    iget-object v2, p0, Lcom/facebook/bolts/CancellationTokenSource;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 4
    :try_start_18
    iget-boolean v3, p0, Lcom/facebook/bolts/CancellationTokenSource;->cancellationRequested:Z
    :try_end_1a
    .catchall {:try_start_18 .. :try_end_1a} :catchall_36

    if-eqz v3, :cond_1e

    .line 5
    monitor-exit v2

    return-void

    .line 6
    :cond_1e
    :try_start_1e
    invoke-direct {p0}, Lcom/facebook/bolts/CancellationTokenSource;->cancelScheduledCancellation()V

    cmp-long v3, p1, v0

    if-eqz v3, :cond_32

    .line 7
    iget-object v0, p0, Lcom/facebook/bolts/CancellationTokenSource;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 8
    new-instance v1, Lcom/facebook/bolts/a;

    invoke-direct {v1, p0}, Lcom/facebook/bolts/a;-><init>(Lcom/facebook/bolts/CancellationTokenSource;)V

    .line 9
    invoke-interface {v0, v1, p1, p2, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/facebook/bolts/CancellationTokenSource;->scheduledCancellation:Ljava/util/concurrent/ScheduledFuture;

    .line 11
    :cond_32
    sget-object p1, Lh9/t;->a:Lh9/t;
    :try_end_34
    .catchall {:try_start_1e .. :try_end_34} :catchall_36

    .line 12
    monitor-exit v2

    return-void

    :catchall_36
    move-exception p1

    monitor-exit v2

    throw p1

    :cond_39
    const-string p1, "Delay must be >= -1"

    .line 13
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private static final cancelAfter$lambda-6$lambda-5(Lcom/facebook/bolts/CancellationTokenSource;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/facebook/bolts/CancellationTokenSource;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_9
    iput-object v1, p0, Lcom/facebook/bolts/CancellationTokenSource;->scheduledCancellation:Ljava/util/concurrent/ScheduledFuture;

    sget-object v1, Lh9/t;->a:Lh9/t;
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_12

    monitor-exit v0

    .line 2
    invoke-virtual {p0}, Lcom/facebook/bolts/CancellationTokenSource;->cancel()V

    return-void

    :catchall_12
    move-exception p0

    .line 3
    monitor-exit v0

    throw p0
.end method

.method private final cancelScheduledCancellation()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/facebook/bolts/CancellationTokenSource;->scheduledCancellation:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x1

    .line 2
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/facebook/bolts/CancellationTokenSource;->scheduledCancellation:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private final notifyListeners(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/bolts/CancellationTokenRegistration;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/bolts/CancellationTokenRegistration;

    .line 2
    invoke-virtual {v0}, Lcom/facebook/bolts/CancellationTokenRegistration;->runAction$facebook_bolts_release()V

    goto :goto_4

    :cond_14
    return-void
.end method

.method private final throwIfClosed()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/facebook/bolts/CancellationTokenSource;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Object already closed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final cancel()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/facebook/bolts/CancellationTokenSource;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    invoke-direct {p0}, Lcom/facebook/bolts/CancellationTokenSource;->throwIfClosed()V

    .line 3
    iget-boolean v1, p0, Lcom/facebook/bolts/CancellationTokenSource;->cancellationRequested:Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_20

    if-eqz v1, :cond_c

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_c
    :try_start_c
    invoke-direct {p0}, Lcom/facebook/bolts/CancellationTokenSource;->cancelScheduledCancellation()V

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lcom/facebook/bolts/CancellationTokenSource;->cancellationRequested:Z

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/facebook/bolts/CancellationTokenSource;->registrations:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8
    sget-object v2, Lh9/t;->a:Lh9/t;
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_20

    .line 9
    monitor-exit v0

    .line 10
    invoke-direct {p0, v1}, Lcom/facebook/bolts/CancellationTokenSource;->notifyListeners(Ljava/util/List;)V

    return-void

    :catchall_20
    move-exception v1

    .line 11
    monitor-exit v0

    throw v1
.end method

.method public final cancelAfter(J)V
    .registers 4

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/bolts/CancellationTokenSource;->cancelAfter(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public close()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/facebook/bolts/CancellationTokenSource;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-boolean v1, p0, Lcom/facebook/bolts/CancellationTokenSource;->closed:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_2e

    if-eqz v1, :cond_9

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_9
    :try_start_9
    invoke-direct {p0}, Lcom/facebook/bolts/CancellationTokenSource;->cancelScheduledCancellation()V

    .line 5
    iget-object v1, p0, Lcom/facebook/bolts/CancellationTokenSource;->registrations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/bolts/CancellationTokenRegistration;

    .line 6
    invoke-virtual {v2}, Lcom/facebook/bolts/CancellationTokenRegistration;->close()V

    goto :goto_12

    .line 7
    :cond_22
    iget-object v1, p0, Lcom/facebook/bolts/CancellationTokenSource;->registrations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/facebook/bolts/CancellationTokenSource;->closed:Z

    .line 9
    sget-object v1, Lh9/t;->a:Lh9/t;
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_2e

    .line 10
    monitor-exit v0

    return-void

    :catchall_2e
    move-exception v1

    monitor-exit v0

    goto :goto_32

    :goto_31
    throw v1

    :goto_32
    goto :goto_31
.end method

.method public final getToken()Lcom/facebook/bolts/CancellationToken;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/facebook/bolts/CancellationTokenSource;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    invoke-direct {p0}, Lcom/facebook/bolts/CancellationTokenSource;->throwIfClosed()V

    .line 3
    new-instance v1, Lcom/facebook/bolts/CancellationToken;

    invoke-direct {v1, p0}, Lcom/facebook/bolts/CancellationToken;-><init>(Lcom/facebook/bolts/CancellationTokenSource;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v0

    return-object v1

    :catchall_d
    move-exception v1

    .line 4
    monitor-exit v0

    throw v1
.end method

.method public final isCancellationRequested()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/facebook/bolts/CancellationTokenSource;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    invoke-direct {p0}, Lcom/facebook/bolts/CancellationTokenSource;->throwIfClosed()V

    .line 3
    iget-boolean v1, p0, Lcom/facebook/bolts/CancellationTokenSource;->cancellationRequested:Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v0

    return v1

    :catchall_a
    move-exception v1

    .line 4
    monitor-exit v0

    throw v1
.end method

.method public final register$facebook_bolts_release(Ljava/lang/Runnable;)Lcom/facebook/bolts/CancellationTokenRegistration;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/facebook/bolts/CancellationTokenSource;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    invoke-direct {p0}, Lcom/facebook/bolts/CancellationTokenSource;->throwIfClosed()V

    .line 3
    new-instance v1, Lcom/facebook/bolts/CancellationTokenRegistration;

    invoke-direct {v1, p0, p1}, Lcom/facebook/bolts/CancellationTokenRegistration;-><init>(Lcom/facebook/bolts/CancellationTokenSource;Ljava/lang/Runnable;)V

    .line 4
    iget-boolean p1, p0, Lcom/facebook/bolts/CancellationTokenSource;->cancellationRequested:Z

    if-eqz p1, :cond_15

    .line 5
    invoke-virtual {v1}, Lcom/facebook/bolts/CancellationTokenRegistration;->runAction$facebook_bolts_release()V

    sget-object p1, Lh9/t;->a:Lh9/t;

    goto :goto_1a

    .line 6
    :cond_15
    iget-object p1, p0, Lcom/facebook/bolts/CancellationTokenSource;->registrations:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1c

    .line 7
    :goto_1a
    monitor-exit v0

    return-object v1

    :catchall_1c
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final throwIfCancellationRequested$facebook_bolts_release()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/CancellationException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/bolts/CancellationTokenSource;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    invoke-direct {p0}, Lcom/facebook/bolts/CancellationTokenSource;->throwIfClosed()V

    .line 3
    iget-boolean v1, p0, Lcom/facebook/bolts/CancellationTokenSource;->cancellationRequested:Z

    if-nez v1, :cond_e

    .line 4
    sget-object v1, Lh9/t;->a:Lh9/t;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_14

    .line 5
    monitor-exit v0

    return-void

    .line 6
    :cond_e
    :try_start_e
    new-instance v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v1
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_14

    :catchall_14
    move-exception v1

    .line 7
    monitor-exit v0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 1
    sget-object v0, Lt9/b0;->a:Lt9/b0;

    .line 2
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Object;

    .line 3
    const-class v3, Lcom/facebook/bolts/CancellationTokenSource;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 5
    invoke-virtual {p0}, Lcom/facebook/bolts/CancellationTokenSource;->isCancellationRequested()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 6
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s@%s[cancellationRequested=%s]"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.String.format(locale, format, *args)"

    invoke-static {v0, v1}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final unregister$facebook_bolts_release(Lcom/facebook/bolts/CancellationTokenRegistration;)V
    .registers 4

    const-string v0, "registration"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/facebook/bolts/CancellationTokenSource;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_8
    invoke-direct {p0}, Lcom/facebook/bolts/CancellationTokenSource;->throwIfClosed()V

    .line 3
    iget-object v1, p0, Lcom/facebook/bolts/CancellationTokenSource;->registrations:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_12

    .line 4
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p1

    monitor-exit v0

    throw p1
.end method

###### Class com.facebook.bolts.a (com.facebook.bolts.a)
.class public final synthetic Lcom/facebook/bolts/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/facebook/bolts/CancellationTokenSource;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/bolts/CancellationTokenSource;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/bolts/a;->o:Lcom/facebook/bolts/CancellationTokenSource;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/bolts/a;->o:Lcom/facebook/bolts/CancellationTokenSource;

    invoke-static {v0}, Lcom/facebook/bolts/CancellationTokenSource;->b(Lcom/facebook/bolts/CancellationTokenSource;)V

    return-void
.end method
