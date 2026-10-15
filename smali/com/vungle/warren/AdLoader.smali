###### Class com.vungle.warren.AdLoader (com.vungle.warren.AdLoader)
.class public Lcom/vungle/warren/AdLoader;
.super Ljava/lang/Object;
.source "AdLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/AdLoader$DownloadAdCallback;,
        Lcom/vungle/warren/AdLoader$Operation;,
        Lcom/vungle/warren/AdLoader$Priority;,
        Lcom/vungle/warren/AdLoader$ReschedulePolicy;,
        Lcom/vungle/warren/AdLoader$DownloadCallback;
    }
.end annotation


# static fields
.field public static final DEFAULT_LOAD_OPTIMIZATION_ENABLED:Z = false

.field public static final EXPONENTIAL_RATE:J = 0x2L

.field public static final RETRY_COUNT:I = 0x5

.field public static final RETRY_DELAY:J = 0x7d0L

.field public static final TT_DOWNLOAD_CONTEXT:Ljava/lang/String; = "ttDownloadContext"

.field private static final q:Ljava/lang/String; = "com.vungle.warren.AdLoader"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/vungle/warren/AdRequest;",
            "Lcom/vungle/warren/AdLoader$Operation;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/vungle/warren/AdRequest;",
            "Lcom/vungle/warren/AdLoader$Operation;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/vungle/warren/AdLoader$Operation;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/vungle/warren/OperationSequence;

.field private e:Lcom/vungle/warren/AdRequest;

.field private final f:Lcom/vungle/warren/persistence/Repository;

.field private final g:Lcom/vungle/warren/utility/Executors;

.field private final h:Lcom/vungle/warren/VungleApiClient;

.field private final i:Lcom/vungle/warren/persistence/CacheManager;

.field private final j:Lcom/vungle/warren/downloader/Downloader;

.field private final k:Lcom/vungle/warren/RuntimeValues;

.field private final l:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/vungle/warren/tasks/JobRunner;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Lcom/vungle/warren/VungleStaticApi;

.field private final n:Lcom/vungle/warren/VisionController;

.field private final o:Lcom/vungle/warren/omsdk/OMInjector;

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/vungle/warren/utility/Executors;Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/VungleApiClient;Lcom/vungle/warren/persistence/CacheManager;Lcom/vungle/warren/downloader/Downloader;Lcom/vungle/warren/RuntimeValues;Lcom/vungle/warren/VungleStaticApi;Lcom/vungle/warren/VisionController;Lcom/vungle/warren/OperationSequence;Lcom/vungle/warren/omsdk/OMInjector;)V
    .registers 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/AdLoader;->a:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/AdLoader;->b:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/AdLoader;->c:Ljava/util/List;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/vungle/warren/AdLoader;->e:Lcom/vungle/warren/AdRequest;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/AdLoader;->l:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/vungle/warren/AdLoader;->p:Z

    .line 8
    iput-object p1, p0, Lcom/vungle/warren/AdLoader;->g:Lcom/vungle/warren/utility/Executors;

    .line 9
    iput-object p2, p0, Lcom/vungle/warren/AdLoader;->f:Lcom/vungle/warren/persistence/Repository;

    .line 10
    iput-object p3, p0, Lcom/vungle/warren/AdLoader;->h:Lcom/vungle/warren/VungleApiClient;

    .line 11
    iput-object p4, p0, Lcom/vungle/warren/AdLoader;->i:Lcom/vungle/warren/persistence/CacheManager;

    .line 12
    iput-object p5, p0, Lcom/vungle/warren/AdLoader;->j:Lcom/vungle/warren/downloader/Downloader;

    .line 13
    iput-object p6, p0, Lcom/vungle/warren/AdLoader;->k:Lcom/vungle/warren/RuntimeValues;

    .line 14
    iput-object p7, p0, Lcom/vungle/warren/AdLoader;->m:Lcom/vungle/warren/VungleStaticApi;

    .line 15
    iput-object p8, p0, Lcom/vungle/warren/AdLoader;->n:Lcom/vungle/warren/VisionController;

    .line 16
    iput-object p9, p0, Lcom/vungle/warren/AdLoader;->d:Lcom/vungle/warren/OperationSequence;

    .line 17
    iput-object p10, p0, Lcom/vungle/warren/AdLoader;->o:Lcom/vungle/warren/omsdk/OMInjector;

    return-void
.end method

.method static synthetic A(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdLoader$Operation;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/warren/AdLoader;->W(Lcom/vungle/warren/AdLoader$Operation;)V

    return-void
.end method

.method static synthetic B(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdLoader$Operation;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/warren/AdLoader;->f0(Lcom/vungle/warren/AdLoader$Operation;)V

    return-void
.end method

.method static synthetic C(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdRequest;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/warren/AdLoader;->g0(Lcom/vungle/warren/AdRequest;)V

    return-void
.end method

.method static synthetic D(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/AdLoader;->f:Lcom/vungle/warren/persistence/Repository;

    return-object p0
.end method

.method private E(Lcom/vungle/warren/model/Advertisement;)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_56

    .line 1
    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_11

    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getState()I

    move-result v1

    if-eq v1, v2, :cond_11

    goto :goto_56

    .line 2
    :cond_11
    iget-object v1, p0, Lcom/vungle/warren/AdLoader;->f:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/vungle/warren/persistence/Repository;->loadAllAdAssets(Ljava/lang/String;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_56

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2a

    goto :goto_56

    .line 4
    :cond_2a
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/model/AdAsset;

    .line 5
    iget v3, v1, Lcom/vungle/warren/model/AdAsset;->fileType:I

    if-ne v3, v2, :cond_4c

    .line 6
    new-instance v3, Ljava/io/File;

    iget-object v4, v1, Lcom/vungle/warren/model/AdAsset;->localPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, v3, v1}, Lcom/vungle/warren/AdLoader;->I(Ljava/io/File;Lcom/vungle/warren/model/AdAsset;)Z

    move-result v1

    if-nez v1, :cond_2e

    return v0

    .line 8
    :cond_4c
    iget-object v1, v1, Lcom/vungle/warren/model/AdAsset;->serverPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2e

    return v0

    :cond_55
    return v2

    :cond_56
    :goto_56
    return v0
.end method

.method private F(Ljava/lang/String;Lcom/vungle/warren/AdConfig$AdSize;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/AdLoader;->f:Lcom/vungle/warren/persistence/Repository;

    const-class v1, Lcom/vungle/warren/model/Placement;

    new-instance v2, Lcom/vungle/warren/AdLoader$3;

    invoke-direct {v2, p0, p2}, Lcom/vungle/warren/AdLoader$3;-><init>(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdConfig$AdSize;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;Lcom/vungle/warren/persistence/Repository$LoadCallback;)V

    return-void
.end method

.method private G(Lcom/vungle/warren/AdLoader$Operation;Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/AdLoader$DownloadCallback;)V
    .registers 15

    .line 1
    iget-object v0, p1, Lcom/vungle/warren/AdLoader$Operation;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    invoke-virtual {p2}, Lcom/vungle/warren/model/Advertisement;->getDownloadableUrls()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "AdLoader#downloadAdAssets; loadAd sequence"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_7f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_46

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_46

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    :cond_46
    new-array v0, v4, [Ljava/lang/Object;

    .line 5
    iget-object v1, p1, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    aput-object v1, v0, v3

    aput-object p2, v0, v5

    const-string v1, "One or more ad asset URLs is empty or not valid;request = %1$s; advertisement = %2$s"

    .line 6
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v2, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object p1, p1, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    const/4 v1, 0x0

    invoke-interface {p3, v0, p1, v1}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V

    .line 9
    sget-object p1, Lcom/vungle/warren/AdLoader;->q:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Aborting, Failed to download Ad assets for: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 10
    :cond_7f
    new-instance v6, Lcom/vungle/warren/DownloadCallbackWrapper;

    iget-object v0, p0, Lcom/vungle/warren/AdLoader;->g:Lcom/vungle/warren/utility/Executors;

    invoke-interface {v0}, Lcom/vungle/warren/utility/Executors;->getUIExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {v6, v0, p3}, Lcom/vungle/warren/DownloadCallbackWrapper;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/vungle/warren/AdLoader$DownloadCallback;)V

    const/16 v0, 0x1a

    .line 11
    :try_start_8c
    iget-object v1, p0, Lcom/vungle/warren/AdLoader;->f:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v1, p2}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V
    :try_end_91
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_8c .. :try_end_91} :catch_1ea

    .line 12
    iget-object p3, p0, Lcom/vungle/warren/AdLoader;->f:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {p2}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/vungle/warren/persistence/Repository;->loadAllAdAssets(Ljava/lang/String;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object p3

    invoke-virtual {p3}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    if-nez p3, :cond_c3

    new-array p3, v4, [Ljava/lang/Object;

    .line 13
    iget-object v1, p1, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    aput-object v1, p3, v3

    aput-object p2, p3, v5

    const-string v1, "Cannot load all ad assets; op.request = %1$s; advertisement = %2$s"

    .line 14
    invoke-static {v1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 15
    invoke-static {v2, p3}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    new-instance p3, Lcom/vungle/warren/error/VungleException;

    invoke-direct {p3, v0}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object p1, p1, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual {p2}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v6, p3, p1, p2}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V

    return-void

    .line 17
    :cond_c3
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_c7
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_198

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/model/AdAsset;

    .line 18
    iget v7, v1, Lcom/vungle/warren/model/AdAsset;->status:I

    const/4 v8, 0x3

    const/16 v9, 0x18

    if-ne v7, v8, :cond_10c

    .line 19
    new-instance v7, Ljava/io/File;

    iget-object v8, v1, Lcom/vungle/warren/model/AdAsset;->localPath:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v7, v1}, Lcom/vungle/warren/AdLoader;->I(Ljava/io/File;Lcom/vungle/warren/model/AdAsset;)Z

    move-result v7

    if-eqz v7, :cond_e8

    goto :goto_c7

    .line 20
    :cond_e8
    iget v7, v1, Lcom/vungle/warren/model/AdAsset;->fileType:I

    if-ne v7, v5, :cond_10c

    new-array p3, v4, [Ljava/lang/Object;

    .line 21
    iget-object v0, p1, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    aput-object v0, p3, v3

    aput-object p2, p3, v5

    const-string v0, "Cannot download ad assets - asset filetype is zip_asset;request = %1$s; advertisement = %2$s"

    .line 22
    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 23
    invoke-static {v2, p3}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    new-instance p3, Lcom/vungle/warren/error/VungleException;

    invoke-direct {p3, v9}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object p1, p1, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual {p2}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v6, p3, p1, p2}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V

    return-void

    .line 25
    :cond_10c
    iget v7, v1, Lcom/vungle/warren/model/AdAsset;->status:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_116

    iget v7, v1, Lcom/vungle/warren/model/AdAsset;->fileType:I

    if-nez v7, :cond_116

    goto :goto_c7

    .line 26
    :cond_116
    iget-object v7, v1, Lcom/vungle/warren/model/AdAsset;->serverPath:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_13e

    new-array p3, v4, [Ljava/lang/Object;

    .line 27
    iget-object v0, p1, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    aput-object v0, p3, v3

    aput-object p2, p3, v5

    const-string v0, "Cannot download ad assets - empty ;request = %1$s; advertisement = %2$s"

    .line 28
    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 29
    invoke-static {v2, p3}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    new-instance p3, Lcom/vungle/warren/error/VungleException;

    invoke-direct {p3, v9}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object p1, p1, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual {p2}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v6, p3, p1, p2}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V

    return-void

    .line 31
    :cond_13e
    iget v7, p1, Lcom/vungle/warren/AdLoader$Operation;->k:I

    invoke-direct {p0, v7, v1}, Lcom/vungle/warren/AdLoader;->M(ILcom/vungle/warren/model/AdAsset;)Lcom/vungle/warren/downloader/DownloadRequest;

    move-result-object v7

    .line 32
    iget v8, v1, Lcom/vungle/warren/model/AdAsset;->status:I

    if-ne v8, v5, :cond_155

    .line 33
    iget-object v8, p0, Lcom/vungle/warren/AdLoader;->j:Lcom/vungle/warren/downloader/Downloader;

    const-wide/16 v9, 0x3e8

    invoke-interface {v8, v7, v9, v10}, Lcom/vungle/warren/downloader/Downloader;->cancelAndAwait(Lcom/vungle/warren/downloader/DownloadRequest;J)Z

    .line 34
    iget v7, p1, Lcom/vungle/warren/AdLoader$Operation;->k:I

    invoke-direct {p0, v7, v1}, Lcom/vungle/warren/AdLoader;->M(ILcom/vungle/warren/model/AdAsset;)Lcom/vungle/warren/downloader/DownloadRequest;

    move-result-object v7

    .line 35
    :cond_155
    sget-object v8, Lcom/vungle/warren/AdLoader;->q:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Starting download for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iput v5, v1, Lcom/vungle/warren/model/AdAsset;->status:I

    .line 37
    :try_start_16d
    iget-object v8, p0, Lcom/vungle/warren/AdLoader;->f:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v8, v1}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V
    :try_end_172
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_16d .. :try_end_172} :catch_179

    .line 38
    iget-object v1, p1, Lcom/vungle/warren/AdLoader$Operation;->l:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c7

    :catch_179
    move-exception p3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    aput-object p3, v4, v5

    const-string p3, "Can\'t save asset %1$s; exception = %2$s"

    .line 39
    invoke-static {p3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 40
    invoke-static {v2, p3}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance p3, Lcom/vungle/warren/error/VungleException;

    invoke-direct {p3, v0}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object p1, p1, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual {p2}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v6, p3, p1, p2}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V

    return-void

    .line 42
    :cond_198
    iget-object p3, p1, Lcom/vungle/warren/AdLoader$Operation;->l:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-nez p3, :cond_1b0

    .line 43
    invoke-virtual {p2}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/vungle/warren/AdLoader;->V(Lcom/vungle/warren/AdLoader$Operation;Lcom/vungle/warren/AdLoader$DownloadCallback;Ljava/lang/String;Ljava/util/List;Z)V

    return-void

    .line 44
    :cond_1b0
    sget-object p3, Lcom/vungle/warren/AdLoader;->q:Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/Object;

    iget-object v1, p1, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    aput-object v1, v0, v3

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "Start to download assets,  request = %1$s at: %2$d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ttDownloadContext"

    .line 46
    invoke-static {v5, p3, v1, v0}, Lcom/vungle/warren/VungleLogger;->verbose(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0, p2, p1, v6}, Lcom/vungle/warren/AdLoader;->J(Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/AdLoader$Operation;Lcom/vungle/warren/AdLoader$DownloadCallback;)Lcom/vungle/warren/downloader/AssetDownloadListener;

    move-result-object p2

    .line 48
    iget-object p1, p1, Lcom/vungle/warren/AdLoader$Operation;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1d7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1e9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/vungle/warren/downloader/DownloadRequest;

    .line 49
    iget-object v0, p0, Lcom/vungle/warren/AdLoader;->j:Lcom/vungle/warren/downloader/Downloader;

    invoke-interface {v0, p3, p2}, Lcom/vungle/warren/downloader/Downloader;->download(Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;)V

    goto :goto_1d7

    :cond_1e9
    return-void

    :catch_1ea
    new-array v1, v4, [Ljava/lang/Object;

    .line 50
    iget-object v4, p1, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    aput-object v4, v1, v3

    aput-object p2, v1, v5

    const-string v3, "Cannot save advertisement op.request = %1$s; advertisement = %2$s"

    .line 51
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-static {v2, v1}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance v1, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v1, v0}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object p1, p1, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual {p2}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, v1, p1, p2}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V

    return-void
.end method

.method private H(Lcom/vungle/warren/AdLoader$Operation;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/AdLoader$DownloadCallback;)V
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/AdLoader;->k:Lcom/vungle/warren/RuntimeValues;

    iget-object v0, v0, Lcom/vungle/warren/RuntimeValues;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/vungle/warren/HeaderBiddingCallback;

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 3
    sget-object v0, Lcom/vungle/warren/AdLoader;->q:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p1, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 4
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "Start to request ad, request = %1$s, at: %2$d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ttDownloadContext"

    .line 5
    invoke-static {v3, v0, v2, v1}, Lcom/vungle/warren/VungleLogger;->verbose(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/vungle/warren/AdLoader;->h:Lcom/vungle/warren/VungleApiClient;

    iget-object v1, p1, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    .line 7
    invoke-virtual {v1}, Lcom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/vungle/warren/AdLoader$Operation;->b:Lcom/vungle/warren/AdConfig$AdSize;

    invoke-static {v2}, Lcom/vungle/warren/AdConfig$AdSize;->isNonMrecBannerAdSize(Lcom/vungle/warren/AdConfig$AdSize;)Z

    move-result v2

    if-eqz v2, :cond_42

    iget-object v2, p1, Lcom/vungle/warren/AdLoader$Operation;->b:Lcom/vungle/warren/AdConfig$AdSize;

    invoke-virtual {v2}, Lcom/vungle/warren/AdConfig$AdSize;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_44

    :cond_42
    const-string v2, ""

    .line 8
    :goto_44
    invoke-virtual {p2}, Lcom/vungle/warren/model/Placement;->isHeaderBidding()Z

    move-result p2

    .line 9
    iget-object v3, p0, Lcom/vungle/warren/AdLoader;->n:Lcom/vungle/warren/VisionController;

    invoke-virtual {v3}, Lcom/vungle/warren/VisionController;->c()Z

    move-result v3

    if-eqz v3, :cond_57

    iget-object v3, p0, Lcom/vungle/warren/AdLoader;->n:Lcom/vungle/warren/VisionController;

    invoke-virtual {v3}, Lcom/vungle/warren/VisionController;->getPayload()Lcom/google/gson/o;

    move-result-object v3

    goto :goto_58

    :cond_57
    const/4 v3, 0x0

    .line 10
    :goto_58
    invoke-virtual {v0, v1, v2, p2, v3}, Lcom/vungle/warren/VungleApiClient;->requestAd(Ljava/lang/String;Ljava/lang/String;ZLcom/google/gson/o;)Lcom/vungle/warren/network/Call;

    move-result-object p2

    new-instance v0, Lcom/vungle/warren/AdLoader$5;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/vungle/warren/AdLoader$5;-><init>(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdLoader$Operation;JLcom/vungle/warren/AdLoader$DownloadCallback;Lcom/vungle/warren/HeaderBiddingCallback;)V

    .line 11
    invoke-interface {p2, v0}, Lcom/vungle/warren/network/Call;->enqueue(Lcom/vungle/warren/network/Callback;)V

    return-void
.end method

.method private I(Ljava/io/File;Lcom/vungle/warren/model/AdAsset;)Z
    .registers 6

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-wide p1, p2, Lcom/vungle/warren/model/AdAsset;->fileSize:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method private J(Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/AdLoader$Operation;Lcom/vungle/warren/AdLoader$DownloadCallback;)Lcom/vungle/warren/downloader/AssetDownloadListener;
    .registers 5

    .line 1
    new-instance v0, Lcom/vungle/warren/AdLoader$6;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/vungle/warren/AdLoader$6;-><init>(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdLoader$Operation;Lcom/vungle/warren/AdLoader$DownloadCallback;Lcom/vungle/warren/model/Advertisement;)V

    return-object v0
.end method

.method private K(ILjava/lang/String;)Lcom/vungle/warren/downloader/AssetPriority;
    .registers 4
    .param p1    # I
        .annotation build Lcom/vungle/warren/AdLoader$Priority;
        .end annotation
    .end param

    const v0, -0x7ffffffe

    .line 1
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2
    iget-boolean v0, p0, Lcom/vungle/warren/AdLoader;->p:Z

    invoke-static {p2, v0}, Lcom/vungle/warren/AdLoader;->getAssetPriority(Ljava/lang/String;Z)I

    move-result p2

    .line 3
    new-instance v0, Lcom/vungle/warren/downloader/AssetPriority;

    invoke-direct {v0, p1, p2}, Lcom/vungle/warren/downloader/AssetPriority;-><init>(II)V

    return-object v0
.end method

.method private M(ILcom/vungle/warren/model/AdAsset;)Lcom/vungle/warren/downloader/DownloadRequest;
    .registers 11
    .param p1    # I
        .annotation build Lcom/vungle/warren/AdLoader$Priority;
        .end annotation
    .end param

    .line 1
    iget-object v0, p2, Lcom/vungle/warren/model/AdAsset;->localPath:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/vungle/warren/AdLoader;->K(ILjava/lang/String;)Lcom/vungle/warren/downloader/AssetPriority;

    move-result-object v3

    .line 2
    new-instance p1, Lcom/vungle/warren/downloader/DownloadRequest;

    iget-object v4, p2, Lcom/vungle/warren/model/AdAsset;->serverPath:Ljava/lang/String;

    iget-object v5, p2, Lcom/vungle/warren/model/AdAsset;->localPath:Ljava/lang/String;

    iget-object v7, p2, Lcom/vungle/warren/model/AdAsset;->identifier:Ljava/lang/String;

    const/4 v2, 0x3

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/vungle/warren/downloader/DownloadRequest;-><init>(ILcom/vungle/warren/downloader/AssetPriority;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-object p1
.end method

.method private O(Lcom/vungle/warren/AdLoader$Operation;Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/AdLoader$DownloadCallback;)Z
    .registers 15

    .line 1
    invoke-virtual {p2}, Lcom/vungle/warren/model/Advertisement;->getOmEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_98

    const/16 v0, 0x1a

    const/4 v2, 0x0

    .line 2
    :try_start_a
    invoke-virtual {p0, p2}, Lcom/vungle/warren/AdLoader;->L(Lcom/vungle/warren/model/Advertisement;)Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-eqz v3, :cond_4d

    .line 3
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_19

    goto :goto_4d

    .line 4
    :cond_19
    iget-object v6, p0, Lcom/vungle/warren/AdLoader;->o:Lcom/vungle/warren/omsdk/OMInjector;

    invoke-virtual {v6, v3}, Lcom/vungle/warren/omsdk/OMInjector;->injectJsFiles(Ljava/io/File;)Ljava/util/List;

    move-result-object v3

    .line 5
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_98

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    .line 6
    new-instance v7, Lcom/vungle/warren/model/AdAsset;

    invoke-virtual {p2}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Lcom/vungle/warren/model/AdAsset;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v8

    iput-wide v8, v7, Lcom/vungle/warren/model/AdAsset;->fileSize:J

    .line 8
    iput v4, v7, Lcom/vungle/warren/model/AdAsset;->fileType:I

    .line 9
    iput v5, v7, Lcom/vungle/warren/model/AdAsset;->status:I

    .line 10
    iget-object v6, p0, Lcom/vungle/warren/AdLoader;->f:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v6, v7}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V

    goto :goto_23

    :cond_4d
    :goto_4d
    const-string v6, "AdLoader#onAssetDownloadFinished; loadAd sequence"

    const-string v7, "Mraid ad; bad destinationDir - %1$srequest = %2$s; advertisement = %3$s"

    new-array v5, v5, [Ljava/lang/Object;

    if-nez v3, :cond_58

    const-string v3, "null"

    goto :goto_5a

    :cond_58
    const-string v3, "not a dir"

    :goto_5a
    aput-object v3, v5, v2

    .line 11
    iget-object v3, p1, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    aput-object v3, v5, v1

    aput-object p2, v5, v4

    .line 12
    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-static {v6, v1}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    new-instance v1, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v1, v0}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v3, p1, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual {p2}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3, v1, v3, v4}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_77} :catch_87
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_a .. :try_end_77} :catch_78

    return v2

    .line 15
    :catch_78
    new-instance v1, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v1, v0}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object p1, p1, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual {p2}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, v1, p1, p2}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V

    return v2

    .line 16
    :catch_87
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object p1, p1, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual {p2}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, v0, p1, p2}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V

    return v2

    :cond_98
    return v1
