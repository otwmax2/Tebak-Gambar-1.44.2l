###### Class com.vungle.warren.CacheBustManager (com.vungle.warren.CacheBustManager)
.class public Lcom/vungle/warren/CacheBustManager;
.super Ljava/lang/Object;
.source "CacheBustManager.java"

# interfaces
.implements Lcom/vungle/warren/CacheBustCallback;


# static fields
.field public static final CACHE_BUST_INTERVAL:Ljava/lang/String; = "cache_bust_interval"

.field public static final NEXT_CACHE_BUST:Ljava/lang/String; = "next_cache_bust"

.field public static final NO_VALUE:I = -0x80000000


# instance fields
.field private a:Lcom/vungle/warren/tasks/JobRunner;

.field b:J

.field private c:J

.field private d:Z


# direct methods
.method protected constructor <init>(Lcom/vungle/warren/tasks/JobRunner;)V
    .registers 5

    .line 1
    const-class v0, Lcom/vungle/warren/CacheBustManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, 0x0

    .line 2
    iput-wide v1, p0, Lcom/vungle/warren/CacheBustManager;->b:J

    const-wide/32 v1, -0x80000000

    .line 3
    iput-wide v1, p0, Lcom/vungle/warren/CacheBustManager;->c:J

    .line 4
    iput-object p1, p0, Lcom/vungle/warren/CacheBustManager;->a:Lcom/vungle/warren/tasks/JobRunner;

    .line 5
    invoke-static {}, Lcom/vungle/warren/utility/ActivityManager;->getInstance()Lcom/vungle/warren/utility/ActivityManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/warren/utility/ActivityManager;->isInitialized()Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 6
    invoke-direct {p0}, Lcom/vungle/warren/CacheBustManager;->d()V

    goto :goto_3f

    .line 7
    :cond_1e
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "No lifecycle listener set"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#deliverError"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3f
    return-void
.end method

