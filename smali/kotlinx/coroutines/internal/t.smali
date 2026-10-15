###### Class kotlinx.coroutines.internal.t (kotlinx.coroutines.internal.t)
.class public final Lkotlinx/coroutines/internal/t;
.super Ljava/lang/Object;
.source "LockFreeTaskQueue.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/internal/t$b;,
        Lkotlinx/coroutines/internal/t$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final e:Lkotlinx/coroutines/internal/t$a;

.field private static final synthetic f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final h:Lkotlinx/coroutines/internal/e0;


# instance fields
.field private volatile synthetic _next:Ljava/lang/Object;

.field private volatile synthetic _state:J

.field private final a:I

.field private final b:Z

.field private final c:I

.field private synthetic d:Ljava/util/concurrent/atomic/AtomicReferenceArray;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lkotlinx/coroutines/internal/t;

    new-instance v1, Lkotlinx/coroutines/internal/t$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lkotlinx/coroutines/internal/t$a;-><init>(Lt9/g;)V

    sput-object v1, Lkotlinx/coroutines/internal/t;->e:Lkotlinx/coroutines/internal/t$a;

    .line 1
    new-instance v1, Lkotlinx/coroutines/internal/e0;

    const-string v2, "REMOVE_FROZEN"

    invoke-direct {v1, v2}, Lkotlinx/coroutines/internal/e0;-><init>(Ljava/lang/String;)V

    sput-object v1, Lkotlinx/coroutines/internal/t;->h:Lkotlinx/coroutines/internal/e0;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_next"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    sput-object v1, Lkotlinx/coroutines/internal/t;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v1, "_state"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/t;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lkotlinx/coroutines/internal/t;->a:I

    .line 3
    iput-boolean p2, p0, Lkotlinx/coroutines/internal/t;->b:Z

    add-int/lit8 p2, p1, -0x1

    .line 4
    iput p2, p0, Lkotlinx/coroutines/internal/t;->c:I

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lkotlinx/coroutines/internal/t;->_next:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lkotlinx/coroutines/internal/t;->_state:J

    .line 7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Lkotlinx/coroutines/internal/t;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const v2, 0x3fffffff    # 1.9999999f

    if-gt p2, v2, :cond_22

    const/4 v2, 0x1

    goto :goto_23

    :cond_22
    const/4 v2, 0x0

    :goto_23
    const-string v3, "Check failed."

    if-eqz v2, :cond_38

    and-int/2addr p1, p2

    if-nez p1, :cond_2b

    const/4 v0, 0x1

    :cond_2b
    if-eqz v0, :cond_2e

    return-void

    .line 8
    :cond_2e
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_38
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final b(J)Lkotlinx/coroutines/internal/t;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lkotlinx/coroutines/internal/t<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/internal/t;

    iget v1, p0, Lkotlinx/coroutines/internal/t;->a:I

    mul-int/lit8 v1, v1, 0x2

    iget-boolean v2, p0, Lkotlinx/coroutines/internal/t;->b:Z

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/internal/t;-><init>(IZ)V

    const-wide/32 v1, 0x3fffffff

    and-long/2addr v1, p1

    const/4 v3, 0x0

    shr-long/2addr v1, v3

    long-to-int v2, v1

    const-wide v3, 0xfffffffc0000000L

    and-long/2addr v3, p1

    const/16 v1, 0x1e

    shr-long/2addr v3, v1

    long-to-int v1, v3

    .line 2
    :goto_1c
    iget v3, p0, Lkotlinx/coroutines/internal/t;->c:I

    and-int v4, v2, v3

    and-int v5, v1, v3

    if-eq v4, v5, :cond_3d

    .line 3
    iget-object v4, p0, Lkotlinx/coroutines/internal/t;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    and-int/2addr v3, v2

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_32

    new-instance v3, Lkotlinx/coroutines/internal/t$b;

    invoke-direct {v3, v2}, Lkotlinx/coroutines/internal/t$b;-><init>(I)V

    .line 4
    :cond_32
    iget-object v4, v0, Lkotlinx/coroutines/internal/t;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v5, v0, Lkotlinx/coroutines/internal/t;->c:I

    and-int/2addr v5, v2

    invoke-virtual {v4, v5, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 5
    :cond_3d
    sget-object v1, Lkotlinx/coroutines/internal/t;->e:Lkotlinx/coroutines/internal/t$a;

    const-wide/high16 v2, 0x1000000000000000L

    invoke-virtual {v1, p1, p2, v2, v3}, Lkotlinx/coroutines/internal/t$a;->d(JJ)J

    move-result-wide p1

    iput-wide p1, v0, Lkotlinx/coroutines/internal/t;->_state:J

    return-object v0
.end method

.method private final c(J)Lkotlinx/coroutines/internal/t;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lkotlinx/coroutines/internal/t<",
            "TE;>;"
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/t;->_next:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/t;

    if-eqz v0, :cond_7

    return-object v0

    .line 2
    :cond_7
    sget-object v0, Lkotlinx/coroutines/internal/t;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/internal/t;->b(J)Lkotlinx/coroutines/internal/t;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private final e(ILjava/lang/Object;)Lkotlinx/coroutines/internal/t;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)",
            "Lkotlinx/coroutines/internal/t<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/t;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Lkotlinx/coroutines/internal/t;->c:I

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lkotlinx/coroutines/internal/t$b;

    if-eqz v1, :cond_1c

    check-cast v0, Lkotlinx/coroutines/internal/t$b;

    iget v0, v0, Lkotlinx/coroutines/internal/t$b;->a:I

    if-ne v0, p1, :cond_1c

    .line 3
    iget-object v0, p0, Lkotlinx/coroutines/internal/t;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Lkotlinx/coroutines/internal/t;->c:I

    and-int/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    return-object p0

    :cond_1c
    const/4 p1, 0x0

    return-object p1
