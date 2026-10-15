###### Class com.vungle.warren.ServiceLocator (com.vungle.warren.ServiceLocator)
.class Lcom/vungle/warren/ServiceLocator;
.super Ljava/lang/Object;
.source "ServiceLocator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/ServiceLocator$Creator;
    }
.end annotation


# static fields
.field private static d:Lcom/vungle/warren/ServiceLocator;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field static final e:Lcom/vungle/warren/VungleStaticApi;

.field private static final f:Lcom/vungle/warren/tasks/ReconfigJob$ReconfigCall;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lcom/vungle/warren/ServiceLocator$Creator;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/vungle/warren/ServiceLocator$1;

    invoke-direct {v0}, Lcom/vungle/warren/ServiceLocator$1;-><init>()V

    sput-object v0, Lcom/vungle/warren/ServiceLocator;->e:Lcom/vungle/warren/VungleStaticApi;

    .line 2
    new-instance v0, Lcom/vungle/warren/ServiceLocator$25;

    invoke-direct {v0}, Lcom/vungle/warren/ServiceLocator$25;-><init>()V

    sput-object v0, Lcom/vungle/warren/ServiceLocator;->f:Lcom/vungle/warren/tasks/ReconfigJob$ReconfigCall;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/ServiceLocator;->b:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/ServiceLocator;->c:Ljava/util/Map;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/warren/ServiceLocator;->a:Landroid/content/Context;

    .line 5
    invoke-direct {p0}, Lcom/vungle/warren/ServiceLocator;->d()V

    return-void
.end method

