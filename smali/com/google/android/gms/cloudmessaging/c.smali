###### Class com.google.android.gms.cloudmessaging.c (com.google.android.gms.cloudmessaging.c)
.class final Lcom/google/android/gms/cloudmessaging/c;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cloud-messaging@@16.0.0"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field o:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field final p:Landroid/os/Messenger;

.field q:Lcom/google/android/gms/cloudmessaging/l;

.field final r:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/android/gms/cloudmessaging/m<",
            "*>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field final s:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/cloudmessaging/m<",
            "*>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field final synthetic t:Lcom/google/android/gms/cloudmessaging/zze;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/cloudmessaging/zze;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/c;->t:Lcom/google/android/gms/cloudmessaging/zze;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/google/android/gms/cloudmessaging/c;->o:I

    .line 3
    new-instance p1, Landroid/os/Messenger;

    new-instance v0, Lcom/google/android/gms/internal/cloudmessaging/zze;

    .line 4
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/cloudmessaging/f;

    invoke-direct {v2, p0}, Lcom/google/android/gms/cloudmessaging/f;-><init>(Lcom/google/android/gms/cloudmessaging/c;)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/cloudmessaging/zze;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-direct {p1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/c;->p:Landroid/os/Messenger;

    .line 5
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/c;->r:Ljava/util/Queue;

    .line 6
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/c;->s:Landroid/util/SparseArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/cloudmessaging/zze;Lcom/google/android/gms/cloudmessaging/d;)V
    .registers 3

    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/gms/cloudmessaging/c;-><init>(Lcom/google/android/gms/cloudmessaging/zze;)V

    return-void
.end method


