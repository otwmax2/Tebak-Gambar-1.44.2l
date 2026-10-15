###### Class kotlinx.coroutines.internal.h (kotlinx.coroutines.internal.h)
.class public final Lkotlinx/coroutines/internal/h;
.super Lda/a1;
.source "DispatchedContinuation.kt"

# interfaces
.implements Lm9/e;
.implements Lk9/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lda/a1<",
        "TT;>;",
        "Lm9/e;",
        "Lk9/d<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final synthetic v:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _reusableCancellableContinuation:Ljava/lang/Object;

.field public final r:Lda/i0;

.field public final s:Lk9/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk9/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field public t:Ljava/lang/Object;

.field public final u:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lkotlinx/coroutines/internal/h;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_reusableCancellableContinuation"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/h;->v:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lda/i0;Lk9/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lda/i0;",
            "Lk9/d<",
            "-TT;>;)V"
        }
    .end annotation

    const/4 v0, -0x1

    .line 1
    invoke-direct {p0, v0}, Lda/a1;-><init>(I)V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/internal/h;->r:Lda/i0;

    .line 3
    iput-object p2, p0, Lkotlinx/coroutines/internal/h;->s:Lk9/d;

    .line 4
    invoke-static {}, Lkotlinx/coroutines/internal/i;->a()Lkotlinx/coroutines/internal/e0;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/internal/h;->t:Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/h;->getContext()Lk9/g;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/internal/i0;->b(Lk9/g;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/internal/h;->u:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lkotlinx/coroutines/internal/h;->_reusableCancellableContinuation:Ljava/lang/Object;

    return-void
.end method

.method private final k()Lda/n;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lda/n<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/h;->_reusableCancellableContinuation:Ljava/lang/Object;

    instance-of v1, v0, Lda/n;

    if-eqz v1, :cond_9

    check-cast v0, Lda/n;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4

    .line 1
    instance-of v0, p1, Lda/b0;

    if-eqz v0, :cond_b

    .line 2
    check-cast p1, Lda/b0;

    iget-object p1, p1, Lda/b0;->b:Ls9/l;

    invoke-interface {p1, p2}, Ls9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method public b()Lk9/d;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk9/d<",
            "TT;>;"
        }
    .end annotation

    return-object p0
.end method

