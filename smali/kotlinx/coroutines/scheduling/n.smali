###### Class kotlinx.coroutines.scheduling.n (kotlinx.coroutines.scheduling.n)
.class public final Lkotlinx/coroutines/scheduling/n;
.super Ljava/lang/Object;
.source "WorkQueue.kt"


# static fields
.field private static final synthetic b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field private static final synthetic d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field private static final synthetic e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Lkotlinx/coroutines/scheduling/h;",
            ">;"
        }
    .end annotation
.end field

.field private volatile synthetic blockingTasksInBuffer:I

.field private volatile synthetic consumerIndex:I

.field private volatile synthetic lastScheduledTask:Ljava/lang/Object;

.field private volatile synthetic producerIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lkotlinx/coroutines/scheduling/n;

    const-class v1, Ljava/lang/Object;

    const-string v2, "lastScheduledTask"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    sput-object v1, Lkotlinx/coroutines/scheduling/n;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v1, "producerIndex"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    sput-object v1, Lkotlinx/coroutines/scheduling/n;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-string v1, "consumerIndex"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    sput-object v1, Lkotlinx/coroutines/scheduling/n;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-string v1, "blockingTasksInBuffer"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/n;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Lkotlinx/coroutines/scheduling/n;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lkotlinx/coroutines/scheduling/n;->lastScheduledTask:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lkotlinx/coroutines/scheduling/n;->producerIndex:I

    .line 5
    iput v0, p0, Lkotlinx/coroutines/scheduling/n;->consumerIndex:I

    .line 6
    iput v0, p0, Lkotlinx/coroutines/scheduling/n;->blockingTasksInBuffer:I

    return-void
.end method

.method public static synthetic b(Lkotlinx/coroutines/scheduling/n;Lkotlinx/coroutines/scheduling/h;ZILjava/lang/Object;)Lkotlinx/coroutines/scheduling/h;
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 1
    :cond_5
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/scheduling/n;->a(Lkotlinx/coroutines/scheduling/h;Z)Lkotlinx/coroutines/scheduling/h;

    move-result-object p0

    return-object p0
.end method

.method private final c(Lkotlinx/coroutines/scheduling/h;)Lkotlinx/coroutines/scheduling/h;
    .registers 4

    .line 1
    iget-object v0, p1, Lkotlinx/coroutines/scheduling/h;->p:Lkotlinx/coroutines/scheduling/i;

    invoke-interface {v0}, Lkotlinx/coroutines/scheduling/i;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    if-eqz v1, :cond_12

    .line 2
    sget-object v0, Lkotlinx/coroutines/scheduling/n;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    .line 3
    :cond_12
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/n;->e()I

    move-result v0

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_1b

    return-object p1

    .line 4
    :cond_1b
    iget v0, p0, Lkotlinx/coroutines/scheduling/n;->producerIndex:I

    and-int/2addr v0, v1

    .line 5
    :goto_1e
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/n;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 6
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_1e

    .line 7
    :cond_2a
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/n;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 8
    sget-object p1, Lkotlinx/coroutines/scheduling/n;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private final d(Lkotlinx/coroutines/scheduling/h;)V
    .registers 5

    if-eqz p1, :cond_29

    .line 1
    iget-object p1, p1, Lkotlinx/coroutines/scheduling/h;->p:Lkotlinx/coroutines/scheduling/i;

    invoke-interface {p1}, Lkotlinx/coroutines/scheduling/i;->b()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    if-eqz p1, :cond_29

    .line 2
    sget-object p1, Lkotlinx/coroutines/scheduling/n;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    move-result p1

    .line 3
    invoke-static {}, Lda/s0;->a()Z

    move-result v2

    if-eqz v2, :cond_29

    if-ltz p1, :cond_20

    const/4 v0, 0x1

    :cond_20
    if-eqz v0, :cond_23

    goto :goto_29

    :cond_23
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_29
    :goto_29
    return-void
.end method

