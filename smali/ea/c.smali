###### Class ea.c (ea.c)
.class public final Lea/c;
.super Lea/d;
.source "HandlerDispatcher.kt"


# instance fields
.field private volatile _immediate:Lea/c;

.field private final q:Landroid/os/Handler;

.field private final r:Ljava/lang/String;

.field private final s:Z

.field private final t:Lea/c;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, p1, p2, v0}, Lea/c;-><init>(Landroid/os/Handler;Ljava/lang/String;Z)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Handler;Ljava/lang/String;ILt9/g;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 9
    :cond_5
    invoke-direct {p0, p1, p2}, Lea/c;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Handler;Ljava/lang/String;Z)V
    .registers 5

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lea/d;-><init>(Lt9/g;)V

    .line 2
    iput-object p1, p0, Lea/c;->q:Landroid/os/Handler;

    .line 3
    iput-object p2, p0, Lea/c;->r:Ljava/lang/String;

    .line 4
    iput-boolean p3, p0, Lea/c;->s:Z

    if-eqz p3, :cond_d

    move-object v0, p0

    .line 5
    :cond_d
    iput-object v0, p0, Lea/c;->_immediate:Lea/c;

    .line 6
    iget-object p3, p0, Lea/c;->_immediate:Lea/c;

    if-nez p3, :cond_1b

    .line 7
    new-instance p3, Lea/c;

    const/4 v0, 0x1

    invoke-direct {p3, p1, p2, v0}, Lea/c;-><init>(Landroid/os/Handler;Ljava/lang/String;Z)V

    iput-object p3, p0, Lea/c;->_immediate:Lea/c;

    .line 8
    :cond_1b
    iput-object p3, p0, Lea/c;->t:Lea/c;

    return-void
.end method

.method private final G(Lk9/g;Ljava/lang/Runnable;)V
    .registers 6

    .line 1
    new-instance v0, Ljava/util/concurrent/CancellationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The task was rejected, the handler underlying the dispatcher \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\' was closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lda/b2;->c(Lk9/g;Ljava/util/concurrent/CancellationException;)V

    .line 2
    invoke-static {}, Lda/d1;->b()Lda/i0;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lda/i0;->m(Lk9/g;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public H()Lea/c;
    .registers 2

    .line 1
    iget-object v0, p0, Lea/c;->t:Lea/c;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    instance-of v0, p1, Lea/c;

    if-eqz v0, :cond_e

    check-cast p1, Lea/c;

    iget-object p1, p1, Lea/c;->q:Landroid/os/Handler;

    iget-object v0, p0, Lea/c;->q:Landroid/os/Handler;

    if-ne p1, v0, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lea/c;->q:Landroid/os/Handler;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public m(Lk9/g;Ljava/lang/Runnable;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lea/c;->q:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2
    invoke-direct {p0, p1, p2}, Lea/c;->G(Lk9/g;Ljava/lang/Runnable;)V

    :cond_b
    return-void
.end method

.method public o(Lk9/g;)Z
    .registers 3

    .line 1
    iget-boolean p1, p0, Lea/c;->s:Z

    if-eqz p1, :cond_17

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v0, p0, Lea/c;->q:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {p1, v0}, Lt9/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    goto :goto_17

    :cond_15
    const/4 p1, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p1, 0x1

    :goto_18
    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lda/h2;->z()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_25

    .line 2
    iget-object v0, p0, Lea/c;->r:Ljava/lang/String;

    if-nez v0, :cond_10

    iget-object v0, p0, Lea/c;->q:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    :cond_10
    iget-boolean v1, p0, Lea/c;->s:Z

    if-eqz v1, :cond_25

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".immediate"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_25
    return-object v0
.end method

.method public bridge synthetic x()Lda/h2;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lea/c;->H()Lea/c;

    move-result-object v0

    return-object v0
.end method