.method public e()Lm9/e;
    .registers 3

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/h;->s:Lk9/d;

    instance-of v1, v0, Lm9/e;

    if-eqz v1, :cond_9

    check-cast v0, Lm9/e;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public g(Ljava/lang/Object;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/h;->s:Lk9/d;

    invoke-interface {v0}, Lk9/d;->getContext()Lk9/g;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2
    invoke-static {p1, v1, v2, v1}, Lda/e0;->d(Ljava/lang/Object;Ls9/l;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 3
    iget-object v4, p0, Lkotlinx/coroutines/internal/h;->r:Lda/i0;

    invoke-virtual {v4, v0}, Lda/i0;->o(Lk9/g;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1f

    .line 4
    iput-object v3, p0, Lkotlinx/coroutines/internal/h;->t:Ljava/lang/Object;

    .line 5
    iput v5, p0, Lda/a1;->q:I

    .line 6
    iget-object p1, p0, Lkotlinx/coroutines/internal/h;->r:Lda/i0;

    invoke-virtual {p1, v0, p0}, Lda/i0;->m(Lk9/g;Ljava/lang/Runnable;)V

    goto :goto_61

    .line 7
    :cond_1f
    invoke-static {}, Lda/s0;->a()Z

    move-result v0

    .line 8
    sget-object v0, Lda/s2;->a:Lda/s2;

    invoke-virtual {v0}, Lda/s2;->b()Lda/h1;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lda/h1;->L()Z

    move-result v4

    if-eqz v4, :cond_37

    .line 10
    iput-object v3, p0, Lkotlinx/coroutines/internal/h;->t:Ljava/lang/Object;

    .line 11
    iput v5, p0, Lda/a1;->q:I

    .line 12
    invoke-virtual {v0, p0}, Lda/h1;->H(Lda/a1;)V

    goto :goto_61

    .line 13
    :cond_37
    invoke-virtual {v0, v2}, Lda/h1;->J(Z)V

    .line 14
    :try_start_3a
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/h;->getContext()Lk9/g;

    move-result-object v3

    iget-object v4, p0, Lkotlinx/coroutines/internal/h;->u:Ljava/lang/Object;

    .line 15
    invoke-static {v3, v4}, Lkotlinx/coroutines/internal/i0;->c(Lk9/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_44
    .catchall {:try_start_3a .. :try_end_44} :catchall_5a

    .line 16
    :try_start_44
    iget-object v5, p0, Lkotlinx/coroutines/internal/h;->s:Lk9/d;

    invoke-interface {v5, p1}, Lk9/d;->g(Ljava/lang/Object;)V

    .line 17
    sget-object p1, Lh9/t;->a:Lh9/t;
    :try_end_4b
    .catchall {:try_start_44 .. :try_end_4b} :catchall_55

    .line 18
    :try_start_4b
    invoke-static {v3, v4}, Lkotlinx/coroutines/internal/i0;->a(Lk9/g;Ljava/lang/Object;)V

    .line 19
    :cond_4e
    invoke-virtual {v0}, Lda/h1;->O()Z

    move-result p1

    if-nez p1, :cond_4e

    goto :goto_5e

    :catchall_55
    move-exception p1

    .line 20
    invoke-static {v3, v4}, Lkotlinx/coroutines/internal/i0;->a(Lk9/g;Ljava/lang/Object;)V

    throw p1
    :try_end_5a
    .catchall {:try_start_4b .. :try_end_5a} :catchall_5a

    :catchall_5a
    move-exception p1

    .line 21
    :try_start_5b
    invoke-virtual {p0, p1, v1}, Lda/a1;->f(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_62

    .line 22
    :goto_5e
    invoke-virtual {v0, v2}, Lda/h1;->x(Z)V

    :goto_61
    return-void

    :catchall_62
    move-exception p1

    invoke-virtual {v0, v2}, Lda/h1;->x(Z)V

    goto :goto_68

    :goto_67
    throw p1

    :goto_68
    goto :goto_67
.end method

.method public getContext()Lk9/g;
    .registers 2

    iget-object v0, p0, Lkotlinx/coroutines/internal/h;->s:Lk9/d;

    invoke-interface {v0}, Lk9/d;->getContext()Lk9/g;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/h;->t:Ljava/lang/Object;

    .line 2
    invoke-static {}, Lda/s0;->a()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-static {}, Lkotlinx/coroutines/internal/i;->a()Lkotlinx/coroutines/internal/e0;

    move-result-object v1

    if-eq v0, v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    if-eqz v1, :cond_14

    goto :goto_1a

    :cond_14
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3
    :cond_1a
    :goto_1a
    invoke-static {}, Lkotlinx/coroutines/internal/i;->a()Lkotlinx/coroutines/internal/e0;

    move-result-object v1

    iput-object v1, p0, Lkotlinx/coroutines/internal/h;->t:Ljava/lang/Object;

    return-object v0
.end method

.method public final i()V
    .registers 3

    .line 1
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/h;->_reusableCancellableContinuation:Ljava/lang/Object;

    .line 2
    sget-object v1, Lkotlinx/coroutines/internal/i;->b:Lkotlinx/coroutines/internal/e0;

    if-eq v0, v1, :cond_0

    return-void
.end method

.method public final j()Lda/n;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lda/n<",
            "TT;>;"
        }
    .end annotation

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/h;->_reusableCancellableContinuation:Ljava/lang/Object;

    if-nez v0, :cond_a

    .line 2
    sget-object v0, Lkotlinx/coroutines/internal/i;->b:Lkotlinx/coroutines/internal/e0;

    iput-object v0, p0, Lkotlinx/coroutines/internal/h;->_reusableCancellableContinuation:Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_a
    instance-of v1, v0, Lda/n;

    if-eqz v1, :cond_1b

    .line 4
    sget-object v1, Lkotlinx/coroutines/internal/h;->v:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v2, Lkotlinx/coroutines/internal/i;->b:Lkotlinx/coroutines/internal/e0;

    invoke-static {v1, p0, v0, v2}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    check-cast v0, Lda/n;

    return-object v0

    .line 6
    :cond_1b
    sget-object v1, Lkotlinx/coroutines/internal/i;->b:Lkotlinx/coroutines/internal/e0;

    if-eq v0, v1, :cond_0

    .line 7
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_24

    goto :goto_0

    :cond_24
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inconsistent state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_40

    :goto_3f
    throw v1

    :goto_40
    goto :goto_3f
.end method

.method public final l()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/h;->_reusableCancellableContinuation:Ljava/lang/Object;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final n(Ljava/lang/Throwable;)Z
    .registers 6

    .line 1
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/h;->_reusableCancellableContinuation:Ljava/lang/Object;

    .line 2
    sget-object v1, Lkotlinx/coroutines/internal/i;->b:Lkotlinx/coroutines/internal/e0;

    invoke-static {v0, v1}, Lt9/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_14

    .line 3
    sget-object v0, Lkotlinx/coroutines/internal/h;->v:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v0, p0, v1, p1}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    .line 4
    :cond_14
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_19

    return v3

    .line 5
    :cond_19
    sget-object v1, Lkotlinx/coroutines/internal/h;->v:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    invoke-static {v1, p0, v0, v2}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1
.end method

.method public o()Ljava/lang/StackTraceElement;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final p()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/h;->i()V

    .line 2
    invoke-direct {p0}, Lkotlinx/coroutines/internal/h;->k()Lda/n;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lda/n;->p()V

    :cond_c
    return-void
.end method

.method public final q(Lda/m;)Ljava/lang/Throwable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lda/m<",
            "*>;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/h;->_reusableCancellableContinuation:Ljava/lang/Object;

    .line 2
    sget-object v1, Lkotlinx/coroutines/internal/i;->b:Lkotlinx/coroutines/internal/e0;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_10

    .line 3
    sget-object v0, Lkotlinx/coroutines/internal/h;->v:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v0, p0, v1, p1}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v2

    .line 4
    :cond_10
    instance-of p1, v0, Ljava/lang/Throwable;

    if-eqz p1, :cond_2b

    .line 5
    sget-object p1, Lkotlinx/coroutines/internal/h;->v:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {p1, p0, v0, v2}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 6
    check-cast v0, Ljava/lang/Throwable;

    return-object v0

    .line 7
    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_2b
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistent state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_47

    :goto_46
    throw p1

    :goto_47
    goto :goto_46
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DispatchedContinuation["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/internal/h;->r:Lda/i0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/internal/h;->s:Lk9/d;

    invoke-static {v1}, Lda/t0;->c(Lk9/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