# virtual methods
.method final a()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/c;->t:Lcom/google/android/gms/cloudmessaging/zze;

    invoke-static {v0}, Lcom/google/android/gms/cloudmessaging/zze;->g(Lcom/google/android/gms/cloudmessaging/zze;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/cloudmessaging/g;

    invoke-direct {v1, p0}, Lcom/google/android/gms/cloudmessaging/g;-><init>(Lcom/google/android/gms/cloudmessaging/c;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method final declared-synchronized b(I)V
    .registers 6

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/c;->s:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cloudmessaging/m;

    if-eqz v0, :cond_36

    const-string v1, "MessengerIpcClient"

    const/16 v2, 0x1f

    .line 2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Timing out request: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/cloudmessaging/c;->s:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4
    new-instance p1, Lcom/google/android/gms/cloudmessaging/zzp;

    const/4 v1, 0x3

    const-string v2, "Timed out waiting for response"

    invoke-direct {p1, v1, v2}, Lcom/google/android/gms/cloudmessaging/zzp;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cloudmessaging/m;->b(Lcom/google/android/gms/cloudmessaging/zzp;)V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/cloudmessaging/c;->f()V
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_38

    .line 6
    :cond_36
    monitor-exit p0

    return-void

    :catchall_38
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized c(ILjava/lang/String;)V
    .registers 8

    monitor-enter p0

    :try_start_1
    const-string v0, "MessengerIpcClient"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "MessengerIpcClient"

    const-string v2, "Disconnected: "

    .line 2
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1d

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_23

    :cond_1d
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_23
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_26
    iget v0, p0, Lcom/google/android/gms/cloudmessaging/c;->o:I
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_b8

    if-eqz v0, :cond_b2

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x4

    if-eq v0, v3, :cond_56

    if-eq v0, v2, :cond_56

    if-eq v0, v1, :cond_52

    if-ne v0, v4, :cond_37

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_37
    :try_start_37
    new-instance p1, Ljava/lang/IllegalStateException;

    iget p2, p0, Lcom/google/android/gms/cloudmessaging/c;->o:I

    const/16 v0, 0x1a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unknown state: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_52
    iput v4, p0, Lcom/google/android/gms/cloudmessaging/c;->o:I
    :try_end_54
    .catchall {:try_start_37 .. :try_end_54} :catchall_b8

    .line 7
    monitor-exit p0

    return-void

    :cond_56
    :try_start_56
    const-string v0, "MessengerIpcClient"

    .line 8
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_65

    const-string v0, "MessengerIpcClient"

    const-string v1, "Unbinding service"

    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_65
    iput v4, p0, Lcom/google/android/gms/cloudmessaging/c;->o:I

    .line 11
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->b()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/cloudmessaging/c;->t:Lcom/google/android/gms/cloudmessaging/zze;

    invoke-static {v1}, Lcom/google/android/gms/cloudmessaging/zze;->b(Lcom/google/android/gms/cloudmessaging/zze;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/common/stats/ConnectionTracker;->c(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 12
    new-instance v0, Lcom/google/android/gms/cloudmessaging/zzp;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/cloudmessaging/zzp;-><init>(ILjava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/google/android/gms/cloudmessaging/c;->r:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/cloudmessaging/m;

    .line 14
    invoke-virtual {p2, v0}, Lcom/google/android/gms/cloudmessaging/m;->b(Lcom/google/android/gms/cloudmessaging/zzp;)V

    goto :goto_7f

    .line 15
    :cond_8f
    iget-object p1, p0, Lcom/google/android/gms/cloudmessaging/c;->r:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    const/4 p1, 0x0

    .line 16
    :goto_95
    iget-object p2, p0, Lcom/google/android/gms/cloudmessaging/c;->s:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_ab

    .line 17
    iget-object p2, p0, Lcom/google/android/gms/cloudmessaging/c;->s:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/cloudmessaging/m;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/cloudmessaging/m;->b(Lcom/google/android/gms/cloudmessaging/zzp;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_95

    .line 18
    :cond_ab
    iget-object p1, p0, Lcom/google/android/gms/cloudmessaging/c;->s:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V
    :try_end_b0
    .catchall {:try_start_56 .. :try_end_b0} :catchall_b8

    .line 19
    monitor-exit p0

    return-void

    .line 20
    :cond_b2
    :try_start_b2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_b8
    .catchall {:try_start_b2 .. :try_end_b8} :catchall_b8

    :catchall_b8
    move-exception p1

    monitor-exit p0

    goto :goto_bc

    :goto_bb
    throw p1

    :goto_bc
    goto :goto_bb
.end method

.method final d(Landroid/os/Message;)Z
    .registers 6

    .line 1
    iget v0, p1, Landroid/os/Message;->arg1:I

    const-string v1, "MessengerIpcClient"

    const/4 v2, 0x3

    .line 2
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_23

    const-string v1, "MessengerIpcClient"

    const/16 v2, 0x29

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Received response to request: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_23
    monitor-enter p0

    .line 5
    :try_start_24
    iget-object v1, p0, Lcom/google/android/gms/cloudmessaging/c;->s:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/cloudmessaging/m;

    const/4 v2, 0x1

    if-nez v1, :cond_49

    const-string p1, "MessengerIpcClient"

    const/16 v1, 0x32

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Received response for unknown request: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    monitor-exit p0

    return v2

    .line 8
    :cond_49
    iget-object v3, p0, Lcom/google/android/gms/cloudmessaging/c;->s:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/cloudmessaging/c;->f()V

    .line 10
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_24 .. :try_end_52} :catchall_6f

    .line 11
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "unsupported"

    const/4 v3, 0x0

    .line 12
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 13
    new-instance p1, Lcom/google/android/gms/cloudmessaging/zzp;

    const/4 v0, 0x4

    const-string v3, "Not supported by GmsCore"

    invoke-direct {p1, v0, v3}, Lcom/google/android/gms/cloudmessaging/zzp;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/google/android/gms/cloudmessaging/m;->b(Lcom/google/android/gms/cloudmessaging/zzp;)V

    goto :goto_6e

    .line 14
    :cond_6b
    invoke-virtual {v1, p1}, Lcom/google/android/gms/cloudmessaging/m;->a(Landroid/os/Bundle;)V

    :goto_6e
    return v2

    :catchall_6f
    move-exception p1

    .line 15
    :try_start_70
    monitor-exit p0
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    throw p1
.end method

.method final declared-synchronized e(Lcom/google/android/gms/cloudmessaging/m;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/cloudmessaging/m<",
            "*>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/cloudmessaging/c;->o:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_41

    if-eq v0, v3, :cond_3a

    if-eq v0, v1, :cond_30

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2e

    const/4 p1, 0x4

    if-ne v0, p1, :cond_13

    goto :goto_2e

    .line 2
    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    iget v0, p0, Lcom/google/android/gms/cloudmessaging/c;->o:I

    const/16 v1, 0x1a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown state: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_97

    .line 3
    :cond_2e
    :goto_2e
    monitor-exit p0

    return v2

    .line 4
    :cond_30
    :try_start_30
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/c;->r:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/cloudmessaging/c;->a()V
    :try_end_38
    .catchall {:try_start_30 .. :try_end_38} :catchall_97

    .line 6
    monitor-exit p0

    return v3

    .line 7
    :cond_3a
    :try_start_3a
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/c;->r:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_3f
    .catchall {:try_start_3a .. :try_end_3f} :catchall_97

    .line 8
    monitor-exit p0

    return v3

    .line 9
    :cond_41
    :try_start_41
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/c;->r:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 10
    iget p1, p0, Lcom/google/android/gms/cloudmessaging/c;->o:I

    if-nez p1, :cond_4c

    const/4 p1, 0x1

    goto :goto_4d

    :cond_4c
    const/4 p1, 0x0

    :goto_4d
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->n(Z)V

    const-string p1, "MessengerIpcClient"

    .line 11
    invoke-static {p1, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_5f

    const-string p1, "MessengerIpcClient"

    const-string v0, "Starting bind to GmsCore"

    .line 12
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_5f
    iput v3, p0, Lcom/google/android/gms/cloudmessaging/c;->o:I

    .line 14
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.google.android.gms"

    .line 15
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->b()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/cloudmessaging/c;->t:Lcom/google/android/gms/cloudmessaging/zze;

    .line 17
    invoke-static {v1}, Lcom/google/android/gms/cloudmessaging/zze;->b(Lcom/google/android/gms/cloudmessaging/zze;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p0, v3}, Lcom/google/android/gms/common/stats/ConnectionTracker;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_83

    const-string p1, "Unable to bind to service"

    .line 18
    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/cloudmessaging/c;->c(ILjava/lang/String;)V

    goto :goto_95

    .line 19
    :cond_83
    iget-object p1, p0, Lcom/google/android/gms/cloudmessaging/c;->t:Lcom/google/android/gms/cloudmessaging/zze;

    .line 20
    invoke-static {p1}, Lcom/google/android/gms/cloudmessaging/zze;->g(Lcom/google/android/gms/cloudmessaging/zze;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/cloudmessaging/e;

    invoke-direct {v0, p0}, Lcom/google/android/gms/cloudmessaging/e;-><init>(Lcom/google/android/gms/cloudmessaging/c;)V

    const-wide/16 v1, 0x1e

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, v2, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_95
    .catchall {:try_start_41 .. :try_end_95} :catchall_97

    .line 21
    :goto_95
    monitor-exit p0

    return v3

    :catchall_97
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized f()V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/cloudmessaging/c;->o:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_35

    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/c;->r:Ljava/util/Queue;

    .line 2
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/c;->s:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_35

    const-string v0, "MessengerIpcClient"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "MessengerIpcClient"

    const-string v1, "Finished handling requests, unbinding"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    const/4 v0, 0x3

    .line 6
    iput v0, p0, Lcom/google/android/gms/cloudmessaging/c;->o:I

    .line 7
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->b()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/cloudmessaging/c;->t:Lcom/google/android/gms/cloudmessaging/zze;

    invoke-static {v1}, Lcom/google/android/gms/cloudmessaging/zze;->b(Lcom/google/android/gms/cloudmessaging/zze;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/common/stats/ConnectionTracker;->c(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_37

    .line 8
    :cond_35
    monitor-exit p0

    return-void

    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized g()V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/cloudmessaging/c;->o:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    const-string v0, "Timed out while binding"

    .line 2
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/cloudmessaging/c;->c(ILjava/lang/String;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 3
    :cond_b
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    const-string p1, "MessengerIpcClient"

    const/4 v0, 0x2

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "Service connected"

    .line 2
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_e
    iget-object p1, p0, Lcom/google/android/gms/cloudmessaging/c;->t:Lcom/google/android/gms/cloudmessaging/zze;

    invoke-static {p1}, Lcom/google/android/gms/cloudmessaging/zze;->g(Lcom/google/android/gms/cloudmessaging/zze;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/cloudmessaging/h;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/cloudmessaging/h;-><init>(Lcom/google/android/gms/cloudmessaging/c;Landroid/os/IBinder;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    const-string p1, "MessengerIpcClient"

    const/4 v0, 0x2

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "Service disconnected"

    .line 2
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_e
    iget-object p1, p0, Lcom/google/android/gms/cloudmessaging/c;->t:Lcom/google/android/gms/cloudmessaging/zze;

    invoke-static {p1}, Lcom/google/android/gms/cloudmessaging/zze;->g(Lcom/google/android/gms/cloudmessaging/zze;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/cloudmessaging/j;

    invoke-direct {v0, p0}, Lcom/google/android/gms/cloudmessaging/j;-><init>(Lcom/google/android/gms/cloudmessaging/c;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.google.android.gms.cloudmessaging.e (com.google.android.gms.cloudmessaging.e)
.class final synthetic Lcom/google/android/gms/cloudmessaging/e;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cloud-messaging@@16.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final o:Lcom/google/android/gms/cloudmessaging/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cloudmessaging/c;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/e;->o:Lcom/google/android/gms/cloudmessaging/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/e;->o:Lcom/google/android/gms/cloudmessaging/c;

    invoke-virtual {v0}, Lcom/google/android/gms/cloudmessaging/c;->g()V

    return-void
.end method

###### Class com.google.android.gms.cloudmessaging.f (com.google.android.gms.cloudmessaging.f)
.class final synthetic Lcom/google/android/gms/cloudmessaging/f;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cloud-messaging@@16.0.0"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final o:Lcom/google/android/gms/cloudmessaging/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cloudmessaging/c;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/f;->o:Lcom/google/android/gms/cloudmessaging/c;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/f;->o:Lcom/google/android/gms/cloudmessaging/c;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cloudmessaging/c;->d(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method

###### Class com.google.android.gms.cloudmessaging.g (com.google.android.gms.cloudmessaging.g)
.class final synthetic Lcom/google/android/gms/cloudmessaging/g;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cloud-messaging@@16.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final o:Lcom/google/android/gms/cloudmessaging/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cloudmessaging/c;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/g;->o:Lcom/google/android/gms/cloudmessaging/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/g;->o:Lcom/google/android/gms/cloudmessaging/c;

    .line 2
    :goto_2
    monitor-enter v0

    .line 3
    :try_start_3
    iget v1, v0, Lcom/google/android/gms/cloudmessaging/c;->o:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_a

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_a
    iget-object v1, v0, Lcom/google/android/gms/cloudmessaging/c;->r:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/cloudmessaging/c;->f()V

    .line 7
    monitor-exit v0

    return-void

    .line 8
    :cond_17
    iget-object v1, v0, Lcom/google/android/gms/cloudmessaging/c;->r:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/cloudmessaging/m;

    .line 9
    iget-object v3, v0, Lcom/google/android/gms/cloudmessaging/c;->s:Landroid/util/SparseArray;

    iget v4, v1, Lcom/google/android/gms/cloudmessaging/m;->a:I

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 10
    iget-object v3, v0, Lcom/google/android/gms/cloudmessaging/c;->t:Lcom/google/android/gms/cloudmessaging/zze;

    .line 11
    invoke-static {v3}, Lcom/google/android/gms/cloudmessaging/zze;->g(Lcom/google/android/gms/cloudmessaging/zze;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/cloudmessaging/i;

    invoke-direct {v4, v0, v1}, Lcom/google/android/gms/cloudmessaging/i;-><init>(Lcom/google/android/gms/cloudmessaging/c;Lcom/google/android/gms/cloudmessaging/m;)V

    const-wide/16 v5, 0x1e

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v6, v7}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 12
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_aa

    const-string v3, "MessengerIpcClient"

    const/4 v4, 0x3

    .line 13
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_62

    const-string v3, "MessengerIpcClient"

    .line 14
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Sending "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    :cond_62
    iget-object v3, v0, Lcom/google/android/gms/cloudmessaging/c;->t:Lcom/google/android/gms/cloudmessaging/zze;

    invoke-static {v3}, Lcom/google/android/gms/cloudmessaging/zze;->b(Lcom/google/android/gms/cloudmessaging/zze;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/cloudmessaging/c;->p:Landroid/os/Messenger;

    .line 16
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 17
    iget v6, v1, Lcom/google/android/gms/cloudmessaging/m;->c:I

    iput v6, v5, Landroid/os/Message;->what:I

    .line 18
    iget v6, v1, Lcom/google/android/gms/cloudmessaging/m;->a:I

    iput v6, v5, Landroid/os/Message;->arg1:I

    .line 19
    iput-object v4, v5, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 20
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v6, "oneWay"

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/cloudmessaging/m;->d()Z

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v6, "pkg"

    .line 22
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "data"

    .line 23
    iget-object v1, v1, Lcom/google/android/gms/cloudmessaging/m;->d:Landroid/os/Bundle;

    invoke-virtual {v4, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {v5, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 25
    :try_start_99
    iget-object v1, v0, Lcom/google/android/gms/cloudmessaging/c;->q:Lcom/google/android/gms/cloudmessaging/l;

    invoke-virtual {v1, v5}, Lcom/google/android/gms/cloudmessaging/l;->a(Landroid/os/Message;)V
    :try_end_9e
    .catch Landroid/os/RemoteException; {:try_start_99 .. :try_end_9e} :catch_a0

    goto/16 :goto_2

    :catch_a0
    move-exception v1

    .line 26
    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/cloudmessaging/c;->c(ILjava/lang/String;)V

    goto/16 :goto_2

    :catchall_aa
    move-exception v1

    .line 27
    :try_start_ab
    monitor-exit v0
    :try_end_ac
    .catchall {:try_start_ab .. :try_end_ac} :catchall_aa

    goto :goto_ae

    :goto_ad
    throw v1

    :goto_ae
    goto :goto_ad
.end method

###### Class com.google.android.gms.cloudmessaging.i (com.google.android.gms.cloudmessaging.i)
.class final synthetic Lcom/google/android/gms/cloudmessaging/i;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cloud-messaging@@16.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final o:Lcom/google/android/gms/cloudmessaging/c;

.field private final p:Lcom/google/android/gms/cloudmessaging/m;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cloudmessaging/c;Lcom/google/android/gms/cloudmessaging/m;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/i;->o:Lcom/google/android/gms/cloudmessaging/c;

    iput-object p2, p0, Lcom/google/android/gms/cloudmessaging/i;->p:Lcom/google/android/gms/cloudmessaging/m;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/i;->o:Lcom/google/android/gms/cloudmessaging/c;

    iget-object v1, p0, Lcom/google/android/gms/cloudmessaging/i;->p:Lcom/google/android/gms/cloudmessaging/m;

    .line 2
    iget v1, v1, Lcom/google/android/gms/cloudmessaging/m;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cloudmessaging/c;->b(I)V

    return-void
.end method

###### Class com.google.android.gms.cloudmessaging.h (com.google.android.gms.cloudmessaging.h)
.class final synthetic Lcom/google/android/gms/cloudmessaging/h;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cloud-messaging@@16.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final o:Lcom/google/android/gms/cloudmessaging/c;

.field private final p:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cloudmessaging/c;Landroid/os/IBinder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/h;->o:Lcom/google/android/gms/cloudmessaging/c;

    iput-object p2, p0, Lcom/google/android/gms/cloudmessaging/h;->p:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/h;->o:Lcom/google/android/gms/cloudmessaging/c;

    iget-object v1, p0, Lcom/google/android/gms/cloudmessaging/h;->p:Landroid/os/IBinder;

    .line 2
    monitor-enter v0

    const/4 v2, 0x0

    if-nez v1, :cond_f

    :try_start_8
    const-string v1, "Null service connection"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/cloudmessaging/c;->c(ILjava/lang/String;)V

    .line 4
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_1e

    return-void

    .line 5
    :cond_f
    :try_start_f
    new-instance v3, Lcom/google/android/gms/cloudmessaging/l;

    invoke-direct {v3, v1}, Lcom/google/android/gms/cloudmessaging/l;-><init>(Landroid/os/IBinder;)V

    iput-object v3, v0, Lcom/google/android/gms/cloudmessaging/c;->q:Lcom/google/android/gms/cloudmessaging/l;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_16} :catch_20
    .catchall {:try_start_f .. :try_end_16} :catchall_1e

    const/4 v1, 0x2

    .line 6
    :try_start_17
    iput v1, v0, Lcom/google/android/gms/cloudmessaging/c;->o:I

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/cloudmessaging/c;->a()V

    .line 8
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception v1

    goto :goto_2a

    :catch_20
    move-exception v1

    .line 9
    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/cloudmessaging/c;->c(ILjava/lang/String;)V

    .line 10
    monitor-exit v0

    return-void

    .line 11
    :goto_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_17 .. :try_end_2b} :catchall_1e

    throw v1
.end method

###### Class com.google.android.gms.cloudmessaging.j (com.google.android.gms.cloudmessaging.j)
.class final synthetic Lcom/google/android/gms/cloudmessaging/j;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cloud-messaging@@16.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final o:Lcom/google/android/gms/cloudmessaging/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cloudmessaging/c;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/j;->o:Lcom/google/android/gms/cloudmessaging/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/j;->o:Lcom/google/android/gms/cloudmessaging/c;

    const/4 v1, 0x2

    const-string v2, "Service disconnected"

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cloudmessaging/c;->c(ILjava/lang/String;)V

    return-void
.end method