.end method

.method private P(Lcom/vungle/warren/model/Advertisement;)Z
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/vungle/warren/AdLoader;->p:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getAdType()I

    move-result p1

    if-ne p1, v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method private Q(Lcom/vungle/warren/AdLoader$Operation;Lcom/vungle/warren/persistence/Repository;)Z
    .registers 6

    .line 1
    iget-object v0, p1, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual {v0}, Lcom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/vungle/warren/persistence/Repository;->findValidAdvertisementsForPlacement(Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object p2

    invoke-virtual {p2}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_24

    .line 2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    int-to-long v0, p2

    iget-object p1, p1, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual {p1}, Lcom/vungle/warren/AdRequest;->getAdCount()J

    move-result-wide p1

    cmp-long v2, v0, p1

    if-ltz v2, :cond_24

    const/4 p1, 0x1

    goto :goto_25

    :cond_24
    const/4 p1, 0x0

    :goto_25
    return p1
.end method

.method private R(Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/AdConfig$AdSize;)Z
    .registers 5

    .line 1
    invoke-virtual {p1}, Lcom/vungle/warren/model/Placement;->getPlacementAdType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    invoke-static {p2}, Lcom/vungle/warren/AdConfig$AdSize;->isNonMrecBannerAdSize(Lcom/vungle/warren/AdConfig$AdSize;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2
    :cond_d
    invoke-virtual {p1}, Lcom/vungle/warren/model/Placement;->getPlacementAdType()I

    move-result p1

    if-nez p1, :cond_1a

    invoke-static {p2}, Lcom/vungle/warren/AdConfig$AdSize;->isDefaultAdSize(Lcom/vungle/warren/AdConfig$AdSize;)Z

    move-result p1

    if-nez p1, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :cond_1b
    :goto_1b
    return v1
.end method

.method private S(Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {p1}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {p1}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_14

    :cond_12
    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1
.end method

.method private T(Ljava/io/File;)Z
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "postroll"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "template"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p1, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p1, 0x1

    :goto_1c
    return p1
.end method

.method private U(Lcom/vungle/warren/AdLoader$Operation;Lcom/vungle/warren/DownloadCallbackWrapper;)V
    .registers 11

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/AdLoader;->g:Lcom/vungle/warren/utility/Executors;

    invoke-interface {v0}, Lcom/vungle/warren/utility/Executors;->getBackgroundExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    new-instance v7, Lcom/vungle/warren/AdLoader$4;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/vungle/warren/AdLoader$4;-><init>(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/DownloadCallbackWrapper;Lcom/vungle/warren/AdLoader$Operation;J)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private V(Lcom/vungle/warren/AdLoader$Operation;Lcom/vungle/warren/AdLoader$DownloadCallback;Ljava/lang/String;Ljava/util/List;Z)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/warren/AdLoader$Operation;",
            "Lcom/vungle/warren/AdLoader$DownloadCallback;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v0, p3

    .line 1
    sget-object v4, Lcom/vungle/warren/AdLoader;->q:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, v2, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v6, v9

    const-string v7, "Assets download completed, request  = %1$s, at: %2$d"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "ttDownloadContext"

    .line 3
    invoke-static {v9, v4, v7, v6}, Lcom/vungle/warren/VungleLogger;->verbose(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/16 v7, 0x18

    if-eqz v4, :cond_1b1

    .line 5
    iget-object v4, v1, Lcom/vungle/warren/AdLoader;->f:Lcom/vungle/warren/persistence/Repository;

    const-class v10, Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v4, v0, v10}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vungle/warren/model/Advertisement;

    if-nez v4, :cond_60

    new-array v4, v5, [Ljava/lang/Object;

    .line 6
    iget-object v5, v2, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    aput-object v5, v4, v8

    aput-object v0, v4, v9

    const-string v5, "advertisement is null: request = %1$s; advertisementId = %2$s"

    .line 7
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "AdLoader#DownloadAdCallback#onDownloadCompleted; loadAd sequence"

    .line 8
    invoke-static {v5, v4}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance v4, Lcom/vungle/warren/error/VungleException;

    const/16 v5, 0xb

    invoke-direct {v4, v5}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-interface {v3, v4, v2, v0}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V

    return-void

    .line 10
    :cond_60
    iget-object v10, v1, Lcom/vungle/warren/AdLoader;->f:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v10, v0}, Lcom/vungle/warren/persistence/Repository;->loadAllAdAssets(Ljava/lang/String;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v10

    invoke-virtual {v10}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    const-string v11, "null"

    const-string v12, "AdLoader#onAssetDownloadFinished; loadAd sequence"

    const/4 v13, 0x3

    if-eqz v10, :cond_18c

    .line 11
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    if-nez v14, :cond_7b

    goto/16 :goto_18c

    .line 12
    :cond_7b
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vungle/warren/model/AdAsset;

    .line 13
    iget v14, v10, Lcom/vungle/warren/model/AdAsset;->status:I

    const/4 v15, 0x4

    if-ne v14, v13, :cond_cb

    .line 14
    new-instance v14, Ljava/io/File;

    iget-object v6, v10, Lcom/vungle/warren/model/AdAsset;->localPath:Ljava/lang/String;

    invoke-direct {v14, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-direct {v1, v14, v10}, Lcom/vungle/warren/AdLoader;->I(Ljava/io/File;Lcom/vungle/warren/model/AdAsset;)Z

    move-result v6

    if-nez v6, :cond_7f

    new-array v0, v15, [Ljava/lang/Object;

    .line 16
    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v8

    invoke-virtual {v10}, Lcom/vungle/warren/model/AdAsset;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v9

    iget-object v6, v2, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    aput-object v6, v0, v5

    aput-object v4, v0, v13

    const-string v5, "Assets file not valid %1$s; asset = %2$s,request = %3$s; advertisement = %4$s"

    .line 17
    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-static {v12, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_ca

    .line 19
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v0, v7}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual {v4}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v2, v4}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V

    :cond_ca
    return-void

    .line 20
    :cond_cb
    iget v6, v10, Lcom/vungle/warren/model/AdAsset;->fileType:I

    if-nez v6, :cond_7f

    if-eq v14, v15, :cond_7f

    new-array v0, v13, [Ljava/lang/Object;

    .line 21
    invoke-virtual {v10}, Lcom/vungle/warren/model/AdAsset;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v8

    iget-object v6, v2, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    aput-object v6, v0, v9

    aput-object v4, v0, v5

    const-string v5, "Zip asset left unprocessed asset = %1$s,request = %2$s; advertisement = %3$s"

    .line 22
    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-static {v12, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v0, v7}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual {v4}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v2, v4}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V

    return-void

    .line 25
    :cond_f7
    invoke-virtual {v4}, Lcom/vungle/warren/model/Advertisement;->getAdType()I

    move-result v0

    if-ne v0, v9, :cond_17f

    .line 26
    invoke-virtual {v1, v4}, Lcom/vungle/warren/AdLoader;->L(Lcom/vungle/warren/model/Advertisement;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_154

    .line 27
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_10a

    goto :goto_154

    .line 28
    :cond_10a
    sget-object v6, Lcom/vungle/warren/AdLoader;->q:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "saving MRAID for "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-virtual {v4, v0}, Lcom/vungle/warren/model/Advertisement;->setMraidAssetDir(Ljava/io/File;)V

    .line 30
    :try_start_127
    iget-object v0, v1, Lcom/vungle/warren/AdLoader;->f:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v0, v4}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V
    :try_end_12c
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_127 .. :try_end_12c} :catch_12d

    goto :goto_17f

    :catch_12d
    move-exception v0

    new-array v6, v13, [Ljava/lang/Object;

    aput-object v0, v6, v8

    .line 31
    iget-object v0, v2, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    aput-object v0, v6, v9

    aput-object v4, v6, v5

    const-string v0, "Issue(s) with database: can\'t save advertisement;exception = %1$s; request = %2$s; advertisement = %3$s"

    .line 32
    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-static {v12, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_153

    .line 34
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/16 v5, 0x1a

    invoke-direct {v0, v5}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual {v4}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v2, v4}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V

    :cond_153
    return-void

    :cond_154
    :goto_154
    new-array v6, v13, [Ljava/lang/Object;

    if-nez v0, :cond_159

    goto :goto_15b

    :cond_159
    const-string v11, "not a dir"

    :goto_15b
    aput-object v11, v6, v8

    .line 35
    iget-object v0, v2, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    aput-object v0, v6, v9

    aput-object v4, v6, v5

    const-string v0, "Mraid ad; bad destinationDir - %1$srequest = %2$s; advertisement = %3$s"

    .line 36
    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-static {v12, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_17e

    .line 38
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/16 v5, 0x1a

    invoke-direct {v0, v5}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual {v4}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v2, v4}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V

    :cond_17e
    return-void

    :cond_17f
    :goto_17f
    if-eqz p5, :cond_202

    .line 39
    iget-object v0, v2, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual {v4}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v0, v2}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadCompleted(Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V

    goto/16 :goto_202

    :cond_18c
    :goto_18c
    new-array v4, v13, [Ljava/lang/Object;

    if-nez v10, :cond_191

    goto :goto_193

    :cond_191
    const-string v11, "empty"

    :goto_193
    aput-object v11, v4, v8

    .line 40
    iget-object v6, v2, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    aput-object v6, v4, v9

    aput-object v0, v4, v5

    const-string v5, "Assets are %1$s; request = %2$s; advertisement = %3$s"

    .line 41
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 42
    invoke-static {v12, v4}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_1b0

    .line 43
    new-instance v4, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v4, v7}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-interface {v3, v4, v2, v0}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V

    :cond_1b0
    return-void

    :cond_1b1
    const/4 v4, 0x0

    .line 44
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1b6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1fb

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    .line 45
    iget-object v6, v4, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;->cause:Ljava/lang/Throwable;

    invoke-static {v6}, Lcom/vungle/warren/error/VungleException;->getExceptionCode(Ljava/lang/Throwable;)I

    move-result v6

    const/16 v8, 0x1a

    if-ne v6, v8, :cond_1d2

    .line 46
    new-instance v4, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v4, v8}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    goto :goto_1fb

    .line 47
    :cond_1d2
    iget v6, v4, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;->serverCode:I

    invoke-direct {v1, v6}, Lcom/vungle/warren/AdLoader;->Z(I)Z

    move-result v6

    const/16 v10, 0x17

    if-eqz v6, :cond_1e6

    iget v6, v4, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;->reason:I

    if-ne v6, v9, :cond_1e6

    .line 48
    new-instance v4, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v4, v10}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    goto :goto_1f5

    .line 49
    :cond_1e6
    iget v4, v4, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;->reason:I

    if-nez v4, :cond_1f0

    .line 50
    new-instance v4, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v4, v10}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    goto :goto_1f5

    .line 51
    :cond_1f0
    new-instance v4, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v4, v7}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    .line 52
    :goto_1f5
    invoke-virtual {v4}, Lcom/vungle/warren/error/VungleException;->getExceptionCode()I

    move-result v6

    if-ne v6, v7, :cond_1b6

    :cond_1fb
    :goto_1fb
    if-eqz p5, :cond_202

    .line 53
    iget-object v2, v2, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-interface {v3, v4, v2, v0}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V

    :cond_202
    :goto_202
    return-void
.end method

.method private W(Lcom/vungle/warren/AdLoader$Operation;)V
    .registers 6

    .line 1
    iget-object v0, p1, Lcom/vungle/warren/AdLoader$Operation;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/downloader/DownloadRequest;

    .line 2
    iget v2, p1, Lcom/vungle/warren/AdLoader$Operation;->k:I

    iget-object v3, v1, Lcom/vungle/warren/downloader/DownloadRequest;->path:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/vungle/warren/AdLoader;->K(ILjava/lang/String;)Lcom/vungle/warren/downloader/AssetPriority;

    move-result-object v2

    .line 3
    invoke-virtual {v1, v2}, Lcom/vungle/warren/downloader/DownloadRequest;->setPriority(Lcom/vungle/warren/downloader/AssetPriority;)V

    .line 4
    iget-object v2, p0, Lcom/vungle/warren/AdLoader;->j:Lcom/vungle/warren/downloader/Downloader;

    invoke-interface {v2, v1}, Lcom/vungle/warren/downloader/Downloader;->updatePriority(Lcom/vungle/warren/downloader/DownloadRequest;)V

    goto :goto_6

    :cond_23
    return-void
.end method

.method private X(Lcom/vungle/warren/AdLoader$Operation;I)V
    .registers 7
    .param p2    # I
        .annotation build Lcom/vungle/warren/error/VungleException$ExceptionCode;
        .end annotation
    .end param

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    new-instance v1, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v1, p2}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    if-eqz p1, :cond_f

    move-object v1, p1

    goto :goto_11

    :cond_f
    const-string v1, "null"

    :goto_11
    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Error %1$s occured; operation is %2$s"

    .line 2
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdLoader#onError; loadAd sequence"

    .line 3
    invoke-static {v1, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_42

    .line 4
    iget-object v0, p1, Lcom/vungle/warren/AdLoader$Operation;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/LoadAdCallback;

    .line 5
    iget-object v2, p1, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual {v2}, Lcom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v3, p2}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-interface {v1, v2, v3}, Lcom/vungle/warren/LoadAdCallback;->onError(Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V

    goto :goto_27

    :cond_42
    return-void
.end method

.method private Y(Lcom/vungle/warren/AdLoader$Operation;Lcom/vungle/warren/AdLoader$DownloadCallback;Lcom/vungle/warren/model/AdAsset;Lcom/vungle/warren/model/Advertisement;)V
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    .line 1
    iget v0, v4, Lcom/vungle/warren/model/AdAsset;->status:I

    const/16 v6, 0x18

    const/4 v7, 0x3

    if-eq v0, v7, :cond_20

    .line 2
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v0, v6}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual/range {p4 .. p4}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v2, v4}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_20
    new-instance v0, Ljava/io/File;

    iget-object v8, v4, Lcom/vungle/warren/model/AdAsset;->localPath:Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-direct {v1, v0, v4}, Lcom/vungle/warren/AdLoader;->I(Ljava/io/File;Lcom/vungle/warren/model/AdAsset;)Z

    move-result v8

    const/4 v9, 0x4

    const-string v10, "AdLoader#onAssetDownloadFinished; loadAd sequence"

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-nez v8, :cond_5f

    new-array v8, v9, [Ljava/lang/Object;

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v12

    invoke-virtual/range {p3 .. p3}, Lcom/vungle/warren/model/AdAsset;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v13

    iget-object v0, v2, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    aput-object v0, v8, v11

    aput-object v5, v8, v7

    const-string v0, "Assets file not valid %1$s; asset = %2$s,request = %3$s; advertisement = %4$s"

    .line 6
    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v10, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v0, v6}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual/range {p4 .. p4}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v2, v4}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V

    return-void

    .line 9
    :cond_5f
    iget v8, v4, Lcom/vungle/warren/model/AdAsset;->fileType:I

    const-string v14, "ttDownloadContext"

    if-nez v8, :cond_110

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 11
    sget-object v8, Lcom/vungle/warren/AdLoader;->q:Ljava/lang/String;

    new-array v6, v11, [Ljava/lang/Object;

    iget-object v7, v2, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    aput-object v7, v6, v12

    .line 12
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v13

    const-string v7, "Start to unzip assets, request  = %1$s, at: %2$d"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 13
    invoke-static {v13, v8, v14, v6}, Lcom/vungle/warren/VungleLogger;->verbose(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :try_start_80
    iget-object v6, v1, Lcom/vungle/warren/AdLoader;->f:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual/range {p4 .. p4}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/vungle/warren/persistence/Repository;->loadAllAdAssets(Ljava/lang/String;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 15
    invoke-direct {v1, v5, v4, v0, v6}, Lcom/vungle/warren/AdLoader;->h0(Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/model/AdAsset;Ljava/io/File;Ljava/util/List;)V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_93} :catch_da
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_80 .. :try_end_93} :catch_ae

    new-array v0, v11, [Ljava/lang/Object;

    .line 16
    iget-object v4, v2, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    aput-object v4, v0, v12

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v15

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v0, v13

    const-string v4, "Unzip assets completed, request  = %1$s, elapsed time = %2$dms"

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-static {v13, v8, v14, v0}, Lcom/vungle/warren/VungleLogger;->verbose(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_110

    :catch_ae
    move-exception v0

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v0, v6, v12

    .line 19
    invoke-virtual/range {p3 .. p3}, Lcom/vungle/warren/model/AdAsset;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v13

    iget-object v0, v2, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    aput-object v0, v6, v11

    const/4 v4, 0x3

    aput-object v5, v6, v4

    const-string v0, "Issue(s) with database: exception = %1$s; asset = %2$s,request = %3$s; advertisement = %4$s"

    .line 20
    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-static {v10, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/16 v4, 0x1a

    invoke-direct {v0, v4}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual/range {p4 .. p4}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v2, v4}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V

    return-void

    :catch_da
    new-array v6, v9, [Ljava/lang/Object;

    .line 23
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v12

    invoke-virtual/range {p3 .. p3}, Lcom/vungle/warren/model/AdAsset;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v13

    iget-object v0, v2, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    aput-object v0, v6, v11

    const/4 v7, 0x3

    aput-object v5, v6, v7

    const-string v0, "Unzip failed %1$s; asset = %2$s,request = %3$s; advertisement = %4$s"

    .line 24
    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-static {v10, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v0, v1, Lcom/vungle/warren/AdLoader;->j:Lcom/vungle/warren/downloader/Downloader;

    iget-object v4, v4, Lcom/vungle/warren/model/AdAsset;->serverPath:Ljava/lang/String;

    invoke-interface {v0, v4}, Lcom/vungle/warren/downloader/Downloader;->dropCache(Ljava/lang/String;)Z

    .line 27
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/16 v4, 0x18

    invoke-direct {v0, v4}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual/range {p4 .. p4}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v2, v4}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V

    return-void

    .line 28
    :cond_110
    :goto_110
    invoke-direct {v1, v5}, Lcom/vungle/warren/AdLoader;->P(Lcom/vungle/warren/model/Advertisement;)Z

    move-result v0

    if-eqz v0, :cond_13d

    .line 29
    sget-object v0, Lcom/vungle/warren/AdLoader;->q:Ljava/lang/String;

    new-array v4, v11, [Ljava/lang/Object;

    iget-object v6, v2, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    aput-object v6, v4, v12

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, v5, Lcom/vungle/warren/model/Advertisement;->adRequestStartTime:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v13

    const-string v6, "Ad ready to play, request  = %1$s, elapsed time = %2$dms"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 31
    invoke-static {v13, v0, v14, v4}, Lcom/vungle/warren/VungleLogger;->verbose(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object v0, v2, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual/range {p4 .. p4}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v0, v2}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadCompleted(Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V

    :cond_13d
    return-void
.end method

.method private Z(I)Z
    .registers 3

    const/16 v0, 0x198

    if-eq p1, v0, :cond_f

    const/16 v0, 0x1f4

    if-gt v0, p1, :cond_d

    const/16 v0, 0x258

    if-ge p1, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method

.method static synthetic a(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdRequest;)Lcom/vungle/warren/AdRequest;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/AdLoader;->e:Lcom/vungle/warren/AdRequest;

    return-object p1
.end method

.method private a0(I)Lcom/vungle/warren/error/VungleException;
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/warren/AdLoader;->Z(I)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 2
    new-instance p1, Lcom/vungle/warren/error/VungleException;

    const/16 v0, 0x16

    invoke-direct {p1, v0}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    return-object p1

    .line 3
    :cond_e
    new-instance p1, Lcom/vungle/warren/error/VungleException;

    const/16 v0, 0x15

    invoke-direct {p1, v0}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    return-object p1
.end method

.method static synthetic b(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/OperationSequence;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/AdLoader;->d:Lcom/vungle/warren/OperationSequence;

    return-object p0
.end method

.method private b0(Ljava/lang/Throwable;)Lcom/vungle/warren/error/VungleException;
    .registers 4

    .line 1
    instance-of v0, p1, Ljava/net/UnknownHostException;

    const/16 v1, 0xb

    if-eqz v0, :cond_c

    .line 2
    new-instance p1, Lcom/vungle/warren/error/VungleException;

    invoke-direct {p1, v1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    return-object p1

    .line 3
    :cond_c
    instance-of p1, p1, Ljava/io/IOException;

    if-eqz p1, :cond_18

    .line 4
    new-instance p1, Lcom/vungle/warren/error/VungleException;

    const/16 v0, 0x14

    invoke-direct {p1, v0}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    return-object p1

    .line 5
    :cond_18
    new-instance p1, Lcom/vungle/warren/error/VungleException;

    invoke-direct {p1, v1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    return-object p1
.end method

.method static synthetic c(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/VungleStaticApi;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/AdLoader;->m:Lcom/vungle/warren/VungleStaticApi;

    return-object p0
.end method

.method static synthetic d(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/AdConfig$AdSize;)Z
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/vungle/warren/AdLoader;->R(Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/AdConfig$AdSize;)Z

    move-result p0

    return p0
.end method

.method static synthetic e(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/model/Advertisement;)Z
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/warren/AdLoader;->E(Lcom/vungle/warren/model/Advertisement;)Z

    move-result p0

    return p0
.end method

.method private e0(Lcom/vungle/warren/AdRequest;Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/AdLoader;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/warren/AdLoader$Operation;

    if-eqz p1, :cond_f

    .line 2
    iget-object p1, p1, Lcom/vungle/warren/AdLoader$Operation;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_f
    return-void
.end method

.method static synthetic f()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/vungle/warren/AdLoader;->q:Ljava/lang/String;

    return-object v0
.end method

.method private f0(Lcom/vungle/warren/AdLoader$Operation;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/AdLoader;->a:Ljava/util/Map;

    iget-object v1, p1, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/vungle/warren/DownloadCallbackWrapper;

    iget-object v1, p0, Lcom/vungle/warren/AdLoader;->g:Lcom/vungle/warren/utility/Executors;

    invoke-interface {v1}, Lcom/vungle/warren/utility/Executors;->getBackgroundExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/vungle/warren/AdLoader$DownloadAdCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/vungle/warren/AdLoader$DownloadAdCallback;-><init>(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdLoader$1;)V

    invoke-direct {v0, v1, v2}, Lcom/vungle/warren/DownloadCallbackWrapper;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/vungle/warren/AdLoader$DownloadCallback;)V

    invoke-direct {p0, p1, v0}, Lcom/vungle/warren/AdLoader;->U(Lcom/vungle/warren/AdLoader$Operation;Lcom/vungle/warren/DownloadCallbackWrapper;)V

    return-void
.end method

.method static synthetic g(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/RuntimeValues;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/AdLoader;->k:Lcom/vungle/warren/RuntimeValues;

    return-object p0
.end method

.method private g0(Lcom/vungle/warren/AdRequest;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/AdLoader;->e:Lcom/vungle/warren/AdRequest;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Lcom/vungle/warren/AdRequest;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    :cond_a
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/vungle/warren/AdLoader;->e:Lcom/vungle/warren/AdRequest;

    .line 3
    iget-object p1, p0, Lcom/vungle/warren/AdLoader;->d:Lcom/vungle/warren/OperationSequence;

    invoke-virtual {p1}, Lcom/vungle/warren/OperationSequence;->b()Lcom/vungle/warren/OperationSequence$Entry;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 4
    iget-object p1, p1, Lcom/vungle/warren/OperationSequence$Entry;->b:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v0, p1, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    iput-object v0, p0, Lcom/vungle/warren/AdLoader;->e:Lcom/vungle/warren/AdRequest;

    .line 5
    invoke-direct {p0, p1}, Lcom/vungle/warren/AdLoader;->f0(Lcom/vungle/warren/AdLoader$Operation;)V

    :cond_1e
    return-void
.end method

.method public static getAssetPriority(Ljava/lang/String;Z)I
    .registers 2
    .annotation build Lcom/vungle/warren/downloader/DownloadRequest$Priority;
    .end annotation

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    const-string p1, "template"

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic h(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/CacheManager;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/AdLoader;->i:Lcom/vungle/warren/persistence/CacheManager;

    return-object p0
.end method

.method private h0(Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/model/AdAsset;Ljava/io/File;Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/warren/model/Advertisement;",
            "Lcom/vungle/warren/model/AdAsset;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Lcom/vungle/warren/model/AdAsset;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_9
    :goto_9
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_20

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/model/AdAsset;

    .line 3
    iget v3, v1, Lcom/vungle/warren/model/AdAsset;->fileType:I

    if-ne v3, v2, :cond_9

    .line 4
    iget-object v1, v1, Lcom/vungle/warren/model/AdAsset;->localPath:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 5
    :cond_20
    invoke-virtual {p0, p1}, Lcom/vungle/warren/AdLoader;->L(Lcom/vungle/warren/model/Advertisement;)Ljava/io/File;

    move-result-object p4

    const/4 v1, 0x1

    if-eqz p4, :cond_e0

    .line 6
    invoke-virtual {p4}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_2f

    goto/16 :goto_e0

    .line 7
    :cond_2f
    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/vungle/warren/AdLoader$7;

    invoke-direct {v4, p0, v0}, Lcom/vungle/warren/AdLoader$7;-><init>(Lcom/vungle/warren/AdLoader;Ljava/util/List;)V

    invoke-static {v2, v3, v4}, Lcom/vungle/warren/utility/UnzipUtility;->unzip(Ljava/lang/String;Ljava/lang/String;Lcom/vungle/warren/utility/UnzipUtility$Filter;)Ljava/util/List;

    move-result-object v0

    .line 8
    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "template"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_86

    .line 9
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "mraid.js"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_86

    .line 11
    new-instance v3, Ljava/io/PrintWriter;

    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v2, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 12
    invoke-static {v3}, Lcom/vungle/warren/ui/HackMraid;->apply(Ljava/io/PrintWriter;)V

    .line 13
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    .line 14
    :cond_86
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 15
    new-instance v3, Lcom/vungle/warren/model/AdAsset;

    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/vungle/warren/model/AdAsset;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/vungle/warren/model/AdAsset;->fileSize:J

    .line 17
    iput v1, v3, Lcom/vungle/warren/model/AdAsset;->fileType:I

    .line 18
    iget-object v2, p2, Lcom/vungle/warren/model/AdAsset;->identifier:Ljava/lang/String;

    iput-object v2, v3, Lcom/vungle/warren/model/AdAsset;->parentId:Ljava/lang/String;

    const/4 v2, 0x3

    .line 19
    iput v2, v3, Lcom/vungle/warren/model/AdAsset;->status:I

    .line 20
    iget-object v2, p0, Lcom/vungle/warren/AdLoader;->f:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v2, v3}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V

    goto :goto_8a

    .line 21
    :cond_b9
    sget-object p1, Lcom/vungle/warren/AdLoader;->q:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uzipped "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-static {p4}, Lcom/vungle/warren/utility/FileUtility;->printDirectoryTree(Ljava/io/File;)V

    const/4 p1, 0x4

    .line 23
    iput p1, p2, Lcom/vungle/warren/model/AdAsset;->status:I

    .line 24
    iget-object p1, p0, Lcom/vungle/warren/AdLoader;->f:Lcom/vungle/warren/persistence/Repository;

    new-instance p4, Lcom/vungle/warren/AdLoader$8;

    invoke-direct {p4, p0, p3}, Lcom/vungle/warren/AdLoader$8;-><init>(Lcom/vungle/warren/AdLoader;Ljava/io/File;)V

    invoke-virtual {p1, p2, p4}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    return-void

    :cond_e0
    :goto_e0
    new-array p2, v2, [Ljava/lang/Object;

    const/4 p3, 0x0

    if-nez p4, :cond_e8

    const-string p4, "null"

    goto :goto_ea

    :cond_e8
    const-string p4, "not a dir"

    :goto_ea
    aput-object p4, p2, p3

    aput-object p1, p2, v1

    const-string p1, "Can\'t unzip file: destination dir is %1$s; advertisement = %2$s"

    .line 25
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "AdLoader#unzipFile; loadAd sequence"

    .line 26
    invoke-static {p2, p1}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Unable to access Destination Directory"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_102

    :goto_101
    throw p1

    :goto_102
    goto :goto_101
.end method

.method static synthetic i(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdRequest;Z)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/vungle/warren/AdLoader;->e0(Lcom/vungle/warren/AdRequest;Z)V

    return-void
.end method

.method static synthetic j(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdLoader$Operation;Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/AdLoader$DownloadCallback;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/warren/AdLoader;->G(Lcom/vungle/warren/AdLoader$Operation;Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/AdLoader$DownloadCallback;)V

    return-void
.end method

.method static synthetic k(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdLoader$Operation;Lcom/vungle/warren/persistence/Repository;)Z
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/vungle/warren/AdLoader;->Q(Lcom/vungle/warren/AdLoader$Operation;Lcom/vungle/warren/persistence/Repository;)Z

    move-result p0

    return p0
.end method

.method static synthetic l(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdLoader$Operation;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/AdLoader$DownloadCallback;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/warren/AdLoader;->H(Lcom/vungle/warren/AdLoader$Operation;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/AdLoader$DownloadCallback;)V

    return-void
.end method

.method static synthetic m(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdLoader$Operation;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/vungle/warren/AdLoader;->X(Lcom/vungle/warren/AdLoader$Operation;I)V

    return-void
.end method

.method static synthetic n(Lcom/vungle/warren/AdLoader;Ljava/lang/Throwable;)Lcom/vungle/warren/error/VungleException;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/warren/AdLoader;->b0(Ljava/lang/Throwable;)Lcom/vungle/warren/error/VungleException;

    move-result-object p0

    return-object p0
.end method

.method static synthetic o(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/VungleApiClient;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/AdLoader;->h:Lcom/vungle/warren/VungleApiClient;

    return-object p0
.end method

.method static synthetic p(Lcom/vungle/warren/AdLoader;I)Lcom/vungle/warren/error/VungleException;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/warren/AdLoader;->a0(I)Lcom/vungle/warren/error/VungleException;

    move-result-object p0

    return-object p0
.end method

.method static synthetic q(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/VisionController;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/AdLoader;->n:Lcom/vungle/warren/VisionController;

    return-object p0
.end method

.method static synthetic r(Lcom/vungle/warren/AdLoader;Ljava/lang/String;)Z
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/warren/AdLoader;->S(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic s(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/utility/Executors;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/AdLoader;->g:Lcom/vungle/warren/utility/Executors;

    return-object p0
.end method

.method static synthetic t(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdLoader$Operation;Lcom/vungle/warren/AdLoader$DownloadCallback;Ljava/lang/String;Ljava/util/List;Z)V
    .registers 6

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/vungle/warren/AdLoader;->V(Lcom/vungle/warren/AdLoader$Operation;Lcom/vungle/warren/AdLoader$DownloadCallback;Ljava/lang/String;Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic u(Lcom/vungle/warren/AdLoader;Ljava/io/File;)Z
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/warren/AdLoader;->T(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method static synthetic v(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdLoader$Operation;Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/AdLoader$DownloadCallback;)Z
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/warren/AdLoader;->O(Lcom/vungle/warren/AdLoader$Operation;Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/AdLoader$DownloadCallback;)Z

    move-result p0

    return p0
.end method

.method static synthetic w(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdLoader$Operation;Lcom/vungle/warren/AdLoader$DownloadCallback;Lcom/vungle/warren/model/AdAsset;Lcom/vungle/warren/model/Advertisement;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vungle/warren/AdLoader;->Y(Lcom/vungle/warren/AdLoader$Operation;Lcom/vungle/warren/AdLoader$DownloadCallback;Lcom/vungle/warren/model/AdAsset;Lcom/vungle/warren/model/Advertisement;)V

    return-void
.end method

.method static synthetic x(Lcom/vungle/warren/AdLoader;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/AdLoader;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic y(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/model/Advertisement;)Z
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/warren/AdLoader;->P(Lcom/vungle/warren/model/Advertisement;)Z

    move-result p0

    return p0
.end method

.method static synthetic z(Lcom/vungle/warren/AdLoader;)Ljava/util/Map;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/AdLoader;->a:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method L(Lcom/vungle/warren/model/Advertisement;)Ljava/io/File;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/AdLoader;->f:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/vungle/warren/persistence/Repository;->getAdvertisementAssetDirectory(Ljava/lang/String;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    return-object p1
.end method

.method N(Lcom/vungle/warren/model/Advertisement;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1
    :cond_4
    iget-object v1, p0, Lcom/vungle/warren/AdLoader;->f:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vungle/warren/persistence/Repository;->loadAllAdAssets(Ljava/lang/String;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_5c

    .line 2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1d

    goto :goto_5c

    :cond_1d
    const/4 v2, 0x1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_22
    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vungle/warren/model/AdAsset;

    .line 4
    iget v4, v3, Lcom/vungle/warren/model/AdAsset;->fileType:I

    if-nez v4, :cond_38

    .line 5
    iget v3, v3, Lcom/vungle/warren/model/AdAsset;->status:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5c

    goto :goto_22

    .line 6
    :cond_38
    iget-object v4, v3, Lcom/vungle/warren/model/AdAsset;->serverPath:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/vungle/warren/AdLoader;->S(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-direct {p0, p1}, Lcom/vungle/warren/AdLoader;->P(Lcom/vungle/warren/model/Advertisement;)Z

    move-result v4

    if-eqz v4, :cond_47

    goto :goto_22

    .line 7
    :cond_47
    iget v4, v3, Lcom/vungle/warren/model/AdAsset;->status:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4d

    goto :goto_5c

    .line 8
    :cond_4d
    new-instance v4, Ljava/io/File;

    iget-object v5, v3, Lcom/vungle/warren/model/AdAsset;->localPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, v4, v3}, Lcom/vungle/warren/AdLoader;->I(Ljava/io/File;Lcom/vungle/warren/model/AdAsset;)Z

    move-result v3

    if-nez v3, :cond_22

    goto :goto_5c

    :cond_5b
    const/4 v0, 0x1

    :cond_5c
    :goto_5c
    return v0
.end method

.method c0(Lcom/vungle/warren/model/Advertisement;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "postroll"

    .line 2
    invoke-virtual {p2, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-nez p3, :cond_2d

    const-string p3, "template"

    invoke-virtual {p2, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2b

    goto :goto_2d

    :cond_2b
    const/4 p3, 0x2

    goto :goto_2e

    :cond_2d
    :goto_2d
    const/4 p3, 0x0

    .line 3
    :goto_2e
    new-instance v2, Lcom/vungle/warren/model/AdAsset;

    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, p4, p2}, Lcom/vungle/warren/model/AdAsset;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iput v1, v2, Lcom/vungle/warren/model/AdAsset;->status:I

    .line 5
    iput p3, v2, Lcom/vungle/warren/model/AdAsset;->fileType:I

    .line 6
    :try_start_3b
    iget-object p1, p0, Lcom/vungle/warren/AdLoader;->f:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {p1, v2}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V
    :try_end_40
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_3b .. :try_end_40} :catch_41

    return-void

    :catch_41
    move-exception p1

    new-array p2, v0, [Ljava/lang/Object;

    aput-object v2, p2, v1

    const/4 p3, 0x1

    aput-object p1, p2, p3

    const-string p3, "Can\'t save adAsset %1$s; exception = %2$s"

    .line 7
    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "AdLoader#saveAsset; loadAd sequence"

    .line 8
    invoke-static {p3, p2}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    throw p1
.end method

.method public canPlayAd(Lcom/vungle/warren/model/Advertisement;)Z
    .registers 4

    if-eqz p1, :cond_f

    .line 1
    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    goto :goto_f

    .line 2
    :cond_a
    invoke-virtual {p0, p1}, Lcom/vungle/warren/AdLoader;->N(Lcom/vungle/warren/model/Advertisement;)Z

    move-result p1

    return p1

    :cond_f
    :goto_f
    const/4 p1, 0x0

    return p1
.end method

.method public canRenderAd(Lcom/vungle/warren/model/Advertisement;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1
    :cond_4
    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_13

    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_13

    return v0

    .line 2
    :cond_13
    invoke-virtual {p0, p1}, Lcom/vungle/warren/AdLoader;->N(Lcom/vungle/warren/model/Advertisement;)Z

    move-result p1

    return p1
.end method

.method public clear()V
    .registers 6

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/vungle/warren/AdLoader;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object v1, p0, Lcom/vungle/warren/AdLoader;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/16 v2, 0x19

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/AdRequest;

    .line 5
    iget-object v3, p0, Lcom/vungle/warren/AdLoader;->a:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vungle/warren/AdLoader$Operation;

    .line 6
    iget-object v4, p0, Lcom/vungle/warren/AdLoader;->c:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7
    invoke-direct {p0, v3, v2}, Lcom/vungle/warren/AdLoader;->X(Lcom/vungle/warren/AdLoader$Operation;I)V

    .line 8
    iget-object v3, p0, Lcom/vungle/warren/AdLoader;->b:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/AdLoader$Operation;

    invoke-direct {p0, v1, v2}, Lcom/vungle/warren/AdLoader;->X(Lcom/vungle/warren/AdLoader$Operation;I)V

    goto :goto_1b

    .line 9
    :cond_45
    iget-object v0, p0, Lcom/vungle/warren/AdLoader;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/AdLoader$Operation;

    .line 10
    iget-object v3, p0, Lcom/vungle/warren/AdLoader;->c:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 11
    invoke-direct {p0, v1, v2}, Lcom/vungle/warren/AdLoader;->X(Lcom/vungle/warren/AdLoader$Operation;I)V

    goto :goto_4b

    .line 12
    :cond_60
    iget-object v0, p0, Lcom/vungle/warren/AdLoader;->g:Lcom/vungle/warren/utility/Executors;

    invoke-interface {v0}, Lcom/vungle/warren/utility/Executors;->getBackgroundExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/vungle/warren/AdLoader$1;

    invoke-direct {v1, p0}, Lcom/vungle/warren/AdLoader$1;-><init>(Lcom/vungle/warren/AdLoader;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method d0(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/vungle/warren/AdLoader;->p:Z

    return-void
.end method

.method public dropCache(Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/AdLoader;->f:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v0, p1}, Lcom/vungle/warren/persistence/Repository;->loadAllAdAssets(Ljava/lang/String;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_16

    .line 2
    sget-object p1, Lcom/vungle/warren/AdLoader;->q:Ljava/lang/String;

    const-string v0, "No assets found in ad cache to cleanup"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_16
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/model/AdAsset;

    .line 5
    iget-object v2, v2, Lcom/vungle/warren/model/AdAsset;->serverPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 6
    :cond_31
    iget-object v0, p0, Lcom/vungle/warren/AdLoader;->f:Lcom/vungle/warren/persistence/Repository;

    const-class v2, Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v0, p1, v2}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/warren/model/Advertisement;

    if-eqz p1, :cond_4c

    .line 7
    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getDownloadableUrls()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 8
    :cond_4c
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_50
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 9
    iget-object v1, p0, Lcom/vungle/warren/AdLoader;->j:Lcom/vungle/warren/downloader/Downloader;

    invoke-interface {v1, v0}, Lcom/vungle/warren/downloader/Downloader;->dropCache(Ljava/lang/String;)Z

    goto :goto_50

    :cond_62
    return-void
.end method

.method public init(Lcom/vungle/warren/tasks/JobRunner;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/AdLoader;->l:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/vungle/warren/AdLoader;->j:Lcom/vungle/warren/downloader/Downloader;

    invoke-interface {p1}, Lcom/vungle/warren/downloader/Downloader;->init()V

    return-void
.end method

.method public isLoading(Lcom/vungle/warren/AdRequest;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/AdLoader;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/warren/AdLoader$Operation;

    if-eqz p1, :cond_14

    .line 2
    iget-object p1, p1, Lcom/vungle/warren/AdLoader$Operation;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1
.end method

.method public load(Lcom/vungle/warren/AdLoader$Operation;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/AdLoader;->l:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/tasks/JobRunner;

    const/4 v1, 0x1

    if-nez v0, :cond_21

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Cannot load operation %s; job runner is null"

    .line 2
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdLoader#load; loadAd sequence"

    .line 3
    invoke-static {v1, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x9

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/vungle/warren/AdLoader;->X(Lcom/vungle/warren/AdLoader$Operation;I)V

    return-void

    .line 5
    :cond_21
    iget-object v2, p1, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual {v2}, Lcom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/vungle/warren/AdLoader$Operation;->b:Lcom/vungle/warren/AdConfig$AdSize;

    invoke-direct {p0, v2, v3}, Lcom/vungle/warren/AdLoader;->F(Ljava/lang/String;Lcom/vungle/warren/AdConfig$AdSize;)V

    .line 6
    iget-object v2, p0, Lcom/vungle/warren/AdLoader;->b:Ljava/util/Map;

    iget-object v3, p1, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/AdLoader$Operation;

    if-eqz v2, :cond_3b

    .line 7
    invoke-virtual {p1, v2}, Lcom/vungle/warren/AdLoader$Operation;->b(Lcom/vungle/warren/AdLoader$Operation;)V

    .line 8
    :cond_3b
    iget-wide v2, p1, Lcom/vungle/warren/AdLoader$Operation;->c:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_62

    .line 9
    iget-object v0, p1, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    iget-object v0, v0, Lcom/vungle/warren/AdRequest;->timeStamp:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 10
    iget-object v0, p0, Lcom/vungle/warren/AdLoader;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v0, p0, Lcom/vungle/warren/AdLoader;->g:Lcom/vungle/warren/utility/Executors;

    invoke-interface {v0}, Lcom/vungle/warren/utility/Executors;->getBackgroundExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/vungle/warren/AdLoader$2;

    invoke-direct {v1, p0, p1}, Lcom/vungle/warren/AdLoader$2;-><init>(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdLoader$Operation;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_7c

    .line 12
    :cond_62
    iget-object v2, p0, Lcom/vungle/warren/AdLoader;->b:Ljava/util/Map;

    iget-object v3, p1, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v2, p1, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-static {v2}, Lcom/vungle/warren/tasks/DownloadJob;->makeJobInfo(Lcom/vungle/warren/AdRequest;)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object v2

    iget-wide v3, p1, Lcom/vungle/warren/AdLoader$Operation;->c:J

    invoke-virtual {v2, v3, v4}, Lcom/vungle/warren/tasks/JobInfo;->setDelay(J)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/vungle/warren/tasks/JobInfo;->setUpdateCurrent(Z)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/vungle/warren/tasks/JobRunner;->execute(Lcom/vungle/warren/tasks/JobInfo;)V

    :goto_7c
    return-void
.end method

.method public load(Lcom/vungle/warren/AdRequest;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/LoadAdCallback;)V
    .registers 18

    .line 14
    new-instance v13, Lcom/vungle/warren/AdLoader$Operation;

    .line 15
    invoke-virtual/range {p2 .. p2}, Lcom/vungle/warren/AdConfig;->getAdSize()Lcom/vungle/warren/AdConfig$AdSize;

    move-result-object v2

    const/4 v0, 0x1

    new-array v12, v0, [Lcom/vungle/warren/LoadAdCallback;

    const/4 v0, 0x0

    aput-object p3, v12, v0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x7d0

    const/4 v7, 0x5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v0, v13

    move-object v1, p1

    invoke-direct/range {v0 .. v12}, Lcom/vungle/warren/AdLoader$Operation;-><init>(Lcom/vungle/warren/AdRequest;Lcom/vungle/warren/AdConfig$AdSize;JJIIIZI[Lcom/vungle/warren/LoadAdCallback;)V

    move-object v0, p0

    .line 16
    invoke-virtual {p0, v13}, Lcom/vungle/warren/AdLoader;->load(Lcom/vungle/warren/AdLoader$Operation;)V

    return-void
.end method

.method public loadEndlessIfNeeded(Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/AdConfig$AdSize;J)V
    .registers 21

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/vungle/warren/model/Placement;->isMultipleHBPEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1d

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/vungle/warren/model/Placement;->getPlacementAdType()I

    move-result v1

    if-ne v1, v2, :cond_1d

    .line 3
    invoke-static/range {p2 .. p2}, Lcom/vungle/warren/AdConfig$AdSize;->isBannerAdSize(Lcom/vungle/warren/AdConfig$AdSize;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/vungle/warren/model/Placement;->getRecommendedAdSize()Lcom/vungle/warren/AdConfig$AdSize;

    move-result-object v1

    move-object v5, v1

    move-object/from16 v1, p1

    goto :goto_21

    :cond_1d
    move-object/from16 v1, p1

    move-object/from16 v5, p2

    .line 5
    :goto_21
    invoke-direct {v0, v1, v5}, Lcom/vungle/warren/AdLoader;->R(Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/AdConfig$AdSize;)Z

    move-result v3

    if-eqz v3, :cond_28

    return-void

    :cond_28
    const/4 v3, 0x0

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/vungle/warren/model/Placement;->isMultipleHBPEnabled()Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_45

    invoke-virtual/range {p1 .. p1}, Lcom/vungle/warren/model/Placement;->isSingleHBPEnabled()Z

    move-result v4

    if-nez v4, :cond_45

    .line 7
    new-instance v3, Lcom/vungle/warren/AdRequest;

    invoke-virtual/range {p1 .. p1}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/vungle/warren/model/Placement;->getMaxHbCache()I

    move-result v7

    int-to-long v7, v7

    invoke-direct {v3, v4, v2, v7, v8}, Lcom/vungle/warren/AdRequest;-><init>(Ljava/lang/String;IJ)V

    goto :goto_69

    .line 8
    :cond_45
    invoke-virtual/range {p1 .. p1}, Lcom/vungle/warren/model/Placement;->isSingleHBPEnabled()Z

    move-result v2

    const-wide/16 v7, 0x1

    if-eqz v2, :cond_59

    .line 9
    new-instance v2, Lcom/vungle/warren/AdRequest;

    invoke-virtual/range {p1 .. p1}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v7, v8}, Lcom/vungle/warren/AdRequest;-><init>(Ljava/lang/String;IJ)V

    :goto_57
    move-object v4, v2

    goto :goto_6a

    .line 10
    :cond_59
    invoke-virtual/range {p1 .. p1}, Lcom/vungle/warren/model/Placement;->isAutoCached()Z

    move-result v2

    if-eqz v2, :cond_69

    .line 11
    new-instance v2, Lcom/vungle/warren/AdRequest;

    invoke-virtual/range {p1 .. p1}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v6, v7, v8}, Lcom/vungle/warren/AdRequest;-><init>(Ljava/lang/String;IJ)V

    goto :goto_57

    :cond_69
    :goto_69
    move-object v4, v3

    :goto_6a
    if-eqz v4, :cond_83

    .line 12
    new-instance v2, Lcom/vungle/warren/AdLoader$Operation;

    const-wide/16 v8, 0x7d0

    const/4 v10, 0x5

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/vungle/warren/model/Placement;->getAutoCachePriority()I

    move-result v14

    new-array v15, v6, [Lcom/vungle/warren/LoadAdCallback;

    move-object v3, v2

    move-wide/from16 v6, p3

    invoke-direct/range {v3 .. v15}, Lcom/vungle/warren/AdLoader$Operation;-><init>(Lcom/vungle/warren/AdRequest;Lcom/vungle/warren/AdConfig$AdSize;JJIIIZI[Lcom/vungle/warren/LoadAdCallback;)V

    .line 14
    invoke-virtual {v0, v2}, Lcom/vungle/warren/AdLoader;->load(Lcom/vungle/warren/AdLoader$Operation;)V

    :cond_83
    return-void
.end method

.method public loadPendingInternal(Lcom/vungle/warren/AdRequest;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/AdLoader;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/warren/AdLoader$Operation;

    if-nez p1, :cond_b

    return-void

    :cond_b
    const-wide/16 v0, 0x0

    .line 2
    invoke-virtual {p1, v0, v1}, Lcom/vungle/warren/AdLoader$Operation;->a(J)Lcom/vungle/warren/AdLoader$Operation;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vungle/warren/AdLoader;->load(Lcom/vungle/warren/AdLoader$Operation;)V

    return-void
.end method

###### Class com.vungle.warren.AdLoader.AnonymousClass1 (com.vungle.warren.AdLoader$1)
.class Lcom/vungle/warren/AdLoader$1;
.super Ljava/lang/Object;
.source "AdLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/AdLoader;->clear()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/vungle/warren/AdLoader;


# direct methods
.method constructor <init>(Lcom/vungle/warren/AdLoader;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/AdLoader$1;->o:Lcom/vungle/warren/AdLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$1;->o:Lcom/vungle/warren/AdLoader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vungle/warren/AdLoader;->a(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdRequest;)Lcom/vungle/warren/AdRequest;

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$1;->o:Lcom/vungle/warren/AdLoader;

    invoke-static {v0}, Lcom/vungle/warren/AdLoader;->b(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/OperationSequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/OperationSequence;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/OperationSequence$Entry;

    .line 3
    iget-object v2, p0, Lcom/vungle/warren/AdLoader$1;->o:Lcom/vungle/warren/AdLoader;

    iget-object v1, v1, Lcom/vungle/warren/OperationSequence$Entry;->b:Lcom/vungle/warren/AdLoader$Operation;

    const/16 v3, 0x19

    invoke-static {v2, v1, v3}, Lcom/vungle/warren/AdLoader;->m(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdLoader$Operation;I)V

    goto :goto_14

    :cond_2a
    return-void
.end method

###### Class com.vungle.warren.AdLoader.AnonymousClass2 (com.vungle.warren.AdLoader$2)
.class Lcom/vungle/warren/AdLoader$2;
.super Ljava/lang/Object;
.source "AdLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/AdLoader;->load(Lcom/vungle/warren/AdLoader$Operation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/vungle/warren/AdLoader$Operation;

.field final synthetic p:Lcom/vungle/warren/AdLoader;


# direct methods
.method constructor <init>(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdLoader$Operation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/AdLoader$2;->p:Lcom/vungle/warren/AdLoader;

    iput-object p2, p0, Lcom/vungle/warren/AdLoader$2;->o:Lcom/vungle/warren/AdLoader$Operation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$2;->p:Lcom/vungle/warren/AdLoader;

    invoke-static {v0}, Lcom/vungle/warren/AdLoader;->x(Lcom/vungle/warren/AdLoader;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/AdLoader$2;->o:Lcom/vungle/warren/AdLoader$Operation;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 2
    :cond_f
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$2;->o:Lcom/vungle/warren/AdLoader$Operation;

    .line 3
    iget-object v1, p0, Lcom/vungle/warren/AdLoader$2;->p:Lcom/vungle/warren/AdLoader;

    invoke-static {v1}, Lcom/vungle/warren/AdLoader;->z(Lcom/vungle/warren/AdLoader;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, v0, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/AdLoader$Operation;

    if-eqz v1, :cond_30

    .line 4
    iget v2, v1, Lcom/vungle/warren/AdLoader$Operation;->k:I

    .line 5
    invoke-virtual {v1, v0}, Lcom/vungle/warren/AdLoader$Operation;->b(Lcom/vungle/warren/AdLoader$Operation;)V

    .line 6
    iget v3, v1, Lcom/vungle/warren/AdLoader$Operation;->k:I

    if-ge v3, v2, :cond_65

    .line 7
    iget-object v2, p0, Lcom/vungle/warren/AdLoader$2;->p:Lcom/vungle/warren/AdLoader;

    invoke-static {v2, v1}, Lcom/vungle/warren/AdLoader;->A(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdLoader$Operation;)V

    goto :goto_65

    .line 8
    :cond_30
    iget-object v1, p0, Lcom/vungle/warren/AdLoader$2;->p:Lcom/vungle/warren/AdLoader;

    invoke-static {v1}, Lcom/vungle/warren/AdLoader;->b(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/OperationSequence;

    move-result-object v1

    iget-object v2, v0, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual {v1, v2}, Lcom/vungle/warren/OperationSequence;->c(Lcom/vungle/warren/AdRequest;)Lcom/vungle/warren/OperationSequence$Entry;

    move-result-object v1

    if-eqz v1, :cond_45

    .line 9
    iget-object v2, v1, Lcom/vungle/warren/OperationSequence$Entry;->b:Lcom/vungle/warren/AdLoader$Operation;

    invoke-virtual {v2, v0}, Lcom/vungle/warren/AdLoader$Operation;->b(Lcom/vungle/warren/AdLoader$Operation;)V

    .line 10
    iget-object v0, v1, Lcom/vungle/warren/OperationSequence$Entry;->b:Lcom/vungle/warren/AdLoader$Operation;

    .line 11
    :cond_45
    iget v2, v0, Lcom/vungle/warren/AdLoader$Operation;->k:I

    if-gtz v2, :cond_4f

    .line 12
    iget-object v1, p0, Lcom/vungle/warren/AdLoader$2;->p:Lcom/vungle/warren/AdLoader;

    invoke-static {v1, v0}, Lcom/vungle/warren/AdLoader;->B(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdLoader$Operation;)V

    goto :goto_65

    .line 13
    :cond_4f
    iget-object v2, p0, Lcom/vungle/warren/AdLoader$2;->p:Lcom/vungle/warren/AdLoader;

    invoke-static {v2}, Lcom/vungle/warren/AdLoader;->b(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/OperationSequence;

    move-result-object v2

    if-nez v1, :cond_5c

    new-instance v1, Lcom/vungle/warren/OperationSequence$Entry;

    invoke-direct {v1, v0}, Lcom/vungle/warren/OperationSequence$Entry;-><init>(Lcom/vungle/warren/AdLoader$Operation;)V

    :cond_5c
    invoke-virtual {v2, v1}, Lcom/vungle/warren/OperationSequence;->a(Lcom/vungle/warren/OperationSequence$Entry;)Z

    .line 14
    iget-object v1, p0, Lcom/vungle/warren/AdLoader$2;->p:Lcom/vungle/warren/AdLoader;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vungle/warren/AdLoader;->C(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdRequest;)V

    .line 15
    :cond_65
    :goto_65
    iget-object v1, p0, Lcom/vungle/warren/AdLoader$2;->p:Lcom/vungle/warren/AdLoader;

    invoke-static {v1}, Lcom/vungle/warren/AdLoader;->x(Lcom/vungle/warren/AdLoader;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

###### Class com.vungle.warren.AdLoader.AnonymousClass3 (com.vungle.warren.AdLoader$3)
.class Lcom/vungle/warren/AdLoader$3;
.super Ljava/lang/Object;
.source "AdLoader.java"

# interfaces
.implements Lcom/vungle/warren/persistence/Repository$LoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/AdLoader;->F(Ljava/lang/String;Lcom/vungle/warren/AdConfig$AdSize;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vungle/warren/persistence/Repository$LoadCallback<",
        "Lcom/vungle/warren/model/Placement;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/warren/AdConfig$AdSize;

.field final synthetic b:Lcom/vungle/warren/AdLoader;


# direct methods
.method constructor <init>(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdConfig$AdSize;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/AdLoader$3;->b:Lcom/vungle/warren/AdLoader;

    iput-object p2, p0, Lcom/vungle/warren/AdLoader$3;->a:Lcom/vungle/warren/AdConfig$AdSize;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoaded(Lcom/vungle/warren/model/Placement;)V
    .registers 5

    if-eqz p1, :cond_25

    .line 2
    invoke-virtual {p1}, Lcom/vungle/warren/model/Placement;->isMultipleHBPEnabled()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 3
    invoke-virtual {p1}, Lcom/vungle/warren/model/Placement;->getPlacementAdType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_25

    .line 4
    invoke-virtual {p1}, Lcom/vungle/warren/model/Placement;->getAdSize()Lcom/vungle/warren/AdConfig$AdSize;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/AdLoader$3;->a:Lcom/vungle/warren/AdConfig$AdSize;

    if-eq v0, v1, :cond_25

    .line 5
    invoke-virtual {p1, v1}, Lcom/vungle/warren/model/Placement;->setAdSize(Lcom/vungle/warren/AdConfig$AdSize;)V

    .line 6
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$3;->b:Lcom/vungle/warren/AdLoader;

    invoke-static {v0}, Lcom/vungle/warren/AdLoader;->D(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;Z)V

    :cond_25
    return-void
.end method

.method public bridge synthetic onLoaded(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/vungle/warren/model/Placement;

    invoke-virtual {p0, p1}, Lcom/vungle/warren/AdLoader$3;->onLoaded(Lcom/vungle/warren/model/Placement;)V

    return-void
.end method

###### Class com.vungle.warren.AdLoader.AnonymousClass4 (com.vungle.warren.AdLoader$4)
.class Lcom/vungle/warren/AdLoader$4;
.super Ljava/lang/Object;
.source "AdLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/AdLoader;->U(Lcom/vungle/warren/AdLoader$Operation;Lcom/vungle/warren/DownloadCallbackWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/vungle/warren/DownloadCallbackWrapper;

.field final synthetic p:Lcom/vungle/warren/AdLoader$Operation;

.field final synthetic q:J

.field final synthetic r:Lcom/vungle/warren/AdLoader;


# direct methods
.method constructor <init>(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/DownloadCallbackWrapper;Lcom/vungle/warren/AdLoader$Operation;J)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/AdLoader$4;->r:Lcom/vungle/warren/AdLoader;

    iput-object p2, p0, Lcom/vungle/warren/AdLoader$4;->o:Lcom/vungle/warren/DownloadCallbackWrapper;

    iput-object p3, p0, Lcom/vungle/warren/AdLoader$4;->p:Lcom/vungle/warren/AdLoader$Operation;

    iput-wide p4, p0, Lcom/vungle/warren/AdLoader$4;->q:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$4;->r:Lcom/vungle/warren/AdLoader;

    invoke-static {v0}, Lcom/vungle/warren/AdLoader;->c(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/VungleStaticApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/vungle/warren/VungleStaticApi;->isInitialized()Z

    move-result v0

    const-string v1, "AdLoader#loadAd#execute; loadAd sequence"

    const/4 v2, 0x0

    if-nez v0, :cond_25

    const-string v0, "Vungle is not initialized"

    .line 2
    invoke-static {v1, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$4;->o:Lcom/vungle/warren/DownloadCallbackWrapper;

    new-instance v1, Lcom/vungle/warren/error/VungleException;

    const/16 v3, 0x9

    invoke-direct {v1, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$4;->p:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual {v0, v1, v3, v2}, Lcom/vungle/warren/DownloadCallbackWrapper;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_25
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$4;->r:Lcom/vungle/warren/AdLoader;

    invoke-static {v0}, Lcom/vungle/warren/AdLoader;->D(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v0

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$4;->p:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual {v3}, Lcom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/vungle/warren/model/Placement;

    invoke-virtual {v0, v3, v4}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/model/Placement;

    if-nez v0, :cond_6a

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "placement not found for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$4;->p:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$4;->o:Lcom/vungle/warren/DownloadCallbackWrapper;

    new-instance v1, Lcom/vungle/warren/error/VungleException;

    const/16 v3, 0xd

    invoke-direct {v1, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$4;->p:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual {v0, v1, v3, v2}, Lcom/vungle/warren/DownloadCallbackWrapper;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_6a
    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->isValid()Z

    move-result v3

    if-nez v3, :cond_80

    .line 8
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$4;->o:Lcom/vungle/warren/DownloadCallbackWrapper;

    new-instance v1, Lcom/vungle/warren/error/VungleException;

    const/4 v3, 0x5

    invoke-direct {v1, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$4;->p:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual {v0, v1, v3, v2}, Lcom/vungle/warren/DownloadCallbackWrapper;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V

    return-void

    .line 9
    :cond_80
    iget-object v3, p0, Lcom/vungle/warren/AdLoader$4;->r:Lcom/vungle/warren/AdLoader;

    iget-object v4, p0, Lcom/vungle/warren/AdLoader$4;->p:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v4, v4, Lcom/vungle/warren/AdLoader$Operation;->b:Lcom/vungle/warren/AdConfig$AdSize;

    invoke-static {v3, v0, v4}, Lcom/vungle/warren/AdLoader;->d(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/AdConfig$AdSize;)Z

    move-result v3

    if-eqz v3, :cond_b5

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size is invalid, size = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$4;->p:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->b:Lcom/vungle/warren/AdConfig$AdSize;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$4;->o:Lcom/vungle/warren/DownloadCallbackWrapper;

    new-instance v1, Lcom/vungle/warren/error/VungleException;

    const/16 v3, 0x1c

    invoke-direct {v1, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$4;->p:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual {v0, v1, v3, v2}, Lcom/vungle/warren/DownloadCallbackWrapper;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V

    return-void

    .line 12
    :cond_b5
    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->getPlacementAdType()I

    move-result v3

    const/16 v4, 0x1a

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v6, :cond_145

    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->isMultipleHBPEnabled()Z

    move-result v3

    if-nez v3, :cond_145

    .line 13
    iget-object v3, p0, Lcom/vungle/warren/AdLoader$4;->r:Lcom/vungle/warren/AdLoader;

    invoke-static {v3}, Lcom/vungle/warren/AdLoader;->D(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v3

    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/vungle/warren/AdLoader$4;->p:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v8, v8, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual {v8}, Lcom/vungle/warren/AdRequest;->getEventId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/vungle/warren/persistence/Repository;->findValidAdvertisementsForPlacement(Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_145

    .line 14
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v7, 0x0

    :cond_e8
    :goto_e8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_138

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vungle/warren/model/Advertisement;

    .line 15
    invoke-virtual {v8}, Lcom/vungle/warren/model/Advertisement;->getAdConfig()Lcom/vungle/warren/AdConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/vungle/warren/AdConfig;->getAdSize()Lcom/vungle/warren/AdConfig$AdSize;

    move-result-object v9

    iget-object v10, p0, Lcom/vungle/warren/AdLoader$4;->p:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v10, v10, Lcom/vungle/warren/AdLoader$Operation;->b:Lcom/vungle/warren/AdConfig$AdSize;

    if-eq v9, v10, :cond_e8

    .line 16
    :try_start_102
    iget-object v7, p0, Lcom/vungle/warren/AdLoader$4;->r:Lcom/vungle/warren/AdLoader;

    invoke-static {v7}, Lcom/vungle/warren/AdLoader;->D(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v7

    invoke-virtual {v8}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/vungle/warren/persistence/Repository;->deleteAdvertisement(Ljava/lang/String;)V
    :try_end_10f
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_102 .. :try_end_10f} :catch_111

    const/4 v7, 0x1

    goto :goto_e8

    .line 17
    :catch_111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot delete advertisement, request = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$4;->p:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$4;->o:Lcom/vungle/warren/DownloadCallbackWrapper;

    new-instance v1, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v1, v4}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$4;->p:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual {v0, v1, v3, v2}, Lcom/vungle/warren/DownloadCallbackWrapper;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V

    return-void

    :cond_138
    if-eqz v7, :cond_145

    .line 19
    iget-object v3, p0, Lcom/vungle/warren/AdLoader$4;->r:Lcom/vungle/warren/AdLoader;

    iget-object v7, p0, Lcom/vungle/warren/AdLoader$4;->p:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v7, v7, Lcom/vungle/warren/AdLoader$Operation;->b:Lcom/vungle/warren/AdConfig$AdSize;

    const-wide/16 v8, 0x0

    invoke-virtual {v3, v0, v7, v8, v9}, Lcom/vungle/warren/AdLoader;->loadEndlessIfNeeded(Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/AdConfig$AdSize;J)V

    .line 20
    :cond_145
    iget-object v3, p0, Lcom/vungle/warren/AdLoader$4;->p:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual {v3}, Lcom/vungle/warren/AdRequest;->getType()I

    move-result v3

    const-string v7, "cannot save/apply ERROR state, request = "

    const/4 v8, 0x2

    const/4 v9, 0x4

    if-eqz v3, :cond_184

    if-ne v3, v8, :cond_156

    goto :goto_184

    .line 21
    :cond_156
    iget-object v1, p0, Lcom/vungle/warren/AdLoader$4;->p:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v1, v1, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual {v1}, Lcom/vungle/warren/AdRequest;->getType()I

    move-result v1

    if-ne v1, v6, :cond_181

    iget-object v1, p0, Lcom/vungle/warren/AdLoader$4;->r:Lcom/vungle/warren/AdLoader;

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$4;->p:Lcom/vungle/warren/AdLoader$Operation;

    invoke-static {v1}, Lcom/vungle/warren/AdLoader;->D(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v10

    invoke-static {v1, v3, v10}, Lcom/vungle/warren/AdLoader;->k(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdLoader$Operation;Lcom/vungle/warren/persistence/Repository;)Z

    move-result v1

    if-eqz v1, :cond_181

    .line 22
    iget-object v1, p0, Lcom/vungle/warren/AdLoader$4;->r:Lcom/vungle/warren/AdLoader;

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$4;->p:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-static {v1, v3}, Lcom/vungle/warren/AdLoader;->C(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdRequest;)V

    .line 23
    iget-object v1, p0, Lcom/vungle/warren/AdLoader$4;->o:Lcom/vungle/warren/DownloadCallbackWrapper;

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$4;->p:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual {v1, v3, v0, v2}, Lcom/vungle/warren/DownloadCallbackWrapper;->onReady(Lcom/vungle/warren/AdRequest;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/model/Advertisement;)V

    return-void

    :cond_181
    move-object v10, v2

    goto/16 :goto_2f6

    .line 24
    :cond_184
    :goto_184
    iget-object v3, p0, Lcom/vungle/warren/AdLoader$4;->p:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual {v3}, Lcom/vungle/warren/AdRequest;->getEventId()Ljava/lang/String;

    move-result-object v3

    .line 25
    iget-object v10, p0, Lcom/vungle/warren/AdLoader$4;->r:Lcom/vungle/warren/AdLoader;

    invoke-static {v10}, Lcom/vungle/warren/AdLoader;->D(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v10

    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v3}, Lcom/vungle/warren/persistence/Repository;->findValidAdvertisementForPlacement(Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v10

    invoke-virtual {v10}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vungle/warren/model/Advertisement;

    .line 26
    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->isMultipleHBPEnabled()Z

    move-result v11

    if-eqz v11, :cond_1d6

    iget-object v11, p0, Lcom/vungle/warren/AdLoader$4;->p:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v11, v11, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual {v11}, Lcom/vungle/warren/AdRequest;->getType()I

    move-result v11

    if-nez v11, :cond_1d6

    if-nez v3, :cond_1c3

    .line 27
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$4;->o:Lcom/vungle/warren/DownloadCallbackWrapper;

    new-instance v1, Lcom/vungle/warren/error/VungleException;

    const/16 v3, 0x24

    invoke-direct {v1, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$4;->p:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual {v0, v1, v3, v2}, Lcom/vungle/warren/DownloadCallbackWrapper;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V

    return-void

    :cond_1c3
    if-nez v10, :cond_1d6

    .line 28
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$4;->o:Lcom/vungle/warren/DownloadCallbackWrapper;

    new-instance v1, Lcom/vungle/warren/error/VungleException;

    const/16 v3, 0xa

    invoke-direct {v1, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$4;->p:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual {v0, v1, v3, v2}, Lcom/vungle/warren/DownloadCallbackWrapper;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V

    return-void

    :cond_1d6
    if-eqz v10, :cond_1f3

    .line 29
    iget-object v3, p0, Lcom/vungle/warren/AdLoader$4;->r:Lcom/vungle/warren/AdLoader;

    invoke-virtual {v3, v10}, Lcom/vungle/warren/AdLoader;->canPlayAd(Lcom/vungle/warren/model/Advertisement;)Z

    move-result v3

    if-eqz v3, :cond_1f3

    .line 30
    iget-object v1, p0, Lcom/vungle/warren/AdLoader$4;->r:Lcom/vungle/warren/AdLoader;

    iget-object v2, p0, Lcom/vungle/warren/AdLoader$4;->p:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-static {v1, v2}, Lcom/vungle/warren/AdLoader;->C(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdRequest;)V

    .line 31
    iget-object v1, p0, Lcom/vungle/warren/AdLoader$4;->o:Lcom/vungle/warren/DownloadCallbackWrapper;

    iget-object v2, p0, Lcom/vungle/warren/AdLoader$4;->p:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual {v1, v2, v0, v10}, Lcom/vungle/warren/DownloadCallbackWrapper;->onReady(Lcom/vungle/warren/AdRequest;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/model/Advertisement;)V

    return-void

    .line 32
    :cond_1f3
    iget-object v3, p0, Lcom/vungle/warren/AdLoader$4;->r:Lcom/vungle/warren/AdLoader;

    invoke-static {v3, v10}, Lcom/vungle/warren/AdLoader;->e(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/model/Advertisement;)Z

    move-result v3

    if-eqz v3, :cond_2f6

    .line 33
    invoke-static {}, Lcom/vungle/warren/AdLoader;->f()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Found valid adv but not ready - downloading content"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$4;->r:Lcom/vungle/warren/AdLoader;

    invoke-static {v0}, Lcom/vungle/warren/AdLoader;->g(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/RuntimeValues;

    move-result-object v0

    iget-object v0, v0, Lcom/vungle/warren/RuntimeValues;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/VungleSettings;

    const-string v3, "AdLoader#loadAd#execute; loadAd sequence; canReDownload branch"

    if-eqz v0, :cond_290

    .line 35
    iget-object v8, p0, Lcom/vungle/warren/AdLoader$4;->r:Lcom/vungle/warren/AdLoader;

    invoke-static {v8}, Lcom/vungle/warren/AdLoader;->h(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/CacheManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/vungle/warren/persistence/CacheManager;->getBytesAvailable()J

    move-result-wide v11

    invoke-virtual {v0}, Lcom/vungle/warren/VungleSettings;->getMinimumSpaceForAd()J

    move-result-wide v13

    cmp-long v0, v11, v13

    if-gez v0, :cond_229

    goto :goto_290

    .line 36
    :cond_229
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$4;->r:Lcom/vungle/warren/AdLoader;

    iget-object v1, p0, Lcom/vungle/warren/AdLoader$4;->p:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v1, v1, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-static {v0, v1, v6}, Lcom/vungle/warren/AdLoader;->i(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdRequest;Z)V

    .line 37
    invoke-virtual {v10}, Lcom/vungle/warren/model/Advertisement;->getState()I

    move-result v0

    if-eqz v0, :cond_271

    .line 38
    :try_start_238
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$4;->r:Lcom/vungle/warren/AdLoader;

    invoke-static {v0}, Lcom/vungle/warren/AdLoader;->D(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/AdLoader$4;->p:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v1, v1, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual {v1}, Lcom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v10, v1, v5}, Lcom/vungle/warren/persistence/Repository;->saveAndApplyState(Lcom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V
    :try_end_249
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_238 .. :try_end_249} :catch_24a

    goto :goto_271

    .line 39
    :catch_24a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot save/apply NEW state, request = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/warren/AdLoader$4;->p:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v1, v1, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$4;->o:Lcom/vungle/warren/DownloadCallbackWrapper;

    new-instance v1, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v1, v4}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$4;->p:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual {v0, v1, v3, v2}, Lcom/vungle/warren/DownloadCallbackWrapper;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V

    return-void

    .line 41
    :cond_271
    :goto_271
    iget-wide v0, p0, Lcom/vungle/warren/AdLoader$4;->q:J

    invoke-virtual {v10, v0, v1}, Lcom/vungle/warren/model/Advertisement;->setAdRequestStartTime(J)V

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v10, v0, v1}, Lcom/vungle/warren/model/Advertisement;->setAssetDownloadStartTime(J)V

    .line 43
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$4;->r:Lcom/vungle/warren/AdLoader;

    iget-object v1, p0, Lcom/vungle/warren/AdLoader$4;->p:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v1, v1, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-static {v0, v1}, Lcom/vungle/warren/AdLoader;->C(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdRequest;)V

    .line 44
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$4;->r:Lcom/vungle/warren/AdLoader;

    iget-object v1, p0, Lcom/vungle/warren/AdLoader$4;->p:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v2, p0, Lcom/vungle/warren/AdLoader$4;->o:Lcom/vungle/warren/DownloadCallbackWrapper;

    invoke-static {v0, v1, v10, v2}, Lcom/vungle/warren/AdLoader;->j(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdLoader$Operation;Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/AdLoader$DownloadCallback;)V

    return-void

    .line 45
    :cond_290
    :goto_290
    invoke-virtual {v10}, Lcom/vungle/warren/model/Advertisement;->getState()I

    move-result v0

    if-eq v0, v9, :cond_2cd

    .line 46
    :try_start_296
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$4;->r:Lcom/vungle/warren/AdLoader;

    invoke-static {v0}, Lcom/vungle/warren/AdLoader;->D(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v0

    iget-object v5, p0, Lcom/vungle/warren/AdLoader$4;->p:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v5, v5, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual {v5}, Lcom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v10, v5, v9}, Lcom/vungle/warren/persistence/Repository;->saveAndApplyState(Lcom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V
    :try_end_2a7
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_296 .. :try_end_2a7} :catch_2a8

    goto :goto_2cd

    .line 47
    :catch_2a8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/warren/AdLoader$4;->p:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v1, v1, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$4;->o:Lcom/vungle/warren/DownloadCallbackWrapper;

    new-instance v1, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v1, v4}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$4;->p:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual {v0, v1, v3, v2}, Lcom/vungle/warren/DownloadCallbackWrapper;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V

    return-void

    .line 49
    :cond_2cd
    :goto_2cd
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to download assets, no space; request = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$4;->p:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$4;->o:Lcom/vungle/warren/DownloadCallbackWrapper;

    new-instance v1, Lcom/vungle/warren/error/VungleException;

    const/16 v3, 0x13

    invoke-direct {v1, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$4;->p:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual {v0, v1, v3, v2}, Lcom/vungle/warren/DownloadCallbackWrapper;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V

    return-void

    .line 51
    :cond_2f6
    :goto_2f6
    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->getWakeupTime()J

    move-result-wide v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    cmp-long v1, v11, v13

    if-lez v1, :cond_377

    .line 52
    iget-object v1, p0, Lcom/vungle/warren/AdLoader$4;->o:Lcom/vungle/warren/DownloadCallbackWrapper;

    new-instance v3, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v3, v6}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v4, p0, Lcom/vungle/warren/AdLoader$4;->p:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v4, v4, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual {v1, v3, v4, v2}, Lcom/vungle/warren/DownloadCallbackWrapper;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V

    new-array v1, v6, [Ljava/lang/Object;

    .line 53
    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "Placement with id %s is snoozed "

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdLoader#loadAd#execute; loadAd sequence; snoozed branch"

    .line 54
    invoke-static {v2, v1}, Lcom/vungle/warren/VungleLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lcom/vungle/warren/AdLoader;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Placement "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is  snoozed"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-static {}, Lcom/vungle/warren/AdLoader;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is sleeping rescheduling it "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v1, p0, Lcom/vungle/warren/AdLoader$4;->r:Lcom/vungle/warren/AdLoader;

    iget-object v2, p0, Lcom/vungle/warren/AdLoader$4;->p:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$Operation;->b:Lcom/vungle/warren/AdConfig$AdSize;

    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->getWakeupTime()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/vungle/warren/AdLoader;->loadEndlessIfNeeded(Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/AdConfig$AdSize;J)V

    goto/16 :goto_47c

    .line 58
    :cond_377
    iget-object v1, p0, Lcom/vungle/warren/AdLoader$4;->p:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v1, v1, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual {v1}, Lcom/vungle/warren/AdRequest;->getType()I

    move-result v1

    if-ne v1, v6, :cond_384

    const-string v1, "advs"

    goto :goto_386

    :cond_384
    const-string v1, "adv"

    .line 59
    :goto_386
    invoke-static {}, Lcom/vungle/warren/AdLoader;->f()Ljava/lang/String;

    move-result-object v3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "didn\'t find cached "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/vungle/warren/AdLoader$4;->p:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v12, v12, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " downloading"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "AdLoader#loadAd#execute; loadAd sequence; last else branch"

    if-eqz v10, :cond_3ea

    .line 60
    :try_start_3b3
    iget-object v11, p0, Lcom/vungle/warren/AdLoader$4;->r:Lcom/vungle/warren/AdLoader;

    invoke-static {v11}, Lcom/vungle/warren/AdLoader;->D(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v11

    iget-object v12, p0, Lcom/vungle/warren/AdLoader$4;->p:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v12, v12, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual {v12}, Lcom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v10, v12, v9}, Lcom/vungle/warren/persistence/Repository;->saveAndApplyState(Lcom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V
    :try_end_3c4
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_3b3 .. :try_end_3c4} :catch_3c5

    goto :goto_3ea

    .line 61
    :catch_3c5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/warren/AdLoader$4;->p:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v1, v1, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$4;->o:Lcom/vungle/warren/DownloadCallbackWrapper;

    new-instance v1, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v1, v4}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$4;->p:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual {v0, v1, v3, v2}, Lcom/vungle/warren/DownloadCallbackWrapper;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V

    return-void

    .line 63
    :cond_3ea
    :goto_3ea
    iget-object v4, p0, Lcom/vungle/warren/AdLoader$4;->r:Lcom/vungle/warren/AdLoader;

    invoke-static {v4}, Lcom/vungle/warren/AdLoader;->g(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/RuntimeValues;

    move-result-object v4

    iget-object v4, v4, Lcom/vungle/warren/RuntimeValues;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vungle/warren/VungleSettings;

    if-eqz v4, :cond_441

    .line 64
    iget-object v7, p0, Lcom/vungle/warren/AdLoader$4;->r:Lcom/vungle/warren/AdLoader;

    invoke-static {v7}, Lcom/vungle/warren/AdLoader;->h(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/CacheManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vungle/warren/persistence/CacheManager;->getBytesAvailable()J

    move-result-wide v9

    invoke-virtual {v4}, Lcom/vungle/warren/VungleSettings;->getMinimumSpaceForAd()J

    move-result-wide v11

    cmp-long v4, v9, v11

    if-gez v4, :cond_441

    new-array v1, v8, [Ljava/lang/Object;

    .line 65
    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->isAutoCached()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v5

    iget-object v4, p0, Lcom/vungle/warren/AdLoader$4;->p:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v4, v4, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    aput-object v4, v1, v6

    const-string v4, "no space to load, isAutoCached = %1$s, request = %2$s"

    .line 66
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-static {v3, v1}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/vungle/warren/AdLoader$4;->o:Lcom/vungle/warren/DownloadCallbackWrapper;

    new-instance v3, Lcom/vungle/warren/error/VungleException;

    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->isAutoCached()Z

    move-result v0

    if-eqz v0, :cond_434

    const/16 v0, 0x12

    goto :goto_436

    :cond_434
    const/16 v0, 0x11

    .line 69
    :goto_436
    invoke-direct {v3, v0}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v0, p0, Lcom/vungle/warren/AdLoader$4;->p:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    .line 70
    invoke-virtual {v1, v3, v0, v2}, Lcom/vungle/warren/DownloadCallbackWrapper;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V

    return-void

    .line 71
    :cond_441
    invoke-static {}, Lcom/vungle/warren/AdLoader;->f()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for placement "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " getting new data "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v1, p0, Lcom/vungle/warren/AdLoader$4;->r:Lcom/vungle/warren/AdLoader;

    iget-object v2, p0, Lcom/vungle/warren/AdLoader$4;->p:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-static {v1, v2, v6}, Lcom/vungle/warren/AdLoader;->i(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdRequest;Z)V

    .line 73
    iget-object v1, p0, Lcom/vungle/warren/AdLoader$4;->r:Lcom/vungle/warren/AdLoader;

    iget-object v2, p0, Lcom/vungle/warren/AdLoader$4;->p:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, p0, Lcom/vungle/warren/AdLoader$4;->o:Lcom/vungle/warren/DownloadCallbackWrapper;

    invoke-static {v1, v2, v0, v3}, Lcom/vungle/warren/AdLoader;->l(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdLoader$Operation;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/AdLoader$DownloadCallback;)V

    :goto_47c
    return-void
.end method

###### Class com.vungle.warren.AdLoader.AnonymousClass5 (com.vungle.warren.AdLoader$5)
.class Lcom/vungle/warren/AdLoader$5;
.super Ljava/lang/Object;
.source "AdLoader.java"

# interfaces
.implements Lcom/vungle/warren/network/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/AdLoader;->H(Lcom/vungle/warren/AdLoader$Operation;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/AdLoader$DownloadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vungle/warren/network/Callback<",
        "Lcom/google/gson/o;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/warren/AdLoader$Operation;

.field final synthetic b:J

.field final synthetic c:Lcom/vungle/warren/AdLoader$DownloadCallback;

.field final synthetic d:Lcom/vungle/warren/HeaderBiddingCallback;

.field final synthetic e:Lcom/vungle/warren/AdLoader;


# direct methods
.method constructor <init>(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdLoader$Operation;JLcom/vungle/warren/AdLoader$DownloadCallback;Lcom/vungle/warren/HeaderBiddingCallback;)V
    .registers 7

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/AdLoader$5;->e:Lcom/vungle/warren/AdLoader;

    iput-object p2, p0, Lcom/vungle/warren/AdLoader$5;->a:Lcom/vungle/warren/AdLoader$Operation;

    iput-wide p3, p0, Lcom/vungle/warren/AdLoader$5;->b:J

    iput-object p5, p0, Lcom/vungle/warren/AdLoader$5;->c:Lcom/vungle/warren/AdLoader$DownloadCallback;

    iput-object p6, p0, Lcom/vungle/warren/AdLoader$5;->d:Lcom/vungle/warren/HeaderBiddingCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/vungle/warren/network/Call;Ljava/lang/Throwable;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/warren/network/Call<",
            "Lcom/google/gson/o;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/vungle/warren/AdLoader;->f()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/vungle/warren/AdLoader$5;->a:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/vungle/warren/AdLoader$5;->b:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "Request ad failed, request = %1$s, elapsed time = %2$dms"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ttDownloadContext"

    .line 3
    invoke-static {v4, p1, v2, v1}, Lcom/vungle/warren/VungleLogger;->verbose(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-array p1, v0, [Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$5;->a:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    aput-object v0, p1, v3

    aput-object p2, p1, v4

    const-string v0, "failed to request ad, request = %1$s, throwable = %2$s"

    .line 5
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "AdLoader#fetchAdMetadata; loadAd sequence"

    .line 6
    invoke-static {v0, p1}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/vungle/warren/AdLoader$5;->c:Lcom/vungle/warren/AdLoader$DownloadCallback;

    iget-object v0, p0, Lcom/vungle/warren/AdLoader$5;->e:Lcom/vungle/warren/AdLoader;

    invoke-static {v0, p2}, Lcom/vungle/warren/AdLoader;->n(Lcom/vungle/warren/AdLoader;Ljava/lang/Throwable;)Lcom/vungle/warren/error/VungleException;

    move-result-object p2

    iget-object v0, p0, Lcom/vungle/warren/AdLoader$5;->a:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    const/4 v1, 0x0

    invoke-interface {p1, p2, v0, v1}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lcom/vungle/warren/network/Call;Lcom/vungle/warren/network/Response;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/warren/network/Call<",
            "Lcom/google/gson/o;",
            ">;",
            "Lcom/vungle/warren/network/Response<",
            "Lcom/google/gson/o;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/vungle/warren/AdLoader;->f()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/vungle/warren/AdLoader$5;->a:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v1, v1, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/vungle/warren/AdLoader$5;->b:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Request ad got response, request = %1$s, elapsed time = %2$dms"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ttDownloadContext"

    .line 3
    invoke-static {v2, p1, v1, v0}, Lcom/vungle/warren/VungleLogger;->verbose(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/vungle/warren/AdLoader$5;->e:Lcom/vungle/warren/AdLoader;

    invoke-static {p1}, Lcom/vungle/warren/AdLoader;->s(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/utility/Executors;

    move-result-object p1

    invoke-interface {p1}, Lcom/vungle/warren/utility/Executors;->getBackgroundExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/vungle/warren/AdLoader$5$1;

    invoke-direct {v0, p0, p2}, Lcom/vungle/warren/AdLoader$5$1;-><init>(Lcom/vungle/warren/AdLoader$5;Lcom/vungle/warren/network/Response;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.vungle.warren.AdLoader.AnonymousClass5.AnonymousClass1 (com.vungle.warren.AdLoader$5$1)
.class Lcom/vungle/warren/AdLoader$5$1;
.super Ljava/lang/Object;
.source "AdLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/AdLoader$5;->onResponse(Lcom/vungle/warren/network/Call;Lcom/vungle/warren/network/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/vungle/warren/network/Response;

.field final synthetic p:Lcom/vungle/warren/AdLoader$5;


# direct methods
.method constructor <init>(Lcom/vungle/warren/AdLoader$5;Lcom/vungle/warren/network/Response;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iput-object p2, p0, Lcom/vungle/warren/AdLoader$5$1;->o:Lcom/vungle/warren/network/Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 18

    move-object/from16 v1, p0

    const-string v0, "data_science_cache"

    const-string v2, "ad_markup"

    .line 1
    iget-object v3, v1, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$5;->e:Lcom/vungle/warren/AdLoader;

    invoke-static {v3}, Lcom/vungle/warren/AdLoader;->D(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v3

    iget-object v4, v1, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iget-object v4, v4, Lcom/vungle/warren/AdLoader$5;->a:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v4, v4, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual {v4}, Lcom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/vungle/warren/model/Placement;

    invoke-virtual {v3, v4, v5}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vungle/warren/model/Placement;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const-string v6, "AdLoader#fetchAdMetadata; loadAd sequence"

    if-nez v3, :cond_60

    .line 2
    invoke-static {}, Lcom/vungle/warren/AdLoader;->f()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Placement metadata not found for requested advertisement."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Placement metadata not found for requested advertisement. request = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$5;->a:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, v1, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$5;->c:Lcom/vungle/warren/AdLoader$DownloadCallback;

    new-instance v2, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v2, v5}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v3, v1, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$5;->a:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-interface {v0, v2, v3, v4}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_60
    iget-object v7, v1, Lcom/vungle/warren/AdLoader$5$1;->o:Lcom/vungle/warren/network/Response;

    invoke-virtual {v7}, Lcom/vungle/warren/network/Response;->isSuccessful()Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v7, :cond_106

    .line 6
    iget-object v0, v1, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$5;->e:Lcom/vungle/warren/AdLoader;

    invoke-static {v0}, Lcom/vungle/warren/AdLoader;->o(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/VungleApiClient;

    move-result-object v0

    iget-object v2, v1, Lcom/vungle/warren/AdLoader$5$1;->o:Lcom/vungle/warren/network/Response;

    invoke-virtual {v0, v2}, Lcom/vungle/warren/VungleApiClient;->getRetryAfterHeaderValue(Lcom/vungle/warren/network/Response;)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v0, v10, v12

    if-lez v0, :cond_c4

    .line 7
    invoke-virtual {v3}, Lcom/vungle/warren/model/Placement;->isAutoCached()Z

    move-result v0

    if-nez v0, :cond_8a

    invoke-virtual {v3}, Lcom/vungle/warren/model/Placement;->isMultipleHBPEnabled()Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 8
    :cond_8a
    iget-object v0, v1, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iget-object v2, v0, Lcom/vungle/warren/AdLoader$5;->e:Lcom/vungle/warren/AdLoader;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$5;->a:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$Operation;->b:Lcom/vungle/warren/AdConfig$AdSize;

    invoke-virtual {v2, v3, v0, v10, v11}, Lcom/vungle/warren/AdLoader;->loadEndlessIfNeeded(Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/AdConfig$AdSize;J)V

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response was not successful, retrying; request = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$5;->a:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v0, v1, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$5;->c:Lcom/vungle/warren/AdLoader$DownloadCallback;

    new-instance v2, Lcom/vungle/warren/error/VungleException;

    const/16 v3, 0xe

    invoke-direct {v2, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v3, v1, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$5;->a:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-interface {v0, v2, v3, v4}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_c4
    invoke-static {}, Lcom/vungle/warren/AdLoader;->f()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Failed to retrieve advertisement information"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v5, [Ljava/lang/Object;

    .line 12
    iget-object v2, v1, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$5;->a:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    aput-object v2, v0, v8

    iget-object v2, v1, Lcom/vungle/warren/AdLoader$5$1;->o:Lcom/vungle/warren/network/Response;

    .line 13
    invoke-virtual {v2}, Lcom/vungle/warren/network/Response;->code()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v9

    const-string v2, "Response was not successful, not retrying;request = %1$s; responseCode = %2$s"

    .line 14
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-static {v6, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v0, v1, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iget-object v2, v0, Lcom/vungle/warren/AdLoader$5;->c:Lcom/vungle/warren/AdLoader$DownloadCallback;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$5;->e:Lcom/vungle/warren/AdLoader;

    iget-object v3, v1, Lcom/vungle/warren/AdLoader$5$1;->o:Lcom/vungle/warren/network/Response;

    invoke-virtual {v3}, Lcom/vungle/warren/network/Response;->code()I

    move-result v3

    invoke-static {v0, v3}, Lcom/vungle/warren/AdLoader;->p(Lcom/vungle/warren/AdLoader;I)Lcom/vungle/warren/error/VungleException;

    move-result-object v0

    iget-object v3, v1, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$5;->a:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-interface {v2, v0, v3, v4}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V

    return-void

    .line 17
    :cond_106
    iget-object v7, v1, Lcom/vungle/warren/AdLoader$5$1;->o:Lcom/vungle/warren/network/Response;

    invoke-virtual {v7}, Lcom/vungle/warren/network/Response;->body()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/gson/o;

    .line 18
    invoke-static {}, Lcom/vungle/warren/AdLoader;->f()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Ads Response: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x3

    if-eqz v7, :cond_49f

    const-string v11, "ads"

    .line 19
    invoke-virtual {v7, v11}, Lcom/google/gson/o;->E(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_49f

    invoke-virtual {v7, v11}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/gson/l;->q()Z

    move-result v12

    if-nez v12, :cond_49f

    .line 20
    invoke-virtual {v7, v11}, Lcom/google/gson/o;->B(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object v7

    if-eqz v7, :cond_472

    .line 21
    invoke-virtual {v7}, Lcom/google/gson/i;->size()I

    move-result v11

    if-nez v11, :cond_149

    goto/16 :goto_472

    .line 22
    :cond_149
    invoke-virtual {v7, v8}, Lcom/google/gson/i;->v(I)Lcom/google/gson/l;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/l;->l()Lcom/google/gson/o;

    move-result-object v7

    .line 23
    :try_start_151
    new-instance v12, Lcom/vungle/warren/model/Advertisement;

    invoke-direct {v12, v7}, Lcom/vungle/warren/model/Advertisement;-><init>(Lcom/google/gson/o;)V

    .line 24
    iget-object v13, v1, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iget-object v13, v13, Lcom/vungle/warren/AdLoader$5;->e:Lcom/vungle/warren/AdLoader;

    invoke-static {v13}, Lcom/vungle/warren/AdLoader;->q(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/VisionController;

    move-result-object v13

    invoke-virtual {v13}, Lcom/vungle/warren/VisionController;->c()Z

    move-result v13

    if-eqz v13, :cond_18d

    .line 25
    invoke-virtual {v7, v2}, Lcom/google/gson/o;->C(Ljava/lang/String;)Lcom/google/gson/o;

    move-result-object v13

    .line 26
    invoke-static {v13, v0}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/l;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_182

    .line 27
    iget-object v14, v1, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iget-object v14, v14, Lcom/vungle/warren/AdLoader$5;->e:Lcom/vungle/warren/AdLoader;

    invoke-static {v14}, Lcom/vungle/warren/AdLoader;->q(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/VisionController;

    move-result-object v14

    invoke-virtual {v13, v0}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/l;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/vungle/warren/VisionController;->f(Ljava/lang/String;)V

    goto :goto_18d

    .line 28
    :cond_182
    iget-object v0, v1, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$5;->e:Lcom/vungle/warren/AdLoader;

    invoke-static {v0}, Lcom/vungle/warren/AdLoader;->q(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/VisionController;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/vungle/warren/VisionController;->f(Ljava/lang/String;)V

    .line 29
    :cond_18d
    :goto_18d
    iget-object v0, v1, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$5;->e:Lcom/vungle/warren/AdLoader;

    invoke-static {v0}, Lcom/vungle/warren/AdLoader;->D(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v0

    invoke-virtual {v12}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v13

    const-class v14, Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v0, v13, v14}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/model/Advertisement;

    if-eqz v0, :cond_1cf

    .line 30
    invoke-virtual {v0}, Lcom/vungle/warren/model/Advertisement;->getState()I

    move-result v0

    if-eqz v0, :cond_1b1

    if-eq v0, v9, :cond_1b1

    if-ne v0, v5, :cond_1cf

    .line 31
    :cond_1b1
    invoke-static {}, Lcom/vungle/warren/AdLoader;->f()Ljava/lang/String;

    move-result-object v0

    const-string v12, "Operation Cancelled"

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object v0, v1, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$5;->c:Lcom/vungle/warren/AdLoader$DownloadCallback;

    new-instance v12, Lcom/vungle/warren/error/VungleException;

    const/16 v13, 0x19

    invoke-direct {v12, v13}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v13, v1, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iget-object v13, v13, Lcom/vungle/warren/AdLoader$5;->a:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v13, v13, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-interface {v0, v12, v13, v4}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V

    return-void

    .line 33
    :cond_1cf
    invoke-virtual {v3}, Lcom/vungle/warren/model/Placement;->isHeaderBidding()Z

    move-result v0

    if-eqz v0, :cond_1ea

    iget-object v0, v1, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iget-object v13, v0, Lcom/vungle/warren/AdLoader$5;->d:Lcom/vungle/warren/HeaderBiddingCallback;

    if-eqz v13, :cond_1ea

    .line 34
    iget-object v0, v0, Lcom/vungle/warren/AdLoader$5;->a:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual {v0}, Lcom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12}, Lcom/vungle/warren/model/Advertisement;->getBidToken()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v0, v14}, Lcom/vungle/warren/HeaderBiddingCallback;->onBidTokenAvailable(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_1ea
    iget-object v0, v1, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$5;->e:Lcom/vungle/warren/AdLoader;

    invoke-static {v0}, Lcom/vungle/warren/AdLoader;->D(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v0

    invoke-virtual {v12}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Lcom/vungle/warren/persistence/Repository;->deleteAdvertisement(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v12}, Lcom/vungle/warren/model/Advertisement;->getDownloadableUrls()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 37
    iget-object v13, v1, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iget-object v13, v13, Lcom/vungle/warren/AdLoader$5;->e:Lcom/vungle/warren/AdLoader;

    invoke-virtual {v13, v12}, Lcom/vungle/warren/AdLoader;->L(Lcom/vungle/warren/model/Advertisement;)Ljava/io/File;

    move-result-object v13

    if-eqz v13, :cond_36e

    .line 38
    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v14

    if-nez v14, :cond_213

    goto/16 :goto_36e

    .line 39
    :cond_213
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_217
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_281

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 40
    iget-object v15, v1, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iget-object v15, v15, Lcom/vungle/warren/AdLoader$5;->e:Lcom/vungle/warren/AdLoader;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v11, v16

    check-cast v11, Ljava/lang/String;

    invoke-static {v15, v11}, Lcom/vungle/warren/AdLoader;->r(Lcom/vungle/warren/AdLoader;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_249

    .line 41
    iget-object v11, v1, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iget-object v11, v11, Lcom/vungle/warren/AdLoader$5;->e:Lcom/vungle/warren/AdLoader;

    .line 42
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 43
    invoke-virtual {v11, v12, v13, v15, v14}, Lcom/vungle/warren/AdLoader;->c0(Lcom/vungle/warren/model/Advertisement;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_217

    :cond_249
    const-string v0, "Response was successful, but one of downloadable urls is neither http nor https : url = %1$s; op.request = %2$s, ad.getId() = %3$s"

    new-array v11, v10, [Ljava/lang/Object;

    .line 44
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v11, v8

    iget-object v13, v1, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iget-object v13, v13, Lcom/vungle/warren/AdLoader$5;->a:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v13, v13, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    aput-object v13, v11, v9

    invoke-virtual {v12}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v5

    .line 45
    invoke-static {v0, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-static {v6, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v0, v1, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$5;->c:Lcom/vungle/warren/AdLoader$DownloadCallback;

    new-instance v11, Lcom/vungle/warren/error/VungleException;

    const/16 v13, 0xb

    invoke-direct {v11, v13}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v13, v1, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iget-object v13, v13, Lcom/vungle/warren/AdLoader$5;->a:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v13, v13, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual {v12}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v11, v13, v12}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V

    return-void

    .line 48
    :cond_281
    invoke-virtual {v3}, Lcom/vungle/warren/model/Placement;->getPlacementAdType()I

    move-result v0

    if-ne v0, v9, :cond_2d6

    .line 49
    invoke-virtual {v12}, Lcom/vungle/warren/model/Advertisement;->getAdType()I

    move-result v0

    if-ne v0, v9, :cond_299

    const-string v0, "banner"

    invoke-virtual {v12}, Lcom/vungle/warren/model/Advertisement;->getTemplateType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d6

    :cond_299
    const-string v0, "Response was successful, but placement is banner while %1$s; op.request = %2$s, ad.getId() = %3$s"

    new-array v11, v10, [Ljava/lang/Object;

    .line 50
    invoke-virtual {v12}, Lcom/vungle/warren/model/Advertisement;->getAdType()I

    move-result v13

    if-eq v13, v9, :cond_2a6

    const-string v13, "ad type is not MRAID"

    goto :goto_2a8

    :cond_2a6
    const-string v13, "advertisement template type is not banner"

    :goto_2a8
    aput-object v13, v11, v8

    .line 51
    iget-object v13, v1, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iget-object v13, v13, Lcom/vungle/warren/AdLoader$5;->a:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v13, v13, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    aput-object v13, v11, v9

    .line 52
    invoke-virtual {v12}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v5

    .line 53
    invoke-static {v0, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {v6, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v0, v1, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$5;->c:Lcom/vungle/warren/AdLoader$DownloadCallback;

    new-instance v11, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v11, v9}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v13, v1, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iget-object v13, v13, Lcom/vungle/warren/AdLoader$5;->a:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v13, v13, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual {v12}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v11, v13, v12}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V

    return-void

    .line 56
    :cond_2d6
    invoke-virtual {v12}, Lcom/vungle/warren/model/Advertisement;->getAdConfig()Lcom/vungle/warren/AdConfig;

    move-result-object v0

    iget-object v11, v1, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iget-object v11, v11, Lcom/vungle/warren/AdLoader$5;->a:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v11, v11, Lcom/vungle/warren/AdLoader$Operation;->b:Lcom/vungle/warren/AdConfig$AdSize;

    invoke-virtual {v0, v11}, Lcom/vungle/warren/AdConfig;->setAdSize(Lcom/vungle/warren/AdConfig$AdSize;)V

    .line 57
    iget-object v0, v1, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iget-wide v13, v0, Lcom/vungle/warren/AdLoader$5;->b:J

    invoke-virtual {v12, v13, v14}, Lcom/vungle/warren/model/Advertisement;->setAdRequestStartTime(J)V

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Lcom/vungle/warren/model/Advertisement;->setAssetDownloadStartTime(J)V

    .line 59
    iget-object v0, v1, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$5;->e:Lcom/vungle/warren/AdLoader;

    invoke-static {v0}, Lcom/vungle/warren/AdLoader;->D(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v0

    iget-object v11, v1, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iget-object v11, v11, Lcom/vungle/warren/AdLoader$5;->a:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v11, v11, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual {v11}, Lcom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v12, v11, v8}, Lcom/vungle/warren/persistence/Repository;->saveAndApplyState(Lcom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V

    .line 60
    iget-object v0, v1, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$5;->a:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual {v0}, Lcom/vungle/warren/AdRequest;->getType()I

    move-result v0

    if-eqz v0, :cond_356

    if-ne v0, v5, :cond_315

    goto :goto_356

    .line 61
    :cond_315
    iget-object v0, v1, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$5;->a:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual {v0}, Lcom/vungle/warren/AdRequest;->getType()I

    move-result v0

    if-ne v0, v9, :cond_4c8

    .line 62
    iget-object v0, v1, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iget-object v11, v0, Lcom/vungle/warren/AdLoader$5;->e:Lcom/vungle/warren/AdLoader;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$5;->a:Lcom/vungle/warren/AdLoader$Operation;

    invoke-static {v11}, Lcom/vungle/warren/AdLoader;->D(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v12

    invoke-static {v11, v0, v12}, Lcom/vungle/warren/AdLoader;->k(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdLoader$Operation;Lcom/vungle/warren/persistence/Repository;)Z

    move-result v0

    if-eqz v0, :cond_349

    .line 63
    iget-object v0, v1, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iget-object v11, v0, Lcom/vungle/warren/AdLoader$5;->e:Lcom/vungle/warren/AdLoader;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$5;->a:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-static {v11, v0}, Lcom/vungle/warren/AdLoader;->C(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdRequest;)V

    .line 64
    iget-object v0, v1, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iget-object v11, v0, Lcom/vungle/warren/AdLoader$5;->c:Lcom/vungle/warren/AdLoader$DownloadCallback;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$5;->a:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-interface {v11, v0, v3, v4}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onReady(Lcom/vungle/warren/AdRequest;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/model/Advertisement;)V

    goto/16 :goto_4c8

    .line 65
    :cond_349
    iget-object v0, v1, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iget-object v11, v0, Lcom/vungle/warren/AdLoader$5;->e:Lcom/vungle/warren/AdLoader;

    iget-object v12, v0, Lcom/vungle/warren/AdLoader$5;->a:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$5;->c:Lcom/vungle/warren/AdLoader$DownloadCallback;

    invoke-static {v11, v12, v3, v0}, Lcom/vungle/warren/AdLoader;->l(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdLoader$Operation;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/AdLoader$DownloadCallback;)V

    goto/16 :goto_4c8

    .line 66
    :cond_356
    :goto_356
    iget-object v0, v1, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iget-object v11, v0, Lcom/vungle/warren/AdLoader$5;->e:Lcom/vungle/warren/AdLoader;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$5;->a:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-static {v11, v0}, Lcom/vungle/warren/AdLoader;->C(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdRequest;)V

    .line 67
    iget-object v0, v1, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iget-object v11, v0, Lcom/vungle/warren/AdLoader$5;->e:Lcom/vungle/warren/AdLoader;

    iget-object v13, v0, Lcom/vungle/warren/AdLoader$5;->a:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$5;->c:Lcom/vungle/warren/AdLoader$DownloadCallback;

    invoke-static {v11, v13, v12, v0}, Lcom/vungle/warren/AdLoader;->j(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdLoader$Operation;Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/AdLoader$DownloadCallback;)V

    goto/16 :goto_4c8

    :cond_36e
    :goto_36e
    const-string v0, "Response was successful, but adv directory is %1$s; op.request = %2$s, ad.getId() = %3$s"

    new-array v11, v10, [Ljava/lang/Object;

    if-nez v13, :cond_377

    const-string v13, "null"

    goto :goto_379

    :cond_377
    const-string v13, "not a dir"

    :goto_379
    aput-object v13, v11, v8

    .line 68
    iget-object v13, v1, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iget-object v13, v13, Lcom/vungle/warren/AdLoader$5;->a:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v13, v13, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    aput-object v13, v11, v9

    .line 69
    invoke-virtual {v12}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v5

    .line 70
    invoke-static {v0, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {v6, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, v1, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$5;->c:Lcom/vungle/warren/AdLoader$DownloadCallback;

    new-instance v11, Lcom/vungle/warren/error/VungleException;

    const/16 v13, 0x1a

    invoke-direct {v11, v13}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v13, v1, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iget-object v13, v13, Lcom/vungle/warren/AdLoader$5;->a:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v13, v13, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual {v12}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v11, v13, v12}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V
    :try_end_3a8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_151 .. :try_end_3a8} :catch_3d7
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_151 .. :try_end_3a8} :catch_3a9

    return-void

    :catch_3a9
    move-exception v0

    new-array v2, v10, [Ljava/lang/Object;

    aput-object v3, v2, v8

    .line 73
    iget-object v3, v1, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$5;->a:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    aput-object v3, v2, v9

    aput-object v0, v2, v5

    const-string v0, "BadAd - DBException; can\'t proceed; placement = %1$s; op.request = %2$s; exception = %3$s"

    .line 74
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-static {v6, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, v1, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$5;->c:Lcom/vungle/warren/AdLoader$DownloadCallback;

    new-instance v2, Lcom/vungle/warren/error/VungleException;

    const/16 v3, 0x1a

    invoke-direct {v2, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v3, v1, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$5;->a:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-interface {v0, v2, v3, v4}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V

    goto/16 :goto_4c8

    :catch_3d7
    nop

    .line 77
    invoke-virtual {v7, v2}, Lcom/google/gson/o;->C(Ljava/lang/String;)Lcom/google/gson/o;

    move-result-object v0

    const-string v2, "sleep"

    .line 78
    invoke-virtual {v0, v2}, Lcom/google/gson/o;->E(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_44a

    .line 79
    invoke-virtual {v0, v2}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/l;->j()I

    move-result v0

    int-to-long v10, v0

    .line 80
    invoke-virtual {v3, v10, v11}, Lcom/vungle/warren/model/Placement;->snooze(J)V

    :try_start_3f0
    const-string v0, "badAd - snoozed placement %1$s; request = %2$s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v3, v2, v8

    .line 81
    iget-object v7, v1, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iget-object v7, v7, Lcom/vungle/warren/AdLoader$5;->a:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v7, v7, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    aput-object v7, v2, v9

    .line 82
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-static {v6, v0}, Lcom/vungle/warren/VungleLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, v1, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$5;->e:Lcom/vungle/warren/AdLoader;

    invoke-static {v0}, Lcom/vungle/warren/AdLoader;->D(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V
    :try_end_410
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_3f0 .. :try_end_410} :catch_420

    .line 85
    iget-object v0, v1, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iget-object v2, v0, Lcom/vungle/warren/AdLoader$5;->e:Lcom/vungle/warren/AdLoader;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$5;->a:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$Operation;->b:Lcom/vungle/warren/AdConfig$AdSize;

    const-wide/16 v12, 0x3e8

    mul-long v10, v10, v12

    invoke-virtual {v2, v3, v0, v10, v11}, Lcom/vungle/warren/AdLoader;->loadEndlessIfNeeded(Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/AdConfig$AdSize;J)V

    goto :goto_44a

    :catch_420
    new-array v0, v5, [Ljava/lang/Object;

    aput-object v3, v0, v8

    .line 86
    iget-object v2, v1, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$5;->a:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    aput-object v2, v0, v9

    const-string v2, "badAd - can\'t save snoozed placement %1$s; request = %2$s"

    .line 87
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-static {v6, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, v1, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$5;->c:Lcom/vungle/warren/AdLoader$DownloadCallback;

    new-instance v2, Lcom/vungle/warren/error/VungleException;

    const/16 v3, 0x1a

    invoke-direct {v2, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v3, v1, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$5;->a:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-interface {v0, v2, v3, v4}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V

    return-void

    :cond_44a
    :goto_44a
    new-array v0, v5, [Ljava/lang/Object;

    aput-object v3, v0, v8

    .line 90
    iget-object v2, v1, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$5;->a:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    aput-object v2, v0, v9

    const-string v2, "badAd; can\'t proceed %1$s; request = %2$s"

    .line 91
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-static {v6, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, v1, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$5;->c:Lcom/vungle/warren/AdLoader$DownloadCallback;

    new-instance v2, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v2, v9}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v3, v1, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$5;->a:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-interface {v0, v2, v3, v4}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V

    goto :goto_4c8

    .line 94
    :cond_472
    :goto_472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response was successful, but no ads; request = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$5;->a:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, v1, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$5;->c:Lcom/vungle/warren/AdLoader$DownloadCallback;

    new-instance v2, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v2, v9}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v3, v1, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$5;->a:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-interface {v0, v2, v3, v4}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V

    return-void

    :cond_49f
    new-array v0, v10, [Ljava/lang/Object;

    aput-object v3, v0, v8

    .line 96
    iget-object v2, v1, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$5;->a:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v2, v2, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    aput-object v2, v0, v9

    aput-object v7, v0, v5

    const-string v2, "Response has no ads; placement = %1$s;op.request = %2$s; response = %3$s"

    .line 97
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {v6, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, v1, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$5;->c:Lcom/vungle/warren/AdLoader$DownloadCallback;

    new-instance v2, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v2, v9}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v3, v1, Lcom/vungle/warren/AdLoader$5$1;->p:Lcom/vungle/warren/AdLoader$5;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$5;->a:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-interface {v0, v2, v3, v4}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V

    :cond_4c8
    :goto_4c8
    return-void
.end method

###### Class com.vungle.warren.AdLoader.AnonymousClass6 (com.vungle.warren.AdLoader$6)
.class Lcom/vungle/warren/AdLoader$6;
.super Ljava/lang/Object;
.source "AdLoader.java"

# interfaces
.implements Lcom/vungle/warren/downloader/AssetDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/AdLoader;->J(Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/AdLoader$Operation;Lcom/vungle/warren/AdLoader$DownloadCallback;)Lcom/vungle/warren/downloader/AssetDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Ljava/util/concurrent/atomic/AtomicLong;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/vungle/warren/AdLoader$Operation;

.field final synthetic d:Lcom/vungle/warren/AdLoader$DownloadCallback;

.field final synthetic e:Lcom/vungle/warren/model/Advertisement;

.field final synthetic f:Lcom/vungle/warren/AdLoader;


# direct methods
.method constructor <init>(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdLoader$Operation;Lcom/vungle/warren/AdLoader$DownloadCallback;Lcom/vungle/warren/model/Advertisement;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/AdLoader$6;->f:Lcom/vungle/warren/AdLoader;

    iput-object p2, p0, Lcom/vungle/warren/AdLoader$6;->c:Lcom/vungle/warren/AdLoader$Operation;

    iput-object p3, p0, Lcom/vungle/warren/AdLoader$6;->d:Lcom/vungle/warren/AdLoader$DownloadCallback;

    iput-object p4, p0, Lcom/vungle/warren/AdLoader$6;->e:Lcom/vungle/warren/model/Advertisement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    iget-object p2, p2, Lcom/vungle/warren/AdLoader$Operation;->l:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    int-to-long p2, p2

    invoke-direct {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/vungle/warren/AdLoader$6;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/warren/AdLoader$6;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onError(Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequest;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$6;->f:Lcom/vungle/warren/AdLoader;

    invoke-static {v0}, Lcom/vungle/warren/AdLoader;->s(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/utility/Executors;

    move-result-object v0

    invoke-interface {v0}, Lcom/vungle/warren/utility/Executors;->getBackgroundExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/vungle/warren/AdLoader$6$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/vungle/warren/AdLoader$6$1;-><init>(Lcom/vungle/warren/AdLoader$6;Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onProgress(Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;Lcom/vungle/warren/downloader/DownloadRequest;)V
    .registers 3

    return-void
.end method

.method public onSuccess(Ljava/io/File;Lcom/vungle/warren/downloader/DownloadRequest;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$6;->f:Lcom/vungle/warren/AdLoader;

    invoke-static {v0}, Lcom/vungle/warren/AdLoader;->s(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/utility/Executors;

    move-result-object v0

    invoke-interface {v0}, Lcom/vungle/warren/utility/Executors;->getBackgroundExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/vungle/warren/AdLoader$6$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/vungle/warren/AdLoader$6$2;-><init>(Lcom/vungle/warren/AdLoader$6;Ljava/io/File;Lcom/vungle/warren/downloader/DownloadRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.vungle.warren.AdLoader.AnonymousClass6.AnonymousClass1 (com.vungle.warren.AdLoader$6$1)
.class Lcom/vungle/warren/AdLoader$6$1;
.super Ljava/lang/Object;
.source "AdLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/AdLoader$6;->onError(Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/vungle/warren/downloader/DownloadRequest;

.field final synthetic p:Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

.field final synthetic q:Lcom/vungle/warren/AdLoader$6;


# direct methods
.method constructor <init>(Lcom/vungle/warren/AdLoader$6;Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/AdLoader$6$1;->q:Lcom/vungle/warren/AdLoader$6;

    iput-object p2, p0, Lcom/vungle/warren/AdLoader$6$1;->o:Lcom/vungle/warren/downloader/DownloadRequest;

    iput-object p3, p0, Lcom/vungle/warren/AdLoader$6$1;->p:Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 1
    invoke-static {}, Lcom/vungle/warren/AdLoader;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Download Failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$6$1;->o:Lcom/vungle/warren/downloader/DownloadRequest;

    const/4 v1, 0x4

    const/4 v2, -0x1

    if-eqz v0, :cond_70

    .line 3
    iget-object v0, v0, Lcom/vungle/warren/downloader/DownloadRequest;->cookieString:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v0, 0x0

    goto :goto_2d

    .line 5
    :cond_19
    iget-object v3, p0, Lcom/vungle/warren/AdLoader$6$1;->q:Lcom/vungle/warren/AdLoader$6;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$6;->f:Lcom/vungle/warren/AdLoader;

    invoke-static {v3}, Lcom/vungle/warren/AdLoader;->D(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v3

    const-class v4, Lcom/vungle/warren/model/AdAsset;

    invoke-virtual {v3, v0, v4}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/model/AdAsset;

    :goto_2d
    if-eqz v0, :cond_5b

    .line 6
    iget-object v3, p0, Lcom/vungle/warren/AdLoader$6$1;->q:Lcom/vungle/warren/AdLoader$6;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$6;->b:Ljava/util/List;

    iget-object v4, p0, Lcom/vungle/warren/AdLoader$6$1;->p:Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x2

    .line 7
    iput v3, v0, Lcom/vungle/warren/model/AdAsset;->status:I

    .line 8
    :try_start_3b
    iget-object v3, p0, Lcom/vungle/warren/AdLoader$6$1;->q:Lcom/vungle/warren/AdLoader$6;

    iget-object v3, v3, Lcom/vungle/warren/AdLoader$6;->f:Lcom/vungle/warren/AdLoader;

    invoke-static {v3}, Lcom/vungle/warren/AdLoader;->D(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V
    :try_end_46
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_3b .. :try_end_46} :catch_47

    goto :goto_83

    .line 9
    :catch_47
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$6$1;->q:Lcom/vungle/warren/AdLoader$6;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$6;->b:Ljava/util/List;

    new-instance v3, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    new-instance v4, Lcom/vungle/warren/error/VungleException;

    const/16 v5, 0x1a

    invoke-direct {v4, v5}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-direct {v3, v2, v4, v1}, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_83

    .line 10
    :cond_5b
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$6$1;->q:Lcom/vungle/warren/AdLoader$6;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$6;->b:Ljava/util/List;

    new-instance v1, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Downloaded file not found!"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_83

    .line 11
    :cond_70
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$6$1;->q:Lcom/vungle/warren/AdLoader$6;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$6;->b:Ljava/util/List;

    new-instance v3, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "error in request"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v2, v4, v1}, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    :goto_83
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$6$1;->q:Lcom/vungle/warren/AdLoader$6;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$6;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_a7

    .line 13
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$6$1;->q:Lcom/vungle/warren/AdLoader$6;

    iget-object v1, v0, Lcom/vungle/warren/AdLoader$6;->f:Lcom/vungle/warren/AdLoader;

    iget-object v2, v0, Lcom/vungle/warren/AdLoader$6;->c:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v0, Lcom/vungle/warren/AdLoader$6;->d:Lcom/vungle/warren/AdLoader$DownloadCallback;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$6;->e:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v0}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/vungle/warren/AdLoader$6$1;->q:Lcom/vungle/warren/AdLoader$6;

    iget-object v5, v0, Lcom/vungle/warren/AdLoader$6;->b:Ljava/util/List;

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/vungle/warren/AdLoader;->t(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdLoader$Operation;Lcom/vungle/warren/AdLoader$DownloadCallback;Ljava/lang/String;Ljava/util/List;Z)V

    :cond_a7
    return-void
.end method

###### Class com.vungle.warren.AdLoader.AnonymousClass6.AnonymousClass2 (com.vungle.warren.AdLoader$6$2)
.class Lcom/vungle/warren/AdLoader$6$2;
.super Ljava/lang/Object;
.source "AdLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/AdLoader$6;->onSuccess(Ljava/io/File;Lcom/vungle/warren/downloader/DownloadRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Ljava/io/File;

.field final synthetic p:Lcom/vungle/warren/downloader/DownloadRequest;

.field final synthetic q:Lcom/vungle/warren/AdLoader$6;


# direct methods
.method constructor <init>(Lcom/vungle/warren/AdLoader$6;Ljava/io/File;Lcom/vungle/warren/downloader/DownloadRequest;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/AdLoader$6$2;->q:Lcom/vungle/warren/AdLoader$6;

    iput-object p2, p0, Lcom/vungle/warren/AdLoader$6$2;->o:Ljava/io/File;

    iput-object p3, p0, Lcom/vungle/warren/AdLoader$6$2;->p:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$6$2;->o:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x3

    const-string v2, "Downloaded file not found!"

    const/4 v3, -0x1

    const-string v4, "AdLoader#getAssetDownloadListener; loadAd sequence"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v0, :cond_35

    new-array v0, v6, [Ljava/lang/Object;

    .line 2
    iget-object v6, p0, Lcom/vungle/warren/AdLoader$6$2;->o:Ljava/io/File;

    .line 3
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    const-string v5, "Downloaded file %1$s doesn\'t exist"

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v4, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$6$2;->q:Lcom/vungle/warren/AdLoader$6;

    new-instance v4, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v3, v5, v1}, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V

    iget-object v1, p0, Lcom/vungle/warren/AdLoader$6$2;->p:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-virtual {v0, v4, v1}, Lcom/vungle/warren/AdLoader$6;->onError(Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequest;)V

    return-void

    .line 6
    :cond_35
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$6$2;->p:Lcom/vungle/warren/downloader/DownloadRequest;

    iget-object v0, v0, Lcom/vungle/warren/downloader/DownloadRequest;->cookieString:Ljava/lang/String;

    if-nez v0, :cond_3d

    const/4 v7, 0x0

    goto :goto_51

    .line 7
    :cond_3d
    iget-object v7, p0, Lcom/vungle/warren/AdLoader$6$2;->q:Lcom/vungle/warren/AdLoader$6;

    iget-object v7, v7, Lcom/vungle/warren/AdLoader$6;->f:Lcom/vungle/warren/AdLoader;

    invoke-static {v7}, Lcom/vungle/warren/AdLoader;->D(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v7

    const-class v8, Lcom/vungle/warren/model/AdAsset;

    invoke-virtual {v7, v0, v8}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vungle/warren/model/AdAsset;

    :goto_51
    const/4 v8, 0x2

    if-nez v7, :cond_7e

    new-array v1, v8, [Ljava/lang/Object;

    if-nez v0, :cond_5b

    const-string v0, "id is null"

    goto :goto_5d

    :cond_5b
    const-string v0, "repository returned null"

    :goto_5d
    aput-object v0, v1, v5

    .line 8
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$6$2;->p:Lcom/vungle/warren/downloader/DownloadRequest;

    aput-object v0, v1, v6

    const-string v0, "adAsset is null because %1$s, downloadRequest = %2$s"

    .line 9
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v4, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$6$2;->q:Lcom/vungle/warren/AdLoader$6;

    new-instance v1, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3, v4, v6}, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V

    iget-object v2, p0, Lcom/vungle/warren/AdLoader$6$2;->p:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/warren/AdLoader$6;->onError(Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequest;)V

    return-void

    .line 12
    :cond_7e
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$6$2;->q:Lcom/vungle/warren/AdLoader$6;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$6;->f:Lcom/vungle/warren/AdLoader;

    iget-object v2, p0, Lcom/vungle/warren/AdLoader$6$2;->o:Ljava/io/File;

    invoke-static {v0, v2}, Lcom/vungle/warren/AdLoader;->u(Lcom/vungle/warren/AdLoader;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_8c

    const/4 v0, 0x0

    goto :goto_8d

    :cond_8c
    const/4 v0, 0x2

    :goto_8d
    iput v0, v7, Lcom/vungle/warren/model/AdAsset;->fileType:I

    .line 13
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$6$2;->o:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v9

    iput-wide v9, v7, Lcom/vungle/warren/model/AdAsset;->fileSize:J

    .line 14
    iput v1, v7, Lcom/vungle/warren/model/AdAsset;->status:I

    .line 15
    :try_start_99
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$6$2;->q:Lcom/vungle/warren/AdLoader$6;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$6;->f:Lcom/vungle/warren/AdLoader;

    invoke-static {v0}, Lcom/vungle/warren/AdLoader;->D(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V
    :try_end_a4
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_99 .. :try_end_a4} :catch_f8

    .line 16
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$6$2;->q:Lcom/vungle/warren/AdLoader$6;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$6;->f:Lcom/vungle/warren/AdLoader;

    iget-object v1, p0, Lcom/vungle/warren/AdLoader$6$2;->o:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/vungle/warren/AdLoader;->u(Lcom/vungle/warren/AdLoader;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 17
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$6$2;->q:Lcom/vungle/warren/AdLoader$6;

    iget-object v1, v0, Lcom/vungle/warren/AdLoader$6;->f:Lcom/vungle/warren/AdLoader;

    iget-object v2, v0, Lcom/vungle/warren/AdLoader$6;->c:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v0, Lcom/vungle/warren/AdLoader$6;->e:Lcom/vungle/warren/model/Advertisement;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$6;->d:Lcom/vungle/warren/AdLoader$DownloadCallback;

    invoke-static {v1, v2, v3, v0}, Lcom/vungle/warren/AdLoader;->v(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdLoader$Operation;Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/AdLoader$DownloadCallback;)Z

    .line 18
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$6$2;->q:Lcom/vungle/warren/AdLoader$6;

    iget-object v1, v0, Lcom/vungle/warren/AdLoader$6;->f:Lcom/vungle/warren/AdLoader;

    iget-object v2, v0, Lcom/vungle/warren/AdLoader$6;->c:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v3, v0, Lcom/vungle/warren/AdLoader$6;->d:Lcom/vungle/warren/AdLoader$DownloadCallback;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$6;->e:Lcom/vungle/warren/model/Advertisement;

    invoke-static {v1, v2, v3, v7, v0}, Lcom/vungle/warren/AdLoader;->w(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdLoader$Operation;Lcom/vungle/warren/AdLoader$DownloadCallback;Lcom/vungle/warren/model/AdAsset;Lcom/vungle/warren/model/Advertisement;)V

    .line 19
    :cond_ca
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$6$2;->q:Lcom/vungle/warren/AdLoader$6;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$6;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_f7

    .line 20
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$6$2;->q:Lcom/vungle/warren/AdLoader$6;

    iget-object v7, v0, Lcom/vungle/warren/AdLoader$6;->f:Lcom/vungle/warren/AdLoader;

    iget-object v8, v0, Lcom/vungle/warren/AdLoader$6;->c:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v9, v0, Lcom/vungle/warren/AdLoader$6;->d:Lcom/vungle/warren/AdLoader$DownloadCallback;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$6;->e:Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v0}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v10

    iget-object v0, p0, Lcom/vungle/warren/AdLoader$6$2;->q:Lcom/vungle/warren/AdLoader$6;

    iget-object v11, v0, Lcom/vungle/warren/AdLoader$6;->b:Ljava/util/List;

    iget-object v1, v0, Lcom/vungle/warren/AdLoader$6;->f:Lcom/vungle/warren/AdLoader;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$6;->e:Lcom/vungle/warren/model/Advertisement;

    .line 21
    invoke-static {v1, v0}, Lcom/vungle/warren/AdLoader;->y(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/model/Advertisement;)Z

    move-result v0

    xor-int/lit8 v12, v0, 0x1

    .line 22
    invoke-static/range {v7 .. v12}, Lcom/vungle/warren/AdLoader;->t(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdLoader$Operation;Lcom/vungle/warren/AdLoader$DownloadCallback;Ljava/lang/String;Ljava/util/List;Z)V

    :cond_f7
    return-void

    :catch_f8
    move-exception v0

    new-array v1, v8, [Ljava/lang/Object;

    aput-object v7, v1, v5

    aput-object v0, v1, v6

    const-string v0, "Can\'t save adAsset %1$s; exception = %2$s"

    .line 23
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-static {v4, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$6$2;->q:Lcom/vungle/warren/AdLoader$6;

    new-instance v1, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    new-instance v2, Lcom/vungle/warren/error/VungleException;

    const/16 v4, 0x1a

    invoke-direct {v2, v4}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    const/4 v4, 0x4

    invoke-direct {v1, v3, v2, v4}, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V

    iget-object v2, p0, Lcom/vungle/warren/AdLoader$6$2;->p:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/warren/AdLoader$6;->onError(Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequest;)V

    return-void
.end method

###### Class com.vungle.warren.AdLoader.AnonymousClass7 (com.vungle.warren.AdLoader$7)
.class Lcom/vungle/warren/AdLoader$7;
.super Ljava/lang/Object;
.source "AdLoader.java"

# interfaces
.implements Lcom/vungle/warren/utility/UnzipUtility$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/AdLoader;->h0(Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/model/AdAsset;Ljava/io/File;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/vungle/warren/AdLoader;


# direct methods
.method constructor <init>(Lcom/vungle/warren/AdLoader;Ljava/util/List;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/AdLoader$7;->b:Lcom/vungle/warren/AdLoader;

    iput-object p2, p0, Lcom/vungle/warren/AdLoader$7;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Ljava/lang/String;)Z
    .registers 7

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/vungle/warren/AdLoader$7;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v2, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_24

    return v3

    .line 5
    :cond_24
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    return v3

    :cond_44
    const/4 p1, 0x1

    return p1
.end method

###### Class com.vungle.warren.AdLoader.AnonymousClass8 (com.vungle.warren.AdLoader$8)
.class Lcom/vungle/warren/AdLoader$8;
.super Ljava/lang/Object;
.source "AdLoader.java"

# interfaces
.implements Lcom/vungle/warren/persistence/Repository$SaveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/AdLoader;->h0(Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/model/AdAsset;Ljava/io/File;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lcom/vungle/warren/AdLoader;


# direct methods
.method constructor <init>(Lcom/vungle/warren/AdLoader;Ljava/io/File;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/AdLoader$8;->b:Lcom/vungle/warren/AdLoader;

    iput-object p2, p0, Lcom/vungle/warren/AdLoader$8;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .registers 2

    return-void
.end method

.method public onSaved()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$8;->b:Lcom/vungle/warren/AdLoader;

    invoke-static {v0}, Lcom/vungle/warren/AdLoader;->s(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/utility/Executors;

    move-result-object v0

    invoke-interface {v0}, Lcom/vungle/warren/utility/Executors;->getBackgroundExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/vungle/warren/AdLoader$8$1;

    invoke-direct {v1, p0}, Lcom/vungle/warren/AdLoader$8$1;-><init>(Lcom/vungle/warren/AdLoader$8;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.vungle.warren.AdLoader.AnonymousClass8.AnonymousClass1 (com.vungle.warren.AdLoader$8$1)
.class Lcom/vungle/warren/AdLoader$8$1;
.super Ljava/lang/Object;
.source "AdLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/AdLoader$8;->onSaved()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/vungle/warren/AdLoader$8;


# direct methods
.method constructor <init>(Lcom/vungle/warren/AdLoader$8;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/AdLoader$8$1;->o:Lcom/vungle/warren/AdLoader$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$8$1;->o:Lcom/vungle/warren/AdLoader$8;

    iget-object v0, v0, Lcom/vungle/warren/AdLoader$8;->a:Ljava/io/File;

    invoke-static {v0}, Lcom/vungle/warren/utility/FileUtility;->delete(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_12

    :catch_8
    move-exception v0

    .line 2
    invoke-static {}, Lcom/vungle/warren/AdLoader;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error on deleting zip assets archive"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12
    return-void
.end method

###### Class com.vungle.warren.AdLoader.DownloadAdCallback (com.vungle.warren.AdLoader$DownloadAdCallback)
.class Lcom/vungle/warren/AdLoader$DownloadAdCallback;
.super Ljava/lang/Object;
.source "AdLoader.java"

# interfaces
.implements Lcom/vungle/warren/AdLoader$DownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/AdLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadAdCallback"
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/warren/AdLoader;


# direct methods
.method private constructor <init>(Lcom/vungle/warren/AdLoader;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->a:Lcom/vungle/warren/AdLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdLoader$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lcom/vungle/warren/AdLoader$DownloadAdCallback;-><init>(Lcom/vungle/warren/AdLoader;)V

    return-void
.end method


# virtual methods
.method public onDownloadCompleted(Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V
    .registers 11

    .line 1
    invoke-static {}, Lcom/vungle/warren/AdLoader;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download completed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->a:Lcom/vungle/warren/AdLoader;

    invoke-static {v0}, Lcom/vungle/warren/AdLoader;->D(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v0

    invoke-virtual {p1}, Lcom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/vungle/warren/model/Placement;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/model/Placement;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "AdLoader#DownloadAdCallback#onDownloadCompleted; loadAd sequence"

    const/4 v4, 0x1

    if-nez v0, :cond_4f

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    aput-object p2, v0, v4

    const-string v1, "loaded placement is null: request = %1$s; advertisementId = %2$s"

    .line 3
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v3, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-virtual {p0, v0, p1, p2}, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_4f
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_57

    const/4 v5, 0x0

    goto :goto_69

    .line 7
    :cond_57
    iget-object v5, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->a:Lcom/vungle/warren/AdLoader;

    invoke-static {v5}, Lcom/vungle/warren/AdLoader;->D(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v5

    const-class v6, Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v5, p2, v6}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vungle/warren/model/Advertisement;

    :goto_69
    if-nez v5, :cond_85

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    aput-object p2, v0, v4

    const-string v1, "advertisement is null: request = %1$s; advertisementId = %2$s"

    .line 8
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v3, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-virtual {p0, v0, p1, p2}, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/vungle/warren/model/Advertisement;->setFinishedDownloadingTime(J)V

    .line 12
    :try_start_8c
    iget-object v6, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->a:Lcom/vungle/warren/AdLoader;

    invoke-static {v6}, Lcom/vungle/warren/AdLoader;->D(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v6

    invoke-virtual {p1}, Lcom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7, v4}, Lcom/vungle/warren/persistence/Repository;->saveAndApplyState(Lcom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V
    :try_end_99
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_8c .. :try_end_99} :catch_9d

    .line 13
    invoke-virtual {p0, p1, v0, v5}, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->onReady(Lcom/vungle/warren/AdRequest;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/model/Advertisement;)V

    return-void

    :catch_9d
    move-exception v0

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v1

    aput-object p1, v6, v4

    aput-object v5, v6, v2

    const-string v0, "Can\'t save/apply state READY: exception = %1$s;request = %2$s; advertisement = %3$s"

    .line 14
    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-static {v3, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-virtual {p0, v0, p1, p2}, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V

    return-void
.end method

.method public onDownloadFailed(Lcom/vungle/warren/error/VungleException;Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V
    .registers 15

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->a:Lcom/vungle/warren/AdLoader;

    invoke-static {v0}, Lcom/vungle/warren/AdLoader;->z(Lcom/vungle/warren/AdLoader;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/AdLoader$Operation;

    .line 2
    iget-object v1, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->a:Lcom/vungle/warren/AdLoader;

    invoke-static {v1, p2}, Lcom/vungle/warren/AdLoader;->C(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdRequest;)V

    .line 3
    iget-object v1, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->a:Lcom/vungle/warren/AdLoader;

    invoke-static {v1}, Lcom/vungle/warren/AdLoader;->D(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v1

    invoke-virtual {p2}, Lcom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/vungle/warren/model/Placement;

    invoke-virtual {v1, v2, v3}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/model/Placement;

    if-nez p3, :cond_2b

    const/4 p3, 0x0

    goto :goto_3d

    .line 4
    :cond_2b
    iget-object v2, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->a:Lcom/vungle/warren/AdLoader;

    invoke-static {v2}, Lcom/vungle/warren/AdLoader;->D(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v2

    const-class v3, Lcom/vungle/warren/model/Advertisement;

    invoke-virtual {v2, p3, v3}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object p3

    invoke-virtual {p3}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/vungle/warren/model/Advertisement;

    :goto_3d
    const/16 v2, 0x1a

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-nez v1, :cond_7a

    if-eqz p3, :cond_58

    .line 5
    :try_start_45
    iget-object v1, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->a:Lcom/vungle/warren/AdLoader;

    invoke-static {v1}, Lcom/vungle/warren/AdLoader;->D(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v1

    invoke-virtual {p2}, Lcom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, p3, v5, v3}, Lcom/vungle/warren/persistence/Repository;->saveAndApplyState(Lcom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V
    :try_end_52
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_45 .. :try_end_52} :catch_53

    goto :goto_58

    .line 6
    :catch_53
    new-instance p1, Lcom/vungle/warren/error/VungleException;

    invoke-direct {p1, v2}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    :cond_58
    :goto_58
    if-eqz v0, :cond_74

    .line 7
    iget-object p3, v0, Lcom/vungle/warren/AdLoader$Operation;->h:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_60
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_74

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/LoadAdCallback;

    .line 8
    invoke-virtual {p2}, Lcom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/vungle/warren/LoadAdCallback;->onError(Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V

    goto :goto_60

    .line 9
    :cond_74
    iget-object p1, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->a:Lcom/vungle/warren/AdLoader;

    invoke-static {p1, p2, v4}, Lcom/vungle/warren/AdLoader;->i(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdRequest;Z)V

    return-void

    .line 10
    :cond_7a
    invoke-virtual {p1}, Lcom/vungle/warren/error/VungleException;->getExceptionCode()I

    move-result v1

    const/4 v5, 0x1

    if-eq v1, v5, :cond_a7

    const/16 v6, 0xe

    if-eq v1, v6, :cond_a7

    const/16 v6, 0x14

    if-eq v1, v6, :cond_a4

    const/16 v6, 0x19

    if-eq v1, v6, :cond_a7

    const/16 v6, 0x24

    if-eq v1, v6, :cond_a7

    const/16 v6, 0x16

    if-eq v1, v6, :cond_a4

    const/16 v6, 0x17

    if-eq v1, v6, :cond_9a

    goto :goto_a0

    :cond_9a
    if-eqz p3, :cond_a0

    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    goto :goto_a9

    :cond_a0
    :goto_a0
    const/4 v1, 0x0

    :goto_a1
    const/4 v6, 0x0

    :goto_a2
    const/4 v7, 0x4

    goto :goto_a9

    :cond_a4
    const/4 v1, 0x0

    const/4 v6, 0x1

    goto :goto_a2

    :cond_a7
    const/4 v1, 0x1

    goto :goto_a1

    :goto_a9
    if-eqz v0, :cond_af

    .line 11
    iget-boolean v8, v0, Lcom/vungle/warren/AdLoader$Operation;->j:Z

    if-eqz v8, :cond_cc

    .line 12
    :cond_af
    invoke-static {}, Lcom/vungle/warren/AdLoader;->f()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to load Ad/Assets for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ". Cause : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    :cond_cc
    iget-object v8, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->a:Lcom/vungle/warren/AdLoader;

    invoke-static {v8, p2, v4}, Lcom/vungle/warren/AdLoader;->i(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdRequest;Z)V

    if-eqz v0, :cond_170

    .line 14
    :try_start_d3
    iget v8, v0, Lcom/vungle/warren/AdLoader$Operation;->g:I

    const-wide/16 v9, 0x2

    if-nez v8, :cond_10b

    .line 15
    iget v1, v0, Lcom/vungle/warren/AdLoader$Operation;->e:I

    iget v4, v0, Lcom/vungle/warren/AdLoader$Operation;->f:I

    if-ge v1, v4, :cond_141

    if-eqz v6, :cond_141

    if-eqz p3, :cond_f0

    .line 16
    iget-object p1, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->a:Lcom/vungle/warren/AdLoader;

    invoke-static {p1}, Lcom/vungle/warren/AdLoader;->D(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object p1

    invoke-virtual {p2}, Lcom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p3, v1, v7}, Lcom/vungle/warren/persistence/Repository;->saveAndApplyState(Lcom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V

    .line 17
    :cond_f0
    iget-object p1, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->a:Lcom/vungle/warren/AdLoader;

    iget-wide v3, v0, Lcom/vungle/warren/AdLoader$Operation;->d:J

    invoke-virtual {v0, v3, v4}, Lcom/vungle/warren/AdLoader$Operation;->a(J)Lcom/vungle/warren/AdLoader$Operation;

    move-result-object p3

    iget-wide v3, v0, Lcom/vungle/warren/AdLoader$Operation;->d:J

    mul-long v3, v3, v9

    invoke-virtual {p3, v3, v4}, Lcom/vungle/warren/AdLoader$Operation;->d(J)Lcom/vungle/warren/AdLoader$Operation;

    move-result-object p3

    iget v1, v0, Lcom/vungle/warren/AdLoader$Operation;->e:I

    add-int/2addr v1, v5

    invoke-virtual {p3, v1}, Lcom/vungle/warren/AdLoader$Operation;->c(I)Lcom/vungle/warren/AdLoader$Operation;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/vungle/warren/AdLoader;->load(Lcom/vungle/warren/AdLoader$Operation;)V

    return-void

    :cond_10b
    if-ne v8, v5, :cond_141

    if-nez v1, :cond_141

    .line 18
    iget p1, v0, Lcom/vungle/warren/AdLoader$Operation;->e:I

    .line 19
    iget v1, v0, Lcom/vungle/warren/AdLoader$Operation;->f:I

    if-ge p1, v1, :cond_11a

    if-eqz v6, :cond_11a

    add-int/lit8 v4, p1, 0x1

    move v3, v7

    :cond_11a
    if-eqz p3, :cond_129

    .line 20
    iget-object p1, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->a:Lcom/vungle/warren/AdLoader;

    invoke-static {p1}, Lcom/vungle/warren/AdLoader;->D(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object p1

    invoke-virtual {p2}, Lcom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p3, v1, v3}, Lcom/vungle/warren/persistence/Repository;->saveAndApplyState(Lcom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V

    .line 21
    :cond_129
    iget-object p1, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->a:Lcom/vungle/warren/AdLoader;

    iget-wide v5, v0, Lcom/vungle/warren/AdLoader$Operation;->d:J

    invoke-virtual {v0, v5, v6}, Lcom/vungle/warren/AdLoader$Operation;->a(J)Lcom/vungle/warren/AdLoader$Operation;

    move-result-object p3

    iget-wide v5, v0, Lcom/vungle/warren/AdLoader$Operation;->d:J

    mul-long v5, v5, v9

    invoke-virtual {p3, v5, v6}, Lcom/vungle/warren/AdLoader$Operation;->d(J)Lcom/vungle/warren/AdLoader$Operation;

    move-result-object p3

    invoke-virtual {p3, v4}, Lcom/vungle/warren/AdLoader$Operation;->c(I)Lcom/vungle/warren/AdLoader$Operation;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/vungle/warren/AdLoader;->load(Lcom/vungle/warren/AdLoader$Operation;)V

    return-void

    :cond_141
    if-eqz p3, :cond_156

    .line 22
    iget-object v1, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->a:Lcom/vungle/warren/AdLoader;

    invoke-static {v1}, Lcom/vungle/warren/AdLoader;->D(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v1

    invoke-virtual {p2}, Lcom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p3, v4, v3}, Lcom/vungle/warren/persistence/Repository;->saveAndApplyState(Lcom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V
    :try_end_150
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_d3 .. :try_end_150} :catch_151

    goto :goto_156

    .line 23
    :catch_151
    new-instance p1, Lcom/vungle/warren/error/VungleException;

    invoke-direct {p1, v2}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    .line 24
    :cond_156
    :goto_156
    iget-object p3, v0, Lcom/vungle/warren/AdLoader$Operation;->h:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_15c
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_170

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/LoadAdCallback;

    .line 25
    invoke-virtual {p2}, Lcom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/vungle/warren/LoadAdCallback;->onError(Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V

    goto :goto_15c

    :cond_170
    return-void
.end method

.method public onReady(Lcom/vungle/warren/AdRequest;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/model/Advertisement;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->a:Lcom/vungle/warren/AdLoader;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/vungle/warren/AdLoader;->i(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdRequest;Z)V

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->a:Lcom/vungle/warren/AdLoader;

    invoke-static {v0}, Lcom/vungle/warren/AdLoader;->g(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/RuntimeValues;

    move-result-object v0

    iget-object v0, v0, Lcom/vungle/warren/RuntimeValues;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/HeaderBiddingCallback;

    if-eqz p3, :cond_29

    .line 3
    invoke-virtual {p2}, Lcom/vungle/warren/model/Placement;->isHeaderBidding()Z

    move-result v2

    if-eqz v2, :cond_29

    if-eqz v0, :cond_29

    .line 4
    invoke-virtual {p1}, Lcom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/vungle/warren/model/Advertisement;->getBidToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/vungle/warren/HeaderBiddingCallback;->adAvailableForBidToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_29
    invoke-static {}, Lcom/vungle/warren/AdLoader;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "found already cached valid adv, calling onAdLoad callback for request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->a:Lcom/vungle/warren/AdLoader;

    invoke-static {v0}, Lcom/vungle/warren/AdLoader;->g(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/RuntimeValues;

    move-result-object v0

    iget-object v0, v0, Lcom/vungle/warren/RuntimeValues;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/InitCallback;

    .line 7
    invoke-virtual {p1}, Lcom/vungle/warren/AdRequest;->getType()I

    move-result v2

    .line 8
    invoke-virtual {p2}, Lcom/vungle/warren/model/Placement;->isAutoCached()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_67

    if-eqz v0, :cond_67

    if-eq v2, v4, :cond_60

    if-nez v2, :cond_67

    .line 9
    :cond_60
    invoke-virtual {p1}, Lcom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/vungle/warren/InitCallback;->onAutoCacheAdAvailable(Ljava/lang/String;)V

    .line 10
    :cond_67
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->a:Lcom/vungle/warren/AdLoader;

    invoke-static {v0}, Lcom/vungle/warren/AdLoader;->z(Lcom/vungle/warren/AdLoader;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/AdLoader$Operation;

    if-eqz p3, :cond_7a

    .line 11
    invoke-virtual {p3}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v2

    goto :goto_7b

    :cond_7a
    const/4 v2, 0x0

    :goto_7b
    if-eqz v0, :cond_f0

    .line 12
    iget-object v3, v0, Lcom/vungle/warren/AdLoader$Operation;->b:Lcom/vungle/warren/AdConfig$AdSize;

    invoke-virtual {p2, v3}, Lcom/vungle/warren/model/Placement;->setAdSize(Lcom/vungle/warren/AdConfig$AdSize;)V

    .line 13
    :try_start_82
    iget-object v3, p0, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->a:Lcom/vungle/warren/AdLoader;

    invoke-static {v3}, Lcom/vungle/warren/AdLoader;->D(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V
    :try_end_8b
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_82 .. :try_end_8b} :catch_d0

    .line 14
    invoke-static {}, Lcom/vungle/warren/AdLoader;->f()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loading took "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p1, Lcom/vungle/warren/AdRequest;->timeStamp:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {p3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms for:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iget-object p2, v0, Lcom/vungle/warren/AdLoader$Operation;->h:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_bc
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_f0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/vungle/warren/LoadAdCallback;

    .line 16
    invoke-virtual {p1}, Lcom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/vungle/warren/LoadAdCallback;->onAdLoad(Ljava/lang/String;)V

    goto :goto_bc

    :catch_d0
    move-exception v0

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    const/4 v0, 0x1

    aput-object p2, v3, v0

    aput-object p3, v3, v4

    const-string p2, "Can\'t save placement: exception = %1$s;placement = %2$s; advertisement = %3$s"

    .line 17
    invoke-static {p2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "AdLoader#DownloadAdCallback#onReady; loadAd sequence"

    .line 18
    invoke-static {p3, p2}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    new-instance p2, Lcom/vungle/warren/error/VungleException;

    const/16 p3, 0x1a

    invoke-direct {p2, p3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-virtual {p0, p2, p1, v2}, Lcom/vungle/warren/AdLoader$DownloadAdCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V

    :cond_f0
    return-void
.end method

###### Class com.vungle.warren.AdLoader.DownloadCallback (com.vungle.warren.AdLoader$DownloadCallback)
.class interface abstract Lcom/vungle/warren/AdLoader$DownloadCallback;
.super Ljava/lang/Object;
.source "AdLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/AdLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "DownloadCallback"
.end annotation


# virtual methods
.method public abstract onDownloadCompleted(Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V
.end method

.method public abstract onDownloadFailed(Lcom/vungle/warren/error/VungleException;Lcom/vungle/warren/AdRequest;Ljava/lang/String;)V
.end method

.method public abstract onReady(Lcom/vungle/warren/AdRequest;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/model/Advertisement;)V
.end method

###### Class com.vungle.warren.AdLoader.Operation (com.vungle.warren.AdLoader$Operation)
.class public Lcom/vungle/warren/AdLoader$Operation;
.super Ljava/lang/Object;
.source "AdLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/AdLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Operation"
.end annotation


# instance fields
.field final a:Lcom/vungle/warren/AdRequest;

.field final b:Lcom/vungle/warren/AdConfig$AdSize;

.field c:J

.field d:J

.field e:I

.field f:I

.field g:I

.field final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/vungle/warren/LoadAdCallback;",
            ">;"
        }
    .end annotation
.end field

.field final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field j:Z

.field k:I
    .annotation build Lcom/vungle/warren/AdLoader$Priority;
    .end annotation
.end field

.field l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/vungle/warren/downloader/DownloadRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Lcom/vungle/warren/AdRequest;Lcom/vungle/warren/AdConfig$AdSize;JJIIIZI[Lcom/vungle/warren/LoadAdCallback;)V
    .registers 15
    .param p11    # I
        .annotation build Lcom/vungle/warren/AdLoader$Priority;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/AdLoader$Operation;->h:Ljava/util/Set;

    .line 3
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/vungle/warren/AdLoader$Operation;->l:Ljava/util/List;

    .line 4
    iput-object p1, p0, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    .line 5
    iput-wide p3, p0, Lcom/vungle/warren/AdLoader$Operation;->c:J

    .line 6
    iput-wide p5, p0, Lcom/vungle/warren/AdLoader$Operation;->d:J

    .line 7
    iput p7, p0, Lcom/vungle/warren/AdLoader$Operation;->f:I

    .line 8
    iput p8, p0, Lcom/vungle/warren/AdLoader$Operation;->g:I

    .line 9
    iput p9, p0, Lcom/vungle/warren/AdLoader$Operation;->e:I

    .line 10
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/vungle/warren/AdLoader$Operation;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    iput-object p2, p0, Lcom/vungle/warren/AdLoader$Operation;->b:Lcom/vungle/warren/AdConfig$AdSize;

    .line 12
    iput-boolean p10, p0, Lcom/vungle/warren/AdLoader$Operation;->j:Z

    .line 13
    iput p11, p0, Lcom/vungle/warren/AdLoader$Operation;->k:I

    if-eqz p12, :cond_33

    .line 14
    invoke-static {p12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_33
    return-void
.end method


# virtual methods
.method a(J)Lcom/vungle/warren/AdLoader$Operation;
    .registers 18

    move-object v0, p0

    .line 1
    new-instance v14, Lcom/vungle/warren/AdLoader$Operation;

    iget-object v2, v0, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    iget-object v3, v0, Lcom/vungle/warren/AdLoader$Operation;->b:Lcom/vungle/warren/AdConfig$AdSize;

    iget-wide v6, v0, Lcom/vungle/warren/AdLoader$Operation;->d:J

    iget v8, v0, Lcom/vungle/warren/AdLoader$Operation;->f:I

    iget v9, v0, Lcom/vungle/warren/AdLoader$Operation;->g:I

    iget v10, v0, Lcom/vungle/warren/AdLoader$Operation;->e:I

    iget-boolean v11, v0, Lcom/vungle/warren/AdLoader$Operation;->j:Z

    iget v12, v0, Lcom/vungle/warren/AdLoader$Operation;->k:I

    iget-object v1, v0, Lcom/vungle/warren/AdLoader$Operation;->h:Ljava/util/Set;

    const/4 v4, 0x0

    new-array v4, v4, [Lcom/vungle/warren/LoadAdCallback;

    invoke-interface {v1, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, [Lcom/vungle/warren/LoadAdCallback;

    move-object v1, v14

    move-wide/from16 v4, p1

    invoke-direct/range {v1 .. v13}, Lcom/vungle/warren/AdLoader$Operation;-><init>(Lcom/vungle/warren/AdRequest;Lcom/vungle/warren/AdConfig$AdSize;JJIIIZI[Lcom/vungle/warren/LoadAdCallback;)V

    return-object v14
.end method

.method b(Lcom/vungle/warren/AdLoader$Operation;)V
    .registers 6

    .line 1
    iget-wide v0, p0, Lcom/vungle/warren/AdLoader$Operation;->c:J

    iget-wide v2, p1, Lcom/vungle/warren/AdLoader$Operation;->c:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vungle/warren/AdLoader$Operation;->c:J

    .line 2
    iget-wide v0, p0, Lcom/vungle/warren/AdLoader$Operation;->d:J

    iget-wide v2, p1, Lcom/vungle/warren/AdLoader$Operation;->d:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vungle/warren/AdLoader$Operation;->d:J

    .line 3
    iget v0, p0, Lcom/vungle/warren/AdLoader$Operation;->f:I

    iget v1, p1, Lcom/vungle/warren/AdLoader$Operation;->f:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/vungle/warren/AdLoader$Operation;->f:I

    .line 4
    iget v0, p1, Lcom/vungle/warren/AdLoader$Operation;->g:I

    if-nez v0, :cond_23

    goto :goto_25

    :cond_23
    iget v0, p0, Lcom/vungle/warren/AdLoader$Operation;->g:I

    :goto_25
    iput v0, p0, Lcom/vungle/warren/AdLoader$Operation;->g:I

    .line 5
    iget v0, p0, Lcom/vungle/warren/AdLoader$Operation;->e:I

    iget v1, p1, Lcom/vungle/warren/AdLoader$Operation;->e:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/vungle/warren/AdLoader$Operation;->e:I

    .line 6
    iget-boolean v0, p0, Lcom/vungle/warren/AdLoader$Operation;->j:Z

    iget-boolean v1, p1, Lcom/vungle/warren/AdLoader$Operation;->j:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/vungle/warren/AdLoader$Operation;->j:Z

    .line 7
    iget v0, p0, Lcom/vungle/warren/AdLoader$Operation;->k:I

    iget v1, p1, Lcom/vungle/warren/AdLoader$Operation;->k:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/vungle/warren/AdLoader$Operation;->k:I

    .line 8
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$Operation;->h:Ljava/util/Set;

    iget-object p1, p1, Lcom/vungle/warren/AdLoader$Operation;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method c(I)Lcom/vungle/warren/AdLoader$Operation;
    .registers 16

    .line 1
    new-instance v13, Lcom/vungle/warren/AdLoader$Operation;

    iget-object v1, p0, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    iget-object v2, p0, Lcom/vungle/warren/AdLoader$Operation;->b:Lcom/vungle/warren/AdConfig$AdSize;

    iget-wide v3, p0, Lcom/vungle/warren/AdLoader$Operation;->c:J

    iget-wide v5, p0, Lcom/vungle/warren/AdLoader$Operation;->d:J

    iget v7, p0, Lcom/vungle/warren/AdLoader$Operation;->f:I

    iget v8, p0, Lcom/vungle/warren/AdLoader$Operation;->g:I

    iget-boolean v10, p0, Lcom/vungle/warren/AdLoader$Operation;->j:Z

    iget v11, p0, Lcom/vungle/warren/AdLoader$Operation;->k:I

    iget-object v0, p0, Lcom/vungle/warren/AdLoader$Operation;->h:Ljava/util/Set;

    const/4 v9, 0x0

    new-array v9, v9, [Lcom/vungle/warren/LoadAdCallback;

    invoke-interface {v0, v9}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, [Lcom/vungle/warren/LoadAdCallback;

    move-object v0, v13

    move v9, p1

    invoke-direct/range {v0 .. v12}, Lcom/vungle/warren/AdLoader$Operation;-><init>(Lcom/vungle/warren/AdRequest;Lcom/vungle/warren/AdConfig$AdSize;JJIIIZI[Lcom/vungle/warren/LoadAdCallback;)V

    return-object v13
.end method

.method d(J)Lcom/vungle/warren/AdLoader$Operation;
    .registers 18

    move-object v0, p0

    .line 1
    new-instance v14, Lcom/vungle/warren/AdLoader$Operation;

    iget-object v2, v0, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    iget-object v3, v0, Lcom/vungle/warren/AdLoader$Operation;->b:Lcom/vungle/warren/AdConfig$AdSize;

    iget-wide v4, v0, Lcom/vungle/warren/AdLoader$Operation;->c:J

    iget v8, v0, Lcom/vungle/warren/AdLoader$Operation;->f:I

    iget v9, v0, Lcom/vungle/warren/AdLoader$Operation;->g:I

    iget v10, v0, Lcom/vungle/warren/AdLoader$Operation;->e:I

    iget-boolean v11, v0, Lcom/vungle/warren/AdLoader$Operation;->j:Z

    iget v12, v0, Lcom/vungle/warren/AdLoader$Operation;->k:I

    iget-object v1, v0, Lcom/vungle/warren/AdLoader$Operation;->h:Ljava/util/Set;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/vungle/warren/LoadAdCallback;

    invoke-interface {v1, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, [Lcom/vungle/warren/LoadAdCallback;

    move-object v1, v14

    move-wide/from16 v6, p1

    invoke-direct/range {v1 .. v13}, Lcom/vungle/warren/AdLoader$Operation;-><init>(Lcom/vungle/warren/AdRequest;Lcom/vungle/warren/AdConfig$AdSize;JJIIIZI[Lcom/vungle/warren/LoadAdCallback;)V

    return-object v14
.end method

.method public getLogError()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/vungle/warren/AdLoader$Operation;->j:Z

    return v0
.end method

.method public getPriority()I
    .registers 2
    .annotation build Lcom/vungle/warren/AdLoader$Priority;
    .end annotation

    .line 1
    iget v0, p0, Lcom/vungle/warren/AdLoader$Operation;->k:I

    return v0
.end method

.method public getRequest()Lcom/vungle/warren/AdRequest;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    return-object v0
.end method

.method public getSize()Lcom/vungle/warren/AdConfig$AdSize;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/AdLoader$Operation;->b:Lcom/vungle/warren/AdConfig$AdSize;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/warren/AdLoader$Operation;->a:Lcom/vungle/warren/AdRequest;

    invoke-virtual {v1}, Lcom/vungle/warren/AdRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/warren/AdLoader$Operation;->b:Lcom/vungle/warren/AdConfig$AdSize;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vungle/warren/AdLoader$Operation;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " policy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vungle/warren/AdLoader$Operation;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " retry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vungle/warren/AdLoader$Operation;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vungle/warren/AdLoader$Operation;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " delay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/vungle/warren/AdLoader$Operation;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/vungle/warren/AdLoader$Operation;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " log="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vungle/warren/AdLoader$Operation;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.warren.AdLoader.Priority (com.vungle.warren.AdLoader$Priority)
.class public interface abstract annotation Lcom/vungle/warren/AdLoader$Priority;
.super Ljava/lang/Object;
.source "AdLoader.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/AdLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Priority"
.end annotation


# static fields
.field public static final HIGH:I = 0x1

.field public static final HIGHEST:I = 0x0

.field public static final LOWEST:I = 0x7fffffff

###### Class com.vungle.warren.AdLoader.ReschedulePolicy (com.vungle.warren.AdLoader$ReschedulePolicy)
.class public interface abstract annotation Lcom/vungle/warren/AdLoader$ReschedulePolicy;
.super Ljava/lang/Object;
.source "AdLoader.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/AdLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ReschedulePolicy"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final EXPONENTIAL:I = 0x0

.field public static final EXPONENTIAL_ENDLESS_AD:I = 0x1