.method static synthetic a(Lcom/vungle/warren/CacheBustManager;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/vungle/warren/CacheBustManager;->d:Z

    return p0
.end method

.method static synthetic b(Lcom/vungle/warren/CacheBustManager;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/vungle/warren/CacheBustManager;->d:Z

    return p1
.end method

.method static synthetic c(Lcom/vungle/warren/CacheBustManager;)Lcom/vungle/warren/tasks/JobRunner;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/CacheBustManager;->a:Lcom/vungle/warren/tasks/JobRunner;

    return-object p0
.end method

.method private d()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/vungle/warren/utility/ActivityManager;->getInstance()Lcom/vungle/warren/utility/ActivityManager;

    move-result-object v0

    new-instance v1, Lcom/vungle/warren/CacheBustManager$1;

    invoke-direct {v1, p0}, Lcom/vungle/warren/CacheBustManager$1;-><init>(Lcom/vungle/warren/CacheBustManager;)V

    invoke-virtual {v0, v1}, Lcom/vungle/warren/utility/ActivityManager;->addListener(Lcom/vungle/warren/utility/ActivityManager$LifeCycleCallback;)V

    return-void
.end method


# virtual methods
.method public onCacheBust()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/CacheBustManager;->a:Lcom/vungle/warren/tasks/JobRunner;

    invoke-static {}, Lcom/vungle/warren/tasks/CleanupJob;->makeJobInfo()Lcom/vungle/warren/tasks/JobInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/vungle/warren/tasks/JobRunner;->execute(Lcom/vungle/warren/tasks/JobInfo;)V

    return-void
.end method

.method public setRefreshRate(J)V
    .registers 8

    .line 1
    iget-wide v0, p0, Lcom/vungle/warren/CacheBustManager;->c:J

    const-wide/32 v2, -0x80000000

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    .line 2
    iput-wide v0, p0, Lcom/vungle/warren/CacheBustManager;->b:J

    return-void

    :cond_c
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_19

    const-wide/32 v0, 0xdbba0

    .line 3
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_19
    iput-wide v0, p0, Lcom/vungle/warren/CacheBustManager;->b:J

    return-void
.end method

.method public startBust()V
    .registers 7

    .line 1
    iget-wide v0, p0, Lcom/vungle/warren/CacheBustManager;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_12

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/CacheBustManager;->a:Lcom/vungle/warren/tasks/JobRunner;

    invoke-static {}, Lcom/vungle/warren/tasks/CacheBustJob;->makeJobInfo()Lcom/vungle/warren/tasks/JobInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/vungle/warren/tasks/JobRunner;->execute(Lcom/vungle/warren/tasks/JobInfo;)V

    goto :goto_3e

    .line 3
    :cond_12
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    iget-wide v1, p0, Lcom/vungle/warren/CacheBustManager;->b:J

    const-string v3, "cache_bust_interval"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/vungle/warren/CacheBustManager;->b:J

    add-long/2addr v1, v3

    const-string v3, "next_cache_bust"

    .line 6
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 7
    iget-object v1, p0, Lcom/vungle/warren/CacheBustManager;->a:Lcom/vungle/warren/tasks/JobRunner;

    .line 8
    invoke-static {}, Lcom/vungle/warren/tasks/CacheBustJob;->makeJobInfo()Lcom/vungle/warren/tasks/JobInfo;

    move-result-object v2

    iget-wide v3, p0, Lcom/vungle/warren/CacheBustManager;->b:J

    const/4 v5, 0x0

    .line 9
    invoke-virtual {v2, v3, v4, v5}, Lcom/vungle/warren/tasks/JobInfo;->setReschedulePolicy(JI)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object v2

    .line 10
    invoke-virtual {v2, v0}, Lcom/vungle/warren/tasks/JobInfo;->setExtras(Landroid/os/Bundle;)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object v0

    .line 11
    invoke-interface {v1, v0}, Lcom/vungle/warren/tasks/JobRunner;->execute(Lcom/vungle/warren/tasks/JobInfo;)V

    :goto_3e
    return-void
.end method

###### Class com.vungle.warren.CacheBustManager.AnonymousClass1 (com.vungle.warren.CacheBustManager$1)
.class Lcom/vungle/warren/CacheBustManager$1;
.super Lcom/vungle/warren/utility/ActivityManager$LifeCycleCallback;
.source "CacheBustManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/CacheBustManager;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/warren/CacheBustManager;


# direct methods
.method constructor <init>(Lcom/vungle/warren/CacheBustManager;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/CacheBustManager$1;->a:Lcom/vungle/warren/CacheBustManager;

    invoke-direct {p0}, Lcom/vungle/warren/utility/ActivityManager$LifeCycleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart()V
    .registers 7

    .line 1
    invoke-super {p0}, Lcom/vungle/warren/utility/ActivityManager$LifeCycleCallback;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/CacheBustManager$1;->a:Lcom/vungle/warren/CacheBustManager;

    invoke-static {v0}, Lcom/vungle/warren/CacheBustManager;->a(Lcom/vungle/warren/CacheBustManager;)Z

    move-result v0

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/vungle/warren/CacheBustManager$1;->a:Lcom/vungle/warren/CacheBustManager;

    iget-wide v1, v0, Lcom/vungle/warren/CacheBustManager;->b:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_56

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lcom/vungle/warren/CacheBustManager;->b(Lcom/vungle/warren/CacheBustManager;Z)Z

    .line 4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5
    iget-object v2, p0, Lcom/vungle/warren/CacheBustManager$1;->a:Lcom/vungle/warren/CacheBustManager;

    iget-wide v2, v2, Lcom/vungle/warren/CacheBustManager;->b:J

    const-string v4, "cache_bust_interval"

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/vungle/warren/CacheBustManager$1;->a:Lcom/vungle/warren/CacheBustManager;

    iget-wide v4, v4, Lcom/vungle/warren/CacheBustManager;->b:J

    add-long/2addr v2, v4

    const-string v4, "next_cache_bust"

    .line 7
    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 8
    iget-object v2, p0, Lcom/vungle/warren/CacheBustManager$1;->a:Lcom/vungle/warren/CacheBustManager;

    invoke-static {v2}, Lcom/vungle/warren/CacheBustManager;->c(Lcom/vungle/warren/CacheBustManager;)Lcom/vungle/warren/tasks/JobRunner;

    move-result-object v2

    .line 9
    invoke-static {}, Lcom/vungle/warren/tasks/CacheBustJob;->makeJobInfo()Lcom/vungle/warren/tasks/JobInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/vungle/warren/CacheBustManager$1;->a:Lcom/vungle/warren/CacheBustManager;

    iget-wide v4, v4, Lcom/vungle/warren/CacheBustManager;->b:J

    .line 10
    invoke-virtual {v3, v4, v5}, Lcom/vungle/warren/tasks/JobInfo;->setDelay(J)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/vungle/warren/CacheBustManager$1;->a:Lcom/vungle/warren/CacheBustManager;

    iget-wide v4, v4, Lcom/vungle/warren/CacheBustManager;->b:J

    .line 11
    invoke-virtual {v3, v4, v5, v1}, Lcom/vungle/warren/tasks/JobInfo;->setReschedulePolicy(JI)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object v1

    .line 12
    invoke-virtual {v1, v0}, Lcom/vungle/warren/tasks/JobInfo;->setExtras(Landroid/os/Bundle;)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object v0

    .line 13
    invoke-interface {v2, v0}, Lcom/vungle/warren/tasks/JobRunner;->execute(Lcom/vungle/warren/tasks/JobInfo;)V

    :cond_56
    return-void
.end method

.method public onStop()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/vungle/warren/utility/ActivityManager$LifeCycleCallback;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/CacheBustManager$1;->a:Lcom/vungle/warren/CacheBustManager;

    invoke-static {v0}, Lcom/vungle/warren/CacheBustManager;->c(Lcom/vungle/warren/CacheBustManager;)Lcom/vungle/warren/tasks/JobRunner;

    move-result-object v0

    sget-object v1, Lcom/vungle/warren/tasks/CacheBustJob;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/vungle/warren/tasks/JobRunner;->cancelPendingJob(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/vungle/warren/CacheBustManager$1;->a:Lcom/vungle/warren/CacheBustManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vungle/warren/CacheBustManager;->b(Lcom/vungle/warren/CacheBustManager;Z)Z

    return-void
.end method
