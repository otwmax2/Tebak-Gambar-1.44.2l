###### Class net.lingala.zip4j.core.HeaderWriter (net.lingala.zip4j.core.HeaderWriter)
.class public Lnet/lingala/zip4j/core/HeaderWriter;
.super Ljava/lang/Object;
.source "HeaderWriter.java"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x32

    .line 2
    iput v0, p0, Lnet/lingala/zip4j/core/HeaderWriter;->a:I

    return-void
.end method

.method private a(Ljava/util/List;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_27

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_a

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 3
    :goto_11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_26

    .line 4
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_26
    return-object v0

    .line 5
    :cond_27
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "input byte array list is null, cannot conver to byte array"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    goto :goto_30

    :goto_2f
    throw p1

    :goto_30
    goto :goto_2f
.end method

.method private b([BLjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p2, :cond_15

    if-eqz p1, :cond_15

    const/4 v0, 0x0

    .line 1
    :goto_5
    array-length v1, p1

    if-ge v0, v1, :cond_14

    .line 2
    aget-byte v1, p1, v0

    invoke-static {v1}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_14
    return-void

    .line 3
    :cond_15
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "one of the input parameters is null, cannot copy byte array to array list"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    goto :goto_1e

    :goto_1d
    throw p1

    :goto_1e
    goto :goto_1d
.end method

.method private c(Ljava/util/ArrayList;I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_1c

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1b

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/lingala/zip4j/model/FileHeader;

    .line 3
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/FileHeader;->f()I

    move-result v2

    if-ne v2, p2, :cond_18

    add-int/lit8 v1, v1, 0x1

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_1b
    return v1

    .line 4
    :cond_1c
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "file headers are null, cannot calculate number of entries on this disk"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    goto :goto_25

    :goto_24
    throw p1

    :goto_25
    goto :goto_24
.end method

.method private f(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_1
    instance-of v1, p2, Lnet/lingala/zip4j/io/SplitOutputStream;

    if-eqz v1, :cond_19

    .line 2
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->b()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lnet/lingala/zip4j/io/SplitOutputStream;

    invoke-virtual {v1}, Lnet/lingala/zip4j/io/SplitOutputStream;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->o(J)V

    .line 3
    check-cast p2, Lnet/lingala/zip4j/io/SplitOutputStream;

    invoke-virtual {p2}, Lnet/lingala/zip4j/io/SplitOutputStream;->c()I

    move-result v0

    .line 4
    :cond_19
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->l()Z

    move-result p2

    if-eqz p2, :cond_4b

    .line 5
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->i()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object p2

    if-nez p2, :cond_2d

    .line 6
    new-instance p2, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    invoke-direct {p2}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;-><init>()V

    invoke-virtual {p1, p2}, Lnet/lingala/zip4j/model/ZipModel;->t(Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;)V

    .line 7
    :cond_2d
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->h()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object p2

    if-nez p2, :cond_3b

    .line 8
    new-instance p2, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    invoke-direct {p2}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;-><init>()V

    invoke-virtual {p1, p2}, Lnet/lingala/zip4j/model/ZipModel;->s(Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;)V

    .line 9
    :cond_3b
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->h()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object p2

    invoke-virtual {p2, v0}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->d(I)V

    .line 10
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->h()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object p2

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p2, v1}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->g(I)V

    .line 11
    :cond_4b
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->b()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object p2

    invoke-virtual {p2, v0}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->m(I)V

    .line 12
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->b()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object p1

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->n(I)V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_59} :catch_5a

    return-void

    :catch_5a
    move-exception p1

    .line 13
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private g(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;Ljava/util/List;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_4b

    if-eqz p2, :cond_4b

    .line 1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->a()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4a

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->a()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/CentralDirectory;->a()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4a

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->a()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/CentralDirectory;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_24

    goto :goto_4a

    :cond_24
    const/4 v0, 0x0

    .line 2
    :goto_25
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->a()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v2

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/CentralDirectory;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_49

    .line 3
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->a()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v2

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/CentralDirectory;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/lingala/zip4j/model/FileHeader;

    .line 4
    invoke-direct {p0, p1, v2, p2, p3}, Lnet/lingala/zip4j/core/HeaderWriter;->j(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;Ljava/io/OutputStream;Ljava/util/List;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_49
    return v0

    :cond_4a
    :goto_4a
    return v1

    .line 5
    :cond_4b
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input parameters is null, cannot write central directory"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    goto :goto_54

    :goto_53
    throw p1

    :goto_54
    goto :goto_53
.end method

.method private h(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;IJLjava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_dc

    if-eqz p2, :cond_dc

    const/4 p2, 0x2

    :try_start_5
    new-array p2, p2, [B

    const/4 v0, 0x4

    new-array v1, v0, [B

    const/16 v2, 0x8

    new-array v2, v2, [B

    .line 1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->b()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v3

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->g()J

    move-result-wide v3

    long-to-int v4, v3

    const/4 v3, 0x0

    invoke-static {v1, v3, v4}, Lnet/lingala/zip4j/util/Raw;->j([BII)V

    .line 2
    invoke-direct {p0, v1, p6}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    .line 3
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->b()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v4

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->d()I

    move-result v4

    int-to-short v4, v4

    invoke-static {p2, v3, v4}, Lnet/lingala/zip4j/util/Raw;->l([BIS)V

    .line 4
    invoke-direct {p0, p2, p6}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    .line 5
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->b()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v4

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->e()I

    move-result v4

    int-to-short v4, v4

    invoke-static {p2, v3, v4}, Lnet/lingala/zip4j/util/Raw;->l([BIS)V

    .line 6
    invoke-direct {p0, p2, p6}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    .line 7
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->a()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v4

    if-eqz v4, :cond_cd

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->a()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v4

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/CentralDirectory;->a()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_cd

    .line 8
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->a()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v4

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/CentralDirectory;->a()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 9
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->k()Z

    move-result v5

    if-eqz v5, :cond_73

    .line 10
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->a()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/CentralDirectory;->a()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->b()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v6

    invoke-virtual {v6}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->d()I

    move-result v6

    invoke-direct {p0, v5, v6}, Lnet/lingala/zip4j/core/HeaderWriter;->c(Ljava/util/ArrayList;I)I

    move-result v5

    goto :goto_74

    :cond_73
    move v5, v4

    :goto_74
    int-to-short v5, v5

    .line 11
    invoke-static {p2, v3, v5}, Lnet/lingala/zip4j/util/Raw;->l([BIS)V

    .line 12
    invoke-direct {p0, p2, p6}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    int-to-short v4, v4

    .line 13
    invoke-static {p2, v3, v4}, Lnet/lingala/zip4j/util/Raw;->l([BIS)V

    .line 14
    invoke-direct {p0, p2, p6}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    .line 15
    invoke-static {v1, v3, p3}, Lnet/lingala/zip4j/util/Raw;->j([BII)V

    .line 16
    invoke-direct {p0, v1, p6}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    const-wide v4, 0xffffffffL

    cmp-long p3, p4, v4

    if-lez p3, :cond_9b

    .line 17
    invoke-static {v2, v3, v4, v5}, Lnet/lingala/zip4j/util/Raw;->k([BIJ)V

    .line 18
    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    invoke-direct {p0, v1, p6}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    goto :goto_a4

    .line 20
    :cond_9b
    invoke-static {v2, v3, p4, p5}, Lnet/lingala/zip4j/util/Raw;->k([BIJ)V

    .line 21
    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    invoke-direct {p0, v1, p6}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    .line 23
    :goto_a4
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->b()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object p3

    invoke-virtual {p3}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->a()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_b7

    .line 24
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->b()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object p3

    invoke-virtual {p3}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->c()I

    move-result p3

    goto :goto_b8

    :cond_b7
    const/4 p3, 0x0

    :goto_b8
    int-to-short p4, p3

    .line 25
    invoke-static {p2, v3, p4}, Lnet/lingala/zip4j/util/Raw;->l([BIS)V

    .line 26
    invoke-direct {p0, p2, p6}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    if-lez p3, :cond_cc

    .line 27
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->b()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object p1

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->b()[B

    move-result-object p1

    invoke-direct {p0, p1, p6}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    :cond_cc
    return-void

    .line 28
    :cond_cd
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "invalid central directory/file headers, cannot write end of central directory record"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_d5} :catch_d5

    :catch_d5
    move-exception p1

    .line 29
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 30
    :cond_dc
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "zip model or output stream is null, cannot write end of central directory record"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private j(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;Ljava/io/OutputStream;Ljava/util/List;)I
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p4

    if-eqz p2, :cond_1ed

    if-eqz p3, :cond_1ed

    const/4 v2, 0x2

    :try_start_9
    new-array v3, v2, [B

    const/4 v4, 0x4

    new-array v5, v4, [B

    const/16 v6, 0x8

    new-array v7, v6, [B

    new-array v8, v2, [B

    const/4 v9, 0x0

    aput-byte v9, v8, v9

    const/4 v10, 0x1

    aput-byte v9, v8, v10

    new-array v11, v4, [B

    aput-byte v9, v11, v9

    aput-byte v9, v11, v10

    aput-byte v9, v11, v2

    const/4 v12, 0x3

    aput-byte v9, v11, v12

    .line 1
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->q()I

    move-result v12

    invoke-static {v5, v9, v12}, Lnet/lingala/zip4j/util/Raw;->j([BII)V

    .line 2
    invoke-direct {v1, v5, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    .line 3
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->s()I

    move-result v12

    int-to-short v12, v12

    invoke-static {v3, v9, v12}, Lnet/lingala/zip4j/util/Raw;->l([BIS)V

    .line 4
    invoke-direct {v1, v3, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    .line 5
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->t()I

    move-result v12

    int-to-short v12, v12

    invoke-static {v3, v9, v12}, Lnet/lingala/zip4j/util/Raw;->l([BIS)V

    .line 6
    invoke-direct {v1, v3, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    .line 7
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->m()[B

    move-result-object v12

    invoke-direct {v1, v12, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    .line 8
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->c()I

    move-result v12

    int-to-short v12, v12

    invoke-static {v3, v9, v12}, Lnet/lingala/zip4j/util/Raw;->l([BIS)V

    .line 9
    invoke-direct {v1, v3, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    .line 10
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->n()I

    move-result v12

    .line 11
    invoke-static {v5, v9, v12}, Lnet/lingala/zip4j/util/Raw;->j([BII)V

    .line 12
    invoke-direct {v1, v5, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    .line 13
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->d()J

    move-result-wide v12

    long-to-int v13, v12

    invoke-static {v5, v9, v13}, Lnet/lingala/zip4j/util/Raw;->j([BII)V

    .line 14
    invoke-direct {v1, v5, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    .line 15
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->b()J

    move-result-wide v12

    const-wide v14, 0xffffffffL

    cmp-long v16, v12, v14

    if-gez v16, :cond_a2

    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->r()J

    move-result-wide v12

    const-wide/16 v16, 0x32

    add-long v12, v12, v16

    cmp-long v16, v12, v14

    if-ltz v16, :cond_86

    goto :goto_a2

    .line 16
    :cond_86
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->b()J

    move-result-wide v12

    invoke-static {v7, v9, v12, v13}, Lnet/lingala/zip4j/util/Raw;->k([BIJ)V

    .line 17
    invoke-static {v7, v9, v5, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    invoke-direct {v1, v5, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    .line 19
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->r()J

    move-result-wide v12

    invoke-static {v7, v9, v12, v13}, Lnet/lingala/zip4j/util/Raw;->k([BIJ)V

    .line 20
    invoke-static {v7, v9, v5, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    invoke-direct {v1, v5, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    const/4 v5, 0x0

    goto :goto_af

    .line 22
    :cond_a2
    :goto_a2
    invoke-static {v7, v9, v14, v15}, Lnet/lingala/zip4j/util/Raw;->k([BIJ)V

    .line 23
    invoke-static {v7, v9, v5, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    invoke-direct {v1, v5, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    .line 25
    invoke-direct {v1, v5, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    const/4 v5, 0x1

    .line 26
    :goto_af
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->l()I

    move-result v12

    int-to-short v12, v12

    invoke-static {v3, v9, v12}, Lnet/lingala/zip4j/util/Raw;->l([BIS)V

    .line 27
    invoke-direct {v1, v3, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    new-array v12, v4, [B

    .line 28
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->o()J

    move-result-wide v16

    cmp-long v13, v16, v14

    if-lez v13, :cond_cc

    .line 29
    invoke-static {v7, v9, v14, v15}, Lnet/lingala/zip4j/util/Raw;->k([BIJ)V

    .line 30
    invoke-static {v7, v9, v12, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v13, 0x1

    goto :goto_d7

    .line 31
    :cond_cc
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->o()J

    move-result-wide v13

    invoke-static {v7, v9, v13, v14}, Lnet/lingala/zip4j/util/Raw;->k([BIJ)V

    .line 32
    invoke-static {v7, v9, v12, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v13, 0x0

    :goto_d7
    if-nez v5, :cond_de

    if-eqz v13, :cond_dc

    goto :goto_de

    :cond_dc
    const/4 v4, 0x0

    goto :goto_e6

    :cond_de
    :goto_de
    if-eqz v5, :cond_e2

    const/16 v4, 0x14

    :cond_e2
    if-eqz v13, :cond_e6

    add-int/lit8 v4, v4, 0x8

    .line 33
    :cond_e6
    :goto_e6
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->a()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v14

    if-eqz v14, :cond_ee

    add-int/lit8 v4, v4, 0xb

    :cond_ee
    int-to-short v4, v4

    .line 34
    invoke-static {v3, v9, v4}, Lnet/lingala/zip4j/util/Raw;->l([BIS)V

    .line 35
    invoke-direct {v1, v3, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    .line 36
    invoke-direct {v1, v8, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    .line 37
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->f()I

    move-result v4

    int-to-short v4, v4

    invoke-static {v3, v9, v4}, Lnet/lingala/zip4j/util/Raw;->l([BIS)V

    .line 38
    invoke-direct {v1, v3, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    .line 39
    invoke-direct {v1, v8, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    .line 40
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->h()[B

    move-result-object v4

    if-eqz v4, :cond_114

    .line 41
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->h()[B

    move-result-object v4

    invoke-direct {v1, v4, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    goto :goto_117

    .line 42
    :cond_114
    invoke-direct {v1, v11, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    .line 43
    :goto_117
    invoke-direct {v1, v12, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    const/16 v4, 0x2e

    .line 44
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->d()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lnet/lingala/zip4j/util/Zip4jUtil;->u(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_137

    .line 45
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->k()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->d()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    .line 46
    invoke-direct {v1, v8, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    .line 47
    array-length v8, v8

    goto :goto_14a

    .line 48
    :cond_137
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->k()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lnet/lingala/zip4j/util/Zip4jUtil;->e(Ljava/lang/String;)[B

    move-result-object v8

    invoke-direct {v1, v8, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    .line 49
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->k()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lnet/lingala/zip4j/util/Zip4jUtil;->k(Ljava/lang/String;)I

    move-result v8

    :goto_14a
    add-int/2addr v4, v8

    if-nez v5, :cond_14f

    if-eqz v13, :cond_195

    :cond_14f
    move-object/from16 v8, p1

    .line 50
    invoke-virtual {v8, v10}, Lnet/lingala/zip4j/model/ZipModel;->u(Z)V

    .line 51
    invoke-static {v3, v9, v10}, Lnet/lingala/zip4j/util/Raw;->l([BIS)V

    .line 52
    invoke-direct {v1, v3, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    add-int/lit8 v4, v4, 0x2

    if-eqz v5, :cond_161

    const/16 v8, 0x10

    goto :goto_162

    :cond_161
    const/4 v8, 0x0

    :goto_162
    if-eqz v13, :cond_166

    add-int/lit8 v8, v8, 0x8

    :cond_166
    int-to-short v8, v8

    .line 53
    invoke-static {v3, v9, v8}, Lnet/lingala/zip4j/util/Raw;->l([BIS)V

    .line 54
    invoke-direct {v1, v3, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    add-int/2addr v4, v2

    if-eqz v5, :cond_187

    .line 55
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->r()J

    move-result-wide v11

    invoke-static {v7, v9, v11, v12}, Lnet/lingala/zip4j/util/Raw;->k([BIJ)V

    .line 56
    invoke-direct {v1, v7, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    add-int/lit8 v4, v4, 0x8

    .line 57
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->b()J

    move-result-wide v11

    invoke-static {v7, v9, v11, v12}, Lnet/lingala/zip4j/util/Raw;->k([BIJ)V

    .line 58
    invoke-direct {v1, v7, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    add-int/2addr v4, v6

    :cond_187
    if-eqz v13, :cond_195

    .line 59
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->o()J

    move-result-wide v5

    invoke-static {v7, v9, v5, v6}, Lnet/lingala/zip4j/util/Raw;->k([BIJ)V

    .line 60
    invoke-direct {v1, v7, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    add-int/lit8 v4, v4, 0x8

    .line 61
    :cond_195
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->a()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v2

    if-eqz v2, :cond_1e5

    .line 62
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->a()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v2

    .line 63
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->d()J

    move-result-wide v5

    long-to-int v6, v5

    int-to-short v5, v6

    invoke-static {v3, v9, v5}, Lnet/lingala/zip4j/util/Raw;->l([BIS)V

    .line 64
    invoke-direct {v1, v3, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    .line 65
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->c()I

    move-result v5

    int-to-short v5, v5

    invoke-static {v3, v9, v5}, Lnet/lingala/zip4j/util/Raw;->l([BIS)V

    .line 66
    invoke-direct {v1, v3, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    .line 67
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->f()I

    move-result v5

    int-to-short v5, v5

    invoke-static {v3, v9, v5}, Lnet/lingala/zip4j/util/Raw;->l([BIS)V

    .line 68
    invoke-direct {v1, v3, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    .line 69
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {v1, v5, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    new-array v5, v10, [B

    .line 70
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->a()I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v5, v9

    .line 71
    invoke-direct {v1, v5, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    .line 72
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->b()I

    move-result v2

    int-to-short v2, v2

    invoke-static {v3, v9, v2}, Lnet/lingala/zip4j/util/Raw;->l([BIS)V

    .line 73
    invoke-direct {v1, v3, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V
    :try_end_1e3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1e3} :catch_1e6

    add-int/lit8 v4, v4, 0xb

    :cond_1e5
    return v4

    :catch_1e6
    move-exception v0

    .line 74
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 75
    :cond_1ed
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "input parameters is null, cannot write local file header"

    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private l(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_49

    if-eqz p2, :cond_49

    const/4 p2, 0x4

    :try_start_5
    new-array p2, p2, [B

    const/16 v0, 0x8

    new-array v0, v0, [B

    const v1, 0x7064b50

    const/4 v2, 0x0

    .line 1
    invoke-static {p2, v2, v1}, Lnet/lingala/zip4j/util/Raw;->j([BII)V

    .line 2
    invoke-direct {p0, p2, p3}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    .line 3
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->h()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->a()I

    move-result v1

    invoke-static {p2, v2, v1}, Lnet/lingala/zip4j/util/Raw;->j([BII)V

    .line 4
    invoke-direct {p0, p2, p3}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    .line 5
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->h()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->b()J

    move-result-wide v3

    invoke-static {v0, v2, v3, v4}, Lnet/lingala/zip4j/util/Raw;->k([BIJ)V

    .line 6
    invoke-direct {p0, v0, p3}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    .line 7
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->h()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object p1

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->c()I

    move-result p1

    invoke-static {p2, v2, p1}, Lnet/lingala/zip4j/util/Raw;->j([BII)V

    .line 8
    invoke-direct {p0, p2, p3}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V
    :try_end_3f
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_5 .. :try_end_3f} :catch_47
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3f} :catch_40

    return-void

    :catch_40
    move-exception p1

    .line 9
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_47
    move-exception p1

    .line 10
    throw p1

    .line 11
    :cond_49
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "zip model or output stream is null, cannot write zip64 end of central directory locator"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private m(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;IJLjava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_ff

    if-eqz p2, :cond_ff

    const/4 p2, 0x2

    :try_start_5
    new-array v0, p2, [B

    new-array p2, p2, [B

    const/4 v1, 0x0

    aput-byte v1, p2, v1

    const/4 v2, 0x1

    aput-byte v1, p2, v2

    const/4 v2, 0x4

    new-array v2, v2, [B

    const/16 v3, 0x8

    new-array v3, v3, [B

    const v4, 0x6064b50

    .line 1
    invoke-static {v2, v1, v4}, Lnet/lingala/zip4j/util/Raw;->j([BII)V

    .line 2
    invoke-direct {p0, v2, p6}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    const-wide/16 v4, 0x2c

    .line 3
    invoke-static {v3, v1, v4, v5}, Lnet/lingala/zip4j/util/Raw;->k([BIJ)V

    .line 4
    invoke-direct {p0, v3, p6}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    .line 5
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->a()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v4

    if-eqz v4, :cond_78

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->a()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v4

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/CentralDirectory;->a()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_78

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->a()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v4

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/CentralDirectory;->a()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_78

    .line 6
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->a()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object p2

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/CentralDirectory;->a()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/FileHeader;->s()I

    move-result p2

    int-to-short p2, p2

    invoke-static {v0, v1, p2}, Lnet/lingala/zip4j/util/Raw;->l([BIS)V

    .line 7
    invoke-direct {p0, v0, p6}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    .line 8
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->a()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object p2

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/CentralDirectory;->a()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/FileHeader;->t()I

    move-result p2

    int-to-short p2, p2

    invoke-static {v0, v1, p2}, Lnet/lingala/zip4j/util/Raw;->l([BIS)V

    .line 9
    invoke-direct {p0, v0, p6}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    goto :goto_7e

    .line 10
    :cond_78
    invoke-direct {p0, p2, p6}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    .line 11
    invoke-direct {p0, p2, p6}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    .line 12
    :goto_7e
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->b()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object p2

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->d()I

    move-result p2

    invoke-static {v2, v1, p2}, Lnet/lingala/zip4j/util/Raw;->j([BII)V

    .line 13
    invoke-direct {p0, v2, p6}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    .line 14
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->b()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object p2

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->e()I

    move-result p2

    invoke-static {v2, v1, p2}, Lnet/lingala/zip4j/util/Raw;->j([BII)V

    .line 15
    invoke-direct {p0, v2, p6}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    .line 16
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->a()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object p2

    if-eqz p2, :cond_ee

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->a()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object p2

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/CentralDirectory;->a()Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_ee

    .line 17
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->a()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object p2

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/CentralDirectory;->a()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 18
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->k()Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 19
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->a()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/CentralDirectory;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->b()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object p1

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->d()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lnet/lingala/zip4j/core/HeaderWriter;->c(Ljava/util/ArrayList;I)I

    const/4 p1, 0x0

    goto :goto_d2

    :cond_d1
    move p1, p2

    :goto_d2
    int-to-long v4, p1

    .line 20
    invoke-static {v3, v1, v4, v5}, Lnet/lingala/zip4j/util/Raw;->k([BIJ)V

    .line 21
    invoke-direct {p0, v3, p6}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    int-to-long p1, p2

    .line 22
    invoke-static {v3, v1, p1, p2}, Lnet/lingala/zip4j/util/Raw;->k([BIJ)V

    .line 23
    invoke-direct {p0, v3, p6}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    int-to-long p1, p3

    .line 24
    invoke-static {v3, v1, p1, p2}, Lnet/lingala/zip4j/util/Raw;->k([BIJ)V

    .line 25
    invoke-direct {p0, v3, p6}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    .line 26
    invoke-static {v3, v1, p4, p5}, Lnet/lingala/zip4j/util/Raw;->k([BIJ)V

    .line 27
    invoke-direct {p0, v3, p6}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    return-void

    .line 28
    :cond_ee
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "invalid central directory/file headers, cannot write end of central directory record"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_f6
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_5 .. :try_end_f6} :catch_fd
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f6} :catch_f6

    :catch_f6
    move-exception p1

    .line 29
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_fd
    move-exception p1

    .line 30
    throw p1

    .line 31
    :cond_ff
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "zip model or output stream is null, cannot write zip64 end of central directory record"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private n(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;[B)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p3, :cond_1f

    .line 1
    :try_start_2
    instance-of v0, p2, Lnet/lingala/zip4j/io/SplitOutputStream;

    if-eqz v0, :cond_14

    .line 2
    move-object v0, p2

    check-cast v0, Lnet/lingala/zip4j/io/SplitOutputStream;

    array-length v1, p3

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/io/SplitOutputStream;->b(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3
    invoke-virtual {p0, p1, p2}, Lnet/lingala/zip4j/core/HeaderWriter;->d(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;)V

    return-void

    .line 4
    :cond_14
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write([B)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_17} :catch_18

    return-void

    :catch_18
    move-exception p1

    .line 5
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 6
    :cond_1f
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "invalid buff to write as zip headers"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public d(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_9b

    if-eqz p2, :cond_9b

    .line 1
    :try_start_4
    invoke-direct {p0, p1, p2}, Lnet/lingala/zip4j/core/HeaderWriter;->f(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;)V

    .line 2
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->b()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->f()J

    move-result-wide v8

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-direct {p0, p1, p2, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->g(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;Ljava/util/List;)I

    move-result v10

    .line 5
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->l()Z

    move-result v1

    if-eqz v1, :cond_81

    .line 6
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->i()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v1

    if-nez v1, :cond_2c

    .line 7
    new-instance v1, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    invoke-direct {v1}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;-><init>()V

    invoke-virtual {p1, v1}, Lnet/lingala/zip4j/model/ZipModel;->t(Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;)V

    .line 8
    :cond_2c
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->h()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v1

    if-nez v1, :cond_3a

    .line 9
    new-instance v1, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    invoke-direct {v1}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;-><init>()V

    invoke-virtual {p1, v1}, Lnet/lingala/zip4j/model/ZipModel;->s(Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;)V

    .line 10
    :cond_3a
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->h()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v1

    int-to-long v2, v10

    add-long/2addr v2, v8

    invoke-virtual {v1, v2, v3}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->e(J)V

    .line 11
    instance-of v1, p2, Lnet/lingala/zip4j/io/SplitOutputStream;

    const/4 v2, 0x1

    if-eqz v1, :cond_66

    .line 12
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->h()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v1

    move-object v3, p2

    check-cast v3, Lnet/lingala/zip4j/io/SplitOutputStream;

    invoke-virtual {v3}, Lnet/lingala/zip4j/io/SplitOutputStream;->c()I

    move-result v3

    invoke-virtual {v1, v3}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->d(I)V

    .line 13
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->h()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v1

    move-object v3, p2

    check-cast v3, Lnet/lingala/zip4j/io/SplitOutputStream;

    invoke-virtual {v3}, Lnet/lingala/zip4j/io/SplitOutputStream;->c()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->g(I)V

    goto :goto_75

    .line 14
    :cond_66
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->h()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->d(I)V

    .line 15
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->h()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v1

    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->g(I)V

    :goto_75
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, v10

    move-wide v5, v8

    move-object v7, v0

    .line 16
    invoke-direct/range {v1 .. v7}, Lnet/lingala/zip4j/core/HeaderWriter;->m(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;IJLjava/util/List;)V

    .line 17
    invoke-direct {p0, p1, p2, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->l(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;Ljava/util/List;)V

    :cond_81
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, v10

    move-wide v5, v8

    move-object v7, v0

    .line 18
    invoke-direct/range {v1 .. v7}, Lnet/lingala/zip4j/core/HeaderWriter;->h(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;IJLjava/util/List;)V

    .line 19
    invoke-direct {p0, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->a(Ljava/util/List;)[B

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->n(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;[B)V
    :try_end_91
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_4 .. :try_end_91} :catch_99
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_91} :catch_92

    return-void

    :catch_92
    move-exception p1

    .line 20
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_99
    move-exception p1

    .line 21
    throw p1

    .line 22
    :cond_9b
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input parameters is null, cannot finalize zip file"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_66

    if-eqz p2, :cond_66

    .line 1
    :try_start_4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->b()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->f()J

    move-result-wide v8

    .line 3
    invoke-direct {p0, p1, p2, v7}, Lnet/lingala/zip4j/core/HeaderWriter;->g(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;Ljava/util/List;)I

    move-result v10

    .line 4
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->l()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 5
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->i()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v0

    if-nez v0, :cond_29

    .line 6
    new-instance v0, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;-><init>()V

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/ZipModel;->t(Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;)V

    .line 7
    :cond_29
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->h()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v0

    if-nez v0, :cond_37

    .line 8
    new-instance v0, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;-><init>()V

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/ZipModel;->s(Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;)V

    .line 9
    :cond_37
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->h()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v0

    int-to-long v1, v10

    add-long/2addr v1, v8

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->e(J)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, v10

    move-wide v4, v8

    move-object v6, v7

    .line 10
    invoke-direct/range {v0 .. v6}, Lnet/lingala/zip4j/core/HeaderWriter;->m(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;IJLjava/util/List;)V

    .line 11
    invoke-direct {p0, p1, p2, v7}, Lnet/lingala/zip4j/core/HeaderWriter;->l(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;Ljava/util/List;)V

    :cond_4c
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, v10

    move-wide v4, v8

    move-object v6, v7

    .line 12
    invoke-direct/range {v0 .. v6}, Lnet/lingala/zip4j/core/HeaderWriter;->h(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;IJLjava/util/List;)V

    .line 13
    invoke-direct {p0, v7}, Lnet/lingala/zip4j/core/HeaderWriter;->a(Ljava/util/List;)[B

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->n(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;[B)V
    :try_end_5c
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_4 .. :try_end_5c} :catch_64
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_5c} :catch_5d

    return-void

    :catch_5d
    move-exception p1

    .line 14
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_64
    move-exception p1

    .line 15
    throw p1

    .line 16
    :cond_66
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input parameters is null, cannot finalize zip file without validations"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i(Lnet/lingala/zip4j/model/LocalFileHeader;Ljava/io/OutputStream;)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_4e

    if-eqz p2, :cond_4e

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [B

    const v2, 0x8074b50

    const/4 v3, 0x0

    .line 2
    invoke-static {v1, v3, v2}, Lnet/lingala/zip4j/util/Raw;->j([BII)V

    .line 3
    invoke-direct {p0, v1, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    .line 4
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->d()J

    move-result-wide v4

    long-to-int v2, v4

    invoke-static {v1, v3, v2}, Lnet/lingala/zip4j/util/Raw;->j([BII)V

    .line 5
    invoke-direct {p0, v1, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    .line 6
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->b()J

    move-result-wide v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v2, v4, v6

    if-ltz v2, :cond_2d

    move-wide v4, v6

    :cond_2d
    long-to-int v2, v4

    .line 7
    invoke-static {v1, v3, v2}, Lnet/lingala/zip4j/util/Raw;->j([BII)V

    .line 8
    invoke-direct {p0, v1, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    .line 9
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->o()J

    move-result-wide v4

    cmp-long p1, v4, v6

    if-ltz p1, :cond_3d

    goto :goto_3e

    :cond_3d
    move-wide v6, v4

    :goto_3e
    long-to-int p1, v6

    .line 10
    invoke-static {v1, v3, p1}, Lnet/lingala/zip4j/util/Raw;->j([BII)V

    .line 11
    invoke-direct {p0, v1, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    .line 12
    invoke-direct {p0, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->a(Ljava/util/List;)[B

    move-result-object p1

    .line 13
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 14
    array-length p1, p1

    return p1

    .line 15
    :cond_4e
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input parameters is null, cannot write extended local header"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public k(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/LocalFileHeader;Ljava/io/OutputStream;)I
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    move-object v1, p0

    move-object/from16 v0, p2

    if-eqz v0, :cond_172

    .line 1
    :try_start_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x2

    new-array v4, v3, [B

    const/4 v5, 0x4

    new-array v6, v5, [B

    const/16 v7, 0x8

    new-array v8, v7, [B

    new-array v7, v7, [B

    const/4 v9, 0x0

    aput-byte v9, v7, v9

    const/4 v10, 0x1

    aput-byte v9, v7, v10

    aput-byte v9, v7, v3

    const/4 v3, 0x3

    aput-byte v9, v7, v3

    aput-byte v9, v7, v5

    const/4 v3, 0x5

    aput-byte v9, v7, v3

    const/4 v3, 0x6

    aput-byte v9, v7, v3

    const/4 v3, 0x7

    aput-byte v9, v7, v3

    .line 2
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->n()I

    move-result v3

    invoke-static {v6, v9, v3}, Lnet/lingala/zip4j/util/Raw;->j([BII)V

    .line 3
    invoke-direct {p0, v6, v2}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    .line 4
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->p()I

    move-result v3

    int-to-short v3, v3

    invoke-static {v4, v9, v3}, Lnet/lingala/zip4j/util/Raw;->l([BIS)V

    .line 5
    invoke-direct {p0, v4, v2}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    .line 6
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->j()[B

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    .line 7
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->c()I

    move-result v3

    int-to-short v3, v3

    invoke-static {v4, v9, v3}, Lnet/lingala/zip4j/util/Raw;->l([BIS)V

    .line 8
    invoke-direct {p0, v4, v2}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    .line 9
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->k()I

    move-result v3

    .line 10
    invoke-static {v6, v9, v3}, Lnet/lingala/zip4j/util/Raw;->j([BII)V

    .line 11
    invoke-direct {p0, v6, v2}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    .line 12
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->d()J

    move-result-wide v11

    long-to-int v3, v11

    invoke-static {v6, v9, v3}, Lnet/lingala/zip4j/util/Raw;->j([BII)V

    .line 13
    invoke-direct {p0, v6, v2}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    .line 14
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->o()J

    move-result-wide v11

    const-wide/16 v13, 0x32

    add-long/2addr v11, v13

    const-wide v13, 0xffffffffL

    cmp-long v3, v11, v13

    if-ltz v3, :cond_8e

    .line 15
    invoke-static {v8, v9, v13, v14}, Lnet/lingala/zip4j/util/Raw;->k([BIJ)V

    .line 16
    invoke-static {v8, v9, v6, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    invoke-direct {p0, v6, v2}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    .line 18
    invoke-direct {p0, v6, v2}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    move-object/from16 v3, p1

    .line 19
    invoke-virtual {v3, v10}, Lnet/lingala/zip4j/model/ZipModel;->u(Z)V

    .line 20
    invoke-virtual {v0, v10}, Lnet/lingala/zip4j/model/LocalFileHeader;->M(Z)V

    const/4 v5, 0x1

    goto :goto_ae

    :cond_8e
    move-object/from16 v3, p1

    .line 21
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->b()J

    move-result-wide v11

    invoke-static {v8, v9, v11, v12}, Lnet/lingala/zip4j/util/Raw;->k([BIJ)V

    .line 22
    invoke-static {v8, v9, v6, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    invoke-direct {p0, v6, v2}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    .line 24
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->o()J

    move-result-wide v11

    invoke-static {v8, v9, v11, v12}, Lnet/lingala/zip4j/util/Raw;->k([BIJ)V

    .line 25
    invoke-static {v8, v9, v6, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    invoke-direct {p0, v6, v2}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    .line 27
    invoke-virtual {v0, v9}, Lnet/lingala/zip4j/model/LocalFileHeader;->M(Z)V

    const/4 v5, 0x0

    .line 28
    :goto_ae
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->i()I

    move-result v6

    int-to-short v6, v6

    invoke-static {v4, v9, v6}, Lnet/lingala/zip4j/util/Raw;->l([BIS)V

    .line 29
    invoke-direct {p0, v4, v2}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    if-eqz v5, :cond_be

    const/16 v6, 0x14

    goto :goto_bf

    :cond_be
    const/4 v6, 0x0

    .line 30
    :goto_bf
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->a()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v11

    if-eqz v11, :cond_c7

    add-int/lit8 v6, v6, 0xb

    :cond_c7
    int-to-short v6, v6

    .line 31
    invoke-static {v4, v9, v6}, Lnet/lingala/zip4j/util/Raw;->l([BIS)V

    .line 32
    invoke-direct {p0, v4, v2}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    .line 33
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->d()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnet/lingala/zip4j/util/Zip4jUtil;->u(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e8

    .line 34
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 35
    invoke-direct {p0, v3, v2}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    goto :goto_f3

    .line 36
    :cond_e8
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnet/lingala/zip4j/util/Zip4jUtil;->e(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    :goto_f3
    if-eqz v5, :cond_110

    .line 37
    invoke-static {v4, v9, v10}, Lnet/lingala/zip4j/util/Raw;->l([BIS)V

    .line 38
    invoke-direct {p0, v4, v2}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    const/16 v3, 0x10

    .line 39
    invoke-static {v4, v9, v3}, Lnet/lingala/zip4j/util/Raw;->l([BIS)V

    .line 40
    invoke-direct {p0, v4, v2}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    .line 41
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->o()J

    move-result-wide v5

    invoke-static {v8, v9, v5, v6}, Lnet/lingala/zip4j/util/Raw;->k([BIJ)V

    .line 42
    invoke-direct {p0, v8, v2}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    .line 43
    invoke-direct {p0, v7, v2}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    .line 44
    :cond_110
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->a()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v3

    if-eqz v3, :cond_15e

    .line 45
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/LocalFileHeader;->a()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->d()J

    move-result-wide v5

    long-to-int v3, v5

    int-to-short v3, v3

    invoke-static {v4, v9, v3}, Lnet/lingala/zip4j/util/Raw;->l([BIS)V

    .line 47
    invoke-direct {p0, v4, v2}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    .line 48
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->c()I

    move-result v3

    int-to-short v3, v3

    invoke-static {v4, v9, v3}, Lnet/lingala/zip4j/util/Raw;->l([BIS)V

    .line 49
    invoke-direct {p0, v4, v2}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    .line 50
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->f()I

    move-result v3

    int-to-short v3, v3

    invoke-static {v4, v9, v3}, Lnet/lingala/zip4j/util/Raw;->l([BIS)V

    .line 51
    invoke-direct {p0, v4, v2}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    .line 52
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    new-array v3, v10, [B

    .line 53
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->a()I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v3, v9

    .line 54
    invoke-direct {p0, v3, v2}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    .line 55
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->b()I

    move-result v0

    int-to-short v0, v0

    invoke-static {v4, v9, v0}, Lnet/lingala/zip4j/util/Raw;->l([BIS)V

    .line 56
    invoke-direct {p0, v4, v2}, Lnet/lingala/zip4j/core/HeaderWriter;->b([BLjava/util/List;)V

    .line 57
    :cond_15e
    invoke-direct {p0, v2}, Lnet/lingala/zip4j/core/HeaderWriter;->a(Ljava/util/List;)[B

    move-result-object v0

    move-object/from16 v2, p3

    .line 58
    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 59
    array-length v0, v0
    :try_end_168
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_5 .. :try_end_168} :catch_170
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_168} :catch_169

    return v0

    :catch_169
    move-exception v0

    .line 60
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_170
    move-exception v0

    .line 61
    throw v0

    .line 62
    :cond_172
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "input parameters are null, cannot write local file header"

    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