.method private final i()Lkotlinx/coroutines/scheduling/h;
    .registers 6

    .line 1
    :cond_0
    :goto_0
    iget v0, p0, Lkotlinx/coroutines/scheduling/n;->consumerIndex:I

    .line 2
    iget v1, p0, Lkotlinx/coroutines/scheduling/n;->producerIndex:I

    sub-int v1, v0, v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return-object v2

    :cond_a
    and-int/lit8 v1, v0, 0x7f

    .line 3
    sget-object v3, Lkotlinx/coroutines/scheduling/n;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, p0, v0, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/n;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/scheduling/h;

    if-nez v0, :cond_21

    goto :goto_0

    .line 5
    :cond_21
    invoke-direct {p0, v0}, Lkotlinx/coroutines/scheduling/n;->d(Lkotlinx/coroutines/scheduling/h;)V

    return-object v0
.end method

.method private final j(Lkotlinx/coroutines/scheduling/d;)Z
    .registers 3

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/n;->i()Lkotlinx/coroutines/scheduling/h;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_8
    invoke-virtual {p1, v0}, Lkotlinx/coroutines/internal/s;->a(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method private final m(Lkotlinx/coroutines/scheduling/n;Z)J
    .registers 10

    .line 1
    :cond_0
    iget-object v0, p1, Lkotlinx/coroutines/scheduling/n;->lastScheduledTask:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/scheduling/h;

    const-wide/16 v1, -0x2

    if-nez v0, :cond_9

    return-wide v1

    :cond_9
    const/4 v3, 0x0

    if-eqz p2, :cond_1a

    .line 2
    iget-object v4, v0, Lkotlinx/coroutines/scheduling/h;->p:Lkotlinx/coroutines/scheduling/i;

    invoke-interface {v4}, Lkotlinx/coroutines/scheduling/i;->b()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_16

    goto :goto_17

    :cond_16
    const/4 v5, 0x0

    :goto_17
    if-nez v5, :cond_1a

    return-wide v1

    .line 3
    :cond_1a
    sget-object v1, Lkotlinx/coroutines/scheduling/l;->e:Lkotlinx/coroutines/scheduling/g;

    invoke-virtual {v1}, Lkotlinx/coroutines/scheduling/g;->a()J

    move-result-wide v1

    .line 4
    iget-wide v4, v0, Lkotlinx/coroutines/scheduling/h;->o:J

    sub-long/2addr v1, v4

    .line 5
    sget-wide v4, Lkotlinx/coroutines/scheduling/l;->a:J

    cmp-long v6, v1, v4

    if-gez v6, :cond_2b

    sub-long/2addr v4, v1

    return-wide v4

    .line 6
    :cond_2b
    sget-object v1, Lkotlinx/coroutines/scheduling/n;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    invoke-static {v1, p1, v0, v2}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x2

    .line 7
    invoke-static {p0, v0, v3, p1, v2}, Lkotlinx/coroutines/scheduling/n;->b(Lkotlinx/coroutines/scheduling/n;Lkotlinx/coroutines/scheduling/h;ZILjava/lang/Object;)Lkotlinx/coroutines/scheduling/h;

    const-wide/16 p1, -0x1

    return-wide p1
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/scheduling/h;Z)Lkotlinx/coroutines/scheduling/h;
    .registers 3

    if-eqz p2, :cond_7

    .line 1
    invoke-direct {p0, p1}, Lkotlinx/coroutines/scheduling/n;->c(Lkotlinx/coroutines/scheduling/h;)Lkotlinx/coroutines/scheduling/h;

    move-result-object p1

    return-object p1

    .line 2
    :cond_7
    sget-object p2, Lkotlinx/coroutines/scheduling/n;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/scheduling/h;

    if-nez p1, :cond_13

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_13
    invoke-direct {p0, p1}, Lkotlinx/coroutines/scheduling/n;->c(Lkotlinx/coroutines/scheduling/h;)Lkotlinx/coroutines/scheduling/h;

    move-result-object p1

    return-object p1
.end method

.method public final e()I
    .registers 3

    .line 1
    iget v0, p0, Lkotlinx/coroutines/scheduling/n;->producerIndex:I

    iget v1, p0, Lkotlinx/coroutines/scheduling/n;->consumerIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final f()I
    .registers 2

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/n;->lastScheduledTask:Ljava/lang/Object;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/n;->e()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_b
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/n;->e()I

    move-result v0

    :goto_f
    return v0
.end method

.method public final g(Lkotlinx/coroutines/scheduling/d;)V
    .registers 4

    .line 1
    sget-object v0, Lkotlinx/coroutines/scheduling/n;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/scheduling/h;

    if-eqz v0, :cond_e

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/internal/s;->a(Ljava/lang/Object;)Z

    .line 2
    :cond_e
    invoke-direct {p0, p1}, Lkotlinx/coroutines/scheduling/n;->j(Lkotlinx/coroutines/scheduling/d;)Z

    move-result v0

    if-nez v0, :cond_e

    return-void
