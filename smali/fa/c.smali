###### Class fa.c (fa.c)
.class public abstract Lfa/c;
.super Ljava/lang/Object;
.source "AbstractChannel.kt"

# interfaces
.implements Lfa/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfa/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lfa/s<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final synthetic d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field protected final b:Ls9/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls9/l<",
            "TE;",
            "Lh9/t;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lkotlinx/coroutines/internal/p;

.field private volatile synthetic onCloseHandler:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lfa/c;

    const-class v1, Ljava/lang/Object;

    const-string v2, "onCloseHandler"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lfa/c;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Ls9/l;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls9/l<",
            "-TE;",
            "Lh9/t;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lfa/c;->b:Ls9/l;

    .line 3
    new-instance p1, Lkotlinx/coroutines/internal/p;

    invoke-direct {p1}, Lkotlinx/coroutines/internal/p;-><init>()V

    iput-object p1, p0, Lfa/c;->c:Lkotlinx/coroutines/internal/p;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lfa/c;->onCloseHandler:Ljava/lang/Object;

    return-void
.end method

.method private final e()I
    .registers 5

    .line 1
    iget-object v0, p0, Lfa/c;->c:Lkotlinx/coroutines/internal/p;

    .line 2
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/r;->r()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/internal/r;

    const/4 v2, 0x0

    .line 3
    :goto_9
    invoke-static {v1, v0}, Lt9/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 4
    instance-of v3, v1, Lkotlinx/coroutines/internal/r;

    if-eqz v3, :cond_15

    add-int/lit8 v2, v2, 0x1

    .line 5
    :cond_15
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/r;->s()Lkotlinx/coroutines/internal/r;

    move-result-object v1

    goto :goto_9

    :cond_1a
    return v2
.end method

.method private final i()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lfa/c;->c:Lkotlinx/coroutines/internal/p;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/r;->s()Lkotlinx/coroutines/internal/r;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lfa/c;->c:Lkotlinx/coroutines/internal/p;

    if-ne v0, v1, :cond_d

    const-string v0, "EmptyQueue"

    return-object v0

    .line 3
    :cond_d
    instance-of v1, v0, Lfa/i;

    if-eqz v1, :cond_16

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/r;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_35

    .line 4
    :cond_16
    instance-of v1, v0, Lfa/n;

    if-eqz v1, :cond_1d

    const-string v1, "ReceiveQueued"

    goto :goto_35

    .line 5
    :cond_1d
    instance-of v1, v0, Lfa/r;

    if-eqz v1, :cond_24

    const-string v1, "SendQueued"

    goto :goto_35

    .line 6
    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UNEXPECTED:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    :goto_35
    iget-object v2, p0, Lfa/c;->c:Lkotlinx/coroutines/internal/p;

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/r;->t()Lkotlinx/coroutines/internal/r;

    move-result-object v2

    if-eq v2, v0, :cond_6d

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",queueSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lfa/c;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9
    instance-of v0, v2, Lfa/i;

    if-eqz v0, :cond_6d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",closedForSend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_6d
    return-object v1
.end method

