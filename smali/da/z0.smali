###### Class da.z0 (da.z0)
.class public final Lda/z0;
.super Lkotlinx/coroutines/internal/c0;
.source "Builders.common.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/internal/c0<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final synthetic r:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile synthetic _decision:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lda/z0;

    const-string v1, "_decision"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lda/z0;->r:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lk9/g;Lk9/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk9/g;",
            "Lk9/d<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/internal/c0;-><init>(Lk9/g;Lk9/d;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lda/z0;->_decision:I

    return-void
.end method

.method private final P0()Z
    .registers 5

    .line 1
    :cond_0
    iget v0, p0, Lda/z0;->_decision:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_15

    if-ne v0, v2, :cond_9

    return v1

    .line 2
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already resumed"

    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_15
    sget-object v0, Lda/z0;->r:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v3, 0x2

    invoke-virtual {v0, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2
.end method

.method private final Q0()Z
    .registers 4

    .line 1
    :cond_0
    iget v0, p0, Lda/z0;->_decision:I

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    const/4 v2, 0x2

    if-ne v0, v2, :cond_9

    return v1

    .line 2
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already suspended"

    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_15
    sget-object v0, Lda/z0;->r:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2
.end method


# virtual methods
.method protected J(Ljava/lang/Object;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lda/z0;->J0(Ljava/lang/Object;)V

    return-void
.end method

.method protected J0(Ljava/lang/Object;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lda/z0;->P0()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2
    :cond_7
    iget-object v0, p0, Lkotlinx/coroutines/internal/c0;->q:Lk9/d;

    invoke-static {v0}, Ll9/b;->b(Lk9/d;)Lk9/d;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/coroutines/internal/c0;->q:Lk9/d;

    invoke-static {p1, v1}, Lda/e0;->a(Ljava/lang/Object;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lkotlinx/coroutines/internal/i;->c(Lk9/d;Ljava/lang/Object;Ls9/l;ILjava/lang/Object;)V

    return-void
.end method

.method public final O0()Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-direct {p0}, Lda/z0;->Q0()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 2
    :cond_b
    invoke-virtual {p0}, Lda/e2;->e0()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lda/f2;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lda/a0;

    if-nez v1, :cond_18

    return-object v0

    :cond_18
    check-cast v0, Lda/a0;

    iget-object v0, v0, Lda/a0;->a:Ljava/lang/Throwable;

    throw v0
.end method
