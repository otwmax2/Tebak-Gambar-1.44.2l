###### Class com.google.firebase.remoteconfig.c (com.google.firebase.remoteconfig.c)
.class public Lcom/google/firebase/remoteconfig/c;
.super Ljava/lang/Object;
.source "RemoteConfigComponent.java"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field private static final j:Lcom/google/android/gms/common/util/Clock;

.field private static final k:Ljava/util/Random;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/remoteconfig/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/Context;

.field private final c:Ljava/util/concurrent/ExecutorService;

.field private final d:Lb5/g;

.field private final e:Ll6/e;

.field private final f:Lc5/c;

.field private final g:Lk6/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk6/b<",
            "Le5/a;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/lang/String;

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->d()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/remoteconfig/c;->j:Lcom/google/android/gms/common/util/Clock;

    .line 2
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/google/firebase/remoteconfig/c;->k:Ljava/util/Random;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lb5/g;Ll6/e;Lc5/c;Lk6/b;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lb5/g;",
            "Ll6/e;",
            "Lc5/c;",
            "Lk6/b<",
            "Le5/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 2
    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/remoteconfig/c;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lb5/g;Ll6/e;Lc5/c;Lk6/b;Z)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lb5/g;Ll6/e;Lc5/c;Lk6/b;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/ExecutorService;",
            "Lb5/g;",
            "Ll6/e;",
            "Lc5/c;",
            "Lk6/b<",
            "Le5/a;",
            ">;Z)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/remoteconfig/c;->a:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/remoteconfig/c;->i:Ljava/util/Map;

    .line 6
    iput-object p1, p0, Lcom/google/firebase/remoteconfig/c;->b:Landroid/content/Context;

    .line 7
    iput-object p2, p0, Lcom/google/firebase/remoteconfig/c;->c:Ljava/util/concurrent/ExecutorService;

    .line 8
    iput-object p3, p0, Lcom/google/firebase/remoteconfig/c;->d:Lb5/g;

    .line 9
    iput-object p4, p0, Lcom/google/firebase/remoteconfig/c;->e:Ll6/e;

    .line 10
    iput-object p5, p0, Lcom/google/firebase/remoteconfig/c;->f:Lc5/c;

    .line 11
    iput-object p6, p0, Lcom/google/firebase/remoteconfig/c;->g:Lk6/b;

    .line 12
    invoke-virtual {p3}, Lb5/g;->p()Lb5/q;

    move-result-object p1

    invoke-virtual {p1}, Lb5/q;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/c;->h:Ljava/lang/String;

    if-eqz p7, :cond_31

    .line 13
    new-instance p1, Lcom/google/firebase/remoteconfig/b;

    invoke-direct {p1, p0}, Lcom/google/firebase/remoteconfig/b;-><init>(Lcom/google/firebase/remoteconfig/c;)V

    invoke-static {p2, p1}, Lcom/google/android/gms/tasks/Tasks;->c(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    :cond_31
    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/remoteconfig/internal/e;
    .registers 6

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "frc"

    aput-object v2, v0, v1

    .line 1
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/c;->h:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const/4 p1, 0x3

    aput-object p2, v0, p1

    const-string p1, "%s_%s_%s_%s.json"

    .line 2
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/c;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/firebase/remoteconfig/internal/o;->c(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/remoteconfig/internal/o;

    move-result-object p1

    .line 4
    invoke-static {p2, p1}, Lcom/google/firebase/remoteconfig/internal/e;->h(Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/remoteconfig/internal/o;)Lcom/google/firebase/remoteconfig/internal/e;

    move-result-object p1

    return-object p1
.end method

.method private g(Lcom/google/firebase/remoteconfig/internal/e;Lcom/google/firebase/remoteconfig/internal/e;)Lcom/google/firebase/remoteconfig/internal/m;
    .registers 5

    .line 1
    new-instance v0, Lcom/google/firebase/remoteconfig/internal/m;

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/c;->c:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/firebase/remoteconfig/internal/m;-><init>(Ljava/util/concurrent/Executor;Lcom/google/firebase/remoteconfig/internal/e;Lcom/google/firebase/remoteconfig/internal/e;)V

    return-object v0
.end method

.method static h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/remoteconfig/internal/n;
    .registers 6

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "frc"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    aput-object p2, v0, p1

    const/4 p1, 0x3

    const-string p2, "settings"

    aput-object p2, v0, p1

    const-string p1, "%s_%s_%s_%s"

    .line 1
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 3
    new-instance p1, Lcom/google/firebase/remoteconfig/internal/n;

    invoke-direct {p1, p0}, Lcom/google/firebase/remoteconfig/internal/n;-><init>(Landroid/content/SharedPreferences;)V

    return-object p1
.end method

.method private static i(Lb5/g;Ljava/lang/String;Lk6/b;)Lcom/google/firebase/remoteconfig/internal/q;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb5/g;",
            "Ljava/lang/String;",
            "Lk6/b<",
            "Le5/a;",
            ">;)",
            "Lcom/google/firebase/remoteconfig/internal/q;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/firebase/remoteconfig/c;->k(Lb5/g;)Z

    move-result p0

    if-eqz p0, :cond_14

    const-string p0, "firebase"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    .line 2
    new-instance p0, Lcom/google/firebase/remoteconfig/internal/q;

    invoke-direct {p0, p2}, Lcom/google/firebase/remoteconfig/internal/q;-><init>(Lk6/b;)V

    return-object p0

    :cond_14
    const/4 p0, 0x0

    return-object p0
.end method

.method private static j(Lb5/g;Ljava/lang/String;)Z
    .registers 3

    const-string v0, "firebase"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-static {p0}, Lcom/google/firebase/remoteconfig/c;->k(Lb5/g;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method private static k(Lb5/g;)Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lb5/g;->o()Ljava/lang/String;

    move-result-object p0

    const-string v0, "[DEFAULT]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method declared-synchronized a(Lb5/g;Ljava/lang/String;Ll6/e;Lc5/c;Ljava/util/concurrent/Executor;Lcom/google/firebase/remoteconfig/internal/e;Lcom/google/firebase/remoteconfig/internal/e;Lcom/google/firebase/remoteconfig/internal/e;Lcom/google/firebase/remoteconfig/internal/k;Lcom/google/firebase/remoteconfig/internal/m;Lcom/google/firebase/remoteconfig/internal/n;)Lcom/google/firebase/remoteconfig/a;
    .registers 27

    move-object v1, p0

    move-object/from16 v0, p2

    monitor-enter p0

    .line 1
    :try_start_4
    iget-object v2, v1, Lcom/google/firebase/remoteconfig/c;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    .line 2
    new-instance v2, Lcom/google/firebase/remoteconfig/a;

    iget-object v4, v1, Lcom/google/firebase/remoteconfig/c;->b:Landroid/content/Context;

    .line 3
    invoke-static/range {p1 .. p2}, Lcom/google/firebase/remoteconfig/c;->j(Lb5/g;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    move-object/from16 v7, p4

    goto :goto_1b

    :cond_19
    const/4 v3, 0x0

    move-object v7, v3

    :goto_1b
    move-object v3, v2

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    invoke-direct/range {v3 .. v14}, Lcom/google/firebase/remoteconfig/a;-><init>(Landroid/content/Context;Lb5/g;Ll6/e;Lc5/c;Ljava/util/concurrent/Executor;Lcom/google/firebase/remoteconfig/internal/e;Lcom/google/firebase/remoteconfig/internal/e;Lcom/google/firebase/remoteconfig/internal/e;Lcom/google/firebase/remoteconfig/internal/k;Lcom/google/firebase/remoteconfig/internal/m;Lcom/google/firebase/remoteconfig/internal/n;)V

    .line 4
    invoke-virtual {v2}, Lcom/google/firebase/remoteconfig/a;->v()V

    .line 5
    iget-object v3, v1, Lcom/google/firebase/remoteconfig/c;->a:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_39
    iget-object v2, v1, Lcom/google/firebase/remoteconfig/c;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/remoteconfig/a;
    :try_end_41
    .catchall {:try_start_4 .. :try_end_41} :catchall_43

    monitor-exit p0

    return-object v0

    :catchall_43
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/String;)Lcom/google/firebase/remoteconfig/a;
    .registers 15
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "fetch"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/firebase/remoteconfig/c;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/remoteconfig/internal/e;

    move-result-object v7

    const-string v0, "activate"

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/google/firebase/remoteconfig/c;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/remoteconfig/internal/e;

    move-result-object v8

    const-string v0, "defaults"

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/google/firebase/remoteconfig/c;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/remoteconfig/internal/e;

    move-result-object v9

    .line 4
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/c;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/c;->h:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/google/firebase/remoteconfig/c;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/remoteconfig/internal/n;

    move-result-object v12

    .line 5
    invoke-direct {p0, v8, v9}, Lcom/google/firebase/remoteconfig/c;->g(Lcom/google/firebase/remoteconfig/internal/e;Lcom/google/firebase/remoteconfig/internal/e;)Lcom/google/firebase/remoteconfig/internal/m;

    move-result-object v11

    .line 6
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/c;->d:Lb5/g;

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/c;->g:Lk6/b;

    .line 7
    invoke-static {v0, p1, v1}, Lcom/google/firebase/remoteconfig/c;->i(Lb5/g;Ljava/lang/String;Lk6/b;)Lcom/google/firebase/remoteconfig/internal/q;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 8
    new-instance v1, Lu6/k;

    invoke-direct {v1, v0}, Lu6/k;-><init>(Lcom/google/firebase/remoteconfig/internal/q;)V

    invoke-virtual {v11, v1}, Lcom/google/firebase/remoteconfig/internal/m;->b(Lcom/google/android/gms/common/util/BiConsumer;)V

    .line 9
    :cond_31
    iget-object v2, p0, Lcom/google/firebase/remoteconfig/c;->d:Lb5/g;

    iget-object v4, p0, Lcom/google/firebase/remoteconfig/c;->e:Ll6/e;

    iget-object v5, p0, Lcom/google/firebase/remoteconfig/c;->f:Lc5/c;

    iget-object v6, p0, Lcom/google/firebase/remoteconfig/c;->c:Ljava/util/concurrent/ExecutorService;

    .line 10
    invoke-virtual {p0, p1, v7, v12}, Lcom/google/firebase/remoteconfig/c;->e(Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/e;Lcom/google/firebase/remoteconfig/internal/n;)Lcom/google/firebase/remoteconfig/internal/k;

    move-result-object v10

    move-object v1, p0

    move-object v3, p1

    .line 11
    invoke-virtual/range {v1 .. v12}, Lcom/google/firebase/remoteconfig/c;->a(Lb5/g;Ljava/lang/String;Ll6/e;Lc5/c;Ljava/util/concurrent/Executor;Lcom/google/firebase/remoteconfig/internal/e;Lcom/google/firebase/remoteconfig/internal/e;Lcom/google/firebase/remoteconfig/internal/e;Lcom/google/firebase/remoteconfig/internal/k;Lcom/google/firebase/remoteconfig/internal/m;Lcom/google/firebase/remoteconfig/internal/n;)Lcom/google/firebase/remoteconfig/a;

    move-result-object p1
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_45

    monitor-exit p0

    return-object p1

    :catchall_45
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method d()Lcom/google/firebase/remoteconfig/a;
    .registers 2

    const-string v0, "firebase"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/firebase/remoteconfig/c;->b(Ljava/lang/String;)Lcom/google/firebase/remoteconfig/a;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized e(Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/e;Lcom/google/firebase/remoteconfig/internal/n;)Lcom/google/firebase/remoteconfig/internal/k;
    .registers 15

    monitor-enter p0

    .line 1
    :try_start_1
    new-instance v10, Lcom/google/firebase/remoteconfig/internal/k;

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/c;->e:Ll6/e;

    .line 2
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/c;->d:Lb5/g;

    invoke-static {v0}, Lcom/google/firebase/remoteconfig/c;->k(Lb5/g;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/c;->g:Lk6/b;

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    move-object v2, v0

    iget-object v3, p0, Lcom/google/firebase/remoteconfig/c;->c:Ljava/util/concurrent/ExecutorService;

    sget-object v4, Lcom/google/firebase/remoteconfig/c;->j:Lcom/google/android/gms/common/util/Clock;

    sget-object v5, Lcom/google/firebase/remoteconfig/c;->k:Ljava/util/Random;

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/c;->d:Lb5/g;

    .line 3
    invoke-virtual {v0}, Lb5/g;->p()Lb5/q;

    move-result-object v0

    invoke-virtual {v0}, Lb5/q;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p3}, Lcom/google/firebase/remoteconfig/c;->f(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/n;)Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;

    move-result-object v7

    iget-object v9, p0, Lcom/google/firebase/remoteconfig/c;->i:Ljava/util/Map;

    move-object v0, v10

    move-object v6, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v9}, Lcom/google/firebase/remoteconfig/internal/k;-><init>(Ll6/e;Lk6/b;Ljava/util/concurrent/Executor;Lcom/google/android/gms/common/util/Clock;Ljava/util/Random;Lcom/google/firebase/remoteconfig/internal/e;Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;Lcom/google/firebase/remoteconfig/internal/n;Ljava/util/Map;)V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_30

    .line 4
    monitor-exit p0

    return-object v10

    :catchall_30
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method f(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/n;)Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;
    .registers 14

    .line 1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/c;->d:Lb5/g;

    invoke-virtual {v0}, Lb5/g;->p()Lb5/q;

    move-result-object v0

    invoke-virtual {v0}, Lb5/q;->c()Ljava/lang/String;

    move-result-object v3

    .line 2
    new-instance v0, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;

    iget-object v2, p0, Lcom/google/firebase/remoteconfig/c;->b:Landroid/content/Context;

    .line 3
    invoke-virtual {p3}, Lcom/google/firebase/remoteconfig/internal/n;->b()J

    move-result-wide v6

    .line 4
    invoke-virtual {p3}, Lcom/google/firebase/remoteconfig/internal/n;->b()J

    move-result-wide v8

    move-object v1, v0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v9}, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    return-object v0
.end method

###### Class com.google.firebase.remoteconfig.b (com.google.firebase.remoteconfig.b)
.class public final synthetic Lcom/google/firebase/remoteconfig/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/google/firebase/remoteconfig/c;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/remoteconfig/c;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/b;->a:Lcom/google/firebase/remoteconfig/c;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/b;->a:Lcom/google/firebase/remoteconfig/c;

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/c;->d()Lcom/google/firebase/remoteconfig/a;

    move-result-object v0

    return-object v0
.end method

###### Class u6.k (u6.k)
.class public final synthetic Lu6/k;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/common/util/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/google/firebase/remoteconfig/internal/q;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/remoteconfig/internal/q;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu6/k;->a:Lcom/google/firebase/remoteconfig/internal/q;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lu6/k;->a:Lcom/google/firebase/remoteconfig/internal/q;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/google/firebase/remoteconfig/internal/f;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/remoteconfig/internal/q;->a(Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/f;)V

    return-void
.end method
