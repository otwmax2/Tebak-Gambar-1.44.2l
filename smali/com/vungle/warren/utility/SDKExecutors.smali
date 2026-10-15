###### Class com.vungle.warren.utility.SDKExecutors (com.vungle.warren.utility.SDKExecutors)
.class public Lcom/vungle/warren/utility/SDKExecutors;
.super Ljava/lang/Object;
.source "SDKExecutors.java"

# interfaces
.implements Lcom/vungle/warren/utility/Executors;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/utility/SDKExecutors$NamedThreadFactory;
    }
.end annotation


# static fields
.field private static a:I

.field private static final b:Ljava/util/concurrent/ExecutorService;

.field private static final c:Ljava/util/concurrent/ExecutorService;

.field private static final d:Ljava/util/concurrent/ExecutorService;

.field private static final e:Ljava/util/concurrent/ExecutorService;

.field private static final f:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final g:Ljava/util/concurrent/ExecutorService;

.field private static final h:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 19

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/vungle/warren/utility/SDKExecutors;->a:I

    .line 2
    new-instance v0, Lcom/vungle/warren/utility/SDKExecutors$1;

    invoke-direct {v0}, Lcom/vungle/warren/utility/SDKExecutors$1;-><init>()V

    .line 3
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v3, Lcom/vungle/warren/utility/SDKExecutors;->a:I

    sget-object v18, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v8, Lcom/vungle/warren/utility/SDKExecutors$NamedThreadFactory;

    const-string v1, "vng_jr"

    invoke-direct {v8, v1}, Lcom/vungle/warren/utility/SDKExecutors$NamedThreadFactory;-><init>(Ljava/lang/String;)V

    const-wide/16 v4, 0x1

    move-object v1, v9

    move v2, v3

    move-object/from16 v6, v18

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v9, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 5
    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v16, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {v16 .. v16}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v3, Lcom/vungle/warren/utility/SDKExecutors$NamedThreadFactory;

    const-string v4, "vng_io"

    invoke-direct {v3, v4}, Lcom/vungle/warren/utility/SDKExecutors$NamedThreadFactory;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x1

    const/4 v12, 0x1

    const-wide/16 v13, 0x5

    move-object v10, v2

    move-object/from16 v15, v18

    move-object/from16 v17, v3

    invoke-direct/range {v10 .. v17}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 6
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 7
    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v16, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {v16 .. v16}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v4, Lcom/vungle/warren/utility/SDKExecutors$NamedThreadFactory;

    const-string v5, "vng_logger"

    invoke-direct {v4, v5}, Lcom/vungle/warren/utility/SDKExecutors$NamedThreadFactory;-><init>(Ljava/lang/String;)V

    move-object v10, v3

    move-object/from16 v17, v4

    invoke-direct/range {v10 .. v17}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 8
    invoke-virtual {v3, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 9
    new-instance v4, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v16, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {v16 .. v16}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v5, Lcom/vungle/warren/utility/SDKExecutors$NamedThreadFactory;

    const-string v6, "vng_background"

    invoke-direct {v5, v6}, Lcom/vungle/warren/utility/SDKExecutors$NamedThreadFactory;-><init>(Ljava/lang/String;)V

    const-wide/16 v13, 0xa

    move-object v10, v4

    move-object/from16 v17, v5

    invoke-direct/range {v10 .. v17}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 10
    invoke-virtual {v4, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 11
    new-instance v5, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v16, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {v16 .. v16}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v6, Lcom/vungle/warren/utility/SDKExecutors$NamedThreadFactory;

    const-string v7, "vng_api"

    invoke-direct {v6, v7}, Lcom/vungle/warren/utility/SDKExecutors$NamedThreadFactory;-><init>(Ljava/lang/String;)V

    move-object v10, v5

    move-object/from16 v17, v6

    invoke-direct/range {v10 .. v17}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 12
    invoke-virtual {v5, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 13
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v16, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct/range {v16 .. v16}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v6, Lcom/vungle/warren/utility/SDKExecutors$NamedThreadFactory;

    const-string v7, "vng_task"

    invoke-direct {v6, v7}, Lcom/vungle/warren/utility/SDKExecutors$NamedThreadFactory;-><init>(Ljava/lang/String;)V

    const/16 v12, 0x14

    move-object v10, v1

    move-object/from16 v17, v6

    invoke-direct/range {v10 .. v17}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 14
    sput-object v0, Lcom/vungle/warren/utility/SDKExecutors;->e:Ljava/util/concurrent/ExecutorService;

    .line 15
    sput-object v9, Lcom/vungle/warren/utility/SDKExecutors;->d:Ljava/util/concurrent/ExecutorService;

    .line 16
    sput-object v2, Lcom/vungle/warren/utility/SDKExecutors;->b:Ljava/util/concurrent/ExecutorService;

    .line 17
    sput-object v4, Lcom/vungle/warren/utility/SDKExecutors;->c:Ljava/util/concurrent/ExecutorService;

    .line 18
    sput-object v5, Lcom/vungle/warren/utility/SDKExecutors;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 19
    sput-object v3, Lcom/vungle/warren/utility/SDKExecutors;->g:Ljava/util/concurrent/ExecutorService;

    .line 20
    sput-object v1, Lcom/vungle/warren/utility/SDKExecutors;->h:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApiExecutor()Ljava/util/concurrent/ExecutorService;
    .registers 2

    .line 1
    sget-object v0, Lcom/vungle/warren/utility/SDKExecutors;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public getBackgroundExecutor()Ljava/util/concurrent/ExecutorService;
    .registers 2

    .line 1
    sget-object v0, Lcom/vungle/warren/utility/SDKExecutors;->c:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getIOExecutor()Ljava/util/concurrent/ExecutorService;
    .registers 2

    .line 1
    sget-object v0, Lcom/vungle/warren/utility/SDKExecutors;->b:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getJobExecutor()Ljava/util/concurrent/ExecutorService;
    .registers 2

    .line 1
    sget-object v0, Lcom/vungle/warren/utility/SDKExecutors;->d:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getLoggerExecutor()Ljava/util/concurrent/ExecutorService;
    .registers 2

    .line 1
    sget-object v0, Lcom/vungle/warren/utility/SDKExecutors;->g:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getTaskExecutor()Ljava/util/concurrent/ExecutorService;
    .registers 2

    .line 1
    sget-object v0, Lcom/vungle/warren/utility/SDKExecutors;->h:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getUIExecutor()Ljava/util/concurrent/ExecutorService;
    .registers 2

    .line 1
    sget-object v0, Lcom/vungle/warren/utility/SDKExecutors;->e:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

###### Class com.vungle.warren.utility.SDKExecutors.AnonymousClass1 (com.vungle.warren.utility.SDKExecutors$1)
.class Lcom/vungle/warren/utility/SDKExecutors$1;
.super Ljava/util/concurrent/AbstractExecutorService;
.source "SDKExecutors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/utility/SDKExecutors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final o:Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vungle/warren/utility/SDKExecutors$1;->o:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public execute(Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/utility/SDKExecutors$1;->o:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public isShutdown()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isTerminated()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public shutdown()V
    .registers 1

    return-void
.end method

.method public shutdownNow()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

###### Class com.vungle.warren.utility.SDKExecutors.NamedThreadFactory (com.vungle.warren.utility.SDKExecutors$NamedThreadFactory)
.class Lcom/vungle/warren/utility/SDKExecutors$NamedThreadFactory;
.super Ljava/lang/Object;
.source "SDKExecutors.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/utility/SDKExecutors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NamedThreadFactory"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/util/concurrent/ThreadFactory;

.field private c:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/utility/SDKExecutors$NamedThreadFactory;->b:Ljava/util/concurrent/ThreadFactory;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/vungle/warren/utility/SDKExecutors$NamedThreadFactory;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    iput-object p1, p0, Lcom/vungle/warren/utility/SDKExecutors$NamedThreadFactory;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/utility/SDKExecutors$NamedThreadFactory;->b:Ljava/util/concurrent/ThreadFactory;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/vungle/warren/utility/SDKExecutors$NamedThreadFactory;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-th-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/warren/utility/SDKExecutors$NamedThreadFactory;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-object p1
.end method
