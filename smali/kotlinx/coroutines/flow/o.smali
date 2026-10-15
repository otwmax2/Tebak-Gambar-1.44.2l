###### Class kotlinx.coroutines.flow.o (kotlinx.coroutines.flow.o)
.class final Lkotlinx/coroutines/flow/o;
.super Lga/d;
.source "StateFlow.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lga/d<",
        "Lkotlinx/coroutines/flow/m<",
        "*>;>;"
    }
.end annotation


# static fields
.field static final synthetic a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field volatile synthetic _state:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lkotlinx/coroutines/flow/o;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_state"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/flow/o;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lga/d;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lkotlinx/coroutines/flow/o;->_state:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/m;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/o;->c(Lkotlinx/coroutines/flow/m;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)[Lk9/d;
    .registers 2

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/m;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/o;->e(Lkotlinx/coroutines/flow/m;)[Lk9/d;

    move-result-object p1

    return-object p1
.end method

.method public c(Lkotlinx/coroutines/flow/m;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/m<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lkotlinx/coroutines/flow/o;->_state:Ljava/lang/Object;

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_6
    invoke-static {}, Lkotlinx/coroutines/flow/n;->b()Lkotlinx/coroutines/internal/e0;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/flow/o;->_state:Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method public final d(Lk9/d;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk9/d<",
            "-",
            "Lh9/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lda/n;

    invoke-static {p1}, Ll9/b;->b(Lk9/d;)Lk9/d;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lda/n;-><init>(Lk9/d;I)V

    .line 2
    invoke-virtual {v0}, Lda/n;->y()V

    .line 3
    invoke-static {}, Lda/s0;->a()Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lkotlinx/coroutines/flow/o;->_state:Ljava/lang/Object;

    instance-of v1, v1, Lda/n;

    xor-int/2addr v1, v2

    if-eqz v1, :cond_1b

    goto :goto_21

    :cond_1b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_21
    :goto_21
    sget-object v1, Lkotlinx/coroutines/flow/o;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lkotlinx/coroutines/flow/n;->b()Lkotlinx/coroutines/internal/e0;

    move-result-object v3

    invoke-static {v1, p0, v3, v0}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_51

    .line 5
    invoke-static {}, Lda/s0;->a()Z

    move-result v1

    if-eqz v1, :cond_46

    iget-object v1, p0, Lkotlinx/coroutines/flow/o;->_state:Ljava/lang/Object;

    invoke-static {}, Lkotlinx/coroutines/flow/n;->c()Lkotlinx/coroutines/internal/e0;

    move-result-object v3

    if-ne v1, v3, :cond_3c

    goto :goto_3d

    :cond_3c
    const/4 v2, 0x0

    :goto_3d
    if-eqz v2, :cond_40

    goto :goto_46

    :cond_40
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_46
    :goto_46
    sget-object v1, Lh9/n;->o:Lh9/n$a;

    sget-object v1, Lh9/t;->a:Lh9/t;

    invoke-static {v1}, Lh9/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lk9/d;->g(Ljava/lang/Object;)V

    .line 7
    :cond_51
    invoke-virtual {v0}, Lda/n;->t()Ljava/lang/Object;

    move-result-object v0

    .line 8
    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_5e

    invoke-static {p1}, Lm9/h;->c(Lk9/d;)V

    .line 9
    :cond_5e
    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne v0, p1, :cond_65

    return-object v0

    :cond_65
    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1
.end method

.method public e(Lkotlinx/coroutines/flow/m;)[Lk9/d;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/m<",
            "*>;)[",
            "Lk9/d<",
            "Lh9/t;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/flow/o;->_state:Ljava/lang/Object;

    .line 2
    sget-object p1, Lga/c;->a:[Lk9/d;

    return-object p1
.end method

.method public final f()V
    .registers 4

    .line 1
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/flow/o;->_state:Ljava/lang/Object;

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    invoke-static {}, Lkotlinx/coroutines/flow/n;->c()Lkotlinx/coroutines/internal/e0;

    move-result-object v1

    if-ne v0, v1, :cond_c

    return-void

    .line 3
    :cond_c
    invoke-static {}, Lkotlinx/coroutines/flow/n;->b()Lkotlinx/coroutines/internal/e0;

    move-result-object v1

    if-ne v0, v1, :cond_1f

    .line 4
    sget-object v1, Lkotlinx/coroutines/flow/o;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lkotlinx/coroutines/flow/n;->c()Lkotlinx/coroutines/internal/e0;

    move-result-object v2

    invoke-static {v1, p0, v0, v2}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_1f
    sget-object v1, Lkotlinx/coroutines/flow/o;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lkotlinx/coroutines/flow/n;->b()Lkotlinx/coroutines/internal/e0;

    move-result-object v2

    invoke-static {v1, p0, v0, v2}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    check-cast v0, Lda/n;

    sget-object v1, Lh9/n;->o:Lh9/n$a;

    sget-object v1, Lh9/t;->a:Lh9/t;

    invoke-static {v1}, Lh9/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lk9/d;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public final g()Z
    .registers 4

    .line 1
    sget-object v0, Lkotlinx/coroutines/flow/o;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lkotlinx/coroutines/flow/n;->b()Lkotlinx/coroutines/internal/e0;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lt9/m;->b(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lda/s0;->a()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_20

    instance-of v1, v0, Lda/n;

    xor-int/2addr v1, v2

    if-eqz v1, :cond_1a

    goto :goto_20

    :cond_1a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3
    :cond_20
    :goto_20
    invoke-static {}, Lkotlinx/coroutines/flow/n;->c()Lkotlinx/coroutines/internal/e0;

    move-result-object v1

    if-ne v0, v1, :cond_27

    goto :goto_28

    :cond_27
    const/4 v2, 0x0

    :goto_28
    return v2
.end method
