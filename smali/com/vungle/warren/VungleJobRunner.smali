###### Class com.vungle.warren.VungleJobRunner (com.vungle.warren.VungleJobRunner)
.class Lcom/vungle/warren/VungleJobRunner;
.super Ljava/lang/Object;
.source "VungleJobRunner.java"

# interfaces
.implements Lcom/vungle/warren/tasks/JobRunner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/VungleJobRunner$PendingRunnable;,
        Lcom/vungle/warren/VungleJobRunner$PendingJob;
    }
.end annotation


# static fields
.field private static i:Landroid/os/Handler;

.field private static final j:Ljava/lang/String;


# instance fields
.field private final a:Lcom/vungle/warren/tasks/utility/ThreadPriorityHelper;

.field private final b:Lcom/vungle/warren/utility/NetworkProvider;

.field private c:Lcom/vungle/warren/tasks/JobCreator;

.field private d:Ljava/util/concurrent/Executor;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/vungle/warren/VungleJobRunner$PendingJob;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/Runnable;

.field private g:J

.field private final h:Lcom/vungle/warren/utility/NetworkProvider$NetworkListener;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/vungle/warren/VungleJobRunner;->i:Landroid/os/Handler;

    .line 2
    const-class v0, Lcom/vungle/warren/VungleJobRunner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vungle/warren/VungleJobRunner;->j:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/vungle/warren/tasks/JobCreator;Ljava/util/concurrent/Executor;Lcom/vungle/warren/tasks/utility/ThreadPriorityHelper;Lcom/vungle/warren/utility/NetworkProvider;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x7fffffffffffffffL

    .line 2
    iput-wide v0, p0, Lcom/vungle/warren/VungleJobRunner;->g:J

    .line 3
    new-instance v0, Lcom/vungle/warren/VungleJobRunner$1;

    invoke-direct {v0, p0}, Lcom/vungle/warren/VungleJobRunner$1;-><init>(Lcom/vungle/warren/VungleJobRunner;)V

    iput-object v0, p0, Lcom/vungle/warren/VungleJobRunner;->h:Lcom/vungle/warren/utility/NetworkProvider$NetworkListener;

    .line 4
    iput-object p1, p0, Lcom/vungle/warren/VungleJobRunner;->c:Lcom/vungle/warren/tasks/JobCreator;

    .line 5
    iput-object p2, p0, Lcom/vungle/warren/VungleJobRunner;->d:Ljava/util/concurrent/Executor;

    .line 6
    iput-object p3, p0, Lcom/vungle/warren/VungleJobRunner;->a:Lcom/vungle/warren/tasks/utility/ThreadPriorityHelper;

    .line 7
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/vungle/warren/VungleJobRunner;->e:Ljava/util/List;

    .line 8
    iput-object p4, p0, Lcom/vungle/warren/VungleJobRunner;->b:Lcom/vungle/warren/utility/NetworkProvider;

    .line 9
    new-instance p1, Lcom/vungle/warren/VungleJobRunner$PendingRunnable;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p1, p2}, Lcom/vungle/warren/VungleJobRunner$PendingRunnable;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object p1, p0, Lcom/vungle/warren/VungleJobRunner;->f:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/vungle/warren/VungleJobRunner;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/vungle/warren/VungleJobRunner;->b()V

    return-void
.end method

