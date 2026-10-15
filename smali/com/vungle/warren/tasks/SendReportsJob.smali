###### Class com.vungle.warren.tasks.SendReportsJob (com.vungle.warren.tasks.SendReportsJob)
.class public Lcom/vungle/warren/tasks/SendReportsJob;
.super Ljava/lang/Object;
.source "SendReportsJob.java"

# interfaces
.implements Lcom/vungle/warren/tasks/Job;


# static fields
.field static final c:Ljava/lang/String; = "com.vungle.warren.tasks.SendReportsJob"


# instance fields
.field private a:Lcom/vungle/warren/persistence/Repository;

.field private b:Lcom/vungle/warren/VungleApiClient;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/VungleApiClient;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vungle/warren/tasks/SendReportsJob;->a:Lcom/vungle/warren/persistence/Repository;

    .line 3
    iput-object p2, p0, Lcom/vungle/warren/tasks/SendReportsJob;->b:Lcom/vungle/warren/VungleApiClient;

    return-void
.end method

.method public static makeJobInfo(Z)Lcom/vungle/warren/tasks/JobInfo;
    .registers 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "sendAll"

    .line 2
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3
    new-instance p0, Lcom/vungle/warren/tasks/JobInfo;

    sget-object v1, Lcom/vungle/warren/tasks/SendReportsJob;->c:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/vungle/warren/tasks/JobInfo;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/vungle/warren/tasks/JobInfo;->setExtras(Landroid/os/Bundle;)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object p0

    const/4 v0, 0x5

    .line 5
    invoke-virtual {p0, v0}, Lcom/vungle/warren/tasks/JobInfo;->setPriority(I)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object p0

    const-wide/16 v0, 0x7530

    const/4 v2, 0x1

    .line 6
    invoke-virtual {p0, v0, v1, v2}, Lcom/vungle/warren/tasks/JobInfo;->setReschedulePolicy(JI)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onRunJob(Landroid/os/Bundle;Lcom/vungle/warren/tasks/JobRunner;)I
    .registers 12

    const-string v0, "sendAll"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 2
    iget-object p1, p0, Lcom/vungle/warren/tasks/SendReportsJob;->a:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {p1}, Lcom/vungle/warren/persistence/Repository;->loadAllReportToSend()Lcom/vungle/warren/persistence/FutureResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    goto :goto_22

    .line 3
    :cond_16
    iget-object p1, p0, Lcom/vungle/warren/tasks/SendReportsJob;->a:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {p1}, Lcom/vungle/warren/persistence/Repository;->loadReadyOrFailedReportToSend()Lcom/vungle/warren/persistence/FutureResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    :goto_22
    const/4 v0, 0x1

    if-nez p1, :cond_26

    return v0

    .line 4
    :cond_26
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2a
    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vungle/warren/model/Report;

    const/4 v4, 0x3

    .line 5
    :try_start_37
    iget-object v5, p0, Lcom/vungle/warren/tasks/SendReportsJob;->b:Lcom/vungle/warren/VungleApiClient;

    invoke-virtual {v3}, Lcom/vungle/warren/model/Report;->toReportBody()Lcom/google/gson/o;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/vungle/warren/VungleApiClient;->reportAd(Lcom/google/gson/o;)Lcom/vungle/warren/network/Call;

    move-result-object v5

    invoke-interface {v5}, Lcom/vungle/warren/network/Call;->execute()Lcom/vungle/warren/network/Response;

    move-result-object v5

    .line 6
    invoke-virtual {v5}, Lcom/vungle/warren/network/Response;->code()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_53

    .line 7
    iget-object v5, p0, Lcom/vungle/warren/tasks/SendReportsJob;->a:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v5, v3}, Lcom/vungle/warren/persistence/Repository;->delete(Ljava/lang/Object;)V

    goto :goto_2a

    .line 8
    :cond_53
    invoke-virtual {v3, v4}, Lcom/vungle/warren/model/Report;->setStatus(I)V

    .line 9
    iget-object v6, p0, Lcom/vungle/warren/tasks/SendReportsJob;->a:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v6, v3}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V

    .line 10
    iget-object v3, p0, Lcom/vungle/warren/tasks/SendReportsJob;->b:Lcom/vungle/warren/VungleApiClient;

    invoke-virtual {v3, v5}, Lcom/vungle/warren/VungleApiClient;->getRetryAfterHeaderValue(Lcom/vungle/warren/network/Response;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-lez v3, :cond_2a

    .line 11
    invoke-static {v1}, Lcom/vungle/warren/tasks/SendReportsJob;->makeJobInfo(Z)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Lcom/vungle/warren/tasks/JobInfo;->setDelay(J)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/vungle/warren/tasks/JobRunner;->execute(Lcom/vungle/warren/tasks/JobInfo;)V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_72} :catch_73
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_37 .. :try_end_72} :catch_72

    :catch_72
    return v0

    :catch_73
    move-exception p2

    .line 12
    sget-object v1, Lcom/vungle/warren/tasks/SendReportsJob;->c:Ljava/lang/String;

    const-string v2, "SendReportsJob: IOEx"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_95

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/model/Report;

    .line 14
    invoke-virtual {v1, v4}, Lcom/vungle/warren/model/Report;->setStatus(I)V

    .line 15
    :try_start_8e
    iget-object v2, p0, Lcom/vungle/warren/tasks/SendReportsJob;->a:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v2, v1}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V
    :try_end_93
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_8e .. :try_end_93} :catch_94

    goto :goto_7f

    :catch_94
    return v0

    .line 16
    :cond_95
    sget-object p1, Lcom/vungle/warren/tasks/SendReportsJob;->c:Ljava/lang/String;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    return p1

    :cond_a0
    return v1
.end method
