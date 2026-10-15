###### Class v4.m (v4.m)
.class public final Lv4/m;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lv4/a;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lv4/b;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ly4/p<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/Object;

.field private g:Z

.field private final h:Landroid/content/Intent;

.field private final i:Lv4/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv4/h<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final j:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lv4/g;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Landroid/os/IBinder$DeathRecipient;

.field private final l:Ljava/util/concurrent/atomic/AtomicInteger;

.field private m:Landroid/content/ServiceConnection;

.field private n:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lv4/m;->o:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lv4/a;Ljava/lang/String;Landroid/content/Intent;Lv4/h;Lv4/g;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lv4/a;",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "Lv4/h<",
            "TT;>;",
            "Lv4/g;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p6, Ljava/util/ArrayList;

    invoke-direct {p6}, Ljava/util/ArrayList;-><init>()V

    iput-object p6, p0, Lv4/m;->d:Ljava/util/List;

    new-instance p6, Ljava/util/HashSet;

    .line 2
    invoke-direct {p6}, Ljava/util/HashSet;-><init>()V

    iput-object p6, p0, Lv4/m;->e:Ljava/util/Set;

    new-instance p6, Ljava/lang/Object;

    invoke-direct {p6}, Ljava/lang/Object;-><init>()V

    iput-object p6, p0, Lv4/m;->f:Ljava/lang/Object;

    new-instance p6, Lv4/c;

    .line 3
    invoke-direct {p6, p0}, Lv4/c;-><init>(Lv4/m;)V

    iput-object p6, p0, Lv4/m;->k:Landroid/os/IBinder$DeathRecipient;

    new-instance p6, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    .line 4
    invoke-direct {p6, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p6, p0, Lv4/m;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lv4/m;->a:Landroid/content/Context;

    iput-object p2, p0, Lv4/m;->b:Lv4/a;

    iput-object p3, p0, Lv4/m;->c:Ljava/lang/String;

    iput-object p4, p0, Lv4/m;->h:Landroid/content/Intent;

    iput-object p5, p0, Lv4/m;->i:Lv4/h;

    new-instance p1, Ljava/lang/ref/WeakReference;

    const/4 p2, 0x0

    .line 5
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lv4/m;->j:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static bridge synthetic a(Lv4/m;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lv4/m;->a:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic b(Lv4/m;)Landroid/content/ServiceConnection;
    .registers 1

    iget-object p0, p0, Lv4/m;->m:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static bridge synthetic d(Lv4/m;)Landroid/os/IInterface;
    .registers 1

    iget-object p0, p0, Lv4/m;->n:Landroid/os/IInterface;

    return-object p0
.end method

.method static bridge synthetic f(Lv4/m;)Lv4/a;
    .registers 1

    iget-object p0, p0, Lv4/m;->b:Lv4/a;

    return-object p0
.end method

.method static bridge synthetic g(Lv4/m;)Lv4/h;
    .registers 1

    iget-object p0, p0, Lv4/m;->i:Lv4/h;

    return-object p0
.end method

.method static bridge synthetic h(Lv4/m;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lv4/m;->d:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic i(Lv4/m;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lv4/m;->b:Lv4/a;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "reportBinderDeath"

    invoke-virtual {v0, v3, v2}, Lv4/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lv4/m;->j:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv4/g;

    if-eqz v0, :cond_21

    iget-object v2, p0, Lv4/m;->b:Lv4/a;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "calling onBinderDied"

    .line 3
    invoke-virtual {v2, v3, v1}, Lv4/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4
    invoke-interface {v0}, Lv4/g;->zza()V

    goto :goto_4e

    .line 5
    :cond_21
    iget-object v0, p0, Lv4/m;->b:Lv4/a;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lv4/m;->c:Ljava/lang/String;

    aput-object v3, v2, v1

    const-string v1, "%s : Binder has died."

    .line 6
    invoke-virtual {v0, v1, v2}, Lv4/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lv4/m;->d:Ljava/util/List;

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv4/b;

    .line 8
    invoke-direct {p0}, Lv4/m;->t()Landroid/os/RemoteException;

    move-result-object v2

    invoke-virtual {v1, v2}, Lv4/b;->c(Ljava/lang/Exception;)V

    goto :goto_35

    :cond_49
    iget-object v0, p0, Lv4/m;->d:Ljava/util/List;

    .line 9
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 10
    :goto_4e
    invoke-direct {p0}, Lv4/m;->u()V

    return-void
.end method

.method static bridge synthetic j(Lv4/m;Landroid/content/ServiceConnection;)V
    .registers 2

    const/4 p1, 0x0

    iput-object p1, p0, Lv4/m;->m:Landroid/content/ServiceConnection;

    return-void
.end method

.method static bridge synthetic k(Lv4/m;Z)V
    .registers 2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lv4/m;->g:Z

    return-void
.end method

.method static bridge synthetic l(Lv4/m;Landroid/os/IInterface;)V
    .registers 2

    iput-object p1, p0, Lv4/m;->n:Landroid/os/IInterface;

    return-void
.end method

.method static bridge synthetic m(Lv4/m;)V
    .registers 1

    invoke-direct {p0}, Lv4/m;->u()V

    return-void
.end method

.method static bridge synthetic n(Lv4/m;Lv4/b;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lv4/m;->n:Landroid/os/IInterface;

    const/4 v1, 0x0

    if-nez v0, :cond_58

    iget-boolean v0, p0, Lv4/m;->g:Z

    if-nez v0, :cond_58

    iget-object v0, p0, Lv4/m;->b:Lv4/a;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Initiate binding to the service."

    invoke-virtual {v0, v3, v2}, Lv4/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lv4/m;->d:Ljava/util/List;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lv4/l;

    const/4 v0, 0x0

    .line 3
    invoke-direct {p1, p0, v0}, Lv4/l;-><init>(Lv4/m;Lv4/k;)V

    iput-object p1, p0, Lv4/m;->m:Landroid/content/ServiceConnection;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lv4/m;->g:Z

    iget-object v2, p0, Lv4/m;->a:Landroid/content/Context;

    iget-object v3, p0, Lv4/m;->h:Landroid/content/Intent;

    .line 4
    invoke-virtual {v2, v3, p1, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_57

    iget-object p1, p0, Lv4/m;->b:Lv4/a;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "Failed to bind to the service."

    .line 5
    invoke-virtual {p1, v2, v0}, Lv4/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    iput-boolean v1, p0, Lv4/m;->g:Z

    iget-object p1, p0, Lv4/m;->d:Ljava/util/List;

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv4/b;

    new-instance v1, Lv4/n;

    .line 7
    invoke-direct {v1}, Lv4/n;-><init>()V

    invoke-virtual {v0, v1}, Lv4/b;->c(Ljava/lang/Exception;)V

    goto :goto_3d

    :cond_52
    iget-object p0, p0, Lv4/m;->d:Ljava/util/List;

    .line 8
    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_57
    return-void

    :cond_58
    iget-boolean v0, p0, Lv4/m;->g:Z

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lv4/m;->b:Lv4/a;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Waiting to bind to the service."

    .line 9
    invoke-virtual {v0, v2, v1}, Lv4/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object p0, p0, Lv4/m;->d:Ljava/util/List;

    .line 10
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 11
    :cond_6b
    invoke-virtual {p1}, Lv4/b;->run()V

    return-void
.end method

.method static bridge synthetic o(Lv4/m;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lv4/m;->b:Lv4/a;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "linkToDeath"

    invoke-virtual {v0, v3, v2}, Lv4/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    :try_start_a
    iget-object v0, p0, Lv4/m;->n:Landroid/os/IInterface;

    .line 2
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lv4/m;->k:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception v0

    iget-object p0, p0, Lv4/m;->b:Lv4/a;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "linkToDeath failed"

    .line 3
    invoke-virtual {p0, v0, v2, v1}, Lv4/a;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method static bridge synthetic p(Lv4/m;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lv4/m;->b:Lv4/a;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "unlinkToDeath"

    invoke-virtual {v0, v3, v2}, Lv4/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lv4/m;->n:Landroid/os/IInterface;

    .line 2
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object p0, p0, Lv4/m;->k:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method

.method private final t()Landroid/os/RemoteException;
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-ge v0, v1, :cond_c

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    goto :goto_1d

    .line 2
    :cond_c
    new-instance v0, Landroid/os/RemoteException;

    iget-object v1, p0, Lv4/m;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " : Binder has died."

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    :goto_1d
    return-object v0
.end method

.method private final u()V
    .registers 5

    .line 1
    iget-object v0, p0, Lv4/m;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lv4/m;->e:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly4/p;

    .line 2
    invoke-direct {p0}, Lv4/m;->t()Landroid/os/RemoteException;

    move-result-object v3

    invoke-virtual {v2, v3}, Ly4/p;->d(Ljava/lang/Exception;)Z

    goto :goto_9

    :cond_1d
    iget-object v1, p0, Lv4/m;->e:Ljava/util/Set;

    .line 3
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    goto :goto_28

    :goto_27
    throw v1

    :goto_28
    goto :goto_27
.end method


# virtual methods
.method public final c()Landroid/os/Handler;
    .registers 5

    .line 1
    sget-object v0, Lv4/m;->o:Ljava/util/Map;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lv4/m;->c:Ljava/lang/String;

    .line 2
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    new-instance v1, Landroid/os/HandlerThread;

    iget-object v2, p0, Lv4/m;->c:Ljava/lang/String;

    const/16 v3, 0xa

    .line 3
    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    iget-object v2, p0, Lv4/m;->c:Ljava/lang/String;

    new-instance v3, Landroid/os/Handler;

    .line 5
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    iget-object v1, p0, Lv4/m;->c:Ljava/lang/String;

    .line 6
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    :catchall_2f
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public final e()Landroid/os/IInterface;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lv4/m;->n:Landroid/os/IInterface;

    return-object v0
.end method

.method public final q(Lv4/b;Ly4/p;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv4/b;",
            "Ly4/p<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv4/m;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lv4/m;->e:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Ly4/p;->a()Ly4/e;

    move-result-object v1

    new-instance v2, Lv4/d;

    .line 2
    invoke-direct {v2, p0, p2}, Lv4/d;-><init>(Lv4/m;Ly4/p;)V

    .line 3
    invoke-virtual {v1, v2}, Ly4/e;->a(Ly4/a;)Ly4/e;

    .line 4
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_3f

    iget-object p2, p0, Lv4/m;->f:Ljava/lang/Object;

    monitor-enter p2

    :try_start_18
    iget-object v0, p0, Lv4/m;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-lez v0, :cond_2a

    iget-object v0, p0, Lv4/m;->b:Lv4/a;

    const-string v1, "Already connected to the service."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 6
    invoke-virtual {v0, v1, v2}, Lv4/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 7
    :cond_2a
    monitor-exit p2
    :try_end_2b
    .catchall {:try_start_18 .. :try_end_2b} :catchall_3c

    new-instance p2, Lv4/e;

    invoke-virtual {p1}, Lv4/b;->b()Ly4/p;

    move-result-object v0

    .line 8
    invoke-direct {p2, p0, v0, p1}, Lv4/e;-><init>(Lv4/m;Ly4/p;Lv4/b;)V

    .line 9
    invoke-virtual {p0}, Lv4/m;->c()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_3c
    move-exception p1

    .line 10
    :try_start_3d
    monitor-exit p2
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw p1

    :catchall_3f
    move-exception p1

    .line 11
    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw p1
.end method

.method final synthetic r(Ly4/p;Ly4/e;)V
    .registers 4

    .line 1
    iget-object p2, p0, Lv4/m;->f:Ljava/lang/Object;

    monitor-enter p2

    :try_start_3
    iget-object v0, p0, Lv4/m;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2
    monitor-exit p2

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p2
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public final s(Ly4/p;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly4/p<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv4/m;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lv4/m;->e:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_31

    iget-object p1, p0, Lv4/m;->f:Ljava/lang/Object;

    monitor-enter p1

    :try_start_c
    iget-object v0, p0, Lv4/m;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-lez v0, :cond_20

    iget-object v0, p0, Lv4/m;->b:Lv4/a;

    const-string v1, "Leaving the connection open for other ongoing calls."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 4
    invoke-virtual {v0, v1, v2}, Lv4/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 5
    monitor-exit p1

    return-void

    .line 6
    :cond_20
    monitor-exit p1
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_2e

    new-instance p1, Lv4/f;

    .line 7
    invoke-direct {p1, p0}, Lv4/f;-><init>(Lv4/m;)V

    .line 8
    invoke-virtual {p0}, Lv4/m;->c()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_2e
    move-exception v0

    .line 9
    :try_start_2f
    monitor-exit p1
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v0

    :catchall_31
    move-exception p1

    .line 10
    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw p1
.end method

###### Class v4.c (v4.c)
.class public final synthetic Lv4/c;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic a:Lv4/m;


# direct methods
.method public synthetic constructor <init>(Lv4/m;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv4/c;->a:Lv4/m;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 2

    iget-object v0, p0, Lv4/c;->a:Lv4/m;

    invoke-static {v0}, Lv4/m;->i(Lv4/m;)V

    return-void
.end method

###### Class v4.d (v4.d)
.class public final synthetic Lv4/d;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Ly4/a;


# instance fields
.field public final synthetic a:Lv4/m;

.field public final synthetic b:Ly4/p;


# direct methods
.method public synthetic constructor <init>(Lv4/m;Ly4/p;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv4/d;->a:Lv4/m;

    iput-object p2, p0, Lv4/d;->b:Ly4/p;

    return-void
.end method


# virtual methods
.method public final a(Ly4/e;)V
    .registers 4

    iget-object v0, p0, Lv4/d;->a:Lv4/m;

    iget-object v1, p0, Lv4/d;->b:Ly4/p;

    invoke-virtual {v0, v1, p1}, Lv4/m;->r(Ly4/p;Ly4/e;)V

    return-void
.end method