.method private declared-synchronized b()V
    .registers 18

    move-object/from16 v1, p0

    monitor-enter p0

    .line 1
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2
    iget-object v0, v1, Lcom/vungle/warren/VungleJobRunner;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide v6, 0x7fffffffffffffffL

    move-wide v8, v6

    const-wide/16 v10, 0x0

    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vungle/warren/VungleJobRunner$PendingJob;

    .line 3
    invoke-static {v12}, Lcom/vungle/warren/VungleJobRunner$PendingJob;->a(Lcom/vungle/warren/VungleJobRunner$PendingJob;)J

    move-result-wide v13

    cmp-long v15, v2, v13

    if-ltz v15, :cond_57

    .line 4
    iget-object v13, v12, Lcom/vungle/warren/VungleJobRunner$PendingJob;->b:Lcom/vungle/warren/tasks/JobInfo;

    invoke-virtual {v13}, Lcom/vungle/warren/tasks/JobInfo;->getRequiredNetworkType()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3f

    iget-object v13, v1, Lcom/vungle/warren/VungleJobRunner;->b:Lcom/vungle/warren/utility/NetworkProvider;

    .line 5
    invoke-virtual {v13}, Lcom/vungle/warren/utility/NetworkProvider;->getCurrentNetworkType()I

    move-result v13

    const/4 v15, -0x1

    if-ne v13, v15, :cond_3f

    const/4 v14, 0x0

    const-wide/16 v15, 0x1

    add-long/2addr v10, v15

    :cond_3f
    if-eqz v14, :cond_15

    .line 6
    iget-object v13, v1, Lcom/vungle/warren/VungleJobRunner;->e:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7
    iget-object v13, v1, Lcom/vungle/warren/VungleJobRunner;->d:Ljava/util/concurrent/Executor;

    new-instance v14, Lcom/vungle/warren/tasks/runnable/JobRunnable;

    iget-object v12, v12, Lcom/vungle/warren/VungleJobRunner$PendingJob;->b:Lcom/vungle/warren/tasks/JobInfo;

    iget-object v15, v1, Lcom/vungle/warren/VungleJobRunner;->c:Lcom/vungle/warren/tasks/JobCreator;

    iget-object v4, v1, Lcom/vungle/warren/VungleJobRunner;->a:Lcom/vungle/warren/tasks/utility/ThreadPriorityHelper;

    invoke-direct {v14, v12, v15, v1, v4}, Lcom/vungle/warren/tasks/runnable/JobRunnable;-><init>(Lcom/vungle/warren/tasks/JobInfo;Lcom/vungle/warren/tasks/JobCreator;Lcom/vungle/warren/tasks/JobRunner;Lcom/vungle/warren/tasks/utility/ThreadPriorityHelper;)V

    invoke-interface {v13, v14}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_15

    .line 8
    :cond_57
    invoke-static {v12}, Lcom/vungle/warren/VungleJobRunner$PendingJob;->a(Lcom/vungle/warren/VungleJobRunner$PendingJob;)J

    move-result-wide v4

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    goto :goto_15

    :cond_60
    cmp-long v0, v8, v6

    if-eqz v0, :cond_7a

    .line 9
    iget-wide v2, v1, Lcom/vungle/warren/VungleJobRunner;->g:J

    cmp-long v0, v8, v2

    if-eqz v0, :cond_7a

    .line 10
    sget-object v0, Lcom/vungle/warren/VungleJobRunner;->i:Landroid/os/Handler;

    iget-object v2, v1, Lcom/vungle/warren/VungleJobRunner;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    sget-object v0, Lcom/vungle/warren/VungleJobRunner;->i:Landroid/os/Handler;

    iget-object v2, v1, Lcom/vungle/warren/VungleJobRunner;->f:Ljava/lang/Runnable;

    sget-object v3, Lcom/vungle/warren/VungleJobRunner;->j:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v8, v9}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 12
    :cond_7a
    iput-wide v8, v1, Lcom/vungle/warren/VungleJobRunner;->g:J

    const-wide/16 v2, 0x0

    cmp-long v0, v10, v2

    if-lez v0, :cond_8a

    .line 13
    iget-object v0, v1, Lcom/vungle/warren/VungleJobRunner;->b:Lcom/vungle/warren/utility/NetworkProvider;

    iget-object v2, v1, Lcom/vungle/warren/VungleJobRunner;->h:Lcom/vungle/warren/utility/NetworkProvider$NetworkListener;

    invoke-virtual {v0, v2}, Lcom/vungle/warren/utility/NetworkProvider;->addListener(Lcom/vungle/warren/utility/NetworkProvider$NetworkListener;)V

    goto :goto_91

    .line 14
    :cond_8a
    iget-object v0, v1, Lcom/vungle/warren/VungleJobRunner;->b:Lcom/vungle/warren/utility/NetworkProvider;

    iget-object v2, v1, Lcom/vungle/warren/VungleJobRunner;->h:Lcom/vungle/warren/utility/NetworkProvider$NetworkListener;

    invoke-virtual {v0, v2}, Lcom/vungle/warren/utility/NetworkProvider;->removeListener(Lcom/vungle/warren/utility/NetworkProvider$NetworkListener;)V
    :try_end_91
    .catchall {:try_start_3 .. :try_end_91} :catchall_93

    .line 15
    :goto_91
    monitor-exit p0

    return-void

    :catchall_93
    move-exception v0

    monitor-exit p0

    goto :goto_97

    :goto_96
    throw v0

    :goto_97
    goto :goto_96
.end method


