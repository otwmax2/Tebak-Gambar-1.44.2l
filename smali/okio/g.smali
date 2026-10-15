###### Class okio.g (okio.g)
.class public final Lokio/g;
.super Ljava/lang/Object;
.source "DeflaterSink.java"

# interfaces
.implements Lokio/t;


# instance fields
.field private final o:Lokio/d;

.field private final p:Ljava/util/zip/Deflater;

.field private q:Z


# direct methods
.method constructor <init>(Lokio/d;Ljava/util/zip/Deflater;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_14

    if-eqz p2, :cond_c

    .line 2
    iput-object p1, p0, Lokio/g;->o:Lokio/d;

    .line 3
    iput-object p2, p0, Lokio/g;->p:Ljava/util/zip/Deflater;

    return-void

    .line 4
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "inflater == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b(Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    .line 1
    iget-object v0, p0, Lokio/g;->o:Lokio/d;

    invoke-interface {v0}, Lokio/d;->B()Lokio/c;

    move-result-object v0

    :cond_6
    :goto_6
    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lokio/c;->v(I)Lokio/q;

    move-result-object v1

    if-eqz p1, :cond_1b

    .line 3
    iget-object v2, p0, Lokio/g;->p:Ljava/util/zip/Deflater;

    iget-object v3, v1, Lokio/q;->a:[B

    iget v4, v1, Lokio/q;->c:I

    rsub-int v5, v4, 0x2000

    const/4 v6, 0x2

    invoke-virtual {v2, v3, v4, v5, v6}, Ljava/util/zip/Deflater;->deflate([BIII)I

    move-result v2

    goto :goto_27

    .line 4
    :cond_1b
    iget-object v2, p0, Lokio/g;->p:Ljava/util/zip/Deflater;

    iget-object v3, v1, Lokio/q;->a:[B

    iget v4, v1, Lokio/q;->c:I

    rsub-int v5, v4, 0x2000

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v2

    :goto_27
    if-lez v2, :cond_3a

    .line 5
    iget v3, v1, Lokio/q;->c:I

    add-int/2addr v3, v2

    iput v3, v1, Lokio/q;->c:I

    .line 6
    iget-wide v3, v0, Lokio/c;->p:J

    int-to-long v1, v2

    add-long/2addr v3, v1

    iput-wide v3, v0, Lokio/c;->p:J

    .line 7
    iget-object v1, p0, Lokio/g;->o:Lokio/d;

    invoke-interface {v1}, Lokio/d;->h1()Lokio/d;

    goto :goto_6

    .line 8
    :cond_3a
    iget-object v2, p0, Lokio/g;->p:Ljava/util/zip/Deflater;

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 9
    iget p1, v1, Lokio/q;->b:I

    iget v2, v1, Lokio/q;->c:I

    if-ne p1, v2, :cond_51

    .line 10
    invoke-virtual {v1}, Lokio/q;->b()Lokio/q;

    move-result-object p1

    iput-object p1, v0, Lokio/c;->o:Lokio/q;

    .line 11
    invoke-static {v1}, Lokio/r;->a(Lokio/q;)V

    :cond_51
    return-void
.end method


# virtual methods
.method public a2(Lokio/c;J)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p1, Lokio/c;->p:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lokio/w;->b(JJJ)V

    :goto_8
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_42

    .line 2
    iget-object v0, p1, Lokio/c;->o:Lokio/q;

    .line 3
    iget v1, v0, Lokio/q;->c:I

    iget v2, v0, Lokio/q;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 4
    iget-object v1, p0, Lokio/g;->p:Ljava/util/zip/Deflater;

    iget-object v3, v0, Lokio/q;->a:[B

    iget v4, v0, Lokio/q;->b:I

    invoke-virtual {v1, v3, v4, v2}, Ljava/util/zip/Deflater;->setInput([BII)V

    const/4 v1, 0x0

    .line 5
    invoke-direct {p0, v1}, Lokio/g;->b(Z)V

    .line 6
    iget-wide v3, p1, Lokio/c;->p:J

    int-to-long v5, v2

    sub-long/2addr v3, v5

    iput-wide v3, p1, Lokio/c;->p:J

    .line 7
    iget v1, v0, Lokio/q;->b:I

    add-int/2addr v1, v2

    iput v1, v0, Lokio/q;->b:I

    .line 8
    iget v2, v0, Lokio/q;->c:I

    if-ne v1, v2, :cond_40

    .line 9
    invoke-virtual {v0}, Lokio/q;->b()Lokio/q;

    move-result-object v1

    iput-object v1, p1, Lokio/c;->o:Lokio/q;

    .line 10
    invoke-static {v0}, Lokio/r;->a(Lokio/q;)V

    :cond_40
    sub-long/2addr p2, v5

    goto :goto_8

    :cond_42
    return-void
.end method

.method c()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokio/g;->p:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lokio/g;->b(Z)V

    return-void
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lokio/g;->q:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 2
    :try_start_6
    invoke-virtual {p0}, Lokio/g;->c()V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_a

    goto :goto_b

    :catchall_a
    move-exception v0

    .line 3
    :goto_b
    :try_start_b
    iget-object v1, p0, Lokio/g;->p:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_11

    goto :goto_15

    :catchall_11
    move-exception v1

    if-nez v0, :cond_15

    move-object v0, v1

    .line 4
    :cond_15
    :goto_15
    :try_start_15
    iget-object v1, p0, Lokio/g;->o:Lokio/d;

    invoke-interface {v1}, Lokio/t;->close()V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1b

    goto :goto_1f

    :catchall_1b
    move-exception v1

    if-nez v0, :cond_1f

    move-object v0, v1

    :cond_1f
    :goto_1f
    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lokio/g;->q:Z

    if-eqz v0, :cond_27

    .line 6
    invoke-static {v0}, Lokio/w;->e(Ljava/lang/Throwable;)V

    :cond_27
    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lokio/g;->b(Z)V

    .line 2
    iget-object v0, p0, Lokio/g;->o:Lokio/d;

    invoke-interface {v0}, Lokio/d;->flush()V

    return-void
.end method

.method public timeout()Lokio/v;
    .registers 2

    .line 1
    iget-object v0, p0, Lokio/g;->o:Lokio/d;

    invoke-interface {v0}, Lokio/t;->timeout()Lokio/v;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeflaterSink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokio/g;->o:Lokio/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
