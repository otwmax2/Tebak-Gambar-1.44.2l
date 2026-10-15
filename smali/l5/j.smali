###### Class l5.j (l5.j)
.class final Ll5/j;
.super Ljava/lang/Object;
.source "SequentialExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll5/j$b;,
        Ll5/j$c;
    }
.end annotation


# static fields
.field private static final t:Ljava/util/logging/Logger;


# instance fields
.field private final o:Ljava/util/concurrent/Executor;

.field private final p:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ll5/j$c;

.field private r:J

.field private final s:Ll5/j$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Ll5/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ll5/j;->t:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Ll5/j;->p:Ljava/util/Deque;

    .line 3
    sget-object v0, Ll5/j$c;->o:Ll5/j$c;

    iput-object v0, p0, Ll5/j;->q:Ll5/j$c;

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Ll5/j;->r:J

    .line 5
    new-instance v0, Ll5/j$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ll5/j$b;-><init>(Ll5/j;Ll5/j$a;)V

    iput-object v0, p0, Ll5/j;->s:Ll5/j$b;

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Ll5/j;->o:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic a(Ll5/j;)Ljava/util/Deque;
    .registers 1

    .line 1
    iget-object p0, p0, Ll5/j;->p:Ljava/util/Deque;

    return-object p0
.end method

.method static synthetic b(Ll5/j;)Ll5/j$c;
    .registers 1

    .line 1
    iget-object p0, p0, Ll5/j;->q:Ll5/j$c;

    return-object p0
.end method

.method static synthetic c(Ll5/j;Ll5/j$c;)Ll5/j$c;
    .registers 2

    .line 1
    iput-object p1, p0, Ll5/j;->q:Ll5/j$c;

    return-object p1
.end method

.method static synthetic d(Ll5/j;)J
    .registers 5

    .line 1
    iget-wide v0, p0, Ll5/j;->r:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Ll5/j;->r:J

    return-wide v0
.end method

