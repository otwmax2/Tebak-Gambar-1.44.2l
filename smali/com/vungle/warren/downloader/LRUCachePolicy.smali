###### Class com.vungle.warren.downloader.LRUCachePolicy (com.vungle.warren.downloader.LRUCachePolicy)
.class public Lcom/vungle/warren/downloader/LRUCachePolicy;
.super Ljava/lang/Object;
.source "LRUCachePolicy.java"

# interfaces
.implements Lcom/vungle/warren/downloader/CachePolicy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vungle/warren/downloader/CachePolicy<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/vungle/warren/persistence/CacheManager;

.field private final b:Ljava/lang/String;

.field private c:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/vungle/warren/persistence/CacheManager;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/downloader/LRUCachePolicy;->c:Ljava/util/LinkedHashSet;

    .line 3
    iput-object p1, p0, Lcom/vungle/warren/downloader/LRUCachePolicy;->a:Lcom/vungle/warren/persistence/CacheManager;

    .line 4
    iput-object p2, p0, Lcom/vungle/warren/downloader/LRUCachePolicy;->b:Ljava/lang/String;

    return-void
.end method

.method private a()Ljava/io/File;
    .registers 4

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/vungle/warren/downloader/LRUCachePolicy;->a:Lcom/vungle/warren/persistence/CacheManager;

    invoke-virtual {v1}, Lcom/vungle/warren/persistence/CacheManager;->getCache()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/warren/downloader/LRUCachePolicy;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 3
    invoke-static {v0}, Lcom/vungle/warren/utility/FileUtility;->deleteAndLogIfFailed(Ljava/io/File;)V

    .line 4
    :cond_1c
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_25

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 6
    :cond_25
    new-instance v1, Ljava/io/File;

    const-string v2, "cache_policy_journal"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public clean()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/downloader/LRUCachePolicy;->c:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    return-void
.end method

.method public getOrderedCacheItems()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vungle/warren/downloader/LRUCachePolicy;->c:Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public load()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/vungle/warren/downloader/LRUCachePolicy;->a()Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/vungle/warren/utility/FileUtility;->readSerializable(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    if-nez v1, :cond_d

    return-void

    .line 3
    :cond_d
    instance-of v2, v1, Ljava/util/Collection;

    if-eqz v2, :cond_19

    .line 4
    iget-object v0, p0, Lcom/vungle/warren/downloader/LRUCachePolicy;->c:Ljava/util/LinkedHashSet;

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_1c

    .line 5
    :cond_19
    invoke-static {v0}, Lcom/vungle/warren/utility/FileUtility;->deleteAndLogIfFailed(Ljava/io/File;)V

    :goto_1c
    return-void
.end method

.method public put(Ljava/io/File;J)V
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_b

    .line 2
    iget-object p2, p0, Lcom/vungle/warren/downloader/LRUCachePolicy;->c:Ljava/util/LinkedHashSet;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 3
    :cond_b
    iget-object p2, p0, Lcom/vungle/warren/downloader/LRUCachePolicy;->c:Ljava/util/LinkedHashSet;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic put(Ljava/lang/Object;J)V
    .registers 4

    .line 1
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2, p3}, Lcom/vungle/warren/downloader/LRUCachePolicy;->put(Ljava/io/File;J)V

    return-void
.end method

.method public remove(Ljava/io/File;)V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/downloader/LRUCachePolicy;->c:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/vungle/warren/downloader/LRUCachePolicy;->remove(Ljava/io/File;)V

    return-void
.end method

.method public save()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/vungle/warren/downloader/LRUCachePolicy;->a()Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/downloader/LRUCachePolicy;->c:Ljava/util/LinkedHashSet;

    invoke-static {v0, v1}, Lcom/vungle/warren/utility/FileUtility;->writeSerializable(Ljava/io/File;Ljava/io/Serializable;)V

    return-void
.end method
