###### Class com.vungle.warren.downloader.CleverCache (com.vungle.warren.downloader.CleverCache)
.class public Lcom/vungle/warren/downloader/CleverCache;
.super Ljava/lang/Object;
.source "CleverCache.java"

# interfaces
.implements Lcom/vungle/warren/downloader/DownloaderCache;


# static fields
.field public static final CACHE_TOUCH_JOURNAL:Ljava/lang/String; = "cache_touch_timestamp"

.field public static final CC_DIR:Ljava/lang/String; = "clever_cache"

.field private static final g:Ljava/lang/String; = "CleverCache"


# instance fields
.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/io/File;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/vungle/warren/persistence/CacheManager;

.field private final c:Lcom/vungle/warren/downloader/CachePolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/warren/downloader/CachePolicy<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final d:J

.field private final e:Lcom/vungle/warren/SizeProvider;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/io/File;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/vungle/warren/persistence/CacheManager;Lcom/vungle/warren/downloader/CachePolicy;Lcom/vungle/warren/SizeProvider;J)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/warren/persistence/CacheManager;",
            "Lcom/vungle/warren/downloader/CachePolicy<",
            "Ljava/io/File;",
            ">;",
            "Lcom/vungle/warren/SizeProvider;",
            "J)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/downloader/CleverCache;->a:Ljava/util/HashMap;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/downloader/CleverCache;->f:Ljava/util/Map;

    .line 4
    iput-object p1, p0, Lcom/vungle/warren/downloader/CleverCache;->b:Lcom/vungle/warren/persistence/CacheManager;

    .line 5
    iput-object p2, p0, Lcom/vungle/warren/downloader/CleverCache;->c:Lcom/vungle/warren/downloader/CachePolicy;

    .line 6
    iput-object p3, p0, Lcom/vungle/warren/downloader/CleverCache;->e:Lcom/vungle/warren/SizeProvider;

    const-wide/16 p1, 0x0

    .line 7
    invoke-static {p1, p2, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/vungle/warren/downloader/CleverCache;->d:J

    return-void
.end method

.method private declared-synchronized a()V
    .registers 13

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/vungle/warren/downloader/CleverCache;->d:J

    sub-long/2addr v0, v2

    .line 2
    invoke-virtual {p0}, Lcom/vungle/warren/downloader/CleverCache;->getAssetsDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 3
    new-instance v3, Ljava/util/HashSet;

    iget-object v4, p0, Lcom/vungle/warren/downloader/CleverCache;->a:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    if-eqz v2, :cond_86

    .line 4
    array-length v4, v2

    if-lez v4, :cond_86

    .line 5
    array-length v4, v2

    const/4 v5, 0x0

    :goto_22
    if-ge v5, v4, :cond_68

    aget-object v6, v2, v5

    .line 6
    invoke-virtual {p0, v6}, Lcom/vungle/warren/downloader/CleverCache;->getCacheUpdateTimestamp(Ljava/io/File;)J

    move-result-wide v7

    .line 7
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 8
    invoke-direct {p0, v6}, Lcom/vungle/warren/downloader/CleverCache;->e(Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_34

    goto :goto_65

    :cond_34
    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-eqz v11, :cond_3f

    cmp-long v9, v7, v0

    if-lez v9, :cond_3f

    goto :goto_65

    .line 9
    :cond_3f
    invoke-virtual {p0, v6}, Lcom/vungle/warren/downloader/CleverCache;->deleteContents(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_4f

    .line 10
    iget-object v7, p0, Lcom/vungle/warren/downloader/CleverCache;->a:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v7, p0, Lcom/vungle/warren/downloader/CleverCache;->c:Lcom/vungle/warren/downloader/CachePolicy;

    invoke-interface {v7, v6}, Lcom/vungle/warren/downloader/CachePolicy;->remove(Ljava/lang/Object;)V

    .line 12
    :cond_4f
    sget-object v7, Lcom/vungle/warren/downloader/CleverCache;->g:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Deleted expired file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_65
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    .line 13
    :cond_68
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 14
    iget-object v2, p0, Lcom/vungle/warren/downloader/CleverCache;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6c

    .line 15
    :cond_7e
    iget-object v0, p0, Lcom/vungle/warren/downloader/CleverCache;->c:Lcom/vungle/warren/downloader/CachePolicy;

    invoke-interface {v0}, Lcom/vungle/warren/downloader/CachePolicy;->save()V

    .line 16
    invoke-direct {p0}, Lcom/vungle/warren/downloader/CleverCache;->g()V
    :try_end_86
    .catchall {:try_start_1 .. :try_end_86} :catchall_88

    .line 17
    :cond_86
    monitor-exit p0

    return-void

    :catchall_88
    move-exception v0

    monitor-exit p0

    goto :goto_8c

    :goto_8b
    throw v0

    :goto_8c
    goto :goto_8b
.end method

.method private b()Ljava/io/File;
    .registers 4

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/vungle/warren/downloader/CleverCache;->b:Lcom/vungle/warren/persistence/CacheManager;

    invoke-virtual {v1}, Lcom/vungle/warren/persistence/CacheManager;->getCache()Ljava/io/File;

    move-result-object v1

    const-string v2, "clever_cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_16

    .line 3
    invoke-static {v0}, Lcom/vungle/warren/utility/FileUtility;->deleteAndLogIfFailed(Ljava/io/File;)V

    .line 4
    :cond_16
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1f
    return-object v0
.end method

.method private c()Ljava/io/File;
    .registers 4

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/vungle/warren/downloader/CleverCache;->b()Ljava/io/File;

    move-result-object v1

    const-string v2, "cache_touch_timestamp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private d(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/downloader/CleverCache;->getMetaDir()Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/vungle/warren/downloader/CleverCache;->getAssetsDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_47

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    invoke-interface {v2, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 5
    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_21
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 7
    invoke-virtual {p0, v0}, Lcom/vungle/warren/downloader/CleverCache;->deleteContents(Ljava/io/File;)Z

    .line 8
    sget-object v1, Lcom/vungle/warren/downloader/CleverCache;->g:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleted non tracked file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    :cond_47
    return-void
.end method

.method private e(Ljava/io/File;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/downloader/CleverCache;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_28

    .line 2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_28

    .line 3
    sget-object v0, Lcom/vungle/warren/downloader/CleverCache;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File is tracked and protected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    :cond_28
    const/4 p1, 0x0

    return p1
.end method

.method private f()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/vungle/warren/downloader/CleverCache;->c()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/vungle/warren/utility/FileUtility;->readSerializable(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    .line 2
    instance-of v1, v0, Ljava/util/HashMap;

    if-nez v1, :cond_f

    return-void

    .line 3
    :cond_f
    :try_start_f
    check-cast v0, Ljava/util/HashMap;

    .line 4
    iget-object v1, p0, Lcom/vungle/warren/downloader/CleverCache;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_16
    .catch Ljava/lang/ClassCastException; {:try_start_f .. :try_end_16} :catch_17

    goto :goto_30

    :catch_17
    move-exception v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Error %1$s occured; old map is not File -> Long"

    .line 5
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CleverCache#loadTouchTimestamps; loadAd sequence"

    .line 6
    invoke-static {v1, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Lcom/vungle/warren/downloader/CleverCache;->c()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/vungle/warren/utility/FileUtility;->deleteAndLogIfFailed(Ljava/io/File;)V

    :goto_30
    return-void
.end method

.method private g()V
    .registers 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/vungle/warren/downloader/CleverCache;->a:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 2
    invoke-direct {p0}, Lcom/vungle/warren/downloader/CleverCache;->c()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/vungle/warren/utility/FileUtility;->writeSerializable(Ljava/io/File;Ljava/io/Serializable;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .registers 5

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/vungle/warren/downloader/CleverCache;->c:Lcom/vungle/warren/downloader/CachePolicy;

    invoke-interface {v0}, Lcom/vungle/warren/downloader/CachePolicy;->getOrderedCacheItems()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/vungle/warren/downloader/CleverCache;->d(Ljava/util/List;)V

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    if-eqz v2, :cond_f

    .line 4
    invoke-direct {p0, v2}, Lcom/vungle/warren/downloader/CleverCache;->e(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_24

    goto :goto_f

    .line 5
    :cond_24
    invoke-virtual {p0, v2}, Lcom/vungle/warren/downloader/CleverCache;->deleteContents(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_f

    add-int/lit8 v1, v1, 0x1

    .line 6
    iget-object v3, p0, Lcom/vungle/warren/downloader/CleverCache;->c:Lcom/vungle/warren/downloader/CachePolicy;

    invoke-interface {v3, v2}, Lcom/vungle/warren/downloader/CachePolicy;->remove(Ljava/lang/Object;)V

    .line 7
    iget-object v3, p0, Lcom/vungle/warren/downloader/CleverCache;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_37
    if-lez v1, :cond_41

    .line 8
    iget-object v0, p0, Lcom/vungle/warren/downloader/CleverCache;->c:Lcom/vungle/warren/downloader/CachePolicy;

    invoke-interface {v0}, Lcom/vungle/warren/downloader/CachePolicy;->save()V

    .line 9
    invoke-direct {p0}, Lcom/vungle/warren/downloader/CleverCache;->g()V
    :try_end_41
    .catchall {:try_start_1 .. :try_end_41} :catchall_43

    .line 10
    :cond_41
    monitor-exit p0

    return-void

    :catchall_43
    move-exception v0

    monitor-exit p0

    goto :goto_47

    :goto_46
    throw v0

    :goto_47
    goto :goto_46
.end method

.method public declared-synchronized deleteAndRemove(Ljava/io/File;)Z
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/vungle/warren/downloader/CleverCache;->deleteContents(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/downloader/CleverCache;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/vungle/warren/downloader/CleverCache;->c:Lcom/vungle/warren/downloader/CachePolicy;

    invoke-interface {v0, p1}, Lcom/vungle/warren/downloader/CachePolicy;->remove(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/vungle/warren/downloader/CleverCache;->c:Lcom/vungle/warren/downloader/CachePolicy;

    invoke-interface {p1}, Lcom/vungle/warren/downloader/CachePolicy;->save()V

    .line 5
    invoke-direct {p0}, Lcom/vungle/warren/downloader/CleverCache;->g()V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1f

    const/4 p1, 0x1

    .line 6
    monitor-exit p0

    return p1

    :cond_1c
    const/4 p1, 0x0

    .line 7
    monitor-exit p0

    return p1

    :catchall_1f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deleteContents(Ljava/io/File;)Z
    .registers 9

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    :try_start_3
    invoke-static {p1}, Lcom/vungle/warren/utility/FileUtility;->delete(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_14
    .catchall {:try_start_3 .. :try_end_6} :catchall_12

    .line 2
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/vungle/warren/downloader/CleverCache;->getMetaFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 3
    invoke-static {v2}, Lcom/vungle/warren/utility/FileUtility;->delete(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_d} :catch_f
    .catchall {:try_start_6 .. :try_end_d} :catchall_12

    .line 4
    monitor-exit p0

    return v0

    :catch_f
    move-exception v2

    const/4 v3, 0x1

    goto :goto_16

    :catchall_12
    move-exception p1

    goto :goto_38

    :catch_14
    move-exception v2

    const/4 v3, 0x0

    :goto_16
    :try_start_16
    const-string v4, "CleverCache#deleteContents; loadAd sequence"

    const-string v5, "Cannot delete %1$s for file %2$s; Error %3$s occured"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    if-eqz v3, :cond_22

    const-string v3, "meta"

    goto :goto_24

    :cond_22
    const-string v3, "file"

    :goto_24
    aput-object v3, v6, v1

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v0

    const/4 p1, 0x2

    aput-object v2, v6, p1

    .line 6
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {v4, p1}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_36
    .catchall {:try_start_16 .. :try_end_36} :catchall_12

    .line 8
    monitor-exit p0

    return v1

    :goto_38
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getAssetsDir()Ljava/io/File;
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/vungle/warren/downloader/CleverCache;->b()Ljava/io/File;

    move-result-object v1

    const-string v2, "assets"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 3
    invoke-static {v0}, Lcom/vungle/warren/utility/FileUtility;->deleteAndLogIfFailed(Ljava/io/File;)V

    .line 4
    :cond_1b
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_24

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    .line 6
    :cond_24
    monitor-exit p0

    return-object v0

    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCacheUpdateTimestamp(Ljava/io/File;)J
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/vungle/warren/downloader/CleverCache;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_10

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    goto :goto_14

    :cond_10
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    :goto_14
    monitor-exit p0

    return-wide v0

    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getFile(Ljava/lang/String;)Ljava/io/File;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "SHA-256"

    const-string v1, "UTF-8"
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_66

    .line 1
    :try_start_5
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 3
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    const/16 v2, 0xa

    .line 4
    invoke-static {p1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/vungle/warren/downloader/CleverCache;->getAssetsDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/vungle/warren/downloader/CleverCache;->c:Lcom/vungle/warren/downloader/CachePolicy;

    const-wide/16 v3, 0x0

    invoke-interface {p1, v2, v3, v4}, Lcom/vungle/warren/downloader/CachePolicy;->put(Ljava/lang/Object;J)V
    :try_end_2a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_2a} :catch_49
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_2a} :catch_2c
    .catchall {:try_start_5 .. :try_end_2a} :catchall_66

    .line 7
    monitor-exit p0

    return-object v2

    :catch_2c
    move-exception p1

    :try_start_2d
    const-string v1, "CleverCache#getFile; loadAd sequence"

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot get instance of MessageDigest with algorithm "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_49
    move-exception p1

    const-string v0, "CleverCache#getFile; loadAd sequence"

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot encode url with charset = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_66
    .catchall {:try_start_2d .. :try_end_66} :catchall_66

    :catchall_66
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMetaDir()Ljava/io/File;
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/vungle/warren/downloader/CleverCache;->getAssetsDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "meta"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_15

    .line 3
    invoke-static {v0}, Lcom/vungle/warren/utility/FileUtility;->deleteAndLogIfFailed(Ljava/io/File;)V

    .line 4
    :cond_15
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 6
    :cond_1e
    monitor-exit p0

    return-object v0

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMetaFile(Ljava/io/File;)Ljava/io/File;
    .registers 5

    monitor-enter p0

    .line 1
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/vungle/warren/downloader/CleverCache;->getMetaDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".vng_meta"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    monitor-exit p0

    return-object v0

    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized init()V
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/vungle/warren/downloader/CleverCache;->c:Lcom/vungle/warren/downloader/CachePolicy;

    invoke-interface {v0}, Lcom/vungle/warren/downloader/CachePolicy;->load()V

    .line 2
    invoke-direct {p0}, Lcom/vungle/warren/downloader/CleverCache;->f()V

    .line 3
    invoke-direct {p0}, Lcom/vungle/warren/downloader/CleverCache;->a()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 4
    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onCacheHit(Ljava/io/File;J)V
    .registers 5

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/vungle/warren/downloader/CleverCache;->c:Lcom/vungle/warren/downloader/CachePolicy;

    invoke-interface {v0, p1, p2, p3}, Lcom/vungle/warren/downloader/CachePolicy;->put(Ljava/lang/Object;J)V

    .line 2
    iget-object p2, p0, Lcom/vungle/warren/downloader/CleverCache;->c:Lcom/vungle/warren/downloader/CachePolicy;

    invoke-interface {p2}, Lcom/vungle/warren/downloader/CachePolicy;->save()V

    .line 3
    sget-object p2, Lcom/vungle/warren/downloader/CleverCache;->g:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cache hit "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " cache touch updated"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p0}, Lcom/vungle/warren/downloader/CleverCache;->purge()Ljava/util/List;
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    .line 5
    monitor-exit p0

    return-void

    :catchall_2b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized purge()Ljava/util/List;
    .registers 13
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
    iget-object v0, p0, Lcom/vungle/warren/downloader/CleverCache;->e:Lcom/vungle/warren/SizeProvider;

    invoke-interface {v0}, Lcom/vungle/warren/SizeProvider;->getTargetSize()J

    move-result-wide v0

    .line 2
    invoke-virtual {p0}, Lcom/vungle/warren/downloader/CleverCache;->getAssetsDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/vungle/warren/utility/FileUtility;->size(Ljava/io/File;)J

    move-result-wide v2

    .line 3
    sget-object v4, Lcom/vungle/warren/downloader/CleverCache;->g:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Purge check current cache total: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " target: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v5, v2, v0

    if-gez v5, :cond_37

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_106

    monitor-exit p0

    return-object v0

    :cond_37
    :try_start_37
    const-string v2, "Purge start"

    .line 5
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object v3, p0, Lcom/vungle/warren/downloader/CleverCache;->c:Lcom/vungle/warren/downloader/CachePolicy;

    invoke-interface {v3}, Lcom/vungle/warren/downloader/CachePolicy;->getOrderedCacheItems()Ljava/util/List;

    move-result-object v3

    .line 8
    invoke-direct {p0, v3}, Lcom/vungle/warren/downloader/CleverCache;->d(Ljava/util/List;)V

    .line 9
    invoke-virtual {p0}, Lcom/vungle/warren/downloader/CleverCache;->getAssetsDir()Ljava/io/File;

    move-result-object v5

    invoke-static {v5}, Lcom/vungle/warren/utility/FileUtility;->size(Ljava/io/File;)J

    move-result-wide v5

    cmp-long v7, v5, v0

    if-gez v7, :cond_61

    const-string v0, "Cleaned up not tracked files, size is ok"

    .line 10
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_5f
    .catchall {:try_start_37 .. :try_end_5f} :catchall_106

    monitor-exit p0

    return-object v0

    .line 12
    :cond_61
    :try_start_61
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_65
    :goto_65
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ef

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    if-nez v4, :cond_74

    goto :goto_65

    .line 13
    :cond_74
    invoke-direct {p0, v4}, Lcom/vungle/warren/downloader/CleverCache;->e(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_7b

    goto :goto_65

    .line 14
    :cond_7b
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v7

    .line 15
    invoke-virtual {p0, v4}, Lcom/vungle/warren/downloader/CleverCache;->deleteContents(Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_65

    sub-long/2addr v5, v7

    .line 16
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    sget-object v9, Lcom/vungle/warren/downloader/CleverCache;->g:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Deleted file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " size: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " total: "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " target: "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iget-object v7, p0, Lcom/vungle/warren/downloader/CleverCache;->c:Lcom/vungle/warren/downloader/CachePolicy;

    invoke-interface {v7, v4}, Lcom/vungle/warren/downloader/CachePolicy;->remove(Ljava/lang/Object;)V

    .line 19
    iget-object v7, p0, Lcom/vungle/warren/downloader/CleverCache;->a:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    cmp-long v4, v5, v0

    if-gez v4, :cond_65

    .line 20
    iget-object v0, p0, Lcom/vungle/warren/downloader/CleverCache;->e:Lcom/vungle/warren/SizeProvider;

    invoke-interface {v0}, Lcom/vungle/warren/SizeProvider;->getTargetSize()J

    move-result-wide v0

    cmp-long v4, v5, v0

    if-gez v4, :cond_65

    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cleaned enough total: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " target: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_ef
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_fd

    .line 23
    iget-object v0, p0, Lcom/vungle/warren/downloader/CleverCache;->c:Lcom/vungle/warren/downloader/CachePolicy;

    invoke-interface {v0}, Lcom/vungle/warren/downloader/CachePolicy;->save()V

    .line 24
    invoke-direct {p0}, Lcom/vungle/warren/downloader/CleverCache;->g()V

    .line 25
    :cond_fd
    sget-object v0, Lcom/vungle/warren/downloader/CleverCache;->g:Ljava/lang/String;

    const-string v1, "Purge complete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_104
    .catchall {:try_start_61 .. :try_end_104} :catchall_106

    .line 26
    monitor-exit p0

    return-object v2

    :catchall_106
    move-exception v0

    monitor-exit p0

    goto :goto_10a

    :goto_109
    throw v0

    :goto_10a
    goto :goto_109
.end method

.method public declared-synchronized setCacheLastUpdateTimestamp(Ljava/io/File;J)V
    .registers 5

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/vungle/warren/downloader/CleverCache;->a:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lcom/vungle/warren/downloader/CleverCache;->g()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 3
    monitor-exit p0

    return-void

    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startTracking(Ljava/io/File;)V
    .registers 6

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/vungle/warren/downloader/CleverCache;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2
    iget-object v1, p0, Lcom/vungle/warren/downloader/CleverCache;->c:Lcom/vungle/warren/downloader/CachePolicy;

    const-wide/16 v2, 0x0

    invoke-interface {v1, p1, v2, v3}, Lcom/vungle/warren/downloader/CachePolicy;->put(Ljava/lang/Object;J)V

    .line 3
    iget-object v1, p0, Lcom/vungle/warren/downloader/CleverCache;->c:Lcom/vungle/warren/downloader/CachePolicy;

    invoke-interface {v1}, Lcom/vungle/warren/downloader/CachePolicy;->save()V

    const/4 v1, 0x1

    if-eqz v0, :cond_29

    .line 4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gtz v2, :cond_1f

    goto :goto_29

    .line 5
    :cond_1f
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2d

    .line 6
    :cond_29
    :goto_29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 7
    :goto_2d
    iget-object v1, p0, Lcom/vungle/warren/downloader/CleverCache;->f:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v1, Lcom/vungle/warren/downloader/CleverCache;->g:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start tracking file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ref count "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catchall {:try_start_1 .. :try_end_50} :catchall_52

    .line 9
    monitor-exit p0

    return-void

    :catchall_52
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stopTracking(Ljava/io/File;)V
    .registers 6

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/vungle/warren/downloader/CleverCache;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_12

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/downloader/CleverCache;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_47

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_12
    :try_start_12
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gtz v1, :cond_27

    .line 6
    iget-object v1, p0, Lcom/vungle/warren/downloader/CleverCache;->f:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_27
    sget-object v1, Lcom/vungle/warren/downloader/CleverCache;->g:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop tracking file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ref count "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catchall {:try_start_12 .. :try_end_45} :catchall_47

    .line 8
    monitor-exit p0

    return-void

    :catchall_47
    move-exception p1

    monitor-exit p0

    throw p1
.end method
