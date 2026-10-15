###### Class pa.i (pa.i)
.class public final Lpa/i;
.super Ljava/lang/Object;
.source "Http2Stream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpa/i$c;,
        Lpa/i$a;,
        Lpa/i$b;
    }
.end annotation


# instance fields
.field a:J

.field b:J

.field final c:I

.field final d:Lpa/g;

.field private final e:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lja/s;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lpa/c$a;

.field private g:Z

.field private final h:Lpa/i$b;

.field final i:Lpa/i$a;

.field final j:Lpa/i$c;

.field final k:Lpa/i$c;

.field l:Lpa/b;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(ILpa/g;ZZLja/s;)V
    .registers 9
    .param p5    # Lja/s;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lpa/i;->a:J

    .line 3
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lpa/i;->e:Ljava/util/Deque;

    .line 4
    new-instance v1, Lpa/i$c;

    invoke-direct {v1, p0}, Lpa/i$c;-><init>(Lpa/i;)V

    iput-object v1, p0, Lpa/i;->j:Lpa/i$c;

    .line 5
    new-instance v1, Lpa/i$c;

    invoke-direct {v1, p0}, Lpa/i$c;-><init>(Lpa/i;)V

    iput-object v1, p0, Lpa/i;->k:Lpa/i$c;

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lpa/i;->l:Lpa/b;

    const-string v1, "connection == null"

    .line 7
    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    iput p1, p0, Lpa/i;->c:I

    .line 9
    iput-object p2, p0, Lpa/i;->d:Lpa/g;

    .line 10
    iget-object p1, p2, Lpa/g;->I:Lpa/m;

    .line 11
    invoke-virtual {p1}, Lpa/m;->d()I

    move-result p1

    int-to-long v1, p1

    iput-wide v1, p0, Lpa/i;->b:J

    .line 12
    new-instance p1, Lpa/i$b;

    iget-object p2, p2, Lpa/g;->H:Lpa/m;

    invoke-virtual {p2}, Lpa/m;->d()I

    move-result p2

    int-to-long v1, p2

    invoke-direct {p1, p0, v1, v2}, Lpa/i$b;-><init>(Lpa/i;J)V

    iput-object p1, p0, Lpa/i;->h:Lpa/i$b;

    .line 13
    new-instance p2, Lpa/i$a;

    invoke-direct {p2, p0}, Lpa/i$a;-><init>(Lpa/i;)V

    iput-object p2, p0, Lpa/i;->i:Lpa/i$a;

    .line 14
    iput-boolean p4, p1, Lpa/i$b;->s:Z

    .line 15
    iput-boolean p3, p2, Lpa/i$a;->q:Z

    if-eqz p5, :cond_4f

    .line 16
    invoke-interface {v0, p5}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_4f
    invoke-virtual {p0}, Lpa/i;->l()Z

    move-result p1

    if-eqz p1, :cond_60

    if-nez p5, :cond_58

    goto :goto_60

    .line 18
    :cond_58
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "locally-initiated streams shouldn\'t have headers yet"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_60
    :goto_60
    invoke-virtual {p0}, Lpa/i;->l()Z

    move-result p1

    if-nez p1, :cond_71

    if-eqz p5, :cond_69

    goto :goto_71

    .line 20
    :cond_69
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "remotely-initiated streams should have headers"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_71
    :goto_71
    return-void
.end method

.method static synthetic a(Lpa/i;)Ljava/util/Deque;
    .registers 1

    .line 1
    iget-object p0, p0, Lpa/i;->e:Ljava/util/Deque;

    return-object p0
.end method

.method static synthetic b(Lpa/i;)Lpa/c$a;
    .registers 1

    .line 1
    iget-object p0, p0, Lpa/i;->f:Lpa/c$a;

    return-object p0
.end method

.method private g(Lpa/b;)Z
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lpa/i;->l:Lpa/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 3
    monitor-exit p0

    return v1

    .line 4
    :cond_8
    iget-object v0, p0, Lpa/i;->h:Lpa/i$b;

    iget-boolean v0, v0, Lpa/i$b;->s:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lpa/i;->i:Lpa/i$a;

    iget-boolean v0, v0, Lpa/i$a;->q:Z

    if-eqz v0, :cond_16

    .line 5
    monitor-exit p0

    return v1

    .line 6
    :cond_16
    iput-object p1, p0, Lpa/i;->l:Lpa/b;

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 8
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_25

    .line 9
    iget-object p1, p0, Lpa/i;->d:Lpa/g;

    iget v0, p0, Lpa/i;->c:I

    invoke-virtual {p1, v0}, Lpa/g;->z(I)Lpa/i;

    const/4 p1, 0x1

    return p1

    :catchall_25
    move-exception p1

    .line 10
    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw p1
