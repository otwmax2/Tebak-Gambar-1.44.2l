###### Class e2.a (e2.a)
.class public Le2/a;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "FifoPriorityThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le2/a$c;,
        Le2/a$b;,
        Le2/a$d;
    }
.end annotation


# instance fields
.field private final o:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final p:Le2/a$d;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 1
    sget-object v0, Le2/a$d;->p:Le2/a$d;

    invoke-direct {p0, p1, v0}, Le2/a;-><init>(ILe2/a$d;)V

    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Le2/a$d;)V
    .registers 16

    .line 3
    new-instance v6, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Le2/a;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    iput-object p7, p0, Le2/a;->p:Le2/a$d;

    return-void
.end method

.method public constructor <init>(ILe2/a$d;)V
    .registers 11

    .line 2
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Le2/a$b;

    invoke-direct {v6}, Le2/a$b;-><init>()V

    const-wide/16 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Le2/a;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Le2/a$d;)V

    return-void
.end method


# virtual methods
.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    if-nez p2, :cond_28

    .line 2
    instance-of p2, p1, Ljava/util/concurrent/Future;

    if-eqz p2, :cond_28

    .line 3
    check-cast p1, Ljava/util/concurrent/Future;

    .line 4
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result p2

    if-eqz p2, :cond_28

    invoke-interface {p1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result p2

    if-nez p2, :cond_28

    .line 5
    :try_start_17
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1a} :catch_22
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_17 .. :try_end_1a} :catch_1b

    goto :goto_28

    :catch_1b
    move-exception p1

    .line 6
    iget-object p2, p0, Le2/a;->p:Le2/a$d;

    invoke-virtual {p2, p1}, Le2/a$d;->c(Ljava/lang/Throwable;)V

    goto :goto_28

    :catch_22
    move-exception p1

    .line 7
    iget-object p2, p0, Le2/a;->p:Le2/a$d;

    invoke-virtual {p2, p1}, Le2/a$d;->c(Ljava/lang/Throwable;)V

    :cond_28
    :goto_28
    return-void
.end method

.method protected newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/RunnableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Le2/a$c;

    iget-object v1, p0, Le2/a;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-direct {v0, p1, p2, v1}, Le2/a$c;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;I)V

    return-object v0
.end method

