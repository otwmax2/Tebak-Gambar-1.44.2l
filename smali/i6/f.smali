###### Class i6.f (i6.f)
.class public Li6/f;
.super Ljava/lang/Object;
.source "DefaultHeartBeatController.java"

# interfaces
.implements Li6/i;
.implements Li6/j;


# instance fields
.field private final a:Lk6/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk6/b<",
            "Li6/k;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/Context;

.field private final c:Lk6/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk6/b<",
            "Lt6/i;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Li6/g;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/Executor;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lk6/b;Ljava/util/concurrent/Executor;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Li6/g;",
            ">;",
            "Lk6/b<",
            "Lt6/i;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v1, Li6/e;

    invoke-direct {v1, p1, p2}, Li6/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v0, p0

    move-object v2, p3

    move-object v3, p5

    move-object v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Li6/f;-><init>(Lk6/b;Ljava/util/Set;Ljava/util/concurrent/Executor;Lk6/b;Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Lk6/b;Ljava/util/Set;Ljava/util/concurrent/Executor;Lk6/b;Landroid/content/Context;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk6/b<",
            "Li6/k;",
            ">;",
            "Ljava/util/Set<",
            "Li6/g;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Lk6/b<",
            "Lt6/i;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Li6/f;->a:Lk6/b;

    .line 4
    iput-object p2, p0, Li6/f;->d:Ljava/util/Set;

    .line 5
    iput-object p3, p0, Li6/f;->e:Ljava/util/concurrent/Executor;

    .line 6
    iput-object p4, p0, Li6/f;->c:Lk6/b;

    .line 7
    iput-object p5, p0, Li6/f;->b:Landroid/content/Context;

    return-void
.end method

.method public static synthetic c(Li6/f;)Ljava/lang/Void;
    .registers 1

    invoke-direct {p0}, Li6/f;->k()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Li6/f;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Li6/f;->i()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Landroid/content/Context;Ljava/lang/String;)Li6/k;
    .registers 2

    invoke-static {p0, p1}, Li6/f;->j(Landroid/content/Context;Ljava/lang/String;)Li6/k;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lk5/f0;Lk5/e;)Li6/f;
    .registers 2

    invoke-static {p0, p1}, Li6/f;->h(Lk5/f0;Lk5/e;)Li6/f;

    move-result-object p0

    return-object p0
.end method