.end method

.method private final h()J
    .registers 10

    .line 1
    :cond_0
    iget-wide v2, p0, Lkotlinx/coroutines/internal/t;->_state:J

    const-wide/high16 v0, 0x1000000000000000L

    and-long v4, v2, v0

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_d

    return-wide v2

    :cond_d
    or-long v6, v2, v0

    .line 2
    sget-object v0, Lkotlinx/coroutines/internal/t;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v1, p0

    move-wide v4, v6

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v6
.end method

.method private final k(II)Lkotlinx/coroutines/internal/t;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lkotlinx/coroutines/internal/t<",
            "TE;>;"
        }
    .end annotation

    .line 1
    :cond_0
    iget-wide v2, p0, Lkotlinx/coroutines/internal/t;->_state:J

    .line 2
    sget-object v0, Lkotlinx/coroutines/internal/t;->e:Lkotlinx/coroutines/internal/t$a;

    const-wide/32 v4, 0x3fffffff

    and-long/2addr v4, v2

    const/4 v1, 0x0

    shr-long/2addr v4, v1

    long-to-int v6, v4

    .line 3
    invoke-static {}, Lda/s0;->a()Z

    move-result v4

    if-eqz v4, :cond_1d

    if-ne v6, p1, :cond_14

    const/4 v1, 0x1

    :cond_14
    if-eqz v1, :cond_17

    goto :goto_1d

    :cond_17
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1d
    :goto_1d
    const-wide/high16 v4, 0x1000000000000000L

    and-long/2addr v4, v2

    const-wide/16 v7, 0x0

    cmp-long v1, v4, v7

    if-eqz v1, :cond_2b

    .line 4
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/t;->i()Lkotlinx/coroutines/internal/t;

    move-result-object p1

    return-object p1

    .line 5
    :cond_2b
    sget-object v1, Lkotlinx/coroutines/internal/t;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, v2, v3, p2}, Lkotlinx/coroutines/internal/t$a;->b(JI)J

    move-result-wide v4

    move-object v0, v1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object p1, p0, Lkotlinx/coroutines/internal/t;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget p2, p0, Lkotlinx/coroutines/internal/t;->c:I

    and-int/2addr p2, v6

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .line 1
    :cond_0
    iget-wide v2, p0, Lkotlinx/coroutines/internal/t;->_state:J

    const-wide/high16 v0, 0x3000000000000000L    # 1.727233711018889E-77

    and-long/2addr v0, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v0, v6

    if-eqz v4, :cond_12

    .line 2
    sget-object p1, Lkotlinx/coroutines/internal/t;->e:Lkotlinx/coroutines/internal/t$a;

    invoke-virtual {p1, v2, v3}, Lkotlinx/coroutines/internal/t$a;->a(J)I

    move-result p1

    return p1

    .line 3
    :cond_12
    sget-object v0, Lkotlinx/coroutines/internal/t;->e:Lkotlinx/coroutines/internal/t$a;

    const-wide/32 v4, 0x3fffffff

    and-long/2addr v4, v2

    const/4 v8, 0x0

    shr-long/2addr v4, v8

    long-to-int v1, v4

    const-wide v4, 0xfffffffc0000000L

    and-long/2addr v4, v2

    const/16 v9, 0x1e

    shr-long/2addr v4, v9

    long-to-int v9, v4

    .line 4
    iget v10, p0, Lkotlinx/coroutines/internal/t;->c:I

    add-int/lit8 v4, v9, 0x2

    and-int/2addr v4, v10

    and-int v5, v1, v10

    const/4 v11, 0x1

    if-ne v4, v5, :cond_30

    return v11

    .line 5
    :cond_30
    iget-boolean v4, p0, Lkotlinx/coroutines/internal/t;->b:Z

    const v5, 0x3fffffff    # 1.9999999f

    if-nez v4, :cond_4f

    iget-object v4, p0, Lkotlinx/coroutines/internal/t;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    and-int v12, v9, v10

    invoke-virtual {v4, v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4f

    .line 6
    iget v0, p0, Lkotlinx/coroutines/internal/t;->a:I

    const/16 v2, 0x400

    if-lt v0, v2, :cond_4e

    sub-int/2addr v9, v1

    and-int v1, v9, v5

    shr-int/lit8 v0, v0, 0x1

    if-le v1, v0, :cond_0

    :cond_4e
    return v11

    :cond_4f
    add-int/lit8 v1, v9, 0x1

    and-int/2addr v1, v5

    .line 7
    sget-object v4, Lkotlinx/coroutines/internal/t;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, v2, v3, v1}, Lkotlinx/coroutines/internal/t$a;->c(JI)J

    move-result-wide v11

    move-object v0, v4

    move-object v1, p0

    move-wide v4, v11

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lkotlinx/coroutines/internal/t;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    and-int v1, v9, v10

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move-object v0, p0

    .line 9
    :cond_69
    iget-wide v1, v0, Lkotlinx/coroutines/internal/t;->_state:J

    const-wide/high16 v3, 0x1000000000000000L

    and-long/2addr v1, v3

    cmp-long v3, v1, v6

    if-eqz v3, :cond_7c

    .line 10
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/t;->i()Lkotlinx/coroutines/internal/t;

    move-result-object v0

    invoke-direct {v0, v9, p1}, Lkotlinx/coroutines/internal/t;->e(ILjava/lang/Object;)Lkotlinx/coroutines/internal/t;

    move-result-object v0

    if-nez v0, :cond_69

    :cond_7c
    return v8
