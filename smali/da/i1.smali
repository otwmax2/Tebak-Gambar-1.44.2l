###### Class da.i1 (da.i1)
.class public abstract Lda/i1;
.super Lda/j1;
.source "EventLoop.common.kt"

# interfaces
.implements Lda/x0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lda/i1$a;,
        Lda/i1$b;
    }
.end annotation


# static fields
.field private static final synthetic t:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic u:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _delayed:Ljava/lang/Object;

.field private volatile synthetic _isCompleted:I

.field private volatile synthetic _queue:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Ljava/lang/Object;

    const-class v1, Lda/i1;

    const-string v2, "_queue"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    sput-object v2, Lda/i1;->t:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v2, "_delayed"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lda/i1;->u:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lda/j1;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lda/i1;->_queue:Ljava/lang/Object;

    .line 3
    iput-object v0, p0, Lda/i1;->_delayed:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lda/i1;->_isCompleted:I

    return-void
.end method

.method public static final synthetic T(Lda/i1;)Z
    .registers 1

    .line 1
    invoke-direct {p0}, Lda/i1;->a0()Z

    move-result p0

    return p0
.end method

.method private final U()V
    .registers 5

    .line 1
    invoke-static {}, Lda/s0;->a()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-direct {p0}, Lda/i1;->a0()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_13

    :cond_d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2
    :cond_13
    :goto_13
    iget-object v0, p0, Lda/i1;->_queue:Ljava/lang/Object;

    if-nez v0, :cond_25

    .line 3
    sget-object v0, Lda/i1;->t:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-static {}, Lda/l1;->a()Lkotlinx/coroutines/internal/e0;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    return-void

    .line 4
    :cond_25
    instance-of v1, v0, Lkotlinx/coroutines/internal/t;

    if-eqz v1, :cond_2f

    .line 5
    check-cast v0, Lkotlinx/coroutines/internal/t;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/t;->d()Z

    return-void

    .line 6
    :cond_2f
    invoke-static {}, Lda/l1;->a()Lkotlinx/coroutines/internal/e0;

    move-result-object v1

    if-ne v0, v1, :cond_36

    return-void

    .line 7
    :cond_36
    new-instance v1, Lkotlinx/coroutines/internal/t;

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lkotlinx/coroutines/internal/t;-><init>(IZ)V

    .line 8
    move-object v2, v0

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lkotlinx/coroutines/internal/t;->a(Ljava/lang/Object;)I

    .line 9
    sget-object v2, Lda/i1;->t:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v2, p0, v0, v1}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    return-void
.end method

.method private final X()Ljava/lang/Runnable;
    .registers 5

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lda/i1;->_queue:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 2
    :cond_6
    instance-of v2, v0, Lkotlinx/coroutines/internal/t;

    if-eqz v2, :cond_22

    .line 3
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/internal/t;

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/t;->j()Ljava/lang/Object;

    move-result-object v2

    .line 4
    sget-object v3, Lkotlinx/coroutines/internal/t;->h:Lkotlinx/coroutines/internal/e0;

    if-eq v2, v3, :cond_18

    check-cast v2, Ljava/lang/Runnable;

    return-object v2

    .line 5
    :cond_18
    sget-object v2, Lda/i1;->t:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/t;->i()Lkotlinx/coroutines/internal/t;

    move-result-object v1

    invoke-static {v2, p0, v0, v1}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_22
    invoke-static {}, Lda/l1;->a()Lkotlinx/coroutines/internal/e0;

    move-result-object v2

    if-ne v0, v2, :cond_29

    return-object v1

    .line 7
    :cond_29
    sget-object v2, Lda/i1;->t:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v2, p0, v0, v1}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Runnable;

    return-object v0
.end method

