###### Class com.vungle.warren.downloader.AssetDownloader (com.vungle.warren.downloader.AssetDownloader)
.class public Lcom/vungle/warren/downloader/AssetDownloader;
.super Ljava/lang/Object;
.source "AssetDownloader.java"

# interfaces
.implements Lcom/vungle/warren/downloader/Downloader;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LogNotTimber"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;,
        Lcom/vungle/warren/downloader/AssetDownloader$NetworkType;
    }
.end annotation


# static fields
.field public static final VERIFICATION_WINDOW:J

.field private static final p:Ljava/lang/String;


# instance fields
.field private final a:Lcom/vungle/warren/downloader/DownloaderCache;

.field private final b:J

.field c:I

.field d:I

.field e:I

.field private final f:Lcom/vungle/warren/utility/NetworkProvider;

.field private final g:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final h:Lja/x;

.field private final i:Ljava/util/concurrent/ExecutorService;

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/vungle/warren/downloader/DownloadRequestMediator;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/vungle/warren/downloader/DownloadRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/lang/Object;

.field private volatile m:I

.field private n:Z

.field private final o:Lcom/vungle/warren/utility/NetworkProvider$NetworkListener;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x18

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/vungle/warren/downloader/AssetDownloader;->VERIFICATION_WINDOW:J

    .line 2
    const-class v0, Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vungle/warren/downloader/AssetDownloader;->p:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILcom/vungle/warren/utility/NetworkProvider;Ljava/util/concurrent/ExecutorService;)V
    .registers 11

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/vungle/warren/downloader/AssetDownloader;-><init>(Lcom/vungle/warren/downloader/DownloaderCache;JILcom/vungle/warren/utility/NetworkProvider;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public constructor <init>(Lcom/vungle/warren/downloader/DownloaderCache;JILcom/vungle/warren/utility/NetworkProvider;Ljava/util/concurrent/ExecutorService;)V
    .registers 16

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 3
    iput v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->c:I

    const/16 v1, 0xa

    .line 4
    iput v1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->d:I

    const/16 v1, 0x12c

    .line 5
    iput v1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->e:I

    .line 6
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->j:Ljava/util/Map;

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->k:Ljava/util/List;

    .line 8
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->l:Ljava/lang/Object;

    .line 9
    iput v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->m:I

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->n:Z

    .line 11
    new-instance v1, Lcom/vungle/warren/downloader/AssetDownloader$3;

    invoke-direct {v1, p0}, Lcom/vungle/warren/downloader/AssetDownloader$3;-><init>(Lcom/vungle/warren/downloader/AssetDownloader;)V

    iput-object v1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->o:Lcom/vungle/warren/utility/NetworkProvider$NetworkListener;

    .line 12
    iput-object p1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->a:Lcom/vungle/warren/downloader/DownloaderCache;

    .line 13
    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 14
    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object p4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    const-wide/16 v5, 0x1

    move-object v2, p1

    move v3, v4

    move-object v7, p4

    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 15
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 16
    iput-wide p2, p0, Lcom/vungle/warren/downloader/AssetDownloader;->b:J

    .line 17
    iput-object p1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 18
    iput-object p5, p0, Lcom/vungle/warren/downloader/AssetDownloader;->f:Lcom/vungle/warren/utility/NetworkProvider;

    .line 19
    iput-object p6, p0, Lcom/vungle/warren/downloader/AssetDownloader;->i:Ljava/util/concurrent/ExecutorService;

    .line 20
    new-instance p1, Lja/x$b;

    invoke-direct {p1}, Lja/x$b;-><init>()V

    const-wide/16 p2, 0x1e

    .line 21
    invoke-virtual {p1, p2, p3, p4}, Lja/x$b;->j(JLjava/util/concurrent/TimeUnit;)Lja/x$b;

    move-result-object p1

    .line 22
    invoke-virtual {p1, p2, p3, p4}, Lja/x$b;->g(JLjava/util/concurrent/TimeUnit;)Lja/x$b;

    move-result-object p1

    const/4 p2, 0x0

    .line 23
    invoke-virtual {p1, p2}, Lja/x$b;->e(Lja/c;)Lja/x$b;

    move-result-object p1

    .line 24
    invoke-virtual {p1, v0}, Lja/x$b;->h(Z)Lja/x$b;

    move-result-object p1

    .line 25
    invoke-virtual {p1, v0}, Lja/x$b;->i(Z)Lja/x$b;

    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lja/x$b;->d()Lja/x;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->h:Lja/x;

    return-void
.end method

.method static synthetic A(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;)Ljava/util/HashMap;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/warren/downloader/AssetDownloader;->P(Ljava/io/File;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic B(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;Ljava/io/File;Ljava/util/Map;)Z
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/warren/downloader/AssetDownloader;->r0(Lcom/vungle/warren/downloader/DownloadRequestMediator;Ljava/io/File;Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method static synthetic C(Lcom/vungle/warren/downloader/AssetDownloader;JLjava/io/File;Ljava/util/HashMap;Lja/a0$a;)V
    .registers 6

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/vungle/warren/downloader/AssetDownloader;->F(JLjava/io/File;Ljava/util/HashMap;Lja/a0$a;)V

    return-void
.end method

.method static synthetic D(Lcom/vungle/warren/downloader/AssetDownloader;)Lja/x;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->h:Lja/x;

    return-object p0
.end method

.method private E()V
    .registers 3

    .line 1
    sget-object v0, Lcom/vungle/warren/downloader/AssetDownloader;->p:Ljava/lang/String;

    const-string v1, "Adding network listner"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->f:Lcom/vungle/warren/utility/NetworkProvider;

    iget-object v1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->o:Lcom/vungle/warren/utility/NetworkProvider$NetworkListener;

    invoke-virtual {v0, v1}, Lcom/vungle/warren/utility/NetworkProvider;->addListener(Lcom/vungle/warren/utility/NetworkProvider$NetworkListener;)V

    return-void
.end method

.method private F(JLjava/io/File;Ljava/util/HashMap;Lja/a0$a;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/io/File;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lja/a0$a;",
            ")V"
        }
    .end annotation

    const-string v0, "Accept-Encoding"

    const-string v1, "identity"

    .line 1
    invoke-virtual {p5, v0, v1}, Lja/a0$a;->a(Ljava/lang/String;Ljava/lang/String;)Lja/a0$a;

    .line 2
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_a0

    invoke-virtual {p4}, Ljava/util/HashMap;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_15

    goto/16 :goto_a0

    :cond_15
    const-string p3, "ETag"

    .line 3
    invoke-virtual {p4, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    const-string v0, "Last-Modified"

    .line 4
    invoke-virtual {p4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "DOWNLOAD_COMPLETE"

    .line 5
    invoke-virtual {p4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 6
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3e

    const-string p1, "If-None-Match"

    .line 7
    invoke-virtual {p5, p1, p3}, Lja/a0$a;->a(Ljava/lang/String;Ljava/lang/String;)Lja/a0$a;

    .line 8
    :cond_3e
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_49

    const-string p1, "If-Modified-Since"

    .line 9
    invoke-virtual {p5, p1, v0}, Lja/a0$a;->a(Ljava/lang/String;Ljava/lang/String;)Lja/a0$a;

    :cond_49
    return-void

    :cond_4a
    const-string v2, "Accept-Ranges"

    .line 10
    invoke-virtual {p4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "bytes"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5b

    return-void

    :cond_5b
    const-string v2, "Content-Encoding"

    .line 11
    invoke-virtual {p4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_70

    .line 12
    invoke-virtual {p4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_70

    return-void

    .line 13
    :cond_70
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bytes="

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Range"

    invoke-virtual {p5, p2, p1}, Lja/a0$a;->a(Ljava/lang/String;Ljava/lang/String;)Lja/a0$a;

    .line 14
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string p2, "If-Range"

    if-nez p1, :cond_97

    .line 15
    invoke-virtual {p5, p2, p3}, Lja/a0$a;->a(Ljava/lang/String;Ljava/lang/String;)Lja/a0$a;

    goto :goto_a0

    .line 16
    :cond_97
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a0

    .line 17
    invoke-virtual {p5, p2, v0}, Lja/a0$a;->a(Ljava/lang/String;Ljava/lang/String;)Lja/a0$a;

    :cond_a0
    :goto_a0
    return-void
.end method

.method private G(Ljava/io/File;Ljava/io/File;Lja/s;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Content-Encoding"

    .line 1
    invoke-virtual {p3, v0}, Lja/s;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_38

    const-string v1, "gzip"

    .line 2
    invoke-virtual {v1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_38

    const-string v1, "identity"

    .line 3
    invoke-virtual {v1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_38

    :cond_19
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, p1, p2, v1}, Lcom/vungle/warren/downloader/AssetDownloader;->L(Ljava/io/File;Ljava/io/File;Z)V

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v0, p1, v1

    const/4 p2, 0x1

    aput-object p3, p1, p2

    const-string p2, "unknown %1$s %2$s "

    .line 5
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "AssetDownloader#checkEncoding; loadAd sequence"

    .line 6
    invoke-static {p2, p1}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Unknown Content-Encoding"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_38
    :goto_38
    return-void
.end method

.method private H(Ljava/io/File;Ljava/io/File;Landroidx/core/util/d;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Landroidx/core/util/d<",
            "Lcom/vungle/warren/downloader/DownloadRequest;",
            "Lcom/vungle/warren/downloader/AssetDownloadListener;",
            ">;)V"
        }
    .end annotation

    const-string v0, " copying to "

    .line 1
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2
    invoke-static {p2}, Lcom/vungle/warren/utility/FileUtility;->deleteAndLogIfFailed(Ljava/io/File;)V

    .line 3
    :cond_b
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_22

    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_22

    .line 4
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_22
    const/4 v1, 0x0

    .line 5
    :try_start_23
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_28} :catch_7a
    .catchall {:try_start_23 .. :try_end_28} :catchall_77

    .line 6
    :try_start_28
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2d} :catch_72
    .catchall {:try_start_28 .. :try_end_2d} :catchall_6e

    .line 7
    :try_start_2d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    .line 8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v9

    const-wide/16 v5, 0x0

    .line 9
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v7

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 10
    sget-object v1, Lcom/vungle/warren/downloader/AssetDownloader;->p:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Copying: finished "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p3, Landroidx/core/util/d;->a:Ljava/lang/Object;

    check-cast v5, Lcom/vungle/warren/downloader/DownloadRequest;

    iget-object v5, v5, Lcom/vungle/warren/downloader/DownloadRequest;->url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_64} :catch_6c
    .catchall {:try_start_2d .. :try_end_64} :catchall_df

    .line 11
    :goto_64
    invoke-static {v2}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 12
    invoke-static {v3}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_de

    :catch_6c
    move-exception v1

    goto :goto_7e

    :catchall_6e
    move-exception p1

    move-object v3, v1

    goto/16 :goto_e0

    :catch_72
    move-exception v3

    move-object v10, v3

    move-object v3, v1

    move-object v1, v10

    goto :goto_7e

    :catchall_77
    move-exception p1

    move-object v3, v1

    goto :goto_e1

    :catch_7a
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    move-object v2, v3

    :goto_7e
    :try_start_7e
    const-string v4, "AssetDownloader#copyToDestination; loadAd sequence"

    const-string v5, "cannot copy from %1$s(%2$s) to %3$s due to %4$s"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 13
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v7

    const/4 p1, 0x1

    iget-object v7, p3, Landroidx/core/util/d;->a:Ljava/lang/Object;

    check-cast v7, Lcom/vungle/warren/downloader/DownloadRequest;

    iget-object v7, v7, Lcom/vungle/warren/downloader/DownloadRequest;->url:Ljava/lang/String;

    aput-object v7, v6, p1

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    const/4 v7, 0x2

    aput-object p1, v6, v7

    const/4 p1, 0x3

    aput-object v1, v6, p1

    .line 14
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-static {v4, p1}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object p1, p3, Landroidx/core/util/d;->a:Ljava/lang/Object;

    check-cast p1, Lcom/vungle/warren/downloader/DownloadRequest;

    iget-object v4, p3, Landroidx/core/util/d;->b:Ljava/lang/Object;

    check-cast v4, Lcom/vungle/warren/downloader/AssetDownloadListener;

    new-instance v5, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    const/4 v6, -0x1

    invoke-direct {v5, v6, v1, v7}, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V

    invoke-direct {p0, p1, v4, v5}, Lcom/vungle/warren/downloader/AssetDownloader;->M(Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;)V

    .line 17
    sget-object p1, Lcom/vungle/warren/downloader/AssetDownloader;->p:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Copying: error"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p3, Landroidx/core/util/d;->a:Ljava/lang/Object;

    check-cast p3, Lcom/vungle/warren/downloader/DownloadRequest;

    iget-object p3, p3, Lcom/vungle/warren/downloader/DownloadRequest;->url:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_dd
    .catchall {:try_start_7e .. :try_end_dd} :catchall_df

    goto :goto_64

    :goto_de
    return-void

    :catchall_df
    move-exception p1

    :goto_e0
    move-object v1, v2

    .line 18
    :goto_e1
    invoke-static {v1}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 19
    invoke-static {v3}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 20
    goto :goto_e9

    :goto_e8
    throw p1

    :goto_e9
    goto :goto_e8
.end method

.method private I(Lcom/vungle/warren/downloader/DownloadRequest;)Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", single request url - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/vungle/warren/downloader/DownloadRequest;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", path - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/vungle/warren/downloader/DownloadRequest;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", th - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/vungle/warren/downloader/DownloadRequest;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private J(Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", mediator url - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/vungle/warren/downloader/DownloadRequestMediator;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", path - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/vungle/warren/downloader/DownloadRequestMediator;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", th - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private K(Lja/c0;)Lja/d0;
    .registers 6

    const-string v0, "Content-Encoding"

    .line 1
    invoke-virtual {p1, v0}, Lja/c0;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gzip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 2
    invoke-static {p1}, Lna/e;->c(Lja/c0;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 3
    invoke-virtual {p1}, Lja/c0;->b()Lja/d0;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 4
    new-instance v0, Lokio/l;

    invoke-virtual {p1}, Lja/c0;->b()Lja/d0;

    move-result-object v1

    invoke-virtual {v1}, Lja/d0;->source()Lokio/e;

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/l;-><init>(Lokio/u;)V

    const-string v1, "Content-Type"

    .line 5
    invoke-virtual {p1, v1}, Lja/c0;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance v1, Lna/h;

    const-wide/16 v2, -0x1

    invoke-static {v0}, Lokio/n;->c(Lokio/u;)Lokio/e;

    move-result-object v0

    invoke-direct {v1, p1, v2, v3, v0}, Lna/h;-><init>(Ljava/lang/String;JLokio/e;)V

    return-object v1

    .line 7
    :cond_39
    invoke-virtual {p1}, Lja/c0;->b()Lja/d0;

    move-result-object p1

    return-object p1
.end method

.method private L(Ljava/io/File;Ljava/io/File;Z)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 1
    :cond_3
    invoke-static {p1}, Lcom/vungle/warren/utility/FileUtility;->deleteAndLogIfFailed(Ljava/io/File;)V

    if-eqz p2, :cond_b

    .line 2
    invoke-static {p2}, Lcom/vungle/warren/utility/FileUtility;->deleteAndLogIfFailed(Ljava/io/File;)V

    .line 3
    :cond_b
    iget-object p2, p0, Lcom/vungle/warren/downloader/AssetDownloader;->a:Lcom/vungle/warren/downloader/DownloaderCache;

    if-eqz p2, :cond_22

    invoke-virtual {p0}, Lcom/vungle/warren/downloader/AssetDownloader;->isCacheEnabled()Z

    move-result p2

    if-eqz p2, :cond_22

    if-eqz p3, :cond_1d

    .line 4
    iget-object p2, p0, Lcom/vungle/warren/downloader/AssetDownloader;->a:Lcom/vungle/warren/downloader/DownloaderCache;

    invoke-interface {p2, p1}, Lcom/vungle/warren/downloader/DownloaderCache;->deleteAndRemove(Ljava/io/File;)Z

    goto :goto_22

    .line 5
    :cond_1d
    iget-object p2, p0, Lcom/vungle/warren/downloader/AssetDownloader;->a:Lcom/vungle/warren/downloader/DownloaderCache;

    invoke-interface {p2, p1}, Lcom/vungle/warren/downloader/DownloaderCache;->deleteContents(Ljava/io/File;)Z

    :cond_22
    :goto_22
    return-void
.end method

.method private M(Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;)V
    .registers 7

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    if-eqz p1, :cond_d

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/warren/downloader/AssetDownloader;->I(Lcom/vungle/warren/downloader/DownloadRequest;)Ljava/lang/String;

    move-result-object v1

    goto :goto_f

    :cond_d
    const-string v1, "null"

    :goto_f
    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Delivering error %1$s; request %2$s"

    .line 2
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AssetDownloader#deliverError; loadAd sequence"

    .line 3
    invoke-static {v1, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_29

    .line 4
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->i:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/vungle/warren/downloader/AssetDownloader$4;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/vungle/warren/downloader/AssetDownloader$4;-><init>(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/AssetDownloadListener;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_29
    return-void
.end method

.method private N(Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;)V
    .registers 6

    if-eqz p3, :cond_c

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->i:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/vungle/warren/downloader/AssetDownloader$5;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/vungle/warren/downloader/AssetDownloader$5;-><init>(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_c
    return-void
.end method

.method private O(Landroidx/core/util/d;Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/d<",
            "Lcom/vungle/warren/downloader/DownloadRequest;",
            "Lcom/vungle/warren/downloader/AssetDownloadListener;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Landroidx/core/util/d;->b:Ljava/lang/Object;

    if-eqz v0, :cond_d

    .line 2
    check-cast v0, Lcom/vungle/warren/downloader/AssetDownloadListener;

    iget-object p1, p1, Landroidx/core/util/d;->a:Ljava/lang/Object;

    check-cast p1, Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-interface {v0, p2, p1}, Lcom/vungle/warren/downloader/AssetDownloadListener;->onSuccess(Ljava/io/File;Lcom/vungle/warren/downloader/DownloadRequest;)V

    :cond_d
    return-void
.end method

.method private P(Ljava/io/File;)Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/vungle/warren/utility/FileUtility;->readMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method private declared-synchronized Q(Lcom/vungle/warren/downloader/DownloadRequest;)Lcom/vungle/warren/downloader/DownloadRequestMediator;
    .registers 6

    monitor-enter p0

    .line 1
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    iget-object v1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->j:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/vungle/warren/downloader/AssetDownloader;->R(Lcom/vungle/warren/downloader/DownloadRequest;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->j:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/vungle/warren/downloader/AssetDownloader;->T(Lcom/vungle/warren/downloader/DownloadRequest;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_25
    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/downloader/DownloadRequestMediator;

    if-nez v1, :cond_34

    goto :goto_25

    .line 5
    :cond_34
    invoke-virtual {v1}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->requests()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vungle/warren/downloader/DownloadRequest;

    .line 6
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_4c
    .catchall {:try_start_1 .. :try_end_4c} :catchall_53

    if-eqz v3, :cond_3c

    .line 7
    monitor-exit p0

    return-object v1

    :cond_50
    const/4 p1, 0x0

    .line 8
    monitor-exit p0

    return-object p1

    :catchall_53
    move-exception p1

    monitor-exit p0

    goto :goto_57

    :goto_56
    throw p1

    :goto_57
    goto :goto_56
.end method

.method private R(Lcom/vungle/warren/downloader/DownloadRequest;)Ljava/lang/String;
    .registers 2

    .line 1
    iget-object p1, p1, Lcom/vungle/warren/downloader/DownloadRequest;->url:Ljava/lang/String;

    return-object p1
.end method

.method private S(Lja/c0;)J
    .registers 5

    const-wide/16 v0, -0x1

    if-nez p1, :cond_5

    return-wide v0

    .line 1
    :cond_5
    invoke-virtual {p1}, Lja/c0;->h()Lja/s;

    move-result-object p1

    const-string v2, "Content-Length"

    invoke-virtual {p1, v2}, Lja/s;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    return-wide v0

    .line 3
    :cond_16
    :try_start_16
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_1a

    :catchall_1a
    return-wide v0
.end method

.method private T(Lcom/vungle/warren/downloader/DownloadRequest;)Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/vungle/warren/downloader/DownloadRequest;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/vungle/warren/downloader/DownloadRequest;->path:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private U(Lcom/vungle/warren/downloader/DownloadRequestMediator;)Z
    .registers 4

    .line 1
    invoke-virtual {p1}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->requests()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/downloader/DownloadRequest;

    if-nez v0, :cond_1e

    .line 2
    sget-object v0, Lcom/vungle/warren/downloader/AssetDownloader;->p:Ljava/lang/String;

    const-string v1, "Request is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 3
    :cond_1e
    invoke-direct {p0, v0}, Lcom/vungle/warren/downloader/AssetDownloader;->V(Lcom/vungle/warren/downloader/DownloadRequest;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_26
    const/4 p1, 0x0

    return p1
.end method

.method private V(Lcom/vungle/warren/downloader/DownloadRequest;)Z
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->f:Lcom/vungle/warren/utility/NetworkProvider;

    invoke-virtual {v0}, Lcom/vungle/warren/utility/NetworkProvider;->getCurrentNetworkType()I

    move-result v0

    const/4 v1, 0x1

    if-ltz v0, :cond_f

    .line 2
    iget v2, p1, Lcom/vungle/warren/downloader/DownloadRequest;->networkType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_f

    return v1

    :cond_f
    if-eqz v0, :cond_28

    if-eq v0, v1, :cond_26

    const/4 v2, 0x4

    if-eq v0, v2, :cond_28

    const/16 v2, 0x9

    if-eq v0, v2, :cond_26

    const/16 v2, 0x11

    if-eq v0, v2, :cond_28

    const/4 v2, 0x6

    if-eq v0, v2, :cond_26

    const/4 v2, 0x7

    if-eq v0, v2, :cond_28

    const/4 v2, -0x1

    goto :goto_29

    :cond_26
    const/4 v2, 0x2

    goto :goto_29

    :cond_28
    const/4 v2, 0x1

    :goto_29
    if-lez v2, :cond_31

    .line 3
    iget v3, p1, Lcom/vungle/warren/downloader/DownloadRequest;->networkType:I

    and-int/2addr v3, v2

    if-ne v3, v2, :cond_31

    goto :goto_32

    :cond_31
    const/4 v1, 0x0

    .line 4
    :goto_32
    sget-object v2, Lcom/vungle/warren/downloader/AssetDownloader;->p:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checking pause for type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " connected "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {p0, p1}, Lcom/vungle/warren/downloader/AssetDownloader;->I(Lcom/vungle/warren/downloader/DownloadRequest;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private W(Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_e6

    .line 3
    :try_start_4
    invoke-virtual {p1}, Lcom/vungle/warren/downloader/DownloadRequest;->b()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x3

    if-eqz v1, :cond_48

    .line 4
    iget-object v1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->k:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 5
    sget-object v1, Lcom/vungle/warren/downloader/AssetDownloader;->p:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Request "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/vungle/warren/downloader/DownloadRequest;->url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is cancelled before starting"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    new-instance v1, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;

    invoke-direct {v1}, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;-><init>()V

    .line 7
    iput v4, v1, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->status:I

    .line 8
    new-instance v1, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    new-instance v4, Ljava/io/IOException;

    const-string v5, "Cancelled"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3, v4, v2}, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V

    invoke-direct {p0, p1, p2, v1}, Lcom/vungle/warren/downloader/AssetDownloader;->M(Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;)V

    .line 9
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_4 .. :try_end_46} :catchall_e3

    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_e6

    return-void

    .line 10
    :cond_48
    :try_start_48
    iget-object v1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->j:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/vungle/warren/downloader/AssetDownloader;->b0(Lcom/vungle/warren/downloader/DownloadRequest;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/downloader/DownloadRequestMediator;

    if-nez v1, :cond_6c

    .line 11
    iget-object v1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->k:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/vungle/warren/downloader/AssetDownloader;->Z(Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;)Lcom/vungle/warren/downloader/DownloadRequestMediator;

    move-result-object p1

    .line 13
    iget-object p2, p0, Lcom/vungle/warren/downloader/AssetDownloader;->j:Ljava/util/Map;

    iget-object v1, p1, Lcom/vungle/warren/downloader/DownloadRequestMediator;->key:Ljava/lang/String;

    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-direct {p0, p1}, Lcom/vungle/warren/downloader/AssetDownloader;->X(Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    .line 15
    monitor-exit p0
    :try_end_6a
    .catchall {:try_start_48 .. :try_end_6a} :catchall_e3

    :try_start_6a
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_e6

    return-void

    .line 16
    :cond_6c
    :try_start_6c
    monitor-exit p0
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_e3

    .line 17
    :try_start_6d
    invoke-virtual {v1}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->lock()V

    .line 18
    monitor-enter p0
    :try_end_71
    .catchall {:try_start_6d .. :try_end_71} :catchall_de

    .line 19
    :try_start_71
    iget-object v5, p0, Lcom/vungle/warren/downloader/AssetDownloader;->k:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v5, 0x6

    .line 20
    invoke-virtual {v1, v5}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->is(I)Z

    move-result v5

    if-nez v5, :cond_c7

    .line 21
    invoke-virtual {v1, v4}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->is(I)Z

    move-result v4

    if-eqz v4, :cond_8a

    invoke-virtual {p1}, Lcom/vungle/warren/downloader/DownloadRequest;->b()Z

    move-result v4

    if-nez v4, :cond_8a

    goto :goto_c7

    .line 22
    :cond_8a
    iget-boolean v4, v1, Lcom/vungle/warren/downloader/DownloadRequestMediator;->isCacheable:Z

    if-eqz v4, :cond_9c

    .line 23
    invoke-virtual {v1, p1, p2}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->add(Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;)V

    const/4 p1, 0x2

    .line 24
    invoke-virtual {v1, p1}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->is(I)Z

    move-result p1

    if-eqz p1, :cond_d5

    .line 25
    invoke-direct {p0, v1}, Lcom/vungle/warren/downloader/AssetDownloader;->X(Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_d5

    :cond_9c
    const-string v4, "AssetDownloader#launchRequest; loadAd sequence"

    .line 26
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "request "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is already running"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vungle/warren/VungleLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    new-instance v4, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "DownloadRequest is already running"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v3, v5, v2}, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V

    invoke-direct {p0, p1, p2, v4}, Lcom/vungle/warren/downloader/AssetDownloader;->M(Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;)V

    goto :goto_d5

    .line 28
    :cond_c7
    :goto_c7
    invoke-direct {p0, p1, p2}, Lcom/vungle/warren/downloader/AssetDownloader;->Z(Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;)Lcom/vungle/warren/downloader/DownloadRequestMediator;

    move-result-object p1

    .line 29
    iget-object p2, p0, Lcom/vungle/warren/downloader/AssetDownloader;->j:Ljava/util/Map;

    iget-object v2, v1, Lcom/vungle/warren/downloader/DownloadRequestMediator;->key:Ljava/lang/String;

    invoke-interface {p2, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-direct {p0, p1}, Lcom/vungle/warren/downloader/AssetDownloader;->X(Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    .line 31
    :cond_d5
    :goto_d5
    monitor-exit p0
    :try_end_d6
    .catchall {:try_start_71 .. :try_end_d6} :catchall_db

    .line 32
    :try_start_d6
    invoke-virtual {v1}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->unlock()V

    .line 33
    monitor-exit v0
    :try_end_da
    .catchall {:try_start_d6 .. :try_end_da} :catchall_e6

    return-void

    :catchall_db
    move-exception p1

    .line 34
    :try_start_dc
    monitor-exit p0
    :try_end_dd
    .catchall {:try_start_dc .. :try_end_dd} :catchall_db

    :try_start_dd
    throw p1
    :try_end_de
    .catchall {:try_start_dd .. :try_end_de} :catchall_de

    :catchall_de
    move-exception p1

    .line 35
    :try_start_df
    invoke-virtual {v1}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->unlock()V

    .line 36
    throw p1
    :try_end_e3
    .catchall {:try_start_df .. :try_end_e3} :catchall_e6

    :catchall_e3
    move-exception p1

    .line 37
    :try_start_e4
    monitor-exit p0
    :try_end_e5
    .catchall {:try_start_e4 .. :try_end_e5} :catchall_e3

    :try_start_e5
    throw p1

    :catchall_e6
    move-exception p1

    .line 38
    monitor-exit v0
    :try_end_e8
    .catchall {:try_start_e5 .. :try_end_e8} :catchall_e6

    throw p1
.end method

.method private declared-synchronized X(Lcom/vungle/warren/downloader/DownloadRequestMediator;)V
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-direct {p0}, Lcom/vungle/warren/downloader/AssetDownloader;->E()V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->set(I)V

    .line 3
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/vungle/warren/downloader/AssetDownloader$2;

    invoke-direct {v1, p0, p1, p1}, Lcom/vungle/warren/downloader/AssetDownloader$2;-><init>(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 4
    monitor-exit p0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private Y(Ljava/io/File;Lja/s;Ljava/lang/String;)Ljava/util/HashMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lja/s;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Download_URL"

    .line 2
    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "ETag"

    .line 3
    invoke-virtual {p2, p3}, Lja/s;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "Last-Modified"

    .line 4
    invoke-virtual {p2, p3}, Lja/s;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "Accept-Ranges"

    .line 5
    invoke-virtual {p2, p3}, Lja/s;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "Content-Encoding"

    .line 6
    invoke-virtual {p2, p3}, Lja/s;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-direct {p0, p1, v0}, Lcom/vungle/warren/downloader/AssetDownloader;->o0(Ljava/io/File;Ljava/util/HashMap;)V

    return-object v0
.end method

.method private Z(Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;)Lcom/vungle/warren/downloader/DownloadRequestMediator;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/downloader/AssetDownloader;->isCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_43

    .line 2
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/vungle/warren/downloader/DownloadRequest;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".vng_meta"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/vungle/warren/downloader/DownloadRequest;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/vungle/warren/downloader/DownloadRequest;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object v8, v2

    const/4 v7, 0x0

    goto :goto_56

    .line 5
    :cond_43
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->a:Lcom/vungle/warren/downloader/DownloaderCache;

    iget-object v1, p1, Lcom/vungle/warren/downloader/DownloadRequest;->url:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/vungle/warren/downloader/DownloaderCache;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->a:Lcom/vungle/warren/downloader/DownloaderCache;

    invoke-interface {v1, v0}, Lcom/vungle/warren/downloader/DownloaderCache;->getMetaFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    const/4 v3, 0x1

    .line 7
    iget-object v2, p1, Lcom/vungle/warren/downloader/DownloadRequest;->url:Ljava/lang/String;

    move-object v8, v2

    const/4 v7, 0x1

    .line 8
    :goto_56
    sget-object v2, Lcom/vungle/warren/downloader/AssetDownloader;->p:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Destination file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    new-instance v9, Lcom/vungle/warren/downloader/DownloadRequestMediator;

    .line 10
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 11
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    move-object v2, v9

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v8}, Lcom/vungle/warren/downloader/DownloadRequestMediator;-><init>(Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-object v9
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/vungle/warren/downloader/AssetDownloader;->p:Ljava/lang/String;

    return-object v0
.end method

.method private a0(Ljava/lang/Throwable;Z)I
    .registers 4

    .line 1
    instance-of v0, p1, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_6

    const/4 p1, 0x4

    goto :goto_1f

    :cond_6
    if-eqz p2, :cond_1e

    .line 2
    instance-of p2, p1, Ljava/net/SocketException;

    if-nez p2, :cond_1e

    instance-of p2, p1, Ljava/net/SocketTimeoutException;

    if-eqz p2, :cond_11

    goto :goto_1e

    .line 3
    :cond_11
    instance-of p2, p1, Ljava/net/UnknownHostException;

    if-nez p2, :cond_1c

    instance-of p1, p1, Ljavax/net/ssl/SSLException;

    if-eqz p1, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 p1, 0x2

    goto :goto_1f

    :cond_1c
    :goto_1c
    const/4 p1, 0x1

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 p1, 0x0

    :goto_1f
    return p1
.end method

.method static synthetic b(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/vungle/warren/downloader/AssetDownloader;->W(Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;)V

    return-void
.end method

.method private b0(Lcom/vungle/warren/downloader/DownloadRequest;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/downloader/AssetDownloader;->isCacheEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2
    invoke-direct {p0, p1}, Lcom/vungle/warren/downloader/AssetDownloader;->R(Lcom/vungle/warren/downloader/DownloadRequest;)Ljava/lang/String;

    move-result-object p1

    goto :goto_f

    .line 3
    :cond_b
    invoke-direct {p0, p1}, Lcom/vungle/warren/downloader/AssetDownloader;->T(Lcom/vungle/warren/downloader/DownloadRequest;)Ljava/lang/String;

    move-result-object p1

    :goto_f
    return-object p1
.end method

.method static synthetic c(Lcom/vungle/warren/downloader/AssetDownloader;Lja/c0;)J
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/warren/downloader/AssetDownloader;->S(Lja/c0;)J

    move-result-wide p0

    return-wide p0
.end method

.method private c0(Ljava/io/File;Lja/c0;Lcom/vungle/warren/downloader/DownloadRequestMediator;Ljava/util/HashMap;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lja/c0;",
            "Lcom/vungle/warren/downloader/DownloadRequestMediator;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_4a

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_4a

    iget-boolean p1, p3, Lcom/vungle/warren/downloader/DownloadRequestMediator;->isCacheable:Z

    if-nez p1, :cond_18

    goto :goto_4a

    .line 2
    :cond_18
    invoke-virtual {p2}, Lja/c0;->d()I

    move-result p1

    const-string p2, "DOWNLOAD_COMPLETE"

    .line 3
    invoke-virtual {p4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4a

    const/16 p2, 0x130

    if-ne p1, p2, :cond_4a

    .line 4
    sget-object p1, Lcom/vungle/warren/downloader/AssetDownloader;->p:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "304 code, data size matches file size "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p3}, Lcom/vungle/warren/downloader/AssetDownloader;->J(Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    :cond_4a
    :goto_4a
    return v0
.end method

.method static synthetic d(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Lja/c0;Lcom/vungle/warren/downloader/DownloadRequestMediator;Ljava/util/HashMap;)Z
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vungle/warren/downloader/AssetDownloader;->c0(Ljava/io/File;Lja/c0;Lcom/vungle/warren/downloader/DownloadRequestMediator;Ljava/util/HashMap;)Z

    move-result p0

    return p0
.end method

.method private d0(Lcom/vungle/warren/downloader/DownloadRequest;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Lcom/vungle/warren/downloader/DownloadRequest;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2
    :cond_7
    invoke-virtual {p1}, Lcom/vungle/warren/downloader/DownloadRequest;->a()V

    .line 3
    invoke-direct {p0, p1}, Lcom/vungle/warren/downloader/AssetDownloader;->Q(Lcom/vungle/warren/downloader/DownloadRequest;)Lcom/vungle/warren/downloader/DownloadRequestMediator;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 4
    invoke-virtual {v0}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_46

    .line 5
    invoke-virtual {v0, p1}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->remove(Lcom/vungle/warren/downloader/DownloadRequest;)Landroidx/core/util/d;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_20

    move-object v3, v1

    goto :goto_24

    .line 6
    :cond_20
    iget-object v3, p1, Landroidx/core/util/d;->a:Ljava/lang/Object;

    check-cast v3, Lcom/vungle/warren/downloader/DownloadRequest;

    :goto_24
    if-nez p1, :cond_27

    goto :goto_2c

    .line 7
    :cond_27
    iget-object p1, p1, Landroidx/core/util/d;->b:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lcom/vungle/warren/downloader/AssetDownloadListener;

    .line 8
    :goto_2c
    invoke-virtual {v0}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->values()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_39

    .line 9
    invoke-virtual {v0, v2}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->set(I)V

    :cond_39
    if-nez v3, :cond_3c

    return-void

    .line 10
    :cond_3c
    new-instance p1, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;

    invoke-direct {p1}, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;-><init>()V

    .line 11
    iput v2, p1, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->status:I

    .line 12
    invoke-direct {p0, p1, v3, v1}, Lcom/vungle/warren/downloader/AssetDownloader;->N(Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;)V

    .line 13
    :cond_46
    invoke-direct {p0}, Lcom/vungle/warren/downloader/AssetDownloader;->m0()V

    return-void
.end method

.method static synthetic e(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;Ljava/io/File;Ljava/util/Map;I)Z
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vungle/warren/downloader/AssetDownloader;->q0(Lcom/vungle/warren/downloader/DownloadRequestMediator;Ljava/io/File;Ljava/util/Map;I)Z

    move-result p0

    return p0
.end method

.method private declared-synchronized e0(Lcom/vungle/warren/downloader/DownloadRequestMediator;)V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-virtual {p1}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->requests()Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/downloader/DownloadRequest;

    .line 3
    invoke-direct {p0, v0}, Lcom/vungle/warren/downloader/AssetDownloader;->d0(Lcom/vungle/warren/downloader/DownloadRequest;)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1b

    goto :goto_9

    .line 4
    :cond_19
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception p1

    monitor-exit p0

    goto :goto_1f

    :goto_1e
    throw p1

    :goto_1f
    goto :goto_1e
.end method

.method static synthetic f(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Ljava/util/HashMap;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/vungle/warren/downloader/AssetDownloader;->o0(Ljava/io/File;Ljava/util/HashMap;)V

    return-void
.end method

.method private f0(Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V
    .registers 6

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1
    invoke-direct {p0, p2}, Lcom/vungle/warren/downloader/AssetDownloader;->J(Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Error %1$s occured; mediator %2$s"

    .line 2
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AssetDownloader#onErrorMediator; loadAd sequence"

    .line 3
    invoke-static {v1, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_26

    .line 4
    new-instance p1, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    const/4 v0, -0x1

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    const/4 v2, 0x4

    invoke-direct {p1, v0, v1, v2}, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V

    .line 5
    :cond_26
    :try_start_26
    invoke-virtual {p2}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->lock()V

    .line 6
    invoke-virtual {p2}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->values()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/util/d;

    .line 7
    iget-object v2, v1, Landroidx/core/util/d;->a:Ljava/lang/Object;

    check-cast v2, Lcom/vungle/warren/downloader/DownloadRequest;

    iget-object v1, v1, Landroidx/core/util/d;->b:Ljava/lang/Object;

    check-cast v1, Lcom/vungle/warren/downloader/AssetDownloadListener;

    invoke-direct {p0, v2, v1, p1}, Lcom/vungle/warren/downloader/AssetDownloader;->M(Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;)V

    goto :goto_31

    .line 8
    :cond_49
    invoke-direct {p0, p2}, Lcom/vungle/warren/downloader/AssetDownloader;->l0(Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    const/4 p1, 0x6

    .line 9
    invoke-virtual {p2, p1}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->set(I)V
    :try_end_50
    .catchall {:try_start_26 .. :try_end_50} :catchall_54

    .line 10
    invoke-virtual {p2}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->unlock()V

    return-void

    :catchall_54
    move-exception p1

    invoke-virtual {p2}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->unlock()V

    .line 11
    goto :goto_5a

    :goto_59
    throw p1

    :goto_5a
    goto :goto_59
.end method

.method static synthetic g(Lcom/vungle/warren/downloader/AssetDownloader;JILja/c0;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Z
    .registers 6

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/vungle/warren/downloader/AssetDownloader;->j0(JILja/c0;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Z

    move-result p0

    return p0
.end method

.method private declared-synchronized g0(I)V
    .registers 8

    monitor-enter p0

    .line 1
    :try_start_1
    sget-object v0, Lcom/vungle/warren/downloader/AssetDownloader;->p:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Num of connections: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/downloader/AssetDownloader;->j:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2b
    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/downloader/DownloadRequestMediator;

    const/4 v2, 0x3

    .line 3
    invoke-virtual {v1, v2}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->is(I)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 4
    sget-object v1, Lcom/vungle/warren/downloader/AssetDownloader;->p:Ljava/lang/String;

    const-string v2, "Result cancelled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 5
    :cond_46
    invoke-direct {p0, v1}, Lcom/vungle/warren/downloader/AssetDownloader;->U(Lcom/vungle/warren/downloader/DownloadRequestMediator;)Z

    move-result v2

    .line 6
    sget-object v3, Lcom/vungle/warren/downloader/AssetDownloader;->p:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connected = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-virtual {v1, v2}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->setConnected(Z)V

    .line 8
    invoke-virtual {v1}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->isPausable()Z

    move-result v4

    if-eqz v4, :cond_2b

    if-eqz v2, :cond_2b

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->is(I)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 9
    invoke-direct {p0, v1}, Lcom/vungle/warren/downloader/AssetDownloader;->X(Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resumed "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/vungle/warren/downloader/DownloadRequestMediator;->key:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9b
    .catchall {:try_start_1 .. :try_end_9b} :catchall_9e

    goto :goto_2b

    .line 11
    :cond_9c
    monitor-exit p0

    return-void

    :catchall_9e
    move-exception p1

    monitor-exit p0

    goto :goto_a2

    :goto_a1
    throw p1

    :goto_a2
    goto :goto_a1
.end method

.method static synthetic h(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Ljava/io/File;Z)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/warren/downloader/AssetDownloader;->L(Ljava/io/File;Ljava/io/File;Z)V

    return-void
.end method

.method private h0(Lcom/vungle/warren/downloader/DownloadRequestMediator;Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    .line 1
    :cond_3
    invoke-static {p2}, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->copy(Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;)Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/vungle/warren/downloader/AssetDownloader;->p:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Progress "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->progressPercent:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->status:I

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/vungle/warren/downloader/DownloadRequestMediator;->filePath:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p1}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->values()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_41
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_59

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/core/util/d;

    .line 4
    iget-object v1, p2, Landroidx/core/util/d;->a:Ljava/lang/Object;

    check-cast v1, Lcom/vungle/warren/downloader/DownloadRequest;

    iget-object p2, p2, Landroidx/core/util/d;->b:Ljava/lang/Object;

    check-cast p2, Lcom/vungle/warren/downloader/AssetDownloadListener;

    invoke-direct {p0, v0, v1, p2}, Lcom/vungle/warren/downloader/AssetDownloader;->N(Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;)V

    goto :goto_41

    :cond_59
    return-void
.end method

.method static synthetic i(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Ljava/io/File;Lja/s;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/warren/downloader/AssetDownloader;->G(Ljava/io/File;Ljava/io/File;Lja/s;)V

    return-void
.end method

.method private i0(Ljava/io/File;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V
    .registers 9

    .line 1
    sget-object v0, Lcom/vungle/warren/downloader/AssetDownloader;->p:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnComplete - Removing connections and listener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :try_start_16
    invoke-virtual {p2}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->lock()V

    .line 3
    invoke-virtual {p2}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->values()Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_53

    const-string v0, "AssetDownloader#onSuccessMediator; loadAd sequence"

    const-string v1, "File %1$s does not exist; mediator %2$s "

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p2}, Lcom/vungle/warren/downloader/AssetDownloader;->J(Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    .line 7
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {v0, p1}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance p1, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    const/4 v0, -0x1

    new-instance v1, Ljava/io/IOException;

    const-string v3, "File is deleted"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0, v1, v2}, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V

    invoke-direct {p0, p1, p2}, Lcom/vungle/warren/downloader/AssetDownloader;->f0(Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V
    :try_end_4f
    .catchall {:try_start_16 .. :try_end_4f} :catchall_e3

    .line 10
    invoke-virtual {p2}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->unlock()V

    return-void

    .line 11
    :cond_53
    :try_start_53
    iget-object v1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->a:Lcom/vungle/warren/downloader/DownloaderCache;

    if-eqz v1, :cond_6c

    iget-boolean v2, p2, Lcom/vungle/warren/downloader/DownloadRequestMediator;->isCacheable:Z

    if-eqz v2, :cond_6c

    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v1, p1, v2, v3}, Lcom/vungle/warren/downloader/DownloaderCache;->onCacheHit(Ljava/io/File;J)V

    .line 13
    iget-object v1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->a:Lcom/vungle/warren/downloader/DownloaderCache;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v1, p1, v2, v3}, Lcom/vungle/warren/downloader/DownloaderCache;->setCacheLastUpdateTimestamp(Ljava/io/File;J)V

    .line 14
    :cond_6c
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_70
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_be

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/util/d;

    .line 15
    new-instance v2, Ljava/io/File;

    iget-object v3, v1, Landroidx/core/util/d;->a:Ljava/lang/Object;

    check-cast v3, Lcom/vungle/warren/downloader/DownloadRequest;

    iget-object v3, v3, Lcom/vungle/warren/downloader/DownloadRequest;->path:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v2, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_91

    .line 17
    invoke-direct {p0, p1, v2, v1}, Lcom/vungle/warren/downloader/AssetDownloader;->H(Ljava/io/File;Ljava/io/File;Landroidx/core/util/d;)V

    goto :goto_92

    :cond_91
    move-object v2, p1

    .line 18
    :goto_92
    sget-object v3, Lcom/vungle/warren/downloader/AssetDownloader;->p:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deliver success:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Landroidx/core/util/d;->a:Ljava/lang/Object;

    check-cast v5, Lcom/vungle/warren/downloader/DownloadRequest;

    iget-object v5, v5, Lcom/vungle/warren/downloader/DownloadRequest;->url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " dest file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 20
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-direct {p0, v1, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->O(Landroidx/core/util/d;Ljava/io/File;)V

    goto :goto_70

    .line 22
    :cond_be
    invoke-direct {p0, p2}, Lcom/vungle/warren/downloader/AssetDownloader;->l0(Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    const/4 p1, 0x6

    .line 23
    invoke-virtual {p2, p1}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->set(I)V

    .line 24
    sget-object p1, Lcom/vungle/warren/downloader/AssetDownloader;->p:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finished "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/vungle/warren/downloader/AssetDownloader;->J(Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_df
    .catchall {:try_start_53 .. :try_end_df} :catchall_e3

    .line 25
    invoke-virtual {p2}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->unlock()V

    return-void

    :catchall_e3
    move-exception p1

    invoke-virtual {p2}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->unlock()V

    .line 26
    goto :goto_e9

    :goto_e8
    throw p1

    :goto_e9
    goto :goto_e8
.end method

.method static synthetic j(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Lja/s;Ljava/lang/String;)Ljava/util/HashMap;
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/warren/downloader/AssetDownloader;->Y(Ljava/io/File;Lja/s;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method private j0(JILja/c0;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Z
    .registers 7

    const/16 v0, 0xce

    if-ne p3, v0, :cond_a

    .line 1
    invoke-direct {p0, p4, p1, p2, p5}, Lcom/vungle/warren/downloader/AssetDownloader;->n0(Lja/c0;JLcom/vungle/warren/downloader/DownloadRequestMediator;)Z

    move-result p1

    if-eqz p1, :cond_e

    :cond_a
    const/16 p1, 0x1a0

    if-ne p3, p1, :cond_10

    :cond_e
    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method static synthetic k(Lcom/vungle/warren/downloader/AssetDownloader;Lja/c0;)Lja/d0;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/warren/downloader/AssetDownloader;->K(Lja/c0;)Lja/d0;

    move-result-object p0

    return-object p0
.end method

.method private k0(Lcom/vungle/warren/downloader/DownloadRequestMediator;Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;)Z
    .registers 13

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p1, v0}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->is(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_91

    invoke-direct {p0, p1}, Lcom/vungle/warren/downloader/AssetDownloader;->U(Lcom/vungle/warren/downloader/DownloadRequestMediator;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto/16 :goto_91

    :cond_10
    const/4 v0, 0x2

    .line 2
    iput v0, p2, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->status:I

    .line 3
    invoke-static {p2}, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->copy(Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;)Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;

    move-result-object p2

    .line 4
    invoke-virtual {p1}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->values()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/core/util/d;

    .line 5
    iget-object v6, v5, Landroidx/core/util/d;->a:Ljava/lang/Object;

    check-cast v6, Lcom/vungle/warren/downloader/DownloadRequest;

    if-nez v6, :cond_34

    goto :goto_21

    .line 6
    :cond_34
    iget-boolean v7, v6, Lcom/vungle/warren/downloader/DownloadRequest;->pauseOnConnectionLost:Z

    if-nez v7, :cond_43

    .line 7
    invoke-virtual {p1, v6}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->remove(Lcom/vungle/warren/downloader/DownloadRequest;)Landroidx/core/util/d;

    .line 8
    iget-object v5, v5, Landroidx/core/util/d;->b:Ljava/lang/Object;

    check-cast v5, Lcom/vungle/warren/downloader/AssetDownloadListener;

    invoke-direct {p0, v6, v5, p3}, Lcom/vungle/warren/downloader/AssetDownloader;->M(Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;)V

    goto :goto_21

    .line 9
    :cond_43
    invoke-virtual {p1, v0}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->set(I)V

    .line 10
    sget-object v4, Lcom/vungle/warren/downloader/AssetDownloader;->p:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Pausing download "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v6}, Lcom/vungle/warren/downloader/AssetDownloader;->I(Lcom/vungle/warren/downloader/DownloadRequest;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object v4, v5, Landroidx/core/util/d;->a:Ljava/lang/Object;

    check-cast v4, Lcom/vungle/warren/downloader/DownloadRequest;

    iget-object v5, v5, Landroidx/core/util/d;->b:Ljava/lang/Object;

    check-cast v5, Lcom/vungle/warren/downloader/AssetDownloadListener;

    invoke-direct {p0, p2, v4, v5}, Lcom/vungle/warren/downloader/AssetDownloader;->N(Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;)V

    const/4 v4, 0x1

    goto :goto_21

    :cond_6d
    if-nez v4, :cond_73

    const/4 p2, 0x5

    .line 12
    invoke-virtual {p1, p2}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->set(I)V

    .line 13
    :cond_73
    sget-object p2, Lcom/vungle/warren/downloader/AssetDownloader;->p:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to pause - "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    move-result p1

    if-ne p1, v0, :cond_86

    const/4 v1, 0x1

    :cond_86
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_91
    :goto_91
    return v1
.end method

.method static synthetic l(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/vungle/warren/downloader/AssetDownloader;->h0(Lcom/vungle/warren/downloader/DownloadRequestMediator;Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;)V

    return-void
.end method

.method private declared-synchronized l0(Lcom/vungle/warren/downloader/DownloadRequestMediator;)V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->j:Ljava/util/Map;

    iget-object p1, p1, Lcom/vungle/warren/downloader/DownloadRequestMediator;->key:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 2
    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic m(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/warren/downloader/AssetDownloader;->M(Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;)V

    return-void
.end method

.method private m0()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2
    sget-object v0, Lcom/vungle/warren/downloader/AssetDownloader;->p:Ljava/lang/String;

    const-string v1, "Removing listener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->f:Lcom/vungle/warren/utility/NetworkProvider;

    iget-object v1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->o:Lcom/vungle/warren/utility/NetworkProvider$NetworkListener;

    invoke-virtual {v0, v1}, Lcom/vungle/warren/utility/NetworkProvider;->removeListener(Lcom/vungle/warren/utility/NetworkProvider$NetworkListener;)V

    :cond_16
    return-void
.end method

.method static synthetic n(Lcom/vungle/warren/downloader/AssetDownloader;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->m:I

    return p0
.end method

.method private n0(Lja/c0;JLcom/vungle/warren/downloader/DownloadRequestMediator;)Z
    .registers 9

    .line 1
    new-instance v0, Lcom/vungle/warren/downloader/RangeResponse;

    invoke-virtual {p1}, Lja/c0;->h()Lja/s;

    move-result-object v1

    const-string v2, "Content-Range"

    invoke-virtual {v1, v2}, Lja/s;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vungle/warren/downloader/RangeResponse;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lja/c0;->d()I

    move-result p1

    const/16 v1, 0xce

    if-ne p1, v1, :cond_2f

    iget-object p1, v0, Lcom/vungle/warren/downloader/RangeResponse;->dimension:Ljava/lang/String;

    const-string v1, "bytes"

    .line 3
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2f

    iget-wide v0, v0, Lcom/vungle/warren/downloader/RangeResponse;->rangeStart:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_2f

    cmp-long p1, p2, v0

    if-nez p1, :cond_2f

    const/4 p1, 0x1

    goto :goto_30

    :cond_2f
    const/4 p1, 0x0

    .line 4
    :goto_30
    sget-object p2, Lcom/vungle/warren/downloader/AssetDownloader;->p:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "satisfies partial download: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Lcom/vungle/warren/downloader/AssetDownloader;->J(Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method static synthetic o(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/lang/Throwable;Z)I
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/vungle/warren/downloader/AssetDownloader;->a0(Ljava/lang/Throwable;Z)I

    move-result p0

    return p0
.end method

.method private o0(Ljava/io/File;Ljava/util/HashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/vungle/warren/utility/FileUtility;->writeMap(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic p(Lcom/vungle/warren/downloader/AssetDownloader;J)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/vungle/warren/downloader/AssetDownloader;->p0(J)V

    return-void
.end method

.method private p0(J)V
    .registers 5

    const-wide/16 v0, 0x0

    .line 1
    :try_start_2
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_9} :catch_a

    goto :goto_19

    :catch_a
    move-exception p1

    .line 2
    sget-object p2, Lcom/vungle/warren/downloader/AssetDownloader;->p:Ljava/lang/String;

    const-string v0, "InterruptedException "

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :goto_19
    return-void
.end method

.method static synthetic q(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;)Z
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/warren/downloader/AssetDownloader;->k0(Lcom/vungle/warren/downloader/DownloadRequestMediator;Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;)Z

    move-result p0

    return p0
.end method

.method private q0(Lcom/vungle/warren/downloader/DownloadRequestMediator;Ljava/io/File;Ljava/util/Map;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/warren/downloader/DownloadRequestMediator;",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->a:Lcom/vungle/warren/downloader/DownloaderCache;

    if-eqz v0, :cond_34

    iget-boolean p1, p1, Lcom/vungle/warren/downloader/DownloadRequestMediator;->isCacheable:Z

    if-eqz p1, :cond_34

    const/16 p1, 0xc8

    if-eq p4, p1, :cond_34

    const/16 p1, 0x1a0

    if-eq p4, p1, :cond_34

    const/16 p1, 0xce

    if-eq p4, p1, :cond_34

    const-string p1, "DOWNLOAD_COMPLETE"

    .line 2
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_34

    .line 3
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_34

    .line 4
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    if-lez v0, :cond_34

    const/4 p1, 0x1

    goto :goto_35

    :cond_34
    const/4 p1, 0x0

    :goto_35
    return p1
.end method

.method static synthetic r(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/vungle/warren/downloader/AssetDownloader;->i0(Ljava/io/File;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    return-void
.end method

.method private r0(Lcom/vungle/warren/downloader/DownloadRequestMediator;Ljava/io/File;Ljava/util/Map;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/warren/downloader/DownloadRequestMediator;",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_45

    .line 1
    iget-object v1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->a:Lcom/vungle/warren/downloader/DownloaderCache;

    if-eqz v1, :cond_45

    iget-boolean p1, p1, Lcom/vungle/warren/downloader/DownloadRequestMediator;->isCacheable:Z

    if-nez p1, :cond_c

    goto :goto_45

    :cond_c
    const-string p1, "Last-Cache-Verification"

    .line 2
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_45

    .line 3
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_45

    const-string p2, "DOWNLOAD_COMPLETE"

    .line 4
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2b

    goto :goto_45

    .line 5
    :cond_2b
    :try_start_2b
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_2b .. :try_end_2f} :catch_45

    .line 6
    iget-wide v1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->b:J

    const-wide v3, 0x7fffffffffffffffL

    sub-long/2addr v3, p1

    cmp-long p3, v1, v3

    if-gez p3, :cond_44

    add-long/2addr p1, v1

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    cmp-long p3, p1, v1

    if-ltz p3, :cond_45

    :cond_44
    const/4 v0, 0x1

    :catch_45
    :cond_45
    :goto_45
    return v0
.end method

.method static synthetic s(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/vungle/warren/downloader/AssetDownloader;->f0(Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    return-void
.end method

.method static synthetic t(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/warren/downloader/AssetDownloader;->e0(Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    return-void
.end method

.method static synthetic u(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/warren/downloader/AssetDownloader;->l0(Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    return-void
.end method

.method static synthetic v(Lcom/vungle/warren/downloader/AssetDownloader;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/vungle/warren/downloader/AssetDownloader;->m0()V

    return-void
.end method

.method static synthetic w(Lcom/vungle/warren/downloader/AssetDownloader;I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/warren/downloader/AssetDownloader;->g0(I)V

    return-void
.end method

.method static synthetic x(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->a:Lcom/vungle/warren/downloader/DownloaderCache;

    return-object p0
.end method

.method static synthetic y(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/warren/downloader/AssetDownloader;->J(Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic z(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Z
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/warren/downloader/AssetDownloader;->U(Lcom/vungle/warren/downloader/DownloadRequestMediator;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public declared-synchronized cancel(Lcom/vungle/warren/downloader/DownloadRequest;)V
    .registers 2

    monitor-enter p0

    if-nez p1, :cond_5

    .line 1
    monitor-exit p0

    return-void

    .line 2
    :cond_5
    :try_start_5
    invoke-direct {p0, p1}, Lcom/vungle/warren/downloader/AssetDownloader;->d0(Lcom/vungle/warren/downloader/DownloadRequest;)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_a

    .line 3
    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized cancelAll()V
    .registers 6

    monitor-enter p0

    .line 1
    :try_start_1
    sget-object v0, Lcom/vungle/warren/downloader/AssetDownloader;->p:Ljava/lang/String;

    const-string v1, "Cancelling all"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/downloader/DownloadRequest;

    .line 3
    sget-object v2, Lcom/vungle/warren/downloader/AssetDownloader;->p:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cancel in transtiotion "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/vungle/warren/downloader/DownloadRequest;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p0, v1}, Lcom/vungle/warren/downloader/AssetDownloader;->cancel(Lcom/vungle/warren/downloader/DownloadRequest;)V

    goto :goto_e

    .line 5
    :cond_36
    sget-object v0, Lcom/vungle/warren/downloader/AssetDownloader;->p:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cancel in mediator "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/downloader/AssetDownloader;->j:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_60
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_88

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/downloader/DownloadRequestMediator;

    .line 7
    sget-object v2, Lcom/vungle/warren/downloader/AssetDownloader;->p:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cancel in mediator "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/vungle/warren/downloader/DownloadRequestMediator;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-direct {p0, v1}, Lcom/vungle/warren/downloader/AssetDownloader;->e0(Lcom/vungle/warren/downloader/DownloadRequestMediator;)V
    :try_end_87
    .catchall {:try_start_1 .. :try_end_87} :catchall_8a

    goto :goto_60

    .line 9
    :cond_88
    monitor-exit p0

    return-void

    :catchall_8a
    move-exception v0

    monitor-exit p0

    goto :goto_8e

    :goto_8d
    throw v0

    :goto_8e
    goto :goto_8d
.end method

.method public cancelAndAwait(Lcom/vungle/warren/downloader/DownloadRequest;J)Z
    .registers 9

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1
    :cond_4
    invoke-virtual {p0, p1}, Lcom/vungle/warren/downloader/AssetDownloader;->cancel(Lcom/vungle/warren/downloader/DownloadRequest;)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    add-long/2addr v1, p2

    .line 3
    :goto_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    cmp-long v3, p2, v1

    if-gez v3, :cond_40

    .line 4
    invoke-direct {p0, p1}, Lcom/vungle/warren/downloader/AssetDownloader;->Q(Lcom/vungle/warren/downloader/DownloadRequest;)Lcom/vungle/warren/downloader/DownloadRequestMediator;

    move-result-object p2

    .line 5
    monitor-enter p0

    .line 6
    :try_start_1f
    iget-object p3, p0, Lcom/vungle/warren/downloader/AssetDownloader;->k:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_36

    if-eqz p2, :cond_33

    .line 7
    invoke-virtual {p2}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->requests()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_36

    :cond_33
    const/4 p1, 0x1

    .line 8
    monitor-exit p0

    return p1

    .line 9
    :cond_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_1f .. :try_end_37} :catchall_3d

    const-wide/16 p2, 0xa

    .line 10
    invoke-direct {p0, p2, p3}, Lcom/vungle/warren/downloader/AssetDownloader;->p0(J)V

    goto :goto_12

    :catchall_3d
    move-exception p1

    .line 11
    :try_start_3e
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw p1

    :cond_40
    return v0
.end method

.method public declared-synchronized clearCache()V
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->a:Lcom/vungle/warren/downloader/DownloaderCache;

    if-eqz v0, :cond_8

    .line 2
    invoke-interface {v0}, Lcom/vungle/warren/downloader/DownloaderCache;->clear()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 3
    :cond_8
    monitor-exit p0

    return-void

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized download(Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;)V
    .registers 11

    monitor-enter p0

    const/4 v0, 0x1

    if-nez p1, :cond_20

    :try_start_4
    const-string p1, "AssetDownloader#download; loadAd sequence"

    const-string v1, "downloadRequest is null"

    .line 1
    invoke-static {p1, v1}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1e

    const/4 p1, 0x0

    .line 2
    new-instance v1, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    const/4 v2, -0x1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "DownloadRequest is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3, v0}, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V

    invoke-direct {p0, p1, p2, v1}, Lcom/vungle/warren/downloader/AssetDownloader;->M(Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;)V
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_56

    .line 3
    :cond_1e
    monitor-exit p0

    return-void

    .line 4
    :cond_20
    :try_start_20
    sget-object v1, Lcom/vungle/warren/downloader/AssetDownloader;->p:Ljava/lang/String;

    const-string v2, "ttDownloadContext"

    const-string v3, "Waiting for download asset %1$s, at: %2$d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-static {v0, v1, v2, v3}, Lcom/vungle/warren/VungleLogger;->verbose(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/vungle/warren/downloader/AssetDownloader$1;

    new-instance v2, Lcom/vungle/warren/downloader/AssetPriority;

    const v3, -0x7fffffff

    invoke-direct {v2, v3, v5}, Lcom/vungle/warren/downloader/AssetPriority;-><init>(II)V

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/vungle/warren/downloader/AssetDownloader$1;-><init>(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/AssetPriority;Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_54
    .catchall {:try_start_20 .. :try_end_54} :catchall_56

    .line 9
    monitor-exit p0

    return-void

    :catchall_56
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public dropCache(Ljava/lang/String;)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->a:Lcom/vungle/warren/downloader/DownloaderCache;

    const/4 v1, 0x0

    if-eqz v0, :cond_44

    if-eqz p1, :cond_44

    .line 2
    :try_start_7
    invoke-interface {v0, p1}, Lcom/vungle/warren/downloader/DownloaderCache;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 3
    sget-object v0, Lcom/vungle/warren/downloader/AssetDownloader;->p:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broken asset, deleting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->a:Lcom/vungle/warren/downloader/DownloaderCache;

    invoke-interface {v0, p1}, Lcom/vungle/warren/downloader/DownloaderCache;->deleteAndRemove(Ljava/io/File;)Z

    move-result p1
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_2b} :catch_2c

    return p1

    :catch_2c
    move-exception p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string v2, "Error %1$s occured"

    .line 5
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "AssetDownloader#dropCache; loadAd sequence"

    .line 6
    invoke-static {v2, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    sget-object v0, Lcom/vungle/warren/downloader/AssetDownloader;->p:Ljava/lang/String;

    const-string v2, "There was an error to get file"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_44
    return v1
.end method

.method public declared-synchronized getAllRequests()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/vungle/warren/downloader/DownloadRequest;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/vungle/warren/downloader/AssetDownloader;->j:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/downloader/DownloadRequestMediator;

    .line 4
    invoke-virtual {v2}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->requests()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_15

    .line 5
    :cond_29
    iget-object v1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_30

    .line 6
    monitor-exit p0

    return-object v0

    :catchall_30
    move-exception v0

    monitor-exit p0

    goto :goto_34

    :goto_33
    throw v0

    :goto_34
    goto :goto_33
.end method

.method public declared-synchronized init()V
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->a:Lcom/vungle/warren/downloader/DownloaderCache;

    if-eqz v0, :cond_8

    .line 2
    invoke-interface {v0}, Lcom/vungle/warren/downloader/DownloaderCache;->init()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 3
    :cond_8
    monitor-exit p0

    return-void

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isCacheEnabled()Z
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->a:Lcom/vungle/warren/downloader/DownloaderCache;

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/vungle/warren/downloader/AssetDownloader;->n:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_e

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    monitor-exit p0

    return v0

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCacheEnabled(Z)V
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iput-boolean p1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->n:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 2
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setProgressStep(I)V
    .registers 2

    if-eqz p1, :cond_4

    .line 1
    iput p1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->m:I

    :cond_4
    return-void
.end method

.method public updatePriority(Lcom/vungle/warren/downloader/DownloadRequest;)V
    .registers 6

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/warren/downloader/AssetDownloader;->Q(Lcom/vungle/warren/downloader/DownloadRequest;)Lcom/vungle/warren/downloader/DownloadRequestMediator;

    move-result-object p1

    if-eqz p1, :cond_33

    .line 2
    invoke-virtual {p1}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->getRunnable()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 3
    iget-object v1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 4
    sget-object v1, Lcom/vungle/warren/downloader/AssetDownloader;->p:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prio: updated to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->getPriority()Lcom/vungle/warren/downloader/AssetPriority;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object p1, p0, Lcom/vungle/warren/downloader/AssetDownloader;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_33
    return-void
.end method

###### Class com.vungle.warren.downloader.AssetDownloader.AnonymousClass1 (com.vungle.warren.downloader.AssetDownloader$1)
.class Lcom/vungle/warren/downloader/AssetDownloader$1;
.super Lcom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;
.source "AssetDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/downloader/AssetDownloader;->download(Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic s:Lcom/vungle/warren/downloader/DownloadRequest;

.field final synthetic t:Lcom/vungle/warren/downloader/AssetDownloadListener;

.field final synthetic u:Lcom/vungle/warren/downloader/AssetDownloader;


# direct methods
.method constructor <init>(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/AssetPriority;Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/downloader/AssetDownloader$1;->u:Lcom/vungle/warren/downloader/AssetDownloader;

    iput-object p3, p0, Lcom/vungle/warren/downloader/AssetDownloader$1;->s:Lcom/vungle/warren/downloader/DownloadRequest;

    iput-object p4, p0, Lcom/vungle/warren/downloader/AssetDownloader$1;->t:Lcom/vungle/warren/downloader/AssetDownloadListener;

    invoke-direct {p0, p2}, Lcom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;-><init>(Lcom/vungle/warren/downloader/AssetPriority;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 1
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/vungle/warren/downloader/AssetDownloader$1;->s:Lcom/vungle/warren/downloader/DownloadRequest;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "Start to download asset %1$s, at: %2$d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ttDownloadContext"

    .line 3
    invoke-static {v3, v0, v2, v1}, Lcom/vungle/warren/VungleLogger;->verbose(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :try_start_22
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader$1;->u:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v1, p0, Lcom/vungle/warren/downloader/AssetDownloader$1;->s:Lcom/vungle/warren/downloader/DownloadRequest;

    iget-object v2, p0, Lcom/vungle/warren/downloader/AssetDownloader$1;->t:Lcom/vungle/warren/downloader/AssetDownloadListener;

    invoke-static {v0, v1, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->b(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2b} :catch_2c

    goto :goto_5b

    :catch_2c
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot launch request due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AssetDownloader#download; loadAd sequence"

    invoke-static {v2, v1}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error on launching request"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7
    iget-object v1, p0, Lcom/vungle/warren/downloader/AssetDownloader$1;->u:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v2, p0, Lcom/vungle/warren/downloader/AssetDownloader$1;->s:Lcom/vungle/warren/downloader/DownloadRequest;

    iget-object v4, p0, Lcom/vungle/warren/downloader/AssetDownloader$1;->t:Lcom/vungle/warren/downloader/AssetDownloadListener;

    new-instance v5, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    const/4 v6, -0x1

    invoke-direct {v5, v6, v0, v3}, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V

    invoke-static {v1, v2, v4, v5}, Lcom/vungle/warren/downloader/AssetDownloader;->m(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;)V

    :goto_5b
    return-void
.end method

###### Class com.vungle.warren.downloader.AssetDownloader.AnonymousClass2 (com.vungle.warren.downloader.AssetDownloader$2)
.class Lcom/vungle/warren/downloader/AssetDownloader$2;
.super Lcom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;
.source "AssetDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/downloader/AssetDownloader;->X(Lcom/vungle/warren/downloader/DownloadRequestMediator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

.field final synthetic t:Lcom/vungle/warren/downloader/AssetDownloader;


# direct methods
.method constructor <init>(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iput-object p3, p0, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-direct {p0, p2}, Lcom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;-><init>(Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 31

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->setRunnable(Ljava/lang/Runnable;)V

    .line 2
    new-instance v3, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;

    invoke-direct {v3}, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;-><init>()V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->timestampDownloadStart:J

    .line 4
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    iget-object v4, v0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->url:Ljava/lang/String;

    .line 5
    iget-object v5, v0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->filePath:Ljava/lang/String;

    .line 6
    iget-object v0, v0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->metaPath:Ljava/lang/String;

    .line 7
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->x(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    if-eqz v0, :cond_3c

    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    iget-boolean v0, v0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->isCacheable:Z

    if-eqz v0, :cond_3c

    .line 10
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->x(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    invoke-interface {v0, v12}, Lcom/vungle/warren/downloader/DownloaderCache;->startTracking(Ljava/io/File;)V

    :cond_3c
    move-object v14, v2

    const/4 v0, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x0

    :goto_40
    if-nez v0, :cond_e0a

    .line 11
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start load: url: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x5

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v6, 0x4

    const/4 v13, 0x1

    .line 12
    :try_start_5f
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v0, v13}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->is(I)Z

    move-result v0
    :try_end_65
    .catchall {:try_start_5f .. :try_end_65} :catchall_99c

    if-nez v0, :cond_161

    .line 13
    :try_start_67
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Abort download, wrong state "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    .line 14
    invoke-static {v13, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->y(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_87
    .catchall {:try_start_67 .. :try_end_87} :catchall_14a

    .line 16
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request is done "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v3, v4}, Lcom/vungle/warren/downloader/AssetDownloader;->y(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v0}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    move-result v0

    if-eq v0, v7, :cond_d6

    if-eq v0, v8, :cond_cf

    if-eq v0, v6, :cond_c7

    if-eq v0, v9, :cond_bf

    if-nez v15, :cond_d6

    .line 18
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->u(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_d6

    .line 19
    :cond_bf
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v14, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->s(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_d6

    .line 20
    :cond_c7
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v12, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->r(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_d6

    .line 21
    :cond_cf
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->t(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    .line 22
    :cond_d6
    :goto_d6
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Done with request in state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v3}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    .line 23
    invoke-static {v3, v4}, Lcom/vungle/warren/downloader/AssetDownloader;->y(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    monitor-enter v2

    .line 26
    :try_start_107
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->v(Lcom/vungle/warren/downloader/AssetDownloader;)V

    .line 27
    monitor-exit v2
    :try_end_10d
    .catchall {:try_start_107 .. :try_end_10d} :catchall_147

    const/4 v2, 0x0

    .line 28
    invoke-static {v2}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 29
    invoke-static {v2}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 30
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->x(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    if-eqz v0, :cond_146

    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    iget-boolean v0, v0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->isCacheable:Z

    if-eqz v0, :cond_146

    .line 31
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->x(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    invoke-interface {v0, v12}, Lcom/vungle/warren/downloader/DownloaderCache;->stopTracking(Ljava/io/File;)V

    .line 32
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-virtual {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->isCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_13d

    .line 33
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->x(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    invoke-interface {v0}, Lcom/vungle/warren/downloader/DownloaderCache;->clear()V

    goto :goto_146

    .line 34
    :cond_13d
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->x(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    invoke-interface {v0}, Lcom/vungle/warren/downloader/DownloaderCache;->purge()Ljava/util/List;

    :cond_146
    :goto_146
    return-void

    :catchall_147
    move-exception v0

    .line 35
    :try_start_148
    monitor-exit v2
    :try_end_149
    .catchall {:try_start_148 .. :try_end_149} :catchall_147

    throw v0

    :catchall_14a
    move-exception v0

    move-object v6, v0

    move-object v13, v3

    move-object/from16 v23, v4

    move v0, v11

    move-object v7, v14

    move/from16 v21, v15

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v25, 0x0

    :goto_15d
    move-object v11, v5

    :goto_15e
    const/4 v5, 0x5

    goto/16 :goto_9b3

    .line 36
    :cond_161
    :try_start_161
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->z(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Z

    move-result v0

    if-eqz v0, :cond_952

    .line 37
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->setConnected(Z)V

    .line 38
    invoke-virtual {v12}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0
    :try_end_175
    .catchall {:try_start_161 .. :try_end_175} :catchall_98b

    if-eqz v0, :cond_188

    :try_start_177
    invoke-virtual {v12}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_188

    .line 39
    invoke-virtual {v12}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_188
    .catchall {:try_start_177 .. :try_end_188} :catchall_14a

    .line 40
    :cond_188
    :try_start_188
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_18c
    .catchall {:try_start_188 .. :try_end_18c} :catchall_98b

    const-wide/16 v18, 0x0

    if-eqz v0, :cond_197

    :try_start_190
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v20
    :try_end_194
    .catchall {:try_start_190 .. :try_end_194} :catchall_14a

    move-wide/from16 v9, v20

    goto :goto_199

    :cond_197
    move-wide/from16 v9, v18

    .line 41
    :goto_199
    :try_start_199
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "already downloaded : "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", file exists = "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v8, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    .line 43
    invoke-static {v2, v8}, Lcom/vungle/warren/downloader/AssetDownloader;->y(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0, v5}, Lcom/vungle/warren/downloader/AssetDownloader;->A(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;)Ljava/util/HashMap;

    move-result-object v0

    .line 46
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v8, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v2, v8, v12, v0}, Lcom/vungle/warren/downloader/AssetDownloader;->B(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;Ljava/io/File;Ljava/util/Map;)Z

    move-result v2
    :try_end_1d6
    .catchall {:try_start_199 .. :try_end_1d6} :catchall_98b

    if-eqz v2, :cond_2ab

    .line 47
    :try_start_1d8
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v0, v6}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->set(I)V

    .line 48
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Using cache without verification, dispatch existing file"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e6
    .catchall {:try_start_1d8 .. :try_end_1e6} :catchall_14a

    .line 49
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request is done "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v3, v4}, Lcom/vungle/warren/downloader/AssetDownloader;->y(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v0}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    move-result v0

    if-eq v0, v7, :cond_237

    const/4 v2, 0x3

    if-eq v0, v2, :cond_230

    if-eq v0, v6, :cond_228

    const/4 v13, 0x5

    if-eq v0, v13, :cond_220

    if-nez v15, :cond_237

    .line 51
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->u(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_237

    .line 52
    :cond_220
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v14, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->s(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_237

    .line 53
    :cond_228
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v12, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->r(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_237

    .line 54
    :cond_230
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->t(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    .line 55
    :cond_237
    :goto_237
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Done with request in state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v3}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    .line 56
    invoke-static {v3, v4}, Lcom/vungle/warren/downloader/AssetDownloader;->y(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v8, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    monitor-enter v8

    .line 59
    :try_start_268
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->v(Lcom/vungle/warren/downloader/AssetDownloader;)V

    .line 60
    monitor-exit v8
    :try_end_26e
    .catchall {:try_start_268 .. :try_end_26e} :catchall_2a8

    const/4 v2, 0x0

    .line 61
    invoke-static {v2}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 62
    invoke-static {v2}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 63
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->x(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    if-eqz v0, :cond_2a7

    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    iget-boolean v0, v0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->isCacheable:Z

    if-eqz v0, :cond_2a7

    .line 64
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->x(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    invoke-interface {v0, v12}, Lcom/vungle/warren/downloader/DownloaderCache;->stopTracking(Ljava/io/File;)V

    .line 65
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-virtual {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->isCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_29e

    .line 66
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->x(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    invoke-interface {v0}, Lcom/vungle/warren/downloader/DownloaderCache;->clear()V

    goto :goto_2a7

    .line 67
    :cond_29e
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->x(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    invoke-interface {v0}, Lcom/vungle/warren/downloader/DownloaderCache;->purge()Ljava/util/List;

    :cond_2a7
    :goto_2a7
    return-void

    :catchall_2a8
    move-exception v0

    .line 68
    :try_start_2a9
    monitor-exit v8
    :try_end_2aa
    .catchall {:try_start_2a9 .. :try_end_2aa} :catchall_2a8

    throw v0

    :cond_2ab
    const/4 v2, 0x3

    const/4 v13, 0x5

    .line 69
    :try_start_2ad
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->a()Ljava/lang/String;

    move-result-object v8

    const-string v2, "ttDownloadContext"

    const-string v6, "Send network request: %1$s, at: %2$d"

    new-array v13, v7, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v4, v13, v16

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    const/4 v7, 0x1

    aput-object v23, v13, v7

    invoke-static {v6, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 71
    invoke-static {v7, v8, v2, v6}, Lcom/vungle/warren/VungleLogger;->verbose(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    new-instance v2, Lja/a0$a;

    invoke-direct {v2}, Lja/a0$a;-><init>()V

    invoke-virtual {v2, v4}, Lja/a0$a;->j(Ljava/lang/String;)Lja/a0$a;

    move-result-object v2

    .line 73
    iget-object v6, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;
    :try_end_2d8
    .catchall {:try_start_2ad .. :try_end_2d8} :catchall_98b

    const/4 v13, 0x4

    move-wide v7, v9

    move-wide/from16 v20, v9

    const/4 v10, 0x5

    move-object v9, v12

    move-object v10, v0

    move v13, v11

    move-object v11, v2

    :try_start_2e1
    invoke-static/range {v6 .. v11}, Lcom/vungle/warren/downloader/AssetDownloader;->C(Lcom/vungle/warren/downloader/AssetDownloader;JLjava/io/File;Ljava/util/HashMap;Lja/a0$a;)V

    .line 74
    iget-object v6, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v6}, Lcom/vungle/warren/downloader/AssetDownloader;->D(Lcom/vungle/warren/downloader/AssetDownloader;)Lja/x;

    move-result-object v6

    invoke-virtual {v2}, Lja/a0$a;->b()Lja/a0;

    move-result-object v2

    invoke-virtual {v6, v2}, Lja/x;->a(Lja/a0;)Lja/e;

    move-result-object v2
    :try_end_2f2
    .catchall {:try_start_2e1 .. :try_end_2f2} :catchall_943

    .line 75
    :try_start_2f2
    invoke-interface {v2}, Lja/e;->execute()Lja/c0;

    move-result-object v6
    :try_end_2f6
    .catchall {:try_start_2f2 .. :try_end_2f6} :catchall_92c

    .line 76
    :try_start_2f6
    iget-object v7, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v7, v6}, Lcom/vungle/warren/downloader/AssetDownloader;->c(Lcom/vungle/warren/downloader/AssetDownloader;Lja/c0;)J

    move-result-wide v7

    .line 77
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->a()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Response code: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lja/c0;->d()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {v6}, Lja/c0;->d()I

    move-result v10
    :try_end_326
    .catchall {:try_start_2f6 .. :try_end_326} :catchall_912

    .line 79
    :try_start_326
    iget-object v9, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v11, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v9, v12, v6, v11, v0}, Lcom/vungle/warren/downloader/AssetDownloader;->d(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Lja/c0;Lcom/vungle/warren/downloader/DownloadRequestMediator;Ljava/util/HashMap;)Z

    move-result v9
    :try_end_32e
    .catchall {:try_start_326 .. :try_end_32e} :catchall_8fc

    if-nez v9, :cond_7ce

    :try_start_330
    iget-object v9, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v11, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    .line 80
    invoke-static {v9, v11, v12, v0, v10}, Lcom/vungle/warren/downloader/AssetDownloader;->e(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;Ljava/io/File;Ljava/util/Map;I)Z

    move-result v9

    if-eqz v9, :cond_33c

    goto/16 :goto_7ce

    .line 81
    :cond_33c
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v9, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    move-object/from16 v22, v0

    move-wide/from16 v23, v20

    move/from16 v25, v10

    move-object/from16 v26, v6

    move-object/from16 v27, v9

    invoke-static/range {v22 .. v27}, Lcom/vungle/warren/downloader/AssetDownloader;->g(Lcom/vungle/warren/downloader/AssetDownloader;JILja/c0;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Z

    move-result v0
    :try_end_34e
    .catchall {:try_start_330 .. :try_end_34e} :catchall_7b7

    if-eqz v0, :cond_3ed

    add-int/lit8 v11, v13, 0x1

    .line 82
    :try_start_352
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget v7, v0, Lcom/vungle/warren/downloader/AssetDownloader;->d:I

    if-ge v13, v7, :cond_3c2

    const/4 v7, 0x0

    .line 83
    invoke-static {v0, v12, v5, v7}, Lcom/vungle/warren/downloader/AssetDownloader;->h(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Ljava/io/File;Z)V
    :try_end_35c
    .catchall {:try_start_352 .. :try_end_35c} :catchall_3d9

    .line 84
    invoke-virtual {v6}, Lja/c0;->b()Lja/d0;

    move-result-object v0

    if-eqz v0, :cond_369

    .line 85
    invoke-virtual {v6}, Lja/c0;->b()Lja/d0;

    move-result-object v0

    invoke-virtual {v0}, Lja/d0;->close()V

    .line 86
    :cond_369
    invoke-interface {v2}, Lja/e;->cancel()V

    .line 87
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "request is done "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v7, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v6, v7}, Lcom/vungle/warren/downloader/AssetDownloader;->y(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not removing connections and listener "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v7, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    .line 89
    invoke-static {v6, v7}, Lcom/vungle/warren/downloader/AssetDownloader;->y(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 90
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v7, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    monitor-enter v7

    .line 92
    :try_start_3af
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->v(Lcom/vungle/warren/downloader/AssetDownloader;)V

    .line 93
    monitor-exit v7
    :try_end_3b5
    .catchall {:try_start_3af .. :try_end_3b5} :catchall_3bf

    const/4 v2, 0x0

    .line 94
    invoke-static {v2}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 95
    invoke-static {v2}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    goto/16 :goto_cff

    :catchall_3bf
    move-exception v0

    .line 96
    :try_start_3c0
    monitor-exit v7
    :try_end_3c1
    .catchall {:try_start_3c0 .. :try_end_3c1} :catchall_3bf

    throw v0

    .line 97
    :cond_3c2
    :try_start_3c2
    new-instance v0, Lcom/vungle/warren/downloader/Downloader$RequestException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Code: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/vungle/warren/downloader/Downloader$RequestException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3d9
    .catchall {:try_start_3c2 .. :try_end_3d9} :catchall_3d9

    :catchall_3d9
    move-exception v0

    move-object/from16 v25, v2

    move-object v13, v3

    move-object/from16 v23, v4

    move-object v2, v6

    move-object v7, v14

    move/from16 v21, v15

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v9, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    move-object v6, v0

    move v0, v11

    goto/16 :goto_15d

    .line 98
    :cond_3ed
    :try_start_3ed
    invoke-virtual {v6}, Lja/c0;->i()Z

    move-result v0
    :try_end_3f1
    .catchall {:try_start_3ed .. :try_end_3f1} :catchall_7b7

    if-eqz v0, :cond_78a

    const/16 v0, 0xce

    if-eq v10, v0, :cond_417

    .line 99
    :try_start_3f7
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    const/4 v9, 0x0

    invoke-static {v0, v12, v5, v9}, Lcom/vungle/warren/downloader/AssetDownloader;->h(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Ljava/io/File;Z)V
    :try_end_3fd
    .catchall {:try_start_3f7 .. :try_end_3fd} :catchall_401

    move v11, v10

    move-wide/from16 v9, v18

    goto :goto_41a

    :catchall_401
    move-exception v0

    move-object/from16 v25, v2

    move-object/from16 v23, v4

    move-object v11, v5

    move-object v2, v6

    move-object v7, v14

    move/from16 v21, v15

    const/4 v4, 0x3

    const/4 v5, 0x5

    const/4 v9, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    move-object v6, v0

    move v0, v13

    move-object v13, v3

    const/4 v3, 0x2

    goto/16 :goto_9b3

    :cond_417
    move v11, v10

    move-wide/from16 v9, v20

    .line 100
    :goto_41a
    :try_start_41a
    invoke-static {v5}, Lcom/vungle/warren/utility/FileUtility;->deleteAndLogIfFailed(Ljava/io/File;)V

    .line 101
    invoke-virtual {v6}, Lja/c0;->h()Lja/s;

    move-result-object v0
    :try_end_421
    .catchall {:try_start_41a .. :try_end_421} :catchall_775

    move/from16 v20, v13

    .line 102
    :try_start_423
    iget-object v13, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v13, v12, v5, v0}, Lcom/vungle/warren/downloader/AssetDownloader;->i(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Ljava/io/File;Lja/s;)V

    .line 103
    iget-object v13, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v13, v5, v0, v4}, Lcom/vungle/warren/downloader/AssetDownloader;->j(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Lja/s;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 104
    invoke-static {v6}, Lna/e;->c(Lja/c0;)Z

    move-result v13

    if-eqz v13, :cond_73d

    .line 105
    iget-object v13, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v13}, Lcom/vungle/warren/downloader/AssetDownloader;->x(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v13
    :try_end_43a
    .catchall {:try_start_423 .. :try_end_43a} :catchall_766

    if-eqz v13, :cond_470

    .line 106
    :try_start_43c
    iget-object v13, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v13}, Lcom/vungle/warren/downloader/AssetDownloader;->x(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v13
    :try_end_442
    .catchall {:try_start_43c .. :try_end_442} :catchall_459

    move-object/from16 v22, v14

    move/from16 v21, v15

    :try_start_446
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-interface {v13, v12, v14, v15}, Lcom/vungle/warren/downloader/DownloaderCache;->setCacheLastUpdateTimestamp(Ljava/io/File;J)V
    :try_end_44d
    .catchall {:try_start_446 .. :try_end_44d} :catchall_44e

    goto :goto_474

    :catchall_44e
    move-exception v0

    move-object/from16 v25, v2

    move-object v13, v3

    move-object/from16 v23, v4

    move-object v2, v6

    move v10, v11

    move-object/from16 v7, v22

    goto :goto_464

    :catchall_459
    move-exception v0

    move/from16 v21, v15

    move-object/from16 v25, v2

    move-object v13, v3

    move-object/from16 v23, v4

    move-object v2, v6

    move v10, v11

    move-object v7, v14

    :goto_464
    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v9, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    move-object v6, v0

    move-object v11, v5

    move/from16 v0, v20

    goto/16 :goto_15e

    :cond_470
    move-object/from16 v22, v14

    move/from16 v21, v15

    .line 107
    :goto_474
    :try_start_474
    iget-object v13, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v13, v6}, Lcom/vungle/warren/downloader/AssetDownloader;->k(Lcom/vungle/warren/downloader/AssetDownloader;Lja/c0;)Lja/d0;

    move-result-object v13

    .line 108
    invoke-virtual {v13}, Lja/d0;->source()Lokio/e;

    move-result-object v14
    :try_end_47e
    .catchall {:try_start_474 .. :try_end_47e} :catchall_732

    .line 109
    :try_start_47e
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->a()Ljava/lang/String;

    move-result-object v15
    :try_end_482
    .catchall {:try_start_47e .. :try_end_482} :catchall_71e

    move-object/from16 v23, v4

    :try_start_484
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_489
    .catchall {:try_start_484 .. :try_end_489} :catchall_719

    move/from16 v24, v11

    :try_start_48b
    const-string v11, "Start download from bytes: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;
    :try_end_495
    .catchall {:try_start_48b .. :try_end_495} :catchall_70f

    move-object/from16 v25, v2

    :try_start_497
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    .line 110
    invoke-static {v11, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->y(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 111
    invoke-static {v15, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-long/2addr v7, v9

    .line 112
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "final offset = "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c0
    .catchall {:try_start_497 .. :try_end_4c0} :catchall_70d

    cmp-long v2, v9, v18

    if-nez v2, :cond_4d6

    .line 113
    :try_start_4c4
    invoke-static {v12}, Lokio/n;->e(Ljava/io/File;)Lokio/t;

    move-result-object v2
    :try_end_4c8
    .catchall {:try_start_4c4 .. :try_end_4c8} :catchall_4c9

    goto :goto_4da

    :catchall_4c9
    move-exception v0

    move-object v13, v3

    move-object v11, v5

    move-object v2, v6

    move-object/from16 v7, v22

    move/from16 v10, v24

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x5

    goto/16 :goto_72f

    :cond_4d6
    :try_start_4d6
    invoke-static {v12}, Lokio/n;->a(Ljava/io/File;)Lokio/t;

    move-result-object v2

    :goto_4da
    invoke-static {v2}, Lokio/n;->b(Lokio/t;)Lokio/d;

    move-result-object v2
    :try_end_4de
    .catchall {:try_start_4d6 .. :try_end_4de} :catchall_70d

    const/4 v4, 0x0

    .line 114
    :try_start_4df
    iput v4, v3, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->status:I
    :try_end_4e1
    .catchall {:try_start_4df .. :try_end_4e1} :catchall_6fd

    move-object v11, v5

    .line 115
    :try_start_4e2
    invoke-virtual {v13}, Lja/d0;->contentLength()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->sizeBytes:J

    .line 116
    iput-wide v9, v3, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->startBytes:J

    .line 117
    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v4, v5, v3}, Lcom/vungle/warren/downloader/AssetDownloader;->l(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;)V

    move-wide/from16 v26, v18

    const/4 v4, 0x0

    .line 118
    :goto_4f4
    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    const/4 v13, 0x1

    invoke-virtual {v5, v13}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->is(I)Z

    move-result v5
    :try_end_4fb
    .catchall {:try_start_4e2 .. :try_end_4fb} :catchall_6fa

    if-eqz v5, :cond_5af

    .line 119
    :try_start_4fd
    invoke-interface {v2}, Lokio/d;->B()Lokio/c;

    move-result-object v5
    :try_end_501
    .catchall {:try_start_4fd .. :try_end_501} :catchall_5a1

    move-object v13, v3

    move v15, v4

    const-wide/16 v3, 0x800

    :try_start_505
    invoke-interface {v14, v5, v3, v4}, Lokio/u;->read(Lokio/c;J)J

    move-result-wide v3

    const-wide/16 v28, -0x1

    cmp-long v5, v3, v28

    if-eqz v5, :cond_5b0

    .line 120
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_586

    .line 121
    invoke-interface {v2}, Lokio/d;->q0()Lokio/d;

    add-long v26, v26, v3

    add-long v3, v9, v26

    const-wide/16 v28, 0x64

    cmp-long v5, v7, v18

    if-lez v5, :cond_527

    mul-long v3, v3, v28

    .line 122
    div-long/2addr v3, v7

    long-to-int v4, v3

    goto :goto_528

    :cond_527
    move v4, v15

    .line 123
    :goto_528
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v3}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_565

    .line 124
    :goto_530
    iget v3, v13, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->progressPercent:I

    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v5}, Lcom/vungle/warren/downloader/AssetDownloader;->n(Lcom/vungle/warren/downloader/AssetDownloader;)I

    move-result v5

    add-int/2addr v3, v5

    if-gt v3, v4, :cond_561

    iget v3, v13, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->progressPercent:I

    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    .line 125
    invoke-static {v5}, Lcom/vungle/warren/downloader/AssetDownloader;->n(Lcom/vungle/warren/downloader/AssetDownloader;)I

    move-result v5

    add-int/2addr v3, v5

    move v5, v4

    int-to-long v3, v3

    cmp-long v15, v3, v28

    if-gtz v15, :cond_562

    const/4 v3, 0x1

    .line 126
    iput v3, v13, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->status:I

    .line 127
    iget v3, v13, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->progressPercent:I

    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v4}, Lcom/vungle/warren/downloader/AssetDownloader;->n(Lcom/vungle/warren/downloader/AssetDownloader;)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v13, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->progressPercent:I

    .line 128
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v3, v4, v13}, Lcom/vungle/warren/downloader/AssetDownloader;->l(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;)V

    move v4, v5

    goto :goto_530

    :cond_561
    move v5, v4

    :cond_562
    move v4, v5

    move-object v3, v13

    goto :goto_4f4

    :cond_565
    const-string v0, "AssetDownloader#load; loadAd sequence"

    const-string v3, "mediator %s is not connected"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    .line 129
    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v7, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    .line 130
    invoke-static {v4, v7}, Lcom/vungle/warren/downloader/AssetDownloader;->y(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    aput-object v4, v5, v7

    .line 131
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 132
    invoke-static {v0, v3}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Request is not connected"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_586
    const-string v0, "AssetDownloader#load; loadAd sequence"

    const-string v3, "file %s does not exist"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v12, v5, v4

    .line 134
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 135
    invoke-static {v0, v3}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    new-instance v0, Lcom/vungle/warren/downloader/Downloader$RequestException;

    const-string v3, "File is not existing"

    invoke-direct {v0, v3}, Lcom/vungle/warren/downloader/Downloader$RequestException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_59f
    .catchall {:try_start_505 .. :try_end_59f} :catchall_59f

    :catchall_59f
    move-exception v0

    goto :goto_5a3

    :catchall_5a1
    move-exception v0

    move-object v13, v3

    :goto_5a3
    move-object/from16 v17, v2

    move-object v2, v6

    move-object/from16 v7, v22

    move/from16 v10, v24

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x5

    goto/16 :goto_70a

    :cond_5af
    move-object v13, v3

    .line 137
    :cond_5b0
    :try_start_5b0
    invoke-interface {v2}, Lokio/d;->flush()V

    .line 138
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->is(I)Z

    move-result v3
    :try_end_5ba
    .catchall {:try_start_5b0 .. :try_end_5ba} :catchall_6f8

    if-eqz v3, :cond_5e9

    .line 139
    :try_start_5bc
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v5, "DOWNLOAD_COMPLETE"

    .line 140
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "Last-Cache-Verification"

    .line 141
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "Last-Download"

    .line 142
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v3, v11, v0}, Lcom/vungle/warren/downloader/AssetDownloader;->f(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Ljava/util/HashMap;)V

    .line 144
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->set(I)V
    :try_end_5e8
    .catchall {:try_start_5bc .. :try_end_5e8} :catchall_59f

    goto :goto_613

    :cond_5e9
    const/4 v0, 0x6

    .line 145
    :try_start_5ea
    iput v0, v13, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->status:I

    .line 146
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v3, v13}, Lcom/vungle/warren/downloader/AssetDownloader;->l(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;)V

    .line 147
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "State has changed, cancelling download "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v4, v5}, Lcom/vungle/warren/downloader/AssetDownloader;->y(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_613
    .catchall {:try_start_5ea .. :try_end_613} :catchall_6f8

    .line 148
    :goto_613
    invoke-virtual {v6}, Lja/c0;->b()Lja/d0;

    move-result-object v0

    if-eqz v0, :cond_620

    .line 149
    invoke-virtual {v6}, Lja/c0;->b()Lja/d0;

    move-result-object v0

    invoke-virtual {v0}, Lja/d0;->close()V

    .line 150
    :cond_620
    invoke-interface/range {v25 .. v25}, Lja/e;->cancel()V

    .line 151
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request is done "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v4, v5}, Lcom/vungle/warren/downloader/AssetDownloader;->y(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v0}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_67d

    const/4 v4, 0x3

    if-eq v0, v4, :cond_673

    const/4 v3, 0x4

    if-eq v0, v3, :cond_669

    const/4 v5, 0x5

    if-eq v0, v5, :cond_65f

    if-nez v21, :cond_67d

    .line 153
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v3}, Lcom/vungle/warren/downloader/AssetDownloader;->u(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_67d

    .line 154
    :cond_65f
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    move-object/from16 v7, v22

    invoke-static {v0, v7, v3}, Lcom/vungle/warren/downloader/AssetDownloader;->s(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_67f

    :cond_669
    move-object/from16 v7, v22

    .line 155
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v12, v3}, Lcom/vungle/warren/downloader/AssetDownloader;->r(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_67f

    :cond_673
    move-object/from16 v7, v22

    .line 156
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v3}, Lcom/vungle/warren/downloader/AssetDownloader;->t(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_67f

    :cond_67d
    :goto_67d
    move-object/from16 v7, v22

    .line 157
    :goto_67f
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Done with request in state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v4}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    .line 158
    invoke-static {v4, v5}, Lcom/vungle/warren/downloader/AssetDownloader;->y(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 159
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v8, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    monitor-enter v8

    .line 161
    :try_start_6b0
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->v(Lcom/vungle/warren/downloader/AssetDownloader;)V

    .line 162
    monitor-exit v8
    :try_end_6b6
    .catchall {:try_start_6b0 .. :try_end_6b6} :catchall_6f5

    .line 163
    invoke-static {v2}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 164
    invoke-static {v14}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 165
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->x(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    if-eqz v0, :cond_6ee

    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    iget-boolean v0, v0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->isCacheable:Z

    if-eqz v0, :cond_6ee

    .line 166
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->x(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    invoke-interface {v0, v12}, Lcom/vungle/warren/downloader/DownloaderCache;->stopTracking(Ljava/io/File;)V

    .line 167
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-virtual {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->isCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_6e5

    .line 168
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->x(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    invoke-interface {v0}, Lcom/vungle/warren/downloader/DownloaderCache;->clear()V

    goto :goto_6ee

    .line 169
    :cond_6e5
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->x(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    invoke-interface {v0}, Lcom/vungle/warren/downloader/DownloaderCache;->purge()Ljava/util/List;

    :cond_6ee
    :goto_6ee
    move-object v14, v7

    move/from16 v15, v21

    const/4 v0, 0x1

    const/4 v8, 0x0

    goto/16 :goto_cf9

    :catchall_6f5
    move-exception v0

    .line 170
    :try_start_6f6
    monitor-exit v8
    :try_end_6f7
    .catchall {:try_start_6f6 .. :try_end_6f7} :catchall_6f5

    throw v0

    :catchall_6f8
    move-exception v0

    goto :goto_700

    :catchall_6fa
    move-exception v0

    move-object v13, v3

    goto :goto_700

    :catchall_6fd
    move-exception v0

    move-object v13, v3

    move-object v11, v5

    :goto_700
    move-object/from16 v7, v22

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x5

    move-object/from16 v17, v2

    move-object v2, v6

    move/from16 v10, v24

    :goto_70a
    const/4 v9, 0x0

    goto/16 :goto_927

    :catchall_70d
    move-exception v0

    goto :goto_712

    :catchall_70f
    move-exception v0

    move-object/from16 v25, v2

    :goto_712
    move-object v13, v3

    move-object v11, v5

    move-object/from16 v7, v22

    const/4 v3, 0x2

    const/4 v4, 0x3

    goto :goto_72b

    :catchall_719
    move-exception v0

    move-object/from16 v25, v2

    move-object v13, v3

    goto :goto_724

    :catchall_71e
    move-exception v0

    move-object/from16 v25, v2

    move-object v13, v3

    move-object/from16 v23, v4

    :goto_724
    move/from16 v24, v11

    move-object/from16 v7, v22

    const/4 v3, 0x2

    const/4 v4, 0x3

    move-object v11, v5

    :goto_72b
    const/4 v5, 0x5

    move-object v2, v6

    move/from16 v10, v24

    :goto_72f
    const/4 v9, 0x0

    goto/16 :goto_7ca

    :catchall_732
    move-exception v0

    move-object/from16 v25, v2

    move-object v13, v3

    move-object/from16 v23, v4

    move/from16 v24, v11

    move-object/from16 v7, v22

    goto :goto_771

    :cond_73d
    move-object/from16 v25, v2

    move-object v13, v3

    move-object/from16 v23, v4

    move/from16 v24, v11

    move-object v7, v14

    move/from16 v21, v15

    const/4 v3, 0x2

    const/4 v4, 0x3

    move-object v11, v5

    const/4 v5, 0x5

    :try_start_74b
    const-string v0, "AssetDownloader#load; loadAd sequence"

    const-string v2, "response has no body %s"

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v6, v9, v8

    .line 171
    invoke-static {v2, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 172
    invoke-static {v0, v2}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Response body is null"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_764
    .catchall {:try_start_74b .. :try_end_764} :catchall_764

    :catchall_764
    move-exception v0

    goto :goto_786

    :catchall_766
    move-exception v0

    move-object/from16 v25, v2

    move-object v13, v3

    move-object/from16 v23, v4

    move/from16 v24, v11

    move-object v7, v14

    move/from16 v21, v15

    :goto_771
    const/4 v3, 0x2

    const/4 v4, 0x3

    move-object v11, v5

    goto :goto_785

    :catchall_775
    move-exception v0

    move-object/from16 v25, v2

    move-object/from16 v23, v4

    move/from16 v24, v11

    move/from16 v20, v13

    move-object v7, v14

    move/from16 v21, v15

    const/4 v4, 0x3

    move-object v13, v3

    move-object v11, v5

    const/4 v3, 0x2

    :goto_785
    const/4 v5, 0x5

    :goto_786
    move-object v2, v6

    move/from16 v10, v24

    goto :goto_7c8

    :cond_78a
    move-object/from16 v25, v2

    move-object/from16 v23, v4

    move-object v11, v5

    move/from16 v24, v10

    move/from16 v20, v13

    move-object v7, v14

    move/from16 v21, v15

    const/4 v4, 0x3

    const/4 v5, 0x5

    move-object v13, v3

    const/4 v3, 0x2

    .line 174
    :try_start_79a
    new-instance v0, Lcom/vungle/warren/downloader/Downloader$RequestException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Code: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7a6
    .catchall {:try_start_79a .. :try_end_7a6} :catchall_7b3

    move/from16 v8, v24

    :try_start_7a8
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/vungle/warren/downloader/Downloader$RequestException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_7b3
    move-exception v0

    move/from16 v8, v24

    goto :goto_7fe

    :catchall_7b7
    move-exception v0

    move-object/from16 v25, v2

    move-object/from16 v23, v4

    move-object v11, v5

    move v8, v10

    move/from16 v20, v13

    move-object v7, v14

    move/from16 v21, v15

    const/4 v4, 0x3

    const/4 v5, 0x5

    move-object v13, v3

    const/4 v3, 0x2

    move-object v2, v6

    :goto_7c8
    const/4 v9, 0x0

    const/4 v14, 0x0

    :goto_7ca
    const/16 v17, 0x0

    goto/16 :goto_927

    :cond_7ce
    :goto_7ce
    move-object/from16 v25, v2

    move-object/from16 v23, v4

    move-object v11, v5

    move v8, v10

    move/from16 v20, v13

    move-object v7, v14

    move/from16 v21, v15

    const/4 v4, 0x3

    const/4 v5, 0x5

    move-object v13, v3

    const/4 v3, 0x2

    const/16 v2, 0x130

    if-ne v8, v2, :cond_801

    const-string v2, "Last-Cache-Verification"

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    .line 176
    invoke-virtual {v0, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v2, v11, v0}, Lcom/vungle/warren/downloader/AssetDownloader;->f(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Ljava/util/HashMap;)V

    .line 178
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Verification success, dispatch existing file"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7fc
    .catchall {:try_start_7a8 .. :try_end_7fc} :catchall_7fd

    goto :goto_81d

    :catchall_7fd
    move-exception v0

    :goto_7fe
    move-object v2, v6

    move v10, v8

    goto :goto_7c8

    .line 179
    :cond_801
    :try_start_801
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Using local cache file despite response code = "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v6}, Lja/c0;->d()I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 181
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :goto_81d
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->set(I)V
    :try_end_823
    .catchall {:try_start_801 .. :try_end_823} :catchall_8f7

    .line 183
    invoke-virtual {v6}, Lja/c0;->b()Lja/d0;

    move-result-object v0

    if-eqz v0, :cond_830

    .line 184
    invoke-virtual {v6}, Lja/c0;->b()Lja/d0;

    move-result-object v0

    invoke-virtual {v0}, Lja/d0;->close()V

    .line 185
    :cond_830
    invoke-interface/range {v25 .. v25}, Lja/e;->cancel()V

    .line 186
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "request is done "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v8, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v6, v8}, Lcom/vungle/warren/downloader/AssetDownloader;->y(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v0}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    move-result v0

    if-eq v0, v3, :cond_883

    if-eq v0, v4, :cond_87c

    const/4 v2, 0x4

    if-eq v0, v2, :cond_874

    if-eq v0, v5, :cond_86c

    if-nez v21, :cond_883

    .line 188
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->u(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_883

    .line 189
    :cond_86c
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v7, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->s(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_883

    .line 190
    :cond_874
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v12, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->r(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_883

    .line 191
    :cond_87c
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->t(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    .line 192
    :cond_883
    :goto_883
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Done with request in state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v3}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    .line 193
    invoke-static {v3, v4}, Lcom/vungle/warren/downloader/AssetDownloader;->y(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 194
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    monitor-enter v2

    .line 196
    :try_start_8b4
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->v(Lcom/vungle/warren/downloader/AssetDownloader;)V

    .line 197
    monitor-exit v2
    :try_end_8ba
    .catchall {:try_start_8b4 .. :try_end_8ba} :catchall_8f4

    const/4 v9, 0x0

    .line 198
    invoke-static {v9}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 199
    invoke-static {v9}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 200
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->x(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    if-eqz v0, :cond_8f3

    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    iget-boolean v0, v0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->isCacheable:Z

    if-eqz v0, :cond_8f3

    .line 201
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->x(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    invoke-interface {v0, v12}, Lcom/vungle/warren/downloader/DownloaderCache;->stopTracking(Ljava/io/File;)V

    .line 202
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-virtual {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->isCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_8ea

    .line 203
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->x(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    invoke-interface {v0}, Lcom/vungle/warren/downloader/DownloaderCache;->clear()V

    goto :goto_8f3

    .line 204
    :cond_8ea
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->x(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    invoke-interface {v0}, Lcom/vungle/warren/downloader/DownloaderCache;->purge()Ljava/util/List;

    :cond_8f3
    :goto_8f3
    return-void

    :catchall_8f4
    move-exception v0

    .line 205
    :try_start_8f5
    monitor-exit v2
    :try_end_8f6
    .catchall {:try_start_8f5 .. :try_end_8f6} :catchall_8f4

    throw v0

    :catchall_8f7
    move-exception v0

    const/4 v9, 0x0

    move-object v2, v6

    move v10, v8

    goto :goto_90e

    :catchall_8fc
    move-exception v0

    move-object/from16 v25, v2

    move-object/from16 v23, v4

    move-object v11, v5

    move v8, v10

    move/from16 v20, v13

    move-object v7, v14

    move/from16 v21, v15

    const/4 v4, 0x3

    const/4 v5, 0x5

    const/4 v9, 0x0

    move-object v13, v3

    const/4 v3, 0x2

    move-object v2, v6

    :goto_90e
    move-object v14, v9

    move-object/from16 v17, v14

    goto :goto_927

    :catchall_912
    move-exception v0

    move-object/from16 v25, v2

    move-object/from16 v23, v4

    move-object v11, v5

    move/from16 v20, v13

    move-object v7, v14

    move/from16 v21, v15

    const/4 v4, 0x3

    const/4 v5, 0x5

    const/4 v9, 0x0

    move-object v13, v3

    const/4 v3, 0x2

    move-object v2, v6

    move-object v14, v9

    move-object/from16 v17, v14

    const/4 v10, -0x1

    :goto_927
    move-object v6, v0

    move/from16 v0, v20

    goto/16 :goto_9b3

    :catchall_92c
    move-exception v0

    move-object/from16 v25, v2

    move-object/from16 v23, v4

    move-object v11, v5

    move/from16 v20, v13

    move-object v7, v14

    move/from16 v21, v15

    const/4 v4, 0x3

    const/4 v5, 0x5

    const/4 v9, 0x0

    move-object v13, v3

    const/4 v3, 0x2

    move-object v6, v0

    move-object v2, v9

    move-object v14, v2

    move-object/from16 v17, v14

    goto/16 :goto_9b0

    :catchall_943
    move-exception v0

    move-object/from16 v23, v4

    move-object v11, v5

    move/from16 v20, v13

    move-object v7, v14

    move/from16 v21, v15

    const/4 v4, 0x3

    const/4 v5, 0x5

    const/4 v9, 0x0

    move-object v13, v3

    const/4 v3, 0x2

    goto :goto_999

    :cond_952
    move-object v13, v3

    move-object/from16 v23, v4

    move/from16 v20, v11

    move-object v7, v14

    move/from16 v21, v15

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v9, 0x0

    move-object v11, v5

    const/4 v5, 0x5

    .line 206
    :try_start_95f
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Request is not connected to required network"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AssetDownloader#load; loadAd sequence"

    const-string v2, "No connected to required network requests in %s"

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/Object;

    .line 207
    iget-object v6, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v10, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    .line 208
    invoke-static {v6, v10}, Lcom/vungle/warren/downloader/AssetDownloader;->y(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x0

    aput-object v6, v8, v10

    .line 209
    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 210
    invoke-static {v0, v2}, Lcom/vungle/warren/VungleLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Not connected to correct network"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_989
    .catchall {:try_start_95f .. :try_end_989} :catchall_989

    :catchall_989
    move-exception v0

    goto :goto_999

    :catchall_98b
    move-exception v0

    move-object v13, v3

    move-object/from16 v23, v4

    move/from16 v20, v11

    move-object v7, v14

    move/from16 v21, v15

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v9, 0x0

    move-object v11, v5

    const/4 v5, 0x5

    :goto_999
    move-object v6, v0

    move-object v2, v9

    goto :goto_9ab

    :catchall_99c
    move-exception v0

    move-object v9, v2

    move-object v13, v3

    move-object/from16 v23, v4

    move/from16 v20, v11

    move-object v7, v14

    move/from16 v21, v15

    const/4 v3, 0x2

    const/4 v4, 0x3

    move-object v11, v5

    const/4 v5, 0x5

    move-object v6, v0

    :goto_9ab
    move-object v14, v2

    move-object/from16 v17, v14

    move-object/from16 v25, v17

    :goto_9b0
    move/from16 v0, v20

    const/4 v10, -0x1

    :goto_9b3
    :try_start_9b3
    const-string v8, "AssetDownloader#load; loadAd sequence"

    const-string v15, "exception, cannot load due to %1$s, state is %2$s"

    new-array v9, v3, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v6, v9, v16

    .line 212
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    .line 213
    invoke-static {v3, v5}, Lcom/vungle/warren/downloader/AssetDownloader;->y(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v3
    :try_end_9c5
    .catchall {:try_start_9b3 .. :try_end_9c5} :catchall_d07

    const/4 v5, 0x1

    :try_start_9c6
    aput-object v3, v9, v5
    :try_end_9c8
    .catchall {:try_start_9c6 .. :try_end_9c8} :catchall_d05

    .line 214
    :try_start_9c8
    invoke-static {v15, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 215
    invoke-static {v8, v3}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->a()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Exception on download"

    invoke-static {v3, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 217
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v3, v4}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->is(I)Z

    move-result v3
    :try_end_9de
    .catchall {:try_start_9c8 .. :try_end_9de} :catchall_d07

    if-nez v3, :cond_9e6

    .line 218
    :try_start_9e0
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->set(I)V
    :try_end_9e6
    .catchall {:try_start_9e0 .. :try_end_9e6} :catchall_d05

    .line 219
    :cond_9e6
    :try_start_9e6
    instance-of v3, v6, Ljava/io/IOException;
    :try_end_9e8
    .catchall {:try_start_9e6 .. :try_end_9e8} :catchall_d07

    if-eqz v3, :cond_bd8

    .line 220
    :try_start_9ea
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v3, v5}, Lcom/vungle/warren/downloader/AssetDownloader;->z(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Z

    move-result v3

    if-nez v3, :cond_aec

    if-nez v2, :cond_aec

    .line 221
    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v8, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    .line 222
    invoke-static {v5, v11}, Lcom/vungle/warren/downloader/AssetDownloader;->A(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;)Ljava/util/HashMap;

    move-result-object v9

    const/4 v15, -0x1

    invoke-static {v5, v8, v12, v9, v15}, Lcom/vungle/warren/downloader/AssetDownloader;->e(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;Ljava/io/File;Ljava/util/Map;I)Z

    move-result v5

    if-eqz v5, :cond_aec

    .line 223
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v0, v4}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->is(I)Z

    move-result v0

    if-nez v0, :cond_a13

    .line 224
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->set(I)V
    :try_end_a13
    .catchall {:try_start_9ea .. :try_end_a13} :catchall_d05

    :cond_a13
    if-eqz v2, :cond_a22

    .line 225
    invoke-virtual {v2}, Lja/c0;->b()Lja/d0;

    move-result-object v0

    if-eqz v0, :cond_a22

    .line 226
    invoke-virtual {v2}, Lja/c0;->b()Lja/d0;

    move-result-object v0

    invoke-virtual {v0}, Lja/d0;->close()V

    :cond_a22
    if-eqz v25, :cond_a27

    .line 227
    invoke-interface/range {v25 .. v25}, Lja/e;->cancel()V

    .line 228
    :cond_a27
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request is done "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v3, v5}, Lcom/vungle/warren/downloader/AssetDownloader;->y(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v0}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_a79

    if-eq v0, v4, :cond_a72

    const/4 v2, 0x4

    if-eq v0, v2, :cond_a6a

    const/4 v2, 0x5

    if-eq v0, v2, :cond_a62

    if-nez v21, :cond_a79

    .line 230
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->u(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_a79

    .line 231
    :cond_a62
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v7, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->s(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_a79

    .line 232
    :cond_a6a
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v12, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->r(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_a79

    .line 233
    :cond_a72
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v0, v2}, Lcom/vungle/warren/downloader/AssetDownloader;->t(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    .line 234
    :cond_a79
    :goto_a79
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Done with request in state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v3}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    .line 235
    invoke-static {v3, v4}, Lcom/vungle/warren/downloader/AssetDownloader;->y(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 236
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    monitor-enter v3

    .line 238
    :try_start_aaa
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->v(Lcom/vungle/warren/downloader/AssetDownloader;)V

    .line 239
    monitor-exit v3
    :try_end_ab0
    .catchall {:try_start_aaa .. :try_end_ab0} :catchall_ae9

    .line 240
    invoke-static/range {v17 .. v17}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 241
    invoke-static {v14}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 242
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->x(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    if-eqz v0, :cond_ae8

    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    iget-boolean v0, v0, Lcom/vungle/warren/downloader/DownloadRequestMediator;->isCacheable:Z

    if-eqz v0, :cond_ae8

    .line 243
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->x(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    invoke-interface {v0, v12}, Lcom/vungle/warren/downloader/DownloaderCache;->stopTracking(Ljava/io/File;)V

    .line 244
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-virtual {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->isCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_adf

    .line 245
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->x(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    invoke-interface {v0}, Lcom/vungle/warren/downloader/DownloaderCache;->clear()V

    goto :goto_ae8

    .line 246
    :cond_adf
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0}, Lcom/vungle/warren/downloader/AssetDownloader;->x(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v0

    invoke-interface {v0}, Lcom/vungle/warren/downloader/DownloaderCache;->purge()Ljava/util/List;

    :cond_ae8
    :goto_ae8
    return-void

    :catchall_ae9
    move-exception v0

    .line 247
    :try_start_aea
    monitor-exit v3
    :try_end_aeb
    .catchall {:try_start_aea .. :try_end_aeb} :catchall_ae9

    throw v0

    .line 248
    :cond_aec
    :try_start_aec
    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v5, v3}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->setConnected(Z)V

    .line 249
    new-instance v5, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    iget-object v8, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    .line 250
    invoke-static {v8, v6, v3}, Lcom/vungle/warren/downloader/AssetDownloader;->o(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/lang/Throwable;Z)I

    move-result v8

    invoke-direct {v5, v10, v6, v8}, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V
    :try_end_afc
    .catchall {:try_start_aec .. :try_end_afc} :catchall_d05

    if-nez v3, :cond_b71

    const/4 v3, 0x5

    .line 251
    :try_start_aff
    iput v3, v13, Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;->status:I

    .line 252
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v6, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v3, v6, v13}, Lcom/vungle/warren/downloader/AssetDownloader;->l(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;)V

    .line 253
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v3, v4}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->is(I)Z

    move-result v3

    if-nez v3, :cond_b71

    add-int/lit8 v3, v0, 0x1

    iget-object v6, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget v6, v6, Lcom/vungle/warren/downloader/AssetDownloader;->d:I

    if-ge v0, v6, :cond_b6a

    const/4 v0, 0x0

    .line 254
    :goto_b19
    iget-object v6, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget v7, v6, Lcom/vungle/warren/downloader/AssetDownloader;->c:I

    if-ge v0, v7, :cond_b6a

    .line 255
    iget v7, v6, Lcom/vungle/warren/downloader/AssetDownloader;->e:I

    int-to-long v7, v7

    invoke-static {v6, v7, v8}, Lcom/vungle/warren/downloader/AssetDownloader;->p(Lcom/vungle/warren/downloader/AssetDownloader;J)V

    .line 256
    iget-object v6, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v6, v4}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->is(I)Z

    move-result v6

    if-eqz v6, :cond_b2e

    goto :goto_b6a

    .line 257
    :cond_b2e
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->a()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Trying to reconnect"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v6, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v7, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v6, v7}, Lcom/vungle/warren/downloader/AssetDownloader;->z(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Z

    move-result v6

    if-eqz v6, :cond_b61

    .line 259
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->a()Ljava/lang/String;

    move-result-object v0

    const-string v6, "Reconnected, starting download again"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b4a
    .catchall {:try_start_aff .. :try_end_b4a} :catchall_b6d

    .line 260
    :try_start_b4a
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->setConnected(Z)V

    .line 261
    iget-object v0, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v0, v6}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->set(I)V
    :try_end_b55
    .catchall {:try_start_b4a .. :try_end_b55} :catchall_b5a

    move v0, v3

    const/4 v8, 0x0

    const/16 v16, 0x0

    goto :goto_b74

    :catchall_b5a
    move-exception v0

    move-object v7, v5

    move/from16 v15, v21

    const/4 v13, 0x0

    goto/16 :goto_d0c

    .line 262
    :cond_b61
    :try_start_b61
    iget-object v6, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->setConnected(Z)V
    :try_end_b67
    .catchall {:try_start_b61 .. :try_end_b67} :catchall_b6d

    add-int/lit8 v0, v0, 0x1

    goto :goto_b19

    :cond_b6a
    :goto_b6a
    const/4 v8, 0x0

    move v0, v3

    goto :goto_b72

    :catchall_b6d
    move-exception v0

    move-object v7, v5

    goto/16 :goto_d09

    :cond_b71
    const/4 v8, 0x0

    :goto_b72
    const/16 v16, 0x1

    .line 263
    :goto_b74
    :try_start_b74
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    monitor-enter v3
    :try_end_b77
    .catchall {:try_start_b74 .. :try_end_b77} :catchall_bd0

    if-eqz v16, :cond_bc1

    .line 264
    :try_start_b79
    iget-object v6, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v6}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->isConnected()Z

    move-result v6

    if-nez v6, :cond_bc1

    iget-object v6, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v6}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->isPausable()Z

    move-result v6

    if-eqz v6, :cond_bc1

    .line 265
    iget-object v6, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v7, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v6, v7}, Lcom/vungle/warren/downloader/AssetDownloader;->z(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Z

    move-result v6

    if-eqz v6, :cond_bb1

    .line 266
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->a()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Reconnected, starting download again"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b9c
    .catchall {:try_start_b79 .. :try_end_b9c} :catchall_bbb

    .line 267
    :try_start_b9c
    iget-object v6, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->setConnected(Z)V

    .line 268
    iget-object v6, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v6, v7}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->set(I)V
    :try_end_ba7
    .catchall {:try_start_b9c .. :try_end_ba7} :catchall_bac

    move/from16 v15, v21

    const/16 v16, 0x0

    goto :goto_bc3

    :catchall_bac
    move-exception v0

    move/from16 v15, v21

    const/4 v13, 0x0

    goto :goto_bc8

    .line 269
    :cond_bb1
    :try_start_bb1
    iget-object v6, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v7, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v6, v7, v13, v5}, Lcom/vungle/warren/downloader/AssetDownloader;->q(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;)Z

    move-result v6
    :try_end_bb9
    .catchall {:try_start_bb1 .. :try_end_bb9} :catchall_bbb

    move v15, v6

    goto :goto_bc3

    :catchall_bbb
    move-exception v0

    move/from16 v13, v16

    move/from16 v15, v21

    goto :goto_bc8

    :cond_bc1
    move/from16 v15, v21

    .line 270
    :goto_bc3
    :try_start_bc3
    monitor-exit v3
    :try_end_bc4
    .catchall {:try_start_bc3 .. :try_end_bc4} :catchall_bc5

    goto :goto_bfa

    :catchall_bc5
    move-exception v0

    move/from16 v13, v16

    :goto_bc8
    :try_start_bc8
    monitor-exit v3
    :try_end_bc9
    .catchall {:try_start_bc8 .. :try_end_bc9} :catchall_bce

    :try_start_bc9
    throw v0
    :try_end_bca
    .catchall {:try_start_bc9 .. :try_end_bca} :catchall_bca

    :catchall_bca
    move-exception v0

    move-object v7, v5

    goto/16 :goto_d0c

    :catchall_bce
    move-exception v0

    goto :goto_bc8

    :catchall_bd0
    move-exception v0

    move-object v7, v5

    move/from16 v13, v16

    move/from16 v15, v21

    goto/16 :goto_d0c

    :cond_bd8
    const/4 v8, 0x0

    .line 271
    :try_start_bd9
    instance-of v3, v6, Lcom/vungle/warren/downloader/Downloader$RequestException;
    :try_end_bdb
    .catchall {:try_start_bd9 .. :try_end_bdb} :catchall_d07

    if-eqz v3, :cond_be9

    .line 272
    :try_start_bdd
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    const/4 v5, 0x1

    invoke-static {v3, v12, v11, v5}, Lcom/vungle/warren/downloader/AssetDownloader;->h(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Ljava/io/File;Z)V

    .line 273
    new-instance v3, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    invoke-direct {v3, v10, v6, v5}, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V
    :try_end_be8
    .catchall {:try_start_bdd .. :try_end_be8} :catchall_d05

    goto :goto_bf5

    .line 274
    :cond_be9
    :try_start_be9
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;
    :try_end_beb
    .catchall {:try_start_be9 .. :try_end_beb} :catchall_d07

    const/4 v5, 0x1

    :try_start_bec
    invoke-static {v3, v12, v11, v5}, Lcom/vungle/warren/downloader/AssetDownloader;->h(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Ljava/io/File;Z)V

    .line 275
    new-instance v3, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    const/4 v9, 0x4

    invoke-direct {v3, v10, v6, v9}, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V
    :try_end_bf5
    .catchall {:try_start_bec .. :try_end_bf5} :catchall_d05

    :goto_bf5
    move-object v5, v3

    move/from16 v15, v21

    const/16 v16, 0x1

    :goto_bfa
    if-eqz v2, :cond_c09

    .line 276
    invoke-virtual {v2}, Lja/c0;->b()Lja/d0;

    move-result-object v3

    if-eqz v3, :cond_c09

    .line 277
    invoke-virtual {v2}, Lja/c0;->b()Lja/d0;

    move-result-object v2

    invoke-virtual {v2}, Lja/d0;->close()V

    :cond_c09
    if-eqz v25, :cond_c0e

    .line 278
    invoke-interface/range {v25 .. v25}, Lja/e;->cancel()V

    .line 279
    :cond_c0e
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "request is done "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v7, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v6, v7}, Lcom/vungle/warren/downloader/AssetDownloader;->y(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v16, :cond_c91

    .line 280
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v2}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_c62

    if-eq v2, v4, :cond_c5b

    const/4 v3, 0x4

    if-eq v2, v3, :cond_c53

    const/4 v3, 0x5

    if-eq v2, v3, :cond_c4b

    if-nez v15, :cond_c62

    .line 281
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v2, v3}, Lcom/vungle/warren/downloader/AssetDownloader;->u(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_c62

    .line 282
    :cond_c4b
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v2, v5, v3}, Lcom/vungle/warren/downloader/AssetDownloader;->s(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_c62

    .line 283
    :cond_c53
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v2, v12, v3}, Lcom/vungle/warren/downloader/AssetDownloader;->r(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_c62

    .line 284
    :cond_c5b
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v2, v3}, Lcom/vungle/warren/downloader/AssetDownloader;->t(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    .line 285
    :cond_c62
    :goto_c62
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Done with request in state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v4}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v6, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    .line 286
    invoke-static {v4, v6}, Lcom/vungle/warren/downloader/AssetDownloader;->y(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 287
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cb1

    .line 288
    :cond_c91
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not removing connections and listener "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v6, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    .line 289
    invoke-static {v4, v6}, Lcom/vungle/warren/downloader/AssetDownloader;->y(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 290
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :goto_cb1
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    monitor-enter v3

    .line 292
    :try_start_cb4
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v2}, Lcom/vungle/warren/downloader/AssetDownloader;->v(Lcom/vungle/warren/downloader/AssetDownloader;)V

    .line 293
    monitor-exit v3
    :try_end_cba
    .catchall {:try_start_cb4 .. :try_end_cba} :catchall_d02

    .line 294
    invoke-static/range {v17 .. v17}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 295
    invoke-static {v14}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v16, :cond_cf4

    .line 296
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v2}, Lcom/vungle/warren/downloader/AssetDownloader;->x(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v2

    if-eqz v2, :cond_cf4

    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    iget-boolean v2, v2, Lcom/vungle/warren/downloader/DownloadRequestMediator;->isCacheable:Z

    if-eqz v2, :cond_cf4

    .line 297
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v2}, Lcom/vungle/warren/downloader/AssetDownloader;->x(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v2

    invoke-interface {v2, v12}, Lcom/vungle/warren/downloader/DownloaderCache;->stopTracking(Ljava/io/File;)V

    .line 298
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-virtual {v2}, Lcom/vungle/warren/downloader/AssetDownloader;->isCacheEnabled()Z

    move-result v2

    if-nez v2, :cond_ceb

    .line 299
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v2}, Lcom/vungle/warren/downloader/AssetDownloader;->x(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v2

    invoke-interface {v2}, Lcom/vungle/warren/downloader/DownloaderCache;->clear()V

    goto :goto_cf4

    .line 300
    :cond_ceb
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v2}, Lcom/vungle/warren/downloader/AssetDownloader;->x(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v2

    invoke-interface {v2}, Lcom/vungle/warren/downloader/DownloaderCache;->purge()Ljava/util/List;

    :cond_cf4
    :goto_cf4
    move/from16 v20, v0

    move-object v14, v5

    move/from16 v0, v16

    :goto_cf9
    move-object v5, v11

    move-object v3, v13

    move/from16 v11, v20

    move-object/from16 v4, v23

    :goto_cff
    const/4 v2, 0x0

    goto/16 :goto_40

    :catchall_d02
    move-exception v0

    .line 301
    :try_start_d03
    monitor-exit v3
    :try_end_d04
    .catchall {:try_start_d03 .. :try_end_d04} :catchall_d02

    throw v0

    :catchall_d05
    move-exception v0

    goto :goto_d09

    :catchall_d07
    move-exception v0

    const/4 v5, 0x1

    :goto_d09
    move/from16 v15, v21

    const/4 v13, 0x1

    :goto_d0c
    if-eqz v2, :cond_d1b

    .line 302
    invoke-virtual {v2}, Lja/c0;->b()Lja/d0;

    move-result-object v3

    if-eqz v3, :cond_d1b

    .line 303
    invoke-virtual {v2}, Lja/c0;->b()Lja/d0;

    move-result-object v2

    invoke-virtual {v2}, Lja/d0;->close()V

    :cond_d1b
    if-eqz v25, :cond_d20

    .line 304
    invoke-interface/range {v25 .. v25}, Lja/e;->cancel()V

    .line 305
    :cond_d20
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "request is done "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v6, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v5, v6}, Lcom/vungle/warren/downloader/AssetDownloader;->y(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v13, :cond_da3

    .line 306
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v2}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_d74

    if-eq v2, v4, :cond_d6d

    const/4 v3, 0x4

    if-eq v2, v3, :cond_d65

    const/4 v3, 0x5

    if-eq v2, v3, :cond_d5d

    if-nez v15, :cond_d74

    .line 307
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v2, v3}, Lcom/vungle/warren/downloader/AssetDownloader;->u(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_d74

    .line 308
    :cond_d5d
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v2, v7, v3}, Lcom/vungle/warren/downloader/AssetDownloader;->s(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_d74

    .line 309
    :cond_d65
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v2, v12, v3}, Lcom/vungle/warren/downloader/AssetDownloader;->r(Lcom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_d74

    .line 310
    :cond_d6d
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-static {v2, v3}, Lcom/vungle/warren/downloader/AssetDownloader;->t(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)V

    .line 311
    :cond_d74
    :goto_d74
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Done with request in state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    invoke-virtual {v4}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    .line 312
    invoke-static {v4, v5}, Lcom/vungle/warren/downloader/AssetDownloader;->y(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 313
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_dc3

    .line 314
    :cond_da3
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not removing connections and listener "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    iget-object v5, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    .line 315
    invoke-static {v4, v5}, Lcom/vungle/warren/downloader/AssetDownloader;->y(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 316
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :goto_dc3
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    monitor-enter v2

    .line 318
    :try_start_dc6
    iget-object v3, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v3}, Lcom/vungle/warren/downloader/AssetDownloader;->v(Lcom/vungle/warren/downloader/AssetDownloader;)V

    .line 319
    monitor-exit v2
    :try_end_dcc
    .catchall {:try_start_dc6 .. :try_end_dcc} :catchall_e07

    .line 320
    invoke-static/range {v17 .. v17}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 321
    invoke-static {v14}, Lcom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v13, :cond_e06

    .line 322
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v2}, Lcom/vungle/warren/downloader/AssetDownloader;->x(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v2

    if-eqz v2, :cond_e06

    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->s:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    iget-boolean v2, v2, Lcom/vungle/warren/downloader/DownloadRequestMediator;->isCacheable:Z

    if-eqz v2, :cond_e06

    .line 323
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v2}, Lcom/vungle/warren/downloader/AssetDownloader;->x(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v2

    invoke-interface {v2, v12}, Lcom/vungle/warren/downloader/DownloaderCache;->stopTracking(Ljava/io/File;)V

    .line 324
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-virtual {v2}, Lcom/vungle/warren/downloader/AssetDownloader;->isCacheEnabled()Z

    move-result v2

    if-nez v2, :cond_dfd

    .line 325
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v2}, Lcom/vungle/warren/downloader/AssetDownloader;->x(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v2

    invoke-interface {v2}, Lcom/vungle/warren/downloader/DownloaderCache;->clear()V

    goto :goto_e06

    .line 326
    :cond_dfd
    iget-object v2, v1, Lcom/vungle/warren/downloader/AssetDownloader$2;->t:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v2}, Lcom/vungle/warren/downloader/AssetDownloader;->x(Lcom/vungle/warren/downloader/AssetDownloader;)Lcom/vungle/warren/downloader/DownloaderCache;

    move-result-object v2

    invoke-interface {v2}, Lcom/vungle/warren/downloader/DownloaderCache;->purge()Ljava/util/List;

    .line 327
    :cond_e06
    :goto_e06
    throw v0

    :catchall_e07
    move-exception v0

    .line 328
    :try_start_e08
    monitor-exit v2
    :try_end_e09
    .catchall {:try_start_e08 .. :try_end_e09} :catchall_e07

    throw v0

    :cond_e0a
    return-void
.end method

###### Class com.vungle.warren.downloader.AssetDownloader.AnonymousClass3 (com.vungle.warren.downloader.AssetDownloader$3)
.class Lcom/vungle/warren/downloader/AssetDownloader$3;
.super Ljava/lang/Object;
.source "AssetDownloader.java"

# interfaces
.implements Lcom/vungle/warren/utility/NetworkProvider$NetworkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/downloader/AssetDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/warren/downloader/AssetDownloader;


# direct methods
.method constructor <init>(Lcom/vungle/warren/downloader/AssetDownloader;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/downloader/AssetDownloader$3;->a:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(I)V
    .registers 5

    .line 1
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader$3;->a:Lcom/vungle/warren/downloader/AssetDownloader;

    invoke-static {v0, p1}, Lcom/vungle/warren/downloader/AssetDownloader;->w(Lcom/vungle/warren/downloader/AssetDownloader;I)V

    return-void
.end method

###### Class com.vungle.warren.downloader.AssetDownloader.AnonymousClass4 (com.vungle.warren.downloader.AssetDownloader$4)
.class Lcom/vungle/warren/downloader/AssetDownloader$4;
.super Ljava/lang/Object;
.source "AssetDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/downloader/AssetDownloader;->M(Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/vungle/warren/downloader/AssetDownloadListener;

.field final synthetic p:Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

.field final synthetic q:Lcom/vungle/warren/downloader/DownloadRequest;

.field final synthetic r:Lcom/vungle/warren/downloader/AssetDownloader;


# direct methods
.method constructor <init>(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/AssetDownloadListener;Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequest;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/downloader/AssetDownloader$4;->r:Lcom/vungle/warren/downloader/AssetDownloader;

    iput-object p2, p0, Lcom/vungle/warren/downloader/AssetDownloader$4;->o:Lcom/vungle/warren/downloader/AssetDownloadListener;

    iput-object p3, p0, Lcom/vungle/warren/downloader/AssetDownloader$4;->p:Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    iput-object p4, p0, Lcom/vungle/warren/downloader/AssetDownloader$4;->q:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader$4;->o:Lcom/vungle/warren/downloader/AssetDownloadListener;

    iget-object v1, p0, Lcom/vungle/warren/downloader/AssetDownloader$4;->p:Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    iget-object v2, p0, Lcom/vungle/warren/downloader/AssetDownloader$4;->q:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-interface {v0, v1, v2}, Lcom/vungle/warren/downloader/AssetDownloadListener;->onError(Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequest;)V

    return-void
.end method

###### Class com.vungle.warren.downloader.AssetDownloader.AnonymousClass5 (com.vungle.warren.downloader.AssetDownloader$5)
.class Lcom/vungle/warren/downloader/AssetDownloader$5;
.super Ljava/lang/Object;
.source "AssetDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/downloader/AssetDownloader;->N(Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/vungle/warren/downloader/DownloadRequest;

.field final synthetic p:Lcom/vungle/warren/downloader/AssetDownloadListener;

.field final synthetic q:Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;

.field final synthetic r:Lcom/vungle/warren/downloader/AssetDownloader;


# direct methods
.method constructor <init>(Lcom/vungle/warren/downloader/AssetDownloader;Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/downloader/AssetDownloader$5;->r:Lcom/vungle/warren/downloader/AssetDownloader;

    iput-object p2, p0, Lcom/vungle/warren/downloader/AssetDownloader$5;->o:Lcom/vungle/warren/downloader/DownloadRequest;

    iput-object p3, p0, Lcom/vungle/warren/downloader/AssetDownloader$5;->p:Lcom/vungle/warren/downloader/AssetDownloadListener;

    iput-object p4, p0, Lcom/vungle/warren/downloader/AssetDownloader$5;->q:Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    invoke-static {}, Lcom/vungle/warren/downloader/AssetDownloader;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "On progress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/downloader/AssetDownloader$5;->o:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader$5;->p:Lcom/vungle/warren/downloader/AssetDownloadListener;

    iget-object v1, p0, Lcom/vungle/warren/downloader/AssetDownloader$5;->q:Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;

    iget-object v2, p0, Lcom/vungle/warren/downloader/AssetDownloader$5;->o:Lcom/vungle/warren/downloader/DownloadRequest;

    invoke-interface {v0, v1, v2}, Lcom/vungle/warren/downloader/AssetDownloadListener;->onProgress(Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;Lcom/vungle/warren/downloader/DownloadRequest;)V

    return-void
.end method

###### Class com.vungle.warren.downloader.AssetDownloader.DownloadPriorityRunnable (com.vungle.warren.downloader.AssetDownloader$DownloadPriorityRunnable)
.class public abstract Lcom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;
.super Ljava/lang/Object;
.source "AssetDownloader.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/downloader/AssetDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DownloadPriorityRunnable"
.end annotation


# static fields
.field private static final r:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final o:I

.field private final p:Lcom/vungle/warren/downloader/DownloadRequestMediator;

.field private final q:Lcom/vungle/warren/downloader/AssetPriority;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>(Lcom/vungle/warren/downloader/AssetPriority;)V
    .registers 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    sget-object v0, Lcom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lcom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;->o:I

    .line 8
    iput-object p1, p0, Lcom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;->q:Lcom/vungle/warren/downloader/AssetPriority;

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;->p:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    return-void
.end method

.method constructor <init>(Lcom/vungle/warren/downloader/DownloadRequestMediator;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lcom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;->o:I

    .line 3
    iput-object p1, p0, Lcom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;->p:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    .line 4
    iget-object v0, p1, Lcom/vungle/warren/downloader/DownloadRequestMediator;->priority:Lcom/vungle/warren/downloader/AssetPriority;

    iput-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;->q:Lcom/vungle/warren/downloader/AssetPriority;

    .line 5
    invoke-virtual {p1, p0}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->setRunnable(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method c()Lcom/vungle/warren/downloader/AssetPriority;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;->p:Lcom/vungle/warren/downloader/DownloadRequestMediator;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/vungle/warren/downloader/DownloadRequestMediator;->getPriority()Lcom/vungle/warren/downloader/AssetPriority;

    move-result-object v0

    goto :goto_b

    :cond_9
    iget-object v0, p0, Lcom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;->q:Lcom/vungle/warren/downloader/AssetPriority;

    :goto_b
    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 4

    .line 1
    instance-of v0, p1, Lcom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;

    if-eqz v0, :cond_25

    .line 2
    check-cast p1, Lcom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;

    .line 3
    invoke-virtual {p0}, Lcom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;->c()Lcom/vungle/warren/downloader/AssetPriority;

    move-result-object v0

    invoke-virtual {p1}, Lcom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;->c()Lcom/vungle/warren/downloader/AssetPriority;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/warren/downloader/AssetPriority;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_24

    .line 4
    iget v0, p0, Lcom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;->o:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p1, p1, Lcom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;->o:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    :cond_24
    return v0

    :cond_25
    const/4 p1, -0x1

    return p1
.end method

###### Class com.vungle.warren.downloader.AssetDownloader.NetworkType (com.vungle.warren.downloader.AssetDownloader$NetworkType)
.class public interface abstract annotation Lcom/vungle/warren/downloader/AssetDownloader$NetworkType;
.super Ljava/lang/Object;
.source "AssetDownloader.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/downloader/AssetDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "NetworkType"
.end annotation


# static fields
.field public static final ANY:I = 0x3

.field public static final CELLULAR:I = 0x1

.field public static final WIFI:I = 0x2
