###### Class com.vungle.warren.log.LogManager (com.vungle.warren.log.LogManager)
.class public Lcom/vungle/warren/log/LogManager;
.super Ljava/lang/Object;
.source "LogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/log/LogManager$SdkLoggingEventListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_CRASH_COLLECT_ENABLED:Z = false

.field public static final DEFAULT_CRASH_SEND_BATCH_MAX:I = 0x5

.field public static final DEFAULT_LOGGING_ENABLED:Z = false

.field private static final o:Ljava/lang/String; = "LogManager"

.field public static sDefaultCollectFilter:Ljava/lang/String; = "com.vungle"


# instance fields
.field private final a:Lcom/vungle/warren/log/LogPersister;

.field private final b:Lcom/vungle/warren/log/LogSender;

.field private final c:Ljava/util/concurrent/Executor;

.field private final d:Lcom/vungle/warren/persistence/FilePreferences;

.field private e:Lcom/vungle/warren/log/JVMCrashCollector;

.field private final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private h:Ljava/lang/String;

.field private i:Ljava/util/concurrent/atomic/AtomicInteger;

.field private j:Z

.field private final k:Ljava/lang/String;

.field private final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/google/gson/f;

.field private n:Lcom/vungle/warren/log/LogManager$SdkLoggingEventListener;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/vungle/warren/log/LogPersister;Lcom/vungle/warren/log/LogSender;Ljava/util/concurrent/Executor;Lcom/vungle/warren/persistence/FilePreferences;)V
    .registers 11

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/vungle/warren/log/LogManager;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/vungle/warren/log/LogManager;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    sget-object v3, Lcom/vungle/warren/log/LogManager;->sDefaultCollectFilter:Ljava/lang/String;

    iput-object v3, p0, Lcom/vungle/warren/log/LogManager;->h:Ljava/lang/String;

    .line 6
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v3, p0, Lcom/vungle/warren/log/LogManager;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    iput-boolean v1, p0, Lcom/vungle/warren/log/LogManager;->j:Z

    .line 8
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, p0, Lcom/vungle/warren/log/LogManager;->l:Ljava/util/Map;

    .line 9
    new-instance v3, Lcom/google/gson/f;

    invoke-direct {v3}, Lcom/google/gson/f;-><init>()V

    iput-object v3, p0, Lcom/vungle/warren/log/LogManager;->m:Lcom/google/gson/f;

    .line 10
    new-instance v3, Lcom/vungle/warren/log/LogManager$2;

    invoke-direct {v3, p0}, Lcom/vungle/warren/log/LogManager$2;-><init>(Lcom/vungle/warren/log/LogManager;)V

    iput-object v3, p0, Lcom/vungle/warren/log/LogManager;->n:Lcom/vungle/warren/log/LogManager$SdkLoggingEventListener;

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/warren/log/LogManager;->k:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lcom/vungle/warren/log/LogManager;->b:Lcom/vungle/warren/log/LogSender;

    .line 13
    iput-object p2, p0, Lcom/vungle/warren/log/LogManager;->a:Lcom/vungle/warren/log/LogPersister;

    .line 14
    iput-object p4, p0, Lcom/vungle/warren/log/LogManager;->c:Ljava/util/concurrent/Executor;

    .line 15
    iput-object p5, p0, Lcom/vungle/warren/log/LogManager;->d:Lcom/vungle/warren/persistence/FilePreferences;

    .line 16
    iget-object p1, p0, Lcom/vungle/warren/log/LogManager;->n:Lcom/vungle/warren/log/LogManager$SdkLoggingEventListener;

    invoke-virtual {p2, p1}, Lcom/vungle/warren/log/LogPersister;->k(Lcom/vungle/warren/log/LogManager$SdkLoggingEventListener;)V

    .line 17
    const-class p1, Lcom/vungle/warren/Vungle;

    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object p1

    if-eqz p1, :cond_56

    .line 18
    invoke-virtual {p1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/vungle/warren/log/LogManager;->sDefaultCollectFilter:Ljava/lang/String;

    :cond_56
    const-string p1, "logging_enabled"

    .line 19
    invoke-virtual {p5, p1, v1}, Lcom/vungle/warren/persistence/FilePreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string p1, "crash_report_enabled"

    .line 20
    invoke-virtual {p5, p1, v1}, Lcom/vungle/warren/persistence/FilePreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 21
    sget-object p1, Lcom/vungle/warren/log/LogManager;->sDefaultCollectFilter:Ljava/lang/String;

    const-string p2, "crash_collect_filter"

    invoke-virtual {p5, p2, p1}, Lcom/vungle/warren/persistence/FilePreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/warren/log/LogManager;->h:Ljava/lang/String;

    .line 22
    iget-object p1, p0, Lcom/vungle/warren/log/LogManager;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string p2, "crash_batch_max"

    invoke-virtual {p5, p2, v4}, Lcom/vungle/warren/persistence/FilePreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 23
    invoke-virtual {p0}, Lcom/vungle/warren/log/LogManager;->f()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/vungle/warren/persistence/CacheManager;Lcom/vungle/warren/VungleApiClient;Ljava/util/concurrent/Executor;Lcom/vungle/warren/persistence/FilePreferences;)V
    .registers 12

    .line 1
    new-instance v2, Lcom/vungle/warren/log/LogPersister;

    invoke-virtual {p2}, Lcom/vungle/warren/persistence/CacheManager;->getCache()Ljava/io/File;

    move-result-object p2

    invoke-direct {v2, p2}, Lcom/vungle/warren/log/LogPersister;-><init>(Ljava/io/File;)V

    new-instance v3, Lcom/vungle/warren/log/LogSender;

    invoke-direct {v3, p3, p5}, Lcom/vungle/warren/log/LogSender;-><init>(Lcom/vungle/warren/VungleApiClient;Lcom/vungle/warren/persistence/FilePreferences;)V

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/vungle/warren/log/LogManager;-><init>(Landroid/content/Context;Lcom/vungle/warren/log/LogPersister;Lcom/vungle/warren/log/LogSender;Ljava/util/concurrent/Executor;Lcom/vungle/warren/persistence/FilePreferences;)V

    return-void
