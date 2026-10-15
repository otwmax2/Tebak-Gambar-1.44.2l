###### Class r5.m (r5.m)
.class public Lr5/m;
.super Ljava/lang/Object;
.source "UserMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr5/m$a;
    }
.end annotation


# instance fields
.field private final a:Lr5/f;

.field private final b:Lq5/n;

.field private c:Ljava/lang/String;

.field private final d:Lr5/m$a;

.field private final e:Lr5/m$a;

.field private final f:Lr5/j;

.field private final g:Ljava/util/concurrent/atomic/AtomicMarkableReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicMarkableReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lv5/f;Lq5/n;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lr5/m$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lr5/m$a;-><init>(Lr5/m;Z)V

    iput-object v0, p0, Lr5/m;->d:Lr5/m$a;

    .line 3
    new-instance v0, Lr5/m$a;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lr5/m$a;-><init>(Lr5/m;Z)V

    iput-object v0, p0, Lr5/m;->e:Lr5/m$a;

    .line 4
    new-instance v0, Lr5/j;

    const/16 v2, 0x80

    invoke-direct {v0, v2}, Lr5/j;-><init>(I)V

    iput-object v0, p0, Lr5/m;->f:Lr5/j;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicMarkableReference;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicMarkableReference;-><init>(Ljava/lang/Object;Z)V

    iput-object v0, p0, Lr5/m;->g:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    .line 6
    iput-object p1, p0, Lr5/m;->c:Ljava/lang/String;

    .line 7
    new-instance p1, Lr5/f;

    invoke-direct {p1, p2}, Lr5/f;-><init>(Lv5/f;)V

    iput-object p1, p0, Lr5/m;->a:Lr5/f;

    .line 8
    iput-object p3, p0, Lr5/m;->b:Lq5/n;

    return-void
.end method

.method public static synthetic a(Lr5/m;)Ljava/lang/Object;
    .registers 1

    invoke-direct {p0}, Lr5/m;->i()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lr5/m;)Lq5/n;
    .registers 1

    .line 1
    iget-object p0, p0, Lr5/m;->b:Lq5/n;

    return-object p0
.end method

.method static synthetic c(Lr5/m;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lr5/m;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lr5/m;)Lr5/f;
    .registers 1

    .line 1
    iget-object p0, p0, Lr5/m;->a:Lr5/f;

    return-object p0
.end method

