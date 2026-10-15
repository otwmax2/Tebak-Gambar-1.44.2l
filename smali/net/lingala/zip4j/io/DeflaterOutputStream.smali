###### Class net.lingala.zip4j.io.DeflaterOutputStream (net.lingala.zip4j.io.DeflaterOutputStream)
.class public Lnet/lingala/zip4j/io/DeflaterOutputStream;
.super Lnet/lingala/zip4j/io/CipherOutputStream;
.source "DeflaterOutputStream.java"


# instance fields
.field private B:[B

.field protected C:Ljava/util/zip/Deflater;

.field private D:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lnet/lingala/zip4j/model/ZipModel;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lnet/lingala/zip4j/io/CipherOutputStream;-><init>(Ljava/io/OutputStream;Lnet/lingala/zip4j/model/ZipModel;)V

    .line 2
    new-instance p1, Ljava/util/zip/Deflater;

    invoke-direct {p1}, Ljava/util/zip/Deflater;-><init>()V

    iput-object p1, p0, Lnet/lingala/zip4j/io/DeflaterOutputStream;->C:Ljava/util/zip/Deflater;

    const/16 p1, 0x1000

    new-array p1, p1, [B

    .line 3
    iput-object p1, p0, Lnet/lingala/zip4j/io/DeflaterOutputStream;->B:[B

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lnet/lingala/zip4j/io/DeflaterOutputStream;->D:Z

    return-void
.end method

.method private o()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/DeflaterOutputStream;->C:Ljava/util/zip/Deflater;

    iget-object v1, p0, Lnet/lingala/zip4j/io/DeflaterOutputStream;->B:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v0

    if-lez v0, :cond_35

    .line 2
    iget-object v1, p0, Lnet/lingala/zip4j/io/DeflaterOutputStream;->C:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->finished()Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 v1, 0x4

    if-ne v0, v1, :cond_18

    return-void

    :cond_18
    if-ge v0, v1, :cond_1f

    sub-int/2addr v1, v0

    .line 3
    invoke-virtual {p0, v1}, Lnet/lingala/zip4j/io/CipherOutputStream;->e(I)V

    return-void

    :cond_1f
    add-int/lit8 v0, v0, -0x4

    .line 4
    :cond_21
    iget-boolean v1, p0, Lnet/lingala/zip4j/io/DeflaterOutputStream;->D:Z

    if-nez v1, :cond_30

    .line 5
    iget-object v1, p0, Lnet/lingala/zip4j/io/DeflaterOutputStream;->B:[B

    const/4 v2, 0x2

    sub-int/2addr v0, v2

    invoke-super {p0, v1, v2, v0}, Lnet/lingala/zip4j/io/CipherOutputStream;->write([BII)V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lnet/lingala/zip4j/io/DeflaterOutputStream;->D:Z

    goto :goto_35

    .line 7
    :cond_30
    iget-object v1, p0, Lnet/lingala/zip4j/io/DeflaterOutputStream;->B:[B

    invoke-super {p0, v1, v3, v0}, Lnet/lingala/zip4j/io/CipherOutputStream;->write([BII)V

    :cond_35
    :goto_35
    return-void
.end method


# virtual methods
.method public b()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->t:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipParameters;->d()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_26

    .line 2
    iget-object v0, p0, Lnet/lingala/zip4j/io/DeflaterOutputStream;->C:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_23

    .line 3
    iget-object v0, p0, Lnet/lingala/zip4j/io/DeflaterOutputStream;->C:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    .line 4
    :goto_17
    iget-object v0, p0, Lnet/lingala/zip4j/io/DeflaterOutputStream;->C:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_23

    .line 5
    invoke-direct {p0}, Lnet/lingala/zip4j/io/DeflaterOutputStream;->o()V

    goto :goto_17

    :cond_23
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lnet/lingala/zip4j/io/DeflaterOutputStream;->D:Z

    .line 7
    :cond_26
    invoke-super {p0}, Lnet/lingala/zip4j/io/CipherOutputStream;->b()V

    return-void
.end method

.method public g()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lnet/lingala/zip4j/io/CipherOutputStream;->g()V

    return-void
.end method

.method public m(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lnet/lingala/zip4j/io/CipherOutputStream;->m(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 2
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->d()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_37

    .line 3
    iget-object p1, p0, Lnet/lingala/zip4j/io/DeflaterOutputStream;->C:Ljava/util/zip/Deflater;

    invoke-virtual {p1}, Ljava/util/zip/Deflater;->reset()V

    .line 4
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->b()I

    move-result p1

    if-ltz p1, :cond_1e

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->b()I

    move-result p1

    const/16 v0, 0x9

    if-le p1, v0, :cond_25

    :cond_1e
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->b()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2f

    .line 5
    :cond_25
    iget-object p1, p0, Lnet/lingala/zip4j/io/DeflaterOutputStream;->C:Ljava/util/zip/Deflater;

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->b()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/util/zip/Deflater;->setLevel(I)V

    goto :goto_37

    .line 6
    :cond_2f
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "invalid compression level for deflater. compression level should be in the range of 0-9"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_37
    :goto_37
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

    .line 2
    invoke-virtual {p0, v1, v2, v0}, Lnet/lingala/zip4j/io/DeflaterOutputStream;->write([BII)V

    return-void
.end method

.method public write([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lnet/lingala/zip4j/io/DeflaterOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->t:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipParameters;->d()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_e

    .line 4
    invoke-super {p0, p1, p2, p3}, Lnet/lingala/zip4j/io/CipherOutputStream;->write([BII)V

    goto :goto_1f

    .line 5
    :cond_e
    iget-object v0, p0, Lnet/lingala/zip4j/io/DeflaterOutputStream;->C:Ljava/util/zip/Deflater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 6
    :goto_13
    iget-object p1, p0, Lnet/lingala/zip4j/io/DeflaterOutputStream;->C:Ljava/util/zip/Deflater;

    invoke-virtual {p1}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result p1

    if-nez p1, :cond_1f

    .line 7
    invoke-direct {p0}, Lnet/lingala/zip4j/io/DeflaterOutputStream;->o()V

    goto :goto_13

    :cond_1f
    :goto_1f
    return-void
.end method