.end method

.method static synthetic a(Lcom/vungle/warren/log/LogManager;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/log/LogManager;->k:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/vungle/warren/log/LogManager;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/vungle/warren/log/LogManager;->e()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/vungle/warren/log/LogManager;)Lcom/vungle/warren/log/LogPersister;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/log/LogManager;->a:Lcom/vungle/warren/log/LogPersister;

    return-object p0
.end method

.method static synthetic d(Lcom/vungle/warren/log/LogManager;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/vungle/warren/log/LogManager;->h()V

    return-void
.end method

.method private e()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/log/LogManager;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_12

    :cond_a
    iget-object v0, p0, Lcom/vungle/warren/log/LogManager;->m:Lcom/google/gson/f;

    iget-object v1, p0, Lcom/vungle/warren/log/LogManager;->l:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->t(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_12
    return-object v0
.end method

.method private g()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/log/LogManager;->isCrashReportEnabled()Z

    move-result v0

    if-nez v0, :cond_e

    .line 2
    sget-object v0, Lcom/vungle/warren/log/LogManager;->o:Ljava/lang/String;

    const-string v1, "Crash report disabled, no need to send crash log files."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_e
    iget-object v0, p0, Lcom/vungle/warren/log/LogManager;->a:Lcom/vungle/warren/log/LogPersister;

    iget-object v1, p0, Lcom/vungle/warren/log/LogManager;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vungle/warren/log/LogPersister;->b(I)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 4
    array-length v1, v0

    if-nez v1, :cond_20

    goto :goto_26

    .line 5
    :cond_20
    iget-object v1, p0, Lcom/vungle/warren/log/LogManager;->b:Lcom/vungle/warren/log/LogSender;

    invoke-virtual {v1, v0}, Lcom/vungle/warren/log/LogSender;->e([Ljava/io/File;)V

    return-void

    .line 6
    :cond_26
    :goto_26
    sget-object v0, Lcom/vungle/warren/log/LogManager;->o:Ljava/lang/String;

    const-string v1, "No need to send empty crash log files."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private h()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/log/LogManager;->isLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_e

    .line 2
    sget-object v0, Lcom/vungle/warren/log/LogManager;->o:Ljava/lang/String;

    const-string v1, "Logging disabled, no need to send log files."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_e
    iget-object v0, p0, Lcom/vungle/warren/log/LogManager;->a:Lcom/vungle/warren/log/LogPersister;

    invoke-virtual {v0}, Lcom/vungle/warren/log/LogPersister;->g()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 4
    array-length v1, v0

    if-nez v1, :cond_1a

    goto :goto_20

    .line 5
    :cond_1a
    iget-object v1, p0, Lcom/vungle/warren/log/LogManager;->b:Lcom/vungle/warren/log/LogSender;

    invoke-virtual {v1, v0}, Lcom/vungle/warren/log/LogSender;->e([Ljava/io/File;)V

    return-void

    .line 6
    :cond_20
    :goto_20
    sget-object v0, Lcom/vungle/warren/log/LogManager;->o:Ljava/lang/String;

    const-string v1, "No need to send empty files."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public addCustomData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/log/LogManager;->l:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method declared-synchronized f()V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Lcom/vungle/warren/log/LogManager;->j:Z

    if-nez v0, :cond_2b

    .line 2
    invoke-virtual {p0}, Lcom/vungle/warren/log/LogManager;->isCrashReportEnabled()Z

    move-result v0

    if-nez v0, :cond_14

    .line 3
    sget-object v0, Lcom/vungle/warren/log/LogManager;->o:Ljava/lang/String;

    const-string v1, "crash report is disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_2d

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_14
    :try_start_14
    iget-object v0, p0, Lcom/vungle/warren/log/LogManager;->e:Lcom/vungle/warren/log/JVMCrashCollector;

    if-nez v0, :cond_21

    .line 6
    new-instance v0, Lcom/vungle/warren/log/JVMCrashCollector;

    iget-object v1, p0, Lcom/vungle/warren/log/LogManager;->n:Lcom/vungle/warren/log/LogManager$SdkLoggingEventListener;

    invoke-direct {v0, v1}, Lcom/vungle/warren/log/JVMCrashCollector;-><init>(Lcom/vungle/warren/log/LogManager$SdkLoggingEventListener;)V

    iput-object v0, p0, Lcom/vungle/warren/log/LogManager;->e:Lcom/vungle/warren/log/JVMCrashCollector;

    .line 7
    :cond_21
    iget-object v0, p0, Lcom/vungle/warren/log/LogManager;->e:Lcom/vungle/warren/log/JVMCrashCollector;

    iget-object v1, p0, Lcom/vungle/warren/log/LogManager;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vungle/warren/log/JVMCrashCollector;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/vungle/warren/log/LogManager;->j:Z
    :try_end_2b
    .catchall {:try_start_14 .. :try_end_2b} :catchall_2d

    .line 9
    :cond_2b
    monitor-exit p0

    return-void

    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isCrashReportEnabled()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/log/LogManager;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isLoggingEnabled()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/log/LogManager;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public removeCustomData(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/log/LogManager;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public saveLog(Lcom/vungle/warren/VungleLogger$LoggerLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16

    .line 1
    invoke-static {}, Lcom/vungle/warren/VungleApiClient;->getHeaderUa()Ljava/lang/String;

    move-result-object v5

    .line 2
    sget-object v0, Lcom/vungle/warren/VungleLogger$LoggerLevel;->CRASH:Lcom/vungle/warren/VungleLogger$LoggerLevel;

    if-ne p1, v0, :cond_29

    invoke-virtual {p0}, Lcom/vungle/warren/log/LogManager;->isCrashReportEnabled()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 3
    monitor-enter p0

    .line 4
    :try_start_f
    iget-object v0, p0, Lcom/vungle/warren/log/LogManager;->a:Lcom/vungle/warren/log/LogPersister;

    invoke-virtual {p1}, Lcom/vungle/warren/VungleLogger$LoggerLevel;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    iget-object v6, p0, Lcom/vungle/warren/log/LogManager;->k:Ljava/lang/String;

    invoke-direct {p0}, Lcom/vungle/warren/log/LogManager;->e()Ljava/lang/String;

    move-result-object v7

    move-object v1, p3

    move-object v3, p2

    move-object v8, p4

    move-object v9, p5

    invoke-virtual/range {v0 .. v9}, Lcom/vungle/warren/log/LogPersister;->saveCrashLogData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    monitor-exit p0

    goto :goto_3a

    :catchall_26
    move-exception p1

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_f .. :try_end_28} :catchall_26

    throw p1

    .line 6
    :cond_29
    iget-object v8, p0, Lcom/vungle/warren/log/LogManager;->c:Ljava/util/concurrent/Executor;

    new-instance v9, Lcom/vungle/warren/log/LogManager$1;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/vungle/warren/log/LogManager$1;-><init>(Lcom/vungle/warren/log/LogManager;Ljava/lang/String;Lcom/vungle/warren/VungleLogger$LoggerLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_3a
    return-void
.end method

.method public sendSdkLogs()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/vungle/warren/log/LogManager;->g()V

    .line 2
    invoke-direct {p0}, Lcom/vungle/warren/log/LogManager;->h()V

    return-void
.end method

.method public setLoggingEnabled(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/log/LogManager;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/log/LogManager;->d:Lcom/vungle/warren/persistence/FilePreferences;

    const-string v1, "logging_enabled"

    invoke-virtual {v0, v1, p1}, Lcom/vungle/warren/persistence/FilePreferences;->put(Ljava/lang/String;Z)Lcom/vungle/warren/persistence/FilePreferences;

    .line 3
    iget-object p1, p0, Lcom/vungle/warren/log/LogManager;->d:Lcom/vungle/warren/persistence/FilePreferences;

    invoke-virtual {p1}, Lcom/vungle/warren/persistence/FilePreferences;->apply()V

    :cond_16
    return-void
.end method

.method public setMaxEntries(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/log/LogManager;->a:Lcom/vungle/warren/log/LogPersister;

    invoke-virtual {v0, p1}, Lcom/vungle/warren/log/LogPersister;->j(I)V

    return-void
.end method

.method public declared-synchronized updateCrashReportConfig(ZLjava/lang/String;I)V
    .registers 9

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/vungle/warren/log/LogManager;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, p1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 2
    :goto_e
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1e

    iget-object v3, p0, Lcom/vungle/warren/log/LogManager;->h:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    const/4 v3, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v3, 0x0

    .line 3
    :goto_1f
    invoke-static {p3, v2}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 4
    iget-object v4, p0, Lcom/vungle/warren/log/LogManager;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-eq v4, p3, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v1, 0x0

    :goto_2d
    if-nez v0, :cond_33

    if-nez v3, :cond_33

    if-eqz v1, :cond_7c

    :cond_33
    if-eqz v0, :cond_41

    .line 5
    iget-object v0, p0, Lcom/vungle/warren/log/LogManager;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6
    iget-object v0, p0, Lcom/vungle/warren/log/LogManager;->d:Lcom/vungle/warren/persistence/FilePreferences;

    const-string v2, "crash_report_enabled"

    invoke-virtual {v0, v2, p1}, Lcom/vungle/warren/persistence/FilePreferences;->put(Ljava/lang/String;Z)Lcom/vungle/warren/persistence/FilePreferences;

    :cond_41
    if-eqz v3, :cond_5b

    const-string v0, "*"

    .line 7
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    const-string p2, ""

    .line 8
    iput-object p2, p0, Lcom/vungle/warren/log/LogManager;->h:Ljava/lang/String;

    goto :goto_52

    .line 9
    :cond_50
    iput-object p2, p0, Lcom/vungle/warren/log/LogManager;->h:Ljava/lang/String;

    .line 10
    :goto_52
    iget-object p2, p0, Lcom/vungle/warren/log/LogManager;->d:Lcom/vungle/warren/persistence/FilePreferences;

    const-string v0, "crash_collect_filter"

    iget-object v2, p0, Lcom/vungle/warren/log/LogManager;->h:Ljava/lang/String;

    invoke-virtual {p2, v0, v2}, Lcom/vungle/warren/persistence/FilePreferences;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/warren/persistence/FilePreferences;

    :cond_5b
    if-eqz v1, :cond_69

    .line 11
    iget-object p2, p0, Lcom/vungle/warren/log/LogManager;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 12
    iget-object p2, p0, Lcom/vungle/warren/log/LogManager;->d:Lcom/vungle/warren/persistence/FilePreferences;

    const-string v0, "crash_batch_max"

    invoke-virtual {p2, v0, p3}, Lcom/vungle/warren/persistence/FilePreferences;->put(Ljava/lang/String;I)Lcom/vungle/warren/persistence/FilePreferences;

    .line 13
    :cond_69
    iget-object p2, p0, Lcom/vungle/warren/log/LogManager;->d:Lcom/vungle/warren/persistence/FilePreferences;

    invoke-virtual {p2}, Lcom/vungle/warren/persistence/FilePreferences;->apply()V

    .line 14
    iget-object p2, p0, Lcom/vungle/warren/log/LogManager;->e:Lcom/vungle/warren/log/JVMCrashCollector;

    if-eqz p2, :cond_77

    .line 15
    iget-object p3, p0, Lcom/vungle/warren/log/LogManager;->h:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/vungle/warren/log/JVMCrashCollector;->a(Ljava/lang/String;)V

    :cond_77
    if-eqz p1, :cond_7c

    .line 16
    invoke-virtual {p0}, Lcom/vungle/warren/log/LogManager;->f()V
    :try_end_7c
    .catchall {:try_start_1 .. :try_end_7c} :catchall_7e

    .line 17
    :cond_7c
    monitor-exit p0

    return-void

    :catchall_7e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

###### Class com.vungle.warren.log.LogManager.AnonymousClass1 (com.vungle.warren.log.LogManager$1)
.class Lcom/vungle/warren/log/LogManager$1;
.super Ljava/lang/Object;
.source "LogManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/log/LogManager;->saveLog(Lcom/vungle/warren/VungleLogger$LoggerLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Ljava/lang/String;

.field final synthetic p:Lcom/vungle/warren/VungleLogger$LoggerLevel;

.field final synthetic q:Ljava/lang/String;

.field final synthetic r:Ljava/lang/String;

.field final synthetic s:Ljava/lang/String;

.field final synthetic t:Ljava/lang/String;

.field final synthetic u:Lcom/vungle/warren/log/LogManager;


# direct methods
.method constructor <init>(Lcom/vungle/warren/log/LogManager;Ljava/lang/String;Lcom/vungle/warren/VungleLogger$LoggerLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/log/LogManager$1;->u:Lcom/vungle/warren/log/LogManager;

    iput-object p2, p0, Lcom/vungle/warren/log/LogManager$1;->o:Ljava/lang/String;

    iput-object p3, p0, Lcom/vungle/warren/log/LogManager$1;->p:Lcom/vungle/warren/VungleLogger$LoggerLevel;

    iput-object p4, p0, Lcom/vungle/warren/log/LogManager$1;->q:Ljava/lang/String;

    iput-object p5, p0, Lcom/vungle/warren/log/LogManager$1;->r:Ljava/lang/String;

    iput-object p6, p0, Lcom/vungle/warren/log/LogManager$1;->s:Ljava/lang/String;

    iput-object p7, p0, Lcom/vungle/warren/log/LogManager$1;->t:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/log/LogManager$1;->u:Lcom/vungle/warren/log/LogManager;

    invoke-virtual {v0}, Lcom/vungle/warren/log/LogManager;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/log/LogManager$1;->u:Lcom/vungle/warren/log/LogManager;

    invoke-static {v0}, Lcom/vungle/warren/log/LogManager;->c(Lcom/vungle/warren/log/LogManager;)Lcom/vungle/warren/log/LogPersister;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/warren/log/LogManager$1;->o:Ljava/lang/String;

    iget-object v0, p0, Lcom/vungle/warren/log/LogManager$1;->p:Lcom/vungle/warren/VungleLogger$LoggerLevel;

    invoke-virtual {v0}, Lcom/vungle/warren/VungleLogger$LoggerLevel;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/vungle/warren/log/LogManager$1;->q:Ljava/lang/String;

    iget-object v6, p0, Lcom/vungle/warren/log/LogManager$1;->r:Ljava/lang/String;

    iget-object v0, p0, Lcom/vungle/warren/log/LogManager$1;->u:Lcom/vungle/warren/log/LogManager;

    invoke-static {v0}, Lcom/vungle/warren/log/LogManager;->a(Lcom/vungle/warren/log/LogManager;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/vungle/warren/log/LogManager$1;->u:Lcom/vungle/warren/log/LogManager;

    invoke-static {v0}, Lcom/vungle/warren/log/LogManager;->b(Lcom/vungle/warren/log/LogManager;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/vungle/warren/log/LogManager$1;->s:Ljava/lang/String;

    iget-object v10, p0, Lcom/vungle/warren/log/LogManager$1;->t:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual/range {v1 .. v10}, Lcom/vungle/warren/log/LogPersister;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    return-void
.end method

###### Class com.vungle.warren.log.LogManager.AnonymousClass2 (com.vungle.warren.log.LogManager$2)
.class Lcom/vungle/warren/log/LogManager$2;
.super Ljava/lang/Object;
.source "LogManager.java"

# interfaces
.implements Lcom/vungle/warren/log/LogManager$SdkLoggingEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/log/LogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/warren/log/LogManager;


# direct methods
.method constructor <init>(Lcom/vungle/warren/log/LogManager;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/log/LogManager$2;->a:Lcom/vungle/warren/log/LogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isCrashReportEnabled()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/log/LogManager$2;->a:Lcom/vungle/warren/log/LogManager;

    invoke-virtual {v0}, Lcom/vungle/warren/log/LogManager;->isCrashReportEnabled()Z

    move-result v0

    return v0
.end method

.method public saveLog(Lcom/vungle/warren/VungleLogger$LoggerLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/log/LogManager$2;->a:Lcom/vungle/warren/log/LogManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/vungle/warren/log/LogManager;->saveLog(Lcom/vungle/warren/VungleLogger$LoggerLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendPendingLogs()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/log/LogManager$2;->a:Lcom/vungle/warren/log/LogManager;

    invoke-static {v0}, Lcom/vungle/warren/log/LogManager;->d(Lcom/vungle/warren/log/LogManager;)V

    return-void
.end method

###### Class com.vungle.warren.log.LogManager.SdkLoggingEventListener (com.vungle.warren.log.LogManager$SdkLoggingEventListener)
.class interface abstract Lcom/vungle/warren/log/LogManager$SdkLoggingEventListener;
.super Ljava/lang/Object;
.source "LogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/log/LogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "SdkLoggingEventListener"
.end annotation


# virtual methods
.method public abstract isCrashReportEnabled()Z
.end method

.method public abstract saveLog(Lcom/vungle/warren/VungleLogger$LoggerLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract sendPendingLogs()V
.end method
