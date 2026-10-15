###### Class kotlinx.coroutines.sync.c (kotlinx.coroutines.sync.c)
.class public final Lkotlinx/coroutines/sync/c;
.super Ljava/lang/Object;
.source "Mutex.kt"

# interfaces
.implements Lkotlinx/coroutines/sync/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/sync/c$c;,
        Lkotlinx/coroutines/sync/c$b;,
        Lkotlinx/coroutines/sync/c$a;,
        Lkotlinx/coroutines/sync/c$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/sync/b;"
    }
.end annotation


# static fields
.field static final synthetic a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field volatile synthetic _state:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lkotlinx/coroutines/sync/c;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_state"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/sync/c;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_a

    .line 2
    invoke-static {}, Lkotlinx/coroutines/sync/d;->c()Lkotlinx/coroutines/sync/a;

    move-result-object p1

    goto :goto_e

    :cond_a
    invoke-static {}, Lkotlinx/coroutines/sync/d;->d()Lkotlinx/coroutines/sync/a;

    move-result-object p1

    :goto_e
    iput-object p1, p0, Lkotlinx/coroutines/sync/c;->_state:Ljava/lang/Object;

    return-void
.end method

.method private final d(Ljava/lang/Object;Lk9/d;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lk9/d<",
            "-",
            "Lh9/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ll9/b;->b(Lk9/d;)Lk9/d;

    move-result-object v0

    invoke-static {v0}, Lda/p;->b(Lk9/d;)Lda/n;

    move-result-object v0

    .line 2
    new-instance v1, Lkotlinx/coroutines/sync/c$a;

    invoke-direct {v1, p0, p1, v0}, Lkotlinx/coroutines/sync/c$a;-><init>(Lkotlinx/coroutines/sync/c;Ljava/lang/Object;Lda/m;)V

    .line 3
    :cond_d
    :goto_d
    iget-object v2, p0, Lkotlinx/coroutines/sync/c;->_state:Ljava/lang/Object;

    .line 4
    instance-of v3, v2, Lkotlinx/coroutines/sync/a;

    if-eqz v3, :cond_4a

    .line 5
    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/sync/a;

    iget-object v4, v3, Lkotlinx/coroutines/sync/a;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlinx/coroutines/sync/d;->f()Lkotlinx/coroutines/internal/e0;

    move-result-object v5

    if-eq v4, v5, :cond_2b

    .line 6
    sget-object v4, Lkotlinx/coroutines/sync/c;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    new-instance v5, Lkotlinx/coroutines/sync/c$c;

    iget-object v3, v3, Lkotlinx/coroutines/sync/a;->a:Ljava/lang/Object;

    invoke-direct {v5, v3}, Lkotlinx/coroutines/sync/c$c;-><init>(Ljava/lang/Object;)V

    invoke-static {v4, p0, v2, v5}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_d

    :cond_2b
    if-nez p1, :cond_32

    .line 7
    invoke-static {}, Lkotlinx/coroutines/sync/d;->c()Lkotlinx/coroutines/sync/a;

    move-result-object v3

    goto :goto_37

    :cond_32
    new-instance v3, Lkotlinx/coroutines/sync/a;

    invoke-direct {v3, p1}, Lkotlinx/coroutines/sync/a;-><init>(Ljava/lang/Object;)V

    .line 8
    :goto_37
    sget-object v4, Lkotlinx/coroutines/sync/c;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v4, p0, v2, v3}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 9
    sget-object v1, Lh9/t;->a:Lh9/t;

    new-instance v2, Lkotlinx/coroutines/sync/c$e;

    invoke-direct {v2, p0, p1}, Lkotlinx/coroutines/sync/c$e;-><init>(Lkotlinx/coroutines/sync/c;Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Lda/m;->x(Ljava/lang/Object;Ls9/l;)V

    goto :goto_71

    .line 10
    :cond_4a
    instance-of v3, v2, Lkotlinx/coroutines/sync/c$c;

    if-eqz v3, :cond_a3

    .line 11
    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/sync/c$c;

    iget-object v4, v3, Lkotlinx/coroutines/sync/c$c;->owner:Ljava/lang/Object;

    if-eq v4, p1, :cond_57

    const/4 v4, 0x1

    goto :goto_58

    :cond_57
    const/4 v4, 0x0

    :goto_58
    if-eqz v4, :cond_88

    .line 12
    invoke-virtual {v3, v1}, Lkotlinx/coroutines/internal/r;->l(Lkotlinx/coroutines/internal/r;)V

    .line 13
    iget-object v3, p0, Lkotlinx/coroutines/sync/c;->_state:Ljava/lang/Object;

    if-eq v3, v2, :cond_6e

    invoke-virtual {v1}, Lkotlinx/coroutines/sync/c$b;->D()Z

    move-result v2

    if-nez v2, :cond_68

    goto :goto_6e

    .line 14
    :cond_68
    new-instance v1, Lkotlinx/coroutines/sync/c$a;

    invoke-direct {v1, p0, p1, v0}, Lkotlinx/coroutines/sync/c$a;-><init>(Lkotlinx/coroutines/sync/c;Ljava/lang/Object;Lda/m;)V

    goto :goto_d

    .line 15
    :cond_6e
    :goto_6e
    invoke-static {v0, v1}, Lda/p;->c(Lda/m;Lkotlinx/coroutines/internal/r;)V

    .line 16
    :goto_71
    invoke-virtual {v0}, Lda/n;->t()Ljava/lang/Object;

    move-result-object p1

    .line 17
    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_7e

    invoke-static {p2}, Lm9/h;->c(Lk9/d;)V

    .line 18
    :cond_7e
    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_85

    return-object p1

    :cond_85
    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1

    .line 19
    :cond_88
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Already locked by "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 20
    :cond_a3
    instance-of v3, v2, Lkotlinx/coroutines/internal/z;

    if-eqz v3, :cond_ae

    check-cast v2, Lkotlinx/coroutines/internal/z;

    invoke-virtual {v2, p0}, Lkotlinx/coroutines/internal/z;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :cond_ae
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal state "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_ca

    :goto_c9
    throw p1

    :goto_ca
    goto :goto_c9
.end method


# virtual methods
.method public a()Z
    .registers 5

    .line 1
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/sync/c;->_state:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Lkotlinx/coroutines/sync/a;

    const/4 v2, 0x1

    if-eqz v1, :cond_14

    check-cast v0, Lkotlinx/coroutines/sync/a;

    iget-object v0, v0, Lkotlinx/coroutines/sync/a;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlinx/coroutines/sync/d;->f()Lkotlinx/coroutines/internal/e0;

    move-result-object v1

    if-eq v0, v1, :cond_12

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    return v2

    .line 3
    :cond_14
    instance-of v1, v0, Lkotlinx/coroutines/sync/c$c;

    if-eqz v1, :cond_19

    return v2

    .line 4
    :cond_19
    instance-of v1, v0, Lkotlinx/coroutines/internal/z;

    if-eqz v1, :cond_23

    check-cast v0, Lkotlinx/coroutines/internal/z;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/z;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_23
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3f

    :goto_3e
    throw v1

    :goto_3f
    goto :goto_3e
.end method

.method public b(Ljava/lang/Object;)V
    .registers 9

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/sync/c;->_state:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Lkotlinx/coroutines/sync/a;

    const-string v2, " but expected "

    const-string v3, "Mutex is locked by "

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_63

    if-nez p1, :cond_2a

    .line 3
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/sync/a;

    iget-object v1, v1, Lkotlinx/coroutines/sync/a;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlinx/coroutines/sync/d;->f()Lkotlinx/coroutines/internal/e0;

    move-result-object v2

    if-eq v1, v2, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v4, 0x0

    :goto_1b
    if-eqz v4, :cond_1e

    goto :goto_35

    :cond_1e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Mutex is not locked"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_2a
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/sync/a;

    iget-object v6, v1, Lkotlinx/coroutines/sync/a;->a:Ljava/lang/Object;

    if-ne v6, p1, :cond_32

    goto :goto_33

    :cond_32
    const/4 v4, 0x0

    :goto_33
    if-eqz v4, :cond_42

    .line 5
    :goto_35
    sget-object v1, Lkotlinx/coroutines/sync/c;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lkotlinx/coroutines/sync/d;->d()Lkotlinx/coroutines/sync/a;

    move-result-object v2

    invoke-static {v1, p0, v0, v2}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 6
    :cond_42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lkotlinx/coroutines/sync/a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_63
    instance-of v1, v0, Lkotlinx/coroutines/internal/z;

    if-eqz v1, :cond_6d

    check-cast v0, Lkotlinx/coroutines/internal/z;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/z;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_6d
    instance-of v1, v0, Lkotlinx/coroutines/sync/c$c;

    if-eqz v1, :cond_d3

    if-eqz p1, :cond_a0

    .line 9
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/sync/c$c;

    iget-object v6, v1, Lkotlinx/coroutines/sync/c$c;->owner:Ljava/lang/Object;

    if-ne v6, p1, :cond_7b

    goto :goto_7c

    :cond_7b
    const/4 v4, 0x0

    :goto_7c
    if-eqz v4, :cond_7f

    goto :goto_a0

    :cond_7f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lkotlinx/coroutines/sync/c$c;->owner:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_a0
    :goto_a0
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/sync/c$c;

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/r;->y()Lkotlinx/coroutines/internal/r;

    move-result-object v2

    if-nez v2, :cond_bd

    .line 11
    new-instance v2, Lkotlinx/coroutines/sync/c$d;

    invoke-direct {v2, v1}, Lkotlinx/coroutines/sync/c$d;-><init>(Lkotlinx/coroutines/sync/c$c;)V

    .line 12
    sget-object v1, Lkotlinx/coroutines/sync/c;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v1, p0, v0, v2}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2, p0}, Lkotlinx/coroutines/internal/c;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 13
    :cond_bd
    check-cast v2, Lkotlinx/coroutines/sync/c$b;

    invoke-virtual {v2}, Lkotlinx/coroutines/sync/c$b;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    iget-object p1, v2, Lkotlinx/coroutines/sync/c$b;->r:Ljava/lang/Object;

    if-nez p1, :cond_cd

    invoke-static {}, Lkotlinx/coroutines/sync/d;->e()Lkotlinx/coroutines/internal/e0;

    move-result-object p1

    :cond_cd
    iput-object p1, v1, Lkotlinx/coroutines/sync/c$c;->owner:Ljava/lang/Object;

    .line 15
    invoke-virtual {v2}, Lkotlinx/coroutines/sync/c$b;->C()V

    return-void

    .line 16
    :cond_d3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_ef

    :goto_ee
    throw p1

    :goto_ef
    goto :goto_ee