###### Class e2.a.C0151a (e2.a$a)
.class synthetic Le2/a$a;
.super Ljava/lang/Object;
.source "FifoPriorityThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class e2.a.b (e2.a$b)
.class public Le2/a$b;
.super Ljava/lang/Object;
.source "FifoPriorityThreadPoolExecutor.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field a:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Le2/a$b;->a:I

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 5

    .line 1
    new-instance v0, Le2/a$b$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fifo-pool-thread-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Le2/a$b;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Le2/a$b$a;-><init>(Le2/a$b;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2
    iget p1, p0, Le2/a$b;->a:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Le2/a$b;->a:I

    return-object v0
.end method

###### Class e2.a.b.C0152a (e2.a$b$a)
.class Le2/a$b$a;
.super Ljava/lang/Thread;
.source "FifoPriorityThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le2/a$b;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Le2/a$b;


# direct methods
.method constructor <init>(Le2/a$b;Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Le2/a$b$a;->o:Le2/a$b;

    invoke-direct {p0, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    const/16 v0, 0xa

    .line 1
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    return-void
.end method

###### Class e2.a.c (e2.a$c)
.class Le2/a$c;
.super Ljava/util/concurrent/FutureTask;
.source "FifoPriorityThreadPoolExecutor.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask<",
        "TT;>;",
        "Ljava/lang/Comparable<",
        "Le2/a$c<",
        "*>;>;"
    }
.end annotation


# instance fields
.field private final o:I

.field private final p:I


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TT;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 2
    instance-of p2, p1, Le2/b;

    if-eqz p2, :cond_12

    .line 3
    check-cast p1, Le2/b;

    invoke-interface {p1}, Le2/b;->a()I

    move-result p1

    iput p1, p0, Le2/a$c;->o:I

    .line 4
    iput p3, p0, Le2/a$c;->p:I

    return-void

    .line 5
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "FifoPriorityThreadPoolExecutor must be given Runnables that implement Prioritized"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public c(Le2/a$c;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le2/a$c<",
            "*>;)I"
        }
    .end annotation

    .line 1
    iget v0, p0, Le2/a$c;->o:I

    iget v1, p1, Le2/a$c;->o:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_c

    .line 2
    iget v0, p0, Le2/a$c;->p:I

    iget p1, p1, Le2/a$c;->p:I

    sub-int/2addr v0, p1

    :cond_c
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 1
    check-cast p1, Le2/a$c;

    invoke-virtual {p0, p1}, Le2/a$c;->c(Le2/a$c;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    instance-of v0, p1, Le2/a$c;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 2
    check-cast p1, Le2/a$c;

    .line 3
    iget v0, p0, Le2/a$c;->p:I

    iget v2, p1, Le2/a$c;->p:I

    if-ne v0, v2, :cond_14

    iget v0, p0, Le2/a$c;->o:I

    iget p1, p1, Le2/a$c;->o:I

    if-ne v0, p1, :cond_14

    const/4 v1, 0x1

    :cond_14
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget v0, p0, Le2/a$c;->o:I

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget v1, p0, Le2/a$c;->p:I

    add-int/2addr v0, v1

    return v0
.end method

###### Class e2.a.d (e2.a$d)
.class public enum Le2/a$d;
.super Ljava/lang/Enum;
.source "FifoPriorityThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le2/a$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum o:Le2/a$d;

.field public static final enum p:Le2/a$d;

.field public static final enum q:Le2/a$d;

.field private static final synthetic r:[Le2/a$d;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1
    new-instance v0, Le2/a$d;

    const-string v1, "IGNORE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le2/a$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le2/a$d;->o:Le2/a$d;

    .line 2
    new-instance v1, Le2/a$d$a;

    const-string v3, "LOG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Le2/a$d$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Le2/a$d;->p:Le2/a$d;

    .line 3
    new-instance v3, Le2/a$d$b;

    const-string v5, "THROW"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Le2/a$d$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Le2/a$d;->q:Le2/a$d;

    const/4 v5, 0x3

    new-array v5, v5, [Le2/a$d;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Le2/a$d;->r:[Le2/a$d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILe2/a$a;)V
    .registers 4

    .line 2
    invoke-direct {p0, p1, p2}, Le2/a$d;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le2/a$d;
    .registers 2

    .line 1
    const-class v0, Le2/a$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le2/a$d;

    return-object p0
.end method

.method public static values()[Le2/a$d;
    .registers 1

    .line 1
    sget-object v0, Le2/a$d;->r:[Le2/a$d;

    invoke-virtual {v0}, [Le2/a$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le2/a$d;

    return-object v0
.end method


# virtual methods
.method protected c(Ljava/lang/Throwable;)V
    .registers 2

    return-void
.end method

###### Class e2.a.d.C0153a (e2.a$d$a)
.class final enum Le2/a$d$a;
.super Le2/a$d;
.source "FifoPriorityThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le2/a$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Le2/a$d;-><init>(Ljava/lang/String;ILe2/a$a;)V

    return-void
.end method


# virtual methods
.method protected c(Ljava/lang/Throwable;)V
    .registers 4

    const-string v0, "PriorityExecutor"

    const/4 v1, 0x6

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "Request threw uncaught throwable"

    .line 2
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_e
    return-void
.end method

###### Class e2.a.d.b (e2.a$d$b)
.class final enum Le2/a$d$b;
.super Le2/a$d;
.source "FifoPriorityThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le2/a$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Le2/a$d;-><init>(Ljava/lang/String;ILe2/a$a;)V

    return-void
.end method


# virtual methods
.method protected c(Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Le2/a$d;->c(Ljava/lang/Throwable;)V

    .line 2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
