###### Class da.e2 (da.e2)
.class public Lda/e2;
.super Ljava/lang/Object;
.source "JobSupport.kt"

# interfaces
.implements Lda/x1;
.implements Lda/u;
.implements Lda/l2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lda/e2$c;,
        Lda/e2$b;,
        Lda/e2$a;
    }
.end annotation


# static fields
.field private static final synthetic o:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _parentHandle:Ljava/lang/Object;

.field private volatile synthetic _state:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lda/e2;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_state"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lda/e2;->o:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_a

    .line 2
    invoke-static {}, Lda/f2;->c()Lda/g1;

    move-result-object p1

    goto :goto_e

    :cond_a
    invoke-static {}, Lda/f2;->d()Lda/g1;

    move-result-object p1

    :goto_e
    iput-object p1, p0, Lda/e2;->_state:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lda/e2;->_parentHandle:Ljava/lang/Object;

    return-void
.end method

.method private final A0(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    .line 1
    instance-of v0, p1, Lda/e2$c;

    const-string v1, "Active"

    if-eqz v0, :cond_1a

    .line 2
    check-cast p1, Lda/e2$c;

    invoke-virtual {p1}, Lda/e2$c;->g()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v1, "Cancelling"

    goto :goto_33

    .line 3
    :cond_11
    invoke-virtual {p1}, Lda/e2$c;->h()Z

    move-result p1

    if-eqz p1, :cond_33

    const-string v1, "Completing"

    goto :goto_33

    .line 4
    :cond_1a
    instance-of v0, p1, Lda/s1;

    if-eqz v0, :cond_2a

    check-cast p1, Lda/s1;

    invoke-interface {p1}, Lda/s1;->c()Z

    move-result p1

    if-eqz p1, :cond_27

    goto :goto_33

    :cond_27
    const-string v1, "New"

    goto :goto_33

    .line 5
    :cond_2a
    instance-of p1, p1, Lda/a0;

    if-eqz p1, :cond_31

    const-string v1, "Cancelled"

    goto :goto_33

    :cond_31
    const-string v1, "Completed"

    :cond_33
    :goto_33
    return-object v1
.end method

.method public static synthetic C0(Lda/e2;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;
    .registers 5

    if-nez p4, :cond_c

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_7

    const/4 p2, 0x0

    .line 1
    :cond_7
    invoke-virtual {p0, p1, p2}, Lda/e2;->B0(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;

    move-result-object p0

    return-object p0

    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: toCancellationException"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic D(Lda/e2;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-virtual {p0}, Lda/e2;->R()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final E0(Lda/s1;Ljava/lang/Object;)Z
    .registers 7

    .line 1
    invoke-static {}, Lda/s0;->a()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1d

    instance-of v0, p1, Lda/g1;

    if-nez v0, :cond_13

    instance-of v0, p1, Lda/d2;

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    if-eqz v0, :cond_17

    goto :goto_1d

    :cond_17
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2
    :cond_1d
    :goto_1d
    invoke-static {}, Lda/s0;->a()Z

    move-result v0

    if-eqz v0, :cond_2f

    instance-of v0, p2, Lda/a0;

    xor-int/2addr v0, v2

    if-eqz v0, :cond_29

    goto :goto_2f

    :cond_29
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :cond_2f
    :goto_2f
    sget-object v0, Lda/e2;->o:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {p2}, Lda/f2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, p0, p1, v3}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    return v1

    :cond_3c
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lda/e2;->s0(Ljava/lang/Throwable;)V

    .line 5
    invoke-virtual {p0, p2}, Lda/e2;->t0(Ljava/lang/Object;)V

    .line 6
    invoke-direct {p0, p1, p2}, Lda/e2;->T(Lda/s1;Ljava/lang/Object;)V

    return v2
.end method

.method private final F0(Lda/s1;Ljava/lang/Throwable;)Z
    .registers 8

    .line 1
    invoke-static {}, Lda/s0;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    instance-of v0, p1, Lda/e2$c;

    xor-int/2addr v0, v1

    if-eqz v0, :cond_d

    goto :goto_13

    :cond_d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2
    :cond_13
    :goto_13
    invoke-static {}, Lda/s0;->a()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p1}, Lda/s1;->c()Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_26

    :cond_20
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :cond_26
    :goto_26
    invoke-direct {p0, p1}, Lda/e2;->c0(Lda/s1;)Lda/i2;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_2e

    return v2

    .line 4
    :cond_2e
    new-instance v3, Lda/e2$c;

    invoke-direct {v3, v0, v2, p2}, Lda/e2$c;-><init>(Lda/i2;ZLjava/lang/Throwable;)V

    .line 5
    sget-object v4, Lda/e2;->o:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v4, p0, p1, v3}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3c

    return v2

    .line 6
    :cond_3c
    invoke-direct {p0, v0, p2}, Lda/e2;->q0(Lda/i2;Ljava/lang/Throwable;)V

    return v1
.end method

