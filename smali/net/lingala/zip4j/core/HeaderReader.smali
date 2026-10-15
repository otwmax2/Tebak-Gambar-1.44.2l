###### Class net.lingala.zip4j.core.HeaderReader (net.lingala.zip4j.core.HeaderReader)
.class public Lnet/lingala/zip4j/core/HeaderReader;
.super Ljava/lang/Object;
.source "HeaderReader.java"


# instance fields
.field private a:Ljava/io/RandomAccessFile;

.field private b:Lnet/lingala/zip4j/model/ZipModel;


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    .line 3
    iput-object p1, p0, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    return-void
.end method

.method private a([B)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_32

    .line 1
    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2a

    const/16 v0, 0x8

    new-array v0, v0, [B

    const/4 v2, 0x0

    .line 2
    aget-byte v3, p1, v2

    aput-byte v3, v0, v2

    const/4 v3, 0x1

    aget-byte v4, p1, v3

    aput-byte v4, v0, v3

    const/4 v3, 0x2

    aget-byte v4, p1, v3

    aput-byte v4, v0, v3

    const/4 v3, 0x3

    aget-byte p1, p1, v3

    aput-byte p1, v0, v3

    aput-byte v2, v0, v1

    const/4 p1, 0x5

    aput-byte v2, v0, p1

    const/4 p1, 0x6

    aput-byte v2, v0, p1

    const/4 p1, 0x7

    aput-byte v2, v0, p1

    return-object v0

    .line 3
    :cond_2a
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "invalid byte length, cannot expand to 8 bytes"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_32
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "input parameter is null, cannot expand to 8 bytes"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b(Ljava/util/ArrayList;)Lnet/lingala/zip4j/model/AESExtraDataRecord;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :goto_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_6a

    .line 2
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/lingala/zip4j/model/ExtraDataRecord;

    if-nez v3, :cond_15

    goto :goto_67

    .line 3
    :cond_15
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ExtraDataRecord;->b()J

    move-result-wide v4

    const-wide/32 v6, 0x9901

    cmp-long v8, v4, v6

    if-nez v8, :cond_67

    .line 4
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ExtraDataRecord;->a()[B

    move-result-object p1

    if-eqz p1, :cond_5f

    .line 5
    new-instance p1, Lnet/lingala/zip4j/model/AESExtraDataRecord;

    invoke-direct {p1}, Lnet/lingala/zip4j/model/AESExtraDataRecord;-><init>()V

    .line 6
    invoke-virtual {p1, v6, v7}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->j(J)V

    .line 7
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ExtraDataRecord;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->i(I)V

    .line 8
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ExtraDataRecord;->a()[B

    move-result-object v0

    .line 9
    invoke-static {v0, v1}, Lnet/lingala/zip4j/util/Raw;->i([BI)I

    move-result v2

    invoke-virtual {p1, v2}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->l(I)V

    const/4 v2, 0x2

    new-array v3, v2, [B

    .line 10
    invoke-static {v0, v2, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, v1}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->k(Ljava/lang/String;)V

    const/4 v1, 0x4

    .line 12
    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p1, v1}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->g(I)V

    const/4 v1, 0x5

    .line 13
    invoke-static {v0, v1}, Lnet/lingala/zip4j/util/Raw;->i([BI)I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->h(I)V

    return-object p1

    .line 14
    :cond_5f
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "corrput AES extra data records"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_67
    :goto_67
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_6a
    return-object v0
.end method

.method private d(Lnet/lingala/zip4j/model/FileHeader;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_26

    .line 1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->i()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->i()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_13

    goto :goto_25

    .line 2
    :cond_13
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->i()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/lingala/zip4j/core/HeaderReader;->b(Ljava/util/ArrayList;)Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 3
    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/FileHeader;->y(Lnet/lingala/zip4j/model/AESExtraDataRecord;)V

    const/16 v0, 0x63

    .line 4
    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/FileHeader;->H(I)V

    :cond_25
    :goto_25
    return-void

    .line 5
    :cond_26
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "file header is null in reading Zip64 Extended Info"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private e(Lnet/lingala/zip4j/model/LocalFileHeader;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_26

    .line 1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->f()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->f()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_13

    goto :goto_25

    .line 2
    :cond_13
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->f()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/lingala/zip4j/core/HeaderReader;->b(Ljava/util/ArrayList;)Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 3
    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->s(Lnet/lingala/zip4j/model/AESExtraDataRecord;)V

    const/16 v0, 0x63

    .line 4
    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->z(I)V

    :cond_25
    :goto_25
    return-void

    .line 5
    :cond_26
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "file header is null in reading Zip64 Extended Info"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private f(Lnet/lingala/zip4j/model/FileHeader;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_1d

    if-eqz p1, :cond_15

    .line 2
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->j()I

    move-result v0

    if-gtz v0, :cond_d

    return-void

    .line 3
    :cond_d
    invoke-direct {p0, v0}, Lnet/lingala/zip4j/core/HeaderReader;->l(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/FileHeader;->J(Ljava/util/ArrayList;)V

    return-void

    .line 4
    :cond_15
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "file header is null"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1d
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "invalid file handler when trying to read extra data record"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private g(Lnet/lingala/zip4j/model/LocalFileHeader;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_1d

    if-eqz p1, :cond_15

    .line 2
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->g()I

    move-result v0

    if-gtz v0, :cond_d

    return-void

    .line 3
    :cond_d
    invoke-direct {p0, v0}, Lnet/lingala/zip4j/core/HeaderReader;->l(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->A(Ljava/util/ArrayList;)V

    return-void

    .line 4
    :cond_15
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "file header is null"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1d
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "invalid file handler when trying to read extra data record"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private h(Lnet/lingala/zip4j/model/FileHeader;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_6f

    .line 1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->i()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_6e

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->i()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_13

    goto :goto_6e

    .line 2
    :cond_13
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->i()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->r()J

    move-result-wide v3

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->b()J

    move-result-wide v5

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->o()J

    move-result-wide v7

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->f()I

    move-result v9

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lnet/lingala/zip4j/core/HeaderReader;->q(Ljava/util/ArrayList;JJJI)Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v0

    if-eqz v0, :cond_6e

    .line 3
    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/FileHeader;->Y(Lnet/lingala/zip4j/model/Zip64ExtendedInfo;)V

    .line 4
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->d()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_42

    .line 5
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->d()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lnet/lingala/zip4j/model/FileHeader;->V(J)V

    .line 6
    :cond_42
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->a()J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_51

    .line 7
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->a()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lnet/lingala/zip4j/model/FileHeader;->z(J)V

    .line 8
    :cond_51
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->c()J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_60

    .line 9
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->c()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lnet/lingala/zip4j/model/FileHeader;->S(J)V

    .line 10
    :cond_60
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->b()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6e

    .line 11
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/FileHeader;->F(I)V

    :cond_6e
    :goto_6e
    return-void

    .line 12
    :cond_6f
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "file header is null in reading Zip64 Extended Info"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private i(Lnet/lingala/zip4j/model/LocalFileHeader;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_4d

    .line 1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->f()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4c

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->f()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_13

    goto :goto_4c

    .line 2
    :cond_13
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->f()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->o()J

    move-result-wide v3

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->b()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    const/4 v9, -0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lnet/lingala/zip4j/core/HeaderReader;->q(Ljava/util/ArrayList;JJJI)Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 3
    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->N(Lnet/lingala/zip4j/model/Zip64ExtendedInfo;)V

    .line 4
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->d()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3d

    .line 5
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->d()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lnet/lingala/zip4j/model/LocalFileHeader;->K(J)V

    .line 6
    :cond_3d
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->a()J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_4c

    .line 7
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->a()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lnet/lingala/zip4j/model/LocalFileHeader;->t(J)V

    :cond_4c
    :goto_4c
    return-void

    .line 8
    :cond_4d
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "file header is null in reading Zip64 Extended Info"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private j()Lnet/lingala/zip4j/model/CentralDirectory;
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "file.separator"

    const-string v2, ":"

    .line 1
    iget-object v3, v1, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    if-eqz v3, :cond_27f

    .line 2
    iget-object v3, v1, Lnet/lingala/zip4j/core/HeaderReader;->b:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipModel;->b()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v3

    if-eqz v3, :cond_277

    .line 3
    :try_start_12
    new-instance v3, Lnet/lingala/zip4j/model/CentralDirectory;

    invoke-direct {v3}, Lnet/lingala/zip4j/model/CentralDirectory;-><init>()V

    .line 4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v5, v1, Lnet/lingala/zip4j/core/HeaderReader;->b:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/ZipModel;->b()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v5

    .line 6
    invoke-virtual {v5}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->f()J

    move-result-wide v6

    .line 7
    invoke-virtual {v5}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->h()I

    move-result v5

    .line 8
    iget-object v8, v1, Lnet/lingala/zip4j/core/HeaderReader;->b:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/ZipModel;->l()Z

    move-result v8

    if-eqz v8, :cond_47

    .line 9
    iget-object v5, v1, Lnet/lingala/zip4j/core/HeaderReader;->b:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/ZipModel;->i()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->b()J

    move-result-wide v6

    .line 10
    iget-object v5, v1, Lnet/lingala/zip4j/core/HeaderReader;->b:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/ZipModel;->i()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->d()J

    move-result-wide v8

    long-to-int v5, v8

    .line 11
    :cond_47
    iget-object v8, v1, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v8, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v6, 0x4

    new-array v6, v6, [B

    const/4 v7, 0x2

    new-array v8, v7, [B

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_54
    if-ge v10, v5, :cond_235

    .line 12
    new-instance v11, Lnet/lingala/zip4j/model/FileHeader;

    invoke-direct {v11}, Lnet/lingala/zip4j/model/FileHeader;-><init>()V

    .line 13
    iget-object v12, v1, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v12, v6}, Lnet/lingala/zip4j/core/HeaderReader;->m(Ljava/io/RandomAccessFile;[B)[B

    .line 14
    invoke-static {v6, v9}, Lnet/lingala/zip4j/util/Raw;->e([BI)I

    move-result v12

    int-to-long v13, v12

    const-wide/32 v15, 0x2014b50    # 1.6619997E-316

    const/4 v7, 0x1

    cmp-long v17, v13, v15

    if-nez v17, :cond_218

    .line 15
    invoke-virtual {v11, v12}, Lnet/lingala/zip4j/model/FileHeader;->U(I)V

    .line 16
    iget-object v12, v1, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v12, v8}, Lnet/lingala/zip4j/core/HeaderReader;->m(Ljava/io/RandomAccessFile;[B)[B

    .line 17
    invoke-static {v8, v9}, Lnet/lingala/zip4j/util/Raw;->i([BI)I

    move-result v12

    invoke-virtual {v11, v12}, Lnet/lingala/zip4j/model/FileHeader;->W(I)V

    .line 18
    iget-object v12, v1, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v12, v8}, Lnet/lingala/zip4j/core/HeaderReader;->m(Ljava/io/RandomAccessFile;[B)[B

    .line 19
    invoke-static {v8, v9}, Lnet/lingala/zip4j/util/Raw;->i([BI)I

    move-result v12

    invoke-virtual {v11, v12}, Lnet/lingala/zip4j/model/FileHeader;->X(I)V

    .line 20
    iget-object v12, v1, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v12, v8}, Lnet/lingala/zip4j/core/HeaderReader;->m(Ljava/io/RandomAccessFile;[B)[B

    .line 21
    invoke-static {v8, v9}, Lnet/lingala/zip4j/util/Raw;->i([BI)I

    move-result v12

    and-int/lit16 v12, v12, 0x800

    if-eqz v12, :cond_97

    const/4 v12, 0x1

    goto :goto_98

    :cond_97
    const/4 v12, 0x0

    :goto_98
    invoke-virtual {v11, v12}, Lnet/lingala/zip4j/model/FileHeader;->O(Z)V

    .line 22
    aget-byte v12, v8, v9

    and-int/lit8 v13, v12, 0x1

    if-eqz v13, :cond_a4

    .line 23
    invoke-virtual {v11, v7}, Lnet/lingala/zip4j/model/FileHeader;->G(Z)V

    .line 24
    :cond_a4
    invoke-virtual {v8}, [B->clone()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    invoke-virtual {v11, v13}, Lnet/lingala/zip4j/model/FileHeader;->P([B)V

    shr-int/lit8 v12, v12, 0x3

    if-ne v12, v7, :cond_b3

    const/4 v12, 0x1

    goto :goto_b4

    :cond_b3
    const/4 v12, 0x0

    .line 25
    :goto_b4
    invoke-virtual {v11, v12}, Lnet/lingala/zip4j/model/FileHeader;->D(Z)V

    .line 26
    iget-object v12, v1, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v12, v8}, Lnet/lingala/zip4j/core/HeaderReader;->m(Ljava/io/RandomAccessFile;[B)[B

    .line 27
    invoke-static {v8, v9}, Lnet/lingala/zip4j/util/Raw;->i([BI)I

    move-result v12

    invoke-virtual {v11, v12}, Lnet/lingala/zip4j/model/FileHeader;->A(I)V

    .line 28
    iget-object v12, v1, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v12, v6}, Lnet/lingala/zip4j/core/HeaderReader;->m(Ljava/io/RandomAccessFile;[B)[B

    .line 29
    invoke-static {v6, v9}, Lnet/lingala/zip4j/util/Raw;->e([BI)I

    move-result v12

    invoke-virtual {v11, v12}, Lnet/lingala/zip4j/model/FileHeader;->R(I)V

    .line 30
    iget-object v12, v1, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v12, v6}, Lnet/lingala/zip4j/core/HeaderReader;->m(Ljava/io/RandomAccessFile;[B)[B

    .line 31
    invoke-static {v6, v9}, Lnet/lingala/zip4j/util/Raw;->e([BI)I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Lnet/lingala/zip4j/model/FileHeader;->B(J)V

    .line 32
    invoke-virtual {v6}, [B->clone()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    invoke-virtual {v11, v12}, Lnet/lingala/zip4j/model/FileHeader;->C([B)V

    .line 33
    iget-object v12, v1, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v12, v6}, Lnet/lingala/zip4j/core/HeaderReader;->m(Ljava/io/RandomAccessFile;[B)[B

    .line 34
    invoke-direct {v1, v6}, Lnet/lingala/zip4j/core/HeaderReader;->a([B)[B

    move-result-object v12

    .line 35
    invoke-static {v12, v9}, Lnet/lingala/zip4j/util/Raw;->g([BI)J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lnet/lingala/zip4j/model/FileHeader;->z(J)V

    .line 36
    iget-object v12, v1, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v12, v6}, Lnet/lingala/zip4j/core/HeaderReader;->m(Ljava/io/RandomAccessFile;[B)[B

    .line 37
    invoke-direct {v1, v6}, Lnet/lingala/zip4j/core/HeaderReader;->a([B)[B

    move-result-object v12

    .line 38
    invoke-static {v12, v9}, Lnet/lingala/zip4j/util/Raw;->g([BI)J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lnet/lingala/zip4j/model/FileHeader;->V(J)V

    .line 39
    iget-object v12, v1, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v12, v8}, Lnet/lingala/zip4j/core/HeaderReader;->m(Ljava/io/RandomAccessFile;[B)[B

    .line 40
    invoke-static {v8, v9}, Lnet/lingala/zip4j/util/Raw;->i([BI)I

    move-result v12

    .line 41
    invoke-virtual {v11, v12}, Lnet/lingala/zip4j/model/FileHeader;->N(I)V

    .line 42
    iget-object v13, v1, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v13, v8}, Lnet/lingala/zip4j/core/HeaderReader;->m(Ljava/io/RandomAccessFile;[B)[B

    .line 43
    invoke-static {v8, v9}, Lnet/lingala/zip4j/util/Raw;->i([BI)I

    move-result v13

    .line 44
    invoke-virtual {v11, v13}, Lnet/lingala/zip4j/model/FileHeader;->K(I)V

    .line 45
    iget-object v13, v1, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v13, v8}, Lnet/lingala/zip4j/core/HeaderReader;->m(Ljava/io/RandomAccessFile;[B)[B

    .line 46
    invoke-static {v8, v9}, Lnet/lingala/zip4j/util/Raw;->i([BI)I

    move-result v13

    .line 47
    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v8}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v11, v14}, Lnet/lingala/zip4j/model/FileHeader;->L(Ljava/lang/String;)V

    .line 48
    iget-object v14, v1, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v14, v8}, Lnet/lingala/zip4j/core/HeaderReader;->m(Ljava/io/RandomAccessFile;[B)[B

    .line 49
    invoke-static {v8, v9}, Lnet/lingala/zip4j/util/Raw;->i([BI)I

    move-result v14

    invoke-virtual {v11, v14}, Lnet/lingala/zip4j/model/FileHeader;->F(I)V

    .line 50
    iget-object v14, v1, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v14, v8}, Lnet/lingala/zip4j/core/HeaderReader;->m(Ljava/io/RandomAccessFile;[B)[B

    .line 51
    invoke-virtual {v8}, [B->clone()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [B

    invoke-virtual {v11, v14}, Lnet/lingala/zip4j/model/FileHeader;->Q([B)V

    .line 52
    iget-object v14, v1, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v14, v6}, Lnet/lingala/zip4j/core/HeaderReader;->m(Ljava/io/RandomAccessFile;[B)[B

    .line 53
    invoke-virtual {v6}, [B->clone()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [B

    invoke-virtual {v11, v14}, Lnet/lingala/zip4j/model/FileHeader;->I([B)V

    .line 54
    iget-object v14, v1, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v14, v6}, Lnet/lingala/zip4j/core/HeaderReader;->m(Ljava/io/RandomAccessFile;[B)[B

    .line 55
    invoke-direct {v1, v6}, Lnet/lingala/zip4j/core/HeaderReader;->a([B)[B

    move-result-object v14

    .line 56
    invoke-static {v14, v9}, Lnet/lingala/zip4j/util/Raw;->g([BI)J

    move-result-wide v14

    const-wide v17, 0xffffffffL

    and-long v14, v14, v17

    invoke-virtual {v11, v14, v15}, Lnet/lingala/zip4j/model/FileHeader;->S(J)V

    if-lez v12, :cond_1f1

    .line 57
    new-array v12, v12, [B

    .line 58
    iget-object v14, v1, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v14, v12}, Lnet/lingala/zip4j/core/HeaderReader;->m(Ljava/io/RandomAccessFile;[B)[B

    .line 59
    iget-object v14, v1, Lnet/lingala/zip4j/core/HeaderReader;->b:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v14}, Lnet/lingala/zip4j/model/ZipModel;->d()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lnet/lingala/zip4j/util/Zip4jUtil;->u(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_18e

    .line 60
    new-instance v14, Ljava/lang/String;

    iget-object v15, v1, Lnet/lingala/zip4j/core/HeaderReader;->b:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v15}, Lnet/lingala/zip4j/model/ZipModel;->d()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v12, v15}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_196

    .line 61
    :cond_18e
    invoke-virtual {v11}, Lnet/lingala/zip4j/model/FileHeader;->x()Z

    move-result v14

    invoke-static {v12, v14}, Lnet/lingala/zip4j/util/Zip4jUtil;->f([BZ)Ljava/lang/String;

    move-result-object v14

    :goto_196
    if-eqz v14, :cond_1e9

    .line 62
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    if-ltz v12, :cond_1cf

    .line 63
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    const/4 v15, 0x2

    add-int/2addr v12, v15

    invoke-virtual {v14, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_1d0

    :cond_1cf
    const/4 v15, 0x2

    .line 64
    :goto_1d0
    invoke-virtual {v11, v14}, Lnet/lingala/zip4j/model/FileHeader;->M(Ljava/lang/String;)V

    const-string v12, "/"

    .line 65
    invoke-virtual {v14, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1e5

    const-string v12, "\\"

    invoke-virtual {v14, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1e4

    goto :goto_1e5

    :cond_1e4
    const/4 v7, 0x0

    :cond_1e5
    :goto_1e5
    invoke-virtual {v11, v7}, Lnet/lingala/zip4j/model/FileHeader;->E(Z)V

    goto :goto_1f6

    .line 66
    :cond_1e9
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "fileName is null when reading central directory"

    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f1
    const/4 v15, 0x2

    const/4 v7, 0x0

    .line 67
    invoke-virtual {v11, v7}, Lnet/lingala/zip4j/model/FileHeader;->M(Ljava/lang/String;)V

    .line 68
    :goto_1f6
    invoke-direct {v1, v11}, Lnet/lingala/zip4j/core/HeaderReader;->f(Lnet/lingala/zip4j/model/FileHeader;)V

    .line 69
    invoke-direct {v1, v11}, Lnet/lingala/zip4j/core/HeaderReader;->h(Lnet/lingala/zip4j/model/FileHeader;)V

    .line 70
    invoke-direct {v1, v11}, Lnet/lingala/zip4j/core/HeaderReader;->d(Lnet/lingala/zip4j/model/FileHeader;)V

    if-lez v13, :cond_210

    .line 71
    new-array v7, v13, [B

    .line 72
    iget-object v12, v1, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v12, v7}, Lnet/lingala/zip4j/core/HeaderReader;->m(Ljava/io/RandomAccessFile;[B)[B

    .line 73
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v11, v12}, Lnet/lingala/zip4j/model/FileHeader;->L(Ljava/lang/String;)V

    .line 74
    :cond_210
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    const/4 v7, 0x2

    goto/16 :goto_54

    .line 75
    :cond_218
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected central directory entry not found (#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v10, v7

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_235
    invoke-virtual {v3, v4}, Lnet/lingala/zip4j/model/CentralDirectory;->b(Ljava/util/ArrayList;)V

    .line 77
    new-instance v0, Lnet/lingala/zip4j/model/DigitalSignature;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/DigitalSignature;-><init>()V

    .line 78
    iget-object v2, v1, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v2, v6}, Lnet/lingala/zip4j/core/HeaderReader;->m(Ljava/io/RandomAccessFile;[B)[B

    .line 79
    invoke-static {v6, v9}, Lnet/lingala/zip4j/util/Raw;->e([BI)I

    move-result v2

    int-to-long v4, v2

    const-wide/32 v6, 0x5054b50

    cmp-long v10, v4, v6

    if-eqz v10, :cond_24f

    return-object v3

    .line 80
    :cond_24f
    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/model/DigitalSignature;->a(I)V

    .line 81
    iget-object v2, v1, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v2, v8}, Lnet/lingala/zip4j/core/HeaderReader;->m(Ljava/io/RandomAccessFile;[B)[B

    .line 82
    invoke-static {v8, v9}, Lnet/lingala/zip4j/util/Raw;->i([BI)I

    move-result v2

    .line 83
    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/model/DigitalSignature;->c(I)V

    if-lez v2, :cond_26f

    .line 84
    new-array v2, v2, [B

    .line 85
    iget-object v4, v1, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v4, v2}, Lnet/lingala/zip4j/core/HeaderReader;->m(Ljava/io/RandomAccessFile;[B)[B

    .line 86
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v4}, Lnet/lingala/zip4j/model/DigitalSignature;->b(Ljava/lang/String;)V
    :try_end_26f
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_26f} :catch_270

    :cond_26f
    return-object v3

    :catch_270
    move-exception v0

    .line 87
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 88
    :cond_277
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "EndCentralRecord was null, maybe a corrupt zip file"

    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_27f
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "random access file was null"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;I)V

    goto :goto_289

    :goto_288
    throw v0

    :goto_289
    goto :goto_288
.end method

.method private k()Lnet/lingala/zip4j/model/EndCentralDirRecord;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_da

    const/4 v1, 0x4

    :try_start_5
    new-array v2, v1, [B

    .line 2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x16

    sub-long/2addr v3, v5

    .line 3
    new-instance v0, Lnet/lingala/zip4j/model/EndCentralDirRecord;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/EndCentralDirRecord;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 4
    :goto_15
    iget-object v7, p0, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    const-wide/16 v8, 0x1

    sub-long v8, v3, v8

    invoke-virtual {v7, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v3, 0x1

    add-int/2addr v6, v3

    .line 5
    iget-object v4, p0, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    invoke-static {v4, v2}, Lnet/lingala/zip4j/util/Raw;->f(Ljava/io/DataInput;[B)I

    move-result v4

    int-to-long v10, v4

    const-wide/32 v12, 0x6054b50

    cmp-long v4, v10, v12

    if-eqz v4, :cond_35

    const/16 v4, 0xbb8

    if-le v6, v4, :cond_33

    goto :goto_35

    :cond_33
    move-wide v3, v8

    goto :goto_15

    .line 6
    :cond_35
    :goto_35
    invoke-static {v2, v5}, Lnet/lingala/zip4j/util/Raw;->e([BI)I

    move-result v2

    int-to-long v6, v2

    cmp-long v2, v6, v12

    if-nez v2, :cond_c9

    new-array v2, v1, [B

    const/4 v4, 0x2

    new-array v4, v4, [B

    .line 7
    invoke-virtual {v0, v12, v13}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->p(J)V

    .line 8
    iget-object v6, p0, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v6, v4}, Lnet/lingala/zip4j/core/HeaderReader;->m(Ljava/io/RandomAccessFile;[B)[B

    .line 9
    invoke-static {v4, v5}, Lnet/lingala/zip4j/util/Raw;->i([BI)I

    move-result v6

    invoke-virtual {v0, v6}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->m(I)V

    .line 10
    iget-object v6, p0, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v6, v4}, Lnet/lingala/zip4j/core/HeaderReader;->m(Ljava/io/RandomAccessFile;[B)[B

    .line 11
    invoke-static {v4, v5}, Lnet/lingala/zip4j/util/Raw;->i([BI)I

    move-result v6

    invoke-virtual {v0, v6}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->n(I)V

    .line 12
    iget-object v6, p0, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v6, v4}, Lnet/lingala/zip4j/core/HeaderReader;->m(Ljava/io/RandomAccessFile;[B)[B

    .line 13
    invoke-static {v4, v5}, Lnet/lingala/zip4j/util/Raw;->i([BI)I

    move-result v6

    invoke-virtual {v0, v6}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->s(I)V

    .line 14
    iget-object v6, p0, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v6, v4}, Lnet/lingala/zip4j/core/HeaderReader;->m(Ljava/io/RandomAccessFile;[B)[B

    .line 15
    invoke-static {v4, v5}, Lnet/lingala/zip4j/util/Raw;->i([BI)I

    move-result v6

    invoke-virtual {v0, v6}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->r(I)V

    .line 16
    iget-object v6, p0, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v6, v2}, Lnet/lingala/zip4j/core/HeaderReader;->m(Ljava/io/RandomAccessFile;[B)[B

    .line 17
    invoke-static {v2, v5}, Lnet/lingala/zip4j/util/Raw;->e([BI)I

    move-result v6

    invoke-virtual {v0, v6}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->q(I)V

    .line 18
    iget-object v6, p0, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v6, v2}, Lnet/lingala/zip4j/core/HeaderReader;->m(Ljava/io/RandomAccessFile;[B)[B

    .line 19
    invoke-direct {p0, v2}, Lnet/lingala/zip4j/core/HeaderReader;->a([B)[B

    move-result-object v2

    .line 20
    invoke-static {v2, v5}, Lnet/lingala/zip4j/util/Raw;->g([BI)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->o(J)V

    .line 21
    iget-object v2, p0, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v2, v4}, Lnet/lingala/zip4j/core/HeaderReader;->m(Ljava/io/RandomAccessFile;[B)[B

    .line 22
    invoke-static {v4, v5}, Lnet/lingala/zip4j/util/Raw;->i([BI)I

    move-result v2

    .line 23
    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->l(I)V

    if-lez v2, :cond_b3

    .line 24
    new-array v2, v2, [B

    .line 25
    iget-object v4, p0, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v4, v2}, Lnet/lingala/zip4j/core/HeaderReader;->m(Ljava/io/RandomAccessFile;[B)[B

    .line 26
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v4}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->j(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->k([B)V

    goto :goto_b7

    :cond_b3
    const/4 v2, 0x0

    .line 28
    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->j(Ljava/lang/String;)V

    .line 29
    :goto_b7
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->d()I

    move-result v2

    if-lez v2, :cond_c3

    .line 30
    iget-object v2, p0, Lnet/lingala/zip4j/core/HeaderReader;->b:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v2, v3}, Lnet/lingala/zip4j/model/ZipModel;->q(Z)V

    goto :goto_c8

    .line 31
    :cond_c3
    iget-object v2, p0, Lnet/lingala/zip4j/core/HeaderReader;->b:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v2, v5}, Lnet/lingala/zip4j/model/ZipModel;->q(Z)V

    :goto_c8
    return-object v0

    .line 32
    :cond_c9
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "zip headers not found. probably not a zip file"

    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_d1} :catch_d1

    :catch_d1
    move-exception v0

    .line 33
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    const-string v3, "Probably not a zip file or a corrupted zip file"

    invoke-direct {v2, v3, v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2

    .line 34
    :cond_da
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const/4 v1, 0x3

    const-string v2, "random access file was null"

    invoke-direct {v0, v2, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;I)V

    goto :goto_e4

    :goto_e3
    throw v0

    :goto_e4
    goto :goto_e3
.end method

.method private l(I)Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v0, 0x0

    if-gtz p1, :cond_4

    return-object v0

    .line 1
    :cond_4
    :try_start_4
    new-array v1, p1, [B

    .line 2
    iget-object v2, p0, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_12
    if-ge v4, p1, :cond_48

    .line 4
    new-instance v5, Lnet/lingala/zip4j/model/ExtraDataRecord;

    invoke-direct {v5}, Lnet/lingala/zip4j/model/ExtraDataRecord;-><init>()V

    .line 5
    invoke-static {v1, v4}, Lnet/lingala/zip4j/util/Raw;->i([BI)I

    move-result v6

    int-to-long v6, v6

    .line 6
    invoke-virtual {v5, v6, v7}, Lnet/lingala/zip4j/model/ExtraDataRecord;->e(J)V

    add-int/lit8 v4, v4, 0x2

    .line 7
    invoke-static {v1, v4}, Lnet/lingala/zip4j/util/Raw;->i([BI)I

    move-result v6

    add-int/lit8 v7, v6, 0x2

    if-le v7, p1, :cond_34

    .line 8
    invoke-static {v1, v4}, Lnet/lingala/zip4j/util/Raw;->h([BI)S

    move-result v6

    add-int/lit8 v7, v6, 0x2

    if-le v7, p1, :cond_34

    goto :goto_48

    .line 9
    :cond_34
    invoke-virtual {v5, v6}, Lnet/lingala/zip4j/model/ExtraDataRecord;->f(I)V

    add-int/lit8 v4, v4, 0x2

    if-lez v6, :cond_43

    .line 10
    new-array v7, v6, [B

    .line 11
    invoke-static {v1, v4, v7, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    invoke-virtual {v5, v7}, Lnet/lingala/zip4j/model/ExtraDataRecord;->d([B)V

    :cond_43
    add-int/2addr v4, v6

    .line 13
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 14
    :cond_48
    :goto_48
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4c} :catch_50

    if-lez p1, :cond_4f

    return-object v2

    :cond_4f
    return-object v0

    :catch_50
    move-exception p1

    .line 15
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_58

    :goto_57
    throw v0

    :goto_58
    goto :goto_57
.end method

.method private m(Ljava/io/RandomAccessFile;[B)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_1
    array-length v1, p2

    invoke-virtual {p1, p2, v0, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_a

    return-object p2

    .line 2
    :cond_a
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "unexpected end of file when reading short buff"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_12} :catch_12

    :catch_12
    move-exception p1

    .line 3
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "IOException when reading short buff"

    invoke-direct {p2, v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private o()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_61

    .line 2
    :try_start_4
    new-instance v0, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;-><init>()V

    .line 3
    invoke-direct {p0}, Lnet/lingala/zip4j/core/HeaderReader;->r()V

    const/4 v1, 0x4

    new-array v1, v1, [B

    const/16 v2, 0x8

    new-array v2, v2, [B

    .line 4
    iget-object v3, p0, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v3, v1}, Lnet/lingala/zip4j/core/HeaderReader;->m(Ljava/io/RandomAccessFile;[B)[B

    const/4 v3, 0x0

    .line 5
    invoke-static {v1, v3}, Lnet/lingala/zip4j/util/Raw;->e([BI)I

    move-result v4

    int-to-long v4, v4

    const-wide/32 v6, 0x7064b50

    cmp-long v8, v4, v6

    if-nez v8, :cond_53

    .line 6
    iget-object v6, p0, Lnet/lingala/zip4j/core/HeaderReader;->b:Lnet/lingala/zip4j/model/ZipModel;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lnet/lingala/zip4j/model/ZipModel;->u(Z)V

    .line 7
    invoke-virtual {v0, v4, v5}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->f(J)V

    .line 8
    iget-object v4, p0, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v4, v1}, Lnet/lingala/zip4j/core/HeaderReader;->m(Ljava/io/RandomAccessFile;[B)[B

    .line 9
    invoke-static {v1, v3}, Lnet/lingala/zip4j/util/Raw;->e([BI)I

    move-result v4

    invoke-virtual {v0, v4}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->d(I)V

    .line 10
    iget-object v4, p0, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v4, v2}, Lnet/lingala/zip4j/core/HeaderReader;->m(Ljava/io/RandomAccessFile;[B)[B

    .line 11
    invoke-static {v2, v3}, Lnet/lingala/zip4j/util/Raw;->g([BI)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->e(J)V

    .line 12
    iget-object v2, p0, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v2, v1}, Lnet/lingala/zip4j/core/HeaderReader;->m(Ljava/io/RandomAccessFile;[B)[B

    .line 13
    invoke-static {v1, v3}, Lnet/lingala/zip4j/util/Raw;->e([BI)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->g(I)V

    return-object v0

    .line 14
    :cond_53
    iget-object v0, p0, Lnet/lingala/zip4j/core/HeaderReader;->b:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0, v3}, Lnet/lingala/zip4j/model/ZipModel;->u(Z)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_58} :catch_5a

    const/4 v0, 0x0

    return-object v0

    :catch_5a
    move-exception v0

    .line 15
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 16
    :cond_61
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "invalid file handler when trying to read Zip64EndCentralDirLocator"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private p()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/core/HeaderReader;->b:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->h()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v0

    if-eqz v0, :cond_db

    .line 2
    iget-object v0, p0, Lnet/lingala/zip4j/core/HeaderReader;->b:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->h()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_d3

    .line 3
    :try_start_18
    iget-object v4, p0, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v4, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 4
    new-instance v0, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [B

    const/4 v4, 0x4

    new-array v4, v4, [B

    const/16 v5, 0x8

    new-array v5, v5, [B

    .line 5
    iget-object v6, p0, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v6, v4}, Lnet/lingala/zip4j/core/HeaderReader;->m(Ljava/io/RandomAccessFile;[B)[B

    const/4 v6, 0x0

    .line 6
    invoke-static {v4, v6}, Lnet/lingala/zip4j/util/Raw;->e([BI)I

    move-result v7

    int-to-long v7, v7

    const-wide/32 v9, 0x6064b50

    cmp-long v11, v7, v9

    if-nez v11, :cond_c4

    .line 7
    invoke-virtual {v0, v7, v8}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->i(J)V

    .line 8
    iget-object v7, p0, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v7, v5}, Lnet/lingala/zip4j/core/HeaderReader;->m(Ljava/io/RandomAccessFile;[B)[B

    .line 9
    invoke-static {v5, v6}, Lnet/lingala/zip4j/util/Raw;->g([BI)J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->k(J)V

    .line 10
    iget-object v7, p0, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v7, v1}, Lnet/lingala/zip4j/core/HeaderReader;->m(Ljava/io/RandomAccessFile;[B)[B

    .line 11
    invoke-static {v1, v6}, Lnet/lingala/zip4j/util/Raw;->i([BI)I

    move-result v7

    invoke-virtual {v0, v7}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->n(I)V

    .line 12
    iget-object v7, p0, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v7, v1}, Lnet/lingala/zip4j/core/HeaderReader;->m(Ljava/io/RandomAccessFile;[B)[B

    .line 13
    invoke-static {v1, v6}, Lnet/lingala/zip4j/util/Raw;->i([BI)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->o(I)V

    .line 14
    iget-object v1, p0, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v1, v4}, Lnet/lingala/zip4j/core/HeaderReader;->m(Ljava/io/RandomAccessFile;[B)[B

    .line 15
    invoke-static {v4, v6}, Lnet/lingala/zip4j/util/Raw;->e([BI)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->f(I)V

    .line 16
    iget-object v1, p0, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v1, v4}, Lnet/lingala/zip4j/core/HeaderReader;->m(Ljava/io/RandomAccessFile;[B)[B

    .line 17
    invoke-static {v4, v6}, Lnet/lingala/zip4j/util/Raw;->e([BI)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->g(I)V

    .line 18
    iget-object v1, p0, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v1, v5}, Lnet/lingala/zip4j/core/HeaderReader;->m(Ljava/io/RandomAccessFile;[B)[B

    .line 19
    invoke-static {v5, v6}, Lnet/lingala/zip4j/util/Raw;->g([BI)J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->m(J)V

    .line 20
    iget-object v1, p0, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v1, v5}, Lnet/lingala/zip4j/core/HeaderReader;->m(Ljava/io/RandomAccessFile;[B)[B

    .line 21
    invoke-static {v5, v6}, Lnet/lingala/zip4j/util/Raw;->g([BI)J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->l(J)V

    .line 22
    iget-object v1, p0, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v1, v5}, Lnet/lingala/zip4j/core/HeaderReader;->m(Ljava/io/RandomAccessFile;[B)[B

    .line 23
    invoke-static {v5, v6}, Lnet/lingala/zip4j/util/Raw;->g([BI)J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->j(J)V

    .line 24
    iget-object v1, p0, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v1, v5}, Lnet/lingala/zip4j/core/HeaderReader;->m(Ljava/io/RandomAccessFile;[B)[B

    .line 25
    invoke-static {v5, v6}, Lnet/lingala/zip4j/util/Raw;->g([BI)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->h(J)V

    .line 26
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->c()J

    move-result-wide v4

    const-wide/16 v6, 0x2c

    sub-long/2addr v4, v6

    cmp-long v1, v4, v2

    if-lez v1, :cond_c3

    long-to-int v1, v4

    .line 27
    new-array v1, v1, [B

    .line 28
    iget-object v2, p0, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v2, v1}, Lnet/lingala/zip4j/core/HeaderReader;->m(Ljava/io/RandomAccessFile;[B)[B

    .line 29
    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->e([B)V

    :cond_c3
    return-object v0

    .line 30
    :cond_c4
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "invalid signature for zip64 end of central directory record"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_cc
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_cc} :catch_cc

    :catch_cc
    move-exception v0

    .line 31
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 32
    :cond_d3
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "invalid offset for start of end of central directory record"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_db
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "invalid zip64 end of central directory locator"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private q(Ljava/util/ArrayList;JJJI)Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_a8

    move-object/from16 v2, p1

    .line 2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/lingala/zip4j/model/ExtraDataRecord;

    if-nez v3, :cond_14

    goto/16 :goto_a4

    .line 3
    :cond_14
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ExtraDataRecord;->b()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v8, v4, v6

    if-nez v8, :cond_a4

    .line 4
    new-instance v1, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    invoke-direct {v1}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;-><init>()V

    .line 5
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ExtraDataRecord;->a()[B

    move-result-object v2

    .line 6
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ExtraDataRecord;->c()I

    move-result v4

    if-gtz v4, :cond_2f

    goto/16 :goto_a8

    :cond_2f
    const/16 v4, 0x8

    new-array v5, v4, [B

    const/4 v6, 0x4

    new-array v7, v6, [B

    const-wide/32 v8, 0xffff

    and-long v10, p2, v8

    const/4 v12, 0x1

    cmp-long v13, v10, v8

    if-nez v13, :cond_54

    .line 7
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ExtraDataRecord;->c()I

    move-result v10

    if-lez v10, :cond_54

    .line 8
    invoke-static {v2, v0, v5, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    invoke-static {v5, v0}, Lnet/lingala/zip4j/util/Raw;->g([BI)J

    move-result-wide v10

    .line 10
    invoke-virtual {v1, v10, v11}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->h(J)V

    const/16 v10, 0x8

    const/4 v11, 0x1

    goto :goto_56

    :cond_54
    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_56
    and-long v13, p4, v8

    cmp-long v15, v13, v8

    if-nez v15, :cond_6f

    .line 11
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ExtraDataRecord;->c()I

    move-result v13

    if-ge v10, v13, :cond_6f

    .line 12
    invoke-static {v2, v10, v5, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    invoke-static {v5, v0}, Lnet/lingala/zip4j/util/Raw;->g([BI)J

    move-result-wide v13

    .line 14
    invoke-virtual {v1, v13, v14}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->e(J)V

    add-int/lit8 v10, v10, 0x8

    const/4 v11, 0x1

    :cond_6f
    and-long v13, p6, v8

    cmp-long v15, v13, v8

    if-nez v15, :cond_88

    .line 15
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ExtraDataRecord;->c()I

    move-result v8

    if-ge v10, v8, :cond_88

    .line 16
    invoke-static {v2, v10, v5, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    invoke-static {v5, v0}, Lnet/lingala/zip4j/util/Raw;->g([BI)J

    move-result-wide v4

    .line 18
    invoke-virtual {v1, v4, v5}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->g(J)V

    add-int/lit8 v10, v10, 0x8

    const/4 v11, 0x1

    :cond_88
    const v4, 0xffff

    and-int v5, p8, v4

    if-ne v5, v4, :cond_a0

    .line 19
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ExtraDataRecord;->c()I

    move-result v3

    if-ge v10, v3, :cond_a0

    .line 20
    invoke-static {v2, v10, v7, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    invoke-static {v7, v0}, Lnet/lingala/zip4j/util/Raw;->e([BI)I

    move-result v0

    .line 22
    invoke-virtual {v1, v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->f(I)V

    goto :goto_a1

    :cond_a0
    move v12, v11

    :goto_a1
    if-eqz v12, :cond_a8

    return-object v1

    :cond_a4
    :goto_a4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_a8
    :goto_a8
    const/4 v0, 0x0

    return-object v0
.end method

.method private r()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v0, 0x4

    :try_start_1
    new-array v0, v0, [B

    .line 1
    iget-object v1, p0, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x16

    sub-long/2addr v1, v3

    .line 2
    :goto_c
    iget-object v3, p0, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    const-wide/16 v4, 0x1

    sub-long v4, v1, v4

    invoke-virtual {v3, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 3
    iget-object v1, p0, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    invoke-static {v1, v0}, Lnet/lingala/zip4j/util/Raw;->f(Ljava/io/DataInput;[B)I

    move-result v1

    int-to-long v1, v1

    const-wide/32 v6, 0x6054b50

    cmp-long v3, v1, v6

    if-nez v3, :cond_36

    .line 4
    iget-object v0, p0, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    sub-long/2addr v1, v3

    sub-long/2addr v1, v3

    const-wide/16 v5, 0x8

    sub-long/2addr v1, v5

    sub-long/2addr v1, v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_35} :catch_38

    return-void

    :cond_36
    move-wide v1, v4

    goto :goto_c

    :catch_38
    move-exception v0

    .line 5
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_40

    :goto_3f
    throw v1

    :goto_40
    goto :goto_3f
.end method


# virtual methods
.method public c(Ljava/lang/String;)Lnet/lingala/zip4j/model/ZipModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    new-instance v0, Lnet/lingala/zip4j/model/ZipModel;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/ZipModel;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/core/HeaderReader;->b:Lnet/lingala/zip4j/model/ZipModel;

    .line 2
    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/model/ZipModel;->o(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lnet/lingala/zip4j/core/HeaderReader;->b:Lnet/lingala/zip4j/model/ZipModel;

    invoke-direct {p0}, Lnet/lingala/zip4j/core/HeaderReader;->k()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/ZipModel;->n(Lnet/lingala/zip4j/model/EndCentralDirRecord;)V

    .line 4
    iget-object p1, p0, Lnet/lingala/zip4j/core/HeaderReader;->b:Lnet/lingala/zip4j/model/ZipModel;

    invoke-direct {p0}, Lnet/lingala/zip4j/core/HeaderReader;->o()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/ZipModel;->s(Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;)V

    .line 5
    iget-object p1, p0, Lnet/lingala/zip4j/core/HeaderReader;->b:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->l()Z

    move-result p1

    if-eqz p1, :cond_4e

    .line 6
    iget-object p1, p0, Lnet/lingala/zip4j/core/HeaderReader;->b:Lnet/lingala/zip4j/model/ZipModel;

    invoke-direct {p0}, Lnet/lingala/zip4j/core/HeaderReader;->p()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/ZipModel;->t(Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;)V

    .line 7
    iget-object p1, p0, Lnet/lingala/zip4j/core/HeaderReader;->b:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->i()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object p1

    if-eqz p1, :cond_48

    iget-object p1, p0, Lnet/lingala/zip4j/core/HeaderReader;->b:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->i()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object p1

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->a()I

    move-result p1

    if-lez p1, :cond_48

    .line 8
    iget-object p1, p0, Lnet/lingala/zip4j/core/HeaderReader;->b:Lnet/lingala/zip4j/model/ZipModel;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/ZipModel;->q(Z)V

    goto :goto_4e

    .line 9
    :cond_48
    iget-object p1, p0, Lnet/lingala/zip4j/core/HeaderReader;->b:Lnet/lingala/zip4j/model/ZipModel;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/ZipModel;->q(Z)V

    .line 10
    :cond_4e
    :goto_4e
    iget-object p1, p0, Lnet/lingala/zip4j/core/HeaderReader;->b:Lnet/lingala/zip4j/model/ZipModel;

    invoke-direct {p0}, Lnet/lingala/zip4j/core/HeaderReader;->j()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/ZipModel;->m(Lnet/lingala/zip4j/model/CentralDirectory;)V

    .line 11
    iget-object p1, p0, Lnet/lingala/zip4j/core/HeaderReader;->b:Lnet/lingala/zip4j/model/ZipModel;

    return-object p1
.end method

.method public n(Lnet/lingala/zip4j/model/FileHeader;)Lnet/lingala/zip4j/model/LocalFileHeader;
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "file.separator"

    const-string v2, ":"

    if-eqz p1, :cond_1ee

    .line 1
    iget-object v3, v1, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    if-eqz v3, :cond_1ee

    .line 2
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/FileHeader;->o()J

    move-result-wide v3

    .line 3
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/FileHeader;->u()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v5

    const-wide/16 v6, 0x0

    if-eqz v5, :cond_28

    .line 4
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/FileHeader;->u()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v5

    .line 5
    invoke-virtual {v5}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->c()J

    move-result-wide v8

    cmp-long v5, v8, v6

    if-lez v5, :cond_28

    .line 6
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/FileHeader;->o()J

    move-result-wide v3

    :cond_28
    cmp-long v5, v3, v6

    if-ltz v5, :cond_1e6

    .line 7
    :try_start_2c
    iget-object v5, v1, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v5, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 8
    new-instance v5, Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-direct {v5}, Lnet/lingala/zip4j/model/LocalFileHeader;-><init>()V

    const/4 v8, 0x2

    new-array v9, v8, [B

    const/4 v10, 0x4

    new-array v11, v10, [B

    .line 9
    iget-object v12, v1, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v12, v11}, Lnet/lingala/zip4j/core/HeaderReader;->m(Ljava/io/RandomAccessFile;[B)[B

    const/4 v12, 0x0

    .line 10
    invoke-static {v11, v12}, Lnet/lingala/zip4j/util/Raw;->e([BI)I

    move-result v13

    int-to-long v14, v13

    const-wide/32 v16, 0x4034b50

    cmp-long v18, v14, v16

    if-nez v18, :cond_1c4

    .line 11
    invoke-virtual {v5, v13}, Lnet/lingala/zip4j/model/LocalFileHeader;->J(I)V

    .line 12
    iget-object v13, v1, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v13, v9}, Lnet/lingala/zip4j/core/HeaderReader;->m(Ljava/io/RandomAccessFile;[B)[B

    .line 13
    invoke-static {v9, v12}, Lnet/lingala/zip4j/util/Raw;->i([BI)I

    move-result v13

    invoke-virtual {v5, v13}, Lnet/lingala/zip4j/model/LocalFileHeader;->L(I)V

    .line 14
    iget-object v13, v1, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v13, v9}, Lnet/lingala/zip4j/core/HeaderReader;->m(Ljava/io/RandomAccessFile;[B)[B

    .line 15
    invoke-static {v9, v12}, Lnet/lingala/zip4j/util/Raw;->i([BI)I

    move-result v13

    and-int/lit16 v13, v13, 0x800

    const/4 v14, 0x1

    if-eqz v13, :cond_6d

    const/4 v13, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v13, 0x0

    :goto_6e
    invoke-virtual {v5, v13}, Lnet/lingala/zip4j/model/LocalFileHeader;->E(Z)V

    .line 16
    aget-byte v13, v9, v12

    and-int/lit8 v15, v13, 0x1

    if-eqz v15, :cond_7a

    .line 17
    invoke-virtual {v5, v14}, Lnet/lingala/zip4j/model/LocalFileHeader;->y(Z)V

    .line 18
    :cond_7a
    invoke-virtual {v5, v9}, Lnet/lingala/zip4j/model/LocalFileHeader;->F([B)V

    .line 19
    invoke-static {v13}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v15

    .line 20
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v10, :cond_96

    const/4 v6, 0x3

    .line 21
    invoke-virtual {v15, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x31

    if-ne v6, v7, :cond_92

    const/4 v6, 0x1

    goto :goto_93

    :cond_92
    const/4 v6, 0x0

    :goto_93
    invoke-virtual {v5, v6}, Lnet/lingala/zip4j/model/LocalFileHeader;->x(Z)V

    .line 22
    :cond_96
    iget-object v6, v1, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v6, v9}, Lnet/lingala/zip4j/core/HeaderReader;->m(Ljava/io/RandomAccessFile;[B)[B

    .line 23
    invoke-static {v9, v12}, Lnet/lingala/zip4j/util/Raw;->i([BI)I

    move-result v6

    invoke-virtual {v5, v6}, Lnet/lingala/zip4j/model/LocalFileHeader;->u(I)V

    .line 24
    iget-object v6, v1, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v6, v11}, Lnet/lingala/zip4j/core/HeaderReader;->m(Ljava/io/RandomAccessFile;[B)[B

    .line 25
    invoke-static {v11, v12}, Lnet/lingala/zip4j/util/Raw;->e([BI)I

    move-result v6

    invoke-virtual {v5, v6}, Lnet/lingala/zip4j/model/LocalFileHeader;->G(I)V

    .line 26
    iget-object v6, v1, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v6, v11}, Lnet/lingala/zip4j/core/HeaderReader;->m(Ljava/io/RandomAccessFile;[B)[B

    .line 27
    invoke-static {v11, v12}, Lnet/lingala/zip4j/util/Raw;->e([BI)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lnet/lingala/zip4j/model/LocalFileHeader;->v(J)V

    .line 28
    invoke-virtual {v11}, [B->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-virtual {v5, v6}, Lnet/lingala/zip4j/model/LocalFileHeader;->w([B)V

    .line 29
    iget-object v6, v1, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v6, v11}, Lnet/lingala/zip4j/core/HeaderReader;->m(Ljava/io/RandomAccessFile;[B)[B

    .line 30
    invoke-direct {v1, v11}, Lnet/lingala/zip4j/core/HeaderReader;->a([B)[B

    move-result-object v6

    .line 31
    invoke-static {v6, v12}, Lnet/lingala/zip4j/util/Raw;->g([BI)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lnet/lingala/zip4j/model/LocalFileHeader;->t(J)V

    .line 32
    iget-object v6, v1, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v6, v11}, Lnet/lingala/zip4j/core/HeaderReader;->m(Ljava/io/RandomAccessFile;[B)[B

    .line 33
    invoke-direct {v1, v11}, Lnet/lingala/zip4j/core/HeaderReader;->a([B)[B

    move-result-object v6

    .line 34
    invoke-static {v6, v12}, Lnet/lingala/zip4j/util/Raw;->g([BI)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lnet/lingala/zip4j/model/LocalFileHeader;->K(J)V

    .line 35
    iget-object v6, v1, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v6, v9}, Lnet/lingala/zip4j/core/HeaderReader;->m(Ljava/io/RandomAccessFile;[B)[B

    .line 36
    invoke-static {v9, v12}, Lnet/lingala/zip4j/util/Raw;->i([BI)I

    move-result v6

    .line 37
    invoke-virtual {v5, v6}, Lnet/lingala/zip4j/model/LocalFileHeader;->D(I)V

    .line 38
    iget-object v7, v1, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v7, v9}, Lnet/lingala/zip4j/core/HeaderReader;->m(Ljava/io/RandomAccessFile;[B)[B

    .line 39
    invoke-static {v9, v12}, Lnet/lingala/zip4j/util/Raw;->i([BI)I

    move-result v7

    .line 40
    invoke-virtual {v5, v7}, Lnet/lingala/zip4j/model/LocalFileHeader;->B(I)V

    const/16 v9, 0x1e

    if-lez v6, :cond_153

    .line 41
    new-array v10, v6, [B

    .line 42
    iget-object v11, v1, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v11, v10}, Lnet/lingala/zip4j/core/HeaderReader;->m(Ljava/io/RandomAccessFile;[B)[B

    .line 43
    invoke-virtual {v5}, Lnet/lingala/zip4j/model/LocalFileHeader;->r()Z

    move-result v11

    invoke-static {v10, v11}, Lnet/lingala/zip4j/util/Zip4jUtil;->f([BZ)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_14b

    .line 44
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-ltz v11, :cond_146

    .line 45
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v8

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 46
    :cond_146
    invoke-virtual {v5, v10}, Lnet/lingala/zip4j/model/LocalFileHeader;->C(Ljava/lang/String;)V

    add-int/2addr v9, v6

    goto :goto_157

    .line 47
    :cond_14b
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "file name is null, cannot assign file name to local file header"

    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_153
    const/4 v0, 0x0

    .line 48
    invoke-virtual {v5, v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->C(Ljava/lang/String;)V

    .line 49
    :goto_157
    invoke-direct {v1, v5}, Lnet/lingala/zip4j/core/HeaderReader;->g(Lnet/lingala/zip4j/model/LocalFileHeader;)V

    add-int/2addr v9, v7

    int-to-long v6, v9

    add-long/2addr v3, v6

    .line 50
    invoke-virtual {v5, v3, v4}, Lnet/lingala/zip4j/model/LocalFileHeader;->H(J)V

    .line 51
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/FileHeader;->p()[C

    move-result-object v0

    invoke-virtual {v5, v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->I([C)V

    .line 52
    invoke-direct {v1, v5}, Lnet/lingala/zip4j/core/HeaderReader;->i(Lnet/lingala/zip4j/model/LocalFileHeader;)V

    .line 53
    invoke-direct {v1, v5}, Lnet/lingala/zip4j/core/HeaderReader;->e(Lnet/lingala/zip4j/model/LocalFileHeader;)V

    .line 54
    invoke-virtual {v5}, Lnet/lingala/zip4j/model/LocalFileHeader;->q()Z

    move-result v0

    if-eqz v0, :cond_189

    .line 55
    invoke-virtual {v5}, Lnet/lingala/zip4j/model/LocalFileHeader;->e()I

    move-result v0

    const/16 v2, 0x63

    if-ne v0, v2, :cond_17c

    goto :goto_189

    :cond_17c
    const/16 v0, 0x40

    and-int/lit8 v2, v13, 0x40

    if-ne v2, v0, :cond_186

    .line 56
    invoke-virtual {v5, v14}, Lnet/lingala/zip4j/model/LocalFileHeader;->z(I)V

    goto :goto_189

    .line 57
    :cond_186
    invoke-virtual {v5, v12}, Lnet/lingala/zip4j/model/LocalFileHeader;->z(I)V

    .line 58
    :cond_189
    :goto_189
    invoke-virtual {v5}, Lnet/lingala/zip4j/model/LocalFileHeader;->d()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-gtz v0, :cond_1a1

    .line 59
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/FileHeader;->d()J

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Lnet/lingala/zip4j/model/LocalFileHeader;->v(J)V

    .line 60
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/FileHeader;->e()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->w([B)V

    .line 61
    :cond_1a1
    invoke-virtual {v5}, Lnet/lingala/zip4j/model/LocalFileHeader;->b()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-gtz v0, :cond_1b2

    .line 62
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/FileHeader;->b()J

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Lnet/lingala/zip4j/model/LocalFileHeader;->t(J)V

    .line 63
    :cond_1b2
    invoke-virtual {v5}, Lnet/lingala/zip4j/model/LocalFileHeader;->o()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-gtz v0, :cond_1c3

    .line 64
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/FileHeader;->r()J

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Lnet/lingala/zip4j/model/LocalFileHeader;->K(J)V

    :cond_1c3
    return-object v5

    .line 65
    :cond_1c4
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid local header signature for file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/FileHeader;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1df
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_1df} :catch_1df

    :catch_1df
    move-exception v0

    .line 66
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 67
    :cond_1e6
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "invalid local header offset"

    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_1ee
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "invalid read parameters for local header"

    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
