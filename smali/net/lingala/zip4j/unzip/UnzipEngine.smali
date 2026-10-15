###### Class net.lingala.zip4j.unzip.UnzipEngine (net.lingala.zip4j.unzip.UnzipEngine)
.class public Lnet/lingala/zip4j/unzip/UnzipEngine;
.super Ljava/lang/Object;
.source "UnzipEngine.java"


# instance fields
.field private a:Lnet/lingala/zip4j/model/ZipModel;

.field private b:Lnet/lingala/zip4j/model/FileHeader;

.field private c:I

.field private d:Lnet/lingala/zip4j/model/LocalFileHeader;

.field private e:Lnet/lingala/zip4j/crypto/IDecrypter;

.field private f:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->c:I

    if-eqz p1, :cond_16

    if-eqz p2, :cond_16

    .line 3
    iput-object p1, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->a:Lnet/lingala/zip4j/model/ZipModel;

    .line 4
    iput-object p2, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->b:Lnet/lingala/zip4j/model/FileHeader;

    .line 5
    new-instance p1, Ljava/util/zip/CRC32;

    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    iput-object p1, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->f:Ljava/util/zip/CRC32;

    return-void

    .line 6
    :cond_16
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "Invalid parameters passed to StoreUnzip. One or more of the parameters were null"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lnet/lingala/zip4j/model/AESExtraDataRecord;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_20

    .line 1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->a()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1d

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x3

    if-ne p1, v0, :cond_12

    const/16 p1, 0x10

    return p1

    .line 2
    :cond_12
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "unable to determine salt length: invalid aes key strength"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1a
    const/16 p1, 0xc

    return p1

    :cond_1d
    const/16 p1, 0x8

    return p1

    .line 3
    :cond_20
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "unable to determine salt length: AESExtraDataRecord is null"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private c()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-direct {p0}, Lnet/lingala/zip4j/unzip/UnzipEngine;->d()Ljava/io/RandomAccessFile;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 2
    new-instance v1, Ljava/io/RandomAccessFile;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->a:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipModel;->j()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v3, "r"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    .line 3
    :cond_1a
    new-instance v1, Lnet/lingala/zip4j/core/HeaderReader;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/core/HeaderReader;-><init>(Ljava/io/RandomAccessFile;)V

    .line 4
    iget-object v2, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->b:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/core/HeaderReader;->n(Lnet/lingala/zip4j/model/FileHeader;)Lnet/lingala/zip4j/model/LocalFileHeader;

    move-result-object v1

    iput-object v1, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->d:Lnet/lingala/zip4j/model/LocalFileHeader;

    if-eqz v1, :cond_3f

    .line 5
    invoke-virtual {v1}, Lnet/lingala/zip4j/model/LocalFileHeader;->c()I

    move-result v1

    iget-object v2, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->b:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/FileHeader;->c()I

    move-result v2
    :try_end_33
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_33} :catch_49
    .catchall {:try_start_1 .. :try_end_33} :catchall_47

    if-eq v1, v2, :cond_3a

    const/4 v1, 0x0

    .line 6
    :try_start_36
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_39
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_39

    :catch_39
    return v1

    :cond_3a
    const/4 v1, 0x1

    :try_start_3b
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_3e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_3e

    :catch_3e
    return v1

    .line 7
    :cond_3f
    :try_start_3f
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "error reading local file header. Is this a valid zip file?"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_47
    .catch Ljava/io/FileNotFoundException; {:try_start_3f .. :try_end_47} :catch_49
    .catchall {:try_start_3f .. :try_end_47} :catchall_47

    :catchall_47
    move-exception v1

    goto :goto_50

    :catch_49
    move-exception v1

    .line 8
    :try_start_4a
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v2, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_50
    .catchall {:try_start_4a .. :try_end_50} :catchall_47

    :goto_50
    if-eqz v0, :cond_55

    .line 9
    :try_start_52
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_55
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_55} :catch_55

    .line 10
    :catch_55
    :cond_55
    throw v1
.end method

