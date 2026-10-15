###### Class da.j1 (da.j1)
.class public abstract Lda/j1;
.super Lda/h1;
.source "EventLoop.kt"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lda/h1;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract Q()Ljava/lang/Thread;
.end method

.method protected R(JLda/i1$a;)V
    .registers 5

    .line 1
    sget-object v0, Lda/u0;->v:Lda/u0;

    invoke-virtual {v0, p1, p2, p3}, Lda/i1;->g0(JLda/i1$a;)V

    return-void
.end method

.method protected final S()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lda/j1;->Q()Ljava/lang/Thread;

    move-result-object v0

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v1, v0, :cond_10

    .line 3
    invoke-static {}, Lda/c;->a()Lda/b;

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_10
    return-void
.end method