.method static synthetic f()Ljava/util/logging/Logger;
    .registers 1

    .line 1
    sget-object v0, Ll5/j;->t:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 10

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Ll5/j;->p:Ljava/util/Deque;

    monitor-enter v0

    .line 3
    :try_start_6
    iget-object v1, p0, Ll5/j;->q:Ll5/j$c;

    sget-object v2, Ll5/j$c;->r:Ll5/j$c;

    if-eq v1, v2, :cond_6e

    sget-object v2, Ll5/j$c;->q:Ll5/j$c;

    if-ne v1, v2, :cond_11

    goto :goto_6e

    .line 4
    :cond_11
    iget-wide v3, p0, Ll5/j;->r:J

    .line 5
    new-instance v1, Ll5/j$a;

    invoke-direct {v1, p0, p1}, Ll5/j$a;-><init>(Ll5/j;Ljava/lang/Runnable;)V

    .line 6
    iget-object p1, p0, Ll5/j;->p:Ljava/util/Deque;

    invoke-interface {p1, v1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 7
    sget-object p1, Ll5/j$c;->p:Ll5/j$c;

    iput-object p1, p0, Ll5/j;->q:Ll5/j$c;

    .line 8
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_75

    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 9
    :try_start_24
    iget-object v6, p0, Ll5/j;->o:Ljava/util/concurrent/Executor;

    iget-object v7, p0, Ll5/j;->s:Ll5/j$b;

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2b
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_2b} :catch_4a
    .catch Ljava/lang/Error; {:try_start_24 .. :try_end_2b} :catch_48

    .line 10
    iget-object v1, p0, Ll5/j;->q:Ll5/j$c;

    if-eq v1, p1, :cond_30

    goto :goto_31

    :cond_30
    const/4 v0, 0x0

    :goto_31
    if-eqz v0, :cond_34

    return-void

    .line 11
    :cond_34
    iget-object v6, p0, Ll5/j;->p:Ljava/util/Deque;

    monitor-enter v6

    .line 12
    :try_start_37
    iget-wide v0, p0, Ll5/j;->r:J

    cmp-long v5, v0, v3

    if-nez v5, :cond_43

    iget-object v0, p0, Ll5/j;->q:Ll5/j$c;

    if-ne v0, p1, :cond_43

    .line 13
    iput-object v2, p0, Ll5/j;->q:Ll5/j$c;

    .line 14
    :cond_43
    monitor-exit v6

    return-void

    :catchall_45
    move-exception p1

    monitor-exit v6
    :try_end_47
    .catchall {:try_start_37 .. :try_end_47} :catchall_45

    throw p1

    :catch_48
    move-exception p1

    goto :goto_4b

    :catch_4a
    move-exception p1

    .line 15
    :goto_4b
    iget-object v2, p0, Ll5/j;->p:Ljava/util/Deque;

    monitor-enter v2

    .line 16
    :try_start_4e
    iget-object v3, p0, Ll5/j;->q:Ll5/j$c;

    sget-object v4, Ll5/j$c;->o:Ll5/j$c;

    if-eq v3, v4, :cond_58

    sget-object v4, Ll5/j$c;->p:Ll5/j$c;

    if-ne v3, v4, :cond_61

    :cond_58
    iget-object v3, p0, Ll5/j;->p:Ljava/util/Deque;

    .line 17
    invoke-interface {v3, v1}, Ljava/util/Deque;->removeLastOccurrence(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    goto :goto_62

    :cond_61
    const/4 v0, 0x0

    .line 18
    :goto_62
    instance-of v1, p1, Ljava/util/concurrent/RejectedExecutionException;

    if-eqz v1, :cond_6a

    if-nez v0, :cond_6a

    .line 19
    monitor-exit v2

    return-void

    .line 20
    :cond_6a
    throw p1

    :catchall_6b
    move-exception p1

    .line 21
    monitor-exit v2
    :try_end_6d
    .catchall {:try_start_4e .. :try_end_6d} :catchall_6b

    throw p1

    .line 22
    :cond_6e
    :goto_6e
    :try_start_6e
    iget-object v1, p0, Ll5/j;->p:Ljava/util/Deque;

    invoke-interface {v1, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 23
    monitor-exit v0

    return-void

    :catchall_75
    move-exception p1

    .line 24
    monitor-exit v0
    :try_end_77
    .catchall {:try_start_6e .. :try_end_77} :catchall_75

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SequentialExecutor@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ll5/j;->o:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class l5.j.a (l5.j$a)
.class Ll5/j$a;
.super Ljava/lang/Object;
.source "SequentialExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll5/j;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Ljava/lang/Runnable;

.field final synthetic p:Ll5/j;


# direct methods
.method constructor <init>(Ll5/j;Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    iput-object p1, p0, Ll5/j$a;->p:Ll5/j;

    iput-object p2, p0, Ll5/j$a;->o:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Ll5/j$a;->o:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ll5/j$a;->o:Ljava/lang/Runnable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class l5.j.b (l5.j$b)
.class final Ll5/j$b;
.super Ljava/lang/Object;
.source "SequentialExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll5/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field o:Ljava/lang/Runnable;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field final synthetic p:Ll5/j;


# direct methods
.method private constructor <init>(Ll5/j;)V
    .registers 2

    .line 1
    iput-object p1, p0, Ll5/j$b;->p:Ll5/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ll5/j;Ll5/j$a;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Ll5/j$b;-><init>(Ll5/j;)V

    return-void
.end method

.method private a()V
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_2
    :try_start_2
    iget-object v2, p0, Ll5/j$b;->p:Ll5/j;

    invoke-static {v2}, Ll5/j;->a(Ll5/j;)Ljava/util/Deque;

    move-result-object v2

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_82

    if-nez v0, :cond_2b

    .line 2
    :try_start_b
    iget-object v0, p0, Ll5/j$b;->p:Ll5/j;

    invoke-static {v0}, Ll5/j;->b(Ll5/j;)Ll5/j$c;

    move-result-object v0

    sget-object v3, Ll5/j$c;->r:Ll5/j$c;

    if-ne v0, v3, :cond_20

    .line 3
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_7f

    if-eqz v1, :cond_1f

    .line 4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1f
    return-void

    .line 5
    :cond_20
    :try_start_20
    iget-object v0, p0, Ll5/j$b;->p:Ll5/j;

    invoke-static {v0}, Ll5/j;->d(Ll5/j;)J

    .line 6
    iget-object v0, p0, Ll5/j$b;->p:Ll5/j;

    invoke-static {v0, v3}, Ll5/j;->c(Ll5/j;Ll5/j$c;)Ll5/j$c;

    const/4 v0, 0x1

    .line 7
    :cond_2b
    iget-object v3, p0, Ll5/j$b;->p:Ll5/j;

    invoke-static {v3}, Ll5/j;->a(Ll5/j;)Ljava/util/Deque;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    iput-object v3, p0, Ll5/j$b;->o:Ljava/lang/Runnable;

    if-nez v3, :cond_4d

    .line 8
    iget-object v0, p0, Ll5/j$b;->p:Ll5/j;

    sget-object v3, Ll5/j$c;->o:Ll5/j$c;

    invoke-static {v0, v3}, Ll5/j;->c(Ll5/j;Ll5/j$c;)Ll5/j$c;

    .line 9
    monitor-exit v2
    :try_end_43
    .catchall {:try_start_20 .. :try_end_43} :catchall_7f

    if-eqz v1, :cond_4c

    .line 10
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_4c
    return-void

    .line 11
    :cond_4d
    :try_start_4d
    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_7f

    .line 12
    :try_start_4e
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2
    :try_end_52
    .catchall {:try_start_4e .. :try_end_52} :catchall_82

    or-int/2addr v1, v2

    const/4 v2, 0x0

    .line 13
    :try_start_54
    iget-object v3, p0, Ll5/j$b;->o:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_59
    .catch Ljava/lang/RuntimeException; {:try_start_54 .. :try_end_59} :catch_5e
    .catchall {:try_start_54 .. :try_end_59} :catchall_5c

    .line 14
    :goto_59
    :try_start_59
    iput-object v2, p0, Ll5/j$b;->o:Ljava/lang/Runnable;
    :try_end_5b
    .catchall {:try_start_59 .. :try_end_5b} :catchall_82

    goto :goto_2

    :catchall_5c
    move-exception v0

    goto :goto_7c

    :catch_5e
    move-exception v3

    .line 15
    :try_start_5f
    invoke-static {}, Ll5/j;->f()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception while executing runnable "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Ll5/j$b;->o:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7b
    .catchall {:try_start_5f .. :try_end_7b} :catchall_5c

    goto :goto_59

    .line 16
    :goto_7c
    :try_start_7c
    iput-object v2, p0, Ll5/j$b;->o:Ljava/lang/Runnable;

    .line 17
    throw v0
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_82

    :catchall_7f
    move-exception v0

    .line 18
    :try_start_80
    monitor-exit v2
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7f

    :try_start_81
    throw v0
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_82

    :catchall_82
    move-exception v0

    if-eqz v1, :cond_8c

    .line 19
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 20
    :cond_8c
    goto :goto_8e

    :goto_8d
    throw v0

    :goto_8e
    goto :goto_8d
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    :try_start_0
    invoke-direct {p0}, Ll5/j$b;->a()V
    :try_end_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception v0

    .line 2
    iget-object v1, p0, Ll5/j$b;->p:Ll5/j;

    invoke-static {v1}, Ll5/j;->a(Ll5/j;)Ljava/util/Deque;

    move-result-object v1

    monitor-enter v1

    .line 3
    :try_start_c
    iget-object v2, p0, Ll5/j$b;->p:Ll5/j;

    sget-object v3, Ll5/j$c;->o:Ll5/j$c;

    invoke-static {v2, v3}, Ll5/j;->c(Ll5/j;Ll5/j$c;)Ll5/j$c;

    .line 4
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_15

    .line 5
    throw v0

    :catchall_15
    move-exception v0

    .line 6
    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    iget-object v0, p0, Ll5/j$b;->o:Ljava/lang/Runnable;

    const-string v1, "}"

    if-eqz v0, :cond_1b

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SequentialExecutorWorker{running="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SequentialExecutorWorker{state="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ll5/j$b;->p:Ll5/j;

    invoke-static {v2}, Ll5/j;->b(Ll5/j;)Ll5/j$c;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class l5.j.c (l5.j$c)
.class final enum Ll5/j$c;
.super Ljava/lang/Enum;
.source "SequentialExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll5/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ll5/j$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum o:Ll5/j$c;

.field public static final enum p:Ll5/j$c;

.field public static final enum q:Ll5/j$c;

.field public static final enum r:Ll5/j$c;

.field private static final synthetic s:[Ll5/j$c;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 1
    new-instance v0, Ll5/j$c;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ll5/j$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ll5/j$c;->o:Ll5/j$c;

    .line 2
    new-instance v1, Ll5/j$c;

    const-string v3, "QUEUING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ll5/j$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ll5/j$c;->p:Ll5/j$c;

    .line 3
    new-instance v3, Ll5/j$c;

    const-string v5, "QUEUED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ll5/j$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ll5/j$c;->q:Ll5/j$c;

    .line 4
    new-instance v5, Ll5/j$c;

    const-string v7, "RUNNING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ll5/j$c;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ll5/j$c;->r:Ll5/j$c;

    const/4 v7, 0x4

    new-array v7, v7, [Ll5/j$c;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Ll5/j$c;->s:[Ll5/j$c;

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

.method public static valueOf(Ljava/lang/String;)Ll5/j$c;
    .registers 2

    .line 1
    const-class v0, Ll5/j$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ll5/j$c;

    return-object p0
.end method

.method public static values()[Ll5/j$c;
    .registers 1

    .line 1
    sget-object v0, Ll5/j$c;->s:[Ll5/j$c;

    invoke-virtual {v0}, [Ll5/j$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ll5/j$c;

    return-object v0
.end method