# virtual methods
.method public declared-synchronized cancelPendingJob(Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    .line 1
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/vungle/warren/VungleJobRunner;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/VungleJobRunner$PendingJob;

    .line 3
    iget-object v3, v2, Lcom/vungle/warren/VungleJobRunner$PendingJob;->b:Lcom/vungle/warren/tasks/JobInfo;

    invoke-virtual {v3}, Lcom/vungle/warren/tasks/JobInfo;->getJobTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 4
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 5
    :cond_28
    iget-object p1, p0, Lcom/vungle/warren/VungleJobRunner;->e:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_2f

    .line 6
    monitor-exit p0

    return-void

    :catchall_2f
    move-exception p1

    monitor-exit p0

    goto :goto_33

    :goto_32
    throw p1

    :goto_33
    goto :goto_32
.end method

.method public declared-synchronized execute(Lcom/vungle/warren/tasks/JobInfo;)V
    .registers 10

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-virtual {p1}, Lcom/vungle/warren/tasks/JobInfo;->copy()Lcom/vungle/warren/tasks/JobInfo;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/vungle/warren/tasks/JobInfo;->getJobTag()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/vungle/warren/tasks/JobInfo;->getDelay()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    .line 4
    invoke-virtual {p1, v3, v4}, Lcom/vungle/warren/tasks/JobInfo;->setDelay(J)Lcom/vungle/warren/tasks/JobInfo;

    .line 5
    invoke-virtual {p1}, Lcom/vungle/warren/tasks/JobInfo;->getUpdateCurrent()Z

    move-result v3

    if-eqz v3, :cond_52

    .line 6
    iget-object v3, p0, Lcom/vungle/warren/VungleJobRunner;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1e
    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_52

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vungle/warren/VungleJobRunner$PendingJob;

    .line 7
    iget-object v5, v4, Lcom/vungle/warren/VungleJobRunner$PendingJob;->b:Lcom/vungle/warren/tasks/JobInfo;

    invoke-virtual {v5}, Lcom/vungle/warren/tasks/JobInfo;->getJobTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 8
    sget-object v5, Lcom/vungle/warren/VungleJobRunner;->j:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "replacing pending job with new "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v5, p0, Lcom/vungle/warren/VungleJobRunner;->e:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 10
    :cond_52
    iget-object v0, p0, Lcom/vungle/warren/VungleJobRunner;->e:Ljava/util/List;

    new-instance v3, Lcom/vungle/warren/VungleJobRunner$PendingJob;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v1

    invoke-direct {v3, v4, v5, p1}, Lcom/vungle/warren/VungleJobRunner$PendingJob;-><init>(JLcom/vungle/warren/tasks/JobInfo;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-direct {p0}, Lcom/vungle/warren/VungleJobRunner;->b()V
    :try_end_64
    .catchall {:try_start_1 .. :try_end_64} :catchall_66

    .line 12
    monitor-exit p0

    return-void

    :catchall_66
    move-exception p1

    monitor-exit p0

    goto :goto_6a

    :goto_69
    throw p1

    :goto_6a
    goto :goto_69
.end method

###### Class com.vungle.warren.VungleJobRunner.AnonymousClass1 (com.vungle.warren.VungleJobRunner$1)
.class Lcom/vungle/warren/VungleJobRunner$1;
.super Ljava/lang/Object;
.source "VungleJobRunner.java"

# interfaces
.implements Lcom/vungle/warren/utility/NetworkProvider$NetworkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/VungleJobRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/warren/VungleJobRunner;


# direct methods
.method constructor <init>(Lcom/vungle/warren/VungleJobRunner;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/VungleJobRunner$1;->a:Lcom/vungle/warren/VungleJobRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(I)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/vungle/warren/VungleJobRunner$1;->a:Lcom/vungle/warren/VungleJobRunner;

    invoke-static {p1}, Lcom/vungle/warren/VungleJobRunner;->a(Lcom/vungle/warren/VungleJobRunner;)V

    return-void
.end method

###### Class com.vungle.warren.VungleJobRunner.PendingJob (com.vungle.warren.VungleJobRunner$PendingJob)
.class Lcom/vungle/warren/VungleJobRunner$PendingJob;
.super Ljava/lang/Object;
.source "VungleJobRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/VungleJobRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingJob"
.end annotation


# instance fields
.field private final a:J

.field b:Lcom/vungle/warren/tasks/JobInfo;


# direct methods
.method constructor <init>(JLcom/vungle/warren/tasks/JobInfo;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/vungle/warren/VungleJobRunner$PendingJob;->a:J

    .line 3
    iput-object p3, p0, Lcom/vungle/warren/VungleJobRunner$PendingJob;->b:Lcom/vungle/warren/tasks/JobInfo;

    return-void
.end method

.method static synthetic a(Lcom/vungle/warren/VungleJobRunner$PendingJob;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/vungle/warren/VungleJobRunner$PendingJob;->a:J

    return-wide v0
.end method

###### Class com.vungle.warren.VungleJobRunner.PendingRunnable (com.vungle.warren.VungleJobRunner$PendingRunnable)
.class Lcom/vungle/warren/VungleJobRunner$PendingRunnable;
.super Ljava/lang/Object;
.source "VungleJobRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/VungleJobRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingRunnable"
.end annotation


# instance fields
.field o:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/vungle/warren/VungleJobRunner;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/vungle/warren/VungleJobRunner;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vungle/warren/VungleJobRunner$PendingRunnable;->o:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/VungleJobRunner$PendingRunnable;->o:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/VungleJobRunner;

    if-eqz v0, :cond_d

    .line 2
    invoke-static {v0}, Lcom/vungle/warren/VungleJobRunner;->a(Lcom/vungle/warren/VungleJobRunner;)V

    :cond_d
    return-void
.end method