.method private final j(Lfa/i;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfa/i<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/internal/m;->b(Ljava/lang/Object;ILt9/g;)Ljava/lang/Object;

    move-result-object v2

    .line 2
    :goto_6
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/r;->t()Lkotlinx/coroutines/internal/r;

    move-result-object v3

    instance-of v4, v3, Lfa/n;

    if-eqz v4, :cond_11

    check-cast v3, Lfa/n;

    goto :goto_12

    :cond_11
    move-object v3, v0

    :goto_12
    if-nez v3, :cond_3a

    if-eqz v2, :cond_36

    .line 3
    instance-of v0, v2, Ljava/util/ArrayList;

    if-nez v0, :cond_20

    check-cast v2, Lfa/n;

    .line 4
    invoke-virtual {v2, p1}, Lfa/n;->E(Lfa/i;)V

    goto :goto_36

    .line 5
    :cond_20
    check-cast v2, Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_27
    const/4 v1, -0x1

    if-ge v1, v0, :cond_36

    .line 7
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfa/n;

    .line 8
    invoke-virtual {v1, p1}, Lfa/n;->E(Lfa/i;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_27

    .line 9
    :cond_36
    :goto_36
    invoke-virtual {p0, p1}, Lfa/c;->n(Lkotlinx/coroutines/internal/r;)V

    return-void

    .line 10
    :cond_3a
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/r;->x()Z

    move-result v4

    if-nez v4, :cond_44

    .line 11
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/r;->u()V

    goto :goto_6

    .line 12
    :cond_44
    invoke-static {v2, v3}, Lkotlinx/coroutines/internal/m;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_6
.end method

.method private final k(Lfa/i;)Ljava/lang/Throwable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfa/i<",
            "*>;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lfa/c;->j(Lfa/i;)V

    .line 2
    invoke-virtual {p1}, Lfa/i;->J()Ljava/lang/Throwable;

    move-result-object p1

    return-object p1
.end method

.method private final l(Ljava/lang/Throwable;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lfa/c;->onCloseHandler:Ljava/lang/Object;

    if-eqz v0, :cond_1a

    .line 2
    sget-object v1, Lfa/b;->f:Lkotlinx/coroutines/internal/e0;

    if-eq v0, v1, :cond_1a

    .line 3
    sget-object v2, Lfa/c;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v2, p0, v0, v1}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lt9/c0;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls9/l;

    invoke-interface {v0, p1}, Ls9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Throwable;)Z
    .registers 7

    .line 1
    new-instance v0, Lfa/i;

    invoke-direct {v0, p1}, Lfa/i;-><init>(Ljava/lang/Throwable;)V

    .line 2
    iget-object v1, p0, Lfa/c;->c:Lkotlinx/coroutines/internal/p;

    .line 3
    :cond_7
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/r;->t()Lkotlinx/coroutines/internal/r;

    move-result-object v2

    .line 4
    instance-of v3, v2, Lfa/i;

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    if-nez v3, :cond_13

    const/4 v4, 0x0

    goto :goto_19

    .line 5
    :cond_13
    invoke-virtual {v2, v0, v1}, Lkotlinx/coroutines/internal/r;->m(Lkotlinx/coroutines/internal/r;Lkotlinx/coroutines/internal/r;)Z

    move-result v2

    if-eqz v2, :cond_7

    :goto_19
    if-eqz v4, :cond_1c

    goto :goto_24

    .line 6
    :cond_1c
    iget-object v0, p0, Lfa/c;->c:Lkotlinx/coroutines/internal/p;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/r;->t()Lkotlinx/coroutines/internal/r;

    move-result-object v0

    check-cast v0, Lfa/i;

    .line 7
    :goto_24
    invoke-direct {p0, v0}, Lfa/c;->j(Lfa/i;)V

    if-eqz v4, :cond_2c

    .line 8
    invoke-direct {p0, p1}, Lfa/c;->l(Ljava/lang/Throwable;)V

    :cond_2c
    return v4
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lfa/c;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    sget-object v0, Lfa/b;->b:Lkotlinx/coroutines/internal/e0;

    if-ne p1, v0, :cond_11

    sget-object p1, Lfa/h;->b:Lfa/h$b;

    sget-object v0, Lh9/t;->a:Lh9/t;

    invoke-virtual {p1, v0}, Lfa/h$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_3d

    .line 3
    :cond_11
    sget-object v0, Lfa/b;->c:Lkotlinx/coroutines/internal/e0;

    if-ne p1, v0, :cond_2d

    .line 4
    invoke-virtual {p0}, Lfa/c;->g()Lfa/i;

    move-result-object p1

    if-nez p1, :cond_22

    sget-object p1, Lfa/h;->b:Lfa/h$b;

    invoke-virtual {p1}, Lfa/h$b;->b()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :cond_22
    sget-object v0, Lfa/h;->b:Lfa/h$b;

    invoke-direct {p0, p1}, Lfa/c;->k(Lfa/i;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lfa/h$b;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_3d

    .line 6
    :cond_2d
    instance-of v0, p1, Lfa/i;

    if-eqz v0, :cond_3e

    .line 7
    sget-object v0, Lfa/h;->b:Lfa/h$b;

    check-cast p1, Lfa/i;

    invoke-direct {p0, p1}, Lfa/c;->k(Lfa/i;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lfa/h$b;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_3d
    return-object p1

    :cond_3e
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trySend returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected f()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method protected final g()Lfa/i;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lfa/i<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfa/c;->c:Lkotlinx/coroutines/internal/p;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/r;->t()Lkotlinx/coroutines/internal/r;

    move-result-object v0

    instance-of v1, v0, Lfa/i;

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    check-cast v0, Lfa/i;

    goto :goto_f

    :cond_e
    move-object v0, v2

    :goto_f
    if-eqz v0, :cond_15

    invoke-direct {p0, v0}, Lfa/c;->j(Lfa/i;)V

    move-object v2, v0

    :cond_15
    return-object v2
.end method

.method protected final h()Lkotlinx/coroutines/internal/p;
    .registers 2

    .line 1
    iget-object v0, p0, Lfa/c;->c:Lkotlinx/coroutines/internal/p;

    return-object v0
.end method

.method protected m(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    :cond_0
    invoke-virtual {p0}, Lfa/c;->p()Lfa/p;

    move-result-object v0

    if-nez v0, :cond_9

    sget-object p1, Lfa/b;->c:Lkotlinx/coroutines/internal/e0;

    return-object p1

    :cond_9
    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, p1, v1}, Lfa/p;->j(Ljava/lang/Object;Lkotlinx/coroutines/internal/r$b;)Lkotlinx/coroutines/internal/e0;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Lda/s0;->a()Z

    move-result v2

    if-eqz v2, :cond_26

    sget-object v2, Lda/o;->a:Lkotlinx/coroutines/internal/e0;

    if-ne v1, v2, :cond_1c

    const/4 v1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    if-eqz v1, :cond_20

    goto :goto_26

    :cond_20
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_26
    :goto_26
    invoke-interface {v0, p1}, Lfa/p;->g(Ljava/lang/Object;)V

    .line 5
    invoke-interface {v0}, Lfa/p;->d()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected n(Lkotlinx/coroutines/internal/r;)V
    .registers 2

    return-void
.end method

.method protected final o(Ljava/lang/Object;)Lfa/p;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lfa/p<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfa/c;->c:Lkotlinx/coroutines/internal/p;

    new-instance v1, Lfa/c$a;

    invoke-direct {v1, p1}, Lfa/c$a;-><init>(Ljava/lang/Object;)V

    .line 2
    :cond_7
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/r;->t()Lkotlinx/coroutines/internal/r;

    move-result-object p1

    .line 3
    instance-of v2, p1, Lfa/p;

    if-eqz v2, :cond_12

    check-cast p1, Lfa/p;

    return-object p1

    .line 4
    :cond_12
    invoke-virtual {p1, v1, v0}, Lkotlinx/coroutines/internal/r;->m(Lkotlinx/coroutines/internal/r;Lkotlinx/coroutines/internal/r;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x0

    return-object p1
.end method

.method protected p()Lfa/p;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lfa/p<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfa/c;->c:Lkotlinx/coroutines/internal/p;

    .line 2
    :goto_2
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/r;->r()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/internal/r;

    const/4 v2, 0x0

    if-ne v1, v0, :cond_d

    :goto_b
    move-object v1, v2

    goto :goto_26

    .line 3
    :cond_d
    instance-of v3, v1, Lfa/p;

    if-nez v3, :cond_12

    goto :goto_b

    .line 4
    :cond_12
    move-object v2, v1

    check-cast v2, Lfa/p;

    .line 5
    instance-of v2, v2, Lfa/i;

    if-eqz v2, :cond_20

    .line 6
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/r;->w()Z

    move-result v2

    if-nez v2, :cond_20

    goto :goto_26

    .line 7
    :cond_20
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/r;->z()Lkotlinx/coroutines/internal/r;

    move-result-object v2

    if-nez v2, :cond_29

    .line 8
    :goto_26
    check-cast v1, Lfa/p;

    return-object v1

    :cond_29
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/r;->v()V

    goto :goto_2
.end method

.method protected final q()Lfa/r;
    .registers 5

    .line 1
    iget-object v0, p0, Lfa/c;->c:Lkotlinx/coroutines/internal/p;

    .line 2
    :goto_2
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/r;->r()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/internal/r;

    const/4 v2, 0x0

    if-ne v1, v0, :cond_d

    :goto_b
    move-object v1, v2

    goto :goto_26

    .line 3
    :cond_d
    instance-of v3, v1, Lfa/r;

    if-nez v3, :cond_12

    goto :goto_b

    .line 4
    :cond_12
    move-object v2, v1

    check-cast v2, Lfa/r;

    .line 5
    instance-of v2, v2, Lfa/i;

    if-eqz v2, :cond_20

    .line 6
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/r;->w()Z

    move-result v2

    if-nez v2, :cond_20

    goto :goto_26

    .line 7
    :cond_20
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/r;->z()Lkotlinx/coroutines/internal/r;

    move-result-object v2

    if-nez v2, :cond_29

    .line 8
    :goto_26
    check-cast v1, Lfa/r;

    return-object v1

    :cond_29
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/r;->v()V

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lda/t0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lda/t0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lfa/c;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lfa/c;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class fa.c.a (fa.c$a)
.class public final Lfa/c$a;
.super Lfa/r;
.source "AbstractChannel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfa/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lfa/r;"
    }
.end annotation


# instance fields
.field public final r:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lfa/r;-><init>()V

    .line 2
    iput-object p1, p0, Lfa/c$a;->r:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public C()V
    .registers 1

    return-void
.end method

.method public D()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lfa/c$a;->r:Ljava/lang/Object;

    return-object v0
.end method

.method public E(Lkotlinx/coroutines/internal/r$b;)Lkotlinx/coroutines/internal/e0;
    .registers 2

    .line 1
    sget-object p1, Lda/o;->a:Lkotlinx/coroutines/internal/e0;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SendBuffered@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lda/t0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfa/c$a;->r:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
