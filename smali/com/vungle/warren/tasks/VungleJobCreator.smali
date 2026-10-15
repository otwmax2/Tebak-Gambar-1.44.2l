###### Class com.vungle.warren.tasks.VungleJobCreator (com.vungle.warren.tasks.VungleJobCreator)
.class public Lcom/vungle/warren/tasks/VungleJobCreator;
.super Ljava/lang/Object;
.source "VungleJobCreator.java"

# interfaces
.implements Lcom/vungle/warren/tasks/JobCreator;


# instance fields
.field private final a:Lcom/vungle/warren/persistence/Repository;

.field private final b:Lcom/vungle/warren/persistence/Designer;

.field private final c:Lcom/vungle/warren/tasks/ReconfigJob$ReconfigCall;

.field private final d:Lcom/vungle/warren/VungleApiClient;

.field private final e:Lcom/vungle/warren/analytics/AdAnalytics;

.field private final f:Lcom/vungle/warren/AdLoader;

.field private final g:Lcom/vungle/warren/VungleStaticApi;

.field private final h:Lcom/vungle/warren/log/LogManager;

.field private final i:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/persistence/Designer;Lcom/vungle/warren/VungleApiClient;Lcom/vungle/warren/analytics/AdAnalytics;Lcom/vungle/warren/tasks/ReconfigJob$ReconfigCall;Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/VungleStaticApi;Lcom/vungle/warren/log/LogManager;Ljava/util/concurrent/ExecutorService;)V
    .registers 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vungle/warren/tasks/VungleJobCreator;->a:Lcom/vungle/warren/persistence/Repository;

    .line 3
    iput-object p2, p0, Lcom/vungle/warren/tasks/VungleJobCreator;->b:Lcom/vungle/warren/persistence/Designer;

    .line 4
    iput-object p5, p0, Lcom/vungle/warren/tasks/VungleJobCreator;->c:Lcom/vungle/warren/tasks/ReconfigJob$ReconfigCall;

    .line 5
    iput-object p3, p0, Lcom/vungle/warren/tasks/VungleJobCreator;->d:Lcom/vungle/warren/VungleApiClient;

    .line 6
    iput-object p4, p0, Lcom/vungle/warren/tasks/VungleJobCreator;->e:Lcom/vungle/warren/analytics/AdAnalytics;

    .line 7
    iput-object p6, p0, Lcom/vungle/warren/tasks/VungleJobCreator;->f:Lcom/vungle/warren/AdLoader;

    .line 8
    iput-object p7, p0, Lcom/vungle/warren/tasks/VungleJobCreator;->g:Lcom/vungle/warren/VungleStaticApi;

    .line 9
    iput-object p8, p0, Lcom/vungle/warren/tasks/VungleJobCreator;->h:Lcom/vungle/warren/log/LogManager;

    .line 10
    iput-object p9, p0, Lcom/vungle/warren/tasks/VungleJobCreator;->i:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;)Lcom/vungle/warren/tasks/Job;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/tasks/UnknownTagException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9b

    .line 2
    sget-object v0, Lcom/vungle/warren/tasks/ReconfigJob;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3
    new-instance p1, Lcom/vungle/warren/tasks/ReconfigJob;

    iget-object v0, p0, Lcom/vungle/warren/tasks/VungleJobCreator;->c:Lcom/vungle/warren/tasks/ReconfigJob$ReconfigCall;

    invoke-direct {p1, v0}, Lcom/vungle/warren/tasks/ReconfigJob;-><init>(Lcom/vungle/warren/tasks/ReconfigJob$ReconfigCall;)V

    return-object p1

    .line 4
    :cond_16
    sget-object v0, Lcom/vungle/warren/tasks/DownloadJob;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 5
    new-instance p1, Lcom/vungle/warren/tasks/DownloadJob;

    iget-object v0, p0, Lcom/vungle/warren/tasks/VungleJobCreator;->f:Lcom/vungle/warren/AdLoader;

    iget-object v1, p0, Lcom/vungle/warren/tasks/VungleJobCreator;->g:Lcom/vungle/warren/VungleStaticApi;

    invoke-direct {p1, v0, v1}, Lcom/vungle/warren/tasks/DownloadJob;-><init>(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/VungleStaticApi;)V

    return-object p1

    .line 6
    :cond_28
    sget-object v0, Lcom/vungle/warren/tasks/SendReportsJob;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 7
    new-instance p1, Lcom/vungle/warren/tasks/SendReportsJob;

    iget-object v0, p0, Lcom/vungle/warren/tasks/VungleJobCreator;->a:Lcom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lcom/vungle/warren/tasks/VungleJobCreator;->d:Lcom/vungle/warren/VungleApiClient;

    invoke-direct {p1, v0, v1}, Lcom/vungle/warren/tasks/SendReportsJob;-><init>(Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/VungleApiClient;)V

    return-object p1

    .line 8
    :cond_3a
    sget-object v0, Lcom/vungle/warren/tasks/CleanupJob;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 9
    new-instance p1, Lcom/vungle/warren/tasks/CleanupJob;

    iget-object v0, p0, Lcom/vungle/warren/tasks/VungleJobCreator;->b:Lcom/vungle/warren/persistence/Designer;

    iget-object v1, p0, Lcom/vungle/warren/tasks/VungleJobCreator;->a:Lcom/vungle/warren/persistence/Repository;

    iget-object v2, p0, Lcom/vungle/warren/tasks/VungleJobCreator;->f:Lcom/vungle/warren/AdLoader;

    invoke-direct {p1, v0, v1, v2}, Lcom/vungle/warren/tasks/CleanupJob;-><init>(Lcom/vungle/warren/persistence/Designer;Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/AdLoader;)V

    return-object p1

    .line 10
    :cond_4e
    sget-object v0, Lcom/vungle/warren/tasks/AnalyticsJob;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 11
    new-instance p1, Lcom/vungle/warren/tasks/AnalyticsJob;

    iget-object v0, p0, Lcom/vungle/warren/tasks/VungleJobCreator;->e:Lcom/vungle/warren/analytics/AdAnalytics;

    invoke-direct {p1, v0}, Lcom/vungle/warren/tasks/AnalyticsJob;-><init>(Lcom/vungle/warren/analytics/AdAnalytics;)V

    return-object p1

    .line 12
    :cond_5e
    sget-object v0, Lcom/vungle/warren/tasks/SendLogsJob;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 13
    new-instance p1, Lcom/vungle/warren/tasks/SendLogsJob;

    iget-object v0, p0, Lcom/vungle/warren/tasks/VungleJobCreator;->h:Lcom/vungle/warren/log/LogManager;

    invoke-direct {p1, v0}, Lcom/vungle/warren/tasks/SendLogsJob;-><init>(Lcom/vungle/warren/log/LogManager;)V

    return-object p1

    .line 14
    :cond_6e
    sget-object v0, Lcom/vungle/warren/tasks/CacheBustJob;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 15
    new-instance p1, Lcom/vungle/warren/tasks/CacheBustJob;

    iget-object v0, p0, Lcom/vungle/warren/tasks/VungleJobCreator;->d:Lcom/vungle/warren/VungleApiClient;

    iget-object v1, p0, Lcom/vungle/warren/tasks/VungleJobCreator;->a:Lcom/vungle/warren/persistence/Repository;

    iget-object v2, p0, Lcom/vungle/warren/tasks/VungleJobCreator;->i:Ljava/util/concurrent/ExecutorService;

    iget-object v3, p0, Lcom/vungle/warren/tasks/VungleJobCreator;->f:Lcom/vungle/warren/AdLoader;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/vungle/warren/tasks/CacheBustJob;-><init>(Lcom/vungle/warren/VungleApiClient;Lcom/vungle/warren/persistence/Repository;Ljava/util/concurrent/ExecutorService;Lcom/vungle/warren/AdLoader;)V

    return-object p1

    .line 16
    :cond_84
    new-instance v0, Lcom/vungle/warren/tasks/UnknownTagException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Job Type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vungle/warren/tasks/UnknownTagException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_9b
    new-instance p1, Lcom/vungle/warren/tasks/UnknownTagException;

    const-string v0, "Job tag is null"

    invoke-direct {p1, v0}, Lcom/vungle/warren/tasks/UnknownTagException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
