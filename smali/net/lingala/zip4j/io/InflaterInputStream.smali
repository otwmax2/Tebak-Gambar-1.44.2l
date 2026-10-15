###### Class net.lingala.zip4j.io.InflaterInputStream (net.lingala.zip4j.io.InflaterInputStream)
.class public Lnet/lingala/zip4j/io/InflaterInputStream;
.super Lnet/lingala/zip4j/io/PartInputStream;
.source "InflaterInputStream.java"


# instance fields
.field private A:[B

.field private B:Lnet/lingala/zip4j/unzip/UnzipEngine;

.field private C:J

.field private D:J

.field private y:Ljava/util/zip/Inflater;

.field private z:[B


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;JJLnet/lingala/zip4j/unzip/UnzipEngine;)V
    .registers 7

    .line 1
    invoke-direct/range {p0 .. p6}, Lnet/lingala/zip4j/io/PartInputStream;-><init>(Ljava/io/RandomAccessFile;JJLnet/lingala/zip4j/unzip/UnzipEngine;)V

    const/4 p1, 0x1

    new-array p2, p1, [B

    .line 2
    iput-object p2, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->A:[B

    .line 3
    new-instance p2, Ljava/util/zip/Inflater;

    invoke-direct {p2, p1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object p2, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->y:Ljava/util/zip/Inflater;

    const/16 p1, 0x1000

    new-array p1, p1, [B

    .line 4
    iput-object p1, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->z:[B

    .line 5
    iput-object p6, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->B:Lnet/lingala/zip4j/unzip/UnzipEngine;

    const-wide/16 p1, 0x0

    .line 6
    iput-wide p1, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->C:J

    .line 7
    invoke-virtual {p6}, Lnet/lingala/zip4j/unzip/UnzipEngine;->j()Lnet/lingala/zip4j/model/FileHeader;

    move-result-object p1

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->r()J

    move-result-wide p1

    iput-wide p1, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->D:J

    return-void
.end method

.method private d()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->z:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-super {p0, v0, v2, v1}, Lnet/lingala/zip4j/io/PartInputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_13

    .line 2
    iget-object v1, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->y:Ljava/util/zip/Inflater;

    iget-object v3, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->z:[B

    invoke-virtual {v1, v3, v2, v0}, Ljava/util/zip/Inflater;->setInput([BII)V

    return-void

    .line 3
    :cond_13
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "Unexpected end of ZLIB input stream"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private e()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    new-array v1, v0, [B

    :goto_4
    const/4 v2, 0x0

    .line 1
    invoke-super {p0, v1, v2, v0}, Lnet/lingala/zip4j/io/PartInputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_d

    goto :goto_4

    .line 2
    :cond_d
    invoke-virtual {p0}, Lnet/lingala/zip4j/io/PartInputStream;->c()V

    return-void
.end method


# virtual methods
.method public available()I
    .registers 2

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->y:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public b()Lnet/lingala/zip4j/unzip/UnzipEngine;
    .registers 2

    .line 1
    invoke-super {p0}, Lnet/lingala/zip4j/io/PartInputStream;->b()Lnet/lingala/zip4j/unzip/UnzipEngine;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->y:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 2
    invoke-super {p0}, Lnet/lingala/zip4j/io/PartInputStream;->close()V

    return-void
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->A:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lnet/lingala/zip4j/io/InflaterInputStream;->read([BII)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_c

    goto :goto_12

    :cond_c
    iget-object v0, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->A:[B

    aget-byte v0, v0, v1

    and-int/lit16 v2, v0, 0xff

    :goto_12
    return v2
.end method

.method public read([B)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "input buffer is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lnet/lingala/zip4j/io/InflaterInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "input buffer is null"

    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-ltz p2, :cond_8d

    if-ltz p3, :cond_8d

    .line 5
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_8d

    if-nez p3, :cond_11

    const/4 p1, 0x0

    return p1

    .line 6
    :cond_11
    :try_start_11
    iget-wide v0, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->C:J

    iget-wide v2, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->D:J

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-ltz v5, :cond_1e

    .line 7
    invoke-direct {p0}, Lnet/lingala/zip4j/io/InflaterInputStream;->e()V

    return v4

    .line 8
    :cond_1e
    :goto_1e
    iget-object v0, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->y:Ljava/util/zip/Inflater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    if-nez v0, :cond_47

    .line 9
    iget-object v0, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->y:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    move-result v0

    if-nez v0, :cond_43

    iget-object v0, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->y:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v0

    if-eqz v0, :cond_37

    goto :goto_43

    .line 10
    :cond_37
    iget-object v0, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->y:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 11
    invoke-direct {p0}, Lnet/lingala/zip4j/io/InflaterInputStream;->d()V

    goto :goto_1e

    .line 12
    :cond_43
    :goto_43
    invoke-direct {p0}, Lnet/lingala/zip4j/io/InflaterInputStream;->e()V

    return v4

    .line 13
    :cond_47
    iget-wide p1, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->C:J

    int-to-long v1, v0

    add-long/2addr p1, v1

    iput-wide p1, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->C:J
    :try_end_4d
    .catch Ljava/util/zip/DataFormatException; {:try_start_11 .. :try_end_4d} :catch_4e

    return v0

    :catch_4e
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/util/zip/DataFormatException;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5a

    .line 15
    invoke-virtual {p1}, Ljava/util/zip/DataFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_5c

    :cond_5a
    const-string p1, "Invalid ZLIB data format"

    .line 16
    :goto_5c
    iget-object p2, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->B:Lnet/lingala/zip4j/unzip/UnzipEngine;

    if-eqz p2, :cond_87

    .line 17
    invoke-virtual {p2}, Lnet/lingala/zip4j/unzip/UnzipEngine;->l()Lnet/lingala/zip4j/model/LocalFileHeader;

    move-result-object p2

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->q()Z

    move-result p2

    if-eqz p2, :cond_87

    iget-object p2, p0, Lnet/lingala/zip4j/io/InflaterInputStream;->B:Lnet/lingala/zip4j/unzip/UnzipEngine;

    invoke-virtual {p2}, Lnet/lingala/zip4j/unzip/UnzipEngine;->l()Lnet/lingala/zip4j/model/LocalFileHeader;

    move-result-object p2

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->e()I

    move-result p2

    if-nez p2, :cond_87

    .line 18
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - Wrong Password?"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 19
    :cond_87
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 20
    :cond_8d
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    goto :goto_94

    :goto_93
    throw p1

    :goto_94
    goto :goto_93
.end method

.method public skip(J)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_28

    const-wide/32 v0, 0x7fffffff

    .line 1
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    long-to-int p2, p1

    const/16 p1, 0x200

    new-array v0, p1, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, p2, :cond_26

    sub-int v3, p2, v2

    if-le v3, p1, :cond_1c

    const/16 v3, 0x200

    .line 2
    :cond_1c
    invoke-virtual {p0, v0, v1, v3}, Lnet/lingala/zip4j/io/InflaterInputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_24

    goto :goto_26

    :cond_24
    add-int/2addr v2, v3

    goto :goto_14

    :cond_26
    :goto_26
    int-to-long p1, v2

    return-wide p1

    .line 3
    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "negative skip length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_31

    :goto_30
    throw p1

    :goto_31
    goto :goto_30
.end method
