###### Class com.vungle.warren.analytics.JobDelegateAnalytics (com.vungle.warren.analytics.JobDelegateAnalytics)
.class public Lcom/vungle/warren/analytics/JobDelegateAnalytics;
.super Ljava/lang/Object;
.source "JobDelegateAnalytics.java"

# interfaces
.implements Lcom/vungle/warren/analytics/AdAnalytics;


# instance fields
.field private final a:Lcom/vungle/warren/tasks/JobRunner;


# direct methods
.method public constructor <init>(Lcom/vungle/warren/tasks/JobRunner;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vungle/warren/analytics/JobDelegateAnalytics;->a:Lcom/vungle/warren/tasks/JobRunner;

    return-void
.end method


# virtual methods
.method public ping([Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/analytics/JobDelegateAnalytics;->a:Lcom/vungle/warren/tasks/JobRunner;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3}, Lcom/vungle/warren/tasks/AnalyticsJob;->makeJob(ILjava/lang/String;[Ljava/lang/String;I)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/vungle/warren/tasks/JobRunner;->execute(Lcom/vungle/warren/tasks/JobInfo;)V

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/analytics/JobDelegateAnalytics;->a:Lcom/vungle/warren/tasks/JobRunner;

    const/4 v1, 0x1

    invoke-static {v1, v2, p1, v1}, Lcom/vungle/warren/tasks/AnalyticsJob;->makeJob(ILjava/lang/String;[Ljava/lang/String;I)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/vungle/warren/tasks/JobRunner;->execute(Lcom/vungle/warren/tasks/JobInfo;)V

    new-array p1, v3, [Ljava/lang/String;

    return-object p1
.end method

.method public retryUnsent()[Ljava/lang/String;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/analytics/JobDelegateAnalytics;->a:Lcom/vungle/warren/tasks/JobRunner;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v2, v3}, Lcom/vungle/warren/tasks/AnalyticsJob;->makeJob(ILjava/lang/String;[Ljava/lang/String;I)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/vungle/warren/tasks/JobRunner;->execute(Lcom/vungle/warren/tasks/JobInfo;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public ri(Lcom/google/gson/o;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/analytics/JobDelegateAnalytics;->a:Lcom/vungle/warren/tasks/JobRunner;

    invoke-virtual {p1}, Lcom/google/gson/l;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, p1, v2, v3}, Lcom/vungle/warren/tasks/AnalyticsJob;->makeJob(ILjava/lang/String;[Ljava/lang/String;I)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/vungle/warren/tasks/JobRunner;->execute(Lcom/vungle/warren/tasks/JobInfo;)V

    return-void
.end method

.method public saveVungleUrls([Ljava/lang/String;)V
    .registers 2

    return-void
.end method