.method static synthetic a(Lcom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/warren/ServiceLocator;->g(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b()Lcom/vungle/warren/tasks/ReconfigJob$ReconfigCall;
    .registers 1

    .line 1
    sget-object v0, Lcom/vungle/warren/ServiceLocator;->f:Lcom/vungle/warren/tasks/ReconfigJob$ReconfigCall;

    return-object v0
.end method

.method static synthetic c(Lcom/vungle/warren/ServiceLocator;)Landroid/content/Context;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/ServiceLocator;->a:Landroid/content/Context;

    return-object p0
.end method

.method private d()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ServiceLocator;->b:Ljava/util/Map;

    const-class v1, Lcom/vungle/warren/tasks/JobCreator;

    new-instance v2, Lcom/vungle/warren/ServiceLocator$2;

    invoke-direct {v2, p0}, Lcom/vungle/warren/ServiceLocator$2;-><init>(Lcom/vungle/warren/ServiceLocator;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/ServiceLocator;->b:Ljava/util/Map;

    const-class v1, Lcom/vungle/warren/tasks/JobRunner;

    new-instance v2, Lcom/vungle/warren/ServiceLocator$3;

    invoke-direct {v2, p0}, Lcom/vungle/warren/ServiceLocator$3;-><init>(Lcom/vungle/warren/ServiceLocator;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/vungle/warren/ServiceLocator;->b:Ljava/util/Map;

    const-class v1, Lcom/vungle/warren/AdLoader;

    new-instance v2, Lcom/vungle/warren/ServiceLocator$4;

    invoke-direct {v2, p0}, Lcom/vungle/warren/ServiceLocator$4;-><init>(Lcom/vungle/warren/ServiceLocator;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/vungle/warren/ServiceLocator;->b:Ljava/util/Map;

    const-class v1, Lcom/vungle/warren/downloader/Downloader;

    new-instance v2, Lcom/vungle/warren/ServiceLocator$5;

    invoke-direct {v2, p0}, Lcom/vungle/warren/ServiceLocator$5;-><init>(Lcom/vungle/warren/ServiceLocator;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/vungle/warren/ServiceLocator;->b:Ljava/util/Map;

    const-class v1, Lcom/vungle/warren/VungleApiClient;

    new-instance v2, Lcom/vungle/warren/ServiceLocator$6;

    invoke-direct {v2, p0}, Lcom/vungle/warren/ServiceLocator$6;-><init>(Lcom/vungle/warren/ServiceLocator;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/vungle/warren/ServiceLocator;->b:Ljava/util/Map;

    const-class v1, Lcom/vungle/warren/persistence/Repository;

    new-instance v2, Lcom/vungle/warren/ServiceLocator$7;

    invoke-direct {v2, p0}, Lcom/vungle/warren/ServiceLocator$7;-><init>(Lcom/vungle/warren/ServiceLocator;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/vungle/warren/ServiceLocator;->b:Ljava/util/Map;

    const-class v1, Lcom/vungle/warren/log/LogManager;

    new-instance v2, Lcom/vungle/warren/ServiceLocator$8;

    invoke-direct {v2, p0}, Lcom/vungle/warren/ServiceLocator$8;-><init>(Lcom/vungle/warren/ServiceLocator;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/vungle/warren/ServiceLocator;->b:Ljava/util/Map;

    const-class v1, Lcom/vungle/warren/persistence/Designer;

    new-instance v2, Lcom/vungle/warren/ServiceLocator$9;

    invoke-direct {v2, p0}, Lcom/vungle/warren/ServiceLocator$9;-><init>(Lcom/vungle/warren/ServiceLocator;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcom/vungle/warren/ServiceLocator;->b:Ljava/util/Map;

    const-class v1, Lcom/vungle/warren/persistence/CacheManager;

    new-instance v2, Lcom/vungle/warren/ServiceLocator$10;

    invoke-direct {v2, p0}, Lcom/vungle/warren/ServiceLocator$10;-><init>(Lcom/vungle/warren/ServiceLocator;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lcom/vungle/warren/ServiceLocator;->b:Ljava/util/Map;

    const-class v1, Lcom/vungle/warren/utility/platform/Platform;

    new-instance v2, Lcom/vungle/warren/ServiceLocator$11;

    invoke-direct {v2, p0}, Lcom/vungle/warren/ServiceLocator$11;-><init>(Lcom/vungle/warren/ServiceLocator;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lcom/vungle/warren/ServiceLocator;->b:Ljava/util/Map;

    const-class v1, Lcom/vungle/warren/utility/Executors;

    new-instance v2, Lcom/vungle/warren/ServiceLocator$12;

    invoke-direct {v2, p0}, Lcom/vungle/warren/ServiceLocator$12;-><init>(Lcom/vungle/warren/ServiceLocator;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Lcom/vungle/warren/ServiceLocator;->b:Ljava/util/Map;

    const-class v1, Lcom/vungle/warren/RuntimeValues;

    new-instance v2, Lcom/vungle/warren/ServiceLocator$13;

    invoke-direct {v2, p0}, Lcom/vungle/warren/ServiceLocator$13;-><init>(Lcom/vungle/warren/ServiceLocator;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lcom/vungle/warren/ServiceLocator;->b:Ljava/util/Map;

    const-class v1, Lcom/vungle/warren/VungleStaticApi;

    new-instance v2, Lcom/vungle/warren/ServiceLocator$14;

    invoke-direct {v2, p0}, Lcom/vungle/warren/ServiceLocator$14;-><init>(Lcom/vungle/warren/ServiceLocator;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v0, p0, Lcom/vungle/warren/ServiceLocator;->b:Ljava/util/Map;

    const-class v1, Lcom/vungle/warren/PresentationFactory;

    new-instance v2, Lcom/vungle/warren/ServiceLocator$15;

    invoke-direct {v2, p0}, Lcom/vungle/warren/ServiceLocator$15;-><init>(Lcom/vungle/warren/ServiceLocator;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v0, p0, Lcom/vungle/warren/ServiceLocator;->b:Ljava/util/Map;

    const-class v1, Lcom/vungle/warren/downloader/DownloaderCache;

    new-instance v2, Lcom/vungle/warren/ServiceLocator$16;

    invoke-direct {v2, p0}, Lcom/vungle/warren/ServiceLocator$16;-><init>(Lcom/vungle/warren/ServiceLocator;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, p0, Lcom/vungle/warren/ServiceLocator;->b:Ljava/util/Map;

    const-class v1, Lcom/vungle/warren/VisionController;

    new-instance v2, Lcom/vungle/warren/ServiceLocator$17;

    invoke-direct {v2, p0}, Lcom/vungle/warren/ServiceLocator$17;-><init>(Lcom/vungle/warren/ServiceLocator;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v0, p0, Lcom/vungle/warren/ServiceLocator;->b:Ljava/util/Map;

    const-class v1, Lcom/vungle/warren/utility/TimeoutProvider;

    new-instance v2, Lcom/vungle/warren/ServiceLocator$18;

    invoke-direct {v2, p0}, Lcom/vungle/warren/ServiceLocator$18;-><init>(Lcom/vungle/warren/ServiceLocator;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v0, p0, Lcom/vungle/warren/ServiceLocator;->b:Ljava/util/Map;

    const-class v1, Lcom/vungle/warren/OperationSequence;

    new-instance v2, Lcom/vungle/warren/ServiceLocator$19;

    invoke-direct {v2, p0}, Lcom/vungle/warren/ServiceLocator$19;-><init>(Lcom/vungle/warren/ServiceLocator;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v0, p0, Lcom/vungle/warren/ServiceLocator;->b:Ljava/util/Map;

    const-class v1, Lcom/vungle/warren/utility/AppSession;

    new-instance v2, Lcom/vungle/warren/ServiceLocator$20;

    invoke-direct {v2, p0}, Lcom/vungle/warren/ServiceLocator$20;-><init>(Lcom/vungle/warren/ServiceLocator;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v0, p0, Lcom/vungle/warren/ServiceLocator;->b:Ljava/util/Map;

    const-class v1, Lcom/vungle/warren/omsdk/OMInjector;

    new-instance v2, Lcom/vungle/warren/ServiceLocator$21;

    invoke-direct {v2, p0}, Lcom/vungle/warren/ServiceLocator$21;-><init>(Lcom/vungle/warren/ServiceLocator;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v0, p0, Lcom/vungle/warren/ServiceLocator;->b:Ljava/util/Map;

    const-class v1, Lcom/vungle/warren/omsdk/OMTracker$Factory;

    new-instance v2, Lcom/vungle/warren/ServiceLocator$22;

    invoke-direct {v2, p0}, Lcom/vungle/warren/ServiceLocator$22;-><init>(Lcom/vungle/warren/ServiceLocator;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lcom/vungle/warren/ServiceLocator;->b:Ljava/util/Map;

    const-class v1, Lcom/vungle/warren/CacheBustManager;

    new-instance v2, Lcom/vungle/warren/ServiceLocator$23;

    invoke-direct {v2, p0}, Lcom/vungle/warren/ServiceLocator$23;-><init>(Lcom/vungle/warren/ServiceLocator;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v0, p0, Lcom/vungle/warren/ServiceLocator;->b:Ljava/util/Map;

    const-class v1, Lcom/vungle/warren/persistence/FilePreferences;

    new-instance v2, Lcom/vungle/warren/ServiceLocator$24;

    invoke-direct {v2, p0}, Lcom/vungle/warren/ServiceLocator$24;-><init>(Lcom/vungle/warren/ServiceLocator;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static declared-synchronized e()V
    .registers 2

    const-class v0, Lcom/vungle/warren/ServiceLocator;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1
    :try_start_4
    sput-object v1, Lcom/vungle/warren/ServiceLocator;->d:Lcom/vungle/warren/ServiceLocator;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_8

    .line 2
    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized f(Landroid/content/Context;)Lcom/vungle/warren/ServiceLocator;
    .registers 3

    const-class v0, Lcom/vungle/warren/ServiceLocator;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Lcom/vungle/warren/ServiceLocator;->d:Lcom/vungle/warren/ServiceLocator;

    if-nez v1, :cond_e

    .line 2
    new-instance v1, Lcom/vungle/warren/ServiceLocator;

    invoke-direct {v1, p0}, Lcom/vungle/warren/ServiceLocator;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/vungle/warren/ServiceLocator;->d:Lcom/vungle/warren/ServiceLocator;

    .line 3
    :cond_e
    sget-object p0, Lcom/vungle/warren/ServiceLocator;->d:Lcom/vungle/warren/ServiceLocator;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private g(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
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
    invoke-direct {p0, p1}, Lcom/vungle/warren/ServiceLocator;->i(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/ServiceLocator;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2f

    .line 3
    iget-object v0, p0, Lcom/vungle/warren/ServiceLocator;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/ServiceLocator$Creator;

    if-eqz v0, :cond_27

    .line 4
    invoke-virtual {v0}, Lcom/vungle/warren/ServiceLocator$Creator;->create()Ljava/lang/Object;

    move-result-object v1

    .line 5
    invoke-virtual {v0}, Lcom/vungle/warren/ServiceLocator$Creator;->a()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 6
    iget-object v0, p0, Lcom/vungle/warren/ServiceLocator;->c:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    move-object v0, v1

    goto :goto_2f

    .line 7
    :cond_27
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown class"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2f
    :goto_2f
    return-object v0
.end method

.method private i(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ServiceLocator;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 2
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_a

    return-object v1

    .line 3
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown dependency for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_35

    :goto_34
    throw v0

    :goto_35
    goto :goto_34
.end method


# virtual methods
.method declared-synchronized h(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/vungle/warren/ServiceLocator;->g(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-object p1

    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized j(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/vungle/warren/ServiceLocator;->c:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/vungle/warren/ServiceLocator;->i(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return p1

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

###### Class com.vungle.warren.ServiceLocator.AnonymousClass1 (com.vungle.warren.ServiceLocator$1)
.class Lcom/vungle/warren/ServiceLocator$1;
.super Ljava/lang/Object;
.source "ServiceLocator.java"

# interfaces
.implements Lcom/vungle/warren/VungleStaticApi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/ServiceLocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getValidPlacements()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/vungle/warren/Vungle;->getValidPlacements()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .registers 2

    .line 1
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    return v0
.end method

###### Class com.vungle.warren.ServiceLocator.AnonymousClass10 (com.vungle.warren.ServiceLocator$10)
.class Lcom/vungle/warren/ServiceLocator$10;
.super Lcom/vungle/warren/ServiceLocator$Creator;
.source "ServiceLocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ServiceLocator;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/vungle/warren/ServiceLocator;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ServiceLocator;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/ServiceLocator$10;->b:Lcom/vungle/warren/ServiceLocator;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vungle/warren/ServiceLocator$Creator;-><init>(Lcom/vungle/warren/ServiceLocator;Lcom/vungle/warren/ServiceLocator$1;)V

    return-void
.end method


# virtual methods
.method public create()Lcom/vungle/warren/persistence/CacheManager;
    .registers 5

    .line 2
    new-instance v0, Lcom/vungle/warren/persistence/CacheManager;

    iget-object v1, p0, Lcom/vungle/warren/ServiceLocator$10;->b:Lcom/vungle/warren/ServiceLocator;

    invoke-static {v1}, Lcom/vungle/warren/ServiceLocator;->c(Lcom/vungle/warren/ServiceLocator;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/warren/ServiceLocator$10;->b:Lcom/vungle/warren/ServiceLocator;

    const-class v3, Lcom/vungle/warren/persistence/FilePreferences;

    invoke-static {v2, v3}, Lcom/vungle/warren/ServiceLocator;->a(Lcom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/persistence/FilePreferences;

    invoke-direct {v0, v1, v2}, Lcom/vungle/warren/persistence/CacheManager;-><init>(Landroid/content/Context;Lcom/vungle/warren/persistence/FilePreferences;)V

    return-object v0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/ServiceLocator$10;->create()Lcom/vungle/warren/persistence/CacheManager;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.warren.ServiceLocator.AnonymousClass11 (com.vungle.warren.ServiceLocator$11)
.class Lcom/vungle/warren/ServiceLocator$11;
.super Lcom/vungle/warren/ServiceLocator$Creator;
.source "ServiceLocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ServiceLocator;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/warren/ServiceLocator$Creator<",
        "Lcom/vungle/warren/utility/platform/Platform;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/vungle/warren/ServiceLocator;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ServiceLocator;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/ServiceLocator$11;->b:Lcom/vungle/warren/ServiceLocator;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vungle/warren/ServiceLocator$Creator;-><init>(Lcom/vungle/warren/ServiceLocator;Lcom/vungle/warren/ServiceLocator$1;)V

    return-void
.end method


# virtual methods
.method public create()Lcom/vungle/warren/utility/platform/Platform;
    .registers 2

    .line 2
    new-instance v0, Lcom/vungle/warren/utility/platform/AndroidPlatform;

    invoke-direct {v0}, Lcom/vungle/warren/utility/platform/AndroidPlatform;-><init>()V

    return-object v0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/ServiceLocator$11;->create()Lcom/vungle/warren/utility/platform/Platform;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.warren.ServiceLocator.AnonymousClass12 (com.vungle.warren.ServiceLocator$12)
.class Lcom/vungle/warren/ServiceLocator$12;
.super Lcom/vungle/warren/ServiceLocator$Creator;
.source "ServiceLocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ServiceLocator;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/vungle/warren/ServiceLocator;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ServiceLocator;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/ServiceLocator$12;->b:Lcom/vungle/warren/ServiceLocator;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vungle/warren/ServiceLocator$Creator;-><init>(Lcom/vungle/warren/ServiceLocator;Lcom/vungle/warren/ServiceLocator$1;)V

    return-void
.end method


# virtual methods
.method public create()Lcom/vungle/warren/utility/Executors;
    .registers 2

    .line 2
    new-instance v0, Lcom/vungle/warren/utility/SDKExecutors;

    invoke-direct {v0}, Lcom/vungle/warren/utility/SDKExecutors;-><init>()V

    return-object v0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/ServiceLocator$12;->create()Lcom/vungle/warren/utility/Executors;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.warren.ServiceLocator.AnonymousClass13 (com.vungle.warren.ServiceLocator$13)
.class Lcom/vungle/warren/ServiceLocator$13;
.super Lcom/vungle/warren/ServiceLocator$Creator;
.source "ServiceLocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ServiceLocator;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/vungle/warren/ServiceLocator;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ServiceLocator;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/ServiceLocator$13;->b:Lcom/vungle/warren/ServiceLocator;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vungle/warren/ServiceLocator$Creator;-><init>(Lcom/vungle/warren/ServiceLocator;Lcom/vungle/warren/ServiceLocator$1;)V

    return-void
.end method


# virtual methods
.method public create()Lcom/vungle/warren/RuntimeValues;
    .registers 2

    .line 2
    new-instance v0, Lcom/vungle/warren/RuntimeValues;

    invoke-direct {v0}, Lcom/vungle/warren/RuntimeValues;-><init>()V

    return-object v0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/ServiceLocator$13;->create()Lcom/vungle/warren/RuntimeValues;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.warren.ServiceLocator.AnonymousClass14 (com.vungle.warren.ServiceLocator$14)
.class Lcom/vungle/warren/ServiceLocator$14;
.super Lcom/vungle/warren/ServiceLocator$Creator;
.source "ServiceLocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ServiceLocator;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/vungle/warren/ServiceLocator;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ServiceLocator;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/ServiceLocator$14;->b:Lcom/vungle/warren/ServiceLocator;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vungle/warren/ServiceLocator$Creator;-><init>(Lcom/vungle/warren/ServiceLocator;Lcom/vungle/warren/ServiceLocator$1;)V

    return-void
.end method


# virtual methods
.method public create()Lcom/vungle/warren/VungleStaticApi;
    .registers 2

    .line 2
    sget-object v0, Lcom/vungle/warren/ServiceLocator;->e:Lcom/vungle/warren/VungleStaticApi;

    return-object v0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/ServiceLocator$14;->create()Lcom/vungle/warren/VungleStaticApi;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.warren.ServiceLocator.AnonymousClass15 (com.vungle.warren.ServiceLocator$15)
.class Lcom/vungle/warren/ServiceLocator$15;
.super Lcom/vungle/warren/ServiceLocator$Creator;
.source "ServiceLocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ServiceLocator;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/vungle/warren/ServiceLocator;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ServiceLocator;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/ServiceLocator$15;->b:Lcom/vungle/warren/ServiceLocator;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vungle/warren/ServiceLocator$Creator;-><init>(Lcom/vungle/warren/ServiceLocator;Lcom/vungle/warren/ServiceLocator$1;)V

    return-void
.end method


# virtual methods
.method a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public create()Lcom/vungle/warren/PresentationFactory;
    .registers 11

    .line 2
    new-instance v9, Lcom/vungle/warren/AdvertisementPresentationFactory;

    iget-object v0, p0, Lcom/vungle/warren/ServiceLocator$15;->b:Lcom/vungle/warren/ServiceLocator;

    const-class v1, Lcom/vungle/warren/AdLoader;

    .line 3
    invoke-static {v0, v1}, Lcom/vungle/warren/ServiceLocator;->a(Lcom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/vungle/warren/AdLoader;

    iget-object v0, p0, Lcom/vungle/warren/ServiceLocator$15;->b:Lcom/vungle/warren/ServiceLocator;

    const-class v2, Lcom/vungle/warren/VungleStaticApi;

    .line 4
    invoke-static {v0, v2}, Lcom/vungle/warren/ServiceLocator;->a(Lcom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/vungle/warren/VungleStaticApi;

    iget-object v0, p0, Lcom/vungle/warren/ServiceLocator$15;->b:Lcom/vungle/warren/ServiceLocator;

    const-class v3, Lcom/vungle/warren/persistence/Repository;

    .line 5
    invoke-static {v0, v3}, Lcom/vungle/warren/ServiceLocator;->a(Lcom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/vungle/warren/persistence/Repository;

    iget-object v0, p0, Lcom/vungle/warren/ServiceLocator$15;->b:Lcom/vungle/warren/ServiceLocator;

    const-class v4, Lcom/vungle/warren/VungleApiClient;

    .line 6
    invoke-static {v0, v4}, Lcom/vungle/warren/ServiceLocator;->a(Lcom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/vungle/warren/VungleApiClient;

    iget-object v0, p0, Lcom/vungle/warren/ServiceLocator$15;->b:Lcom/vungle/warren/ServiceLocator;

    const-class v5, Lcom/vungle/warren/tasks/JobRunner;

    .line 7
    invoke-static {v0, v5}, Lcom/vungle/warren/ServiceLocator;->a(Lcom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/vungle/warren/tasks/JobRunner;

    iget-object v0, p0, Lcom/vungle/warren/ServiceLocator$15;->b:Lcom/vungle/warren/ServiceLocator;

    const-class v6, Lcom/vungle/warren/RuntimeValues;

    .line 8
    invoke-static {v0, v6}, Lcom/vungle/warren/ServiceLocator;->a(Lcom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/vungle/warren/RuntimeValues;

    iget-object v0, p0, Lcom/vungle/warren/ServiceLocator$15;->b:Lcom/vungle/warren/ServiceLocator;

    const-class v7, Lcom/vungle/warren/omsdk/OMTracker$Factory;

    .line 9
    invoke-static {v0, v7}, Lcom/vungle/warren/ServiceLocator;->a(Lcom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/vungle/warren/omsdk/OMTracker$Factory;

    iget-object v0, p0, Lcom/vungle/warren/ServiceLocator$15;->b:Lcom/vungle/warren/ServiceLocator;

    const-class v8, Lcom/vungle/warren/utility/Executors;

    .line 10
    invoke-static {v0, v8}, Lcom/vungle/warren/ServiceLocator;->a(Lcom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/utility/Executors;

    invoke-interface {v0}, Lcom/vungle/warren/utility/Executors;->getTaskExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/vungle/warren/AdvertisementPresentationFactory;-><init>(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/VungleStaticApi;Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/VungleApiClient;Lcom/vungle/warren/tasks/JobRunner;Lcom/vungle/warren/RuntimeValues;Lcom/vungle/warren/omsdk/OMTracker$Factory;Ljava/util/concurrent/ExecutorService;)V

    return-object v9
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/ServiceLocator$15;->create()Lcom/vungle/warren/PresentationFactory;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.warren.ServiceLocator.AnonymousClass16 (com.vungle.warren.ServiceLocator$16)
.class Lcom/vungle/warren/ServiceLocator$16;
.super Lcom/vungle/warren/ServiceLocator$Creator;
.source "ServiceLocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ServiceLocator;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/vungle/warren/ServiceLocator;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ServiceLocator;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/ServiceLocator$16;->b:Lcom/vungle/warren/ServiceLocator;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vungle/warren/ServiceLocator$Creator;-><init>(Lcom/vungle/warren/ServiceLocator;Lcom/vungle/warren/ServiceLocator$1;)V

    return-void
.end method


# virtual methods
.method create()Ljava/lang/Object;
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ServiceLocator$16;->b:Lcom/vungle/warren/ServiceLocator;

    const-class v1, Lcom/vungle/warren/persistence/CacheManager;

    invoke-static {v0, v1}, Lcom/vungle/warren/ServiceLocator;->a(Lcom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/vungle/warren/persistence/CacheManager;

    .line 2
    new-instance v0, Lcom/vungle/warren/downloader/CleverCache;

    new-instance v3, Lcom/vungle/warren/downloader/LRUCachePolicy;

    const-string v1, "clever_cache"

    invoke-direct {v3, v2, v1}, Lcom/vungle/warren/downloader/LRUCachePolicy;-><init>(Lcom/vungle/warren/persistence/CacheManager;Ljava/lang/String;)V

    new-instance v4, Lcom/vungle/warren/DownloaderSizeProvider;

    iget-object v1, p0, Lcom/vungle/warren/ServiceLocator$16;->b:Lcom/vungle/warren/ServiceLocator;

    const-class v5, Lcom/vungle/warren/RuntimeValues;

    .line 3
    invoke-static {v1, v5}, Lcom/vungle/warren/ServiceLocator;->a(Lcom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/RuntimeValues;

    const v5, 0x3dcccccd    # 0.1f

    invoke-direct {v4, v2, v1, v5}, Lcom/vungle/warren/DownloaderSizeProvider;-><init>(Lcom/vungle/warren/persistence/CacheManager;Lcom/vungle/warren/RuntimeValues;F)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x5a

    .line 4
    invoke-virtual {v1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/vungle/warren/downloader/CleverCache;-><init>(Lcom/vungle/warren/persistence/CacheManager;Lcom/vungle/warren/downloader/CachePolicy;Lcom/vungle/warren/SizeProvider;J)V

    return-object v0
.end method

###### Class com.vungle.warren.ServiceLocator.AnonymousClass17 (com.vungle.warren.ServiceLocator$17)
.class Lcom/vungle/warren/ServiceLocator$17;
.super Lcom/vungle/warren/ServiceLocator$Creator;
.source "ServiceLocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ServiceLocator;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/vungle/warren/ServiceLocator;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ServiceLocator;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/ServiceLocator$17;->b:Lcom/vungle/warren/ServiceLocator;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vungle/warren/ServiceLocator$Creator;-><init>(Lcom/vungle/warren/ServiceLocator;Lcom/vungle/warren/ServiceLocator$1;)V

    return-void
.end method


# virtual methods
.method public create()Lcom/vungle/warren/VisionController;
    .registers 4

    .line 2
    new-instance v0, Lcom/vungle/warren/VisionController;

    iget-object v1, p0, Lcom/vungle/warren/ServiceLocator$17;->b:Lcom/vungle/warren/ServiceLocator;

    const-class v2, Lcom/vungle/warren/persistence/Repository;

    invoke-static {v1, v2}, Lcom/vungle/warren/ServiceLocator;->a(Lcom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/persistence/Repository;

    iget-object v2, p0, Lcom/vungle/warren/ServiceLocator$17;->b:Lcom/vungle/warren/ServiceLocator;

    invoke-static {v2}, Lcom/vungle/warren/ServiceLocator;->c(Lcom/vungle/warren/ServiceLocator;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/vungle/warren/utility/NetworkProvider;->getInstance(Landroid/content/Context;)Lcom/vungle/warren/utility/NetworkProvider;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vungle/warren/VisionController;-><init>(Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/utility/NetworkProvider;)V

    return-object v0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/ServiceLocator$17;->create()Lcom/vungle/warren/VisionController;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.warren.ServiceLocator.AnonymousClass18 (com.vungle.warren.ServiceLocator$18)
.class Lcom/vungle/warren/ServiceLocator$18;
.super Lcom/vungle/warren/ServiceLocator$Creator;
.source "ServiceLocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ServiceLocator;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/vungle/warren/ServiceLocator;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ServiceLocator;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/ServiceLocator$18;->b:Lcom/vungle/warren/ServiceLocator;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vungle/warren/ServiceLocator$Creator;-><init>(Lcom/vungle/warren/ServiceLocator;Lcom/vungle/warren/ServiceLocator$1;)V

    return-void
.end method


# virtual methods
.method public create()Lcom/vungle/warren/utility/TimeoutProvider;
    .registers 2

    .line 2
    new-instance v0, Lcom/vungle/warren/utility/ConcurrencyTimeoutProvider;

    invoke-direct {v0}, Lcom/vungle/warren/utility/ConcurrencyTimeoutProvider;-><init>()V

    return-object v0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/ServiceLocator$18;->create()Lcom/vungle/warren/utility/TimeoutProvider;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.warren.ServiceLocator.AnonymousClass19 (com.vungle.warren.ServiceLocator$19)
.class Lcom/vungle/warren/ServiceLocator$19;
.super Lcom/vungle/warren/ServiceLocator$Creator;
.source "ServiceLocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ServiceLocator;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/vungle/warren/ServiceLocator;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ServiceLocator;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/ServiceLocator$19;->b:Lcom/vungle/warren/ServiceLocator;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vungle/warren/ServiceLocator$Creator;-><init>(Lcom/vungle/warren/ServiceLocator;Lcom/vungle/warren/ServiceLocator$1;)V

    return-void
.end method


# virtual methods
.method public create()Lcom/vungle/warren/OperationSequence;
    .registers 2

    .line 2
    new-instance v0, Lcom/vungle/warren/OperationSequence;

    invoke-direct {v0}, Lcom/vungle/warren/OperationSequence;-><init>()V

    return-object v0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/ServiceLocator$19;->create()Lcom/vungle/warren/OperationSequence;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.warren.ServiceLocator.AnonymousClass2 (com.vungle.warren.ServiceLocator$2)
.class Lcom/vungle/warren/ServiceLocator$2;
.super Lcom/vungle/warren/ServiceLocator$Creator;
.source "ServiceLocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ServiceLocator;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/vungle/warren/ServiceLocator;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ServiceLocator;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/ServiceLocator$2;->b:Lcom/vungle/warren/ServiceLocator;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vungle/warren/ServiceLocator$Creator;-><init>(Lcom/vungle/warren/ServiceLocator;Lcom/vungle/warren/ServiceLocator$1;)V

    return-void
.end method


# virtual methods
.method public create()Lcom/vungle/warren/tasks/JobCreator;
    .registers 14

    .line 2
    const-class v0, Lcom/vungle/warren/VungleApiClient;

    const-class v1, Lcom/vungle/warren/persistence/Repository;

    new-instance v12, Lcom/vungle/warren/tasks/VungleJobCreator;

    iget-object v2, p0, Lcom/vungle/warren/ServiceLocator$2;->b:Lcom/vungle/warren/ServiceLocator;

    .line 3
    invoke-static {v2, v1}, Lcom/vungle/warren/ServiceLocator;->a(Lcom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/vungle/warren/persistence/Repository;

    iget-object v2, p0, Lcom/vungle/warren/ServiceLocator$2;->b:Lcom/vungle/warren/ServiceLocator;

    const-class v4, Lcom/vungle/warren/persistence/Designer;

    .line 4
    invoke-static {v2, v4}, Lcom/vungle/warren/ServiceLocator;->a(Lcom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/vungle/warren/persistence/Designer;

    iget-object v2, p0, Lcom/vungle/warren/ServiceLocator$2;->b:Lcom/vungle/warren/ServiceLocator;

    .line 5
    invoke-static {v2, v0}, Lcom/vungle/warren/ServiceLocator;->a(Lcom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/vungle/warren/VungleApiClient;

    new-instance v6, Lcom/vungle/warren/analytics/VungleAnalytics;

    iget-object v2, p0, Lcom/vungle/warren/ServiceLocator$2;->b:Lcom/vungle/warren/ServiceLocator;

    .line 6
    invoke-static {v2, v0}, Lcom/vungle/warren/ServiceLocator;->a(Lcom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/VungleApiClient;

    iget-object v2, p0, Lcom/vungle/warren/ServiceLocator$2;->b:Lcom/vungle/warren/ServiceLocator;

    invoke-static {v2, v1}, Lcom/vungle/warren/ServiceLocator;->a(Lcom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/persistence/Repository;

    invoke-direct {v6, v0, v1}, Lcom/vungle/warren/analytics/VungleAnalytics;-><init>(Lcom/vungle/warren/VungleApiClient;Lcom/vungle/warren/persistence/Repository;)V

    .line 7
    invoke-static {}, Lcom/vungle/warren/ServiceLocator;->b()Lcom/vungle/warren/tasks/ReconfigJob$ReconfigCall;

    move-result-object v7

    iget-object v0, p0, Lcom/vungle/warren/ServiceLocator$2;->b:Lcom/vungle/warren/ServiceLocator;

    const-class v1, Lcom/vungle/warren/AdLoader;

    .line 8
    invoke-static {v0, v1}, Lcom/vungle/warren/ServiceLocator;->a(Lcom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/vungle/warren/AdLoader;

    sget-object v9, Lcom/vungle/warren/ServiceLocator;->e:Lcom/vungle/warren/VungleStaticApi;

    iget-object v0, p0, Lcom/vungle/warren/ServiceLocator$2;->b:Lcom/vungle/warren/ServiceLocator;

    const-class v1, Lcom/vungle/warren/log/LogManager;

    .line 9
    invoke-static {v0, v1}, Lcom/vungle/warren/ServiceLocator;->a(Lcom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/vungle/warren/log/LogManager;

    iget-object v0, p0, Lcom/vungle/warren/ServiceLocator$2;->b:Lcom/vungle/warren/ServiceLocator;

    const-class v1, Lcom/vungle/warren/utility/Executors;

    .line 10
    invoke-static {v0, v1}, Lcom/vungle/warren/ServiceLocator;->a(Lcom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/utility/Executors;

    invoke-interface {v0}, Lcom/vungle/warren/utility/Executors;->getBackgroundExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v11

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Lcom/vungle/warren/tasks/VungleJobCreator;-><init>(Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/persistence/Designer;Lcom/vungle/warren/VungleApiClient;Lcom/vungle/warren/analytics/AdAnalytics;Lcom/vungle/warren/tasks/ReconfigJob$ReconfigCall;Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/VungleStaticApi;Lcom/vungle/warren/log/LogManager;Ljava/util/concurrent/ExecutorService;)V

    return-object v12
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/ServiceLocator$2;->create()Lcom/vungle/warren/tasks/JobCreator;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.warren.ServiceLocator.AnonymousClass20 (com.vungle.warren.ServiceLocator$20)
.class Lcom/vungle/warren/ServiceLocator$20;
.super Lcom/vungle/warren/ServiceLocator$Creator;
.source "ServiceLocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ServiceLocator;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/warren/ServiceLocator$Creator<",
        "Lcom/vungle/warren/utility/AppSession;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/vungle/warren/ServiceLocator;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ServiceLocator;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/ServiceLocator$20;->b:Lcom/vungle/warren/ServiceLocator;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vungle/warren/ServiceLocator$Creator;-><init>(Lcom/vungle/warren/ServiceLocator;Lcom/vungle/warren/ServiceLocator$1;)V

    return-void
.end method


# virtual methods
.method b()Lcom/vungle/warren/utility/AppSession;
    .registers 2

    .line 1
    new-instance v0, Lcom/vungle/warren/utility/AppSession;

    invoke-direct {v0}, Lcom/vungle/warren/utility/AppSession;-><init>()V

    return-object v0
.end method

.method bridge synthetic create()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/ServiceLocator$20;->b()Lcom/vungle/warren/utility/AppSession;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.warren.ServiceLocator.AnonymousClass21 (com.vungle.warren.ServiceLocator$21)
.class Lcom/vungle/warren/ServiceLocator$21;
.super Lcom/vungle/warren/ServiceLocator$Creator;
.source "ServiceLocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ServiceLocator;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/warren/ServiceLocator$Creator<",
        "Lcom/vungle/warren/omsdk/OMInjector;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/vungle/warren/ServiceLocator;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ServiceLocator;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/ServiceLocator$21;->b:Lcom/vungle/warren/ServiceLocator;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vungle/warren/ServiceLocator$Creator;-><init>(Lcom/vungle/warren/ServiceLocator;Lcom/vungle/warren/ServiceLocator$1;)V

    return-void
.end method


# virtual methods
.method public create()Lcom/vungle/warren/omsdk/OMInjector;
    .registers 3

    .line 2
    new-instance v0, Lcom/vungle/warren/omsdk/OMInjector;

    iget-object v1, p0, Lcom/vungle/warren/ServiceLocator$21;->b:Lcom/vungle/warren/ServiceLocator;

    invoke-static {v1}, Lcom/vungle/warren/ServiceLocator;->c(Lcom/vungle/warren/ServiceLocator;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vungle/warren/omsdk/OMInjector;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/ServiceLocator$21;->create()Lcom/vungle/warren/omsdk/OMInjector;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.warren.ServiceLocator.AnonymousClass22 (com.vungle.warren.ServiceLocator$22)
.class Lcom/vungle/warren/ServiceLocator$22;
.super Lcom/vungle/warren/ServiceLocator$Creator;
.source "ServiceLocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ServiceLocator;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/warren/ServiceLocator$Creator<",
        "Lcom/vungle/warren/omsdk/OMTracker$Factory;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/vungle/warren/ServiceLocator;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ServiceLocator;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/ServiceLocator$22;->b:Lcom/vungle/warren/ServiceLocator;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vungle/warren/ServiceLocator$Creator;-><init>(Lcom/vungle/warren/ServiceLocator;Lcom/vungle/warren/ServiceLocator$1;)V

    return-void
.end method


# virtual methods
.method public create()Lcom/vungle/warren/omsdk/OMTracker$Factory;
    .registers 2

    .line 2
    new-instance v0, Lcom/vungle/warren/omsdk/OMTracker$Factory;

    invoke-direct {v0}, Lcom/vungle/warren/omsdk/OMTracker$Factory;-><init>()V

    return-object v0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/ServiceLocator$22;->create()Lcom/vungle/warren/omsdk/OMTracker$Factory;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.warren.ServiceLocator.AnonymousClass23 (com.vungle.warren.ServiceLocator$23)
.class Lcom/vungle/warren/ServiceLocator$23;
.super Lcom/vungle/warren/ServiceLocator$Creator;
.source "ServiceLocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ServiceLocator;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/warren/ServiceLocator$Creator<",
        "Lcom/vungle/warren/CacheBustManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/vungle/warren/ServiceLocator;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ServiceLocator;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/ServiceLocator$23;->b:Lcom/vungle/warren/ServiceLocator;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vungle/warren/ServiceLocator$Creator;-><init>(Lcom/vungle/warren/ServiceLocator;Lcom/vungle/warren/ServiceLocator$1;)V

    return-void
.end method


# virtual methods
.method public create()Lcom/vungle/warren/CacheBustManager;
    .registers 4

    .line 2
    new-instance v0, Lcom/vungle/warren/CacheBustManager;

    iget-object v1, p0, Lcom/vungle/warren/ServiceLocator$23;->b:Lcom/vungle/warren/ServiceLocator;

    const-class v2, Lcom/vungle/warren/tasks/JobRunner;

    invoke-static {v1, v2}, Lcom/vungle/warren/ServiceLocator;->a(Lcom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/tasks/JobRunner;

    invoke-direct {v0, v1}, Lcom/vungle/warren/CacheBustManager;-><init>(Lcom/vungle/warren/tasks/JobRunner;)V

    return-object v0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/ServiceLocator$23;->create()Lcom/vungle/warren/CacheBustManager;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.warren.ServiceLocator.AnonymousClass24 (com.vungle.warren.ServiceLocator$24)
.class Lcom/vungle/warren/ServiceLocator$24;
.super Lcom/vungle/warren/ServiceLocator$Creator;
.source "ServiceLocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ServiceLocator;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/warren/ServiceLocator$Creator<",
        "Lcom/vungle/warren/persistence/FilePreferences;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/vungle/warren/ServiceLocator;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ServiceLocator;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/ServiceLocator$24;->b:Lcom/vungle/warren/ServiceLocator;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vungle/warren/ServiceLocator$Creator;-><init>(Lcom/vungle/warren/ServiceLocator;Lcom/vungle/warren/ServiceLocator$1;)V

    return-void
.end method


# virtual methods
.method public create()Lcom/vungle/warren/persistence/FilePreferences;
    .registers 5

    .line 2
    new-instance v0, Lcom/vungle/warren/persistence/FilePreferences;

    iget-object v1, p0, Lcom/vungle/warren/ServiceLocator$24;->b:Lcom/vungle/warren/ServiceLocator;

    invoke-static {v1}, Lcom/vungle/warren/ServiceLocator;->c(Lcom/vungle/warren/ServiceLocator;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/warren/ServiceLocator$24;->b:Lcom/vungle/warren/ServiceLocator;

    const-class v3, Lcom/vungle/warren/utility/Executors;

    invoke-static {v2, v3}, Lcom/vungle/warren/ServiceLocator;->a(Lcom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/utility/Executors;

    invoke-interface {v2}, Lcom/vungle/warren/utility/Executors;->getIOExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vungle/warren/persistence/FilePreferences;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/ServiceLocator$24;->create()Lcom/vungle/warren/persistence/FilePreferences;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.warren.ServiceLocator.AnonymousClass25 (com.vungle.warren.ServiceLocator$25)
.class Lcom/vungle/warren/ServiceLocator$25;
.super Ljava/lang/Object;
.source "ServiceLocator.java"

# interfaces
.implements Lcom/vungle/warren/tasks/ReconfigJob$ReconfigCall;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/ServiceLocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reConfigVungle()V
    .registers 1

    .line 1
    invoke-static {}, Lcom/vungle/warren/Vungle;->reConfigure()V

    return-void
.end method

###### Class com.vungle.warren.ServiceLocator.AnonymousClass3 (com.vungle.warren.ServiceLocator$3)
.class Lcom/vungle/warren/ServiceLocator$3;
.super Lcom/vungle/warren/ServiceLocator$Creator;
.source "ServiceLocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ServiceLocator;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/vungle/warren/ServiceLocator;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ServiceLocator;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/ServiceLocator$3;->b:Lcom/vungle/warren/ServiceLocator;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vungle/warren/ServiceLocator$Creator;-><init>(Lcom/vungle/warren/ServiceLocator;Lcom/vungle/warren/ServiceLocator$1;)V

    return-void
.end method


# virtual methods
.method public create()Lcom/vungle/warren/tasks/JobRunner;
    .registers 6

    .line 2
    new-instance v0, Lcom/vungle/warren/VungleJobRunner;

    iget-object v1, p0, Lcom/vungle/warren/ServiceLocator$3;->b:Lcom/vungle/warren/ServiceLocator;

    const-class v2, Lcom/vungle/warren/tasks/JobCreator;

    .line 3
    invoke-static {v1, v2}, Lcom/vungle/warren/ServiceLocator;->a(Lcom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/tasks/JobCreator;

    iget-object v2, p0, Lcom/vungle/warren/ServiceLocator$3;->b:Lcom/vungle/warren/ServiceLocator;

    const-class v3, Lcom/vungle/warren/utility/Executors;

    .line 4
    invoke-static {v2, v3}, Lcom/vungle/warren/ServiceLocator;->a(Lcom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/utility/Executors;

    invoke-interface {v2}, Lcom/vungle/warren/utility/Executors;->getJobExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lcom/vungle/warren/tasks/utility/JobRunnerThreadPriorityHelper;

    invoke-direct {v3}, Lcom/vungle/warren/tasks/utility/JobRunnerThreadPriorityHelper;-><init>()V

    iget-object v4, p0, Lcom/vungle/warren/ServiceLocator$3;->b:Lcom/vungle/warren/ServiceLocator;

    .line 5
    invoke-static {v4}, Lcom/vungle/warren/ServiceLocator;->c(Lcom/vungle/warren/ServiceLocator;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/vungle/warren/utility/NetworkProvider;->getInstance(Landroid/content/Context;)Lcom/vungle/warren/utility/NetworkProvider;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vungle/warren/VungleJobRunner;-><init>(Lcom/vungle/warren/tasks/JobCreator;Ljava/util/concurrent/Executor;Lcom/vungle/warren/tasks/utility/ThreadPriorityHelper;Lcom/vungle/warren/utility/NetworkProvider;)V

    return-object v0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/ServiceLocator$3;->create()Lcom/vungle/warren/tasks/JobRunner;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.warren.ServiceLocator.AnonymousClass4 (com.vungle.warren.ServiceLocator$4)
.class Lcom/vungle/warren/ServiceLocator$4;
.super Lcom/vungle/warren/ServiceLocator$Creator;
.source "ServiceLocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ServiceLocator;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/vungle/warren/ServiceLocator;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ServiceLocator;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/ServiceLocator$4;->b:Lcom/vungle/warren/ServiceLocator;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vungle/warren/ServiceLocator$Creator;-><init>(Lcom/vungle/warren/ServiceLocator;Lcom/vungle/warren/ServiceLocator$1;)V

    return-void
.end method


# virtual methods
.method public create()Lcom/vungle/warren/AdLoader;
    .registers 13

    .line 2
    new-instance v11, Lcom/vungle/warren/AdLoader;

    iget-object v0, p0, Lcom/vungle/warren/ServiceLocator$4;->b:Lcom/vungle/warren/ServiceLocator;

    const-class v1, Lcom/vungle/warren/utility/Executors;

    invoke-static {v0, v1}, Lcom/vungle/warren/ServiceLocator;->a(Lcom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/vungle/warren/utility/Executors;

    iget-object v0, p0, Lcom/vungle/warren/ServiceLocator$4;->b:Lcom/vungle/warren/ServiceLocator;

    const-class v2, Lcom/vungle/warren/persistence/Repository;

    .line 3
    invoke-static {v0, v2}, Lcom/vungle/warren/ServiceLocator;->a(Lcom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/vungle/warren/persistence/Repository;

    iget-object v0, p0, Lcom/vungle/warren/ServiceLocator$4;->b:Lcom/vungle/warren/ServiceLocator;

    const-class v3, Lcom/vungle/warren/VungleApiClient;

    .line 4
    invoke-static {v0, v3}, Lcom/vungle/warren/ServiceLocator;->a(Lcom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/vungle/warren/VungleApiClient;

    iget-object v0, p0, Lcom/vungle/warren/ServiceLocator$4;->b:Lcom/vungle/warren/ServiceLocator;

    const-class v4, Lcom/vungle/warren/persistence/CacheManager;

    .line 5
    invoke-static {v0, v4}, Lcom/vungle/warren/ServiceLocator;->a(Lcom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/vungle/warren/persistence/CacheManager;

    iget-object v0, p0, Lcom/vungle/warren/ServiceLocator$4;->b:Lcom/vungle/warren/ServiceLocator;

    const-class v5, Lcom/vungle/warren/downloader/Downloader;

    .line 6
    invoke-static {v0, v5}, Lcom/vungle/warren/ServiceLocator;->a(Lcom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/vungle/warren/downloader/Downloader;

    iget-object v0, p0, Lcom/vungle/warren/ServiceLocator$4;->b:Lcom/vungle/warren/ServiceLocator;

    const-class v6, Lcom/vungle/warren/RuntimeValues;

    .line 7
    invoke-static {v0, v6}, Lcom/vungle/warren/ServiceLocator;->a(Lcom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/vungle/warren/RuntimeValues;

    iget-object v0, p0, Lcom/vungle/warren/ServiceLocator$4;->b:Lcom/vungle/warren/ServiceLocator;

    const-class v7, Lcom/vungle/warren/VungleStaticApi;

    .line 8
    invoke-static {v0, v7}, Lcom/vungle/warren/ServiceLocator;->a(Lcom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/vungle/warren/VungleStaticApi;

    iget-object v0, p0, Lcom/vungle/warren/ServiceLocator$4;->b:Lcom/vungle/warren/ServiceLocator;

    const-class v8, Lcom/vungle/warren/VisionController;

    .line 9
    invoke-static {v0, v8}, Lcom/vungle/warren/ServiceLocator;->a(Lcom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/vungle/warren/VisionController;

    iget-object v0, p0, Lcom/vungle/warren/ServiceLocator$4;->b:Lcom/vungle/warren/ServiceLocator;

    const-class v9, Lcom/vungle/warren/OperationSequence;

    .line 10
    invoke-static {v0, v9}, Lcom/vungle/warren/ServiceLocator;->a(Lcom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/vungle/warren/OperationSequence;

    iget-object v0, p0, Lcom/vungle/warren/ServiceLocator$4;->b:Lcom/vungle/warren/ServiceLocator;

    const-class v10, Lcom/vungle/warren/omsdk/OMInjector;

    .line 11
    invoke-static {v0, v10}, Lcom/vungle/warren/ServiceLocator;->a(Lcom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/vungle/warren/omsdk/OMInjector;

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/vungle/warren/AdLoader;-><init>(Lcom/vungle/warren/utility/Executors;Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/VungleApiClient;Lcom/vungle/warren/persistence/CacheManager;Lcom/vungle/warren/downloader/Downloader;Lcom/vungle/warren/RuntimeValues;Lcom/vungle/warren/VungleStaticApi;Lcom/vungle/warren/VisionController;Lcom/vungle/warren/OperationSequence;Lcom/vungle/warren/omsdk/OMInjector;)V

    return-object v11
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/ServiceLocator$4;->create()Lcom/vungle/warren/AdLoader;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.warren.ServiceLocator.AnonymousClass5 (com.vungle.warren.ServiceLocator$5)
.class Lcom/vungle/warren/ServiceLocator$5;
.super Lcom/vungle/warren/ServiceLocator$Creator;
.source "ServiceLocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ServiceLocator;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/vungle/warren/ServiceLocator;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ServiceLocator;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/ServiceLocator$5;->b:Lcom/vungle/warren/ServiceLocator;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vungle/warren/ServiceLocator$Creator;-><init>(Lcom/vungle/warren/ServiceLocator;Lcom/vungle/warren/ServiceLocator$1;)V

    return-void
.end method


# virtual methods
.method public create()Lcom/vungle/warren/downloader/Downloader;
    .registers 9

    .line 2
    new-instance v7, Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v0, p0, Lcom/vungle/warren/ServiceLocator$5;->b:Lcom/vungle/warren/ServiceLocator;

    const-class v1, Lcom/vungle/warren/downloader/DownloaderCache;

    .line 3
    invoke-static {v0, v1}, Lcom/vungle/warren/ServiceLocator;->a(Lcom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/vungle/warren/downloader/DownloaderCache;

    sget-wide v2, Lcom/vungle/warren/downloader/AssetDownloader;->VERIFICATION_WINDOW:J

    iget-object v0, p0, Lcom/vungle/warren/ServiceLocator$5;->b:Lcom/vungle/warren/ServiceLocator;

    .line 4
    invoke-static {v0}, Lcom/vungle/warren/ServiceLocator;->c(Lcom/vungle/warren/ServiceLocator;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vungle/warren/utility/NetworkProvider;->getInstance(Landroid/content/Context;)Lcom/vungle/warren/utility/NetworkProvider;

    move-result-object v5

    iget-object v0, p0, Lcom/vungle/warren/ServiceLocator$5;->b:Lcom/vungle/warren/ServiceLocator;

    const-class v4, Lcom/vungle/warren/utility/Executors;

    .line 5
    invoke-static {v0, v4}, Lcom/vungle/warren/ServiceLocator;->a(Lcom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/utility/Executors;

    invoke-interface {v0}, Lcom/vungle/warren/utility/Executors;->getUIExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    const/4 v4, 0x4

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/vungle/warren/downloader/AssetDownloader;-><init>(Lcom/vungle/warren/downloader/DownloaderCache;JILcom/vungle/warren/utility/NetworkProvider;Ljava/util/concurrent/ExecutorService;)V

    return-object v7
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/ServiceLocator$5;->create()Lcom/vungle/warren/downloader/Downloader;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.warren.ServiceLocator.AnonymousClass6 (com.vungle.warren.ServiceLocator$6)
.class Lcom/vungle/warren/ServiceLocator$6;
.super Lcom/vungle/warren/ServiceLocator$Creator;
.source "ServiceLocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ServiceLocator;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/vungle/warren/ServiceLocator;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ServiceLocator;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/ServiceLocator$6;->b:Lcom/vungle/warren/ServiceLocator;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vungle/warren/ServiceLocator$Creator;-><init>(Lcom/vungle/warren/ServiceLocator;Lcom/vungle/warren/ServiceLocator$1;)V

    return-void
.end method


# virtual methods
.method public create()Lcom/vungle/warren/VungleApiClient;
    .registers 7

    .line 2
    new-instance v0, Lcom/vungle/warren/VungleApiClient;

    iget-object v1, p0, Lcom/vungle/warren/ServiceLocator$6;->b:Lcom/vungle/warren/ServiceLocator;

    invoke-static {v1}, Lcom/vungle/warren/ServiceLocator;->c(Lcom/vungle/warren/ServiceLocator;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/warren/ServiceLocator$6;->b:Lcom/vungle/warren/ServiceLocator;

    const-class v3, Lcom/vungle/warren/persistence/CacheManager;

    .line 3
    invoke-static {v2, v3}, Lcom/vungle/warren/ServiceLocator;->a(Lcom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/persistence/CacheManager;

    iget-object v3, p0, Lcom/vungle/warren/ServiceLocator$6;->b:Lcom/vungle/warren/ServiceLocator;

    const-class v4, Lcom/vungle/warren/persistence/Repository;

    .line 4
    invoke-static {v3, v4}, Lcom/vungle/warren/ServiceLocator;->a(Lcom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vungle/warren/persistence/Repository;

    iget-object v4, p0, Lcom/vungle/warren/ServiceLocator$6;->b:Lcom/vungle/warren/ServiceLocator;

    const-class v5, Lcom/vungle/warren/omsdk/OMInjector;

    .line 5
    invoke-static {v4, v5}, Lcom/vungle/warren/ServiceLocator;->a(Lcom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vungle/warren/omsdk/OMInjector;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vungle/warren/VungleApiClient;-><init>(Landroid/content/Context;Lcom/vungle/warren/persistence/CacheManager;Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/omsdk/OMInjector;)V

    return-object v0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/ServiceLocator$6;->create()Lcom/vungle/warren/VungleApiClient;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.warren.ServiceLocator.AnonymousClass7 (com.vungle.warren.ServiceLocator$7)
.class Lcom/vungle/warren/ServiceLocator$7;
.super Lcom/vungle/warren/ServiceLocator$Creator;
.source "ServiceLocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ServiceLocator;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/vungle/warren/ServiceLocator;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ServiceLocator;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/ServiceLocator$7;->b:Lcom/vungle/warren/ServiceLocator;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vungle/warren/ServiceLocator$Creator;-><init>(Lcom/vungle/warren/ServiceLocator;Lcom/vungle/warren/ServiceLocator$1;)V

    return-void
.end method


# virtual methods
.method public create()Lcom/vungle/warren/persistence/Repository;
    .registers 6

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/ServiceLocator$7;->b:Lcom/vungle/warren/ServiceLocator;

    const-class v1, Lcom/vungle/warren/utility/Executors;

    invoke-static {v0, v1}, Lcom/vungle/warren/ServiceLocator;->a(Lcom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/utility/Executors;

    .line 3
    new-instance v1, Lcom/vungle/warren/persistence/Repository;

    iget-object v2, p0, Lcom/vungle/warren/ServiceLocator$7;->b:Lcom/vungle/warren/ServiceLocator;

    invoke-static {v2}, Lcom/vungle/warren/ServiceLocator;->c(Lcom/vungle/warren/ServiceLocator;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/vungle/warren/ServiceLocator$7;->b:Lcom/vungle/warren/ServiceLocator;

    const-class v4, Lcom/vungle/warren/persistence/Designer;

    .line 4
    invoke-static {v3, v4}, Lcom/vungle/warren/ServiceLocator;->a(Lcom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vungle/warren/persistence/Designer;

    .line 5
    invoke-interface {v0}, Lcom/vungle/warren/utility/Executors;->getIOExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    .line 6
    invoke-interface {v0}, Lcom/vungle/warren/utility/Executors;->getUIExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/vungle/warren/persistence/Repository;-><init>(Landroid/content/Context;Lcom/vungle/warren/persistence/Designer;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V

    return-object v1
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/ServiceLocator$7;->create()Lcom/vungle/warren/persistence/Repository;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.warren.ServiceLocator.AnonymousClass8 (com.vungle.warren.ServiceLocator$8)
.class Lcom/vungle/warren/ServiceLocator$8;
.super Lcom/vungle/warren/ServiceLocator$Creator;
.source "ServiceLocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ServiceLocator;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/vungle/warren/ServiceLocator;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ServiceLocator;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/ServiceLocator$8;->b:Lcom/vungle/warren/ServiceLocator;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vungle/warren/ServiceLocator$Creator;-><init>(Lcom/vungle/warren/ServiceLocator;Lcom/vungle/warren/ServiceLocator$1;)V

    return-void
.end method


# virtual methods
.method create()Ljava/lang/Object;
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ServiceLocator$8;->b:Lcom/vungle/warren/ServiceLocator;

    const-class v1, Lcom/vungle/warren/utility/Executors;

    invoke-static {v0, v1}, Lcom/vungle/warren/ServiceLocator;->a(Lcom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/utility/Executors;

    .line 2
    new-instance v7, Lcom/vungle/warren/log/LogManager;

    iget-object v1, p0, Lcom/vungle/warren/ServiceLocator$8;->b:Lcom/vungle/warren/ServiceLocator;

    invoke-static {v1}, Lcom/vungle/warren/ServiceLocator;->c(Lcom/vungle/warren/ServiceLocator;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/vungle/warren/ServiceLocator$8;->b:Lcom/vungle/warren/ServiceLocator;

    const-class v3, Lcom/vungle/warren/persistence/CacheManager;

    .line 3
    invoke-static {v1, v3}, Lcom/vungle/warren/ServiceLocator;->a(Lcom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/vungle/warren/persistence/CacheManager;

    iget-object v1, p0, Lcom/vungle/warren/ServiceLocator$8;->b:Lcom/vungle/warren/ServiceLocator;

    const-class v4, Lcom/vungle/warren/VungleApiClient;

    .line 4
    invoke-static {v1, v4}, Lcom/vungle/warren/ServiceLocator;->a(Lcom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/vungle/warren/VungleApiClient;

    .line 5
    invoke-interface {v0}, Lcom/vungle/warren/utility/Executors;->getLoggerExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    iget-object v0, p0, Lcom/vungle/warren/ServiceLocator$8;->b:Lcom/vungle/warren/ServiceLocator;

    const-class v1, Lcom/vungle/warren/persistence/FilePreferences;

    .line 6
    invoke-static {v0, v1}, Lcom/vungle/warren/ServiceLocator;->a(Lcom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/vungle/warren/persistence/FilePreferences;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/vungle/warren/log/LogManager;-><init>(Landroid/content/Context;Lcom/vungle/warren/persistence/CacheManager;Lcom/vungle/warren/VungleApiClient;Ljava/util/concurrent/Executor;Lcom/vungle/warren/persistence/FilePreferences;)V

    return-object v7
.end method

###### Class com.vungle.warren.ServiceLocator.AnonymousClass9 (com.vungle.warren.ServiceLocator$9)
.class Lcom/vungle/warren/ServiceLocator$9;
.super Lcom/vungle/warren/ServiceLocator$Creator;
.source "ServiceLocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ServiceLocator;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/vungle/warren/ServiceLocator;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ServiceLocator;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/ServiceLocator$9;->b:Lcom/vungle/warren/ServiceLocator;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vungle/warren/ServiceLocator$Creator;-><init>(Lcom/vungle/warren/ServiceLocator;Lcom/vungle/warren/ServiceLocator$1;)V

    return-void
.end method


# virtual methods
.method public create()Lcom/vungle/warren/persistence/Designer;
    .registers 4

    .line 2
    new-instance v0, Lcom/vungle/warren/persistence/GraphicDesigner;

    iget-object v1, p0, Lcom/vungle/warren/ServiceLocator$9;->b:Lcom/vungle/warren/ServiceLocator;

    const-class v2, Lcom/vungle/warren/persistence/CacheManager;

    invoke-static {v1, v2}, Lcom/vungle/warren/ServiceLocator;->a(Lcom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/persistence/CacheManager;

    invoke-direct {v0, v1}, Lcom/vungle/warren/persistence/GraphicDesigner;-><init>(Lcom/vungle/warren/persistence/CacheManager;)V

    return-object v0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/ServiceLocator$9;->create()Lcom/vungle/warren/persistence/Designer;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.warren.ServiceLocator.Creator (com.vungle.warren.ServiceLocator$Creator)
.class abstract Lcom/vungle/warren/ServiceLocator$Creator;
.super Ljava/lang/Object;
.source "ServiceLocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/ServiceLocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/warren/ServiceLocator;


# direct methods
.method private constructor <init>(Lcom/vungle/warren/ServiceLocator;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/ServiceLocator$Creator;->a:Lcom/vungle/warren/ServiceLocator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vungle/warren/ServiceLocator;Lcom/vungle/warren/ServiceLocator$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lcom/vungle/warren/ServiceLocator$Creator;-><init>(Lcom/vungle/warren/ServiceLocator;)V

    return-void
.end method


# virtual methods
.method a()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method abstract create()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