.end method


# virtual methods
.method c(J)V
    .registers 6

    .line 1
    iget-wide v0, p0, Lpa/i;->b:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lpa/i;->b:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_e

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_e
    return-void
.end method

.method d()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lpa/i;->h:Lpa/i$b;

    iget-boolean v1, v0, Lpa/i$b;->s:Z

    if-nez v1, :cond_17

    iget-boolean v0, v0, Lpa/i$b;->r:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lpa/i;->i:Lpa/i$a;

    iget-boolean v1, v0, Lpa/i$a;->q:Z

    if-nez v1, :cond_15

    iget-boolean v0, v0, Lpa/i$a;->p:Z

    if-eqz v0, :cond_17

    :cond_15
    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 3
    :goto_18
    invoke-virtual {p0}, Lpa/i;->m()Z

    move-result v1

    .line 4
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_2f

    if-eqz v0, :cond_25

    .line 5
    sget-object v0, Lpa/b;->u:Lpa/b;

    invoke-virtual {p0, v0}, Lpa/i;->f(Lpa/b;)V

    goto :goto_2e

    :cond_25
    if-nez v1, :cond_2e

    .line 6
    iget-object v0, p0, Lpa/i;->d:Lpa/g;

    iget v1, p0, Lpa/i;->c:I

    invoke-virtual {v0, v1}, Lpa/g;->z(I)Lpa/i;

    :cond_2e
    :goto_2e
    return-void

    :catchall_2f
    move-exception v0

    .line 7
    :try_start_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method e()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lpa/i;->i:Lpa/i$a;

    iget-boolean v1, v0, Lpa/i$a;->p:Z

    if-nez v1, :cond_1f

    .line 2
    iget-boolean v0, v0, Lpa/i$a;->q:Z

    if-nez v0, :cond_17

    .line 3
    iget-object v0, p0, Lpa/i;->l:Lpa/b;

    if-nez v0, :cond_f

    return-void

    .line 4
    :cond_f
    new-instance v0, Lpa/n;

    iget-object v1, p0, Lpa/i;->l:Lpa/b;

    invoke-direct {v0, v1}, Lpa/n;-><init>(Lpa/b;)V

    throw v0

    .line 5
    :cond_17
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f(Lpa/b;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lpa/i;->g(Lpa/b;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 2
    :cond_7
    iget-object v0, p0, Lpa/i;->d:Lpa/g;

    iget v1, p0, Lpa/i;->c:I

    invoke-virtual {v0, v1, p1}, Lpa/g;->J(ILpa/b;)V

    return-void
.end method

.method public h(Lpa/b;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lpa/i;->g(Lpa/b;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 2
    :cond_7
    iget-object v0, p0, Lpa/i;->d:Lpa/g;

    iget v1, p0, Lpa/i;->c:I

    invoke-virtual {v0, v1, p1}, Lpa/g;->K(ILpa/b;)V

    return-void
.end method

.method public i()I
    .registers 2

    .line 1
    iget v0, p0, Lpa/i;->c:I

    return v0
.end method

.method public j()Lokio/t;
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-boolean v0, p0, Lpa/i;->g:Z

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lpa/i;->l()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_14

    .line 3
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "reply before requesting the sink"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_14
    :goto_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_18

    .line 5
    iget-object v0, p0, Lpa/i;->i:Lpa/i$a;

    return-object v0

    :catchall_18
    move-exception v0

    .line 6
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public k()Lokio/u;
    .registers 2

    .line 1
    iget-object v0, p0, Lpa/i;->h:Lpa/i$b;

    return-object v0
.end method

.method public l()Z
    .registers 5

    .line 1
    iget v0, p0, Lpa/i;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 2
    :goto_a
    iget-object v3, p0, Lpa/i;->d:Lpa/g;

    iget-boolean v3, v3, Lpa/g;->o:Z

    if-ne v3, v0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method public declared-synchronized m()Z
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lpa/i;->l:Lpa/b;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_25

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 2
    monitor-exit p0

    return v1

    .line 3
    :cond_8
    :try_start_8
    iget-object v0, p0, Lpa/i;->h:Lpa/i$b;

    iget-boolean v2, v0, Lpa/i$b;->s:Z

    if-nez v2, :cond_12

    iget-boolean v0, v0, Lpa/i$b;->r:Z

    if-eqz v0, :cond_22

    :cond_12
    iget-object v0, p0, Lpa/i;->i:Lpa/i$a;

    iget-boolean v2, v0, Lpa/i$a;->q:Z

    if-nez v2, :cond_1c

    iget-boolean v0, v0, Lpa/i$a;->p:Z

    if-eqz v0, :cond_22

    :cond_1c
    iget-boolean v0, p0, Lpa/i;->g:Z
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_25

    if-eqz v0, :cond_22

    .line 4
    monitor-exit p0

    return v1

    :cond_22
    const/4 v0, 0x1

    .line 5
    monitor-exit p0

    return v0

    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public n()Lokio/v;
    .registers 2

    .line 1
    iget-object v0, p0, Lpa/i;->j:Lpa/i$c;

    return-object v0
.end method

.method o(Lokio/e;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lpa/i;->h:Lpa/i$b;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lpa/i$b;->b(Lokio/e;J)V

    return-void
.end method

.method p()V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lpa/i;->h:Lpa/i$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lpa/i$b;->s:Z

    .line 3
    invoke-virtual {p0}, Lpa/i;->m()Z

    move-result v0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 5
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_18

    if-nez v0, :cond_17

    .line 6
    iget-object v0, p0, Lpa/i;->d:Lpa/g;

    iget v1, p0, Lpa/i;->c:I

    invoke-virtual {v0, v1}, Lpa/g;->z(I)Lpa/i;

    :cond_17
    return-void

    :catchall_18
    move-exception v0

    .line 7
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method q(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpa/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    const/4 v0, 0x1

    .line 2
    :try_start_2
    iput-boolean v0, p0, Lpa/i;->g:Z

    .line 3
    iget-object v0, p0, Lpa/i;->e:Ljava/util/Deque;

    invoke-static {p1}, Lka/c;->H(Ljava/util/List;)Lja/s;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0}, Lpa/i;->m()Z

    move-result p1

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 6
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_2 .. :try_end_15} :catchall_1f

    if-nez p1, :cond_1e

    .line 7
    iget-object p1, p0, Lpa/i;->d:Lpa/g;

    iget v0, p0, Lpa/i;->c:I

    invoke-virtual {p1, v0}, Lpa/g;->z(I)Lpa/i;

    :cond_1e
    return-void

    :catchall_1f
    move-exception p1

    .line 8
    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p1
.end method

.method declared-synchronized r(Lpa/b;)V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lpa/i;->l:Lpa/b;

    if-nez v0, :cond_a

    .line 2
    iput-object p1, p0, Lpa/i;->l:Lpa/b;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 4
    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized s()Lja/s;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lpa/i;->j:Lpa/i$c;

    invoke-virtual {v0}, Lokio/a;->k()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_3c

    .line 2
    :goto_6
    :try_start_6
    iget-object v0, p0, Lpa/i;->e:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lpa/i;->l:Lpa/b;

    if-nez v0, :cond_16

    .line 3
    invoke-virtual {p0}, Lpa/i;->t()V
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_35

    goto :goto_6

    .line 4
    :cond_16
    :try_start_16
    iget-object v0, p0, Lpa/i;->j:Lpa/i$c;

    invoke-virtual {v0}, Lpa/i$c;->u()V

    .line 5
    iget-object v0, p0, Lpa/i;->e:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 6
    iget-object v0, p0, Lpa/i;->e:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lja/s;
    :try_end_2b
    .catchall {:try_start_16 .. :try_end_2b} :catchall_3c

    monitor-exit p0

    return-object v0

    .line 7
    :cond_2d
    :try_start_2d
    new-instance v0, Lpa/n;

    iget-object v1, p0, Lpa/i;->l:Lpa/b;

    invoke-direct {v0, v1}, Lpa/n;-><init>(Lpa/b;)V

    throw v0

    :catchall_35
    move-exception v0

    .line 8
    iget-object v1, p0, Lpa/i;->j:Lpa/i$c;

    invoke-virtual {v1}, Lpa/i$c;->u()V

    throw v0
    :try_end_3c
    .catchall {:try_start_2d .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception v0

    monitor-exit p0

    goto :goto_40

    :goto_3f
    throw v0

    :goto_40
    goto :goto_3f
.end method

.method t()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    .line 2
    :catch_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 3
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method

.method public u()Lokio/v;
    .registers 2

    .line 1
    iget-object v0, p0, Lpa/i;->k:Lpa/i$c;

    return-object v0
.end method

###### Class pa.i.a (pa.i$a)
.class final Lpa/i$a;
.super Ljava/lang/Object;
.source "Http2Stream.java"

# interfaces
.implements Lokio/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpa/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field private final o:Lokio/c;

.field p:Z

.field q:Z

.field final synthetic r:Lpa/i;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Lpa/i;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lpa/i$a;->r:Lpa/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lokio/c;

    invoke-direct {p1}, Lokio/c;-><init>()V

    iput-object p1, p0, Lpa/i$a;->o:Lokio/c;

    return-void
.end method

.method private b(Z)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lpa/i$a;->r:Lpa/i;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lpa/i$a;->r:Lpa/i;

    iget-object v1, v1, Lpa/i;->k:Lpa/i$c;

    invoke-virtual {v1}, Lokio/a;->k()V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_7f

    .line 3
    :goto_a
    :try_start_a
    iget-object v1, p0, Lpa/i$a;->r:Lpa/i;

    iget-wide v2, v1, Lpa/i;->b:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_24

    iget-boolean v2, p0, Lpa/i$a;->q:Z

    if-nez v2, :cond_24

    iget-boolean v2, p0, Lpa/i$a;->p:Z

    if-nez v2, :cond_24

    iget-object v2, v1, Lpa/i;->l:Lpa/b;

    if-nez v2, :cond_24

    .line 4
    invoke-virtual {v1}, Lpa/i;->t()V
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_76

    goto :goto_a

    .line 5
    :cond_24
    :try_start_24
    iget-object v1, v1, Lpa/i;->k:Lpa/i$c;

    invoke-virtual {v1}, Lpa/i$c;->u()V

    .line 6
    iget-object v1, p0, Lpa/i$a;->r:Lpa/i;

    invoke-virtual {v1}, Lpa/i;->e()V

    .line 7
    iget-object v1, p0, Lpa/i$a;->r:Lpa/i;

    iget-wide v1, v1, Lpa/i;->b:J

    iget-object v3, p0, Lpa/i$a;->o:Lokio/c;

    invoke-virtual {v3}, Lokio/c;->s()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    .line 8
    iget-object v1, p0, Lpa/i$a;->r:Lpa/i;

    iget-wide v2, v1, Lpa/i;->b:J

    sub-long/2addr v2, v9

    iput-wide v2, v1, Lpa/i;->b:J

    .line 9
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_24 .. :try_end_44} :catchall_7f

    .line 10
    iget-object v0, v1, Lpa/i;->k:Lpa/i$c;

    invoke-virtual {v0}, Lokio/a;->k()V

    .line 11
    :try_start_49
    iget-object v0, p0, Lpa/i$a;->r:Lpa/i;

    iget-object v5, v0, Lpa/i;->d:Lpa/g;

    iget v6, v0, Lpa/i;->c:I

    if-eqz p1, :cond_5e

    iget-object p1, p0, Lpa/i$a;->o:Lokio/c;

    invoke-virtual {p1}, Lokio/c;->s()J

    move-result-wide v0

    cmp-long p1, v9, v0

    if-nez p1, :cond_5e

    const/4 p1, 0x1

    const/4 v7, 0x1

    goto :goto_60

    :cond_5e
    const/4 p1, 0x0

    const/4 v7, 0x0

    :goto_60
    iget-object v8, p0, Lpa/i$a;->o:Lokio/c;

    invoke-virtual/range {v5 .. v10}, Lpa/g;->H(IZLokio/c;J)V
    :try_end_65
    .catchall {:try_start_49 .. :try_end_65} :catchall_6d

    .line 12
    iget-object p1, p0, Lpa/i$a;->r:Lpa/i;

    iget-object p1, p1, Lpa/i;->k:Lpa/i$c;

    invoke-virtual {p1}, Lpa/i$c;->u()V

    return-void

    :catchall_6d
    move-exception p1

    iget-object v0, p0, Lpa/i$a;->r:Lpa/i;

    iget-object v0, v0, Lpa/i;->k:Lpa/i$c;

    invoke-virtual {v0}, Lpa/i$c;->u()V

    throw p1

    :catchall_76
    move-exception p1

    .line 13
    :try_start_77
    iget-object v1, p0, Lpa/i$a;->r:Lpa/i;

    iget-object v1, v1, Lpa/i;->k:Lpa/i$c;

    invoke-virtual {v1}, Lpa/i$c;->u()V

    throw p1

    :catchall_7f
    move-exception p1

    .line 14
    monitor-exit v0
    :try_end_81
    .catchall {:try_start_77 .. :try_end_81} :catchall_7f

    goto :goto_83

    :goto_82
    throw p1

    :goto_83
    goto :goto_82
.end method


# virtual methods
.method public a2(Lokio/c;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lpa/i$a;->o:Lokio/c;

    invoke-virtual {v0, p1, p2, p3}, Lokio/c;->a2(Lokio/c;J)V

    .line 2
    :goto_5
    iget-object p1, p0, Lpa/i$a;->o:Lokio/c;

    invoke-virtual {p1}, Lokio/c;->s()J

    move-result-wide p1

    const-wide/16 v0, 0x4000

    cmp-long p3, p1, v0

    if-ltz p3, :cond_16

    const/4 p1, 0x0

    .line 3
    invoke-direct {p0, p1}, Lpa/i$a;->b(Z)V

    goto :goto_5

    :cond_16
    return-void
.end method

.method public close()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lpa/i$a;->r:Lpa/i;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-boolean v1, p0, Lpa/i$a;->p:Z

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    .line 3
    :cond_9
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_50

    .line 4
    iget-object v0, p0, Lpa/i$a;->r:Lpa/i;

    iget-object v0, v0, Lpa/i;->i:Lpa/i$a;

    iget-boolean v0, v0, Lpa/i$a;->q:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3a

    .line 5
    iget-object v0, p0, Lpa/i$a;->o:Lokio/c;

    invoke-virtual {v0}, Lokio/c;->s()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2d

    .line 6
    :goto_1f
    iget-object v0, p0, Lpa/i$a;->o:Lokio/c;

    invoke-virtual {v0}, Lokio/c;->s()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-lez v0, :cond_3a

    .line 7
    invoke-direct {p0, v1}, Lpa/i$a;->b(Z)V

    goto :goto_1f

    .line 8
    :cond_2d
    iget-object v0, p0, Lpa/i$a;->r:Lpa/i;

    iget-object v2, v0, Lpa/i;->d:Lpa/g;

    iget v3, v0, Lpa/i;->c:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lpa/g;->H(IZLokio/c;J)V

    .line 9
    :cond_3a
    iget-object v2, p0, Lpa/i$a;->r:Lpa/i;

    monitor-enter v2

    .line 10
    :try_start_3d
    iput-boolean v1, p0, Lpa/i$a;->p:Z

    .line 11
    monitor-exit v2
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_4d

    .line 12
    iget-object v0, p0, Lpa/i$a;->r:Lpa/i;

    iget-object v0, v0, Lpa/i;->d:Lpa/g;

    invoke-virtual {v0}, Lpa/g;->flush()V

    .line 13
    iget-object v0, p0, Lpa/i$a;->r:Lpa/i;

    invoke-virtual {v0}, Lpa/i;->d()V

    return-void

    :catchall_4d
    move-exception v0

    .line 14
    :try_start_4e
    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw v0

    :catchall_50
    move-exception v1

    .line 15
    :try_start_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    goto :goto_54

    :goto_53
    throw v1

    :goto_54
    goto :goto_53
.end method

.method public flush()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lpa/i$a;->r:Lpa/i;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lpa/i$a;->r:Lpa/i;

    invoke-virtual {v1}, Lpa/i;->e()V

    .line 3
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_22

    .line 4
    :goto_9
    iget-object v0, p0, Lpa/i$a;->o:Lokio/c;

    invoke-virtual {v0}, Lokio/c;->s()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_21

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Lpa/i$a;->b(Z)V

    .line 6
    iget-object v0, p0, Lpa/i$a;->r:Lpa/i;

    iget-object v0, v0, Lpa/i;->d:Lpa/g;

    invoke-virtual {v0}, Lpa/g;->flush()V

    goto :goto_9

    :cond_21
    return-void

    :catchall_22
    move-exception v1

    .line 7
    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    goto :goto_26

    :goto_25
    throw v1

    :goto_26
    goto :goto_25
.end method

.method public timeout()Lokio/v;
    .registers 2

    .line 1
    iget-object v0, p0, Lpa/i$a;->r:Lpa/i;

    iget-object v0, v0, Lpa/i;->k:Lpa/i$c;

    return-object v0
.end method

###### Class pa.i.b (pa.i$b)
.class final Lpa/i$b;
.super Ljava/lang/Object;
.source "Http2Stream.java"

# interfaces
.implements Lokio/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpa/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field private final o:Lokio/c;

.field private final p:Lokio/c;

.field private final q:J

.field r:Z

.field s:Z

.field final synthetic t:Lpa/i;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Lpa/i;J)V
    .registers 4

    .line 1
    iput-object p1, p0, Lpa/i$b;->t:Lpa/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lokio/c;

    invoke-direct {p1}, Lokio/c;-><init>()V

    iput-object p1, p0, Lpa/i$b;->o:Lokio/c;

    .line 3
    new-instance p1, Lokio/c;

    invoke-direct {p1}, Lokio/c;-><init>()V

    iput-object p1, p0, Lpa/i$b;->p:Lokio/c;

    .line 4
    iput-wide p2, p0, Lpa/i$b;->q:J

    return-void
.end method

.method private c(J)V
    .registers 4

    .line 1
    iget-object v0, p0, Lpa/i$b;->t:Lpa/i;

    iget-object v0, v0, Lpa/i;->d:Lpa/g;

    invoke-virtual {v0, p1, p2}, Lpa/g;->G(J)V

    return-void
.end method


# virtual methods
.method b(Lokio/e;J)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_81

    .line 1
    iget-object v2, p0, Lpa/i$b;->t:Lpa/i;

    monitor-enter v2

    .line 2
    :try_start_9
    iget-boolean v3, p0, Lpa/i$b;->s:Z

    .line 3
    iget-object v4, p0, Lpa/i$b;->p:Lokio/c;

    invoke-virtual {v4}, Lokio/c;->s()J

    move-result-wide v4

    add-long/2addr v4, p2

    iget-wide v6, p0, Lpa/i$b;->q:J

    const/4 v8, 0x1

    const/4 v9, 0x0

    cmp-long v10, v4, v6

    if-lez v10, :cond_1c

    const/4 v4, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v4, 0x0

    .line 4
    :goto_1d
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_7e

    if-eqz v4, :cond_2b

    .line 5
    invoke-interface {p1, p2, p3}, Lokio/e;->skip(J)V

    .line 6
    iget-object p1, p0, Lpa/i$b;->t:Lpa/i;

    sget-object p2, Lpa/b;->s:Lpa/b;

    invoke-virtual {p1, p2}, Lpa/i;->h(Lpa/b;)V

    return-void

    :cond_2b
    if-eqz v3, :cond_31

    .line 7
    invoke-interface {p1, p2, p3}, Lokio/e;->skip(J)V

    return-void

    .line 8
    :cond_31
    iget-object v2, p0, Lpa/i$b;->o:Lokio/c;

    invoke-interface {p1, v2, p2, p3}, Lokio/u;->read(Lokio/c;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_78

    sub-long/2addr p2, v2

    .line 9
    iget-object v2, p0, Lpa/i$b;->t:Lpa/i;

    monitor-enter v2

    .line 10
    :try_start_41
    iget-boolean v3, p0, Lpa/i$b;->r:Z

    if-eqz v3, :cond_51

    .line 11
    iget-object v3, p0, Lpa/i$b;->o:Lokio/c;

    invoke-virtual {v3}, Lokio/c;->s()J

    move-result-wide v3

    .line 12
    iget-object v5, p0, Lpa/i$b;->o:Lokio/c;

    invoke-virtual {v5}, Lokio/c;->b()V

    goto :goto_6c

    .line 13
    :cond_51
    iget-object v3, p0, Lpa/i$b;->p:Lokio/c;

    invoke-virtual {v3}, Lokio/c;->s()J

    move-result-wide v3

    cmp-long v5, v3, v0

    if-nez v5, :cond_5c

    goto :goto_5d

    :cond_5c
    const/4 v8, 0x0

    .line 14
    :goto_5d
    iget-object v3, p0, Lpa/i$b;->p:Lokio/c;

    iget-object v4, p0, Lpa/i$b;->o:Lokio/c;

    invoke-virtual {v3, v4}, Lokio/c;->h2(Lokio/u;)J

    if-eqz v8, :cond_6b

    .line 15
    iget-object v3, p0, Lpa/i$b;->t:Lpa/i;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    :cond_6b
    move-wide v3, v0

    .line 16
    :goto_6c
    monitor-exit v2
    :try_end_6d
    .catchall {:try_start_41 .. :try_end_6d} :catchall_75

    cmp-long v2, v3, v0

    if-lez v2, :cond_0

    .line 17
    invoke-direct {p0, v3, v4}, Lpa/i$b;->c(J)V

    goto :goto_0

    :catchall_75
    move-exception p1

    .line 18
    :try_start_76
    monitor-exit v2
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    throw p1

    .line 19
    :cond_78
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :catchall_7e
    move-exception p1

    .line 20
    :try_start_7f
    monitor-exit v2
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    throw p1

    :cond_81
    return-void
.end method

.method public close()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lpa/i$b;->t:Lpa/i;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_4
    iput-boolean v1, p0, Lpa/i$b;->r:Z

    .line 3
    iget-object v1, p0, Lpa/i$b;->p:Lokio/c;

    invoke-virtual {v1}, Lokio/c;->s()J

    move-result-wide v1

    .line 4
    iget-object v3, p0, Lpa/i$b;->p:Lokio/c;

    invoke-virtual {v3}, Lokio/c;->b()V

    .line 5
    iget-object v3, p0, Lpa/i$b;->t:Lpa/i;

    invoke-static {v3}, Lpa/i;->a(Lpa/i;)Ljava/util/Deque;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Deque;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_44

    iget-object v3, p0, Lpa/i$b;->t:Lpa/i;

    invoke-static {v3}, Lpa/i;->b(Lpa/i;)Lpa/c$a;

    move-result-object v3

    if-eqz v3, :cond_44

    .line 6
    new-instance v4, Ljava/util/ArrayList;

    iget-object v3, p0, Lpa/i$b;->t:Lpa/i;

    invoke-static {v3}, Lpa/i;->a(Lpa/i;)Ljava/util/Deque;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7
    iget-object v3, p0, Lpa/i$b;->t:Lpa/i;

    invoke-static {v3}, Lpa/i;->a(Lpa/i;)Ljava/util/Deque;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Deque;->clear()V

    .line 8
    iget-object v3, p0, Lpa/i$b;->t:Lpa/i;

    invoke-static {v3}, Lpa/i;->b(Lpa/i;)Lpa/c$a;

    move-result-object v3

    move-object v7, v4

    move-object v4, v3

    move-object v3, v7

    goto :goto_45

    :cond_44
    move-object v3, v4

    .line 9
    :goto_45
    iget-object v5, p0, Lpa/i$b;->t:Lpa/i;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 10
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_4 .. :try_end_4b} :catchall_70

    const-wide/16 v5, 0x0

    cmp-long v0, v1, v5

    if-lez v0, :cond_54

    .line 11
    invoke-direct {p0, v1, v2}, Lpa/i$b;->c(J)V

    .line 12
    :cond_54
    iget-object v0, p0, Lpa/i$b;->t:Lpa/i;

    invoke-virtual {v0}, Lpa/i;->d()V

    if-eqz v4, :cond_6f

    .line 13
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lja/s;

    .line 14
    invoke-interface {v4, v1}, Lpa/c$a;->a(Lja/s;)V

    goto :goto_5f

    :cond_6f
    return-void

    :catchall_70
    move-exception v1

    .line 15
    :try_start_71
    monitor-exit v0
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    goto :goto_74

    :goto_73
    throw v1

    :goto_74
    goto :goto_73
.end method

.method public read(Lokio/c;J)J
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_e0

    .line 1
    :goto_a
    iget-object v6, v1, Lpa/i$b;->t:Lpa/i;

    monitor-enter v6

    .line 2
    :try_start_d
    iget-object v0, v1, Lpa/i$b;->t:Lpa/i;

    iget-object v0, v0, Lpa/i;->j:Lpa/i$c;

    invoke-virtual {v0}, Lokio/a;->k()V
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_dd

    .line 3
    :try_start_14
    iget-object v0, v1, Lpa/i$b;->t:Lpa/i;

    iget-object v7, v0, Lpa/i;->l:Lpa/b;

    if-eqz v7, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v7, 0x0

    .line 4
    :goto_1c
    iget-boolean v9, v1, Lpa/i$b;->r:Z

    if-nez v9, :cond_cc

    .line 5
    invoke-static {v0}, Lpa/i;->a(Lpa/i;)Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_49

    iget-object v0, v1, Lpa/i$b;->t:Lpa/i;

    invoke-static {v0}, Lpa/i;->b(Lpa/i;)Lpa/c$a;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 6
    iget-object v0, v1, Lpa/i$b;->t:Lpa/i;

    invoke-static {v0}, Lpa/i;->a(Lpa/i;)Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lja/s;

    .line 7
    iget-object v0, v1, Lpa/i$b;->t:Lpa/i;

    invoke-static {v0}, Lpa/i;->b(Lpa/i;)Lpa/c$a;

    move-result-object v0

    move-object/from16 v13, p1

    move-object v10, v0

    goto :goto_a6

    .line 8
    :cond_49
    iget-object v0, v1, Lpa/i$b;->p:Lokio/c;

    invoke-virtual {v0}, Lokio/c;->s()J

    move-result-wide v11

    cmp-long v0, v11, v4

    if-lez v0, :cond_8d

    .line 9
    iget-object v0, v1, Lpa/i$b;->p:Lokio/c;

    invoke-virtual {v0}, Lokio/c;->s()J

    move-result-wide v11

    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    move-object/from16 v13, p1

    invoke-virtual {v0, v13, v11, v12}, Lokio/c;->read(Lokio/c;J)J

    move-result-wide v11

    .line 10
    iget-object v0, v1, Lpa/i$b;->t:Lpa/i;

    iget-wide v14, v0, Lpa/i;->a:J

    add-long/2addr v14, v11

    iput-wide v14, v0, Lpa/i;->a:J

    if-nez v7, :cond_8a

    .line 11
    iget-object v0, v0, Lpa/i;->d:Lpa/g;

    iget-object v0, v0, Lpa/g;->H:Lpa/m;

    .line 12
    invoke-virtual {v0}, Lpa/m;->d()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-long v8, v0

    cmp-long v0, v14, v8

    if-ltz v0, :cond_8a

    .line 13
    iget-object v0, v1, Lpa/i$b;->t:Lpa/i;

    iget-object v8, v0, Lpa/i;->d:Lpa/g;

    iget v9, v0, Lpa/i;->c:I

    iget-wide v14, v0, Lpa/i;->a:J

    invoke-virtual {v8, v9, v14, v15}, Lpa/g;->L(IJ)V

    .line 14
    iget-object v0, v1, Lpa/i$b;->t:Lpa/i;

    iput-wide v4, v0, Lpa/i;->a:J

    :cond_8a
    const/4 v8, 0x0

    const/4 v10, 0x0

    goto :goto_a8

    :cond_8d
    move-object/from16 v13, p1

    .line 15
    iget-boolean v0, v1, Lpa/i$b;->s:Z

    if-nez v0, :cond_a4

    if-nez v7, :cond_a4

    .line 16
    iget-object v0, v1, Lpa/i$b;->t:Lpa/i;

    invoke-virtual {v0}, Lpa/i;->t()V
    :try_end_9a
    .catchall {:try_start_14 .. :try_end_9a} :catchall_d4

    .line 17
    :try_start_9a
    iget-object v0, v1, Lpa/i$b;->t:Lpa/i;

    iget-object v0, v0, Lpa/i;->j:Lpa/i$c;

    invoke-virtual {v0}, Lpa/i$c;->u()V

    monitor-exit v6

    goto/16 :goto_a

    :cond_a4
    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_a6
    const-wide/16 v11, -0x1

    :goto_a8
    iget-object v0, v1, Lpa/i$b;->t:Lpa/i;

    iget-object v0, v0, Lpa/i;->j:Lpa/i$c;

    invoke-virtual {v0}, Lpa/i$c;->u()V

    .line 18
    monitor-exit v6
    :try_end_b0
    .catchall {:try_start_9a .. :try_end_b0} :catchall_dd

    if-eqz v8, :cond_b9

    if-eqz v10, :cond_b9

    .line 19
    invoke-interface {v10, v8}, Lpa/c$a;->a(Lja/s;)V

    goto/16 :goto_a

    :cond_b9
    const-wide/16 v2, -0x1

    cmp-long v0, v11, v2

    if-eqz v0, :cond_c3

    .line 20
    invoke-direct {v1, v11, v12}, Lpa/i$b;->c(J)V

    return-wide v11

    :cond_c3
    if-nez v7, :cond_c6

    return-wide v2

    .line 21
    :cond_c6
    new-instance v0, Lpa/n;

    invoke-direct {v0, v7}, Lpa/n;-><init>(Lpa/b;)V

    throw v0

    .line 22
    :cond_cc
    :try_start_cc
    new-instance v0, Ljava/io/IOException;

    const-string v2, "stream closed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d4
    .catchall {:try_start_cc .. :try_end_d4} :catchall_d4

    :catchall_d4
    move-exception v0

    .line 23
    :try_start_d5
    iget-object v2, v1, Lpa/i$b;->t:Lpa/i;

    iget-object v2, v2, Lpa/i;->j:Lpa/i$c;

    invoke-virtual {v2}, Lpa/i$c;->u()V

    throw v0

    :catchall_dd
    move-exception v0

    .line 24
    monitor-exit v6
    :try_end_df
    .catchall {:try_start_d5 .. :try_end_df} :catchall_dd

    throw v0

    .line 25
    :cond_e0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "byteCount < 0: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_f8

    :goto_f7
    throw v0

    :goto_f8
    goto :goto_f7
.end method

.method public timeout()Lokio/v;
    .registers 2

    .line 1
    iget-object v0, p0, Lpa/i$b;->t:Lpa/i;

    iget-object v0, v0, Lpa/i;->j:Lpa/i$c;

    return-object v0
.end method

###### Class pa.i.c (pa.i$c)
.class Lpa/i$c;
.super Lokio/a;
.source "Http2Stream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpa/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic k:Lpa/i;


# direct methods
.method constructor <init>(Lpa/i;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lpa/i$c;->k:Lpa/i;

    invoke-direct {p0}, Lokio/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected o(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 4

    .line 1
    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_c

    .line 2
    invoke-virtual {v0, p1}, Ljava/net/SocketTimeoutException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_c
    return-object v0
.end method

.method protected t()V
    .registers 3

    .line 1
    iget-object v0, p0, Lpa/i$c;->k:Lpa/i;

    sget-object v1, Lpa/b;->u:Lpa/b;

    invoke-virtual {v0, v1}, Lpa/i;->h(Lpa/b;)V

    .line 2
    iget-object v0, p0, Lpa/i$c;->k:Lpa/i;

    iget-object v0, v0, Lpa/i;->d:Lpa/g;

    invoke-virtual {v0}, Lpa/g;->A()V

    return-void
.end method

.method public u()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lokio/a;->n()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lpa/i$c;->o(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method
