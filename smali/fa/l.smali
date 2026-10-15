###### Class fa.l (fa.l)
.class public Lfa/l;
.super Lfa/a;
.source "ConflatedChannel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lfa/a<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final e:Ljava/util/concurrent/locks/ReentrantLock;

.field private f:Ljava/lang/Object;


# direct methods
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
    invoke-direct {p0, p1}, Lfa/a;-><init>(Ls9/l;)V

    .line 2
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lfa/l;->e:Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    sget-object p1, Lfa/b;->a:Lkotlinx/coroutines/internal/e0;

    iput-object p1, p0, Lfa/l;->f:Ljava/lang/Object;

    return-void
.end method

.method private final C(Ljava/lang/Object;)Lkotlinx/coroutines/internal/m0;
    .registers 6

    .line 1
    iget-object v0, p0, Lfa/l;->f:Ljava/lang/Object;

    .line 2
    sget-object v1, Lfa/b;->a:Lkotlinx/coroutines/internal/e0;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_8

    goto :goto_11

    .line 3
    :cond_8
    iget-object v1, p0, Lfa/c;->b:Ls9/l;

    if-eqz v1, :cond_11

    const/4 v3, 0x2

    invoke-static {v1, v0, v2, v3, v2}, Lkotlinx/coroutines/internal/y;->d(Ls9/l;Ljava/lang/Object;Lkotlinx/coroutines/internal/m0;ILjava/lang/Object;)Lkotlinx/coroutines/internal/m0;

    move-result-object v2

    .line 4
    :cond_11
    :goto_11
    iput-object p1, p0, Lfa/l;->f:Ljava/lang/Object;

    return-object v2
.end method


# virtual methods
.method protected f()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lfa/l;->e:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lfa/l;->f:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_21

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    :catchall_21
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method protected m(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfa/l;->e:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_5
    invoke-virtual {p0}, Lfa/c;->g()Lfa/i;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_5e

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    .line 4
    :cond_f
    :try_start_f
    iget-object v1, p0, Lfa/l;->f:Ljava/lang/Object;

    sget-object v2, Lfa/b;->a:Lkotlinx/coroutines/internal/e0;

    if-ne v1, v2, :cond_51

    .line 5
    :cond_15
    invoke-virtual {p0}, Lfa/a;->p()Lfa/p;

    move-result-object v1

    if-nez v1, :cond_1c

    goto :goto_51

    .line 6
    :cond_1c
    instance-of v2, v1, Lfa/i;
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_5e

    if-eqz v2, :cond_24

    .line 7
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    .line 8
    :cond_24
    :try_start_24
    invoke-static {v1}, Lt9/m;->b(Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lfa/p;->j(Ljava/lang/Object;Lkotlinx/coroutines/internal/r$b;)Lkotlinx/coroutines/internal/e0;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 9
    invoke-static {}, Lda/s0;->a()Z

    move-result v3

    if-eqz v3, :cond_44

    sget-object v3, Lda/o;->a:Lkotlinx/coroutines/internal/e0;

    if-ne v2, v3, :cond_3a

    const/4 v2, 0x1

    goto :goto_3b

    :cond_3a
    const/4 v2, 0x0

    :goto_3b
    if-eqz v2, :cond_3e

    goto :goto_44

    :cond_3e
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 10
    :cond_44
    :goto_44
    sget-object v2, Lh9/t;->a:Lh9/t;
    :try_end_46
    .catchall {:try_start_24 .. :try_end_46} :catchall_5e

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 11
    invoke-interface {v1, p1}, Lfa/p;->g(Ljava/lang/Object;)V

    .line 12
    invoke-interface {v1}, Lfa/p;->d()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :cond_51
    :goto_51
    :try_start_51
    invoke-direct {p0, p1}, Lfa/l;->C(Ljava/lang/Object;)Lkotlinx/coroutines/internal/m0;

    move-result-object p1

    if-nez p1, :cond_5d

    .line 14
    sget-object p1, Lfa/b;->b:Lkotlinx/coroutines/internal/e0;
    :try_end_59
    .catchall {:try_start_51 .. :try_end_59} :catchall_5e

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    .line 15
    :cond_5d
    :try_start_5d
    throw p1
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5e

    :catchall_5e
    move-exception p1

    .line 16
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_64

    :goto_63
    throw p1

    :goto_64
    goto :goto_63
.end method

.method protected u(Lfa/n;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfa/n<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfa/l;->e:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_5
    invoke-super {p0, p1}, Lfa/a;->u(Lfa/n;)Z

    move-result p1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    :catchall_d
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method protected final v()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected final w()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lfa/l;->e:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_5
    iget-object v1, p0, Lfa/l;->f:Ljava/lang/Object;

    sget-object v2, Lfa/b;->a:Lkotlinx/coroutines/internal/e0;
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_12

    if-ne v1, v2, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :catchall_12
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method protected z()Ljava/lang/Object;
    .registers 4

    .line 1
    iget-object v0, p0, Lfa/l;->e:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_5
    iget-object v1, p0, Lfa/l;->f:Ljava/lang/Object;

    sget-object v2, Lfa/b;->a:Lkotlinx/coroutines/internal/e0;

    if-ne v1, v2, :cond_17

    invoke-virtual {p0}, Lfa/c;->g()Lfa/i;

    move-result-object v1

    if-nez v1, :cond_13

    sget-object v1, Lfa/b;->d:Lkotlinx/coroutines/internal/e0;
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_1f

    :cond_13
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    .line 4
    :cond_17
    :try_start_17
    iput-object v2, p0, Lfa/l;->f:Ljava/lang/Object;

    .line 5
    sget-object v2, Lh9/t;->a:Lh9/t;
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_1f

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    :catchall_1f
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method