.method public static g()Lk5/c;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk5/c<",
            "Li6/f;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lf5/a;

    const-class v1, Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Lk5/f0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lk5/f0;

    move-result-object v0

    .line 2
    const-class v1, Li6/f;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Li6/i;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Li6/j;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lk5/c;->d(Ljava/lang/Class;[Ljava/lang/Class;)Lk5/c$b;

    move-result-object v1

    const-class v2, Landroid/content/Context;

    .line 3
    invoke-static {v2}, Lk5/r;->j(Ljava/lang/Class;)Lk5/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Lk5/c$b;->b(Lk5/r;)Lk5/c$b;

    move-result-object v1

    const-class v2, Lb5/g;

    .line 4
    invoke-static {v2}, Lk5/r;->j(Ljava/lang/Class;)Lk5/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Lk5/c$b;->b(Lk5/r;)Lk5/c$b;

    move-result-object v1

    const-class v2, Li6/g;

    .line 5
    invoke-static {v2}, Lk5/r;->n(Ljava/lang/Class;)Lk5/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Lk5/c$b;->b(Lk5/r;)Lk5/c$b;

    move-result-object v1

    const-class v2, Lt6/i;

    .line 6
    invoke-static {v2}, Lk5/r;->l(Ljava/lang/Class;)Lk5/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Lk5/c$b;->b(Lk5/r;)Lk5/c$b;

    move-result-object v1

    .line 7
    invoke-static {v0}, Lk5/r;->k(Lk5/f0;)Lk5/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Lk5/c$b;->b(Lk5/r;)Lk5/c$b;

    move-result-object v1

    new-instance v2, Li6/d;

    invoke-direct {v2, v0}, Li6/d;-><init>(Lk5/f0;)V

    .line 8
    invoke-virtual {v1, v2}, Lk5/c$b;->f(Lk5/h;)Lk5/c$b;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lk5/c$b;->d()Lk5/c;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic h(Lk5/f0;Lk5/e;)Li6/f;
    .registers 9

    .line 1
    new-instance v6, Li6/f;

    const-class v0, Landroid/content/Context;

    .line 2
    invoke-interface {p1, v0}, Lk5/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    const-class v0, Lb5/g;

    .line 3
    invoke-interface {p1, v0}, Lk5/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb5/g;

    invoke-virtual {v0}, Lb5/g;->q()Ljava/lang/String;

    move-result-object v2

    const-class v0, Li6/g;

    .line 4
    invoke-interface {p1, v0}, Lk5/e;->g(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v3

    const-class v0, Lt6/i;

    .line 5
    invoke-interface {p1, v0}, Lk5/e;->c(Ljava/lang/Class;)Lk6/b;

    move-result-object v4

    .line 6
    invoke-interface {p1, p0}, Lk5/e;->e(Lk5/f0;)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Ljava/util/concurrent/Executor;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Li6/f;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lk6/b;Ljava/util/concurrent/Executor;)V

    return-object v6
.end method

.method private synthetic i()Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Li6/f;->a:Lk6/b;

    invoke-interface {v0}, Lk6/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li6/k;

    .line 3
    invoke-virtual {v0}, Li6/k;->c()Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Li6/k;->b()V

    .line 5
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    .line 6
    :goto_16
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_44

    .line 7
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li6/l;

    .line 8
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "agent"

    .line 9
    invoke-virtual {v3}, Li6/l;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "dates"

    .line 10
    new-instance v6, Lorg/json/JSONArray;

    invoke-virtual {v3}, Li6/l;->b()Ljava/util/List;

    move-result-object v3

    invoke-direct {v6, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 12
    :cond_44
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "heartbeats"

    .line 13
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "version"

    const-string v2, "2"

    .line 14
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 16
    new-instance v2, Landroid/util/Base64OutputStream;

    const/16 v3, 0xb

    invoke-direct {v2, v0, v3}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_61
    .catchall {:try_start_1 .. :try_end_61} :catchall_95

    .line 17
    :try_start_61
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_66
    .catchall {:try_start_61 .. :try_end_66} :catchall_8b

    .line 18
    :try_start_66
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "UTF-8"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_73
    .catchall {:try_start_66 .. :try_end_73} :catchall_81

    .line 19
    :try_start_73
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_8b

    :try_start_76
    invoke-virtual {v2}, Landroid/util/Base64OutputStream;->close()V

    const-string v1, "UTF-8"

    .line 20
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0
    :try_end_80
    .catchall {:try_start_76 .. :try_end_80} :catchall_95

    return-object v0

    :catchall_81
    move-exception v0

    .line 21
    :try_start_82
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_85
    .catchall {:try_start_82 .. :try_end_85} :catchall_86

    goto :goto_8a

    :catchall_86
    move-exception v1

    :try_start_87
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8a
    throw v0
    :try_end_8b
    .catchall {:try_start_87 .. :try_end_8b} :catchall_8b

    :catchall_8b
    move-exception v0

    :try_start_8c
    invoke-virtual {v2}, Landroid/util/Base64OutputStream;->close()V
    :try_end_8f
    .catchall {:try_start_8c .. :try_end_8f} :catchall_90

    goto :goto_94

    :catchall_90
    move-exception v1

    :try_start_91
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_94
    throw v0

    :catchall_95
    move-exception v0

    .line 22
    monitor-exit p0
    :try_end_97
    .catchall {:try_start_91 .. :try_end_97} :catchall_95

    goto :goto_99

    :goto_98
    throw v0

    :goto_99
    goto :goto_98
.end method

.method private static synthetic j(Landroid/content/Context;Ljava/lang/String;)Li6/k;
    .registers 3

    .line 1
    new-instance v0, Li6/k;

    invoke-direct {v0, p0, p1}, Li6/k;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method private synthetic k()Ljava/lang/Void;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Li6/f;->a:Lk6/b;

    .line 3
    invoke-interface {v0}, Lk6/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li6/k;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Li6/f;->c:Lk6/b;

    invoke-interface {v3}, Lk6/b;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt6/i;

    invoke-interface {v3}, Lt6/i;->a()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {v0, v1, v2, v3}, Li6/k;->k(JLjava/lang/String;)V

    .line 6
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :catchall_1f
    move-exception v0

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_1f

    throw v0
.end method


# virtual methods
.method public a()Lcom/google/android/gms/tasks/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li6/f;->b:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/os/n;->a(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_11

    const-string v0, ""

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->e(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    .line 3
    :cond_11
    iget-object v0, p0, Li6/f;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Li6/c;

    invoke-direct {v1, p0}, Li6/c;-><init>(Li6/f;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/tasks/Tasks;->c(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized b(Ljava/lang/String;)Li6/j$a;
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-object p1, p0, Li6/f;->a:Lk6/b;

    invoke-interface {p1}, Lk6/b;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li6/k;

    .line 3
    invoke-virtual {p1, v0, v1}, Li6/k;->i(J)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 4
    invoke-virtual {p1}, Li6/k;->g()V

    .line 5
    sget-object p1, Li6/j$a;->r:Li6/j$a;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1e

    monitor-exit p0

    return-object p1

    .line 6
    :cond_1a
    :try_start_1a
    sget-object p1, Li6/j$a;->p:Li6/j$a;
    :try_end_1c
    .catchall {:try_start_1a .. :try_end_1c} :catchall_1e

    monitor-exit p0

    return-object p1

    :catchall_1e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public l()Lcom/google/android/gms/tasks/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li6/f;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_e

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/tasks/Tasks;->e(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    .line 3
    :cond_e
    iget-object v0, p0, Li6/f;->b:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/os/n;->a(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1d

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/tasks/Tasks;->e(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1d
    iget-object v0, p0, Li6/f;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Li6/b;

    invoke-direct {v1, p0}, Li6/b;-><init>(Li6/f;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/tasks/Tasks;->c(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

###### Class i6.b (i6.b)
.class public final synthetic Li6/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Li6/f;


# direct methods
.method public synthetic constructor <init>(Li6/f;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li6/b;->a:Li6/f;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Li6/b;->a:Li6/f;

    invoke-static {v0}, Li6/f;->c(Li6/f;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

###### Class i6.c (i6.c)
.class public final synthetic Li6/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Li6/f;


# direct methods
.method public synthetic constructor <init>(Li6/f;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li6/c;->a:Li6/f;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Li6/c;->a:Li6/f;

    invoke-static {v0}, Li6/f;->d(Li6/f;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class i6.d (i6.d)
.class public final synthetic Li6/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lk5/h;


# instance fields
.field public final synthetic a:Lk5/f0;


# direct methods
.method public synthetic constructor <init>(Lk5/f0;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li6/d;->a:Lk5/f0;

    return-void
.end method


# virtual methods
.method public final a(Lk5/e;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Li6/d;->a:Lk5/f0;

    invoke-static {v0, p1}, Li6/f;->f(Lk5/f0;Lk5/e;)Li6/f;

    move-result-object p1

    return-object p1
.end method

###### Class i6.e (i6.e)
.class public final synthetic Li6/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lk6/b;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li6/e;->a:Landroid/content/Context;

    iput-object p2, p0, Li6/e;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Li6/e;->a:Landroid/content/Context;

    iget-object v1, p0, Li6/e;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Li6/f;->e(Landroid/content/Context;Ljava/lang/String;)Li6/k;

    move-result-object v0

    return-object v0
.end method
