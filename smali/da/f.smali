###### Class da.f (da.f)
.class final Lda/f;
.super Lda/a;
.source "Builders.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lda/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final q:Ljava/lang/Thread;

.field private final r:Lda/h1;


# direct methods
.method public constructor <init>(Lk9/g;Ljava/lang/Thread;Lda/h1;)V
    .registers 5

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0, v0}, Lda/a;-><init>(Lk9/g;ZZ)V

    .line 2
    iput-object p2, p0, Lda/f;->q:Ljava/lang/Thread;

    .line 3
    iput-object p3, p0, Lda/f;->r:Lda/h1;

    return-void
.end method


# virtual methods
.method protected J(Ljava/lang/Object;)V
    .registers 3

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object v0, p0, Lda/f;->q:Ljava/lang/Thread;

    invoke-static {p1, v0}, Lt9/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    .line 2
    iget-object p1, p0, Lda/f;->q:Ljava/lang/Thread;

    invoke-static {}, Lda/c;->a()Lda/b;

    invoke-static {p1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_14
    return-void
.end method

.method public final N0()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lda/c;->a()Lda/b;

    .line 2
    :try_start_3
    iget-object v0, p0, Lda/f;->r:Lda/h1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_d

    invoke-static {v0, v2, v1, v3}, Lda/h1;->K(Lda/h1;ZILjava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_5f

    .line 3
    :cond_d
    :goto_d
    :try_start_d
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 4
    iget-object v0, p0, Lda/f;->r:Lda/h1;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lda/h1;->N()J

    move-result-wide v4

    goto :goto_21

    :cond_1c
    const-wide v4, 0x7fffffffffffffffL

    .line 5
    :goto_21
    invoke-virtual {p0}, Lda/e2;->i0()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 6
    invoke-static {}, Lda/c;->a()Lda/b;

    invoke-static {p0, v4, v5}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V
    :try_end_2d
    .catchall {:try_start_d .. :try_end_2d} :catchall_56

    goto :goto_d

    .line 7
    :cond_2e
    :try_start_2e
    iget-object v0, p0, Lda/f;->r:Lda/h1;

    if-eqz v0, :cond_35

    invoke-static {v0, v2, v1, v3}, Lda/h1;->z(Lda/h1;ZILjava/lang/Object;)V
    :try_end_35
    .catchall {:try_start_2e .. :try_end_35} :catchall_5f

    .line 8
    :cond_35
    invoke-static {}, Lda/c;->a()Lda/b;

    .line 9
    invoke-virtual {p0}, Lda/e2;->e0()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lda/f2;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    instance-of v1, v0, Lda/a0;

    if-eqz v1, :cond_47

    move-object v3, v0

    check-cast v3, Lda/a0;

    :cond_47
    if-nez v3, :cond_4a

    return-object v0

    :cond_4a
    iget-object v0, v3, Lda/a0;->a:Ljava/lang/Throwable;

    throw v0

    .line 11
    :cond_4d
    :try_start_4d
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    invoke-virtual {p0, v0}, Lda/e2;->M(Ljava/lang/Throwable;)Z

    throw v0
    :try_end_56
    .catchall {:try_start_4d .. :try_end_56} :catchall_56

    :catchall_56
    move-exception v0

    .line 12
    :try_start_57
    iget-object v4, p0, Lda/f;->r:Lda/h1;

    if-eqz v4, :cond_5e

    invoke-static {v4, v2, v1, v3}, Lda/h1;->z(Lda/h1;ZILjava/lang/Object;)V

    :cond_5e
    throw v0
    :try_end_5f
    .catchall {:try_start_57 .. :try_end_5f} :catchall_5f

    :catchall_5f
    move-exception v0

    .line 13
    invoke-static {}, Lda/c;->a()Lda/b;

    goto :goto_65

    :goto_64
    throw v0

    :goto_65
    goto :goto_64
.end method

.method protected j0()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