.method public static final synthetic G(Lda/e2;Lda/e2$c;Lda/t;Ljava/lang/Object;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lda/e2;->U(Lda/e2$c;Lda/t;Ljava/lang/Object;)V

    return-void
.end method

.method private final G0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    instance-of v0, p1, Lda/s1;

    if-nez v0, :cond_9

    .line 2
    invoke-static {}, Lda/f2;->a()Lkotlinx/coroutines/internal/e0;

    move-result-object p1

    return-object p1

    .line 3
    :cond_9
    instance-of v0, p1, Lda/g1;

    if-nez v0, :cond_11

    instance-of v0, p1, Lda/d2;

    if-eqz v0, :cond_27

    :cond_11
    instance-of v0, p1, Lda/t;

    if-nez v0, :cond_27

    instance-of v0, p2, Lda/a0;

    if-nez v0, :cond_27

    .line 4
    check-cast p1, Lda/s1;

    invoke-direct {p0, p1, p2}, Lda/e2;->E0(Lda/s1;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    return-object p2

    .line 5
    :cond_22
    invoke-static {}, Lda/f2;->b()Lkotlinx/coroutines/internal/e0;

    move-result-object p1

    return-object p1

    .line 6
    :cond_27
    check-cast p1, Lda/s1;

    invoke-direct {p0, p1, p2}, Lda/e2;->H0(Lda/s1;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final H(Ljava/lang/Object;Lda/i2;Lda/d2;)Z
    .registers 6

    .line 1
    new-instance v0, Lda/e2$d;

    invoke-direct {v0, p3, p0, p1}, Lda/e2$d;-><init>(Lkotlinx/coroutines/internal/r;Lda/e2;Ljava/lang/Object;)V

    .line 2
    :goto_5
    invoke-virtual {p2}, Lkotlinx/coroutines/internal/r;->t()Lkotlinx/coroutines/internal/r;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p3, p2, v0}, Lkotlinx/coroutines/internal/r;->B(Lkotlinx/coroutines/internal/r;Lkotlinx/coroutines/internal/r;Lkotlinx/coroutines/internal/r$a;)I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_15

    const/4 v1, 0x2

    if-eq p1, v1, :cond_14

    goto :goto_5

    :cond_14
    const/4 v1, 0x0

    :cond_15
    return v1
.end method

.method private final H0(Lda/s1;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    .line 1
    invoke-direct {p0, p1}, Lda/e2;->c0(Lda/s1;)Lda/i2;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-static {}, Lda/f2;->b()Lkotlinx/coroutines/internal/e0;

    move-result-object p1

    return-object p1

    .line 2
    :cond_b
    instance-of v1, p1, Lda/e2$c;

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    move-object v1, p1

    check-cast v1, Lda/e2$c;

    goto :goto_15

    :cond_14
    move-object v1, v2

    :goto_15
    const/4 v3, 0x0

    if-nez v1, :cond_1d

    new-instance v1, Lda/e2$c;

    invoke-direct {v1, v0, v3, v2}, Lda/e2$c;-><init>(Lda/i2;ZLjava/lang/Throwable;)V

    .line 3
    :cond_1d
    new-instance v4, Lt9/y;

    invoke-direct {v4}, Lt9/y;-><init>()V

    .line 4
    monitor-enter v1

    .line 5
    :try_start_23
    invoke-virtual {v1}, Lda/e2$c;->h()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-static {}, Lda/f2;->a()Lkotlinx/coroutines/internal/e0;

    move-result-object p1
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_9e

    monitor-exit v1

    return-object p1

    :cond_2f
    const/4 v5, 0x1

    .line 6
    :try_start_30
    invoke-virtual {v1, v5}, Lda/e2$c;->k(Z)V

    if-eq v1, p1, :cond_43

    .line 7
    sget-object v6, Lda/e2;->o:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v6, p0, p1, v1}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_43

    invoke-static {}, Lda/f2;->b()Lkotlinx/coroutines/internal/e0;

    move-result-object p1
    :try_end_41
    .catchall {:try_start_30 .. :try_end_41} :catchall_9e

    monitor-exit v1

    return-object p1

    .line 8
    :cond_43
    :try_start_43
    invoke-static {}, Lda/s0;->a()Z

    move-result v6

    if-eqz v6, :cond_57

    invoke-virtual {v1}, Lda/e2$c;->i()Z

    move-result v6

    xor-int/2addr v6, v5

    if-eqz v6, :cond_51

    goto :goto_57

    :cond_51
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 9
    :cond_57
    :goto_57
    invoke-virtual {v1}, Lda/e2$c;->g()Z

    move-result v6

    .line 10
    instance-of v7, p2, Lda/a0;

    if-eqz v7, :cond_63

    move-object v7, p2

    check-cast v7, Lda/a0;

    goto :goto_64

    :cond_63
    move-object v7, v2

    :goto_64
    if-eqz v7, :cond_6b

    iget-object v7, v7, Lda/a0;->a:Ljava/lang/Throwable;

    invoke-virtual {v1, v7}, Lda/e2$c;->a(Ljava/lang/Throwable;)V

    .line 11
    :cond_6b
    invoke-virtual {v1}, Lda/e2$c;->e()Ljava/lang/Throwable;

    move-result-object v7

    if-nez v6, :cond_72

    const/4 v3, 0x1

    :cond_72
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_7d

    move-object v2, v7

    :cond_7d
    iput-object v2, v4, Lt9/y;->o:Ljava/lang/Object;

    .line 12
    sget-object v3, Lh9/t;->a:Lh9/t;
    :try_end_81
    .catchall {:try_start_43 .. :try_end_81} :catchall_9e

    monitor-exit v1

    .line 13
    move-object v3, v2

    check-cast v3, Ljava/lang/Throwable;

    if-eqz v2, :cond_8a

    invoke-direct {p0, v0, v2}, Lda/e2;->q0(Lda/i2;Ljava/lang/Throwable;)V

    .line 14
    :cond_8a
    invoke-direct {p0, p1}, Lda/e2;->X(Lda/s1;)Lda/t;

    move-result-object p1

    if-eqz p1, :cond_99

    .line 15
    invoke-direct {p0, v1, p1, p2}, Lda/e2;->I0(Lda/e2$c;Lda/t;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_99

    .line 16
    sget-object p1, Lda/f2;->b:Lkotlinx/coroutines/internal/e0;

    return-object p1

    .line 17
    :cond_99
    invoke-direct {p0, v1, p2}, Lda/e2;->W(Lda/e2$c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catchall_9e
    move-exception p1

    .line 18
    monitor-exit v1

    throw p1
.end method

.method private final I(Ljava/lang/Throwable;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_8

    return-void

    .line 2
    :cond_8
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 3
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1, v0}, Ljava/util/IdentityHashMap;-><init>(I)V

    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    .line 4
    invoke-static {}, Lda/s0;->d()Z

    move-result v1

    if-nez v1, :cond_1d

    move-object v1, p1

    goto :goto_21

    :cond_1d
    invoke-static {p1}, Lkotlinx/coroutines/internal/d0;->l(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    .line 5
    :goto_21
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_25
    :goto_25
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    .line 6
    invoke-static {}, Lda/s0;->d()Z

    move-result v3

    if-nez v3, :cond_38

    goto :goto_3c

    :cond_38
    invoke-static {v2}, Lkotlinx/coroutines/internal/d0;->l(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    :goto_3c
    if-eq v2, p1, :cond_25

    if-eq v2, v1, :cond_25

    .line 7
    instance-of v3, v2, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_25

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 8
    invoke-static {p1, v2}, Lh9/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_25

    :cond_4e
    return-void
.end method

.method private final I0(Lda/e2$c;Lda/t;Ljava/lang/Object;)Z
    .registers 10

    .line 1
    :cond_0
    iget-object v0, p2, Lda/t;->s:Lda/u;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    new-instance v3, Lda/e2$b;

    invoke-direct {v3, p0, p1, p2, p3}, Lda/e2$b;-><init>(Lda/e2;Lda/e2$c;Lda/t;Ljava/lang/Object;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3
    invoke-static/range {v0 .. v5}, Lda/x1$a;->c(Lda/x1;ZZLs9/l;ILjava/lang/Object;)Lda/e1;

    move-result-object v0

    .line 4
    sget-object v1, Lda/j2;->o:Lda/j2;

    if-eq v0, v1, :cond_15

    const/4 p1, 0x1

    return p1

    .line 5
    :cond_15
    invoke-direct {p0, p2}, Lda/e2;->p0(Lkotlinx/coroutines/internal/r;)Lda/t;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1
.end method

.method private final L(Lk9/d;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk9/d<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lda/e2$a;

    invoke-static {p1}, Ll9/b;->b(Lk9/d;)Lk9/d;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lda/e2$a;-><init>(Lk9/d;Lda/e2;)V

    .line 2
    invoke-virtual {v0}, Lda/n;->y()V

    .line 3
    new-instance v1, Lda/n2;

    invoke-direct {v1, v0}, Lda/n2;-><init>(Lda/n;)V

    invoke-virtual {p0, v1}, Lda/e2;->f(Ls9/l;)Lda/e1;

    move-result-object v1

    invoke-static {v0, v1}, Lda/p;->a(Lda/m;Lda/e1;)V

    .line 4
    invoke-virtual {v0}, Lda/n;->t()Ljava/lang/Object;

    move-result-object v0

    .line 5
    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_25

    invoke-static {p1}, Lm9/h;->c(Lk9/d;)V

    :cond_25
    return-object v0
.end method

.method private final P(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .line 1
    :cond_0
    invoke-virtual {p0}, Lda/e2;->e0()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lda/s1;

    if-eqz v1, :cond_2d

    instance-of v1, v0, Lda/e2$c;

    if-eqz v1, :cond_16

    move-object v1, v0

    check-cast v1, Lda/e2$c;

    invoke-virtual {v1}, Lda/e2$c;->h()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_2d

    .line 3
    :cond_16
    new-instance v1, Lda/a0;

    invoke-direct {p0, p1}, Lda/e2;->V(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lda/a0;-><init>(Ljava/lang/Throwable;ZILt9/g;)V

    .line 4
    invoke-direct {p0, v0, v1}, Lda/e2;->G0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    invoke-static {}, Lda/f2;->b()Lkotlinx/coroutines/internal/e0;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-object v0

    .line 6
    :cond_2d
    :goto_2d
    invoke-static {}, Lda/f2;->a()Lkotlinx/coroutines/internal/e0;

    move-result-object p1

    return-object p1
.end method

.method private final Q(Ljava/lang/Throwable;)Z
    .registers 6

    .line 1
    invoke-virtual {p0}, Lda/e2;->j0()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 2
    :cond_8
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    .line 3
    invoke-virtual {p0}, Lda/e2;->d0()Lda/s;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 4
    sget-object v3, Lda/j2;->o:Lda/j2;

    if-ne v2, v3, :cond_15

    goto :goto_20

    .line 5
    :cond_15
    invoke-interface {v2, p1}, Lda/s;->e(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_1f

    if-eqz v0, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :cond_1f
    :goto_1f
    return v1

    :cond_20
    :goto_20
    return v0
.end method

.method private final T(Lda/s1;Ljava/lang/Object;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lda/e2;->d0()Lda/s;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 2
    invoke-interface {v0}, Lda/e1;->i()V

    .line 3
    sget-object v0, Lda/j2;->o:Lda/j2;

    invoke-virtual {p0, v0}, Lda/e2;->y0(Lda/s;)V

    .line 4
    :cond_e
    instance-of v0, p2, Lda/a0;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    check-cast p2, Lda/a0;

    goto :goto_17

    :cond_16
    move-object p2, v1

    :goto_17
    if-eqz p2, :cond_1b

    iget-object v1, p2, Lda/a0;->a:Ljava/lang/Throwable;

    .line 5
    :cond_1b
    instance-of p2, p1, Lda/d2;

    if-eqz p2, :cond_49

    .line 6
    :try_start_1f
    move-object p2, p1

    check-cast p2, Lda/d2;

    invoke-virtual {p2, v1}, Lda/c0;->C(Ljava/lang/Throwable;)V
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_26

    goto :goto_52

    :catchall_26
    move-exception p2

    .line 7
    new-instance v0, Lda/d0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in completion handler "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lda/d0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lda/e2;->g0(Ljava/lang/Throwable;)V

    goto :goto_52

    .line 8
    :cond_49
    invoke-interface {p1}, Lda/s1;->f()Lda/i2;

    move-result-object p1

    if-eqz p1, :cond_52

    invoke-direct {p0, p1, v1}, Lda/e2;->r0(Lda/i2;Ljava/lang/Throwable;)V

    :cond_52
    :goto_52
    return-void
.end method

.method private final U(Lda/e2$c;Lda/t;Ljava/lang/Object;)V
    .registers 5

    .line 1
    invoke-static {}, Lda/s0;->a()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lda/e2;->e0()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    if-eqz v0, :cond_12

    goto :goto_18

    :cond_12
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2
    :cond_18
    :goto_18
    invoke-direct {p0, p2}, Lda/e2;->p0(Lkotlinx/coroutines/internal/r;)Lda/t;

    move-result-object p2

    if-eqz p2, :cond_25

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lda/e2;->I0(Lda/e2$c;Lda/t;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_25

    return-void

    .line 4
    :cond_25
    invoke-direct {p0, p1, p3}, Lda/e2;->W(Lda/e2$c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lda/e2;->J(Ljava/lang/Object;)V

    return-void
.end method

.method private final V(Ljava/lang/Object;)Ljava/lang/Throwable;
    .registers 4

    if-nez p1, :cond_4

    const/4 v0, 0x1

    goto :goto_6

    .line 1
    :cond_4
    instance-of v0, p1, Ljava/lang/Throwable;

    :goto_6
    if-eqz v0, :cond_18

    check-cast p1, Ljava/lang/Throwable;

    if-nez p1, :cond_23

    const/4 p1, 0x0

    .line 2
    new-instance v0, Lda/y1;

    invoke-static {p0}, Lda/e2;->D(Lda/e2;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lda/y1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lda/x1;)V

    move-object p1, v0

    goto :goto_23

    :cond_18
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.ParentJob"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lda/l2;

    invoke-interface {p1}, Lda/l2;->y()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    :cond_23
    :goto_23
    return-object p1
.end method

.method private final W(Lda/e2$c;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    .line 1
    invoke-static {}, Lda/s0;->a()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lda/e2;->e0()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_10

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
    invoke-static {}, Lda/s0;->a()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {p1}, Lda/e2$c;->i()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_28

    goto :goto_2e

    :cond_28
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :cond_2e
    :goto_2e
    invoke-static {}, Lda/s0;->a()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-virtual {p1}, Lda/e2$c;->h()Z

    move-result v0

    if-eqz v0, :cond_3b

    goto :goto_41

    :cond_3b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_41
    :goto_41
    instance-of v0, p2, Lda/a0;

    const/4 v3, 0x0

    if-eqz v0, :cond_4a

    move-object v0, p2

    check-cast v0, Lda/a0;

    goto :goto_4b

    :cond_4a
    move-object v0, v3

    :goto_4b
    if-eqz v0, :cond_50

    iget-object v0, v0, Lda/a0;->a:Ljava/lang/Throwable;

    goto :goto_51

    :cond_50
    move-object v0, v3

    .line 5
    :goto_51
    monitor-enter p1

    .line 6
    :try_start_52
    invoke-virtual {p1}, Lda/e2$c;->g()Z

    move-result v4

    .line 7
    invoke-virtual {p1, v0}, Lda/e2$c;->j(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v5

    .line 8
    invoke-direct {p0, p1, v5}, Lda/e2;->Z(Lda/e2$c;Ljava/util/List;)Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_63

    .line 9
    invoke-direct {p0, v6, v5}, Lda/e2;->I(Ljava/lang/Throwable;Ljava/util/List;)V
    :try_end_63
    .catchall {:try_start_52 .. :try_end_63} :catchall_b2

    .line 10
    :cond_63
    monitor-exit p1

    if-nez v6, :cond_67

    goto :goto_70

    :cond_67
    if-ne v6, v0, :cond_6a

    goto :goto_70

    .line 11
    :cond_6a
    new-instance p2, Lda/a0;

    const/4 v0, 0x2

    invoke-direct {p2, v6, v2, v0, v3}, Lda/a0;-><init>(Ljava/lang/Throwable;ZILt9/g;)V

    :goto_70
    if-eqz v6, :cond_8d

    .line 12
    invoke-direct {p0, v6}, Lda/e2;->Q(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_80

    invoke-virtual {p0, v6}, Lda/e2;->f0(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_7f

    goto :goto_80

    :cond_7f
    const/4 v1, 0x0

    :cond_80
    :goto_80
    if-eqz v1, :cond_8d

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally"

    .line 13
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Lda/a0;

    invoke-virtual {v0}, Lda/a0;->b()Z

    :cond_8d
    if-nez v4, :cond_92

    .line 14
    invoke-virtual {p0, v6}, Lda/e2;->s0(Ljava/lang/Throwable;)V

    .line 15
    :cond_92
    invoke-virtual {p0, p2}, Lda/e2;->t0(Ljava/lang/Object;)V

    .line 16
    sget-object v0, Lda/e2;->o:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {p2}, Lda/f2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p0, p1, v1}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 17
    invoke-static {}, Lda/s0;->a()Z

    move-result v1

    if-eqz v1, :cond_ae

    if-eqz v0, :cond_a8

    goto :goto_ae

    :cond_a8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 18
    :cond_ae
    :goto_ae
    invoke-direct {p0, p1, p2}, Lda/e2;->T(Lda/s1;Ljava/lang/Object;)V

    return-object p2

    :catchall_b2
    move-exception p2

    .line 19
    monitor-exit p1

    throw p2
.end method

.method private final X(Lda/s1;)Lda/t;
    .registers 4

    .line 1
    instance-of v0, p1, Lda/t;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    move-object v0, p1

    check-cast v0, Lda/t;

    goto :goto_a

    :cond_9
    move-object v0, v1

    :goto_a
    if-nez v0, :cond_17

    invoke-interface {p1}, Lda/s1;->f()Lda/i2;

    move-result-object p1

    if-eqz p1, :cond_18

    invoke-direct {p0, p1}, Lda/e2;->p0(Lkotlinx/coroutines/internal/r;)Lda/t;

    move-result-object v1

    goto :goto_18

    :cond_17
    move-object v1, v0

    :cond_18
    :goto_18
    return-object v1
.end method

.method private final Y(Ljava/lang/Object;)Ljava/lang/Throwable;
    .registers 4

    .line 1
    instance-of v0, p1, Lda/a0;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    check-cast p1, Lda/a0;

    goto :goto_9

    :cond_8
    move-object p1, v1

    :goto_9
    if-eqz p1, :cond_d

    iget-object v1, p1, Lda/a0;->a:Ljava/lang/Throwable;

    :cond_d
    return-object v1
.end method

.method private final Z(Lda/e2$c;Ljava/util/List;)Ljava/lang/Throwable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lda/e2$c;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 2
    invoke-virtual {p1}, Lda/e2$c;->g()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 3
    new-instance p1, Lda/y1;

    invoke-static {p0}, Lda/e2;->D(Lda/e2;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v1, p0}, Lda/y1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lda/x1;)V

    return-object p1

    :cond_17
    return-object v1

    .line 4
    :cond_18
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    .line 5
    instance-of v2, v2, Ljava/util/concurrent/CancellationException;

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1c

    move-object v1, v0

    :cond_30
    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_35

    return-object v1

    :cond_35
    const/4 p1, 0x0

    .line 6
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    return-object p1
.end method

.method private final c0(Lda/s1;)Lda/i2;
    .registers 5

    .line 1
    invoke-interface {p1}, Lda/s1;->f()Lda/i2;

    move-result-object v0

    if-nez v0, :cond_36

    .line 2
    instance-of v0, p1, Lda/g1;

    if-eqz v0, :cond_10

    new-instance v0, Lda/i2;

    invoke-direct {v0}, Lda/i2;-><init>()V

    goto :goto_36

    .line 3
    :cond_10
    instance-of v0, p1, Lda/d2;

    if-eqz v0, :cond_1b

    .line 4
    check-cast p1, Lda/d2;

    invoke-direct {p0, p1}, Lda/e2;->w0(Lda/d2;)V

    const/4 v0, 0x0

    goto :goto_36

    .line 5
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State should have list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    :goto_36
    return-object v0
.end method

.method private final k0(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    const/4 v0, 0x0

    move-object v1, v0

    .line 1
    :cond_2
    invoke-virtual {p0}, Lda/e2;->e0()Ljava/lang/Object;

    move-result-object v2

    .line 2
    instance-of v3, v2, Lda/e2$c;

    if-eqz v3, :cond_51

    .line 3
    monitor-enter v2

    .line 4
    :try_start_b
    move-object v3, v2

    check-cast v3, Lda/e2$c;

    invoke-virtual {v3}, Lda/e2$c;->i()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-static {}, Lda/f2;->f()Lkotlinx/coroutines/internal/e0;

    move-result-object p1
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_4e

    monitor-exit v2

    return-object p1

    .line 5
    :cond_1a
    :try_start_1a
    move-object v3, v2

    check-cast v3, Lda/e2$c;

    invoke-virtual {v3}, Lda/e2$c;->g()Z

    move-result v3

    if-nez p1, :cond_25

    if-nez v3, :cond_31

    :cond_25
    if-nez v1, :cond_2b

    .line 6
    invoke-direct {p0, p1}, Lda/e2;->V(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    .line 7
    :cond_2b
    move-object p1, v2

    check-cast p1, Lda/e2$c;

    invoke-virtual {p1, v1}, Lda/e2$c;->a(Ljava/lang/Throwable;)V

    .line 8
    :cond_31
    move-object p1, v2

    check-cast p1, Lda/e2$c;

    invoke-virtual {p1}, Lda/e2$c;->e()Ljava/lang/Throwable;

    move-result-object p1
    :try_end_38
    .catchall {:try_start_1a .. :try_end_38} :catchall_4e

    xor-int/lit8 v1, v3, 0x1

    if-eqz v1, :cond_3d

    move-object v0, p1

    :cond_3d
    monitor-exit v2

    if-eqz v0, :cond_49

    .line 9
    check-cast v2, Lda/e2$c;

    invoke-virtual {v2}, Lda/e2$c;->f()Lda/i2;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lda/e2;->q0(Lda/i2;Ljava/lang/Throwable;)V

    .line 10
    :cond_49
    invoke-static {}, Lda/f2;->a()Lkotlinx/coroutines/internal/e0;

    move-result-object p1

    return-object p1

    :catchall_4e
    move-exception p1

    .line 11
    monitor-exit v2

    throw p1

    .line 12
    :cond_51
    instance-of v3, v2, Lda/s1;

    if-eqz v3, :cond_a2

    if-nez v1, :cond_5b

    .line 13
    invoke-direct {p0, p1}, Lda/e2;->V(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    .line 14
    :cond_5b
    move-object v3, v2

    check-cast v3, Lda/s1;

    invoke-interface {v3}, Lda/s1;->c()Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 15
    invoke-direct {p0, v3, v1}, Lda/e2;->F0(Lda/s1;Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lda/f2;->a()Lkotlinx/coroutines/internal/e0;

    move-result-object p1

    return-object p1

    .line 16
    :cond_6f
    new-instance v3, Lda/a0;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-direct {v3, v1, v4, v5, v0}, Lda/a0;-><init>(Ljava/lang/Throwable;ZILt9/g;)V

    invoke-direct {p0, v2, v3}, Lda/e2;->G0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 17
    invoke-static {}, Lda/f2;->a()Lkotlinx/coroutines/internal/e0;

    move-result-object v4

    if-eq v3, v4, :cond_87

    .line 18
    invoke-static {}, Lda/f2;->b()Lkotlinx/coroutines/internal/e0;

    move-result-object v2

    if-eq v3, v2, :cond_2

    return-object v3

    .line 19
    :cond_87
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot happen in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_a2
    invoke-static {}, Lda/f2;->f()Lkotlinx/coroutines/internal/e0;

    move-result-object p1

    return-object p1
.end method

.method private final n0(Ls9/l;Z)Lda/d2;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls9/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lh9/t;",
            ">;Z)",
            "Lda/d2;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_12

    .line 1
    instance-of p2, p1, Lda/z1;

    if-eqz p2, :cond_a

    move-object v0, p1

    check-cast v0, Lda/z1;

    :cond_a
    if-nez v0, :cond_33

    .line 2
    new-instance v0, Lda/v1;

    invoke-direct {v0, p1}, Lda/v1;-><init>(Ls9/l;)V

    goto :goto_33

    .line 3
    :cond_12
    instance-of p2, p1, Lda/d2;

    if-eqz p2, :cond_19

    move-object v0, p1

    check-cast v0, Lda/d2;

    :cond_19
    if-eqz v0, :cond_2e

    .line 4
    invoke-static {}, Lda/s0;->a()Z

    move-result p1

    if-eqz p1, :cond_33

    instance-of p1, v0, Lda/z1;

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_28

    goto :goto_33

    :cond_28
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 5
    :cond_2e
    new-instance v0, Lda/w1;

    invoke-direct {v0, p1}, Lda/w1;-><init>(Ls9/l;)V

    .line 6
    :cond_33
    :goto_33
    invoke-virtual {v0, p0}, Lda/d2;->E(Lda/e2;)V

    return-object v0
.end method

.method private final p0(Lkotlinx/coroutines/internal/r;)Lda/t;
    .registers 3

    .line 1
    :goto_0
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/r;->w()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/r;->t()Lkotlinx/coroutines/internal/r;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_b
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/r;->s()Lkotlinx/coroutines/internal/r;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/r;->w()Z

    move-result v0

    if-nez v0, :cond_b

    .line 4
    instance-of v0, p1, Lda/t;

    if-eqz v0, :cond_1c

    check-cast p1, Lda/t;

    return-object p1

    .line 5
    :cond_1c
    instance-of v0, p1, Lda/i2;

    if-eqz v0, :cond_b

    const/4 p1, 0x0

    return-object p1
.end method

.method private final q0(Lda/i2;Ljava/lang/Throwable;)V
    .registers 9

    .line 1
    invoke-virtual {p0, p2}, Lda/e2;->s0(Ljava/lang/Throwable;)V

    .line 2
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/r;->r()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/internal/r;

    const/4 v1, 0x0

    .line 3
    :goto_a
    invoke-static {v0, p1}, Lt9/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_47

    .line 4
    instance-of v2, v0, Lda/z1;

    if-eqz v2, :cond_42

    move-object v2, v0

    check-cast v2, Lda/d2;

    .line 5
    :try_start_17
    invoke-virtual {v2, p2}, Lda/c0;->C(Ljava/lang/Throwable;)V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1b

    goto :goto_42

    :catchall_1b
    move-exception v3

    if-eqz v1, :cond_22

    .line 6
    invoke-static {v1, v3}, Lh9/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_42

    .line 7
    :cond_22
    new-instance v1, Lda/d0;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in completion handler "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lda/d0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    sget-object v2, Lh9/t;->a:Lh9/t;

    .line 9
    :cond_42
    :goto_42
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/r;->s()Lkotlinx/coroutines/internal/r;

    move-result-object v0

    goto :goto_a

    :cond_47
    if-eqz v1, :cond_4c

    .line 10
    invoke-virtual {p0, v1}, Lda/e2;->g0(Ljava/lang/Throwable;)V

    .line 11
    :cond_4c
    invoke-direct {p0, p2}, Lda/e2;->Q(Ljava/lang/Throwable;)Z

    return-void
.end method

.method private final r0(Lda/i2;Ljava/lang/Throwable;)V
    .registers 9

    .line 1
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/r;->r()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/internal/r;

    const/4 v1, 0x0

    .line 2
    :goto_7
    invoke-static {v0, p1}, Lt9/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_44

    .line 3
    instance-of v2, v0, Lda/d2;

    if-eqz v2, :cond_3f

    move-object v2, v0

    check-cast v2, Lda/d2;

    .line 4
    :try_start_14
    invoke-virtual {v2, p2}, Lda/c0;->C(Ljava/lang/Throwable;)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_18

    goto :goto_3f

    :catchall_18
    move-exception v3

    if-eqz v1, :cond_1f

    .line 5
    invoke-static {v1, v3}, Lh9/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_3f

    .line 6
    :cond_1f
    new-instance v1, Lda/d0;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in completion handler "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lda/d0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    sget-object v2, Lh9/t;->a:Lh9/t;

    .line 8
    :cond_3f
    :goto_3f
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/r;->s()Lkotlinx/coroutines/internal/r;

    move-result-object v0

    goto :goto_7

    :cond_44
    if-eqz v1, :cond_49

    .line 9
    invoke-virtual {p0, v1}, Lda/e2;->g0(Ljava/lang/Throwable;)V

    :cond_49
    return-void
.end method

.method private final v0(Lda/g1;)V
    .registers 4

    .line 1
    new-instance v0, Lda/i2;

    invoke-direct {v0}, Lda/i2;-><init>()V

    .line 2
    invoke-virtual {p1}, Lda/g1;->c()Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_12

    :cond_c
    new-instance v1, Lda/r1;

    invoke-direct {v1, v0}, Lda/r1;-><init>(Lda/i2;)V

    move-object v0, v1

    .line 3
    :goto_12
    sget-object v1, Lda/e2;->o:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v1, p0, p1, v0}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method private final w0(Lda/d2;)V
    .registers 4

    .line 1
    new-instance v0, Lda/i2;

    invoke-direct {v0}, Lda/i2;-><init>()V

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/internal/r;->n(Lkotlinx/coroutines/internal/r;)Z

    .line 2
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/r;->s()Lkotlinx/coroutines/internal/r;

    move-result-object v0

    .line 3
    sget-object v1, Lda/e2;->o:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v1, p0, p1, v0}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method private final z0(Ljava/lang/Object;)I
    .registers 6

    .line 1
    instance-of v0, p1, Lda/g1;

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_22

    .line 2
    move-object v0, p1

    check-cast v0, Lda/g1;

    invoke-virtual {v0}, Lda/g1;->c()Z

    move-result v0

    if-eqz v0, :cond_11

    return v3

    .line 3
    :cond_11
    sget-object v0, Lda/e2;->o:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lda/f2;->c()Lda/g1;

    move-result-object v3

    invoke-static {v0, p0, p1, v3}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e

    return v1

    .line 4
    :cond_1e
    invoke-virtual {p0}, Lda/e2;->u0()V

    return v2

    .line 5
    :cond_22
    instance-of v0, p1, Lda/r1;

    if-eqz v0, :cond_3a

    .line 6
    sget-object v0, Lda/e2;->o:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-object v3, p1

    check-cast v3, Lda/r1;

    invoke-virtual {v3}, Lda/r1;->f()Lda/i2;

    move-result-object v3

    invoke-static {v0, p0, p1, v3}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_36

    return v1

    .line 7
    :cond_36
    invoke-virtual {p0}, Lda/e2;->u0()V

    return v2

    :cond_3a
    return v3
.end method


# virtual methods
.method protected final B0(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;
    .registers 4

    .line 1
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/CancellationException;

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    if-nez v0, :cond_16

    .line 2
    new-instance v0, Lda/y1;

    if-nez p2, :cond_13

    invoke-static {p0}, Lda/e2;->D(Lda/e2;)Ljava/lang/String;

    move-result-object p2

    :cond_13
    invoke-direct {v0, p2, p1, p0}, Lda/y1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lda/x1;)V

    :cond_16
    return-object v0
.end method

.method public final D0()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lda/e2;->o0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lda/e2;->e0()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lda/e2;->A0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public E(Ljava/util/concurrent/CancellationException;)V
    .registers 4

    if-nez p1, :cond_d

    const/4 p1, 0x0

    .line 1
    new-instance v0, Lda/y1;

    invoke-static {p0}, Lda/e2;->D(Lda/e2;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lda/y1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lda/x1;)V

    move-object p1, v0

    .line 2
    :cond_d
    invoke-virtual {p0, p1}, Lda/e2;->O(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final F(Lda/l2;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lda/e2;->N(Ljava/lang/Object;)Z

    return-void
.end method

.method protected J(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public final K(Lk9/d;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk9/d<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    :cond_0
    invoke-virtual {p0}, Lda/e2;->e0()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lda/s1;

    if-nez v1, :cond_28

    .line 3
    instance-of v1, v0, Lda/a0;

    if-eqz v1, :cond_23

    .line 4
    check-cast v0, Lda/a0;

    iget-object v0, v0, Lda/a0;->a:Ljava/lang/Throwable;

    .line 5
    invoke-static {}, Lda/s0;->d()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 6
    instance-of v1, p1, Lm9/e;

    if-nez v1, :cond_1b

    throw v0

    .line 7
    :cond_1b
    check-cast p1, Lm9/e;

    invoke-static {v0, p1}, Lkotlinx/coroutines/internal/d0;->a(Ljava/lang/Throwable;Lm9/e;)Ljava/lang/Throwable;

    move-result-object p1

    throw p1

    .line 8
    :cond_22
    throw v0

    .line 9
    :cond_23
    invoke-static {v0}, Lda/f2;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 10
    :cond_28
    invoke-direct {p0, v0}, Lda/e2;->z0(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 11
    invoke-direct {p0, p1}, Lda/e2;->L(Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final M(Ljava/lang/Throwable;)Z
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lda/e2;->N(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final N(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    invoke-static {}, Lda/f2;->a()Lkotlinx/coroutines/internal/e0;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lda/e2;->b0()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_14

    .line 3
    invoke-direct {p0, p1}, Lda/e2;->P(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    sget-object v1, Lda/f2;->b:Lkotlinx/coroutines/internal/e0;

    if-ne v0, v1, :cond_14

    return v2

    .line 5
    :cond_14
    invoke-static {}, Lda/f2;->a()Lkotlinx/coroutines/internal/e0;

    move-result-object v1

    if-ne v0, v1, :cond_1e

    .line 6
    invoke-direct {p0, p1}, Lda/e2;->k0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    :cond_1e
    invoke-static {}, Lda/f2;->a()Lkotlinx/coroutines/internal/e0;

    move-result-object p1

    if-ne v0, p1, :cond_25

    goto :goto_35

    .line 8
    :cond_25
    sget-object p1, Lda/f2;->b:Lkotlinx/coroutines/internal/e0;

    if-ne v0, p1, :cond_2a

    goto :goto_35

    .line 9
    :cond_2a
    invoke-static {}, Lda/f2;->f()Lkotlinx/coroutines/internal/e0;

    move-result-object p1

    if-ne v0, p1, :cond_32

    const/4 v2, 0x0

    goto :goto_35

    .line 10
    :cond_32
    invoke-virtual {p0, v0}, Lda/e2;->J(Ljava/lang/Object;)V

    :goto_35
    return v2
.end method

.method public O(Ljava/lang/Throwable;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lda/e2;->N(Ljava/lang/Object;)Z

    return-void
.end method

.method protected R()Ljava/lang/String;
    .registers 2

    const-string v0, "Job was cancelled"

    return-object v0
.end method

.method public S(Ljava/lang/Throwable;)Z
    .registers 4

    .line 1
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 2
    :cond_6
    invoke-virtual {p0, p1}, Lda/e2;->N(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-virtual {p0}, Lda/e2;->a0()Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method public a0()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public b(Lk9/g$c;)Lk9/g$b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lk9/g$b;",
            ">(",
            "Lk9/g$c<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lda/x1$a;->b(Lda/x1;Lk9/g$c;)Lk9/g$b;

    move-result-object p1

    return-object p1
.end method

.method public b0()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public c()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lda/e2;->e0()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lda/s1;

    if-eqz v1, :cond_12

    check-cast v0, Lda/s1;

    invoke-interface {v0}, Lda/s1;->c()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public d(Lk9/g;)Lk9/g;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lda/x1$a;->e(Lda/x1;Lk9/g;)Lk9/g;

    move-result-object p1

    return-object p1
.end method

.method public final d0()Lda/s;
    .registers 2

    .line 1
    iget-object v0, p0, Lda/e2;->_parentHandle:Ljava/lang/Object;

    check-cast v0, Lda/s;

    return-object v0
.end method

.method public final e0()Ljava/lang/Object;
    .registers 3

    .line 1
    :goto_0
    iget-object v0, p0, Lda/e2;->_state:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Lkotlinx/coroutines/internal/z;

    if-nez v1, :cond_7

    return-object v0

    .line 3
    :cond_7
    check-cast v0, Lkotlinx/coroutines/internal/z;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/z;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final f(Ls9/l;)Lda/e1;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls9/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lh9/t;",
            ">;)",
            "Lda/e1;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1, p1}, Lda/e2;->i(ZZLs9/l;)Lda/e1;

    move-result-object p1

    return-object p1
.end method

.method protected f0(Ljava/lang/Throwable;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public g0(Ljava/lang/Throwable;)V
    .registers 2

    .line 1
    throw p1
.end method

.method public final getKey()Lk9/g$c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk9/g$c<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lda/x1;->m:Lda/x1$b;

    return-object v0
.end method

.method protected final h0(Lda/x1;)V
    .registers 3

    .line 1
    invoke-static {}, Lda/s0;->a()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lda/e2;->d0()Lda/s;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    if-eqz v0, :cond_12

    goto :goto_18

    :cond_12
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_18
    :goto_18
    if-nez p1, :cond_20

    .line 2
    sget-object p1, Lda/j2;->o:Lda/j2;

    invoke-virtual {p0, p1}, Lda/e2;->y0(Lda/s;)V

    return-void

    .line 3
    :cond_20
    invoke-interface {p1}, Lda/x1;->start()Z

    .line 4
    invoke-interface {p1, p0}, Lda/x1;->t(Lda/u;)Lda/s;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lda/e2;->y0(Lda/s;)V

    .line 6
    invoke-virtual {p0}, Lda/e2;->i0()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 7
    invoke-interface {p1}, Lda/e1;->i()V

    .line 8
    sget-object p1, Lda/j2;->o:Lda/j2;

    invoke-virtual {p0, p1}, Lda/e2;->y0(Lda/s;)V

    :cond_38
    return-void
.end method

.method public final i(ZZLs9/l;)Lda/e1;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ls9/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lh9/t;",
            ">;)",
            "Lda/e1;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3, p1}, Lda/e2;->n0(Ls9/l;Z)Lda/d2;

    move-result-object v0

    .line 2
    :cond_4
    :goto_4
    invoke-virtual {p0}, Lda/e2;->e0()Ljava/lang/Object;

    move-result-object v1

    .line 3
    instance-of v2, v1, Lda/g1;

    if-eqz v2, :cond_22

    .line 4
    move-object v2, v1

    check-cast v2, Lda/g1;

    invoke-virtual {v2}, Lda/g1;->c()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 5
    sget-object v2, Lda/e2;->o:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v2, p0, v1, v0}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v0

    .line 6
    :cond_1e
    invoke-direct {p0, v2}, Lda/e2;->v0(Lda/g1;)V

    goto :goto_4

    .line 7
    :cond_22
    instance-of v2, v1, Lda/s1;

    const/4 v3, 0x0

    if-eqz v2, :cond_7d

    .line 8
    move-object v2, v1

    check-cast v2, Lda/s1;

    invoke-interface {v2}, Lda/s1;->f()Lda/i2;

    move-result-object v2

    if-nez v2, :cond_3b

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.JobNode"

    .line 9
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lda/d2;

    invoke-direct {p0, v1}, Lda/e2;->w0(Lda/d2;)V

    goto :goto_4

    .line 10
    :cond_3b
    sget-object v4, Lda/j2;->o:Lda/j2;

    if-eqz p1, :cond_6e

    .line 11
    instance-of v5, v1, Lda/e2$c;

    if-eqz v5, :cond_6e

    .line 12
    monitor-enter v1

    .line 13
    :try_start_44
    move-object v3, v1

    check-cast v3, Lda/e2$c;

    invoke-virtual {v3}, Lda/e2$c;->e()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_5a

    .line 14
    instance-of v5, p3, Lda/t;

    if-eqz v5, :cond_67

    .line 15
    move-object v5, v1

    check-cast v5, Lda/e2$c;

    invoke-virtual {v5}, Lda/e2$c;->h()Z

    move-result v5

    if-nez v5, :cond_67

    .line 16
    :cond_5a
    invoke-direct {p0, v1, v2, v0}, Lda/e2;->H(Ljava/lang/Object;Lda/i2;Lda/d2;)Z

    move-result v4
    :try_end_5e
    .catchall {:try_start_44 .. :try_end_5e} :catchall_6b

    if-nez v4, :cond_62

    monitor-exit v1

    goto :goto_4

    :cond_62
    if-nez v3, :cond_66

    .line 17
    monitor-exit v1

    return-object v0

    :cond_66
    move-object v4, v0

    .line 18
    :cond_67
    :try_start_67
    sget-object v5, Lh9/t;->a:Lh9/t;
    :try_end_69
    .catchall {:try_start_67 .. :try_end_69} :catchall_6b

    monitor-exit v1

    goto :goto_6e

    :catchall_6b
    move-exception p1

    monitor-exit v1

    throw p1

    :cond_6e
    :goto_6e
    if-eqz v3, :cond_76

    if-eqz p2, :cond_75

    .line 19
    invoke-interface {p3, v3}, Ls9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_75
    return-object v4

    .line 20
    :cond_76
    invoke-direct {p0, v1, v2, v0}, Lda/e2;->H(Ljava/lang/Object;Lda/i2;Lda/d2;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v0

    :cond_7d
    if-eqz p2, :cond_8e

    .line 21
    instance-of p1, v1, Lda/a0;

    if-eqz p1, :cond_86

    check-cast v1, Lda/a0;

    goto :goto_87

    :cond_86
    move-object v1, v3

    :goto_87
    if-eqz v1, :cond_8b

    iget-object v3, v1, Lda/a0;->a:Ljava/lang/Throwable;

    .line 22
    :cond_8b
    invoke-interface {p3, v3}, Ls9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_8e
    sget-object p1, Lda/j2;->o:Lda/j2;

    return-object p1
.end method

.method public final i0()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lda/e2;->e0()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lda/s1;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final isCancelled()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lda/e2;->e0()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lda/a0;

    if-nez v1, :cond_17

    instance-of v1, v0, Lda/e2$c;

    if-eqz v1, :cond_15

    check-cast v0, Lda/e2$c;

    invoke-virtual {v0}, Lda/e2$c;->g()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method public final j()Ljava/util/concurrent/CancellationException;
    .registers 5

    .line 1
    invoke-virtual {p0}, Lda/e2;->e0()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lda/e2$c;

    const-string v2, "Job is still new or active: "

    if-eqz v1, :cond_47

    check-cast v0, Lda/e2$c;

    invoke-virtual {v0}, Lda/e2$c;->e()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lda/t0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is cancelling"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lda/e2;->B0(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    if-eqz v0, :cond_2e

    goto :goto_74

    :cond_2e
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_47
    instance-of v1, v0, Lda/s1;

    if-nez v1, :cond_75

    .line 5
    instance-of v1, v0, Lda/a0;

    const/4 v2, 0x0

    if-eqz v1, :cond_5a

    check-cast v0, Lda/a0;

    iget-object v0, v0, Lda/a0;->a:Ljava/lang/Throwable;

    const/4 v1, 0x1

    invoke-static {p0, v0, v2, v1, v2}, Lda/e2;->C0(Lda/e2;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    goto :goto_74

    .line 6
    :cond_5a
    new-instance v0, Lda/y1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lda/t0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has completed normally"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2, p0}, Lda/y1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lda/x1;)V

    :goto_74
    return-object v0

    .line 7
    :cond_75
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected j0()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final l0(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    :cond_0
    invoke-virtual {p0}, Lda/e2;->e0()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0, p1}, Lda/e2;->G0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    invoke-static {}, Lda/f2;->a()Lkotlinx/coroutines/internal/e0;

    move-result-object v1

    if-ne v0, v1, :cond_10

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_10
    sget-object v1, Lda/f2;->b:Lkotlinx/coroutines/internal/e0;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_16

    return v2

    .line 5
    :cond_16
    invoke-static {}, Lda/f2;->b()Lkotlinx/coroutines/internal/e0;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6
    invoke-virtual {p0, v0}, Lda/e2;->J(Ljava/lang/Object;)V

    return v2
.end method

.method public final m0(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    :cond_0
    invoke-virtual {p0}, Lda/e2;->e0()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0, p1}, Lda/e2;->G0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    invoke-static {}, Lda/f2;->a()Lkotlinx/coroutines/internal/e0;

    move-result-object v1

    if-eq v0, v1, :cond_15

    .line 4
    invoke-static {}, Lda/f2;->b()Lkotlinx/coroutines/internal/e0;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-object v0

    .line 5
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Job "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is already complete or completing, but is being completed with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-direct {p0, p1}, Lda/e2;->Y(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    .line 8
    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_39

    :goto_38
    throw v0

    :goto_39
    goto :goto_38
.end method

.method public o0()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {p0}, Lda/t0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q(Lk9/g$c;)Lk9/g;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk9/g$c<",
            "*>;)",
            "Lk9/g;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lda/x1$a;->d(Lda/x1;Lk9/g$c;)Lk9/g;

    move-result-object p1

    return-object p1
.end method

.method public s(Ljava/lang/Object;Ls9/p;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Ls9/p<",
            "-TR;-",
            "Lk9/g$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lda/x1$a;->a(Lda/x1;Ljava/lang/Object;Ls9/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected s0(Ljava/lang/Throwable;)V
    .registers 2

    return-void
.end method

.method public final start()Z
    .registers 3

    .line 1
    :goto_0
    invoke-virtual {p0}, Lda/e2;->e0()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lda/e2;->z0(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_f

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    goto :goto_0

    :cond_e
    return v1

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public final t(Lda/u;)Lda/s;
    .registers 8

    .line 1
    new-instance v3, Lda/t;

    invoke-direct {v3, p1}, Lda/t;-><init>(Lda/u;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lda/x1$a;->c(Lda/x1;ZZLs9/l;ILjava/lang/Object;)Lda/e1;

    move-result-object p1

    check-cast p1, Lda/s;

    return-object p1
.end method

.method protected t0(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lda/e2;->D0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lda/t0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected u0()V
    .registers 1

    return-void
.end method

.method public final x0(Lda/d2;)V
    .registers 5

    .line 1
    :cond_0
    invoke-virtual {p0}, Lda/e2;->e0()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lda/d2;

    if-eqz v1, :cond_18

    if-eq v0, p1, :cond_b

    return-void

    .line 3
    :cond_b
    sget-object v1, Lda/e2;->o:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lda/f2;->c()Lda/g1;

    move-result-object v2

    invoke-static {v1, p0, v0, v2}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_18
    instance-of v1, v0, Lda/s1;

    if-eqz v1, :cond_27

    .line 5
    check-cast v0, Lda/s1;

    invoke-interface {v0}, Lda/s1;->f()Lda/i2;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/r;->x()Z

    :cond_27
    return-void
.end method

.method public y()Ljava/util/concurrent/CancellationException;
    .registers 6

    .line 1
    invoke-virtual {p0}, Lda/e2;->e0()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lda/e2$c;

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    move-object v1, v0

    check-cast v1, Lda/e2$c;

    invoke-virtual {v1}, Lda/e2$c;->e()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_20

    .line 3
    :cond_11
    instance-of v1, v0, Lda/a0;

    if-eqz v1, :cond_1b

    move-object v1, v0

    check-cast v1, Lda/a0;

    iget-object v1, v1, Lda/a0;->a:Ljava/lang/Throwable;

    goto :goto_20

    .line 4
    :cond_1b
    instance-of v1, v0, Lda/s1;

    if-nez v1, :cond_44

    move-object v1, v2

    .line 5
    :goto_20
    instance-of v3, v1, Ljava/util/concurrent/CancellationException;

    if-eqz v3, :cond_27

    move-object v2, v1

    check-cast v2, Ljava/util/concurrent/CancellationException;

    :cond_27
    if-nez v2, :cond_43

    new-instance v2, Lda/y1;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parent job is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lda/e2;->A0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1, p0}, Lda/y1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lda/x1;)V

    :cond_43
    return-object v2

    .line 6
    :cond_44
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot be cancelling child in this state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final y0(Lda/s;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lda/e2;->_parentHandle:Ljava/lang/Object;

    return-void
.end method

###### Class da.e2.a (da.e2$a)
.class final Lda/e2$a;
.super Lda/n;
.source "JobSupport.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lda/e2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lda/n<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final w:Lda/e2;


# direct methods
.method public constructor <init>(Lk9/d;Lda/e2;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk9/d<",
            "-TT;>;",
            "Lda/e2;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lda/n;-><init>(Lk9/d;I)V

    .line 2
    iput-object p2, p0, Lda/e2$a;->w:Lda/e2;

    return-void
.end method


# virtual methods
.method protected G()Ljava/lang/String;
    .registers 2

    const-string v0, "AwaitContinuation"

    return-object v0
.end method

.method public s(Lda/x1;)Ljava/lang/Throwable;
    .registers 4

    .line 1
    iget-object v0, p0, Lda/e2$a;->w:Lda/e2;

    invoke-virtual {v0}, Lda/e2;->e0()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lda/e2$c;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lda/e2$c;

    invoke-virtual {v1}, Lda/e2$c;->e()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_14

    return-object v1

    .line 3
    :cond_14
    instance-of v1, v0, Lda/a0;

    if-eqz v1, :cond_1d

    check-cast v0, Lda/a0;

    iget-object p1, v0, Lda/a0;->a:Ljava/lang/Throwable;

    return-object p1

    .line 4
    :cond_1d
    invoke-interface {p1}, Lda/x1;->j()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    return-object p1
.end method

###### Class da.e2.b (da.e2$b)
.class final Lda/e2$b;
.super Lda/d2;
.source "JobSupport.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lda/e2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final s:Lda/e2;

.field private final t:Lda/e2$c;

.field private final u:Lda/t;

.field private final v:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lda/e2;Lda/e2$c;Lda/t;Ljava/lang/Object;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lda/d2;-><init>()V

    .line 2
    iput-object p1, p0, Lda/e2$b;->s:Lda/e2;

    .line 3
    iput-object p2, p0, Lda/e2$b;->t:Lda/e2$c;

    .line 4
    iput-object p3, p0, Lda/e2$b;->u:Lda/t;

    .line 5
    iput-object p4, p0, Lda/e2$b;->v:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public C(Ljava/lang/Throwable;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lda/e2$b;->s:Lda/e2;

    iget-object v0, p0, Lda/e2$b;->t:Lda/e2$c;

    iget-object v1, p0, Lda/e2$b;->u:Lda/t;

    iget-object v2, p0, Lda/e2$b;->v:Ljava/lang/Object;

    invoke-static {p1, v0, v1, v2}, Lda/e2;->G(Lda/e2;Lda/e2$c;Lda/t;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lda/e2$b;->C(Ljava/lang/Throwable;)V

    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1
.end method

###### Class da.e2.c (da.e2$c)
.class final Lda/e2$c;
.super Ljava/lang/Object;
.source "JobSupport.kt"

# interfaces
.implements Lda/s1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lda/e2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private volatile synthetic _exceptionsHolder:Ljava/lang/Object;

.field private volatile synthetic _isCompleting:I

.field private volatile synthetic _rootCause:Ljava/lang/Object;

.field private final o:Lda/i2;


# direct methods
.method public constructor <init>(Lda/i2;ZLjava/lang/Throwable;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lda/e2$c;->o:Lda/i2;

    .line 3
    iput p2, p0, Lda/e2$c;->_isCompleting:I

    .line 4
    iput-object p3, p0, Lda/e2$c;->_rootCause:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lda/e2$c;->_exceptionsHolder:Ljava/lang/Object;

    return-void
.end method

.method private final b()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method private final d()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lda/e2$c;->_exceptionsHolder:Ljava/lang/Object;

    return-object v0
.end method

.method private final l(Ljava/lang/Object;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lda/e2$c;->_exceptionsHolder:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lda/e2$c;->e()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_a

    .line 2
    invoke-virtual {p0, p1}, Lda/e2$c;->m(Ljava/lang/Throwable;)V

    return-void

    :cond_a
    if-ne p1, v0, :cond_d

    return-void

    .line 3
    :cond_d
    invoke-direct {p0}, Lda/e2$c;->d()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_17

    .line 4
    invoke-direct {p0, p1}, Lda/e2$c;->l(Ljava/lang/Object;)V

    goto :goto_35

    .line 5
    :cond_17
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_2c

    if-ne p1, v0, :cond_1e

    return-void

    .line 6
    :cond_1e
    invoke-direct {p0}, Lda/e2$c;->b()Ljava/util/ArrayList;

    move-result-object v1

    .line 7
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-direct {p0, v1}, Lda/e2$c;->l(Ljava/lang/Object;)V

    goto :goto_35

    .line 10
    :cond_2c
    instance-of v1, v0, Ljava/util/ArrayList;

    if-eqz v1, :cond_36

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_35
    return-void

    :cond_36
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lda/e2$c;->e()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final e()Ljava/lang/Throwable;
    .registers 2

    .line 1
    iget-object v0, p0, Lda/e2$c;->_rootCause:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method

.method public f()Lda/i2;
    .registers 2

    .line 1
    iget-object v0, p0, Lda/e2$c;->o:Lda/i2;

    return-object v0
.end method

.method public final g()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lda/e2$c;->e()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final h()Z
    .registers 2

    .line 1
    iget v0, p0, Lda/e2$c;->_isCompleting:I

    return v0
.end method

.method public final i()Z
    .registers 3

    .line 1
    invoke-direct {p0}, Lda/e2$c;->d()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lda/f2;->e()Lkotlinx/coroutines/internal/e0;

    move-result-object v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public final j(Ljava/lang/Throwable;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lda/e2$c;->d()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b

    .line 2
    invoke-direct {p0}, Lda/e2$c;->b()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_1e

    .line 3
    :cond_b
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_18

    invoke-direct {p0}, Lda/e2$c;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_1e

    .line 4
    :cond_18
    instance-of v1, v0, Ljava/util/ArrayList;

    if-eqz v1, :cond_3b

    check-cast v0, Ljava/util/ArrayList;

    .line 5
    :goto_1e
    invoke-virtual {p0}, Lda/e2$c;->e()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_28

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_28
    if-eqz p1, :cond_33

    .line 7
    invoke-static {p1, v1}, Lt9/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_33
    invoke-static {}, Lda/f2;->e()Lkotlinx/coroutines/internal/e0;

    move-result-object p1

    invoke-direct {p0, p1}, Lda/e2$c;->l(Ljava/lang/Object;)V

    return-object v0

    .line 9
    :cond_3b
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final k(Z)V
    .registers 2

    .line 1
    iput p1, p0, Lda/e2$c;->_isCompleting:I

    return-void
.end method

.method public final m(Ljava/lang/Throwable;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lda/e2$c;->_rootCause:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finishing[cancelling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lda/e2$c;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", completing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lda/e2$c;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", rootCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lda/e2$c;->e()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", exceptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lda/e2$c;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lda/e2$c;->f()Lda/i2;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class da.e2.d (da.e2$d)
.class public final Lda/e2$d;
.super Lkotlinx/coroutines/internal/r$a;
.source "LockFreeLinkedList.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lda/e2;->H(Ljava/lang/Object;Lda/i2;Lda/d2;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lda/e2;

.field final synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/internal/r;Lda/e2;Ljava/lang/Object;)V
    .registers 4

    iput-object p2, p0, Lda/e2$d;->d:Lda/e2;

    iput-object p3, p0, Lda/e2$d;->e:Ljava/lang/Object;

    .line 1
    invoke-direct {p0, p1}, Lkotlinx/coroutines/internal/r$a;-><init>(Lkotlinx/coroutines/internal/r;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic g(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Lkotlinx/coroutines/internal/r;

    invoke-virtual {p0, p1}, Lda/e2$d;->i(Lkotlinx/coroutines/internal/r;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public i(Lkotlinx/coroutines/internal/r;)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object p1, p0, Lda/e2$d;->d:Lda/e2;

    invoke-virtual {p1}, Lda/e2;->e0()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lda/e2$d;->e:Ljava/lang/Object;

    if-ne p1, v0, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    if-eqz p1, :cond_11

    const/4 p1, 0x0

    goto :goto_15

    :cond_11
    invoke-static {}, Lkotlinx/coroutines/internal/q;->a()Ljava/lang/Object;

    move-result-object p1

    :goto_15
    return-object p1
.end method