.end method

.method public final d()Z
    .registers 11

    .line 1
    :goto_0
    iget-wide v2, p0, Lkotlinx/coroutines/internal/t;->_state:J

    const-wide/high16 v0, 0x2000000000000000L

    and-long v4, v2, v0

    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    cmp-long v9, v4, v7

    if-eqz v9, :cond_e

    return v6

    :cond_e
    const-wide/high16 v4, 0x1000000000000000L

    and-long/2addr v4, v2

    cmp-long v9, v4, v7

    if-eqz v9, :cond_17

    const/4 v0, 0x0

    return v0

    :cond_17
    or-long v4, v2, v0

    .line 2
    sget-object v0, Lkotlinx/coroutines/internal/t;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-nez v0, :cond_23

    goto :goto_0

    :cond_23
    return v6
.end method

.method public final f()I
    .registers 7

    .line 1
    iget-wide v0, p0, Lkotlinx/coroutines/internal/t;->_state:J

    const-wide/32 v2, 0x3fffffff

    and-long/2addr v2, v0

    const/4 v4, 0x0

    shr-long/2addr v2, v4

    long-to-int v3, v2

    const-wide v4, 0xfffffffc0000000L

    and-long/2addr v0, v4

    const/16 v2, 0x1e

    shr-long/2addr v0, v2

    long-to-int v1, v0

    sub-int/2addr v1, v3

    const v0, 0x3fffffff    # 1.9999999f

    and-int/2addr v0, v1

    return v0
.end method

.method public final g()Z
    .registers 8

    .line 1
    iget-wide v0, p0, Lkotlinx/coroutines/internal/t;->_state:J

    const-wide/32 v2, 0x3fffffff

    and-long/2addr v2, v0

    const/4 v4, 0x0

    shr-long/2addr v2, v4

    long-to-int v3, v2

    const-wide v5, 0xfffffffc0000000L

    and-long/2addr v0, v5

    const/16 v2, 0x1e

    shr-long/2addr v0, v2

    long-to-int v1, v0

    if-ne v3, v1, :cond_16

    const/4 v4, 0x1

    :cond_16
    return v4
.end method

.method public final i()Lkotlinx/coroutines/internal/t;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/internal/t<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/internal/t;->h()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/internal/t;->c(J)Lkotlinx/coroutines/internal/t;

    move-result-object v0

    return-object v0
.end method