.method private final Z(Ljava/lang/Runnable;)Z
    .registers 7

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lda/i1;->_queue:Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lda/i1;->a0()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    return v2

    :cond_a
    const/4 v1, 0x1

    if-nez v0, :cond_17

    .line 3
    sget-object v0, Lda/i1;->t:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    invoke-static {v0, p0, v2, p1}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 4
    :cond_17
    instance-of v3, v0, Lkotlinx/coroutines/internal/t;

    if-eqz v3, :cond_36

    .line 5
    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/internal/t;

    invoke-virtual {v3, p1}, Lkotlinx/coroutines/internal/t;->a(Ljava/lang/Object;)I

    move-result v4

    if-eqz v4, :cond_35

    if-eq v4, v1, :cond_2b

    const/4 v0, 0x2

    if-eq v4, v0, :cond_2a

    goto :goto_0

    :cond_2a
    return v2

    .line 6
    :cond_2b
    sget-object v1, Lda/i1;->t:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3}, Lkotlinx/coroutines/internal/t;->i()Lkotlinx/coroutines/internal/t;

    move-result-object v2

    invoke-static {v1, p0, v0, v2}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_35
    return v1

    .line 7
    :cond_36
    invoke-static {}, Lda/l1;->a()Lkotlinx/coroutines/internal/e0;

    move-result-object v3

    if-ne v0, v3, :cond_3d

    return v2

    .line 8
    :cond_3d
    new-instance v2, Lkotlinx/coroutines/internal/t;

    const/16 v3, 0x8

    invoke-direct {v2, v3, v1}, Lkotlinx/coroutines/internal/t;-><init>(IZ)V

    .line 9
    move-object v3, v0

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lkotlinx/coroutines/internal/t;->a(Ljava/lang/Object;)I

    .line 10
    invoke-virtual {v2, p1}, Lkotlinx/coroutines/internal/t;->a(Ljava/lang/Object;)I

    .line 11
    sget-object v3, Lda/i1;->t:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v3, p0, v0, v2}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1
.end method

.method private final a0()Z
    .registers 2

    .line 1
    iget v0, p0, Lda/i1;->_isCompleted:I

    return v0
.end method

.method private final e0()V
    .registers 4

    .line 1
    invoke-static {}, Lda/c;->a()Lda/b;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 2
    :goto_7
    iget-object v2, p0, Lda/i1;->_delayed:Ljava/lang/Object;

    check-cast v2, Lda/i1$b;

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/j0;->i()Lkotlinx/coroutines/internal/k0;

    move-result-object v2

    check-cast v2, Lda/i1$a;

    if-nez v2, :cond_16

    goto :goto_1a

    .line 3
    :cond_16
    invoke-virtual {p0, v0, v1, v2}, Lda/j1;->R(JLda/i1$a;)V

    goto :goto_7

    :cond_1a
    :goto_1a
    return-void
.end method

.method private final i0(JLda/i1$a;)I
    .registers 7

    .line 1
    invoke-direct {p0}, Lda/i1;->a0()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_8
    iget-object v0, p0, Lda/i1;->_delayed:Ljava/lang/Object;

    check-cast v0, Lda/i1$b;

    if-nez v0, :cond_20

    .line 3
    sget-object v0, Lda/i1;->u:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    new-instance v2, Lda/i1$b;

    invoke-direct {v2, p1, p2}, Lda/i1$b;-><init>(J)V

    invoke-static {v0, p0, v1, v2}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lda/i1;->_delayed:Ljava/lang/Object;

    invoke-static {v0}, Lt9/m;->b(Ljava/lang/Object;)V

    check-cast v0, Lda/i1$b;

    .line 5
    :cond_20
    invoke-virtual {p3, p1, p2, v0, p0}, Lda/i1$a;->l(JLda/i1$b;Lda/i1;)I

    move-result p1

    return p1
.end method

.method private final j0(Z)V
    .registers 2

    .line 1
    iput p1, p0, Lda/i1;->_isCompleted:I

    return-void
.end method