.method private synthetic i()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lr5/m;->l()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static j(Ljava/lang/String;Lv5/f;Lq5/n;)Lr5/m;
    .registers 6

    .line 1
    new-instance v0, Lr5/f;

    invoke-direct {v0, p1}, Lr5/f;-><init>(Lv5/f;)V

    .line 2
    new-instance v1, Lr5/m;

    invoke-direct {v1, p0, p1, p2}, Lr5/m;-><init>(Ljava/lang/String;Lv5/f;Lq5/n;)V

    .line 3
    iget-object p1, v1, Lr5/m;->d:Lr5/m$a;

    iget-object p1, p1, Lr5/m$a;->a:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr5/d;

    const/4 p2, 0x0

    invoke-virtual {v0, p0, p2}, Lr5/f;->i(Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1, v2}, Lr5/d;->e(Ljava/util/Map;)V

    .line 4
    iget-object p1, v1, Lr5/m;->e:Lr5/m$a;

    iget-object p1, p1, Lr5/m$a;->a:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr5/d;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2}, Lr5/f;->i(Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1, v2}, Lr5/d;->e(Ljava/util/Map;)V

    .line 5
    iget-object p1, v1, Lr5/m;->g:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {v0, p0}, Lr5/f;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->set(Ljava/lang/Object;Z)V

    .line 6
    iget-object p1, v1, Lr5/m;->f:Lr5/j;

    invoke-virtual {v0, p0}, Lr5/f;->j(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lr5/j;->c(Ljava/util/List;)Z

    return-object v1
.end method

.method public static k(Ljava/lang/String;Lv5/f;)Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Lr5/f;

    invoke-direct {v0, p1}, Lr5/f;-><init>(Lv5/f;)V

    invoke-virtual {v0, p0}, Lr5/f;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private l()V
    .registers 6

    .line 1
    iget-object v0, p0, Lr5/m;->g:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lr5/m;->g:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->isMarked()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    .line 3
    invoke-virtual {p0}, Lr5/m;->h()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    .line 4
    iget-object v4, p0, Lr5/m;->g:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {v4, v1, v2}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->set(Ljava/lang/Object;Z)V

    const/4 v2, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    .line 5
    :goto_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_24

    if-eqz v2, :cond_23

    .line 6
    iget-object v0, p0, Lr5/m;->a:Lr5/f;

    iget-object v2, p0, Lr5/m;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lr5/f;->s(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    return-void

    :catchall_24
    move-exception v1

    .line 7
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v1
.end method


# virtual methods
.method public e()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lr5/m;->d:Lr5/m$a;

    invoke-virtual {v0}, Lr5/m$a;->b()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lr5/m;->e:Lr5/m$a;

    invoke-virtual {v0}, Lr5/m$a;->b()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ls5/f0$e$d$e;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lr5/m;->f:Lr5/j;

    invoke-virtual {v0}, Lr5/j;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lr5/m;->g:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lr5/m;->d:Lr5/m$a;

    invoke-virtual {v0, p1, p2}, Lr5/m$a;->f(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public n(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lr5/m;->e:Lr5/m$a;

    invoke-virtual {v0, p1, p2}, Lr5/m$a;->f(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public o(Ljava/lang/String;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lr5/m;->c:Ljava/lang/String;

    monitor-enter v0

    .line 2
    :try_start_3
    iput-object p1, p0, Lr5/m;->c:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lr5/m;->d:Lr5/m$a;

    invoke-virtual {v1}, Lr5/m$a;->b()Ljava/util/Map;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lr5/m;->f:Lr5/j;

    invoke-virtual {v2}, Lr5/j;->b()Ljava/util/List;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lr5/m;->h()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_20

    .line 6
    iget-object v3, p0, Lr5/m;->a:Lr5/f;

    invoke-virtual {p0}, Lr5/m;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lr5/f;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_20
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2b

    .line 8
    iget-object v3, p0, Lr5/m;->a:Lr5/f;

    invoke-virtual {v3, p1, v1}, Lr5/f;->p(Ljava/lang/String;Ljava/util/Map;)V

    .line 9
    :cond_2b
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_36

    .line 10
    iget-object v1, p0, Lr5/m;->a:Lr5/f;

    invoke-virtual {v1, p1, v2}, Lr5/f;->r(Ljava/lang/String;Ljava/util/List;)V

    .line 11
    :cond_36
    monitor-exit v0

    return-void

    :catchall_38
    move-exception p1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_38

    throw p1
.end method

.method public p(Ljava/lang/String;)V
    .registers 5

    const/16 v0, 0x400

    .line 1
    invoke-static {p1, v0}, Lr5/d;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lr5/m;->g:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    monitor-enter v0

    .line 3
    :try_start_9
    iget-object v1, p0, Lr5/m;->g:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    invoke-static {p1, v1}, Lq5/i;->y(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 5
    monitor-exit v0

    return-void

    .line 6
    :cond_19
    iget-object v1, p0, Lr5/m;->g:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->set(Ljava/lang/Object;Z)V

    .line 7
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_2b

    .line 8
    iget-object p1, p0, Lr5/m;->b:Lq5/n;

    new-instance v0, Lr5/k;

    invoke-direct {v0, p0}, Lr5/k;-><init>(Lr5/m;)V

    invoke-virtual {p1, v0}, Lq5/n;->h(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    return-void

    :catchall_2b
    move-exception p1

    .line 9
    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p1
.end method

###### Class r5.m.a (r5.m$a)
.class Lr5/m$a;
.super Ljava/lang/Object;
.source "UserMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr5/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicMarkableReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicMarkableReference<",
            "Lr5/d;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Z

.field final synthetic d:Lr5/m;


# direct methods
.method public constructor <init>(Lr5/m;Z)V
    .registers 4

    .line 1
    iput-object p1, p0, Lr5/m$a;->d:Lr5/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lr5/m$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    iput-boolean p2, p0, Lr5/m$a;->c:Z

    .line 4
    new-instance p1, Lr5/d;

    if-eqz p2, :cond_16

    const/16 p2, 0x2000

    goto :goto_18

    :cond_16
    const/16 p2, 0x400

    :goto_18
    const/16 v0, 0x40

    .line 5
    invoke-direct {p1, v0, p2}, Lr5/d;-><init>(II)V

    .line 6
    new-instance p2, Ljava/util/concurrent/atomic/AtomicMarkableReference;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Ljava/util/concurrent/atomic/AtomicMarkableReference;-><init>(Ljava/lang/Object;Z)V

    iput-object p2, p0, Lr5/m$a;->a:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    return-void
.end method

.method public static synthetic a(Lr5/m$a;)Ljava/lang/Void;
    .registers 1

    invoke-direct {p0}, Lr5/m$a;->c()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method private synthetic c()Ljava/lang/Void;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lr5/m$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2
    invoke-direct {p0}, Lr5/m$a;->e()V

    return-object v1
.end method

.method private d()V
    .registers 4

    .line 1
    new-instance v0, Lr5/l;

    invoke-direct {v0, p0}, Lr5/l;-><init>(Lr5/m$a;)V

    .line 2
    iget-object v1, p0, Lr5/m$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 3
    iget-object v1, p0, Lr5/m$a;->d:Lr5/m;

    invoke-static {v1}, Lr5/m;->b(Lr5/m;)Lq5/n;

    move-result-object v1

    invoke-virtual {v1, v0}, Lq5/n;->h(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    :cond_17
    return-void
.end method

.method private e()V
    .registers 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lr5/m$a;->a:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->isMarked()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 3
    iget-object v0, p0, Lr5/m$a;->a:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr5/d;

    invoke-virtual {v0}, Lr5/d;->a()Ljava/util/Map;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lr5/m$a;->a:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr5/d;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->set(Ljava/lang/Object;Z)V

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    .line 5
    :goto_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_38

    if-eqz v0, :cond_37

    .line 6
    iget-object v1, p0, Lr5/m$a;->d:Lr5/m;

    invoke-static {v1}, Lr5/m;->d(Lr5/m;)Lr5/f;

    move-result-object v1

    iget-object v2, p0, Lr5/m$a;->d:Lr5/m;

    invoke-static {v2}, Lr5/m;->c(Lr5/m;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lr5/m$a;->c:Z

    invoke-virtual {v1, v2, v0, v3}, Lr5/f;->q(Ljava/lang/String;Ljava/util/Map;Z)V

    :cond_37
    return-void

    :catchall_38
    move-exception v0

    .line 7
    :try_start_39
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v0
.end method


# virtual methods
.method public b()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lr5/m$a;->a:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr5/d;

    invoke-virtual {v0}, Lr5/d;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lr5/m$a;->a:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr5/d;

    invoke-virtual {v0, p1, p2}, Lr5/d;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_12

    const/4 p1, 0x0

    .line 3
    monitor-exit p0

    return p1

    .line 4
    :cond_12
    iget-object p1, p0, Lr5/m$a;->a:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lr5/d;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->set(Ljava/lang/Object;Z)V

    .line 5
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_23

    .line 6
    invoke-direct {p0}, Lr5/m$a;->d()V

    return v0

    :catchall_23
    move-exception p1

    .line 7
    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p1
.end method

###### Class r5.l (r5.l)
.class public final synthetic Lr5/l;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lr5/m$a;


# direct methods
.method public synthetic constructor <init>(Lr5/m$a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr5/l;->a:Lr5/m$a;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lr5/l;->a:Lr5/m$a;

    invoke-static {v0}, Lr5/m$a;->a(Lr5/m$a;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

###### Class r5.k (r5.k)
.class public final synthetic Lr5/k;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lr5/m;


# direct methods
.method public synthetic constructor <init>(Lr5/m;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr5/k;->a:Lr5/m;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lr5/k;->a:Lr5/m;

    invoke-static {v0}, Lr5/m;->a(Lr5/m;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