.method private d()Ljava/io/RandomAccessFile;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->a:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->k()Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 2
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->b:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/FileHeader;->f()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 3
    iput v1, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->c:I

    .line 4
    iget-object v2, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->a:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ZipModel;->j()Ljava/lang/String;

    move-result-object v2

    .line 5
    iget-object v3, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->a:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipModel;->b()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v3

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->d()I

    move-result v3

    const/4 v4, 0x0

    if-ne v0, v3, :cond_2c

    .line 6
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->a:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->j()Ljava/lang/String;

    move-result-object v0

    goto :goto_6b

    :cond_2c
    const/16 v3, 0x9

    const-string v5, "."

    if-lt v0, v3, :cond_4f

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".z"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6b

    .line 8
    :cond_4f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".z0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    :goto_6b
    :try_start_6b
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->c:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_92

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 11
    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 12
    invoke-static {v0, v4}, Lnet/lingala/zip4j/util/Raw;->e([BI)I

    move-result v0

    int-to-long v2, v0

    const-wide/32 v4, 0x8074b50

    cmp-long v0, v2, v4

    if-nez v0, :cond_8a

    goto :goto_92

    .line 13
    :cond_8a
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "invalid first part split file signature"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_92
    .catch Ljava/io/FileNotFoundException; {:try_start_6b .. :try_end_92} :catch_9a
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_92} :catch_93

    :cond_92
    :goto_92
    return-object v1

    :catch_93
    move-exception v0

    .line 14
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_9a
    move-exception v0

    .line 15
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_a1
    const/4 v0, 0x0

    return-object v0
.end method