.method private final l0(Lda/i1$a;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lda/i1;->_delayed:Ljava/lang/Object;

    check-cast v0, Lda/i1$b;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/j0;->e()Lkotlinx/coroutines/internal/k0;

    move-result-object v0

    check-cast v0, Lda/i1$a;

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-ne v0, p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method


# virtual methods
.method protected I()J
    .registers 7

    .line 1
    invoke-super {p0}, Lda/h1;->I()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_b

    return-wide v2

    .line 2
    :cond_b
    iget-object v0, p0, Lda/i1;->_queue:Ljava/lang/Object;

    const-wide v4, 0x7fffffffffffffffL

    if-eqz v0, :cond_29

    .line 3
    instance-of v1, v0, Lkotlinx/coroutines/internal/t;

    if-eqz v1, :cond_21

    check-cast v0, Lkotlinx/coroutines/internal/t;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/t;->g()Z

    move-result v0

    if-nez v0, :cond_29

    return-wide v2

    .line 4
    :cond_21
    invoke-static {}, Lda/l1;->a()Lkotlinx/coroutines/internal/e0;

    move-result-object v1

    if-ne v0, v1, :cond_28

    return-wide v4

    :cond_28
    return-wide v2

    .line 5
    :cond_29
    iget-object v0, p0, Lda/i1;->_delayed:Ljava/lang/Object;

    check-cast v0, Lda/i1$b;

    if-eqz v0, :cond_47

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/j0;->e()Lkotlinx/coroutines/internal/k0;

    move-result-object v0

    check-cast v0, Lda/i1$a;

    if-nez v0, :cond_38

    goto :goto_47

    .line 6
    :cond_38
    iget-wide v0, v0, Lda/i1$a;->o:J

    invoke-static {}, Lda/c;->a()Lda/b;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    invoke-static {v0, v1, v2, v3}, Ly9/j;->b(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_47
    :goto_47
    return-wide v4
.end method

.method public N()J
    .registers 10

    .line 1
    invoke-virtual {p0}, Lda/h1;->O()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_9

    return-wide v1

    .line 2
    :cond_9
    iget-object v0, p0, Lda/i1;->_delayed:Ljava/lang/Object;

    check-cast v0, Lda/i1$b;

    if-eqz v0, :cond_45

    .line 3
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/j0;->d()Z

    move-result v3

    if-nez v3, :cond_45

    .line 4
    invoke-static {}, Lda/c;->a()Lda/b;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 5
    :cond_1c
    monitor-enter v0

    .line 6
    :try_start_1d
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/j0;->b()Lkotlinx/coroutines/internal/k0;

    move-result-object v5
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_42

    const/4 v6, 0x0

    if-nez v5, :cond_26

    monitor-exit v0

    goto :goto_3d

    .line 7
    :cond_26
    :try_start_26
    check-cast v5, Lda/i1$a;

    .line 8
    invoke-virtual {v5, v3, v4}, Lda/i1$a;->m(J)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_34

    .line 9
    invoke-direct {p0, v5}, Lda/i1;->Z(Ljava/lang/Runnable;)Z

    move-result v5

    goto :goto_35

    :cond_34
    const/4 v5, 0x0

    :goto_35
    if-eqz v5, :cond_3c

    .line 10
    invoke-virtual {v0, v8}, Lkotlinx/coroutines/internal/j0;->h(I)Lkotlinx/coroutines/internal/k0;

    move-result-object v5
    :try_end_3b
    .catchall {:try_start_26 .. :try_end_3b} :catchall_42

    move-object v6, v5

    .line 11
    :cond_3c
    monitor-exit v0

    .line 12
    :goto_3d
    check-cast v6, Lda/i1$a;

    if-nez v6, :cond_1c

    goto :goto_45

    :catchall_42
    move-exception v1

    .line 13
    monitor-exit v0

    throw v1

    .line 14
    :cond_45
    :goto_45
    invoke-direct {p0}, Lda/i1;->X()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_4f

    .line 15
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-wide v1

    .line 16
    :cond_4f
    invoke-virtual {p0}, Lda/i1;->I()J

    move-result-wide v0

    return-wide v0
.end method

.method public Y(Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lda/i1;->Z(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2
    invoke-virtual {p0}, Lda/j1;->S()V

    goto :goto_f

    .line 3
    :cond_a
    sget-object v0, Lda/u0;->v:Lda/u0;

    invoke-virtual {v0, p1}, Lda/u0;->Y(Ljava/lang/Runnable;)V

    :goto_f
    return-void
.end method

.method protected c0()Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Lda/h1;->M()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 2
    :cond_8
    iget-object v0, p0, Lda/i1;->_delayed:Ljava/lang/Object;

    check-cast v0, Lda/i1$b;

    if-eqz v0, :cond_15

    .line 3
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/j0;->d()Z

    move-result v0

    if-nez v0, :cond_15

    return v1

    .line 4
    :cond_15
    iget-object v0, p0, Lda/i1;->_queue:Ljava/lang/Object;

    const/4 v2, 0x1

    if-nez v0, :cond_1c

    :goto_1a
    const/4 v1, 0x1

    goto :goto_2e

    .line 5
    :cond_1c
    instance-of v3, v0, Lkotlinx/coroutines/internal/t;

    if-eqz v3, :cond_27

    check-cast v0, Lkotlinx/coroutines/internal/t;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/t;->g()Z

    move-result v1

    goto :goto_2e

    .line 6
    :cond_27
    invoke-static {}, Lda/l1;->a()Lkotlinx/coroutines/internal/e0;

    move-result-object v3

    if-ne v0, v3, :cond_2e

    goto :goto_1a

    :cond_2e
    :goto_2e
    return v1
.end method

.method protected final f0()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lda/i1;->_queue:Ljava/lang/Object;

    .line 2
    iput-object v0, p0, Lda/i1;->_delayed:Ljava/lang/Object;

    return-void
.end method

.method public final g0(JLda/i1$a;)V
    .registers 6

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lda/i1;->i0(JLda/i1$a;)I

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v1, 0x1

    if-eq v0, v1, :cond_19

    const/4 p1, 0x2

    if-ne v0, p1, :cond_d

    goto :goto_26

    .line 2
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "unexpected result"

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_19
    invoke-virtual {p0, p1, p2, p3}, Lda/j1;->R(JLda/i1$a;)V

    goto :goto_26

    .line 5
    :cond_1d
    invoke-direct {p0, p3}, Lda/i1;->l0(Lda/i1$a;)Z

    move-result p1

    if-eqz p1, :cond_26

    invoke-virtual {p0}, Lda/j1;->S()V

    :cond_26
    :goto_26
    return-void
.end method

.method public final m(Lk9/g;Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    invoke-virtual {p0, p2}, Lda/i1;->Y(Ljava/lang/Runnable;)V

    return-void
.end method

.method public shutdown()V
    .registers 6

    .line 1
    sget-object v0, Lda/s2;->a:Lda/s2;

    invoke-virtual {v0}, Lda/s2;->c()V

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lda/i1;->j0(Z)V

    .line 3
    invoke-direct {p0}, Lda/i1;->U()V

    .line 4
    :cond_c
    invoke-virtual {p0}, Lda/i1;->N()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_c

    .line 5
    invoke-direct {p0}, Lda/i1;->e0()V

    return-void
.end method

###### Class da.i1.a (da.i1$a)
.class public abstract Lda/i1$a;
.super Ljava/lang/Object;
.source "EventLoop.common.kt"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;
.implements Lda/e1;
.implements Lkotlinx/coroutines/internal/k0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lda/i1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable<",
        "Lda/i1$a;",
        ">;",
        "Lda/e1;",
        "Lkotlinx/coroutines/internal/k0;"
    }
.end annotation


# instance fields
.field private volatile _heap:Ljava/lang/Object;

.field public o:J

.field private p:I


# virtual methods
.method public c(Lkotlinx/coroutines/internal/j0;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/internal/j0<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lda/i1$a;->_heap:Ljava/lang/Object;

    invoke-static {}, Lda/l1;->b()Lkotlinx/coroutines/internal/e0;

    move-result-object v1

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    if-eqz v0, :cond_10

    .line 2
    iput-object p1, p0, Lda/i1$a;->_heap:Ljava/lang/Object;

    return-void

    .line 3
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 1
    check-cast p1, Lda/i1$a;

    invoke-virtual {p0, p1}, Lda/i1$a;->k(Lda/i1$a;)I

    move-result p1

    return p1
.end method

.method public f()Lkotlinx/coroutines/internal/j0;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/internal/j0<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lda/i1$a;->_heap:Ljava/lang/Object;

    instance-of v1, v0, Lkotlinx/coroutines/internal/j0;

    if-eqz v1, :cond_9

    check-cast v0, Lkotlinx/coroutines/internal/j0;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public g(I)V
    .registers 2

    .line 1
    iput p1, p0, Lda/i1$a;->p:I

    return-void
.end method

.method public final declared-synchronized i()V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lda/i1$a;->_heap:Ljava/lang/Object;

    .line 2
    invoke-static {}, Lda/l1;->b()Lkotlinx/coroutines/internal/e0;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_20

    if-ne v0, v1, :cond_b

    monitor-exit p0

    return-void

    .line 3
    :cond_b
    :try_start_b
    instance-of v1, v0, Lda/i1$b;

    if-eqz v1, :cond_12

    check-cast v0, Lda/i1$b;

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    if-eqz v0, :cond_18

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/j0;->g(Lkotlinx/coroutines/internal/k0;)Z

    .line 4
    :cond_18
    invoke-static {}, Lda/l1;->b()Lkotlinx/coroutines/internal/e0;

    move-result-object v0

    iput-object v0, p0, Lda/i1$a;->_heap:Ljava/lang/Object;
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_20

    .line 5
    monitor-exit p0

    return-void

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public j()I
    .registers 2

    .line 1
    iget v0, p0, Lda/i1$a;->p:I

    return v0
.end method

.method public k(Lda/i1$a;)I
    .registers 6

    .line 1
    iget-wide v0, p0, Lda/i1$a;->o:J

    iget-wide v2, p1, Lda/i1$a;->o:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_d

    const/4 p1, 0x1

    goto :goto_14

    :cond_d
    cmp-long p1, v0, v2

    if-gez p1, :cond_13

    const/4 p1, -0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    return p1
.end method

.method public final declared-synchronized l(JLda/i1$b;Lda/i1;)I
    .registers 12

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lda/i1$a;->_heap:Ljava/lang/Object;

    invoke-static {}, Lda/l1;->b()Lkotlinx/coroutines/internal/e0;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_4d

    if-ne v0, v1, :cond_c

    const/4 p1, 0x2

    monitor-exit p0

    return p1

    .line 2
    :cond_c
    :try_start_c
    monitor-enter p3
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_4d

    .line 3
    :try_start_d
    invoke-virtual {p3}, Lkotlinx/coroutines/internal/j0;->b()Lkotlinx/coroutines/internal/k0;

    move-result-object v0

    check-cast v0, Lda/i1$a;

    .line 4
    invoke-static {p4}, Lda/i1;->T(Lda/i1;)Z

    move-result p4
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_4a

    if-eqz p4, :cond_1d

    const/4 p1, 0x1

    :try_start_1a
    monitor-exit p3
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_4d

    monitor-exit p0

    return p1

    :cond_1d
    const-wide/16 v1, 0x0

    if-nez v0, :cond_24

    .line 5
    :try_start_21
    iput-wide p1, p3, Lda/i1$b;->b:J

    goto :goto_38

    .line 6
    :cond_24
    iget-wide v3, v0, Lda/i1$a;->o:J

    sub-long v5, v3, p1

    cmp-long p4, v5, v1

    if-ltz p4, :cond_2d

    goto :goto_2e

    :cond_2d
    move-wide p1, v3

    .line 7
    :goto_2e
    iget-wide v3, p3, Lda/i1$b;->b:J

    sub-long v3, p1, v3

    cmp-long p4, v3, v1

    if-lez p4, :cond_38

    iput-wide p1, p3, Lda/i1$b;->b:J

    .line 8
    :cond_38
    :goto_38
    iget-wide p1, p0, Lda/i1$a;->o:J

    iget-wide v3, p3, Lda/i1$b;->b:J

    sub-long/2addr p1, v3

    cmp-long p4, p1, v1

    if-gez p4, :cond_43

    iput-wide v3, p0, Lda/i1$a;->o:J

    .line 9
    :cond_43
    invoke-virtual {p3, p0}, Lkotlinx/coroutines/internal/j0;->a(Lkotlinx/coroutines/internal/k0;)V
    :try_end_46
    .catchall {:try_start_21 .. :try_end_46} :catchall_4a

    .line 10
    :try_start_46
    monitor-exit p3
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_4d

    const/4 p1, 0x0

    .line 11
    monitor-exit p0

    return p1

    :catchall_4a
    move-exception p1

    .line 12
    :try_start_4b
    monitor-exit p3

    throw p1
    :try_end_4d
    .catchall {:try_start_4b .. :try_end_4d} :catchall_4d

    :catchall_4d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final m(J)Z
    .registers 6

    .line 1
    iget-wide v0, p0, Lda/i1$a;->o:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Delayed[nanos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lda/i1$a;->o:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class da.i1.b (da.i1$b)
.class public final Lda/i1$b;
.super Lkotlinx/coroutines/internal/j0;
.source "EventLoop.common.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lda/i1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/coroutines/internal/j0<",
        "Lda/i1$a;",
        ">;"
    }
.end annotation


# instance fields
.field public b:J


# direct methods
.method public constructor <init>(J)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/internal/j0;-><init>()V

    .line 2
    iput-wide p1, p0, Lda/i1$b;->b:J

    return-void
.end method
