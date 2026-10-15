###### Class com.twitter.sdk.android.core.i (com.twitter.sdk.android.core.i)
.class public Lcom/twitter/sdk/android/core/i;
.super Ljava/lang/Object;
.source "PersistedSessionManager.java"

# interfaces
.implements Lcom/twitter/sdk/android/core/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/twitter/sdk/android/core/m;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/twitter/sdk/android/core/n<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Le9/a;

.field private final b:Le9/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le9/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Le9/c<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final e:Le9/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le9/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final g:Ljava/lang/String;

.field private volatile h:Z


# direct methods
.method public constructor <init>(Le9/a;Le9/d;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le9/a;",
            "Le9/d<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    new-instance v5, Le9/c;

    invoke-direct {v5, p1, p2, p3}, Le9/c;-><init>(Le9/a;Le9/d;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/twitter/sdk/android/core/i;-><init>(Le9/a;Le9/d;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;Le9/c;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Le9/a;Le9/d;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;Le9/c;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le9/a;",
            "Le9/d<",
            "TT;>;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "TT;>;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Le9/c<",
            "TT;>;>;",
            "Le9/c<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/twitter/sdk/android/core/i;->h:Z

    .line 4
    iput-object p1, p0, Lcom/twitter/sdk/android/core/i;->a:Le9/a;

    .line 5
    iput-object p2, p0, Lcom/twitter/sdk/android/core/i;->b:Le9/d;

    .line 6
    iput-object p3, p0, Lcom/twitter/sdk/android/core/i;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    iput-object p4, p0, Lcom/twitter/sdk/android/core/i;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    iput-object p5, p0, Lcom/twitter/sdk/android/core/i;->e:Le9/c;

    .line 9
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/twitter/sdk/android/core/i;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    iput-object p6, p0, Lcom/twitter/sdk/android/core/i;->g:Ljava/lang/String;

    return-void
.end method

.method private f(JLcom/twitter/sdk/android/core/m;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;Z)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/i;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/twitter/sdk/android/core/i;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le9/c;

    if-nez v0, :cond_2d

    .line 3
    new-instance v0, Le9/c;

    iget-object v1, p0, Lcom/twitter/sdk/android/core/i;->a:Le9/a;

    iget-object v2, p0, Lcom/twitter/sdk/android/core/i;->b:Le9/d;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/sdk/android/core/i;->e(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Le9/c;-><init>(Le9/a;Le9/d;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/twitter/sdk/android/core/i;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_2d
    invoke-virtual {v0, p3}, Le9/c;->c(Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/twitter/sdk/android/core/i;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/m;

    if-eqz v0, :cond_44

    .line 7
    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/m;->b()J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-eqz v3, :cond_44

    if-eqz p4, :cond_50

    .line 8
    :cond_44
    monitor-enter p0

    .line 9
    :try_start_45
    iget-object p1, p0, Lcom/twitter/sdk/android/core/i;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v0, p3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    iget-object p1, p0, Lcom/twitter/sdk/android/core/i;->e:Le9/c;

    invoke-virtual {p1, p3}, Le9/c;->c(Ljava/lang/Object;)V

    .line 11
    monitor-exit p0

    :cond_50
    return-void

    :catchall_51
    move-exception p1

    monitor-exit p0
    :try_end_53
    .catchall {:try_start_45 .. :try_end_53} :catchall_51

    throw p1
.end method

.method private h()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/i;->e:Le9/c;

    invoke-virtual {v0}, Le9/c;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/m;

    if-eqz v0, :cond_12

    .line 2
    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/m;->b()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/twitter/sdk/android/core/i;->f(JLcom/twitter/sdk/android/core/m;Z)V

    :cond_12
    return-void
.end method

.method private declared-synchronized i()V
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Lcom/twitter/sdk/android/core/i;->h:Z

    if-eqz v0, :cond_e

    .line 2
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/i;->h()V

    .line 3
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/i;->k()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/twitter/sdk/android/core/i;->h:Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 5
    :cond_e
    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private k()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/i;->a:Le9/a;

    invoke-interface {v0}, Le9/a;->get()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/twitter/sdk/android/core/i;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 4
    iget-object v2, p0, Lcom/twitter/sdk/android/core/i;->b:Le9/d;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v1}, Le9/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/sdk/android/core/m;

    if-eqz v1, :cond_12

    .line 5
    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/m;->b()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/twitter/sdk/android/core/i;->f(JLcom/twitter/sdk/android/core/m;Z)V

    goto :goto_12

    :cond_43
    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/i;->j()V

    .line 2
    iget-object v0, p0, Lcom/twitter/sdk/android/core/i;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public b(J)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/i;->j()V

    .line 2
    iget-object v0, p0, Lcom/twitter/sdk/android/core/i;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/twitter/sdk/android/core/i;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/m;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/m;->b()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-nez v2, :cond_2c

    .line 3
    monitor-enter p0

    .line 4
    :try_start_1c
    iget-object v0, p0, Lcom/twitter/sdk/android/core/i;->f:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/twitter/sdk/android/core/i;->e:Le9/c;

    invoke-virtual {v0}, Le9/c;->a()V

    .line 6
    monitor-exit p0

    goto :goto_2c

    :catchall_29
    move-exception p1

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_1c .. :try_end_2b} :catchall_29

    throw p1

    .line 7
    :cond_2c
    :goto_2c
    iget-object v0, p0, Lcom/twitter/sdk/android/core/i;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/twitter/sdk/android/core/i;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le9/c;

    if-eqz p1, :cond_46

    .line 9
    invoke-virtual {p1}, Le9/c;->a()V

    :cond_46
    return-void
.end method

.method public c()Lcom/twitter/sdk/android/core/m;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/i;->j()V

    .line 2
    iget-object v0, p0, Lcom/twitter/sdk/android/core/i;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/m;

    return-object v0
.end method

.method public d(Lcom/twitter/sdk/android/core/m;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_e

    .line 1
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/i;->j()V

    .line 2
    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/m;->b()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/twitter/sdk/android/core/i;->f(JLcom/twitter/sdk/android/core/m;Z)V

    return-void

    .line 3
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Session must not be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method e(J)Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/twitter/sdk/android/core/i;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method g(Ljava/lang/String;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/i;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method j()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/twitter/sdk/android/core/i;->h:Z

    if-eqz v0, :cond_7

    .line 2
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/i;->i()V

    :cond_7
    return-void
.end method