.end method

.method public c(Ljava/lang/Object;Lk9/d;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lk9/d<",
            "-",
            "Lh9/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/sync/c;->e(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1

    .line 2
    :cond_9
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/sync/c;->d(Ljava/lang/Object;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_14

    return-object p1

    :cond_14
    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1
.end method

.method public e(Ljava/lang/Object;)Z
    .registers 7

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/sync/c;->_state:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Lkotlinx/coroutines/sync/a;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_29

    .line 3
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/sync/a;

    iget-object v1, v1, Lkotlinx/coroutines/sync/a;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlinx/coroutines/sync/d;->f()Lkotlinx/coroutines/internal/e0;

    move-result-object v4

    if-eq v1, v4, :cond_14

    return v3

    :cond_14
    if-nez p1, :cond_1b

    .line 4
    invoke-static {}, Lkotlinx/coroutines/sync/d;->c()Lkotlinx/coroutines/sync/a;

    move-result-object v1

    goto :goto_20

    :cond_1b
    new-instance v1, Lkotlinx/coroutines/sync/a;

    invoke-direct {v1, p1}, Lkotlinx/coroutines/sync/a;-><init>(Ljava/lang/Object;)V

    .line 5
    :goto_20
    sget-object v3, Lkotlinx/coroutines/sync/c;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v3, p0, v0, v1}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 6
    :cond_29
    instance-of v1, v0, Lkotlinx/coroutines/sync/c$c;

    if-eqz v1, :cond_53

    .line 7
    check-cast v0, Lkotlinx/coroutines/sync/c$c;

    iget-object v0, v0, Lkotlinx/coroutines/sync/c$c;->owner:Ljava/lang/Object;

    if-eq v0, p1, :cond_34

    goto :goto_35

    :cond_34
    const/4 v2, 0x0

    :goto_35
    if-eqz v2, :cond_38

    return v3

    :cond_38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Already locked by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_53
    instance-of v1, v0, Lkotlinx/coroutines/internal/z;

    if-eqz v1, :cond_5d

    check-cast v0, Lkotlinx/coroutines/internal/z;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/z;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5d
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_79

    :goto_78
    throw p1

    :goto_79
    goto :goto_78
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/sync/c;->_state:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Lkotlinx/coroutines/sync/a;

    const/16 v2, 0x5d

    const-string v3, "Mutex["

    if-eqz v1, :cond_21

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v0, Lkotlinx/coroutines/sync/a;

    iget-object v0, v0, Lkotlinx/coroutines/sync/a;->a:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_21
    instance-of v1, v0, Lkotlinx/coroutines/internal/z;

    if-eqz v1, :cond_2b

    check-cast v0, Lkotlinx/coroutines/internal/z;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/z;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_2b
    instance-of v1, v0, Lkotlinx/coroutines/sync/c$c;

    if-eqz v1, :cond_46

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v0, Lkotlinx/coroutines/sync/c$c;

    iget-object v0, v0, Lkotlinx/coroutines/sync/c$c;->owner:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_46
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_62

    :goto_61
    throw v1

    :goto_62
    goto :goto_61
.end method

###### Class kotlinx.coroutines.sync.c.a (kotlinx.coroutines.sync.c$a)
.class final Lkotlinx/coroutines/sync/c$a;
.super Lkotlinx/coroutines/sync/c$b;
.source "Mutex.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/sync/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private final u:Lda/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lda/m<",
            "Lh9/t;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic v:Lkotlinx/coroutines/sync/c;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/sync/c;Ljava/lang/Object;Lda/m;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lda/m<",
            "-",
            "Lh9/t;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/sync/c$a;->v:Lkotlinx/coroutines/sync/c;

    .line 2
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/sync/c$b;-><init>(Lkotlinx/coroutines/sync/c;Ljava/lang/Object;)V

    .line 3
    iput-object p3, p0, Lkotlinx/coroutines/sync/c$a;->u:Lda/m;

    return-void
.end method


# virtual methods
.method public C()V
    .registers 3

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/sync/c$a;->u:Lda/m;

    sget-object v1, Lda/o;->a:Lkotlinx/coroutines/internal/e0;

    invoke-interface {v0, v1}, Lda/m;->B(Ljava/lang/Object;)V

    return-void
.end method

.method public E()Z
    .registers 7

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/sync/c$b;->D()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 2
    :cond_8
    iget-object v0, p0, Lkotlinx/coroutines/sync/c$a;->u:Lda/m;

    sget-object v2, Lh9/t;->a:Lh9/t;

    const/4 v3, 0x0

    new-instance v4, Lkotlinx/coroutines/sync/c$a$a;

    iget-object v5, p0, Lkotlinx/coroutines/sync/c$a;->v:Lkotlinx/coroutines/sync/c;

    invoke-direct {v4, v5, p0}, Lkotlinx/coroutines/sync/c$a$a;-><init>(Lkotlinx/coroutines/sync/c;Lkotlinx/coroutines/sync/c$a;)V

    invoke-interface {v0, v2, v3, v4}, Lda/m;->m(Ljava/lang/Object;Ljava/lang/Object;Ls9/l;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LockCont["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/sync/c$b;->r:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/sync/c$a;->u:Lda/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/sync/c$a;->v:Lkotlinx/coroutines/sync/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class kotlinx.coroutines.sync.c.a.C0195a (kotlinx.coroutines.sync.c$a$a)
.class final Lkotlinx/coroutines/sync/c$a$a;
.super Lt9/n;
.source "Mutex.kt"

# interfaces
.implements Ls9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/sync/c$a;->E()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt9/n;",
        "Ls9/l<",
        "Ljava/lang/Throwable;",
        "Lh9/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic o:Lkotlinx/coroutines/sync/c;

.field final synthetic p:Lkotlinx/coroutines/sync/c$a;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/sync/c;Lkotlinx/coroutines/sync/c$a;)V
    .registers 3

    iput-object p1, p0, Lkotlinx/coroutines/sync/c$a$a;->o:Lkotlinx/coroutines/sync/c;

    iput-object p2, p0, Lkotlinx/coroutines/sync/c$a$a;->p:Lkotlinx/coroutines/sync/c$a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lt9/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lkotlinx/coroutines/sync/c$a$a;->o:Lkotlinx/coroutines/sync/c;

    iget-object v0, p0, Lkotlinx/coroutines/sync/c$a$a;->p:Lkotlinx/coroutines/sync/c$a;

    iget-object v0, v0, Lkotlinx/coroutines/sync/c$b;->r:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/sync/c;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/sync/c$a$a;->c(Ljava/lang/Throwable;)V

    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1
.end method

###### Class kotlinx.coroutines.sync.c.b (kotlinx.coroutines.sync.c$b)
.class abstract Lkotlinx/coroutines/sync/c$b;
.super Lkotlinx/coroutines/internal/r;
.source "Mutex.kt"

# interfaces
.implements Lda/e1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/sync/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "b"
.end annotation


# static fields
.field private static final synthetic t:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile synthetic isTaken:I

.field public final r:Ljava/lang/Object;

.field final synthetic s:Lkotlinx/coroutines/sync/c;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lkotlinx/coroutines/sync/c$b;

    const-string v1, "isTaken"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/sync/c$b;->t:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/sync/c;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/sync/c$b;->s:Lkotlinx/coroutines/sync/c;

    .line 2
    invoke-direct {p0}, Lkotlinx/coroutines/internal/r;-><init>()V

    .line 3
    iput-object p2, p0, Lkotlinx/coroutines/sync/c$b;->r:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lkotlinx/coroutines/sync/c$b;->isTaken:I

    return-void
.end method


# virtual methods
.method public abstract C()V
.end method

.method public final D()Z
    .registers 4

    .line 1
    sget-object v0, Lkotlinx/coroutines/sync/c$b;->t:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    return v0
.end method

.method public abstract E()Z
.end method

.method public final i()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/r;->x()Z

    return-void
.end method

###### Class kotlinx.coroutines.sync.c.C0196c (kotlinx.coroutines.sync.c$c)
.class final Lkotlinx/coroutines/sync/c$c;
.super Lkotlinx/coroutines/internal/p;
.source "Mutex.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/sync/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field public volatile owner:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/internal/p;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/sync/c$c;->owner:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LockedQueue["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/sync/c$c;->owner:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class kotlinx.coroutines.sync.c.d (kotlinx.coroutines.sync.c$d)
.class final Lkotlinx/coroutines/sync/c$d;
.super Lkotlinx/coroutines/internal/c;
.source "Mutex.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/sync/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/coroutines/internal/c<",
        "Lkotlinx/coroutines/sync/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lkotlinx/coroutines/sync/c$c;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/sync/c$c;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/internal/c;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/sync/c$d;->b:Lkotlinx/coroutines/sync/c$c;

    return-void
.end method


# virtual methods
.method public bridge synthetic d(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/sync/c;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/sync/c$d;->h(Lkotlinx/coroutines/sync/c;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic g(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Lkotlinx/coroutines/sync/c;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/sync/c$d;->i(Lkotlinx/coroutines/sync/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public h(Lkotlinx/coroutines/sync/c;Ljava/lang/Object;)V
    .registers 4

    if-nez p2, :cond_7

    .line 1
    invoke-static {}, Lkotlinx/coroutines/sync/d;->d()Lkotlinx/coroutines/sync/a;

    move-result-object p2

    goto :goto_9

    :cond_7
    iget-object p2, p0, Lkotlinx/coroutines/sync/c$d;->b:Lkotlinx/coroutines/sync/c$c;

    .line 2
    :goto_9
    sget-object v0, Lkotlinx/coroutines/sync/c;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v0, p1, p0, p2}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public i(Lkotlinx/coroutines/sync/c;)Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object p1, p0, Lkotlinx/coroutines/sync/c$d;->b:Lkotlinx/coroutines/sync/c$c;

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/p;->C()Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x0

    goto :goto_e

    :cond_a
    invoke-static {}, Lkotlinx/coroutines/sync/d;->g()Lkotlinx/coroutines/internal/e0;

    move-result-object p1

    :goto_e
    return-object p1
.end method

###### Class kotlinx.coroutines.sync.c.e (kotlinx.coroutines.sync.c$e)
.class final Lkotlinx/coroutines/sync/c$e;
.super Lt9/n;
.source "Mutex.kt"

# interfaces
.implements Ls9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/sync/c;->d(Ljava/lang/Object;Lk9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt9/n;",
        "Ls9/l<",
        "Ljava/lang/Throwable;",
        "Lh9/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic o:Lkotlinx/coroutines/sync/c;

.field final synthetic p:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/sync/c;Ljava/lang/Object;)V
    .registers 3

    iput-object p1, p0, Lkotlinx/coroutines/sync/c$e;->o:Lkotlinx/coroutines/sync/c;

    iput-object p2, p0, Lkotlinx/coroutines/sync/c$e;->p:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lt9/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lkotlinx/coroutines/sync/c$e;->o:Lkotlinx/coroutines/sync/c;

    iget-object v0, p0, Lkotlinx/coroutines/sync/c$e;->p:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/sync/c;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/sync/c$e;->c(Ljava/lang/Throwable;)V

    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1
.end method
