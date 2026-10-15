###### Class net.lingala.zip4j.io.SplitOutputStream (net.lingala.zip4j.io.SplitOutputStream)
.class public Lnet/lingala/zip4j/io/SplitOutputStream;
.super Ljava/io/OutputStream;
.source "SplitOutputStream.java"


# instance fields
.field private o:Ljava/io/RandomAccessFile;

.field private p:J

.field private q:Ljava/io/File;

.field private r:Ljava/io/File;

.field private s:I

.field private t:J


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lnet/lingala/zip4j/io/SplitOutputStream;-><init>(Ljava/io/File;J)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;J)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_19

    const-wide/32 v2, 0x10000

    cmp-long v4, p2, v2

    if-ltz v4, :cond_11

    goto :goto_19

    .line 3
    :cond_11
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "split length less than minimum allowed split length of 65536 Bytes"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_19
    :goto_19
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->o:Ljava/io/RandomAccessFile;

    .line 5
    iput-wide p2, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->p:J

    .line 6
    iput-object p1, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->r:Ljava/io/File;

    .line 7
    iput-object p1, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->q:Ljava/io/File;

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->s:I

    .line 9
    iput-wide v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->t:J

    return-void
.end method

.method private g([B)Z
    .registers 10

    const/4 v0, 0x0

    if-eqz p1, :cond_2e

    .line 1
    array-length v1, p1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_8

    goto :goto_2e

    .line 2
    :cond_8
    invoke-static {p1, v0}, Lnet/lingala/zip4j/util/Raw;->e([BI)I

    move-result p1

    .line 3
    invoke-static {}, Lnet/lingala/zip4j/util/Zip4jUtil;->i()[J

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 4
    array-length v2, v1

    if-lez v2, :cond_2e

    const/4 v2, 0x0

    .line 5
    :goto_16
    array-length v3, v1

    if-ge v2, v3, :cond_2e

    .line 6
    aget-wide v3, v1, v2

    const-wide/32 v5, 0x8074b50

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2b

    aget-wide v3, v1, v2

    int-to-long v5, p1

    cmp-long v7, v3, v5

    if-nez v7, :cond_2b

    const/4 p1, 0x1

    return p1

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_2e
    :goto_2e
    return v0
.end method

.method private j()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->r:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/lingala/zip4j/util/Zip4jUtil;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->q:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->r:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1b

    const-string v2, ""

    goto :goto_36

    :cond_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->r:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "file.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4
    :goto_36
    iget v3, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->s:I

    const/16 v4, 0x9

    if-ge v3, v4, :cond_5d

    .line 5
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".z0"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->s:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_7d

    .line 6
    :cond_5d
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".z"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->s:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    :goto_7d
    iget-object v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->o:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 8
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_b1

    .line 9
    iget-object v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->q:Ljava/io/File;

    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 10
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->q:Ljava/io/File;

    .line 11
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->q:Ljava/io/File;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->o:Ljava/io/RandomAccessFile;

    .line 12
    iget v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->s:I

    return-void

    .line 13
    :cond_a9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "cannot rename newly created split file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_b1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "split file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " already exists in the current directory, cannot rename this file"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d1
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_d1} :catch_d1

    :catch_d1
    move-exception v0

    .line 15
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public b(I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-ltz p1, :cond_1a

    .line 1
    invoke-virtual {p0, p1}, Lnet/lingala/zip4j/io/SplitOutputStream;->f(I)Z

    move-result p1

    if-nez p1, :cond_18

    .line 2
    :try_start_8
    invoke-direct {p0}, Lnet/lingala/zip4j/io/SplitOutputStream;->j()V

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->t:J
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_f} :catch_11

    const/4 p1, 0x1

    return p1

    :catch_11
    move-exception p1

    .line 4
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_18
    const/4 p1, 0x0

    return p1

    .line 5
    :cond_1a
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "negative buffersize for checkBuffSizeAndStartNextSplitFile"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()I
    .registers 2

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->s:I

    return v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->o:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :cond_7
    return-void
.end method

.method public d()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->o:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    return-wide v0
.end method

.method public e()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->p:J

    return-wide v0
.end method

.method public f(I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-ltz p1, :cond_17

    .line 1
    iget-wide v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->p:J

    const-wide/32 v2, 0x10000

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-ltz v5, :cond_16

    .line 2
    iget-wide v2, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->t:J

    int-to-long v5, p1

    add-long/2addr v2, v5

    cmp-long p1, v2, v0

    if-gtz p1, :cond_15

    goto :goto_16

    :cond_15
    const/4 v4, 0x0

    :cond_16
    :goto_16
    return v4

    .line 3
    :cond_17
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "negative buffersize for isBuffSizeFitForCurrSplitFile"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public flush()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public h()Z
    .registers 6

    .line 1
    iget-wide v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->p:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public i(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->o:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void
.end method

.method public write(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [B

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 1
    invoke-virtual {p0, v1, v2, v0}, Lnet/lingala/zip4j/io/SplitOutputStream;->write([BII)V

    return-void
.end method

.method public write([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lnet/lingala/zip4j/io/SplitOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gtz p3, :cond_3

    return-void

    .line 3
    :cond_3
    iget-wide v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->p:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_76

    const-wide/32 v2, 0x10000

    cmp-long v4, v0, v2

    if-ltz v4, :cond_6e

    .line 4
    iget-wide v2, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->t:J

    cmp-long v4, v2, v0

    if-ltz v4, :cond_24

    .line 5
    invoke-direct {p0}, Lnet/lingala/zip4j/io/SplitOutputStream;->j()V

    .line 6
    iget-object v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->o:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    int-to-long p1, p3

    .line 7
    iput-wide p1, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->t:J

    goto :goto_81

    :cond_24
    int-to-long v4, p3

    add-long/2addr v2, v4

    cmp-long v6, v2, v0

    if-lez v6, :cond_63

    .line 8
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/io/SplitOutputStream;->g([B)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 9
    invoke-direct {p0}, Lnet/lingala/zip4j/io/SplitOutputStream;->j()V

    .line 10
    iget-object v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->o:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 11
    iput-wide v4, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->t:J

    goto :goto_81

    .line 12
    :cond_3b
    iget-object p3, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->o:Ljava/io/RandomAccessFile;

    iget-wide v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->p:J

    iget-wide v2, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->t:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    invoke-virtual {p3, p1, p2, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 13
    invoke-direct {p0}, Lnet/lingala/zip4j/io/SplitOutputStream;->j()V

    .line 14
    iget-object p3, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->o:Ljava/io/RandomAccessFile;

    iget-wide v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->p:J

    iget-wide v2, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->t:J

    sub-long v6, v0, v2

    long-to-int v7, v6

    add-int/2addr p2, v7

    sub-long/2addr v0, v2

    sub-long v0, v4, v0

    long-to-int v1, v0

    invoke-virtual {p3, p1, p2, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 15
    iget-wide p1, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->p:J

    iget-wide v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->t:J

    sub-long/2addr p1, v0

    sub-long/2addr v4, p1

    iput-wide v4, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->t:J

    goto :goto_81

    .line 16
    :cond_63
    iget-object v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->o:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 17
    iget-wide p1, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->t:J

    add-long/2addr p1, v4

    iput-wide p1, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->t:J

    goto :goto_81

    .line 18
    :cond_6e
    new-instance p1, Ljava/io/IOException;

    const-string p2, "split length less than minimum allowed split length of 65536 Bytes"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_76
    iget-object v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->o:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 20
    iget-wide p1, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->t:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->t:J

    :goto_81
    return-void
.end method