.end method

.method public final h()Lkotlinx/coroutines/scheduling/h;
    .registers 3

    .line 1
    sget-object v0, Lkotlinx/coroutines/scheduling/n;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/scheduling/h;

    if-nez v0, :cond_f

    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/n;->i()Lkotlinx/coroutines/scheduling/h;

    move-result-object v0

    :cond_f
    return-object v0
.end method

.method public final k(Lkotlinx/coroutines/scheduling/n;)J
    .registers 10

    .line 1
    invoke-static {}, Lda/s0;->a()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/n;->e()I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_14

    goto :goto_1a

    :cond_14
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2
    :cond_1a
    :goto_1a
    iget v0, p1, Lkotlinx/coroutines/scheduling/n;->consumerIndex:I

    .line 3
    iget v3, p1, Lkotlinx/coroutines/scheduling/n;->producerIndex:I

    .line 4
    iget-object v4, p1, Lkotlinx/coroutines/scheduling/n;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    :goto_20
    if-eq v0, v3, :cond_53

    and-int/lit8 v5, v0, 0x7f

    .line 5
    iget v6, p1, Lkotlinx/coroutines/scheduling/n;->blockingTasksInBuffer:I

    if-eqz v6, :cond_53

    .line 6
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlinx/coroutines/scheduling/h;

    if-eqz v6, :cond_50

    .line 7
    iget-object v7, v6, Lkotlinx/coroutines/scheduling/h;->p:Lkotlinx/coroutines/scheduling/i;

    invoke-interface {v7}, Lkotlinx/coroutines/scheduling/i;->b()I

    move-result v7

    if-ne v7, v2, :cond_3a

    const/4 v7, 0x1

    goto :goto_3b

    :cond_3a
    const/4 v7, 0x0

    :goto_3b
    if-eqz v7, :cond_50

    const/4 v7, 0x0

    .line 8
    invoke-virtual {v4, v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 9
    sget-object v0, Lkotlinx/coroutines/scheduling/n;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    const/4 p1, 0x2

    .line 10
    invoke-static {p0, v6, v1, p1, v7}, Lkotlinx/coroutines/scheduling/n;->b(Lkotlinx/coroutines/scheduling/n;Lkotlinx/coroutines/scheduling/h;ZILjava/lang/Object;)Lkotlinx/coroutines/scheduling/h;

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_50
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 11
    :cond_53
    invoke-direct {p0, p1, v2}, Lkotlinx/coroutines/scheduling/n;->m(Lkotlinx/coroutines/scheduling/n;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public final l(Lkotlinx/coroutines/scheduling/n;)J
    .registers 6

    .line 1
    invoke-static {}, Lda/s0;->a()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/n;->e()I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_14

    goto :goto_1a

    :cond_14
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2
    :cond_1a
    :goto_1a
    invoke-direct {p1}, Lkotlinx/coroutines/scheduling/n;->i()Lkotlinx/coroutines/scheduling/h;

    move-result-object v0

    if-eqz v0, :cond_3c

    const/4 p1, 0x2

    const/4 v3, 0x0

    .line 3
    invoke-static {p0, v0, v2, p1, v3}, Lkotlinx/coroutines/scheduling/n;->b(Lkotlinx/coroutines/scheduling/n;Lkotlinx/coroutines/scheduling/h;ZILjava/lang/Object;)Lkotlinx/coroutines/scheduling/h;

    move-result-object p1

    .line 4
    invoke-static {}, Lda/s0;->a()Z

    move-result v0

    if-eqz v0, :cond_39

    if-nez p1, :cond_2f

    goto :goto_30

    :cond_2f
    const/4 v1, 0x0

    :goto_30
    if-eqz v1, :cond_33

    goto :goto_39

    :cond_33
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_39
    :goto_39
    const-wide/16 v0, -0x1

    return-wide v0

    .line 5
    :cond_3c
    invoke-direct {p0, p1, v2}, Lkotlinx/coroutines/scheduling/n;->m(Lkotlinx/coroutines/scheduling/n;Z)J

    move-result-wide v0

    return-wide v0
.end method
