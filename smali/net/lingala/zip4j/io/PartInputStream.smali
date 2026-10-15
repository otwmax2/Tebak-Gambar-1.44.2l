###### Class net.lingala.zip4j.io.PartInputStream (net.lingala.zip4j.io.PartInputStream)
.class public Lnet/lingala/zip4j/io/PartInputStream;
.super Lnet/lingala/zip4j/io/BaseInputStream;
.source "PartInputStream.java"


# instance fields
.field private o:Ljava/io/RandomAccessFile;

.field private p:J

.field private q:J

.field private r:Lnet/lingala/zip4j/unzip/UnzipEngine;

.field private s:Lnet/lingala/zip4j/crypto/IDecrypter;

.field private t:[B

.field private u:[B

.field private v:I

.field private w:Z

.field private x:I


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;JJLnet/lingala/zip4j/unzip/UnzipEngine;)V
    .registers 9

    .line 1
    invoke-direct {p0}, Lnet/lingala/zip4j/io/BaseInputStream;-><init>()V

    const/4 p2, 0x1

    new-array p3, p2, [B

    .line 2
    iput-object p3, p0, Lnet/lingala/zip4j/io/PartInputStream;->t:[B

    const/16 p3, 0x10

    new-array p3, p3, [B

    .line 3
    iput-object p3, p0, Lnet/lingala/zip4j/io/PartInputStream;->u:[B

    const/4 p3, 0x0

    .line 4
    iput p3, p0, Lnet/lingala/zip4j/io/PartInputStream;->v:I

    .line 5
    iput-boolean p3, p0, Lnet/lingala/zip4j/io/PartInputStream;->w:Z

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->x:I

    .line 7
    iput-object p1, p0, Lnet/lingala/zip4j/io/PartInputStream;->o:Ljava/io/RandomAccessFile;

    .line 8
    iput-object p6, p0, Lnet/lingala/zip4j/io/PartInputStream;->r:Lnet/lingala/zip4j/unzip/UnzipEngine;

    .line 9
    invoke-virtual {p6}, Lnet/lingala/zip4j/unzip/UnzipEngine;->i()Lnet/lingala/zip4j/crypto/IDecrypter;

    move-result-object p1

    iput-object p1, p0, Lnet/lingala/zip4j/io/PartInputStream;->s:Lnet/lingala/zip4j/crypto/IDecrypter;

    const-wide/16 v0, 0x0

    .line 10
    iput-wide v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->p:J

    .line 11
    iput-wide p4, p0, Lnet/lingala/zip4j/io/PartInputStream;->q:J

    .line 12
    invoke-virtual {p6}, Lnet/lingala/zip4j/unzip/UnzipEngine;->j()Lnet/lingala/zip4j/model/FileHeader;

    move-result-object p1

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->w()Z

    move-result p1

    if-eqz p1, :cond_3d

    invoke-virtual {p6}, Lnet/lingala/zip4j/unzip/UnzipEngine;->j()Lnet/lingala/zip4j/model/FileHeader;

    move-result-object p1

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->g()I

    move-result p1

    const/16 p4, 0x63

    if-ne p1, p4, :cond_3d

    goto :goto_3e

    :cond_3d
    const/4 p2, 0x0

    :goto_3e
    iput-boolean p2, p0, Lnet/lingala/zip4j/io/PartInputStream;->w:Z

    return-void
.end method


# virtual methods
.method public available()I
    .registers 6

    .line 1
    iget-wide v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->q:J

    iget-wide v2, p0, Lnet/lingala/zip4j/io/PartInputStream;->p:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-lez v4, :cond_10

    const v0, 0x7fffffff

    return v0

    :cond_10
    long-to-int v1, v0

    return v1
.end method

.method public b()Lnet/lingala/zip4j/unzip/UnzipEngine;
    .registers 2

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->r:Lnet/lingala/zip4j/unzip/UnzipEngine;

    return-object v0
.end method

.method protected c()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->w:Z

    if-eqz v0, :cond_53

    .line 2
    iget-object v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->s:Lnet/lingala/zip4j/crypto/IDecrypter;

    if-eqz v0, :cond_53

    instance-of v1, v0, Lnet/lingala/zip4j/crypto/AESDecrypter;

    if-eqz v1, :cond_53

    .line 3
    check-cast v0, Lnet/lingala/zip4j/crypto/AESDecrypter;

    invoke-virtual {v0}, Lnet/lingala/zip4j/crypto/AESDecrypter;->f()[B

    move-result-object v0

    if-eqz v0, :cond_15

    return-void

    :cond_15
    const/16 v0, 0xa

    new-array v1, v0, [B

    .line 4
    iget-object v2, p0, Lnet/lingala/zip4j/io/PartInputStream;->o:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v1}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v2

    if-eq v2, v0, :cond_48

    .line 5
    iget-object v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->r:Lnet/lingala/zip4j/unzip/UnzipEngine;

    invoke-virtual {v0}, Lnet/lingala/zip4j/unzip/UnzipEngine;->p()Lnet/lingala/zip4j/model/ZipModel;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->k()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 6
    iget-object v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->o:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 7
    iget-object v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->r:Lnet/lingala/zip4j/unzip/UnzipEngine;

    invoke-virtual {v0}, Lnet/lingala/zip4j/unzip/UnzipEngine;->s()Ljava/io/RandomAccessFile;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->o:Ljava/io/RandomAccessFile;

    rsub-int/lit8 v3, v2, 0xa

    .line 8
    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    goto :goto_48

    .line 9
    :cond_40
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Error occured while reading stored AES authentication bytes"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_48
    :goto_48
    iget-object v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->r:Lnet/lingala/zip4j/unzip/UnzipEngine;

    invoke-virtual {v0}, Lnet/lingala/zip4j/unzip/UnzipEngine;->i()Lnet/lingala/zip4j/crypto/IDecrypter;

    move-result-object v0

    check-cast v0, Lnet/lingala/zip4j/crypto/AESDecrypter;

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/crypto/AESDecrypter;->h([B)V

    :cond_53
    return-void
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->o:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method

.method public read()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->p:J

    iget-wide v2, p0, Lnet/lingala/zip4j/io/PartInputStream;->q:J

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-ltz v5, :cond_a

    return v4

    .line 2
    :cond_a
    iget-boolean v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->w:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2f

    .line 3
    iget v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->v:I

    if-eqz v0, :cond_17

    const/16 v2, 0x10

    if-ne v0, v2, :cond_22

    .line 4
    :cond_17
    iget-object v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->u:[B

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/io/PartInputStream;->read([B)I

    move-result v0

    if-ne v0, v4, :cond_20

    return v4

    .line 5
    :cond_20
    iput v1, p0, Lnet/lingala/zip4j/io/PartInputStream;->v:I

    .line 6
    :cond_22
    iget-object v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->u:[B

    iget v1, p0, Lnet/lingala/zip4j/io/PartInputStream;->v:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnet/lingala/zip4j/io/PartInputStream;->v:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 7
    :cond_2f
    iget-object v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->t:[B

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lnet/lingala/zip4j/io/PartInputStream;->read([BII)I

    move-result v0

    if-ne v0, v4, :cond_39

    goto :goto_3f

    :cond_39
    iget-object v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->t:[B

    aget-byte v0, v0, v1

    and-int/lit16 v4, v0, 0xff

    :goto_3f
    return v4
.end method

.method public read([B)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lnet/lingala/zip4j/io/PartInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-long v0, p3

    .line 9
    iget-wide v2, p0, Lnet/lingala/zip4j/io/PartInputStream;->q:J

    iget-wide v4, p0, Lnet/lingala/zip4j/io/PartInputStream;->p:J

    sub-long v6, v2, v4

    cmp-long v8, v0, v6

    if-lez v8, :cond_14

    sub-long/2addr v2, v4

    long-to-int p3, v2

    if-nez p3, :cond_14

    .line 10
    invoke-virtual {p0}, Lnet/lingala/zip4j/io/PartInputStream;->c()V

    const/4 p1, -0x1

    return p1

    .line 11
    :cond_14
    iget-object v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->r:Lnet/lingala/zip4j/unzip/UnzipEngine;

    invoke-virtual {v0}, Lnet/lingala/zip4j/unzip/UnzipEngine;->i()Lnet/lingala/zip4j/crypto/IDecrypter;

    move-result-object v0

    instance-of v0, v0, Lnet/lingala/zip4j/crypto/AESDecrypter;

    if-eqz v0, :cond_2d

    .line 12
    iget-wide v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->p:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iget-wide v2, p0, Lnet/lingala/zip4j/io/PartInputStream;->q:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_2d

    .line 13
    rem-int/lit8 v0, p3, 0x10

    if-eqz v0, :cond_2d

    sub-int/2addr p3, v0

    .line 14
    :cond_2d
    iget-object v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->o:Ljava/io/RandomAccessFile;

    monitor-enter v0

    .line 15
    :try_start_30
    iget-object v1, p0, Lnet/lingala/zip4j/io/PartInputStream;->o:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    iput v1, p0, Lnet/lingala/zip4j/io/PartInputStream;->x:I

    if-ge v1, p3, :cond_68

    .line 16
    iget-object v1, p0, Lnet/lingala/zip4j/io/PartInputStream;->r:Lnet/lingala/zip4j/unzip/UnzipEngine;

    invoke-virtual {v1}, Lnet/lingala/zip4j/unzip/UnzipEngine;->p()Lnet/lingala/zip4j/model/ZipModel;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipModel;->k()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 17
    iget-object v1, p0, Lnet/lingala/zip4j/io/PartInputStream;->o:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 18
    iget-object v1, p0, Lnet/lingala/zip4j/io/PartInputStream;->r:Lnet/lingala/zip4j/unzip/UnzipEngine;

    invoke-virtual {v1}, Lnet/lingala/zip4j/unzip/UnzipEngine;->s()Ljava/io/RandomAccessFile;

    move-result-object v1

    iput-object v1, p0, Lnet/lingala/zip4j/io/PartInputStream;->o:Ljava/io/RandomAccessFile;

    .line 19
    iget v2, p0, Lnet/lingala/zip4j/io/PartInputStream;->x:I

    if-gez v2, :cond_5a

    const/4 v2, 0x0

    iput v2, p0, Lnet/lingala/zip4j/io/PartInputStream;->x:I

    .line 20
    :cond_5a
    iget v2, p0, Lnet/lingala/zip4j/io/PartInputStream;->x:I

    sub-int/2addr p3, v2

    invoke-virtual {v1, p1, v2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p3

    if-lez p3, :cond_68

    .line 21
    iget v1, p0, Lnet/lingala/zip4j/io/PartInputStream;->x:I

    add-int/2addr v1, p3

    iput v1, p0, Lnet/lingala/zip4j/io/PartInputStream;->x:I

    .line 22
    :cond_68
    monitor-exit v0
    :try_end_69
    .catchall {:try_start_30 .. :try_end_69} :catchall_96

    .line 23
    iget p3, p0, Lnet/lingala/zip4j/io/PartInputStream;->x:I

    if-lez p3, :cond_88

    .line 24
    iget-object v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->s:Lnet/lingala/zip4j/crypto/IDecrypter;

    if-eqz v0, :cond_80

    .line 25
    :try_start_71
    invoke-interface {v0, p1, p2, p3}, Lnet/lingala/zip4j/crypto/IDecrypter;->a([BII)I
    :try_end_74
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_71 .. :try_end_74} :catch_75

    goto :goto_80

    :catch_75
    move-exception p1

    .line 26
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 27
    :cond_80
    :goto_80
    iget-wide p1, p0, Lnet/lingala/zip4j/io/PartInputStream;->p:J

    iget p3, p0, Lnet/lingala/zip4j/io/PartInputStream;->x:I

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lnet/lingala/zip4j/io/PartInputStream;->p:J

    .line 28
    :cond_88
    iget-wide p1, p0, Lnet/lingala/zip4j/io/PartInputStream;->p:J

    iget-wide v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->q:J

    cmp-long p3, p1, v0

    if-ltz p3, :cond_93

    .line 29
    invoke-virtual {p0}, Lnet/lingala/zip4j/io/PartInputStream;->c()V

    .line 30
    :cond_93
    iget p1, p0, Lnet/lingala/zip4j/io/PartInputStream;->x:I

    return p1

    :catchall_96
    move-exception p1

    .line 31
    :try_start_97
    monitor-exit v0
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_96

    throw p1
.end method

.method public skip(J)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_16

    .line 1
    iget-wide v0, p0, Lnet/lingala/zip4j/io/PartInputStream;->q:J

    iget-wide v2, p0, Lnet/lingala/zip4j/io/PartInputStream;->p:J

    sub-long v4, v0, v2

    cmp-long v6, p1, v4

    if-lez v6, :cond_12

    sub-long p1, v0, v2

    :cond_12
    add-long/2addr v2, p1

    .line 2
    iput-wide v2, p0, Lnet/lingala/zip4j/io/PartInputStream;->p:J

    return-wide p1

    .line 3
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
