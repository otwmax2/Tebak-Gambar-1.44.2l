###### Class okio.o (okio.o)
.class final Lokio/o;
.super Ljava/lang/Object;
.source "RealBufferedSink.java"

# interfaces
.implements Lokio/d;


# instance fields
.field public final o:Lokio/c;

.field public final p:Lokio/t;

.field q:Z


# direct methods
.method constructor <init>(Lokio/t;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lokio/c;

    invoke-direct {v0}, Lokio/c;-><init>()V

    iput-object v0, p0, Lokio/o;->o:Lokio/c;

    const-string v0, "sink == null"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lokio/o;->p:Lokio/t;

    return-void
.end method


# virtual methods
.method public B()Lokio/c;
    .registers 2

    .line 1
    iget-object v0, p0, Lokio/o;->o:Lokio/c;

    return-object v0
.end method

.method public D3(J)Lokio/d;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lokio/o;->q:Z

    if-nez v0, :cond_e

    .line 2
    iget-object v0, p0, Lokio/o;->o:Lokio/c;

    invoke-virtual {v0, p1, p2}, Lokio/c;->A(J)Lokio/c;

    .line 3
    invoke-virtual {p0}, Lokio/o;->h1()Lokio/d;

    move-result-object p1

    return-object p1

    .line 4
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public H1(Ljava/lang/String;)Lokio/d;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lokio/o;->q:Z

    if-nez v0, :cond_e

    .line 2
    iget-object v0, p0, Lokio/o;->o:Lokio/c;

    invoke-virtual {v0, p1}, Lokio/c;->J(Ljava/lang/String;)Lokio/c;

    .line 3
    invoke-virtual {p0}, Lokio/o;->h1()Lokio/d;

    move-result-object p1

    return-object p1

    .line 4
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public R0(I)Lokio/d;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lokio/o;->q:Z

    if-nez v0, :cond_e

    .line 2
    iget-object v0, p0, Lokio/o;->o:Lokio/c;

    invoke-virtual {v0, p1}, Lokio/c;->F(I)Lokio/c;

    .line 3
    invoke-virtual {p0}, Lokio/o;->h1()Lokio/d;

    move-result-object p1

    return-object p1

    .line 4
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public T0(I)Lokio/d;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lokio/o;->q:Z

    if-nez v0, :cond_e

    .line 2
    iget-object v0, p0, Lokio/o;->o:Lokio/c;

    invoke-virtual {v0, p1}, Lokio/c;->z(I)Lokio/c;

    .line 3
    invoke-virtual {p0}, Lokio/o;->h1()Lokio/d;

    move-result-object p1

    return-object p1

    .line 4
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public W1([BII)Lokio/d;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lokio/o;->q:Z

    if-nez v0, :cond_e

    .line 2
    iget-object v0, p0, Lokio/o;->o:Lokio/c;

    invoke-virtual {v0, p1, p2, p3}, Lokio/c;->y([BII)Lokio/c;

    .line 3
    invoke-virtual {p0}, Lokio/o;->h1()Lokio/d;

    move-result-object p1

    return-object p1

    .line 4
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public Y2([B)Lokio/d;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lokio/o;->q:Z

    if-nez v0, :cond_e

    .line 2
    iget-object v0, p0, Lokio/o;->o:Lokio/c;

    invoke-virtual {v0, p1}, Lokio/c;->x([B)Lokio/c;

    .line 3
    invoke-virtual {p0}, Lokio/o;->h1()Lokio/d;

    move-result-object p1

    return-object p1

    .line 4
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a2(Lokio/c;J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lokio/o;->q:Z

    if-nez v0, :cond_d

    .line 2
    iget-object v0, p0, Lokio/o;->o:Lokio/c;

    invoke-virtual {v0, p1, p2, p3}, Lokio/c;->a2(Lokio/c;J)V

    .line 3
    invoke-virtual {p0}, Lokio/o;->h1()Lokio/d;

    return-void

    .line 4
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c3(Lokio/f;)Lokio/d;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lokio/o;->q:Z

    if-nez v0, :cond_e

    .line 2
    iget-object v0, p0, Lokio/o;->o:Lokio/c;

    invoke-virtual {v0, p1}, Lokio/c;->w(Lokio/f;)Lokio/c;

    .line 3
    invoke-virtual {p0}, Lokio/o;->h1()Lokio/d;

    move-result-object p1

    return-object p1

    .line 4
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lokio/o;->q:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 2
    :try_start_6
    iget-object v1, p0, Lokio/o;->o:Lokio/c;

    iget-wide v2, v1, Lokio/c;->p:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_17

    .line 3
    iget-object v4, p0, Lokio/o;->p:Lokio/t;

    invoke-interface {v4, v1, v2, v3}, Lokio/t;->a2(Lokio/c;J)V
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    goto :goto_17

    :catchall_16
    move-exception v0

    .line 4
    :cond_17
    :goto_17
    :try_start_17
    iget-object v1, p0, Lokio/o;->p:Lokio/t;

    invoke-interface {v1}, Lokio/t;->close()V
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_1d

    goto :goto_21

    :catchall_1d
    move-exception v1

    if-nez v0, :cond_21

    move-object v0, v1

    :cond_21
    :goto_21
    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lokio/o;->q:Z

    if-eqz v0, :cond_29

    .line 6
    invoke-static {v0}, Lokio/w;->e(Ljava/lang/Throwable;)V

    :cond_29
    return-void
.end method

.method public flush()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lokio/o;->q:Z

    if-nez v0, :cond_19

    .line 2
    iget-object v0, p0, Lokio/o;->o:Lokio/c;

    iget-wide v1, v0, Lokio/c;->p:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_13

    .line 3
    iget-object v3, p0, Lokio/o;->p:Lokio/t;

    invoke-interface {v3, v0, v1, v2}, Lokio/t;->a2(Lokio/c;J)V

    .line 4
    :cond_13
    iget-object v0, p0, Lokio/o;->p:Lokio/t;

    invoke-interface {v0}, Lokio/t;->flush()V

    return-void

    .line 5
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h1()Lokio/d;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lokio/o;->q:Z

    if-nez v0, :cond_18

    .line 2
    iget-object v0, p0, Lokio/o;->o:Lokio/c;

    invoke-virtual {v0}, Lokio/c;->f()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_17

    .line 3
    iget-object v2, p0, Lokio/o;->p:Lokio/t;

    iget-object v3, p0, Lokio/o;->o:Lokio/c;

    invoke-interface {v2, v3, v0, v1}, Lokio/t;->a2(Lokio/c;J)V

    :cond_17
    return-object p0

    .line 4
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h2(Lokio/u;)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_18

    const-wide/16 v0, 0x0

    .line 1
    :goto_4
    iget-object v2, p0, Lokio/o;->o:Lokio/c;

    const-wide/16 v3, 0x2000

    invoke-interface {p1, v2, v3, v4}, Lokio/u;->read(Lokio/c;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_17

    add-long/2addr v0, v2

    .line 2
    invoke-virtual {p0}, Lokio/o;->h1()Lokio/d;

    goto :goto_4

    :cond_17
    return-wide v0

    .line 3
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_21

    :goto_20
    throw p1

    :goto_21
    goto :goto_20
.end method

.method public i2(J)Lokio/d;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lokio/o;->q:Z

    if-nez v0, :cond_e

    .line 2
    iget-object v0, p0, Lokio/o;->o:Lokio/c;

    invoke-virtual {v0, p1, p2}, Lokio/c;->C(J)Lokio/c;

    .line 3
    invoke-virtual {p0}, Lokio/o;->h1()Lokio/d;

    move-result-object p1

    return-object p1

    .line 4
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isOpen()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lokio/o;->q:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public q0()Lokio/d;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lokio/o;->q:Z

    if-nez v0, :cond_18

    .line 2
    iget-object v0, p0, Lokio/o;->o:Lokio/c;

    invoke-virtual {v0}, Lokio/c;->s()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_17

    .line 3
    iget-object v2, p0, Lokio/o;->p:Lokio/t;

    iget-object v3, p0, Lokio/o;->o:Lokio/c;

    invoke-interface {v2, v3, v0, v1}, Lokio/t;->a2(Lokio/c;J)V

    :cond_17
    return-object p0

    .line 4
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public r0(I)Lokio/d;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lokio/o;->q:Z

    if-nez v0, :cond_e

    .line 2
    iget-object v0, p0, Lokio/o;->o:Lokio/c;

    invoke-virtual {v0, p1}, Lokio/c;->G(I)Lokio/c;

    .line 3
    invoke-virtual {p0}, Lokio/o;->h1()Lokio/d;

    move-result-object p1

    return-object p1

    .line 4
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public timeout()Lokio/v;
    .registers 2

    .line 1
    iget-object v0, p0, Lokio/o;->p:Lokio/t;

    invoke-interface {v0}, Lokio/t;->timeout()Lokio/v;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokio/o;->p:Lokio/t;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lokio/o;->q:Z

    if-nez v0, :cond_e

    .line 2
    iget-object v0, p0, Lokio/o;->o:Lokio/c;

    invoke-virtual {v0, p1}, Lokio/c;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    .line 3
    invoke-virtual {p0}, Lokio/o;->h1()Lokio/d;

    return p1

    .line 4
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public x0(I)Lokio/d;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lokio/o;->q:Z

    if-nez v0, :cond_e

    .line 2
    iget-object v0, p0, Lokio/o;->o:Lokio/c;

    invoke-virtual {v0, p1}, Lokio/c;->E(I)Lokio/c;

    .line 3
    invoke-virtual {p0}, Lokio/o;->h1()Lokio/d;

    move-result-object p1

    return-object p1

    .line 4
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
