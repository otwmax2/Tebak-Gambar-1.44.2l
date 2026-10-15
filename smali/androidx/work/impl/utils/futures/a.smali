###### Class androidx.work.impl.utils.futures.a (androidx.work.impl.utils.futures.a)
.class public abstract Landroidx/work/impl/utils/futures/a;
.super Ljava/lang/Object;
.source "AbstractFuture.java"

# interfaces
.implements La5/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/utils/futures/a$h;,
        Landroidx/work/impl/utils/futures/a$f;,
        Landroidx/work/impl/utils/futures/a$b;,
        Landroidx/work/impl/utils/futures/a$g;,
        Landroidx/work/impl/utils/futures/a$c;,
        Landroidx/work/impl/utils/futures/a$d;,
        Landroidx/work/impl/utils/futures/a$e;,
        Landroidx/work/impl/utils/futures/a$i;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "La5/a<",
        "TV;>;"
    }
.end annotation


# static fields
.field static final r:Z

.field private static final s:Ljava/util/logging/Logger;

.field static final t:Landroidx/work/impl/utils/futures/a$b;

.field private static final u:Ljava/lang/Object;


# instance fields
.field volatile o:Ljava/lang/Object;

.field volatile p:Landroidx/work/impl/utils/futures/a$e;

.field volatile q:Landroidx/work/impl/utils/futures/a$i;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 1
    const-class v0, Landroidx/work/impl/utils/futures/a$i;

    const-string v1, "guava.concurrent.generate_cancellation_cause"

    const-string v2, "false"

    .line 2
    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroidx/work/impl/utils/futures/a;->r:Z

    .line 4
    const-class v1, Landroidx/work/impl/utils/futures/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Landroidx/work/impl/utils/futures/a;->s:Ljava/util/logging/Logger;

    .line 5
    :try_start_1c
    new-instance v1, Landroidx/work/impl/utils/futures/a$f;

    const-class v2, Ljava/lang/Thread;

    const-string v3, "a"

    .line 6
    invoke-static {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    const-string v2, "b"

    .line 7
    invoke-static {v0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    const-class v2, Landroidx/work/impl/utils/futures/a;

    const-string v5, "q"

    .line 8
    invoke-static {v2, v0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v5

    const-class v0, Landroidx/work/impl/utils/futures/a;

    const-class v2, Landroidx/work/impl/utils/futures/a$e;

    const-string v6, "p"

    .line 9
    invoke-static {v0, v2, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v6

    const-class v0, Landroidx/work/impl/utils/futures/a;

    const-class v2, Ljava/lang/Object;

    const-string v7, "o"

    .line 10
    invoke-static {v0, v2, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v7

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Landroidx/work/impl/utils/futures/a$f;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    :try_end_4c
    .catchall {:try_start_1c .. :try_end_4c} :catchall_4e

    const/4 v0, 0x0

    goto :goto_54

    :catchall_4e
    move-exception v0

    .line 11
    new-instance v1, Landroidx/work/impl/utils/futures/a$h;

    invoke-direct {v1}, Landroidx/work/impl/utils/futures/a$h;-><init>()V

    .line 12
    :goto_54
    sput-object v1, Landroidx/work/impl/utils/futures/a;->t:Landroidx/work/impl/utils/futures/a$b;

    .line 13
    const-class v1, Ljava/util/concurrent/locks/LockSupport;

    if-eqz v0, :cond_63

    .line 14
    sget-object v1, Landroidx/work/impl/utils/futures/a;->s:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "SafeAtomicHelper is broken!"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    :cond_63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/work/impl/utils/futures/a;->u:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/StringBuilder;)V
    .registers 5

    const-string v0, "]"

    .line 1
    :try_start_2
    invoke-static {p0}, Landroidx/work/impl/utils/futures/a;->l(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "SUCCESS, result=["

    .line 2
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Landroidx/work/impl/utils/futures/a;->t(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_15
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_15} :catch_2f
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_15} :catch_29
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_15} :catch_16

    goto :goto_3f

    :catch_16
    move-exception v0

    const-string v1, "UNKNOWN, cause=["

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " thrown from get()]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3f

    :catch_29
    const-string v0, "CANCELLED"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3f

    :catch_2f
    move-exception v1

    const-string v2, "FAILURE, cause=["

    .line 5
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3f
    return-void
.end method

.method private static c(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;
    .registers 3

    .line 1
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-object v0
.end method

.method static d(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method private g(Landroidx/work/impl/utils/futures/a$e;)Landroidx/work/impl/utils/futures/a$e;
    .registers 6

    .line 1
    :cond_0
    iget-object v0, p0, Landroidx/work/impl/utils/futures/a;->p:Landroidx/work/impl/utils/futures/a$e;

    .line 2
    sget-object v1, Landroidx/work/impl/utils/futures/a;->t:Landroidx/work/impl/utils/futures/a$b;

    sget-object v2, Landroidx/work/impl/utils/futures/a$e;->d:Landroidx/work/impl/utils/futures/a$e;

    invoke-virtual {v1, p0, v0, v2}, Landroidx/work/impl/utils/futures/a$b;->a(Landroidx/work/impl/utils/futures/a;Landroidx/work/impl/utils/futures/a$e;Landroidx/work/impl/utils/futures/a$e;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    :goto_f
    if-eqz p1, :cond_18

    .line 3
    iget-object v1, p1, Landroidx/work/impl/utils/futures/a$e;->c:Landroidx/work/impl/utils/futures/a$e;

    .line 4
    iput-object v0, p1, Landroidx/work/impl/utils/futures/a$e;->c:Landroidx/work/impl/utils/futures/a$e;

    move-object v0, p1

    move-object p1, v1

    goto :goto_f

    :cond_18
    return-object v0
.end method

.method static h(Landroidx/work/impl/utils/futures/a;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/utils/futures/a<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_1
    invoke-direct {p0}, Landroidx/work/impl/utils/futures/a;->o()V

    .line 2
    invoke-virtual {p0}, Landroidx/work/impl/utils/futures/a;->b()V

    .line 3
    invoke-direct {p0, v0}, Landroidx/work/impl/utils/futures/a;->g(Landroidx/work/impl/utils/futures/a$e;)Landroidx/work/impl/utils/futures/a$e;

    move-result-object p0

    :goto_b
    if-eqz p0, :cond_33

    .line 4
    iget-object v0, p0, Landroidx/work/impl/utils/futures/a$e;->c:Landroidx/work/impl/utils/futures/a$e;

    .line 5
    iget-object v1, p0, Landroidx/work/impl/utils/futures/a$e;->a:Ljava/lang/Runnable;

    .line 6
    instance-of v2, v1, Landroidx/work/impl/utils/futures/a$g;

    if-eqz v2, :cond_2c

    .line 7
    check-cast v1, Landroidx/work/impl/utils/futures/a$g;

    .line 8
    iget-object p0, v1, Landroidx/work/impl/utils/futures/a$g;->o:Landroidx/work/impl/utils/futures/a;

    .line 9
    iget-object v2, p0, Landroidx/work/impl/utils/futures/a;->o:Ljava/lang/Object;

    if-ne v2, v1, :cond_31

    .line 10
    iget-object v2, v1, Landroidx/work/impl/utils/futures/a$g;->p:La5/a;

    invoke-static {v2}, Landroidx/work/impl/utils/futures/a;->k(La5/a;)Ljava/lang/Object;

    move-result-object v2

    .line 11
    sget-object v3, Landroidx/work/impl/utils/futures/a;->t:Landroidx/work/impl/utils/futures/a$b;

    invoke-virtual {v3, p0, v1, v2}, Landroidx/work/impl/utils/futures/a$b;->b(Landroidx/work/impl/utils/futures/a;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    goto :goto_1

    .line 12
    :cond_2c
    iget-object p0, p0, Landroidx/work/impl/utils/futures/a$e;->b:Ljava/util/concurrent/Executor;

    invoke-static {v1, p0}, Landroidx/work/impl/utils/futures/a;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_31
    move-object p0, v0

    goto :goto_b

    :cond_33
    return-void
.end method

.method private static i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 7

    .line 1
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_25

    :catch_4
    move-exception v0

    .line 2
    sget-object v1, Landroidx/work/impl/utils/futures/a;->s:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RuntimeException while executing runnable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " with executor "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_25
    return-void
.end method

.method private j(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Landroidx/work/impl/utils/futures/a$c;

    if-nez v0, :cond_18

    .line 2
    instance-of v0, p1, Landroidx/work/impl/utils/futures/a$d;

    if-nez v0, :cond_e

    .line 3
    sget-object v0, Landroidx/work/impl/utils/futures/a;->u:Ljava/lang/Object;

    if-ne p1, v0, :cond_d

    const/4 p1, 0x0

    :cond_d
    return-object p1

    .line 4
    :cond_e
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    check-cast p1, Landroidx/work/impl/utils/futures/a$d;

    iget-object p1, p1, Landroidx/work/impl/utils/futures/a$d;->a:Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 5
    :cond_18
    check-cast p1, Landroidx/work/impl/utils/futures/a$c;

    iget-object p1, p1, Landroidx/work/impl/utils/futures/a$c;->b:Ljava/lang/Throwable;

    const-string v0, "Task was cancelled."

    invoke-static {v0, p1}, Landroidx/work/impl/utils/futures/a;->c(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object p1

    throw p1
.end method

.method static k(La5/a;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La5/a<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Landroidx/work/impl/utils/futures/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    .line 2
    check-cast p0, Landroidx/work/impl/utils/futures/a;

    iget-object p0, p0, Landroidx/work/impl/utils/futures/a;->o:Ljava/lang/Object;

    .line 3
    instance-of v0, p0, Landroidx/work/impl/utils/futures/a$c;

    if-eqz v0, :cond_22

    .line 4
    move-object v0, p0

    check-cast v0, Landroidx/work/impl/utils/futures/a$c;

    .line 5
    iget-boolean v2, v0, Landroidx/work/impl/utils/futures/a$c;->a:Z

    if-eqz v2, :cond_22

    .line 6
    iget-object p0, v0, Landroidx/work/impl/utils/futures/a$c;->b:Ljava/lang/Throwable;

    if-eqz p0, :cond_20

    new-instance p0, Landroidx/work/impl/utils/futures/a$c;

    iget-object v0, v0, Landroidx/work/impl/utils/futures/a$c;->b:Ljava/lang/Throwable;

    invoke-direct {p0, v1, v0}, Landroidx/work/impl/utils/futures/a$c;-><init>(ZLjava/lang/Throwable;)V

    goto :goto_22

    .line 7
    :cond_20
    sget-object p0, Landroidx/work/impl/utils/futures/a$c;->d:Landroidx/work/impl/utils/futures/a$c;

    :cond_22
    :goto_22
    return-object p0

    .line 8
    :cond_23
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    .line 9
    sget-boolean v2, Landroidx/work/impl/utils/futures/a;->r:Z

    xor-int/lit8 v2, v2, 0x1

    and-int/2addr v2, v0

    if-eqz v2, :cond_31

    .line 10
    sget-object p0, Landroidx/work/impl/utils/futures/a$c;->d:Landroidx/work/impl/utils/futures/a$c;

    return-object p0

    .line 11
    :cond_31
    :try_start_31
    invoke-static {p0}, Landroidx/work/impl/utils/futures/a;->l(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_39

    .line 12
    sget-object v2, Landroidx/work/impl/utils/futures/a;->u:Ljava/lang/Object;
    :try_end_39
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_31 .. :try_end_39} :catch_66
    .catch Ljava/util/concurrent/CancellationException; {:try_start_31 .. :try_end_39} :catch_41
    .catchall {:try_start_31 .. :try_end_39} :catchall_3a

    :cond_39
    return-object v2

    :catchall_3a
    move-exception p0

    .line 13
    new-instance v0, Landroidx/work/impl/utils/futures/a$d;

    invoke-direct {v0, p0}, Landroidx/work/impl/utils/futures/a$d;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    :catch_41
    move-exception v2

    if-nez v0, :cond_60

    .line 14
    new-instance v0, Landroidx/work/impl/utils/futures/a$d;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get() threw CancellationException, despite reporting isCancelled() == false: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v0, v1}, Landroidx/work/impl/utils/futures/a$d;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    .line 15
    :cond_60
    new-instance p0, Landroidx/work/impl/utils/futures/a$c;

    invoke-direct {p0, v1, v2}, Landroidx/work/impl/utils/futures/a$c;-><init>(ZLjava/lang/Throwable;)V

    return-object p0

    :catch_66
    move-exception p0

    .line 16
    new-instance v0, Landroidx/work/impl/utils/futures/a$d;

    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/work/impl/utils/futures/a$d;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static l(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_1
    :try_start_1
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_5} :catch_1a
    .catchall {:try_start_1 .. :try_end_5} :catchall_f

    if-eqz v0, :cond_e

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_e
    return-object p0

    :catchall_f
    move-exception p0

    if-eqz v0, :cond_19

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 3
    :cond_19
    throw p0

    :catch_1a
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private o()V
    .registers 4

    .line 1
    :cond_0
    iget-object v0, p0, Landroidx/work/impl/utils/futures/a;->q:Landroidx/work/impl/utils/futures/a$i;

    .line 2
    sget-object v1, Landroidx/work/impl/utils/futures/a;->t:Landroidx/work/impl/utils/futures/a$b;

    sget-object v2, Landroidx/work/impl/utils/futures/a$i;->c:Landroidx/work/impl/utils/futures/a$i;

    invoke-virtual {v1, p0, v0, v2}, Landroidx/work/impl/utils/futures/a$b;->c(Landroidx/work/impl/utils/futures/a;Landroidx/work/impl/utils/futures/a$i;Landroidx/work/impl/utils/futures/a$i;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_c
    if-eqz v0, :cond_14

    .line 3
    invoke-virtual {v0}, Landroidx/work/impl/utils/futures/a$i;->b()V

    .line 4
    iget-object v0, v0, Landroidx/work/impl/utils/futures/a$i;->b:Landroidx/work/impl/utils/futures/a$i;

    goto :goto_c

    :cond_14
    return-void
.end method

.method private p(Landroidx/work/impl/utils/futures/a$i;)V
    .registers 6

    const/4 v0, 0x0

    .line 1
    iput-object v0, p1, Landroidx/work/impl/utils/futures/a$i;->a:Ljava/lang/Thread;

    .line 2
    :goto_3
    iget-object p1, p0, Landroidx/work/impl/utils/futures/a;->q:Landroidx/work/impl/utils/futures/a$i;

    .line 3
    sget-object v1, Landroidx/work/impl/utils/futures/a$i;->c:Landroidx/work/impl/utils/futures/a$i;

    if-ne p1, v1, :cond_a

    return-void

    :cond_a
    move-object v1, v0

    :goto_b
    if-eqz p1, :cond_29

    .line 4
    iget-object v2, p1, Landroidx/work/impl/utils/futures/a$i;->b:Landroidx/work/impl/utils/futures/a$i;

    .line 5
    iget-object v3, p1, Landroidx/work/impl/utils/futures/a$i;->a:Ljava/lang/Thread;

    if-eqz v3, :cond_15

    move-object v1, p1

    goto :goto_27

    :cond_15
    if-eqz v1, :cond_1e

    .line 6
    iput-object v2, v1, Landroidx/work/impl/utils/futures/a$i;->b:Landroidx/work/impl/utils/futures/a$i;

    .line 7
    iget-object p1, v1, Landroidx/work/impl/utils/futures/a$i;->a:Ljava/lang/Thread;

    if-nez p1, :cond_27

    goto :goto_3

    .line 8
    :cond_1e
    sget-object v3, Landroidx/work/impl/utils/futures/a;->t:Landroidx/work/impl/utils/futures/a$b;

    invoke-virtual {v3, p0, p1, v2}, Landroidx/work/impl/utils/futures/a$b;->c(Landroidx/work/impl/utils/futures/a;Landroidx/work/impl/utils/futures/a$i;Landroidx/work/impl/utils/futures/a$i;)Z

    move-result p1

    if-nez p1, :cond_27

    goto :goto_3

    :cond_27
    :goto_27
    move-object p1, v2

    goto :goto_b

    :cond_29
    return-void
.end method

.method private t(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    if-ne p1, p0, :cond_5

    const-string p1, "this future"

    return-object p1

    .line 1
    :cond_5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected b()V
    .registers 1

    return-void
.end method

.method public final cancel(Z)Z
    .registers 9

    .line 1
    iget-object v0, p0, Landroidx/work/impl/utils/futures/a;->o:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_8

    const/4 v3, 0x1

    goto :goto_9

    :cond_8
    const/4 v3, 0x0

    .line 2
    :goto_9
    instance-of v4, v0, Landroidx/work/impl/utils/futures/a$g;

    or-int/2addr v3, v4

    if-eqz v3, :cond_61

    .line 3
    sget-boolean v3, Landroidx/work/impl/utils/futures/a;->r:Z

    if-eqz v3, :cond_1f

    .line 4
    new-instance v3, Landroidx/work/impl/utils/futures/a$c;

    new-instance v4, Ljava/util/concurrent/CancellationException;

    const-string v5, "Future.cancel() was called."

    invoke-direct {v4, v5}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, p1, v4}, Landroidx/work/impl/utils/futures/a$c;-><init>(ZLjava/lang/Throwable;)V

    goto :goto_26

    :cond_1f
    if-eqz p1, :cond_24

    .line 5
    sget-object v3, Landroidx/work/impl/utils/futures/a$c;->c:Landroidx/work/impl/utils/futures/a$c;

    goto :goto_26

    .line 6
    :cond_24
    sget-object v3, Landroidx/work/impl/utils/futures/a$c;->d:Landroidx/work/impl/utils/futures/a$c;

    :goto_26
    const/4 v5, 0x0

    move-object v4, p0

    .line 7
    :cond_28
    :goto_28
    sget-object v6, Landroidx/work/impl/utils/futures/a;->t:Landroidx/work/impl/utils/futures/a$b;

    invoke-virtual {v6, v4, v0, v3}, Landroidx/work/impl/utils/futures/a$b;->b(Landroidx/work/impl/utils/futures/a;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_59

    if-eqz p1, :cond_35

    .line 8
    invoke-virtual {v4}, Landroidx/work/impl/utils/futures/a;->m()V

    .line 9
    :cond_35
    invoke-static {v4}, Landroidx/work/impl/utils/futures/a;->h(Landroidx/work/impl/utils/futures/a;)V

    .line 10
    instance-of v4, v0, Landroidx/work/impl/utils/futures/a$g;

    if-eqz v4, :cond_62

    .line 11
    check-cast v0, Landroidx/work/impl/utils/futures/a$g;

    iget-object v0, v0, Landroidx/work/impl/utils/futures/a$g;->p:La5/a;

    .line 12
    instance-of v4, v0, Landroidx/work/impl/utils/futures/a;

    if-eqz v4, :cond_55

    .line 13
    move-object v4, v0

    check-cast v4, Landroidx/work/impl/utils/futures/a;

    .line 14
    iget-object v0, v4, Landroidx/work/impl/utils/futures/a;->o:Ljava/lang/Object;

    if-nez v0, :cond_4d

    const/4 v5, 0x1

    goto :goto_4e

    :cond_4d
    const/4 v5, 0x0

    .line 15
    :goto_4e
    instance-of v6, v0, Landroidx/work/impl/utils/futures/a$g;

    or-int/2addr v5, v6

    if-eqz v5, :cond_62

    const/4 v5, 0x1

    goto :goto_28

    .line 16
    :cond_55
    invoke-interface {v0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_62

    .line 17
    :cond_59
    iget-object v0, v4, Landroidx/work/impl/utils/futures/a;->o:Ljava/lang/Object;

    .line 18
    instance-of v6, v0, Landroidx/work/impl/utils/futures/a$g;

    if-nez v6, :cond_28

    move v1, v5

    goto :goto_62

    :cond_61
    const/4 v1, 0x0

    :cond_62
    :goto_62
    return v1
.end method

.method public final e(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 6

    .line 1
    invoke-static {p1}, Landroidx/work/impl/utils/futures/a;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Landroidx/work/impl/utils/futures/a;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Landroidx/work/impl/utils/futures/a;->p:Landroidx/work/impl/utils/futures/a$e;

    .line 4
    sget-object v1, Landroidx/work/impl/utils/futures/a$e;->d:Landroidx/work/impl/utils/futures/a$e;

    if-eq v0, v1, :cond_22

    .line 5
    new-instance v1, Landroidx/work/impl/utils/futures/a$e;

    invoke-direct {v1, p1, p2}, Landroidx/work/impl/utils/futures/a$e;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 6
    :cond_11
    iput-object v0, v1, Landroidx/work/impl/utils/futures/a$e;->c:Landroidx/work/impl/utils/futures/a$e;

    .line 7
    sget-object v2, Landroidx/work/impl/utils/futures/a;->t:Landroidx/work/impl/utils/futures/a$b;

    invoke-virtual {v2, p0, v0, v1}, Landroidx/work/impl/utils/futures/a$b;->a(Landroidx/work/impl/utils/futures/a;Landroidx/work/impl/utils/futures/a$e;Landroidx/work/impl/utils/futures/a$e;)Z

    move-result v0

    if-eqz v0, :cond_1c

    return-void

    .line 8
    :cond_1c
    iget-object v0, p0, Landroidx/work/impl/utils/futures/a;->p:Landroidx/work/impl/utils/futures/a$e;

    .line 9
    sget-object v2, Landroidx/work/impl/utils/futures/a$e;->d:Landroidx/work/impl/utils/futures/a$e;

    if-ne v0, v2, :cond_11

    .line 10
    :cond_22
    invoke-static {p1, p2}, Landroidx/work/impl/utils/futures/a;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final get()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 45
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_61

    .line 46
    iget-object v0, p0, Landroidx/work/impl/utils/futures/a;->o:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    const/4 v3, 0x1

    goto :goto_f

    :cond_e
    const/4 v3, 0x0

    .line 47
    :goto_f
    instance-of v4, v0, Landroidx/work/impl/utils/futures/a$g;

    xor-int/2addr v4, v2

    and-int/2addr v3, v4

    if-eqz v3, :cond_1a

    .line 48
    invoke-direct {p0, v0}, Landroidx/work/impl/utils/futures/a;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 49
    :cond_1a
    iget-object v0, p0, Landroidx/work/impl/utils/futures/a;->q:Landroidx/work/impl/utils/futures/a$i;

    .line 50
    sget-object v3, Landroidx/work/impl/utils/futures/a$i;->c:Landroidx/work/impl/utils/futures/a$i;

    if-eq v0, v3, :cond_5a

    .line 51
    new-instance v3, Landroidx/work/impl/utils/futures/a$i;

    invoke-direct {v3}, Landroidx/work/impl/utils/futures/a$i;-><init>()V

    .line 52
    :cond_25
    invoke-virtual {v3, v0}, Landroidx/work/impl/utils/futures/a$i;->a(Landroidx/work/impl/utils/futures/a$i;)V

    .line 53
    sget-object v4, Landroidx/work/impl/utils/futures/a;->t:Landroidx/work/impl/utils/futures/a$b;

    invoke-virtual {v4, p0, v0, v3}, Landroidx/work/impl/utils/futures/a$b;->c(Landroidx/work/impl/utils/futures/a;Landroidx/work/impl/utils/futures/a$i;Landroidx/work/impl/utils/futures/a$i;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 54
    :cond_30
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 55
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 56
    iget-object v0, p0, Landroidx/work/impl/utils/futures/a;->o:Ljava/lang/Object;

    if-eqz v0, :cond_3f

    const/4 v4, 0x1

    goto :goto_40

    :cond_3f
    const/4 v4, 0x0

    .line 57
    :goto_40
    instance-of v5, v0, Landroidx/work/impl/utils/futures/a$g;

    xor-int/2addr v5, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_30

    .line 58
    invoke-direct {p0, v0}, Landroidx/work/impl/utils/futures/a;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 59
    :cond_4b
    invoke-direct {p0, v3}, Landroidx/work/impl/utils/futures/a;->p(Landroidx/work/impl/utils/futures/a$i;)V

    .line 60
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 61
    :cond_54
    iget-object v0, p0, Landroidx/work/impl/utils/futures/a;->q:Landroidx/work/impl/utils/futures/a$i;

    .line 62
    sget-object v4, Landroidx/work/impl/utils/futures/a$i;->c:Landroidx/work/impl/utils/futures/a$i;

    if-ne v0, v4, :cond_25

    .line 63
    :cond_5a
    iget-object v0, p0, Landroidx/work/impl/utils/futures/a;->o:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroidx/work/impl/utils/futures/a;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 64
    :cond_61
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    goto :goto_68

    :goto_67
    throw v0

    :goto_68
    goto :goto_67
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    .line 1
    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-nez v6, :cond_1ae

    .line 3
    iget-object v6, v0, Landroidx/work/impl/utils/futures/a;->o:Ljava/lang/Object;

    const/4 v8, 0x1

    if-eqz v6, :cond_17

    const/4 v9, 0x1

    goto :goto_18

    :cond_17
    const/4 v9, 0x0

    .line 4
    :goto_18
    instance-of v10, v6, Landroidx/work/impl/utils/futures/a$g;

    xor-int/2addr v10, v8

    and-int/2addr v9, v10

    if-eqz v9, :cond_23

    .line 5
    invoke-direct {v0, v6}, Landroidx/work/impl/utils/futures/a;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_23
    const-wide/16 v9, 0x0

    cmp-long v6, v4, v9

    if-lez v6, :cond_2f

    .line 6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    add-long/2addr v11, v4

    goto :goto_30

    :cond_2f
    move-wide v11, v9

    :goto_30
    const-wide/16 v13, 0x3e8

    cmp-long v6, v4, v13

    if-ltz v6, :cond_8b

    .line 7
    iget-object v6, v0, Landroidx/work/impl/utils/futures/a;->q:Landroidx/work/impl/utils/futures/a$i;

    .line 8
    sget-object v15, Landroidx/work/impl/utils/futures/a$i;->c:Landroidx/work/impl/utils/futures/a$i;

    if-eq v6, v15, :cond_84

    .line 9
    new-instance v15, Landroidx/work/impl/utils/futures/a$i;

    invoke-direct {v15}, Landroidx/work/impl/utils/futures/a$i;-><init>()V

    .line 10
    :cond_41
    invoke-virtual {v15, v6}, Landroidx/work/impl/utils/futures/a$i;->a(Landroidx/work/impl/utils/futures/a$i;)V

    .line 11
    sget-object v7, Landroidx/work/impl/utils/futures/a;->t:Landroidx/work/impl/utils/futures/a$b;

    invoke-virtual {v7, v0, v6, v15}, Landroidx/work/impl/utils/futures/a$b;->c(Landroidx/work/impl/utils/futures/a;Landroidx/work/impl/utils/futures/a$i;Landroidx/work/impl/utils/futures/a$i;)Z

    move-result v6

    if-eqz v6, :cond_7e

    .line 12
    :cond_4c
    invoke-static {v0, v4, v5}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 13
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_75

    .line 14
    iget-object v4, v0, Landroidx/work/impl/utils/futures/a;->o:Ljava/lang/Object;

    if-eqz v4, :cond_5b

    const/4 v5, 0x1

    goto :goto_5c

    :cond_5b
    const/4 v5, 0x0

    .line 15
    :goto_5c
    instance-of v6, v4, Landroidx/work/impl/utils/futures/a$g;

    xor-int/2addr v6, v8

    and-int/2addr v5, v6

    if-eqz v5, :cond_67

    .line 16
    invoke-direct {v0, v4}, Landroidx/work/impl/utils/futures/a;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 17
    :cond_67
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v11, v4

    cmp-long v6, v4, v13

    if-gez v6, :cond_4c

    .line 18
    invoke-direct {v0, v15}, Landroidx/work/impl/utils/futures/a;->p(Landroidx/work/impl/utils/futures/a$i;)V

    goto :goto_8b

    .line 19
    :cond_75
    invoke-direct {v0, v15}, Landroidx/work/impl/utils/futures/a;->p(Landroidx/work/impl/utils/futures/a$i;)V

    .line 20
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 21
    :cond_7e
    iget-object v6, v0, Landroidx/work/impl/utils/futures/a;->q:Landroidx/work/impl/utils/futures/a$i;

    .line 22
    sget-object v7, Landroidx/work/impl/utils/futures/a$i;->c:Landroidx/work/impl/utils/futures/a$i;

    if-ne v6, v7, :cond_41

    .line 23
    :cond_84
    iget-object v1, v0, Landroidx/work/impl/utils/futures/a;->o:Ljava/lang/Object;

    invoke-direct {v0, v1}, Landroidx/work/impl/utils/futures/a;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_8b
    :goto_8b
    cmp-long v6, v4, v9

    if-lez v6, :cond_b4

    .line 24
    iget-object v4, v0, Landroidx/work/impl/utils/futures/a;->o:Ljava/lang/Object;

    if-eqz v4, :cond_95

    const/4 v5, 0x1

    goto :goto_96

    :cond_95
    const/4 v5, 0x0

    .line 25
    :goto_96
    instance-of v6, v4, Landroidx/work/impl/utils/futures/a$g;

    xor-int/2addr v6, v8

    and-int/2addr v5, v6

    if-eqz v5, :cond_a1

    .line 26
    invoke-direct {v0, v4}, Landroidx/work/impl/utils/futures/a;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 27
    :cond_a1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_ae

    .line 28
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v11, v4

    goto :goto_8b

    .line 29
    :cond_ae
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 30
    :cond_b4
    invoke-virtual/range {p0 .. p0}, Landroidx/work/impl/utils/futures/a;->toString()Ljava/lang/String;

    move-result-object v6

    .line 31
    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 32
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Waited "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-long v11, v4, v13

    cmp-long v15, v11, v9

    if-gez v15, :cond_177

    .line 33
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (plus "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    neg-long v4, v4

    .line 34
    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v11}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v11

    .line 35
    invoke-virtual {v3, v11, v12}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v17

    sub-long v4, v4, v17

    cmp-long v3, v11, v9

    if-eqz v3, :cond_113

    cmp-long v3, v4, v13

    if-lez v3, :cond_110

    goto :goto_113

    :cond_110
    const/16 v16, 0x0

    goto :goto_115

    :cond_113
    :goto_113
    const/16 v16, 0x1

    :goto_115
    cmp-long v3, v11, v9

    if-lez v3, :cond_150

    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v16, :cond_141

    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 38
    :cond_141
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_150
    if-eqz v16, :cond_166

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " nanoseconds "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 40
    :cond_166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "delay)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 41
    :cond_177
    invoke-virtual/range {p0 .. p0}, Landroidx/work/impl/utils/futures/a;->isDone()Z

    move-result v1

    if-eqz v1, :cond_194

    .line 42
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but future completed as timeout expired"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 43
    :cond_194
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 44
    :cond_1ae
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    goto :goto_1b5

    :goto_1b4
    throw v1

    :goto_1b5
    goto :goto_1b4
.end method

.method public final isCancelled()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/work/impl/utils/futures/a;->o:Ljava/lang/Object;

    .line 2
    instance-of v0, v0, Landroidx/work/impl/utils/futures/a$c;

    return v0
.end method

.method public final isDone()Z
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/work/impl/utils/futures/a;->o:Ljava/lang/Object;

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    const/4 v2, 0x1

    goto :goto_8

    :cond_7
    const/4 v2, 0x0

    .line 2
    :goto_8
    instance-of v0, v0, Landroidx/work/impl/utils/futures/a$g;

    xor-int/2addr v0, v1

    and-int/2addr v0, v2

    return v0
.end method

.method protected m()V
    .registers 1

    return-void
.end method

.method protected n()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/work/impl/utils/futures/a;->o:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Landroidx/work/impl/utils/futures/a$g;

    if-eqz v1, :cond_25

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFuture=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v0, Landroidx/work/impl/utils/futures/a$g;

    iget-object v0, v0, Landroidx/work/impl/utils/futures/a$g;->p:La5/a;

    invoke-direct {p0, v0}, Landroidx/work/impl/utils/futures/a;->t(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_25
    instance-of v0, p0, Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_49

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remaining delay=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p0

    check-cast v1, Ljava/util/concurrent/ScheduledFuture;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 6
    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_49
    const/4 v0, 0x0

    return-object v0
.end method

.method protected q(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    if-nez p1, :cond_4

    .line 1
    sget-object p1, Landroidx/work/impl/utils/futures/a;->u:Ljava/lang/Object;

    .line 2
    :cond_4
    sget-object v0, Landroidx/work/impl/utils/futures/a;->t:Landroidx/work/impl/utils/futures/a$b;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Landroidx/work/impl/utils/futures/a$b;->b(Landroidx/work/impl/utils/futures/a;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 3
    invoke-static {p0}, Landroidx/work/impl/utils/futures/a;->h(Landroidx/work/impl/utils/futures/a;)V

    const/4 p1, 0x1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method protected r(Ljava/lang/Throwable;)Z
    .registers 4

    .line 1
    new-instance v0, Landroidx/work/impl/utils/futures/a$d;

    invoke-static {p1}, Landroidx/work/impl/utils/futures/a;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Landroidx/work/impl/utils/futures/a$d;-><init>(Ljava/lang/Throwable;)V

    .line 2
    sget-object p1, Landroidx/work/impl/utils/futures/a;->t:Landroidx/work/impl/utils/futures/a$b;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0}, Landroidx/work/impl/utils/futures/a$b;->b(Landroidx/work/impl/utils/futures/a;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 3
    invoke-static {p0}, Landroidx/work/impl/utils/futures/a;->h(Landroidx/work/impl/utils/futures/a;)V

    const/4 p1, 0x1

    return p1

    :cond_19
    const/4 p1, 0x0

    return p1
.end method

.method protected s(La5/a;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La5/a<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroidx/work/impl/utils/futures/a;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Landroidx/work/impl/utils/futures/a;->o:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_45

    .line 3
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_21

    .line 4
    invoke-static {p1}, Landroidx/work/impl/utils/futures/a;->k(La5/a;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    sget-object v0, Landroidx/work/impl/utils/futures/a;->t:Landroidx/work/impl/utils/futures/a$b;

    invoke-virtual {v0, p0, v3, p1}, Landroidx/work/impl/utils/futures/a$b;->b(Landroidx/work/impl/utils/futures/a;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 6
    invoke-static {p0}, Landroidx/work/impl/utils/futures/a;->h(Landroidx/work/impl/utils/futures/a;)V

    return v2

    :cond_20
    return v1

    .line 7
    :cond_21
    new-instance v0, Landroidx/work/impl/utils/futures/a$g;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/utils/futures/a$g;-><init>(Landroidx/work/impl/utils/futures/a;La5/a;)V

    .line 8
    sget-object v4, Landroidx/work/impl/utils/futures/a;->t:Landroidx/work/impl/utils/futures/a$b;

    invoke-virtual {v4, p0, v3, v0}, Landroidx/work/impl/utils/futures/a$b;->b(Landroidx/work/impl/utils/futures/a;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 9
    :try_start_2e
    sget-object v1, Landroidx/work/impl/utils/futures/b;->o:Landroidx/work/impl/utils/futures/b;

    invoke-interface {p1, v0, v1}, La5/a;->e(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_34

    goto :goto_42

    :catchall_34
    move-exception p1

    .line 10
    :try_start_35
    new-instance v1, Landroidx/work/impl/utils/futures/a$d;

    invoke-direct {v1, p1}, Landroidx/work/impl/utils/futures/a$d;-><init>(Ljava/lang/Throwable;)V
    :try_end_3a
    .catchall {:try_start_35 .. :try_end_3a} :catchall_3b

    goto :goto_3d

    .line 11
    :catchall_3b
    sget-object v1, Landroidx/work/impl/utils/futures/a$d;->b:Landroidx/work/impl/utils/futures/a$d;

    .line 12
    :goto_3d
    sget-object p1, Landroidx/work/impl/utils/futures/a;->t:Landroidx/work/impl/utils/futures/a$b;

    invoke-virtual {p1, p0, v0, v1}, Landroidx/work/impl/utils/futures/a$b;->b(Landroidx/work/impl/utils/futures/a;Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_42
    return v2

    .line 13
    :cond_43
    iget-object v0, p0, Landroidx/work/impl/utils/futures/a;->o:Ljava/lang/Object;

    .line 14
    :cond_45
    instance-of v2, v0, Landroidx/work/impl/utils/futures/a$c;

    if-eqz v2, :cond_50

    .line 15
    check-cast v0, Landroidx/work/impl/utils/futures/a$c;

    iget-boolean v0, v0, Landroidx/work/impl/utils/futures/a$c;->a:Z

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_50
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Landroidx/work/impl/utils/futures/a;->isCancelled()Z

    move-result v1

    const-string v2, "]"

    if-eqz v1, :cond_1f

    const-string v1, "CANCELLED"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_67

    .line 4
    :cond_1f
    invoke-virtual {p0}, Landroidx/work/impl/utils/futures/a;->isDone()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 5
    invoke-direct {p0, v0}, Landroidx/work/impl/utils/futures/a;->a(Ljava/lang/StringBuilder;)V

    goto :goto_67

    .line 6
    :cond_29
    :try_start_29
    invoke-virtual {p0}, Landroidx/work/impl/utils/futures/a;->n()Ljava/lang/String;

    move-result-object v1
    :try_end_2d
    .catch Ljava/lang/RuntimeException; {:try_start_29 .. :try_end_2d} :catch_2e

    goto :goto_44

    :catch_2e
    move-exception v1

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception thrown from implementation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_44
    if-eqz v1, :cond_58

    .line 8
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_58

    const-string v3, "PENDING, info=["

    .line 9
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_67

    .line 10
    :cond_58
    invoke-virtual {p0}, Landroidx/work/impl/utils/futures/a;->isDone()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 11
    invoke-direct {p0, v0}, Landroidx/work/impl/utils/futures/a;->a(Ljava/lang/StringBuilder;)V

    goto :goto_67

    :cond_62
    const-string v1, "PENDING"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    :goto_67
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class androidx.work.impl.utils.futures.a.C0075a (androidx.work.impl.utils.futures.a$a)
.class synthetic Landroidx/work/impl/utils/futures/a$a;
.super Ljava/lang/Object;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/utils/futures/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class androidx.work.impl.utils.futures.a.b (androidx.work.impl.utils.futures.a$b)
.class abstract Landroidx/work/impl/utils/futures/a$b;
.super Ljava/lang/Object;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/utils/futures/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/work/impl/utils/futures/a$a;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Landroidx/work/impl/utils/futures/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a(Landroidx/work/impl/utils/futures/a;Landroidx/work/impl/utils/futures/a$e;Landroidx/work/impl/utils/futures/a$e;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/utils/futures/a<",
            "*>;",
            "Landroidx/work/impl/utils/futures/a$e;",
            "Landroidx/work/impl/utils/futures/a$e;",
            ")Z"
        }
    .end annotation
.end method

.method abstract b(Landroidx/work/impl/utils/futures/a;Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/utils/futures/a<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation
.end method

.method abstract c(Landroidx/work/impl/utils/futures/a;Landroidx/work/impl/utils/futures/a$i;Landroidx/work/impl/utils/futures/a$i;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/utils/futures/a<",
            "*>;",
            "Landroidx/work/impl/utils/futures/a$i;",
            "Landroidx/work/impl/utils/futures/a$i;",
            ")Z"
        }
    .end annotation
.end method

.method abstract d(Landroidx/work/impl/utils/futures/a$i;Landroidx/work/impl/utils/futures/a$i;)V
.end method

.method abstract e(Landroidx/work/impl/utils/futures/a$i;Ljava/lang/Thread;)V
.end method

###### Class androidx.work.impl.utils.futures.a.c (androidx.work.impl.utils.futures.a$c)
.class final Landroidx/work/impl/utils/futures/a$c;
.super Ljava/lang/Object;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/utils/futures/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# static fields
.field static final c:Landroidx/work/impl/utils/futures/a$c;

.field static final d:Landroidx/work/impl/utils/futures/a$c;


# instance fields
.field final a:Z

.field final b:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    sget-boolean v0, Landroidx/work/impl/utils/futures/a;->r:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 2
    sput-object v1, Landroidx/work/impl/utils/futures/a$c;->d:Landroidx/work/impl/utils/futures/a$c;

    .line 3
    sput-object v1, Landroidx/work/impl/utils/futures/a$c;->c:Landroidx/work/impl/utils/futures/a$c;

    goto :goto_1a

    .line 4
    :cond_a
    new-instance v0, Landroidx/work/impl/utils/futures/a$c;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroidx/work/impl/utils/futures/a$c;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Landroidx/work/impl/utils/futures/a$c;->d:Landroidx/work/impl/utils/futures/a$c;

    .line 5
    new-instance v0, Landroidx/work/impl/utils/futures/a$c;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroidx/work/impl/utils/futures/a$c;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Landroidx/work/impl/utils/futures/a$c;->c:Landroidx/work/impl/utils/futures/a$c;

    :goto_1a
    return-void
.end method

.method constructor <init>(ZLjava/lang/Throwable;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Landroidx/work/impl/utils/futures/a$c;->a:Z

    .line 3
    iput-object p2, p0, Landroidx/work/impl/utils/futures/a$c;->b:Ljava/lang/Throwable;

    return-void
.end method

###### Class androidx.work.impl.utils.futures.a.d (androidx.work.impl.utils.futures.a$d)
.class final Landroidx/work/impl/utils/futures/a$d;
.super Ljava/lang/Object;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/utils/futures/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# static fields
.field static final b:Landroidx/work/impl/utils/futures/a$d;


# instance fields
.field final a:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Landroidx/work/impl/utils/futures/a$d;

    new-instance v1, Landroidx/work/impl/utils/futures/a$d$a;

    const-string v2, "Failure occurred while trying to finish a future."

    invoke-direct {v1, v2}, Landroidx/work/impl/utils/futures/a$d$a;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroidx/work/impl/utils/futures/a$d;-><init>(Ljava/lang/Throwable;)V

    sput-object v0, Landroidx/work/impl/utils/futures/a$d;->b:Landroidx/work/impl/utils/futures/a$d;

    return-void
.end method

.method constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Landroidx/work/impl/utils/futures/a;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    iput-object p1, p0, Landroidx/work/impl/utils/futures/a$d;->a:Ljava/lang/Throwable;

    return-void
.end method

###### Class androidx.work.impl.utils.futures.a.d.C0076a (androidx.work.impl.utils.futures.a$d$a)
.class Landroidx/work/impl/utils/futures/a$d$a;
.super Ljava/lang/Throwable;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/utils/futures/a$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized fillInStackTrace()Ljava/lang/Throwable;
    .registers 1

    monitor-enter p0

    .line 1
    monitor-exit p0

    return-object p0
.end method

###### Class androidx.work.impl.utils.futures.a.e (androidx.work.impl.utils.futures.a$e)
.class final Landroidx/work/impl/utils/futures/a$e;
.super Ljava/lang/Object;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/utils/futures/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# static fields
.field static final d:Landroidx/work/impl/utils/futures/a$e;


# instance fields
.field final a:Ljava/lang/Runnable;

.field final b:Ljava/util/concurrent/Executor;

.field c:Landroidx/work/impl/utils/futures/a$e;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Landroidx/work/impl/utils/futures/a$e;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroidx/work/impl/utils/futures/a$e;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    sput-object v0, Landroidx/work/impl/utils/futures/a$e;->d:Landroidx/work/impl/utils/futures/a$e;

    return-void
.end method

.method constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/work/impl/utils/futures/a$e;->a:Ljava/lang/Runnable;

    .line 3
    iput-object p2, p0, Landroidx/work/impl/utils/futures/a$e;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

###### Class androidx.work.impl.utils.futures.a.f (androidx.work.impl.utils.futures.a$f)
.class final Landroidx/work/impl/utils/futures/a$f;
.super Landroidx/work/impl/utils/futures/a$b;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/utils/futures/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "f"
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Landroidx/work/impl/utils/futures/a$i;",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Landroidx/work/impl/utils/futures/a$i;",
            "Landroidx/work/impl/utils/futures/a$i;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Landroidx/work/impl/utils/futures/a;",
            "Landroidx/work/impl/utils/futures/a$i;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Landroidx/work/impl/utils/futures/a;",
            "Landroidx/work/impl/utils/futures/a$e;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Landroidx/work/impl/utils/futures/a;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Landroidx/work/impl/utils/futures/a$i;",
            "Ljava/lang/Thread;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Landroidx/work/impl/utils/futures/a$i;",
            "Landroidx/work/impl/utils/futures/a$i;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Landroidx/work/impl/utils/futures/a;",
            "Landroidx/work/impl/utils/futures/a$i;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Landroidx/work/impl/utils/futures/a;",
            "Landroidx/work/impl/utils/futures/a$e;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Landroidx/work/impl/utils/futures/a;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroidx/work/impl/utils/futures/a$b;-><init>(Landroidx/work/impl/utils/futures/a$a;)V

    .line 2
    iput-object p1, p0, Landroidx/work/impl/utils/futures/a$f;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 3
    iput-object p2, p0, Landroidx/work/impl/utils/futures/a$f;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 4
    iput-object p3, p0, Landroidx/work/impl/utils/futures/a$f;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 5
    iput-object p4, p0, Landroidx/work/impl/utils/futures/a$f;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 6
    iput-object p5, p0, Landroidx/work/impl/utils/futures/a$f;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method


# virtual methods
.method a(Landroidx/work/impl/utils/futures/a;Landroidx/work/impl/utils/futures/a$e;Landroidx/work/impl/utils/futures/a$e;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/utils/futures/a<",
            "*>;",
            "Landroidx/work/impl/utils/futures/a$e;",
            "Landroidx/work/impl/utils/futures/a$e;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/impl/utils/futures/a$f;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v0, p1, p2, p3}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method b(Landroidx/work/impl/utils/futures/a;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/utils/futures/a<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/impl/utils/futures/a$f;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v0, p1, p2, p3}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method c(Landroidx/work/impl/utils/futures/a;Landroidx/work/impl/utils/futures/a$i;Landroidx/work/impl/utils/futures/a$i;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/utils/futures/a<",
            "*>;",
            "Landroidx/work/impl/utils/futures/a$i;",
            "Landroidx/work/impl/utils/futures/a$i;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/impl/utils/futures/a$f;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v0, p1, p2, p3}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method d(Landroidx/work/impl/utils/futures/a$i;Landroidx/work/impl/utils/futures/a$i;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/work/impl/utils/futures/a$f;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method e(Landroidx/work/impl/utils/futures/a$i;Ljava/lang/Thread;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/work/impl/utils/futures/a$f;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

###### Class androidx.work.impl.utils.futures.a.g (androidx.work.impl.utils.futures.a$g)
.class final Landroidx/work/impl/utils/futures/a$g;
.super Ljava/lang/Object;
.source "AbstractFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/utils/futures/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final o:Landroidx/work/impl/utils/futures/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/work/impl/utils/futures/a<",
            "TV;>;"
        }
    .end annotation
.end field

.field final p:La5/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La5/a<",
            "+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/work/impl/utils/futures/a;La5/a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/utils/futures/a<",
            "TV;>;",
            "La5/a<",
            "+TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/work/impl/utils/futures/a$g;->o:Landroidx/work/impl/utils/futures/a;

    .line 3
    iput-object p2, p0, Landroidx/work/impl/utils/futures/a$g;->p:La5/a;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/work/impl/utils/futures/a$g;->o:Landroidx/work/impl/utils/futures/a;

    iget-object v0, v0, Landroidx/work/impl/utils/futures/a;->o:Ljava/lang/Object;

    if-eq v0, p0, :cond_7

    return-void

    .line 2
    :cond_7
    iget-object v0, p0, Landroidx/work/impl/utils/futures/a$g;->p:La5/a;

    invoke-static {v0}, Landroidx/work/impl/utils/futures/a;->k(La5/a;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    sget-object v1, Landroidx/work/impl/utils/futures/a;->t:Landroidx/work/impl/utils/futures/a$b;

    iget-object v2, p0, Landroidx/work/impl/utils/futures/a$g;->o:Landroidx/work/impl/utils/futures/a;

    invoke-virtual {v1, v2, p0, v0}, Landroidx/work/impl/utils/futures/a$b;->b(Landroidx/work/impl/utils/futures/a;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 4
    iget-object v0, p0, Landroidx/work/impl/utils/futures/a$g;->o:Landroidx/work/impl/utils/futures/a;

    invoke-static {v0}, Landroidx/work/impl/utils/futures/a;->h(Landroidx/work/impl/utils/futures/a;)V

    :cond_1c
    return-void
.end method

###### Class androidx.work.impl.utils.futures.a.h (androidx.work.impl.utils.futures.a$h)
.class final Landroidx/work/impl/utils/futures/a$h;
.super Landroidx/work/impl/utils/futures/a$b;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/utils/futures/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "h"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroidx/work/impl/utils/futures/a$b;-><init>(Landroidx/work/impl/utils/futures/a$a;)V

    return-void
.end method


# virtual methods
.method a(Landroidx/work/impl/utils/futures/a;Landroidx/work/impl/utils/futures/a$e;Landroidx/work/impl/utils/futures/a$e;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/utils/futures/a<",
            "*>;",
            "Landroidx/work/impl/utils/futures/a$e;",
            "Landroidx/work/impl/utils/futures/a$e;",
            ")Z"
        }
    .end annotation

    .line 1
    monitor-enter p1

    .line 2
    :try_start_1
    iget-object v0, p1, Landroidx/work/impl/utils/futures/a;->p:Landroidx/work/impl/utils/futures/a$e;

    if-ne v0, p2, :cond_a

    .line 3
    iput-object p3, p1, Landroidx/work/impl/utils/futures/a;->p:Landroidx/work/impl/utils/futures/a$e;

    const/4 p2, 0x1

    .line 4
    monitor-exit p1

    return p2

    :cond_a
    const/4 p2, 0x0

    .line 5
    monitor-exit p1

    return p2

    :catchall_d
    move-exception p2

    .line 6
    monitor-exit p1
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw p2
.end method

.method b(Landroidx/work/impl/utils/futures/a;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/utils/futures/a<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1
    monitor-enter p1

    .line 2
    :try_start_1
    iget-object v0, p1, Landroidx/work/impl/utils/futures/a;->o:Ljava/lang/Object;

    if-ne v0, p2, :cond_a

    .line 3
    iput-object p3, p1, Landroidx/work/impl/utils/futures/a;->o:Ljava/lang/Object;

    const/4 p2, 0x1

    .line 4
    monitor-exit p1

    return p2

    :cond_a
    const/4 p2, 0x0

    .line 5
    monitor-exit p1

    return p2

    :catchall_d
    move-exception p2

    .line 6
    monitor-exit p1
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw p2
.end method

.method c(Landroidx/work/impl/utils/futures/a;Landroidx/work/impl/utils/futures/a$i;Landroidx/work/impl/utils/futures/a$i;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/utils/futures/a<",
            "*>;",
            "Landroidx/work/impl/utils/futures/a$i;",
            "Landroidx/work/impl/utils/futures/a$i;",
            ")Z"
        }
    .end annotation

    .line 1
    monitor-enter p1

    .line 2
    :try_start_1
    iget-object v0, p1, Landroidx/work/impl/utils/futures/a;->q:Landroidx/work/impl/utils/futures/a$i;

    if-ne v0, p2, :cond_a

    .line 3
    iput-object p3, p1, Landroidx/work/impl/utils/futures/a;->q:Landroidx/work/impl/utils/futures/a$i;

    const/4 p2, 0x1

    .line 4
    monitor-exit p1

    return p2

    :cond_a
    const/4 p2, 0x0

    .line 5
    monitor-exit p1

    return p2

    :catchall_d
    move-exception p2

    .line 6
    monitor-exit p1
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw p2
.end method

.method d(Landroidx/work/impl/utils/futures/a$i;Landroidx/work/impl/utils/futures/a$i;)V
    .registers 3

    .line 1
    iput-object p2, p1, Landroidx/work/impl/utils/futures/a$i;->b:Landroidx/work/impl/utils/futures/a$i;

    return-void
.end method

.method e(Landroidx/work/impl/utils/futures/a$i;Ljava/lang/Thread;)V
    .registers 3

    .line 1
    iput-object p2, p1, Landroidx/work/impl/utils/futures/a$i;->a:Ljava/lang/Thread;

    return-void
.end method

###### Class androidx.work.impl.utils.futures.a.i (androidx.work.impl.utils.futures.a$i)
.class final Landroidx/work/impl/utils/futures/a$i;
.super Ljava/lang/Object;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/utils/futures/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "i"
.end annotation


# static fields
.field static final c:Landroidx/work/impl/utils/futures/a$i;


# instance fields
.field volatile a:Ljava/lang/Thread;

.field volatile b:Landroidx/work/impl/utils/futures/a$i;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Landroidx/work/impl/utils/futures/a$i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/work/impl/utils/futures/a$i;-><init>(Z)V

    sput-object v0, Landroidx/work/impl/utils/futures/a$i;->c:Landroidx/work/impl/utils/futures/a$i;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Landroidx/work/impl/utils/futures/a;->t:Landroidx/work/impl/utils/futures/a$b;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroidx/work/impl/utils/futures/a$b;->e(Landroidx/work/impl/utils/futures/a$i;Ljava/lang/Thread;)V

    return-void
.end method

.method constructor <init>(Z)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Landroidx/work/impl/utils/futures/a$i;)V
    .registers 3

    .line 1
    sget-object v0, Landroidx/work/impl/utils/futures/a;->t:Landroidx/work/impl/utils/futures/a$b;

    invoke-virtual {v0, p0, p1}, Landroidx/work/impl/utils/futures/a$b;->d(Landroidx/work/impl/utils/futures/a$i;Landroidx/work/impl/utils/futures/a$i;)V

    return-void
.end method

.method b()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/work/impl/utils/futures/a$i;->a:Ljava/lang/Thread;

    if-eqz v0, :cond_a

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Landroidx/work/impl/utils/futures/a$i;->a:Ljava/lang/Thread;

    .line 3
    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_a
    return-void
.end method