.method public final j()Ljava/lang/Object;
    .registers 11

    .line 1
    :cond_0
    iget-wide v2, p0, Lkotlinx/coroutines/internal/t;->_state:J

    const-wide/high16 v0, 0x1000000000000000L

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-eqz v6, :cond_e

    .line 2
    sget-object v0, Lkotlinx/coroutines/internal/t;->h:Lkotlinx/coroutines/internal/e0;

    return-object v0

    .line 3
    :cond_e
    sget-object v0, Lkotlinx/coroutines/internal/t;->e:Lkotlinx/coroutines/internal/t$a;

    const-wide/32 v4, 0x3fffffff

    and-long/2addr v4, v2

    const/4 v1, 0x0

    shr-long/2addr v4, v1

    long-to-int v6, v4

    const-wide v4, 0xfffffffc0000000L

    and-long/2addr v4, v2

    const/16 v1, 0x1e

    shr-long/2addr v4, v1

    long-to-int v1, v4

    .line 4
    iget v4, p0, Lkotlinx/coroutines/internal/t;->c:I

    and-int/2addr v1, v4

    and-int v5, v6, v4

    const/4 v7, 0x0

    if-ne v1, v5, :cond_2a

    return-object v7

    .line 5
    :cond_2a
    iget-object v1, p0, Lkotlinx/coroutines/internal/t;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    and-int/2addr v4, v6

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_38

    .line 6
    iget-boolean v0, p0, Lkotlinx/coroutines/internal/t;->b:Z

    if-eqz v0, :cond_0

    return-object v7

    .line 7
    :cond_38
    instance-of v1, v8, Lkotlinx/coroutines/internal/t$b;

    if-eqz v1, :cond_3d

    return-object v7

    :cond_3d
    add-int/lit8 v1, v6, 0x1

    const v4, 0x3fffffff    # 1.9999999f

    and-int v9, v1, v4

    .line 8
    sget-object v1, Lkotlinx/coroutines/internal/t;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, v2, v3, v9}, Lkotlinx/coroutines/internal/t$a;->b(JI)J

    move-result-wide v4

    move-object v0, v1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 9
    iget-object v0, p0, Lkotlinx/coroutines/internal/t;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Lkotlinx/coroutines/internal/t;->c:I

    and-int/2addr v1, v6

    invoke-virtual {v0, v1, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    return-object v8

    .line 10
    :cond_5b
    iget-boolean v0, p0, Lkotlinx/coroutines/internal/t;->b:Z

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 11
    :cond_60
    invoke-direct {v0, v6, v9}, Lkotlinx/coroutines/internal/t;->k(II)Lkotlinx/coroutines/internal/t;

    move-result-object v0

    if-nez v0, :cond_60

    return-object v8
.end method

###### Class kotlinx.coroutines.internal.t.a (kotlinx.coroutines.internal.t$a)
.class public final Lkotlinx/coroutines/internal/t$a;
.super Ljava/lang/Object;
.source "LockFreeTaskQueue.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/internal/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lt9/g;)V
    .registers 2

    invoke-direct {p0}, Lkotlinx/coroutines/internal/t$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)I
    .registers 6

    const-wide/high16 v0, 0x2000000000000000L

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_b

    const/4 p1, 0x2

    goto :goto_c

    :cond_b
    const/4 p1, 0x1

    :goto_c
    return p1
.end method

.method public final b(JI)J
    .registers 6

    const-wide/32 v0, 0x3fffffff

    .line 1
    invoke-virtual {p0, p1, p2, v0, v1}, Lkotlinx/coroutines/internal/t$a;->d(JJ)J

    move-result-wide p1

    int-to-long v0, p3

    const/4 p3, 0x0

    shl-long/2addr v0, p3

    or-long/2addr p1, v0

    return-wide p1
.end method

.method public final c(JI)J
    .registers 6

    const-wide v0, 0xfffffffc0000000L

    .line 1
    invoke-virtual {p0, p1, p2, v0, v1}, Lkotlinx/coroutines/internal/t$a;->d(JJ)J

    move-result-wide p1

    int-to-long v0, p3

    const/16 p3, 0x1e

    shl-long/2addr v0, p3

    or-long/2addr p1, v0

    return-wide p1
.end method

.method public final d(JJ)J
    .registers 7

    const-wide/16 v0, -0x1

    xor-long/2addr p3, v0

    and-long/2addr p1, p3

    return-wide p1
.end method

###### Class kotlinx.coroutines.internal.t.b (kotlinx.coroutines.internal.t$b)
.class public final Lkotlinx/coroutines/internal/t$b;
.super Ljava/lang/Object;
.source "LockFreeTaskQueue.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/internal/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lkotlinx/coroutines/internal/t$b;->a:I

    return-void
.end method
