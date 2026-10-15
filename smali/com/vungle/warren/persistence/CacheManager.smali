###### Class com.vungle.warren.persistence.CacheManager (com.vungle.warren.persistence.CacheManager)
.class public Lcom/vungle/warren/persistence/CacheManager;
.super Ljava/lang/Object;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/persistence/CacheManager$Listener;
    }
.end annotation


# static fields
.field private static final h:Ljava/lang/String; = "CacheManager"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/vungle/warren/persistence/FilePreferences;

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/vungle/warren/persistence/CacheManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/io/File;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/FileObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/vungle/warren/persistence/FilePreferences;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/persistence/CacheManager;->c:Ljava/util/Set;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/persistence/CacheManager;->e:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/persistence/CacheManager;->g:Ljava/util/List;

    .line 5
    iput-object p1, p0, Lcom/vungle/warren/persistence/CacheManager;->a:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/vungle/warren/persistence/CacheManager;->b:Lcom/vungle/warren/persistence/FilePreferences;

    const-string p1, "cache_path"

    const-string v0, "cache_paths"

    .line 7
    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/vungle/warren/persistence/FilePreferences;->addSharedPrefsKey([Ljava/lang/String;)Lcom/vungle/warren/persistence/FilePreferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/warren/persistence/FilePreferences;->apply()V

    return-void
.end method

.method static synthetic a(Lcom/vungle/warren/persistence/CacheManager;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/vungle/warren/persistence/CacheManager;->f()V

    return-void
.end method

.method private b()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/persistence/CacheManager;->d:Ljava/io/File;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/vungle/warren/persistence/CacheManager;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/vungle/warren/persistence/CacheManager;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 2
    :cond_1a
    invoke-direct {p0}, Lcom/vungle/warren/persistence/CacheManager;->f()V

    :cond_1d
    return-void
.end method

.method private static c(Ljava/io/File;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2
    invoke-static {p0}, Lcom/vungle/warren/utility/FileUtility;->deleteAndLogIfFailed(Ljava/io/File;)V

    :cond_f
    return-void
.end method

.method private d(I)J
    .registers 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/persistence/CacheManager;->getCache()Ljava/io/File;

    move-result-object v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_9

    return-wide v1

    :cond_9
    const/4 v3, 0x0

    .line 2
    :try_start_a
    new-instance v4, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_13} :catch_15

    move-object v3, v4

    goto :goto_26

    :catch_15
    move-exception v0

    .line 3
    sget-object v4, Lcom/vungle/warren/persistence/CacheManager;->h:Ljava/lang/String;

    const-string v5, "Failed to get available bytes"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-lez p1, :cond_26

    add-int/lit8 p1, p1, -0x1

    .line 4
    invoke-direct {p0, p1}, Lcom/vungle/warren/persistence/CacheManager;->d(I)J

    move-result-wide v0

    return-wide v0

    :cond_26
    :goto_26
    if-eqz v3, :cond_32

    .line 5
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v0

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v2

    mul-long v1, v0, v2

    :cond_32
    return-wide v1
.end method

.method private declared-synchronized e(Ljava/io/File;)V
    .registers 7

    monitor-enter p0

    if-nez p1, :cond_5

    .line 1
    monitor-exit p0

    return-void

    .line 2
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/vungle/warren/persistence/CacheManager;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/vungle/warren/persistence/CacheManager;->g:Ljava/util/List;

    new-instance v1, Lcom/vungle/warren/persistence/CacheManager$1;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x400

    invoke-direct {v1, p0, v2, v3}, Lcom/vungle/warren/persistence/CacheManager$1;-><init>(Lcom/vungle/warren/persistence/CacheManager;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    :goto_1a
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/vungle/warren/persistence/CacheManager;->g:Ljava/util/List;

    new-instance v2, Lcom/vungle/warren/persistence/CacheManager$2;

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x100

    invoke-direct {v2, p0, v3, v4, v0}, Lcom/vungle/warren/persistence/CacheManager$2;-><init>(Lcom/vungle/warren/persistence/CacheManager;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    goto :goto_1a

    .line 8
    :cond_39
    iget-object p1, p0, Lcom/vungle/warren/persistence/CacheManager;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/FileObserver;
    :try_end_4b
    .catchall {:try_start_5 .. :try_end_4b} :catchall_5f

    .line 9
    :try_start_4b
    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4e} :catch_4f
    .catchall {:try_start_4b .. :try_end_4e} :catchall_5f

    goto :goto_3f

    :catch_4f
    move-exception v0

    const/4 v1, 0x1

    .line 10
    :try_start_51
    sget-object v2, Lcom/vungle/warren/persistence/CacheManager;->h:Ljava/lang/String;

    const-string v3, "ExceptionContext"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/vungle/warren/VungleLogger;->warn(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5c
    .catchall {:try_start_51 .. :try_end_5c} :catchall_5f

    goto :goto_3f

    .line 11
    :cond_5d
    monitor-exit p0

    return-void

    :catchall_5f
    move-exception p1

    monitor-exit p0

    goto :goto_63

    :goto_62
    throw p1

    :goto_63
    goto :goto_62
.end method

.method private declared-synchronized f()V
    .registers 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/vungle/warren/persistence/CacheManager;->d:Ljava/io/File;

    const/4 v1, 0x0

    if-nez v0, :cond_19

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/persistence/CacheManager;->b:Lcom/vungle/warren/persistence/FilePreferences;

    const-string v2, "cache_path"

    invoke-virtual {v0, v2, v1}, Lcom/vungle/warren/persistence/FilePreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_17

    :cond_16
    move-object v2, v1

    :goto_17
    iput-object v2, p0, Lcom/vungle/warren/persistence/CacheManager;->d:Ljava/io/File;

    .line 4
    :cond_19
    iget-object v0, p0, Lcom/vungle/warren/persistence/CacheManager;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 5
    iget-object v2, p0, Lcom/vungle/warren/persistence/CacheManager;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    .line 6
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_37

    if-eqz v0, :cond_37

    const/4 v3, 0x1

    goto :goto_38

    :cond_37
    const/4 v3, 0x0

    .line 7
    :goto_38
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz v3, :cond_4f

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    if-eqz v7, :cond_4f

    .line 9
    new-instance v8, Ljava/io/File;

    const-string v9, "no_backup"

    invoke-direct {v8, v7, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_4f
    iget-object v7, p0, Lcom/vungle/warren/persistence/CacheManager;->a:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_5d

    .line 11
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_5d
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_65
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_99

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    .line 14
    new-instance v7, Ljava/io/File;

    const-string v8, "vungle_cache"

    invoke-direct {v7, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 15
    invoke-static {v7}, Lcom/vungle/warren/persistence/CacheManager;->c(Ljava/io/File;)V

    .line 16
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_91

    .line 17
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_8f

    invoke-virtual {v7}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-eqz v6, :cond_8f

    const/4 v6, 0x1

    goto :goto_96

    :cond_8f
    const/4 v6, 0x0

    goto :goto_96

    .line 18
    :cond_91
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    move-result v3

    move v6, v3

    :goto_96
    if-eqz v6, :cond_65

    move-object v1, v7

    .line 19
    :cond_99
    iget-object v2, p0, Lcom/vungle/warren/persistence/CacheManager;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    .line 20
    iget-object v4, p0, Lcom/vungle/warren/persistence/CacheManager;->b:Lcom/vungle/warren/persistence/FilePreferences;

    const-string v6, "cache_paths"

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v4, v6, v7}, Lcom/vungle/warren/persistence/FilePreferences;->getStringSet(Ljava/lang/String;Ljava/util/HashSet;)Ljava/util/HashSet;

    move-result-object v4

    if-eqz v1, :cond_b5

    .line 21
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/vungle/warren/utility/CollectionsConcurrencyUtil;->addToSet(Ljava/util/HashSet;Ljava/lang/String;)V

    .line 22
    :cond_b5
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/vungle/warren/utility/CollectionsConcurrencyUtil;->addToSet(Ljava/util/HashSet;Ljava/lang/String;)V

    .line 23
    iget-object v6, p0, Lcom/vungle/warren/persistence/CacheManager;->b:Lcom/vungle/warren/persistence/FilePreferences;

    const-string v7, "cache_paths"

    invoke-virtual {v6, v7, v4}, Lcom/vungle/warren/persistence/FilePreferences;->put(Ljava/lang/String;Ljava/util/HashSet;)Lcom/vungle/warren/persistence/FilePreferences;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vungle/warren/persistence/FilePreferences;->apply()V

    .line 24
    iget-object v6, p0, Lcom/vungle/warren/persistence/CacheManager;->e:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 25
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_d0
    :goto_d0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v1, :cond_e8

    .line 26
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d0

    .line 27
    :cond_e8
    iget-object v7, p0, Lcom/vungle/warren/persistence/CacheManager;->e:Ljava/util/List;

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d0

    :cond_f3
    if-nez v3, :cond_109

    if-eqz v1, :cond_ff

    .line 28
    iget-object v3, p0, Lcom/vungle/warren/persistence/CacheManager;->d:Ljava/io/File;

    invoke-virtual {v1, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_109

    :cond_ff
    iget-object v3, p0, Lcom/vungle/warren/persistence/CacheManager;->d:Ljava/io/File;

    if-eqz v3, :cond_16d

    invoke-virtual {v3, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16d

    .line 29
    :cond_109
    iput-object v1, p0, Lcom/vungle/warren/persistence/CacheManager;->d:Ljava/io/File;

    if-eqz v1, :cond_11c

    .line 30
    iget-object v3, p0, Lcom/vungle/warren/persistence/CacheManager;->b:Lcom/vungle/warren/persistence/FilePreferences;

    const-string v4, "cache_path"

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lcom/vungle/warren/persistence/FilePreferences;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/warren/persistence/FilePreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/warren/persistence/FilePreferences;->apply()V

    .line 31
    :cond_11c
    iget-object v1, p0, Lcom/vungle/warren/persistence/CacheManager;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_122
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_132

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vungle/warren/persistence/CacheManager$Listener;

    .line 32
    invoke-interface {v3}, Lcom/vungle/warren/persistence/CacheManager$Listener;->onCacheChanged()V

    goto :goto_122

    .line 33
    :cond_132
    iput-boolean v5, p0, Lcom/vungle/warren/persistence/CacheManager;->f:Z

    .line 34
    iget-object v1, p0, Lcom/vungle/warren/persistence/CacheManager;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13a
    :goto_13a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 35
    invoke-virtual {v3, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_14a
    .catchall {:try_start_1 .. :try_end_14a} :catchall_172

    if-nez v4, :cond_13a

    .line 36
    :try_start_14c
    invoke-static {v3}, Lcom/vungle/warren/utility/FileUtility;->delete(Ljava/io/File;)V
    :try_end_14f
    .catch Ljava/io/IOException; {:try_start_14c .. :try_end_14f} :catch_150
    .catchall {:try_start_14c .. :try_end_14f} :catchall_172

    goto :goto_13a

    .line 37
    :catch_150
    :try_start_150
    sget-object v4, Lcom/vungle/warren/persistence/CacheManager;->h:Ljava/lang/String;

    const-string v6, "CacheManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t remove old cache:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v4, v6, v3}, Lcom/vungle/warren/VungleLogger;->error(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13a

    .line 38
    :cond_16d
    invoke-direct {p0, v0}, Lcom/vungle/warren/persistence/CacheManager;->e(Ljava/io/File;)V
    :try_end_170
    .catchall {:try_start_150 .. :try_end_170} :catchall_172

    .line 39
    monitor-exit p0

    return-void

    :catchall_172
    move-exception v0

    monitor-exit p0

    goto :goto_176

    :goto_175
    throw v0

    :goto_176
    goto :goto_175
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/vungle/warren/persistence/CacheManager$Listener;)V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-direct {p0}, Lcom/vungle/warren/persistence/CacheManager;->b()V

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/persistence/CacheManager;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3
    iget-boolean v0, p0, Lcom/vungle/warren/persistence/CacheManager;->f:Z

    if-eqz v0, :cond_10

    .line 4
    invoke-interface {p1}, Lcom/vungle/warren/persistence/CacheManager$Listener;->onCacheChanged()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 5
    :cond_10
    monitor-exit p0

    return-void

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getBytesAvailable()J
    .registers 3

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/vungle/warren/persistence/CacheManager;->d(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getCache()Ljava/io/File;
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-direct {p0}, Lcom/vungle/warren/persistence/CacheManager;->b()V

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/persistence/CacheManager;->d:Ljava/io/File;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getOldCaches()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-direct {p0}, Lcom/vungle/warren/persistence/CacheManager;->b()V

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/persistence/CacheManager;->e:Ljava/util/List;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeListener(Lcom/vungle/warren/persistence/CacheManager$Listener;)V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/vungle/warren/persistence/CacheManager;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 2
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

###### Class com.vungle.warren.persistence.CacheManager.AnonymousClass1 (com.vungle.warren.persistence.CacheManager$1)
.class Lcom/vungle/warren/persistence/CacheManager$1;
.super Landroid/os/FileObserver;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/persistence/CacheManager;->e(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/warren/persistence/CacheManager;


# direct methods
.method constructor <init>(Lcom/vungle/warren/persistence/CacheManager;Ljava/lang/String;I)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/persistence/CacheManager$1;->a:Lcom/vungle/warren/persistence/CacheManager;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/os/FileObserver;->stopWatching()V

    .line 2
    iget-object p1, p0, Lcom/vungle/warren/persistence/CacheManager$1;->a:Lcom/vungle/warren/persistence/CacheManager;

    invoke-static {p1}, Lcom/vungle/warren/persistence/CacheManager;->a(Lcom/vungle/warren/persistence/CacheManager;)V

    return-void
.end method

###### Class com.vungle.warren.persistence.CacheManager.AnonymousClass2 (com.vungle.warren.persistence.CacheManager$2)
.class Lcom/vungle/warren/persistence/CacheManager$2;
.super Landroid/os/FileObserver;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/persistence/CacheManager;->e(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/vungle/warren/persistence/CacheManager;


# direct methods
.method constructor <init>(Lcom/vungle/warren/persistence/CacheManager;Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/persistence/CacheManager$2;->b:Lcom/vungle/warren/persistence/CacheManager;

    iput-object p4, p0, Lcom/vungle/warren/persistence/CacheManager$2;->a:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/os/FileObserver;->stopWatching()V

    .line 2
    iget-object p1, p0, Lcom/vungle/warren/persistence/CacheManager$2;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 3
    iget-object p1, p0, Lcom/vungle/warren/persistence/CacheManager$2;->b:Lcom/vungle/warren/persistence/CacheManager;

    invoke-static {p1}, Lcom/vungle/warren/persistence/CacheManager;->a(Lcom/vungle/warren/persistence/CacheManager;)V

    :cond_10
    return-void
.end method

###### Class com.vungle.warren.persistence.CacheManager.Listener (com.vungle.warren.persistence.CacheManager$Listener)
.class public interface abstract Lcom/vungle/warren/persistence/CacheManager$Listener;
.super Ljava/lang/Object;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/persistence/CacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onCacheChanged()V
.end method