.method private e(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_36

    .line 1
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_8
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    goto :goto_36

    :catchall_6
    move-exception p1

    goto :goto_30

    :catch_8
    move-exception p1

    .line 2
    :try_start_9
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/lingala/zip4j/util/Zip4jUtil;->u(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 3
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, " - Wrong Password?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_20

    goto :goto_2a

    .line 4
    :cond_20
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2a
    .catchall {:try_start_9 .. :try_end_2a} :catchall_6

    :cond_2a
    :goto_2a
    if-eqz p2, :cond_39

    .line 5
    :goto_2c
    :try_start_2c
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_39

    goto :goto_39

    :goto_30
    if-eqz p2, :cond_35

    :try_start_32
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_35

    .line 6
    :catch_35
    :cond_35
    throw p1

    :cond_36
    :goto_36
    if-eqz p2, :cond_39

    goto :goto_2c

    :catch_39
    :cond_39
    :goto_39
    return-void
.end method

.method private f(Ljava/lang/String;)Ljava/io/RandomAccessFile;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->a:Lnet/lingala/zip4j/model/ZipModel;

    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/lingala/zip4j/util/Zip4jUtil;->u(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 2
    :try_start_e
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->a:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->k()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 3
    invoke-direct {p0}, Lnet/lingala/zip4j/unzip/UnzipEngine;->d()Ljava/io/RandomAccessFile;

    move-result-object p1

    goto :goto_2c

    .line 4
    :cond_1b
    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->a:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ZipModel;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, p1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_2b} :catch_34
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2b} :catch_2d

    move-object p1, v0

    :goto_2c
    return-object p1

    :catch_2d
    move-exception p1

    .line 5
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_34
    move-exception p1

    .line 6
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 7
    :cond_3b
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "input parameter is null in getFilePointer"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private g(Ljava/io/RandomAccessFile;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v0, 0x2

    :try_start_1
    new-array v0, v0, [B

    .line 1
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception p1

    .line 2
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private h(Ljava/io/RandomAccessFile;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->d:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->a()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_a
    :try_start_a
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->d:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->a()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v0

    .line 3
    invoke-direct {p0, v0}, Lnet/lingala/zip4j/unzip/UnzipEngine;->a(Lnet/lingala/zip4j/model/AESExtraDataRecord;)I

    move-result v0

    new-array v0, v0, [B

    .line 4
    iget-object v1, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->d:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/LocalFileHeader;->l()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 5
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_22} :catch_23

    return-object v0

    :catch_23
    move-exception p1

    .line 6
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lnet/lingala/zip4j/util/Zip4jUtil;->u(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_d

    .line 2
    :cond_7
    iget-object p2, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->b:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/FileHeader;->k()Ljava/lang/String;

    move-result-object p2

    .line 3
    :goto_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "file.separator"

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private n(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileOutputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->u(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 2
    :try_start_6
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1, p2}, Lnet/lingala/zip4j/unzip/UnzipEngine;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_20

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 5
    :cond_20
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_29

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 7
    :cond_29
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2e
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_2e} :catch_2f

    return-object p1

    :catch_2f
    move-exception p1

    .line 8
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 9
    :cond_36
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "invalid output path"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private o(Ljava/io/RandomAccessFile;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    const/16 v0, 0xc

    :try_start_2
    new-array v1, v0, [B

    .line 1
    iget-object v2, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->d:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/LocalFileHeader;->l()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p1, v1, v2, v0}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_11} :catch_19
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_11} :catch_12

    return-object v1

    :catch_12
    move-exception p1

    .line 3
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_19
    move-exception p1

    .line 4
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private q(Ljava/io/RandomAccessFile;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->d:Lnet/lingala/zip4j/model/LocalFileHeader;

    if-eqz v0, :cond_11

    .line 2
    :try_start_4
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/unzip/UnzipEngine;->r(Ljava/io/RandomAccessFile;)V
    :try_end_7
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_4 .. :try_end_7} :catch_f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p1

    .line 3
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_f
    move-exception p1

    .line 4
    throw p1

    .line 5
    :cond_11
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "local file header is null, cannot initialize input stream"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private r(Ljava/io/RandomAccessFile;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->d:Lnet/lingala/zip4j/model/LocalFileHeader;

    if-eqz v0, :cond_45

    .line 2
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->q()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 3
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->d:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->e()I

    move-result v0

    if-nez v0, :cond_20

    .line 4
    new-instance v0, Lnet/lingala/zip4j/crypto/StandardDecrypter;

    iget-object v1, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->b:Lnet/lingala/zip4j/model/FileHeader;

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/unzip/UnzipEngine;->o(Ljava/io/RandomAccessFile;)[B

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lnet/lingala/zip4j/crypto/StandardDecrypter;-><init>(Lnet/lingala/zip4j/model/FileHeader;[B)V

    iput-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->e:Lnet/lingala/zip4j/crypto/IDecrypter;

    goto :goto_44

    .line 5
    :cond_20
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->d:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->e()I

    move-result v0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_3c

    .line 6
    new-instance v0, Lnet/lingala/zip4j/crypto/AESDecrypter;

    iget-object v1, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->d:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/unzip/UnzipEngine;->h(Ljava/io/RandomAccessFile;)[B

    move-result-object v2

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/unzip/UnzipEngine;->g(Ljava/io/RandomAccessFile;)[B

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lnet/lingala/zip4j/crypto/AESDecrypter;-><init>(Lnet/lingala/zip4j/model/LocalFileHeader;[B[B)V

    iput-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->e:Lnet/lingala/zip4j/crypto/IDecrypter;

    goto :goto_44

    .line 7
    :cond_3c
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "unsupported encryption method"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_44
    :goto_44
    return-void

    .line 8
    :cond_45
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "local file header is null, cannot init decrypter"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public b()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->b:Lnet/lingala/zip4j/model/FileHeader;

    if-eqz v0, :cond_c2

    .line 2
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/FileHeader;->g()I

    move-result v0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_6e

    .line 3
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->e:Lnet/lingala/zip4j/crypto/IDecrypter;

    if-eqz v0, :cond_c2

    instance-of v1, v0, Lnet/lingala/zip4j/crypto/AESDecrypter;

    if-eqz v1, :cond_c2

    .line 4
    check-cast v0, Lnet/lingala/zip4j/crypto/AESDecrypter;

    invoke-virtual {v0}, Lnet/lingala/zip4j/crypto/AESDecrypter;->c()[B

    move-result-object v0

    .line 5
    iget-object v1, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->e:Lnet/lingala/zip4j/crypto/IDecrypter;

    check-cast v1, Lnet/lingala/zip4j/crypto/AESDecrypter;

    invoke-virtual {v1}, Lnet/lingala/zip4j/crypto/AESDecrypter;->f()[B

    move-result-object v1

    const/16 v2, 0xa

    new-array v3, v2, [B

    if-eqz v1, :cond_51

    const/4 v4, 0x0

    .line 6
    invoke-static {v0, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_34

    goto/16 :goto_c2

    .line 8
    :cond_34
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid CRC (MAC) for file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->b:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/FileHeader;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_51
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CRC (MAC) check failed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->b:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/FileHeader;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_6e
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->f:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 11
    iget-object v2, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->b:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/FileHeader;->d()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c2

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid CRC for file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->b:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/FileHeader;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->d:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/LocalFileHeader;->q()Z

    move-result v1

    if-eqz v1, :cond_bc

    iget-object v1, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->d:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/LocalFileHeader;->e()I

    move-result v1

    if-nez v1, :cond_bc

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - Wrong Password?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 15
    :cond_bc
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c2
    :goto_c2
    return-void
.end method

.method public i()Lnet/lingala/zip4j/crypto/IDecrypter;
    .registers 2

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->e:Lnet/lingala/zip4j/crypto/IDecrypter;

    return-object v0
.end method

.method public j()Lnet/lingala/zip4j/model/FileHeader;
    .registers 2

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->b:Lnet/lingala/zip4j/model/FileHeader;

    return-object v0
.end method

.method public k()Lnet/lingala/zip4j/io/ZipInputStream;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->b:Lnet/lingala/zip4j/model/FileHeader;

    if-eqz v0, :cond_111

    const/4 v0, 0x0

    :try_start_5
    const-string v1, "r"

    .line 2
    invoke-direct {p0, v1}, Lnet/lingala/zip4j/unzip/UnzipEngine;->f(Ljava/lang/String;)Ljava/io/RandomAccessFile;

    move-result-object v0

    const-string v1, "local header and file header do not match"

    .line 3
    invoke-direct {p0}, Lnet/lingala/zip4j/unzip/UnzipEngine;->c()Z

    move-result v2

    if-eqz v2, :cond_f8

    .line 4
    invoke-direct {p0, v0}, Lnet/lingala/zip4j/unzip/UnzipEngine;->q(Ljava/io/RandomAccessFile;)V

    .line 5
    iget-object v1, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->d:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/LocalFileHeader;->b()J

    move-result-wide v1

    .line 6
    iget-object v3, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->d:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/LocalFileHeader;->l()J

    move-result-wide v3

    .line 7
    iget-object v5, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->d:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/LocalFileHeader;->q()Z

    move-result v5

    const/16 v6, 0x63

    if-eqz v5, :cond_89

    .line 8
    iget-object v5, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->d:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/LocalFileHeader;->e()I

    move-result v5

    if-ne v5, v6, :cond_7d

    .line 9
    iget-object v5, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->e:Lnet/lingala/zip4j/crypto/IDecrypter;

    instance-of v7, v5, Lnet/lingala/zip4j/crypto/AESDecrypter;

    if-eqz v7, :cond_60

    .line 10
    check-cast v5, Lnet/lingala/zip4j/crypto/AESDecrypter;

    invoke-virtual {v5}, Lnet/lingala/zip4j/crypto/AESDecrypter;->e()I

    move-result v5

    iget-object v7, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->e:Lnet/lingala/zip4j/crypto/IDecrypter;

    check-cast v7, Lnet/lingala/zip4j/crypto/AESDecrypter;

    invoke-virtual {v7}, Lnet/lingala/zip4j/crypto/AESDecrypter;->d()I

    move-result v7

    add-int/2addr v5, v7

    add-int/lit8 v5, v5, 0xa

    int-to-long v7, v5

    sub-long/2addr v1, v7

    .line 11
    iget-object v5, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->e:Lnet/lingala/zip4j/crypto/IDecrypter;

    check-cast v5, Lnet/lingala/zip4j/crypto/AESDecrypter;

    invoke-virtual {v5}, Lnet/lingala/zip4j/crypto/AESDecrypter;->e()I

    move-result v5

    iget-object v7, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->e:Lnet/lingala/zip4j/crypto/IDecrypter;

    check-cast v7, Lnet/lingala/zip4j/crypto/AESDecrypter;

    invoke-virtual {v7}, Lnet/lingala/zip4j/crypto/AESDecrypter;->d()I

    move-result v7

    add-int/2addr v5, v7

    int-to-long v7, v5

    goto :goto_88

    .line 12
    :cond_60
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid decryptor when trying to calculate compressed size for AES encrypted file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->b:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/FileHeader;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 13
    :cond_7d
    iget-object v5, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->d:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/LocalFileHeader;->e()I

    move-result v5

    if-nez v5, :cond_89

    const-wide/16 v7, 0xc

    sub-long/2addr v1, v7

    :goto_88
    add-long/2addr v3, v7

    :cond_89
    move-wide v7, v1

    move-wide v4, v3

    .line 14
    iget-object v1, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->b:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/FileHeader;->c()I

    move-result v1

    .line 15
    iget-object v2, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->b:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/FileHeader;->g()I

    move-result v2

    if-ne v2, v6, :cond_c9

    .line 16
    iget-object v1, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->b:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/FileHeader;->a()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v1

    if-eqz v1, :cond_ac

    .line 17
    iget-object v1, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->b:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/FileHeader;->a()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->b()I

    move-result v1

    goto :goto_c9

    .line 18
    :cond_ac
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AESExtraDataRecord does not exist for AES encrypted file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->b:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/FileHeader;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 19
    :cond_c9
    :goto_c9
    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    if-eqz v1, :cond_e9

    const/16 v2, 0x8

    if-ne v1, v2, :cond_e1

    .line 20
    new-instance v1, Lnet/lingala/zip4j/io/ZipInputStream;

    new-instance v9, Lnet/lingala/zip4j/io/InflaterInputStream;

    move-object v2, v9

    move-object v3, v0

    move-wide v6, v7

    move-object v8, p0

    invoke-direct/range {v2 .. v8}, Lnet/lingala/zip4j/io/InflaterInputStream;-><init>(Ljava/io/RandomAccessFile;JJLnet/lingala/zip4j/unzip/UnzipEngine;)V

    invoke-direct {v1, v9}, Lnet/lingala/zip4j/io/ZipInputStream;-><init>(Lnet/lingala/zip4j/io/BaseInputStream;)V

    return-object v1

    .line 21
    :cond_e1
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "compression type not supported"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 22
    :cond_e9
    new-instance v1, Lnet/lingala/zip4j/io/ZipInputStream;

    new-instance v9, Lnet/lingala/zip4j/io/PartInputStream;

    move-object v2, v9

    move-object v3, v0

    move-wide v6, v7

    move-object v8, p0

    invoke-direct/range {v2 .. v8}, Lnet/lingala/zip4j/io/PartInputStream;-><init>(Ljava/io/RandomAccessFile;JJLnet/lingala/zip4j/unzip/UnzipEngine;)V

    invoke-direct {v1, v9}, Lnet/lingala/zip4j/io/ZipInputStream;-><init>(Lnet/lingala/zip4j/io/BaseInputStream;)V

    return-object v1

    .line 23
    :cond_f8
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v2, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_fe
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_5 .. :try_end_fe} :catch_10a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_fe} :catch_fe

    :catch_fe
    move-exception v1

    if-eqz v0, :cond_104

    .line 24
    :try_start_101
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_104
    .catch Ljava/io/IOException; {:try_start_101 .. :try_end_104} :catch_104

    .line 25
    :catch_104
    :cond_104
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_10a
    move-exception v1

    if-eqz v0, :cond_110

    .line 26
    :try_start_10d
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_110
    .catch Ljava/io/IOException; {:try_start_10d .. :try_end_110} :catch_110

    .line 27
    :catch_110
    :cond_110
    throw v1

    .line 28
    :cond_111
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "file header is null, cannot get inputstream"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public l()Lnet/lingala/zip4j/model/LocalFileHeader;
    .registers 2

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->d:Lnet/lingala/zip4j/model/LocalFileHeader;

    return-object v0
.end method

.method public p()Lnet/lingala/zip4j/model/ZipModel;
    .registers 2

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->a:Lnet/lingala/zip4j/model/ZipModel;

    return-object v0
.end method

.method public s()Ljava/io/RandomAccessFile;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->a:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->j()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget v1, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->c:I

    iget-object v2, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->a:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ZipModel;->b()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v2

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->d()I

    move-result v2

    if-ne v1, v2, :cond_1b

    .line 3
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->a:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->j()Ljava/lang/String;

    move-result-object v0

    goto :goto_65

    .line 4
    :cond_1b
    iget v1, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->c:I

    const/16 v2, 0x9

    const-string v3, "."

    const/4 v4, 0x0

    if-lt v1, v2, :cond_45

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".z"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_65

    .line 6
    :cond_45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".z0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    :goto_65
    iget v1, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->c:I

    .line 8
    :try_start_6b
    invoke-static {v0}, Lnet/lingala/zip4j/util/Zip4jUtil;->b(Ljava/lang/String;)Z

    move-result v1
    :try_end_6f
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_6b .. :try_end_6f} :catch_90

    if-eqz v1, :cond_79

    .line 9
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 10
    :cond_79
    :try_start_79
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "zip split file does not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_90
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_79 .. :try_end_90} :catch_90

    :catch_90
    move-exception v0

    .line 11
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public t(Lnet/lingala/zip4j/progress/ProgressMonitor;Ljava/lang/String;Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->a:Lnet/lingala/zip4j/model/ZipModel;

    if-eqz v0, :cond_74

    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->b:Lnet/lingala/zip4j/model/FileHeader;

    if-eqz v0, :cond_74

    invoke-static {p2}, Lnet/lingala/zip4j/util/Zip4jUtil;->u(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_74

    const/16 v0, 0x1000

    const/4 v1, 0x0

    :try_start_11
    new-array v0, v0, [B

    .line 2
    invoke-virtual {p0}, Lnet/lingala/zip4j/unzip/UnzipEngine;->k()Lnet/lingala/zip4j/io/ZipInputStream;

    move-result-object v2
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_17} :catch_67
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_17} :catch_5f
    .catchall {:try_start_11 .. :try_end_17} :catchall_5c

    .line 3
    :try_start_17
    invoke-direct {p0, p2, p3}, Lnet/lingala/zip4j/unzip/UnzipEngine;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 4
    :cond_1b
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3b

    const/4 v4, 0x0

    .line 5
    invoke-virtual {v1, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v5, v3

    .line 6
    invoke-virtual {p1, v5, v6}, Lnet/lingala/zip4j/progress/ProgressMonitor;->k(J)V

    .line 7
    invoke-virtual {p1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->d()Z

    move-result v3

    if-eqz v3, :cond_1b

    const/4 p2, 0x3

    .line 8
    invoke-virtual {p1, p2}, Lnet/lingala/zip4j/progress/ProgressMonitor;->h(I)V

    .line 9
    invoke-virtual {p1, v4}, Lnet/lingala/zip4j/progress/ProgressMonitor;->i(I)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_37} :catch_58
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_37} :catch_54
    .catchall {:try_start_17 .. :try_end_37} :catchall_50

    .line 10
    invoke-direct {p0, v2, v1}, Lnet/lingala/zip4j/unzip/UnzipEngine;->e(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void

    .line 11
    :cond_3b
    :try_start_3b
    invoke-direct {p0, v2, v1}, Lnet/lingala/zip4j/unzip/UnzipEngine;->e(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 12
    iget-object p1, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->b:Lnet/lingala/zip4j/model/FileHeader;

    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p2, p3}, Lnet/lingala/zip4j/unzip/UnzipEngine;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0, p4}, Lnet/lingala/zip4j/unzip/UnzipUtil;->a(Lnet/lingala/zip4j/model/FileHeader;Ljava/io/File;Lnet/lingala/zip4j/model/UnzipParameters;)V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_4c} :catch_58
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_4c} :catch_54
    .catchall {:try_start_3b .. :try_end_4c} :catchall_50

    .line 13
    invoke-direct {p0, v2, v1}, Lnet/lingala/zip4j/unzip/UnzipEngine;->e(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void

    :catchall_50
    move-exception p1

    move-object p2, v1

    move-object v1, v2

    goto :goto_70

    :catch_54
    move-exception p1

    move-object p2, v1

    move-object v1, v2

    goto :goto_61

    :catch_58
    move-exception p1

    move-object p2, v1

    move-object v1, v2

    goto :goto_69

    :catchall_5c
    move-exception p1

    move-object p2, v1

    goto :goto_70

    :catch_5f
    move-exception p1

    move-object p2, v1

    .line 14
    :goto_61
    :try_start_61
    new-instance p3, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p3, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw p3

    :catch_67
    move-exception p1

    move-object p2, v1

    .line 15
    :goto_69
    new-instance p3, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p3, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw p3
    :try_end_6f
    .catchall {:try_start_61 .. :try_end_6f} :catchall_6f

    :catchall_6f
    move-exception p1

    .line 16
    :goto_70
    invoke-direct {p0, v1, p2}, Lnet/lingala/zip4j/unzip/UnzipEngine;->e(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    throw p1

    .line 17
    :cond_74
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "Invalid parameters passed during unzipping file. One or more of the parameters were null"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    goto :goto_7d

    :goto_7c
    throw p1

    :goto_7d
    goto :goto_7c
.end method

.method public u(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->f:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1}, Ljava/util/zip/CRC32;->update(I)V

    return-void
.end method

.method public v([BII)V
    .registers 5

    if-eqz p1, :cond_7

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/UnzipEngine;->f:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    :cond_7
    return-void
.end method
