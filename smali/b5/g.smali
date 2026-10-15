###### Class b5.g (b5.g)
.class public Lb5/g;
.super Ljava/lang/Object;
.source "FirebaseApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb5/g$b;,
        Lb5/g$c;,
        Lb5/g$a;
    }
.end annotation


# static fields
.field private static final k:Ljava/lang/Object;

.field static final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lb5/g;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Lb5/q;

.field private final d:Lk5/o;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final g:Lk5/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk5/x<",
            "Lq6/a;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lk6/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk6/b<",
            "Li6/f;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb5/g$a;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb5/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lb5/g;->k:Ljava/lang/Object;

    .line 2
    new-instance v0, Lo/a;

    invoke-direct {v0}, Lo/a;-><init>()V

    sput-object v0, Lb5/g;->l:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Lb5/q;)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lb5/g;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lb5/g;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lb5/g;->i:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lb5/g;->j:Ljava/util/List;

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lb5/g;->a:Landroid/content/Context;

    .line 7
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lb5/g;->b:Ljava/lang/String;

    .line 8
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lb5/q;

    iput-object p2, p0, Lb5/g;->c:Lb5/q;

    .line 9
    invoke-static {}, Lcom/google/firebase/provider/FirebaseInitProvider;->b()Lb5/s;

    move-result-object p2

    const-string v0, "Firebase"

    .line 10
    invoke-static {v0}, La7/c;->b(Ljava/lang/String;)V

    const-string v0, "ComponentDiscovery"

    .line 11
    invoke-static {v0}, La7/c;->b(Ljava/lang/String;)V

    .line 12
    const-class v0, Lcom/google/firebase/components/ComponentDiscoveryService;

    .line 13
    invoke-static {p1, v0}, Lk5/g;->c(Landroid/content/Context;Ljava/lang/Class;)Lk5/g;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lk5/g;->b()Ljava/util/List;

    move-result-object v0

    .line 15
    invoke-static {}, La7/c;->a()V

    const-string v2, "Runtime"

    .line 16
    invoke-static {v2}, La7/c;->b(Ljava/lang/String;)V

    .line 17
    sget-object v2, Ll5/k;->o:Ll5/k;

    .line 18
    invoke-static {v2}, Lk5/o;->m(Ljava/util/concurrent/Executor;)Lk5/o$b;

    move-result-object v2

    .line 19
    invoke-virtual {v2, v0}, Lk5/o$b;->d(Ljava/util/Collection;)Lk5/o$b;

    move-result-object v0

    new-instance v2, Lcom/google/firebase/FirebaseCommonRegistrar;

    invoke-direct {v2}, Lcom/google/firebase/FirebaseCommonRegistrar;-><init>()V

    .line 20
    invoke-virtual {v0, v2}, Lk5/o$b;->c(Lcom/google/firebase/components/ComponentRegistrar;)Lk5/o$b;

    move-result-object v0

    new-instance v2, Lcom/google/firebase/concurrent/ExecutorsRegistrar;

    invoke-direct {v2}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;-><init>()V

    .line 21
    invoke-virtual {v0, v2}, Lk5/o$b;->c(Lcom/google/firebase/components/ComponentRegistrar;)Lk5/o$b;

    move-result-object v0

    const-class v2, Landroid/content/Context;

    new-array v3, v1, [Ljava/lang/Class;

    .line 22
    invoke-static {p1, v2, v3}, Lk5/c;->s(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lk5/c;

    move-result-object v2

    invoke-virtual {v0, v2}, Lk5/o$b;->b(Lk5/c;)Lk5/o$b;

    move-result-object v0

    const-class v2, Lb5/g;

    new-array v3, v1, [Ljava/lang/Class;

    .line 23
    invoke-static {p0, v2, v3}, Lk5/c;->s(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lk5/c;

    move-result-object v2

    invoke-virtual {v0, v2}, Lk5/o$b;->b(Lk5/c;)Lk5/o$b;

    move-result-object v0

    const-class v2, Lb5/q;

    new-array v3, v1, [Ljava/lang/Class;

    .line 24
    invoke-static {p3, v2, v3}, Lk5/c;->s(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lk5/c;

    move-result-object p3

    invoke-virtual {v0, p3}, Lk5/o$b;->b(Lk5/c;)Lk5/o$b;

    move-result-object p3

    new-instance v0, La7/b;

    invoke-direct {v0}, La7/b;-><init>()V

    .line 25
    invoke-virtual {p3, v0}, Lk5/o$b;->g(Lk5/j;)Lk5/o$b;

    move-result-object p3

    .line 26
    invoke-static {p1}, Landroidx/core/os/n;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 27
    invoke-static {}, Lcom/google/firebase/provider/FirebaseInitProvider;->c()Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 28
    const-class v0, Lb5/s;

    new-array v1, v1, [Ljava/lang/Class;

    invoke-static {p2, v0, v1}, Lk5/c;->s(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lk5/c;

    move-result-object p2

    invoke-virtual {p3, p2}, Lk5/o$b;->b(Lk5/c;)Lk5/o$b;

    .line 29
    :cond_b6
    invoke-virtual {p3}, Lk5/o$b;->e()Lk5/o;

    move-result-object p2

    iput-object p2, p0, Lb5/g;->d:Lk5/o;

    .line 30
    invoke-static {}, La7/c;->a()V

    .line 31
    new-instance p3, Lk5/x;

    new-instance v0, Lb5/f;

    invoke-direct {v0, p0, p1}, Lb5/f;-><init>(Lb5/g;Landroid/content/Context;)V

    invoke-direct {p3, v0}, Lk5/x;-><init>(Lk6/b;)V

    iput-object p3, p0, Lb5/g;->g:Lk5/x;

    .line 32
    const-class p1, Li6/f;

    invoke-virtual {p2, p1}, Lk5/o;->c(Ljava/lang/Class;)Lk6/b;

    move-result-object p1

    iput-object p1, p0, Lb5/g;->h:Lk6/b;

    .line 33
    new-instance p1, Lb5/e;

    invoke-direct {p1, p0}, Lb5/e;-><init>(Lb5/g;)V

    invoke-virtual {p0, p1}, Lb5/g;->g(Lb5/g$a;)V

    .line 34
    invoke-static {}, La7/c;->a()V

    return-void
.end method

.method private A(Z)V
    .registers 4

    const-string v0, "FirebaseApp"

    const-string v1, "Notifying background state change listeners."

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lb5/g;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb5/g$a;

    .line 3
    invoke-interface {v1, p1}, Lb5/g$a;->a(Z)V

    goto :goto_d

    :cond_1d
    return-void
.end method

.method public static synthetic a(Lb5/g;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lb5/g;->y(Z)V

    return-void
.end method

.method public static synthetic b(Lb5/g;Landroid/content/Context;)Lq6/a;
    .registers 2

    invoke-direct {p0, p1}, Lb5/g;->x(Landroid/content/Context;)Lq6/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c()Ljava/lang/Object;
    .registers 1

    .line 1
    sget-object v0, Lb5/g;->k:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic d(Lb5/g;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lb5/g;->r()V

    return-void
.end method

.method static synthetic e(Lb5/g;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 1
    iget-object p0, p0, Lb5/g;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic f(Lb5/g;Z)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lb5/g;->A(Z)V

    return-void
.end method

.method private i()V
    .registers 3

    .line 1
    iget-object v0, p0, Lb5/g;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "FirebaseApp was deleted"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->o(ZLjava/lang/Object;)V

    return-void
.end method

.method private static k()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v1, Lb5/g;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_8
    sget-object v2, Lb5/g;->l:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb5/g;

    .line 4
    invoke-virtual {v3}, Lb5/g;->o()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 5
    :cond_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_2b

    .line 6
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0

    :catchall_2b
    move-exception v0

    .line 7
    :try_start_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    goto :goto_2f

    :goto_2e
    throw v0

    :goto_2f
    goto :goto_2e
.end method

.method public static m()Lb5/g;
    .registers 4

    .line 1
    sget-object v0, Lb5/g;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    sget-object v1, Lb5/g;->l:Ljava/util/Map;

    const-string v2, "[DEFAULT]"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb5/g;

    if-eqz v1, :cond_1c

    .line 3
    iget-object v2, v1, Lb5/g;->h:Lk6/b;

    invoke-interface {v2}, Lk6/b;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li6/f;

    invoke-virtual {v2}, Li6/f;->l()Lcom/google/android/gms/tasks/Task;

    .line 4
    monitor-exit v0

    return-object v1

    .line 5
    :cond_1c
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Default FirebaseApp is not initialized in this process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {}, Lcom/google/android/gms/common/util/ProcessUtils;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Make sure to call FirebaseApp.initializeApp(Context) first."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_3c
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method public static n(Ljava/lang/String;)Lb5/g;
    .registers 6

    .line 1
    sget-object v0, Lb5/g;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    sget-object v1, Lb5/g;->l:Ljava/util/Map;

    invoke-static {p0}, Lb5/g;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb5/g;

    if-eqz v1, :cond_1e

    .line 3
    iget-object p0, v1, Lb5/g;->h:Lk6/b;

    invoke-interface {p0}, Lk6/b;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li6/f;

    invoke-virtual {p0}, Li6/f;->l()Lcom/google/android/gms/tasks/Task;

    .line 4
    monitor-exit v0

    return-object v1

    .line 5
    :cond_1e
    invoke-static {}, Lb5/g;->k()Ljava/util/List;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2b

    const-string v1, ""

    goto :goto_42

    .line 7
    :cond_2b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Available app names: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    .line 8
    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_42
    const-string v2, "FirebaseApp with name %s doesn\'t exist. %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 p0, 0x1

    aput-object v1, v3, p0

    .line 9
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 10
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_57
    move-exception p0

    .line 11
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_3 .. :try_end_59} :catchall_57

    throw p0
.end method

.method private r()V
    .registers 4

    .line 1
    iget-object v0, p0, Lb5/g;->a:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/os/n;->a(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "FirebaseApp"

    if-eqz v0, :cond_2a

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device in Direct Boot Mode: postponing initialization of Firebase APIs for app "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Lb5/g;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lb5/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lb5/g$c;->a(Landroid/content/Context;)V

    goto :goto_56

    .line 6
    :cond_2a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device unlocked: initializing all Firebase APIs for app "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb5/g;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v0, p0, Lb5/g;->d:Lk5/o;

    invoke-virtual {p0}, Lb5/g;->w()Z

    move-result v1

    invoke-virtual {v0, v1}, Lk5/o;->p(Z)V

    .line 8
    iget-object v0, p0, Lb5/g;->h:Lk6/b;

    invoke-interface {v0}, Lk6/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li6/f;

    invoke-virtual {v0}, Li6/f;->l()Lcom/google/android/gms/tasks/Task;

    :goto_56
    return-void
.end method

.method public static s(Landroid/content/Context;)Lb5/g;
    .registers 4

    .line 1
    sget-object v0, Lb5/g;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    sget-object v1, Lb5/g;->l:Ljava/util/Map;

    const-string v2, "[DEFAULT]"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 3
    invoke-static {}, Lb5/g;->m()Lb5/g;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 4
    :cond_13
    invoke-static {p0}, Lb5/q;->a(Landroid/content/Context;)Lb5/q;

    move-result-object v1

    if-nez v1, :cond_23

    const-string p0, "FirebaseApp"

    const-string v1, "Default FirebaseApp failed to initialize because no default options were found. This usually means that com.google.gms:google-services was not applied to your gradle project."

    .line 5
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 6
    monitor-exit v0

    return-object p0

    .line 7
    :cond_23
    invoke-static {p0, v1}, Lb5/g;->t(Landroid/content/Context;Lb5/q;)Lb5/g;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_29
    move-exception p0

    .line 8
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw p0
.end method

.method public static t(Landroid/content/Context;Lb5/q;)Lb5/g;
    .registers 3

    const-string v0, "[DEFAULT]"

    .line 1
    invoke-static {p0, p1, v0}, Lb5/g;->u(Landroid/content/Context;Lb5/q;Ljava/lang/String;)Lb5/g;

    move-result-object p0

    return-object p0
.end method

.method public static u(Landroid/content/Context;Lb5/q;Ljava/lang/String;)Lb5/g;
    .registers 8

    .line 1
    invoke-static {p0}, Lb5/g$b;->b(Landroid/content/Context;)V

    .line 2
    invoke-static {p2}, Lb5/g;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_e

    goto :goto_12

    .line 4
    :cond_e
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 5
    :goto_12
    sget-object v0, Lb5/g;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_15
    sget-object v1, Lb5/g;->l:Ljava/util/Map;

    .line 7
    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    const/4 v2, 0x1

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    :goto_20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FirebaseApp name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " already exists!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->o(ZLjava/lang/Object;)V

    const-string v2, "Application context cannot be null."

    .line 9
    invoke-static {p0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v2, Lb5/g;

    invoke-direct {v2, p0, p2, p1}, Lb5/g;-><init>(Landroid/content/Context;Ljava/lang/String;Lb5/q;)V

    .line 11
    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_15 .. :try_end_47} :catchall_4b

    .line 13
    invoke-direct {v2}, Lb5/g;->r()V

    return-object v2

    :catchall_4b
    move-exception p0

    .line 14
    :try_start_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw p0
.end method

.method private synthetic x(Landroid/content/Context;)Lq6/a;
    .registers 6

    .line 1
    new-instance v0, Lq6/a;

    .line 2
    invoke-virtual {p0}, Lb5/g;->q()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lb5/g;->d:Lk5/o;

    const-class v3, Lh6/c;

    .line 3
    invoke-virtual {v2, v3}, Lk5/o;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh6/c;

    invoke-direct {v0, p1, v1, v2}, Lq6/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lh6/c;)V

    return-object v0
.end method

.method private synthetic y(Z)V
    .registers 2

    if-nez p1, :cond_d

    .line 1
    iget-object p1, p0, Lb5/g;->h:Lk6/b;

    invoke-interface {p1}, Lk6/b;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li6/f;

    invoke-virtual {p1}, Li6/f;->l()Lcom/google/android/gms/tasks/Task;

    :cond_d
    return-void
.end method

.method private static z(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    instance-of v0, p1, Lb5/g;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_6
    iget-object v0, p0, Lb5/g;->b:Ljava/lang/String;

    check-cast p1, Lb5/g;

    invoke-virtual {p1}, Lb5/g;->o()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public g(Lb5/g$a;)V
    .registers 3
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    invoke-direct {p0}, Lb5/g;->i()V

    .line 2
    iget-object v0, p0, Lb5/g;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 3
    invoke-static {}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->b()Lcom/google/android/gms/common/api/internal/BackgroundDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->d()Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    .line 4
    invoke-interface {p1, v0}, Lb5/g$a;->a(Z)V

    .line 5
    :cond_19
    iget-object v0, p0, Lb5/g;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public h(Lb5/h;)V
    .registers 3
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    invoke-direct {p0}, Lb5/g;->i()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lb5/g;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lb5/g;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public j(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lb5/g;->i()V

    .line 2
    iget-object v0, p0, Lb5/g;->d:Lk5/o;

    invoke-virtual {v0, p1}, Lk5/o;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public l()Landroid/content/Context;
    .registers 2

    .line 1
    invoke-direct {p0}, Lb5/g;->i()V

    .line 2
    iget-object v0, p0, Lb5/g;->a:Landroid/content/Context;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-direct {p0}, Lb5/g;->i()V

    .line 2
    iget-object v0, p0, Lb5/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public p()Lb5/q;
    .registers 2

    .line 1
    invoke-direct {p0}, Lb5/g;->i()V

    .line 2
    iget-object v0, p0, Lb5/g;->c:Lb5/q;

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .registers 4
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb5/g;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/util/Base64Utils;->e([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Lb5/g;->p()Lb5/q;

    move-result-object v1

    invoke-virtual {v1}, Lb5/q;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/common/util/Base64Utils;->e([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->d(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lb5/g;->b:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lb5/g;->c:Lb5/q;

    const-string v2, "options"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()Z
    .registers 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    invoke-direct {p0}, Lb5/g;->i()V

    .line 2
    iget-object v0, p0, Lb5/g;->g:Lk5/x;

    invoke-virtual {v0}, Lk5/x;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq6/a;

    invoke-virtual {v0}, Lq6/a;->b()Z

    move-result v0

    return v0
.end method

.method public w()Z
    .registers 3
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lb5/g;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[DEFAULT]"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

###### Class b5.g.a (b5.g$a)
.class public interface abstract Lb5/g$a;
.super Ljava/lang/Object;
.source "FirebaseApp.java"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb5/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a(Z)V
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end method

###### Class b5.g.b (b5.g$b)
.class Lb5/g$b;
.super Ljava/lang/Object;
.source "FirebaseApp.java"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/BackgroundDetector$BackgroundStateChangeListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb5/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lb5/g$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lb5/g$b;->a:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic b(Landroid/content/Context;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lb5/g$b;->c(Landroid/content/Context;)V

    return-void
.end method

.method private static c(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->a()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-nez v0, :cond_f

    goto :goto_35

    .line 3
    :cond_f
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    .line 4
    sget-object v0, Lb5/g$b;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_35

    .line 5
    new-instance v0, Lb5/g$b;

    invoke-direct {v0}, Lb5/g$b;-><init>()V

    .line 6
    sget-object v1, Lb5/g$b;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 7
    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->c(Landroid/app/Application;)V

    .line 8
    invoke-static {}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->b()Lcom/google/android/gms/common/api/internal/BackgroundDetector;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->a(Lcom/google/android/gms/common/api/internal/BackgroundDetector$BackgroundStateChangeListener;)V

    :cond_35
    :goto_35
    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 6

    .line 1
    invoke-static {}, Lb5/g;->c()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_5
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lb5/g;->l:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb5/g;

    .line 3
    invoke-static {v2}, Lb5/g;->e(Lb5/g;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 4
    invoke-static {v2, p1}, Lb5/g;->f(Lb5/g;Z)V

    goto :goto_14

    .line 5
    :cond_2e
    monitor-exit v0

    return-void

    :catchall_30
    move-exception p1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_30

    goto :goto_34

    :goto_33
    throw p1

    :goto_34
    goto :goto_33
.end method

###### Class b5.g.c (b5.g$c)
.class Lb5/g$c;
.super Landroid/content/BroadcastReceiver;
.source "FirebaseApp.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb5/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field private static b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lb5/g$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lb5/g$c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    iput-object p1, p0, Lb5/g$c;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Landroid/content/Context;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lb5/g$c;->b(Landroid/content/Context;)V

    return-void
.end method

.method private static b(Landroid/content/Context;)V
    .registers 4

    .line 1
    sget-object v0, Lb5/g$c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_20

    .line 2
    new-instance v0, Lb5/g$c;

    invoke-direct {v0, p0}, Lb5/g$c;-><init>(Landroid/content/Context;)V

    .line 3
    sget-object v1, Lb5/g$c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 4
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_20
    return-void
.end method


# virtual methods
.method public c()V
    .registers 2

    .line 1
    iget-object v0, p0, Lb5/g$c;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 1
    invoke-static {}, Lb5/g;->c()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 2
    :try_start_5
    sget-object p2, Lb5/g;->l:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb5/g;

    .line 3
    invoke-static {v0}, Lb5/g;->d(Lb5/g;)V

    goto :goto_f

    .line 4
    :cond_1f
    monitor-exit p1
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_24

    .line 5
    invoke-virtual {p0}, Lb5/g$c;->c()V

    return-void

    :catchall_24
    move-exception p2

    .line 6
    :try_start_25
    monitor-exit p1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    goto :goto_28

    :goto_27
    throw p2

    :goto_28
    goto :goto_27
.end method

###### Class b5.e (b5.e)
.class public final synthetic Lb5/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lb5/g$a;


# instance fields
.field public final synthetic a:Lb5/g;


# direct methods
.method public synthetic constructor <init>(Lb5/g;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb5/e;->a:Lb5/g;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .registers 3

    iget-object v0, p0, Lb5/e;->a:Lb5/g;

    invoke-static {v0, p1}, Lb5/g;->a(Lb5/g;Z)V

    return-void
.end method

###### Class b5.f (b5.f)
.class public final synthetic Lb5/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lk6/b;


# instance fields
.field public final synthetic a:Lb5/g;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lb5/g;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb5/f;->a:Lb5/g;

    iput-object p2, p0, Lb5/f;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lb5/f;->a:Lb5/g;

    iget-object v1, p0, Lb5/f;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lb5/g;->b(Lb5/g;Landroid/content/Context;)Lq6/a;

    move-result-object v0

    return-object v0
.end method
