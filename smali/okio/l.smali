###### Class okio.l (okio.l)
.class public final Lokio/l;
.super Ljava/lang/Object;
.source "GzipSource.java"

# interfaces
.implements Lokio/u;


# instance fields
.field private o:I

.field private final p:Lokio/e;

.field private final q:Ljava/util/zip/Inflater;

.field private final r:Lokio/m;

.field private final s:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>(Lokio/u;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lokio/l;->o:I

    .line 3
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lokio/l;->s:Ljava/util/zip/CRC32;

    if-eqz p1, :cond_25

    .line 4
    new-instance v0, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v0, p0, Lokio/l;->q:Ljava/util/zip/Inflater;

    .line 5
    invoke-static {p1}, Lokio/n;->c(Lokio/u;)Lokio/e;

    move-result-object p1

    iput-object p1, p0, Lokio/l;->p:Lokio/e;

    .line 6
    new-instance v1, Lokio/m;

    invoke-direct {v1, p1, v0}, Lokio/m;-><init>(Lokio/e;Ljava/util/zip/Inflater;)V

    iput-object v1, p0, Lokio/l;->r:Lokio/m;

    return-void

    .line 7
    :cond_25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b(Ljava/lang/String;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ne p3, p2, :cond_3

    return-void

    .line 1
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    .line 2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, p1

    const/4 p1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "%s: actual 0x%08x != expected 0x%08x"

    .line 3
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private c()V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    .line 1
    iget-object v0, v6, Lokio/l;->p:Lokio/e;

    const-wide/16 v1, 0xa

    invoke-interface {v0, v1, v2}, Lokio/e;->y3(J)V

    .line 2
    iget-object v0, v6, Lokio/l;->p:Lokio/e;

    invoke-interface {v0}, Lokio/e;->B()Lokio/c;

    move-result-object v0

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lokio/c;->i(J)B

    move-result v7

    shr-int/lit8 v0, v7, 0x1

    const/4 v8, 0x1

    and-int/2addr v0, v8

    const/4 v9, 0x0

    if-ne v0, v8, :cond_1e

    const/4 v10, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v10, 0x0

    :goto_1f
    if-eqz v10, :cond_30

    .line 3
    iget-object v0, v6, Lokio/l;->p:Lokio/e;

    invoke-interface {v0}, Lokio/e;->B()Lokio/c;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lokio/l;->e(Lokio/c;JJ)V

    .line 4
    :cond_30
    iget-object v0, v6, Lokio/l;->p:Lokio/e;

    invoke-interface {v0}, Lokio/e;->readShort()S

    move-result v0

    const/16 v1, 0x1f8b

    const-string v2, "ID1ID2"

    .line 5
    invoke-direct {v6, v2, v1, v0}, Lokio/l;->b(Ljava/lang/String;II)V

    .line 6
    iget-object v0, v6, Lokio/l;->p:Lokio/e;

    const-wide/16 v1, 0x8

    invoke-interface {v0, v1, v2}, Lokio/e;->skip(J)V

    shr-int/lit8 v0, v7, 0x2

    and-int/2addr v0, v8

    if-ne v0, v8, :cond_86

    .line 7
    iget-object v0, v6, Lokio/l;->p:Lokio/e;

    const-wide/16 v1, 0x2

    invoke-interface {v0, v1, v2}, Lokio/e;->y3(J)V

    if-eqz v10, :cond_61

    .line 8
    iget-object v0, v6, Lokio/l;->p:Lokio/e;

    invoke-interface {v0}, Lokio/e;->B()Lokio/c;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lokio/l;->e(Lokio/c;JJ)V

    .line 9
    :cond_61
    iget-object v0, v6, Lokio/l;->p:Lokio/e;

    invoke-interface {v0}, Lokio/e;->B()Lokio/c;

    move-result-object v0

    invoke-virtual {v0}, Lokio/c;->e3()S

    move-result v0

    .line 10
    iget-object v1, v6, Lokio/l;->p:Lokio/e;

    int-to-long v11, v0

    invoke-interface {v1, v11, v12}, Lokio/e;->y3(J)V

    if-eqz v10, :cond_81

    .line 11
    iget-object v0, v6, Lokio/l;->p:Lokio/e;

    invoke-interface {v0}, Lokio/e;->B()Lokio/c;

    move-result-object v1

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    move-wide v4, v11

    invoke-direct/range {v0 .. v5}, Lokio/l;->e(Lokio/c;JJ)V

    .line 12
    :cond_81
    iget-object v0, v6, Lokio/l;->p:Lokio/e;

    invoke-interface {v0, v11, v12}, Lokio/e;->skip(J)V

    :cond_86
    shr-int/lit8 v0, v7, 0x3

    and-int/2addr v0, v8

    const-wide/16 v11, -0x1

    const-wide/16 v13, 0x1

    if-ne v0, v8, :cond_b8

    .line 13
    iget-object v0, v6, Lokio/l;->p:Lokio/e;

    invoke-interface {v0, v9}, Lokio/e;->K3(B)J

    move-result-wide v15

    cmp-long v0, v15, v11

    if-eqz v0, :cond_b2

    if-eqz v10, :cond_aa

    .line 14
    iget-object v0, v6, Lokio/l;->p:Lokio/e;

    invoke-interface {v0}, Lokio/e;->B()Lokio/c;

    move-result-object v1

    const-wide/16 v2, 0x0

    add-long v4, v15, v13

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lokio/l;->e(Lokio/c;JJ)V

    .line 15
    :cond_aa
    iget-object v0, v6, Lokio/l;->p:Lokio/e;

    add-long v1, v15, v13

    invoke-interface {v0, v1, v2}, Lokio/e;->skip(J)V

    goto :goto_b8

    .line 16
    :cond_b2
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_b8
    :goto_b8
    shr-int/lit8 v0, v7, 0x4

    and-int/2addr v0, v8

    if-ne v0, v8, :cond_e5

    .line 17
    iget-object v0, v6, Lokio/l;->p:Lokio/e;

    invoke-interface {v0, v9}, Lokio/e;->K3(B)J

    move-result-wide v7

    cmp-long v0, v7, v11

    if-eqz v0, :cond_df

    if-eqz v10, :cond_d8

    .line 18
    iget-object v0, v6, Lokio/l;->p:Lokio/e;

    invoke-interface {v0}, Lokio/e;->B()Lokio/c;

    move-result-object v1

    const-wide/16 v2, 0x0

    add-long v4, v7, v13

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lokio/l;->e(Lokio/c;JJ)V

    .line 19
    :cond_d8
    iget-object v0, v6, Lokio/l;->p:Lokio/e;

    add-long/2addr v7, v13

    invoke-interface {v0, v7, v8}, Lokio/e;->skip(J)V

    goto :goto_e5

    .line 20
    :cond_df
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_e5
    :goto_e5
    if-eqz v10, :cond_ff

    .line 21
    iget-object v0, v6, Lokio/l;->p:Lokio/e;

    invoke-interface {v0}, Lokio/e;->e3()S

    move-result v0

    iget-object v1, v6, Lokio/l;->s:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v2, v1

    int-to-short v1, v2

    const-string v2, "FHCRC"

    invoke-direct {v6, v2, v0, v1}, Lokio/l;->b(Ljava/lang/String;II)V

    .line 22
    iget-object v0, v6, Lokio/l;->s:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    :cond_ff
    return-void
.end method

.method private d()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokio/l;->p:Lokio/e;

    invoke-interface {v0}, Lokio/e;->I2()I

    move-result v0

    iget-object v1, p0, Lokio/l;->s:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v2, v1

    const-string v1, "CRC"

    invoke-direct {p0, v1, v0, v2}, Lokio/l;->b(Ljava/lang/String;II)V

    .line 2
    iget-object v0, p0, Lokio/l;->p:Lokio/e;

    invoke-interface {v0}, Lokio/e;->I2()I

    move-result v0

    iget-object v1, p0, Lokio/l;->q:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide v1

    long-to-int v2, v1

    const-string v1, "ISIZE"

    invoke-direct {p0, v1, v0, v2}, Lokio/l;->b(Ljava/lang/String;II)V

    return-void
.end method

.method private e(Lokio/c;JJ)V
    .registers 11

    .line 1
    iget-object p1, p1, Lokio/c;->o:Lokio/q;

    .line 2
    :goto_2
    iget v0, p1, Lokio/q;->c:I

    iget v1, p1, Lokio/q;->b:I

    sub-int v2, v0, v1

    int-to-long v2, v2

    cmp-long v4, p2, v2

    if-ltz v4, :cond_13

    sub-int/2addr v0, v1

    int-to-long v0, v0

    sub-long/2addr p2, v0

    iget-object p1, p1, Lokio/q;->f:Lokio/q;

    goto :goto_2

    :cond_13
    const-wide/16 v0, 0x0

    :goto_15
    cmp-long v2, p4, v0

    if-lez v2, :cond_34

    .line 3
    iget v2, p1, Lokio/q;->b:I

    int-to-long v2, v2

    add-long/2addr v2, p2

    long-to-int p2, v2

    .line 4
    iget p3, p1, Lokio/q;->c:I

    sub-int/2addr p3, p2

    int-to-long v2, p3

    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p3, v2

    .line 5
    iget-object v2, p0, Lokio/l;->s:Ljava/util/zip/CRC32;

    iget-object v3, p1, Lokio/q;->a:[B

    invoke-virtual {v2, v3, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    int-to-long p2, p3

    sub-long/2addr p4, p2

    .line 6
    iget-object p1, p1, Lokio/q;->f:Lokio/q;

    move-wide p2, v0

    goto :goto_15

    :cond_34
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokio/l;->r:Lokio/m;

    invoke-virtual {v0}, Lokio/m;->close()V

    return-void
.end method

.method public read(Lokio/c;J)J
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_4d

    cmp-long v2, p2, v0

    if-nez v2, :cond_b

    return-wide v0

    .line 1
    :cond_b
    iget v0, p0, Lokio/l;->o:I

    const/4 v1, 0x1

    if-nez v0, :cond_15

    .line 2
    invoke-direct {p0}, Lokio/l;->c()V

    .line 3
    iput v1, p0, Lokio/l;->o:I

    .line 4
    :cond_15
    iget v0, p0, Lokio/l;->o:I

    const-wide/16 v2, -0x1

    const/4 v4, 0x2

    if-ne v0, v1, :cond_31

    .line 5
    iget-wide v7, p1, Lokio/c;->p:J

    .line 6
    iget-object v0, p0, Lokio/l;->r:Lokio/m;

    invoke-virtual {v0, p1, p2, p3}, Lokio/m;->read(Lokio/c;J)J

    move-result-wide p2

    cmp-long v0, p2, v2

    if-eqz v0, :cond_2f

    move-object v5, p0

    move-object v6, p1

    move-wide v9, p2

    .line 7
    invoke-direct/range {v5 .. v10}, Lokio/l;->e(Lokio/c;JJ)V

    return-wide p2

    .line 8
    :cond_2f
    iput v4, p0, Lokio/l;->o:I

    .line 9
    :cond_31
    iget p1, p0, Lokio/l;->o:I

    if-ne p1, v4, :cond_4c

    .line 10
    invoke-direct {p0}, Lokio/l;->d()V

    const/4 p1, 0x3

    .line 11
    iput p1, p0, Lokio/l;->o:I

    .line 12
    iget-object p1, p0, Lokio/l;->p:Lokio/e;

    invoke-interface {p1}, Lokio/e;->S0()Z

    move-result p1

    if-eqz p1, :cond_44

    goto :goto_4c

    .line 13
    :cond_44
    new-instance p1, Ljava/io/IOException;

    const-string p2, "gzip finished without exhausting source"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4c
    :goto_4c
    return-wide v2

    .line 14
    :cond_4d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public timeout()Lokio/v;
    .registers 2

    .line 1
    iget-object v0, p0, Lokio/l;->p:Lokio/e;

    invoke-interface {v0}, Lokio/u;->timeout()Lokio/v;

    move-result-object v0

    return-object v0
.end method
