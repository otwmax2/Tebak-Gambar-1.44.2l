###### Class net.lingala.zip4j.util.ArchiveMaintainer (net.lingala.zip4j.util.ArchiveMaintainer)
.class public Lnet/lingala/zip4j/util/ArchiveMaintainer;
.super Ljava/lang/Object;
.source "ArchiveMaintainer.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lnet/lingala/zip4j/util/ArchiveMaintainer;Lnet/lingala/zip4j/model/ZipModel;Ljava/io/File;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->e(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/File;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    return-void
.end method

.method private b(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLnet/lingala/zip4j/progress/ProgressMonitor;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_8a

    if-eqz p2, :cond_8a

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-ltz v2, :cond_82

    cmp-long v2, p5, v0

    if-ltz v2, :cond_7a

    cmp-long v2, p3, p5

    if-gtz v2, :cond_72

    cmp-long v2, p3, p5

    if-nez v2, :cond_17

    return-void

    .line 1
    :cond_17
    invoke-virtual {p7}, Lnet/lingala/zip4j/progress/ProgressMonitor;->d()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eqz v2, :cond_26

    .line 2
    invoke-virtual {p7, v4}, Lnet/lingala/zip4j/progress/ProgressMonitor;->h(I)V

    .line 3
    invoke-virtual {p7, v3}, Lnet/lingala/zip4j/progress/ProgressMonitor;->i(I)V

    return-void

    .line 4
    :cond_26
    :try_start_26
    invoke-virtual {p1, p3, p4}, Ljava/io/RandomAccessFile;->seek(J)V

    sub-long/2addr p5, p3

    const-wide/16 p3, 0x1000

    cmp-long v2, p5, p3

    if-gez v2, :cond_34

    long-to-int p3, p5

    .line 5
    new-array p3, p3, [B

    goto :goto_38

    :cond_34
    const/16 p3, 0x1000

    new-array p3, p3, [B

    .line 6
    :cond_38
    :goto_38
    invoke-virtual {p1, p3}, Ljava/io/RandomAccessFile;->read([B)I

    move-result p4

    const/4 v2, -0x1

    if-eq p4, v2, :cond_63

    .line 7
    invoke-virtual {p2, p3, v3, p4}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v5, p4

    .line 8
    invoke-virtual {p7, v5, v6}, Lnet/lingala/zip4j/progress/ProgressMonitor;->k(J)V

    .line 9
    invoke-virtual {p7}, Lnet/lingala/zip4j/progress/ProgressMonitor;->d()Z

    move-result p4

    if-eqz p4, :cond_50

    .line 10
    invoke-virtual {p7, v4}, Lnet/lingala/zip4j/progress/ProgressMonitor;->h(I)V

    return-void

    :cond_50
    add-long/2addr v0, v5

    cmp-long p4, v0, p5

    if-nez p4, :cond_56

    goto :goto_63

    .line 11
    :cond_56
    array-length p4, p3

    int-to-long v5, p4

    add-long/2addr v5, v0

    cmp-long p4, v5, p5

    if-lez p4, :cond_38

    sub-long p3, p5, v0

    long-to-int p4, p3

    .line 12
    new-array p3, p4, [B
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_62} :catch_6b
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_62} :catch_64

    goto :goto_38

    :cond_63
    :goto_63
    return-void

    :catch_64
    move-exception p1

    .line 13
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_6b
    move-exception p1

    .line 14
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 15
    :cond_72
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "start offset is greater than end offset, cannot copy file"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_7a
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "end offset is negative, cannot copy file"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_82
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "starting offset is negative, cannot copy file"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_8a
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input or output stream is null, cannot copy file"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    goto :goto_93

    :goto_92
    throw p1

    :goto_93
    goto :goto_92
.end method

.method private c(Lnet/lingala/zip4j/model/ZipModel;Ljava/lang/String;)Ljava/io/RandomAccessFile;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_22

    .line 1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/lingala/zip4j/util/Zip4jUtil;->u(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2
    :try_start_c
    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->j()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_1a} :catch_1b

    return-object v0

    :catch_1b
    move-exception p1

    .line 3
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 4
    :cond_22
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input parameter is null in getFilePointer, cannot create file handler to remove file"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private d(Lnet/lingala/zip4j/model/ZipModel;I)Ljava/io/RandomAccessFile;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_9b

    if-ltz p2, :cond_93

    .line 1
    :try_start_4
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->j()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->b()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->d()I

    move-result v1

    if-ne p2, v1, :cond_17

    .line 3
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->j()Ljava/lang/String;

    move-result-object p1
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_16} :catch_8c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_16} :catch_85

    goto :goto_5b

    :cond_17
    const/16 p1, 0x9

    const-string v1, "."

    const/4 v2, 0x0

    if-lt p2, p1, :cond_3d

    .line 4
    :try_start_1e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".z"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_5b

    .line 5
    :cond_3d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".z0"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    :goto_5b
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-static {p2}, Lnet/lingala/zip4j/util/Zip4jUtil;->a(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 8
    new-instance p1, Ljava/io/RandomAccessFile;

    const-string v0, "r"

    invoke-direct {p1, p2, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p1

    .line 9
    :cond_6e
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "split file does not exist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_85
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_85} :catch_8c
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_85} :catch_85

    :catch_85
    move-exception p1

    .line 10
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_8c
    move-exception p1

    .line 11
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 12
    :cond_93
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "invlaid part number, cannot create split file handler"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_9b
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "zip model is null, cannot create split file handler"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private e(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/File;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    move-object/from16 v10, p3

    if-eqz v0, :cond_192

    .line 1
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->k()Z

    move-result v1

    if-eqz v1, :cond_186

    .line 2
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 3
    :try_start_14
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->b()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v2

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->d()I

    move-result v12

    if-lez v12, :cond_14d

    move-object/from16 v2, p2

    .line 4
    invoke-direct {v9, v2}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->g(Ljava/io/File;)Ljava/io/OutputStream;

    move-result-object v13
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_24} :catch_16c
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_24} :catch_160
    .catchall {:try_start_14 .. :try_end_24} :catchall_15c

    const-wide/16 v14, 0x0

    move-wide v4, v14

    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_29
    if-gt v6, v12, :cond_10a

    .line 5
    :try_start_2b
    invoke-direct {v9, v0, v6}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->d(Lnet/lingala/zip4j/model/ZipModel;I)Ljava/io/RandomAccessFile;

    move-result-object v7
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2f} :catch_147
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2f} :catch_141
    .catchall {:try_start_2b .. :try_end_2f} :catchall_13b

    .line 6
    :try_start_2f
    new-instance v1, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    invoke-direct {v1, v8, v9}, Ljava/lang/Long;-><init>(J)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_38} :catch_104
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_38} :catch_fe
    .catchall {:try_start_2f .. :try_end_38} :catchall_f8

    const/4 v3, 0x4

    if-nez v6, :cond_7e

    .line 7
    :try_start_3b
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->a()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v8

    if-eqz v8, :cond_7e

    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->a()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v8

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/CentralDirectory;->a()Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_7e

    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->a()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v8

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/CentralDirectory;->a()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_7e

    new-array v8, v3, [B

    .line 8
    invoke-virtual {v7, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 9
    invoke-virtual {v7, v8}, Ljava/io/RandomAccessFile;->read([B)I

    const/4 v9, 0x0

    .line 10
    invoke-static {v8, v9}, Lnet/lingala/zip4j/util/Raw;->e([BI)I

    move-result v8

    move-wide/from16 v16, v4

    int-to-long v3, v8

    const-wide/32 v18, 0x8074b50

    cmp-long v5, v3, v18

    if-nez v5, :cond_81

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/16 v18, 0x1

    goto :goto_84

    :catchall_75
    move-exception v0

    goto/16 :goto_fb

    :catch_78
    move-exception v0

    goto/16 :goto_101

    :catch_7b
    move-exception v0

    goto/16 :goto_107

    :cond_7e
    move-wide/from16 v16, v4

    const/4 v9, 0x0

    :cond_81
    move/from16 v18, v2

    const/4 v3, 0x0

    :goto_84
    if-ne v6, v12, :cond_93

    .line 11
    new-instance v1, Ljava/lang/Long;

    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->b()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v2

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->f()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/lang/Long;-><init>(J)V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_93} :catch_7b
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_93} :catch_78
    .catchall {:try_start_3b .. :try_end_93} :catchall_75

    :cond_93
    move-object v8, v1

    int-to-long v4, v3

    .line 12
    :try_start_95
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v19
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_99} :catch_104
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_99} :catch_fe
    .catchall {:try_start_95 .. :try_end_99} :catchall_f8

    move-object/from16 v1, p0

    move-object v2, v7

    move-object v3, v13

    move-wide/from16 v14, v16

    move-wide/from16 v16, v4

    move/from16 v21, v6

    move-object/from16 v22, v7

    move-wide/from16 v6, v19

    move-object v9, v8

    const/4 v0, 0x0

    move-object/from16 v8, p3

    :try_start_ab
    invoke-direct/range {v1 .. v8}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->b(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLnet/lingala/zip4j/progress/ProgressMonitor;)V

    .line 13
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sub-long v1, v1, v16

    add-long v4, v14, v1

    .line 14
    invoke-virtual/range {p3 .. p3}, Lnet/lingala/zip4j/progress/ProgressMonitor;->d()Z

    move-result v1

    if-eqz v1, :cond_cc

    const/4 v1, 0x3

    .line 15
    invoke-virtual {v10, v1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->h(I)V

    .line 16
    invoke-virtual {v10, v0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->i(I)V
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_c3} :catch_f0
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_c3} :catch_e8
    .catchall {:try_start_ab .. :try_end_c3} :catchall_e0

    if-eqz v13, :cond_c8

    .line 17
    :try_start_c5
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_c8} :catch_c8

    .line 18
    :catch_c8
    :cond_c8
    :try_start_c8
    invoke-virtual/range {v22 .. v22}, Ljava/io/RandomAccessFile;->close()V
    :try_end_cb
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_cb} :catch_cb

    :catch_cb
    return-void

    .line 19
    :cond_cc
    :try_start_cc
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_cf
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_cf} :catch_f0
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_cf} :catch_e8
    .catchall {:try_start_cc .. :try_end_cf} :catchall_e0

    .line 20
    :try_start_cf
    invoke-virtual/range {v22 .. v22}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_d2} :catch_d2
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_d2} :catch_e8
    .catchall {:try_start_cf .. :try_end_d2} :catchall_e0

    :catch_d2
    add-int/lit8 v6, v21, 0x1

    const-wide/16 v14, 0x0

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    move/from16 v2, v18

    move-object/from16 v1, v22

    goto/16 :goto_29

    :catchall_e0
    move-exception v0

    move-object/from16 v3, p0

    move-object v1, v13

    move-object/from16 v7, v22

    goto/16 :goto_179

    :catch_e8
    move-exception v0

    move-object/from16 v3, p0

    move-object v1, v13

    move-object/from16 v7, v22

    goto/16 :goto_163

    :catch_f0
    move-exception v0

    move-object/from16 v3, p0

    move-object v1, v13

    move-object/from16 v7, v22

    goto/16 :goto_16f

    :catchall_f8
    move-exception v0

    move-object/from16 v22, v7

    :goto_fb
    move-object/from16 v3, p0

    goto :goto_13f

    :catch_fe
    move-exception v0

    move-object/from16 v22, v7

    :goto_101
    move-object/from16 v3, p0

    goto :goto_145

    :catch_104
    move-exception v0

    move-object/from16 v22, v7

    :goto_107
    move-object/from16 v3, p0

    goto :goto_14b

    :cond_10a
    move-wide v14, v4

    .line 21
    :try_start_10b
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/lingala/zip4j/model/ZipModel;

    .line 22
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->b()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->o(J)V
    :try_end_118
    .catch Ljava/io/IOException; {:try_start_10b .. :try_end_118} :catch_147
    .catch Ljava/lang/Exception; {:try_start_10b .. :try_end_118} :catch_141
    .catchall {:try_start_10b .. :try_end_118} :catchall_13b

    move-object/from16 v3, p0

    .line 23
    :try_start_11a
    invoke-direct {v3, v0, v11, v2}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->m(Lnet/lingala/zip4j/model/ZipModel;Ljava/util/ArrayList;Z)V

    .line 24
    new-instance v2, Lnet/lingala/zip4j/core/HeaderWriter;

    invoke-direct {v2}, Lnet/lingala/zip4j/core/HeaderWriter;-><init>()V

    .line 25
    invoke-virtual {v2, v0, v13}, Lnet/lingala/zip4j/core/HeaderWriter;->e(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;)V

    .line 26
    invoke-virtual/range {p3 .. p3}, Lnet/lingala/zip4j/progress/ProgressMonitor;->b()V
    :try_end_128
    .catch Ljava/io/IOException; {:try_start_11a .. :try_end_128} :catch_139
    .catch Ljava/lang/Exception; {:try_start_11a .. :try_end_128} :catch_137
    .catchall {:try_start_11a .. :try_end_128} :catchall_135

    if-eqz v13, :cond_12f

    .line 27
    :try_start_12a
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_12d
    .catch Ljava/io/IOException; {:try_start_12a .. :try_end_12d} :catch_12e

    goto :goto_12f

    :catch_12e
    nop

    :cond_12f
    :goto_12f
    if-eqz v1, :cond_134

    .line 28
    :try_start_131
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_134
    .catch Ljava/io/IOException; {:try_start_131 .. :try_end_134} :catch_134

    :catch_134
    :cond_134
    return-void

    :catchall_135
    move-exception v0

    goto :goto_13e

    :catch_137
    move-exception v0

    goto :goto_144

    :catch_139
    move-exception v0

    goto :goto_14a

    :catchall_13b
    move-exception v0

    move-object/from16 v3, p0

    :goto_13e
    move-object v7, v1

    :goto_13f
    move-object v1, v13

    goto :goto_179

    :catch_141
    move-exception v0

    move-object/from16 v3, p0

    :goto_144
    move-object v7, v1

    :goto_145
    move-object v1, v13

    goto :goto_163

    :catch_147
    move-exception v0

    move-object/from16 v3, p0

    :goto_14a
    move-object v7, v1

    :goto_14b
    move-object v1, v13

    goto :goto_16f

    :cond_14d
    move-object v3, v9

    .line 29
    :try_start_14e
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "corrupt zip model, archive not a split zip file"

    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_156
    .catch Ljava/io/IOException; {:try_start_14e .. :try_end_156} :catch_15a
    .catch Ljava/lang/Exception; {:try_start_14e .. :try_end_156} :catch_158
    .catchall {:try_start_14e .. :try_end_156} :catchall_156

    :catchall_156
    move-exception v0

    goto :goto_15e

    :catch_158
    move-exception v0

    goto :goto_162

    :catch_15a
    move-exception v0

    goto :goto_16e

    :catchall_15c
    move-exception v0

    move-object v3, v9

    :goto_15e
    move-object v7, v1

    goto :goto_179

    :catch_160
    move-exception v0

    move-object v3, v9

    :goto_162
    move-object v7, v1

    .line 30
    :goto_163
    :try_start_163
    invoke-virtual {v10, v0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->a(Ljava/lang/Throwable;)V

    .line 31
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_16c
    move-exception v0

    move-object v3, v9

    :goto_16e
    move-object v7, v1

    .line 32
    :goto_16f
    invoke-virtual {v10, v0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->a(Ljava/lang/Throwable;)V

    .line 33
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_178
    .catchall {:try_start_163 .. :try_end_178} :catchall_178

    :catchall_178
    move-exception v0

    :goto_179
    if-eqz v1, :cond_180

    .line 34
    :try_start_17b
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_17e
    .catch Ljava/io/IOException; {:try_start_17b .. :try_end_17e} :catch_17f

    goto :goto_180

    :catch_17f
    nop

    :cond_180
    :goto_180
    if-eqz v7, :cond_185

    .line 35
    :try_start_182
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_185
    .catch Ljava/io/IOException; {:try_start_182 .. :try_end_185} :catch_185

    .line 36
    :catch_185
    :cond_185
    throw v0

    :cond_186
    move-object v3, v9

    .line 37
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "archive not a split zip file"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v10, v0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->a(Ljava/lang/Throwable;)V

    .line 39
    throw v0

    :cond_192
    move-object v3, v9

    .line 40
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "one of the input parameters is null, cannot merge split zip file"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v10, v0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->a(Ljava/lang/Throwable;)V

    .line 42
    goto :goto_19f

    :goto_19e
    throw v0

    :goto_19f
    goto :goto_19e
.end method

.method private g(Ljava/io/File;)Ljava/io/OutputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_16

    .line 1
    :try_start_2
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_7} :catch_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_8

    return-object v0

    :catch_8
    move-exception p1

    .line 2
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_f
    move-exception p1

    .line 3
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 4
    :cond_16
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "outFile is null, cannot create outputstream"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private h(Ljava/io/File;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_12

    return-void

    .line 4
    :cond_12
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "cannot rename modified zip file"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1a
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "cannot delete old zip file"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private i(Lnet/lingala/zip4j/model/ZipModel;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_4a

    .line 1
    :try_start_2
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->a()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 2
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->b()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->m(I)V

    .line 3
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->b()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v0

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->n(I)V

    .line 4
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->b()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v0

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->a()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/CentralDirectory;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->r(I)V

    .line 5
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->b()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v0

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->a()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object p1

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/CentralDirectory;->a()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->s(I)V

    return-void

    .line 6
    :cond_3e
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "corrupt zip model - getCentralDirectory, cannot update split zip model"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_46
    move-exception p1

    goto :goto_52

    :catch_48
    move-exception p1

    goto :goto_58

    .line 7
    :cond_4a
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "zip model is null - cannot update end of central directory for split zip model"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_52
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_2 .. :try_end_52} :catch_48
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_52} :catch_46

    .line 8
    :goto_52
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 9
    :goto_58
    throw p1
.end method

.method private j(Lnet/lingala/zip4j/model/ZipModel;Ljava/util/ArrayList;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->a()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v0

    if-eqz v0, :cond_7b

    .line 2
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->a()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/CentralDirectory;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz p3, :cond_17

    const/4 p3, 0x4

    goto :goto_18

    :cond_17
    const/4 p3, 0x0

    :goto_18
    const/4 v2, 0x0

    :goto_19
    if-ge v2, v0, :cond_7a

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    .line 3
    :goto_1e
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->a()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v6

    invoke-virtual {v6}, Lnet/lingala/zip4j/model/CentralDirectory;->a()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v6}, Lnet/lingala/zip4j/model/FileHeader;->f()I

    move-result v6

    if-ge v5, v6, :cond_40

    .line 4
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 5
    :cond_40
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->a()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/CentralDirectory;->a()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->a()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v6

    invoke-virtual {v6}, Lnet/lingala/zip4j/model/CentralDirectory;->a()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v6}, Lnet/lingala/zip4j/model/FileHeader;->o()J

    move-result-wide v6

    add-long/2addr v6, v3

    int-to-long v3, p3

    sub-long/2addr v6, v3

    invoke-virtual {v5, v6, v7}, Lnet/lingala/zip4j/model/FileHeader;->S(J)V

    .line 6
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->a()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v3

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/CentralDirectory;->a()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v3, v1}, Lnet/lingala/zip4j/model/FileHeader;->F(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_7a
    return-void

    .line 7
    :cond_7b
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "corrupt zip model - getCentralDirectory, cannot update split zip model"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_83
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_83} :catch_8a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_83} :catch_83

    :catch_83
    move-exception p1

    .line 8
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_8a
    move-exception p1

    .line 9
    goto :goto_8d

    :goto_8c
    throw p1

    :goto_8d
    goto :goto_8c
.end method

.method private k(Lnet/lingala/zip4j/model/ZipModel;Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_40

    .line 1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->h()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 2
    :cond_9
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->h()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->d(I)V

    const-wide/16 v2, 0x0

    .line 3
    :goto_13
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_27

    .line 4
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 5
    :cond_27
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->h()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object p2

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->h()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->b()J

    move-result-wide v0

    add-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->e(J)V

    .line 6
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->h()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->g(I)V

    return-void

    .line 7
    :cond_40
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "zip model is null, cannot update split Zip64 end of central directory locator"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    goto :goto_49

    :goto_48
    throw p1

    :goto_49
    goto :goto_48
.end method

.method private l(Lnet/lingala/zip4j/model/ZipModel;Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_4f

    .line 1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->i()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 2
    :cond_9
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->i()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->f(I)V

    .line 3
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->i()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v0

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->g(I)V

    .line 4
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->i()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v0

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->b()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v2

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->h()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->m(J)V

    const-wide/16 v2, 0x0

    .line 5
    :goto_2a
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3e

    .line 6
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 7
    :cond_3e
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->i()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object p2

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->i()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object p1

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->b()J

    move-result-wide v0

    add-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->h(J)V

    return-void

    .line 8
    :cond_4f
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "zip model is null, cannot update split Zip64 end of central directory record"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    goto :goto_58

    :goto_57
    throw p1

    :goto_58
    goto :goto_57
.end method

.method private m(Lnet/lingala/zip4j/model/ZipModel;Ljava/util/ArrayList;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_19

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/ZipModel;->q(Z)V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->j(Lnet/lingala/zip4j/model/ZipModel;Ljava/util/ArrayList;Z)V

    .line 3
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->i(Lnet/lingala/zip4j/model/ZipModel;)V

    .line 4
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->l()Z

    move-result p3

    if-eqz p3, :cond_18

    .line 5
    invoke-direct {p0, p1, p2}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->k(Lnet/lingala/zip4j/model/ZipModel;Ljava/util/ArrayList;)V

    .line 6
    invoke-direct {p0, p1, p2}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->l(Lnet/lingala/zip4j/model/ZipModel;Ljava/util/ArrayList;)V

    :cond_18
    return-void

    .line 7
    :cond_19
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "zip model is null, cannot update split zip model"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public f(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/progress/ProgressMonitor;)Ljava/util/HashMap;
    .registers 36
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v10, p3

    const-string v11, "cannot close input stream or output stream when trying to delete a file from zip file"

    if-eqz v1, :cond_440

    if-eqz v0, :cond_440

    .line 1
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    const/4 v15, 0x1

    .line 2
    :try_start_14
    invoke-static/range {p1 .. p2}, Lnet/lingala/zip4j/util/Zip4jUtil;->q(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;)I

    move-result v8

    if-ltz v8, :cond_3e5

    .line 3
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->k()Z

    move-result v2

    if-nez v2, :cond_3db

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v5, 0x3e8

    rem-long/2addr v2, v5

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_3a
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_14 .. :try_end_3a} :catch_40f
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_3a} :catch_3fd
    .catchall {:try_start_14 .. :try_end_3a} :catchall_3f5

    .line 6
    :try_start_3a
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3f
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_3a .. :try_end_3f} :catch_3d6
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3f} :catch_3d1
    .catchall {:try_start_3a .. :try_end_3f} :catchall_3cc

    move-object v7, v2

    .line 7
    :goto_40
    :try_start_40
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_44
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_40 .. :try_end_44} :catch_3c9
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_44} :catch_3c6
    .catchall {:try_start_40 .. :try_end_44} :catchall_3c3

    if-eqz v2, :cond_7e

    .line 8
    :try_start_46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->j()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-long/2addr v2, v5

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 10
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_63
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_46 .. :try_end_63} :catch_75
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_63} :catch_6c
    .catchall {:try_start_46 .. :try_end_63} :catchall_64

    goto :goto_40

    :catchall_64
    move-exception v0

    move-object v2, v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    goto/16 :goto_420

    :catch_6c
    move-exception v0

    move-object v2, v7

    const/4 v4, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v28, 0x0

    goto/16 :goto_406

    :catch_75
    move-exception v0

    move-object v2, v7

    const/4 v4, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v28, 0x0

    goto/16 :goto_418

    .line 11
    :cond_7e
    :try_start_7e
    new-instance v14, Lnet/lingala/zip4j/io/SplitOutputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v14, v2}, Lnet/lingala/zip4j/io/SplitOutputStream;-><init>(Ljava/io/File;)V
    :try_end_88
    .catch Ljava/io/FileNotFoundException; {:try_start_7e .. :try_end_88} :catch_3b3
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_7e .. :try_end_88} :catch_3c9
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_88} :catch_3c6
    .catchall {:try_start_7e .. :try_end_88} :catchall_3c3

    .line 12
    :try_start_88
    new-instance v6, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_91
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_88 .. :try_end_91} :catch_3aa
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_91} :catch_3a1
    .catchall {:try_start_88 .. :try_end_91} :catchall_397

    :try_start_91
    const-string v2, "r"

    .line 13
    invoke-direct {v9, v0, v2}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->c(Lnet/lingala/zip4j/model/ZipModel;Ljava/lang/String;)Ljava/io/RandomAccessFile;

    move-result-object v4
    :try_end_97
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_91 .. :try_end_97} :catch_38e
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_97} :catch_385
    .catchall {:try_start_91 .. :try_end_97} :catchall_378

    .line 14
    :try_start_97
    new-instance v2, Lnet/lingala/zip4j/core/HeaderReader;

    invoke-direct {v2, v4}, Lnet/lingala/zip4j/core/HeaderReader;-><init>(Ljava/io/RandomAccessFile;)V

    .line 15
    invoke-virtual {v2, v1}, Lnet/lingala/zip4j/core/HeaderReader;->n(Lnet/lingala/zip4j/model/FileHeader;)Lnet/lingala/zip4j/model/LocalFileHeader;

    move-result-object v2

    if-eqz v2, :cond_348

    .line 16
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->o()J

    move-result-wide v2

    .line 17
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->u()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v5
    :try_end_aa
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_97 .. :try_end_aa} :catch_370
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_aa} :catch_368
    .catchall {:try_start_97 .. :try_end_aa} :catchall_35d

    const-wide/16 v16, -0x1

    if-eqz v5, :cond_d9

    :try_start_ae
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->u()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->c()J

    move-result-wide v18

    cmp-long v5, v18, v16

    if-eqz v5, :cond_d9

    .line 18
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->u()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->c()J

    move-result-wide v2
    :try_end_c2
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_ae .. :try_end_c2} :catch_d2
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_c2} :catch_cb
    .catchall {:try_start_ae .. :try_end_c2} :catchall_c3

    goto :goto_d9

    :catchall_c3
    move-exception v0

    move-object v2, v7

    move-object v3, v14

    const/4 v13, 0x0

    move-object v14, v4

    move-object v4, v6

    goto/16 :goto_420

    :catch_cb
    move-exception v0

    move-object/from16 v28, v4

    move-object v4, v6

    move-object v2, v7

    goto/16 :goto_405

    :catch_d2
    move-exception v0

    move-object/from16 v28, v4

    move-object v4, v6

    move-object v2, v7

    goto/16 :goto_417

    :cond_d9
    :goto_d9
    move-wide/from16 v18, v2

    .line 19
    :try_start_db
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->b()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->f()J

    move-result-wide v1

    .line 20
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->l()Z

    move-result v3
    :try_end_e7
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_db .. :try_end_e7} :catch_370
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_e7} :catch_368
    .catchall {:try_start_db .. :try_end_e7} :catchall_35d

    if-eqz v3, :cond_f7

    .line 21
    :try_start_e9
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->i()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v3

    if-eqz v3, :cond_f7

    .line 22
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->i()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->b()J

    move-result-wide v1
    :try_end_f7
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_e9 .. :try_end_f7} :catch_d2
    .catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_f7} :catch_cb
    .catchall {:try_start_e9 .. :try_end_f7} :catchall_c3

    :cond_f7
    move-wide/from16 v20, v1

    .line 23
    :try_start_f9
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->a()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/CentralDirectory;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 24
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v15

    const-wide/16 v22, 0x1

    if-ne v8, v2, :cond_10f

    sub-long v2, v20, v22

    :goto_10c
    move-wide/from16 v24, v2

    goto :goto_13e

    :cond_10f
    add-int/lit8 v2, v8, 0x1

    .line 25
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/lingala/zip4j/model/FileHeader;
    :try_end_117
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_f9 .. :try_end_117} :catch_370
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_117} :catch_368
    .catchall {:try_start_f9 .. :try_end_117} :catchall_35d

    if-eqz v2, :cond_13c

    .line 26
    :try_start_119
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/FileHeader;->o()J

    move-result-wide v24

    sub-long v24, v24, v22

    .line 27
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/FileHeader;->u()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v3

    if-eqz v3, :cond_13e

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/FileHeader;->u()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v3

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->c()J

    move-result-wide v26

    cmp-long v3, v26, v16

    if-eqz v3, :cond_13e

    .line 28
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/FileHeader;->u()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v2

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->c()J

    move-result-wide v2
    :try_end_139
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_119 .. :try_end_139} :catch_d2
    .catch Ljava/lang/Exception; {:try_start_119 .. :try_end_139} :catch_cb
    .catchall {:try_start_119 .. :try_end_139} :catchall_c3

    sub-long v2, v2, v22

    goto :goto_10c

    :cond_13c
    move-wide/from16 v24, v16

    :cond_13e
    :goto_13e
    const-wide/16 v2, 0x0

    cmp-long v5, v18, v2

    if-ltz v5, :cond_33b

    cmp-long v5, v24, v2

    if-ltz v5, :cond_33b

    if-nez v8, :cond_1a3

    .line 29
    :try_start_14a
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->a()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/CentralDirectory;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_156
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_14a .. :try_end_156} :catch_196
    .catch Ljava/lang/Exception; {:try_start_14a .. :try_end_156} :catch_189
    .catchall {:try_start_14a .. :try_end_156} :catchall_179

    if-le v1, v15, :cond_170

    add-long v26, v24, v22

    move-object/from16 v1, p0

    move-object v2, v4

    move-object v3, v14

    move-object/from16 v28, v4

    move-wide/from16 v4, v26

    move-object/from16 v30, v6

    move-object/from16 v29, v7

    move-wide/from16 v6, v20

    move v13, v8

    move-object/from16 v8, p3

    .line 30
    :try_start_16b
    invoke-direct/range {v1 .. v8}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->b(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLnet/lingala/zip4j/progress/ProgressMonitor;)V
    :try_end_16e
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_16b .. :try_end_16e} :catch_1c4
    .catch Ljava/lang/Exception; {:try_start_16b .. :try_end_16e} :catch_1c2
    .catchall {:try_start_16b .. :try_end_16e} :catchall_1c0

    goto/16 :goto_1e2

    :cond_170
    move-object/from16 v28, v4

    move-object/from16 v30, v6

    move-object/from16 v29, v7

    move v13, v8

    goto/16 :goto_1e2

    :catchall_179
    move-exception v0

    move-object/from16 v28, v4

    move-object/from16 v30, v6

    move-object/from16 v29, v7

    :goto_180
    move-object v3, v14

    move-object/from16 v14, v28

    move-object/from16 v2, v29

    :goto_185
    move-object/from16 v4, v30

    goto/16 :goto_3fb

    :catch_189
    move-exception v0

    move-object/from16 v28, v4

    move-object/from16 v30, v6

    move-object/from16 v29, v7

    :goto_190
    move-object/from16 v2, v29

    :goto_192
    move-object/from16 v4, v30

    goto/16 :goto_405

    :catch_196
    move-exception v0

    move-object/from16 v28, v4

    move-object/from16 v30, v6

    move-object/from16 v29, v7

    :goto_19d
    move-object/from16 v2, v29

    :goto_19f
    move-object/from16 v4, v30

    goto/16 :goto_417

    :cond_1a3
    move-object/from16 v28, v4

    move-object/from16 v30, v6

    move-object/from16 v29, v7

    move v13, v8

    .line 31
    :try_start_1aa
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_1ae
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_1aa .. :try_end_1ae} :catch_335
    .catch Ljava/lang/Exception; {:try_start_1aa .. :try_end_1ae} :catch_32f
    .catchall {:try_start_1aa .. :try_end_1ae} :catchall_329

    sub-int/2addr v1, v15

    if-ne v13, v1, :cond_1c6

    const-wide/16 v4, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    move-object v3, v14

    move-wide/from16 v6, v18

    move-object/from16 v8, p3

    .line 32
    :try_start_1bc
    invoke-direct/range {v1 .. v8}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->b(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLnet/lingala/zip4j/progress/ProgressMonitor;)V
    :try_end_1bf
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_1bc .. :try_end_1bf} :catch_1c4
    .catch Ljava/lang/Exception; {:try_start_1bc .. :try_end_1bf} :catch_1c2
    .catchall {:try_start_1bc .. :try_end_1bf} :catchall_1c0

    goto :goto_1e2

    :catchall_1c0
    move-exception v0

    goto :goto_180

    :catch_1c2
    move-exception v0

    goto :goto_190

    :catch_1c4
    move-exception v0

    goto :goto_19d

    :cond_1c6
    const-wide/16 v4, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    move-object v3, v14

    move-wide/from16 v6, v18

    move-object/from16 v8, p3

    .line 33
    :try_start_1d1
    invoke-direct/range {v1 .. v8}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->b(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLnet/lingala/zip4j/progress/ProgressMonitor;)V

    add-long v4, v24, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    move-object v3, v14

    move-wide/from16 v6, v20

    move-object/from16 v8, p3

    .line 34
    invoke-direct/range {v1 .. v8}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->b(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLnet/lingala/zip4j/progress/ProgressMonitor;)V

    .line 35
    :goto_1e2
    invoke-virtual/range {p3 .. p3}, Lnet/lingala/zip4j/progress/ProgressMonitor;->d()Z

    move-result v1
    :try_end_1e6
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_1d1 .. :try_end_1e6} :catch_335
    .catch Ljava/lang/Exception; {:try_start_1d1 .. :try_end_1e6} :catch_32f
    .catchall {:try_start_1d1 .. :try_end_1e6} :catchall_329

    if-eqz v1, :cond_223

    const/4 v0, 0x3

    .line 36
    :try_start_1e9
    invoke-virtual {v10, v0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->h(I)V
    :try_end_1ec
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_1e9 .. :try_end_1ec} :catch_21d
    .catch Ljava/lang/Exception; {:try_start_1e9 .. :try_end_1ec} :catch_217
    .catchall {:try_start_1e9 .. :try_end_1ec} :catchall_20e

    const/4 v1, 0x0

    .line 37
    :try_start_1ed
    invoke-virtual {v10, v1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->i(I)V
    :try_end_1f0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_1ed .. :try_end_1f0} :catch_1c4
    .catch Ljava/lang/Exception; {:try_start_1ed .. :try_end_1f0} :catch_1c2
    .catchall {:try_start_1ed .. :try_end_1f0} :catchall_20a

    if-eqz v28, :cond_1f5

    .line 38
    :try_start_1f2
    invoke-virtual/range {v28 .. v28}, Ljava/io/RandomAccessFile;->close()V

    .line 39
    :cond_1f5
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_1f8
    .catch Ljava/io/IOException; {:try_start_1f2 .. :try_end_1f8} :catch_204

    .line 40
    new-instance v0, Ljava/io/File;

    move-object/from16 v2, v29

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v3, 0x0

    return-object v3

    .line 42
    :catch_204
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v0, v11}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_20a
    move-exception v0

    move-object/from16 v2, v29

    goto :goto_212

    :catchall_20e
    move-exception v0

    move-object/from16 v2, v29

    const/4 v1, 0x0

    :goto_212
    move-object v3, v14

    move-object/from16 v14, v28

    goto/16 :goto_185

    :catch_217
    move-exception v0

    move-object/from16 v2, v29

    const/4 v1, 0x0

    goto/16 :goto_192

    :catch_21d
    move-exception v0

    move-object/from16 v2, v29

    const/4 v1, 0x0

    goto/16 :goto_19f

    :cond_223
    move-object/from16 v2, v29

    const/4 v1, 0x0

    .line 43
    :try_start_226
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->b()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v3

    invoke-virtual {v14}, Lnet/lingala/zip4j/io/SplitOutputStream;->d()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->o(J)V

    .line 44
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->b()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->b()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v4

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->h()I

    move-result v4

    sub-int/2addr v4, v15

    invoke-virtual {v3, v4}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->r(I)V

    .line 45
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->b()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->b()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v4

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->i()I

    move-result v4

    sub-int/2addr v4, v15

    invoke-virtual {v3, v4}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->s(I)V

    .line 46
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->a()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v3

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/CentralDirectory;->a()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v8, v13

    .line 47
    :goto_25d
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->a()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v3

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/CentralDirectory;->a()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3
    :try_end_269
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_226 .. :try_end_269} :catch_326
    .catch Ljava/lang/Exception; {:try_start_226 .. :try_end_269} :catch_323
    .catchall {:try_start_226 .. :try_end_269} :catchall_31f

    if-ge v8, v3, :cond_2dd

    .line 48
    :try_start_26b
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->a()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v3

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/CentralDirectory;->a()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/FileHeader;->o()J

    move-result-wide v3

    .line 49
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->a()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/CentralDirectory;->a()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/FileHeader;->u()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v5

    if-eqz v5, :cond_2c1

    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->a()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/CentralDirectory;->a()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/FileHeader;->u()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->c()J

    move-result-wide v5

    cmp-long v7, v5, v16

    if-eqz v7, :cond_2c1

    .line 50
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->a()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v3

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/CentralDirectory;->a()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/FileHeader;->u()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v3

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->c()J

    move-result-wide v3

    .line 51
    :cond_2c1
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->a()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/CentralDirectory;->a()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/lingala/zip4j/model/FileHeader;

    sub-long v6, v24, v18

    sub-long/2addr v3, v6

    sub-long v3, v3, v22

    invoke-virtual {v5, v3, v4}, Lnet/lingala/zip4j/model/FileHeader;->S(J)V
    :try_end_2d7
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_26b .. :try_end_2d7} :catch_326
    .catch Ljava/lang/Exception; {:try_start_26b .. :try_end_2d7} :catch_323
    .catchall {:try_start_26b .. :try_end_2d7} :catchall_2da

    add-int/lit8 v8, v8, 0x1

    goto :goto_25d

    :catchall_2da
    move-exception v0

    goto/16 :goto_212

    .line 52
    :cond_2dd
    :try_start_2dd
    new-instance v3, Lnet/lingala/zip4j/core/HeaderWriter;

    invoke-direct {v3}, Lnet/lingala/zip4j/core/HeaderWriter;-><init>()V

    .line 53
    invoke-virtual {v3, v0, v14}, Lnet/lingala/zip4j/core/HeaderWriter;->d(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;)V
    :try_end_2e5
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_2dd .. :try_end_2e5} :catch_326
    .catch Ljava/lang/Exception; {:try_start_2dd .. :try_end_2e5} :catch_323
    .catchall {:try_start_2dd .. :try_end_2e5} :catchall_31f

    :try_start_2e5
    const-string v1, "offsetCentralDir"

    .line 54
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipModel;->b()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->f()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2f6
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_2e5 .. :try_end_2f6} :catch_319
    .catch Ljava/lang/Exception; {:try_start_2e5 .. :try_end_2f6} :catch_313
    .catchall {:try_start_2e5 .. :try_end_2f6} :catchall_30a

    if-eqz v28, :cond_2fb

    .line 55
    :try_start_2f8
    invoke-virtual/range {v28 .. v28}, Ljava/io/RandomAccessFile;->close()V

    .line 56
    :cond_2fb
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_2fe
    .catch Ljava/io/IOException; {:try_start_2f8 .. :try_end_2fe} :catch_304

    move-object/from16 v4, v30

    .line 57
    invoke-direct {v9, v4, v2}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->h(Ljava/io/File;Ljava/lang/String;)V

    return-object v12

    .line 58
    :catch_304
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v0, v11}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_30a
    move-exception v0

    move-object/from16 v4, v30

    move-object v3, v14

    move-object/from16 v14, v28

    const/4 v13, 0x1

    goto/16 :goto_420

    :catch_313
    move-exception v0

    move-object/from16 v4, v30

    const/4 v13, 0x1

    goto/16 :goto_406

    :catch_319
    move-exception v0

    move-object/from16 v4, v30

    const/4 v13, 0x1

    goto/16 :goto_418

    :catchall_31f
    move-exception v0

    move-object/from16 v4, v30

    goto :goto_363

    :catch_323
    move-exception v0

    goto/16 :goto_192

    :catch_326
    move-exception v0

    goto/16 :goto_19f

    :catchall_329
    move-exception v0

    move-object/from16 v2, v29

    move-object/from16 v4, v30

    goto :goto_362

    :catch_32f
    move-exception v0

    move-object/from16 v2, v29

    move-object/from16 v4, v30

    goto :goto_36d

    :catch_335
    move-exception v0

    move-object/from16 v2, v29

    move-object/from16 v4, v30

    goto :goto_375

    :cond_33b
    move-object/from16 v28, v4

    move-object v4, v6

    move-object v2, v7

    const/4 v1, 0x0

    .line 59
    :try_start_340
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v3, "invalid offset for start and end of local file, cannot remove file"

    invoke-direct {v0, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_348
    move-object/from16 v28, v4

    move-object v4, v6

    move-object v2, v7

    const/4 v1, 0x0

    .line 60
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v3, "invalid local file header, cannot remove file from archive"

    invoke-direct {v0, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_355
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_340 .. :try_end_355} :catch_35a
    .catch Ljava/lang/Exception; {:try_start_340 .. :try_end_355} :catch_357
    .catchall {:try_start_340 .. :try_end_355} :catchall_355

    :catchall_355
    move-exception v0

    goto :goto_363

    :catch_357
    move-exception v0

    goto/16 :goto_405

    :catch_35a
    move-exception v0

    goto/16 :goto_417

    :catchall_35d
    move-exception v0

    move-object/from16 v28, v4

    move-object v4, v6

    move-object v2, v7

    :goto_362
    const/4 v1, 0x0

    :goto_363
    move-object v3, v14

    move-object/from16 v14, v28

    goto/16 :goto_3fb

    :catch_368
    move-exception v0

    move-object/from16 v28, v4

    move-object v4, v6

    move-object v2, v7

    :goto_36d
    const/4 v1, 0x0

    goto/16 :goto_405

    :catch_370
    move-exception v0

    move-object/from16 v28, v4

    move-object v4, v6

    move-object v2, v7

    :goto_375
    const/4 v1, 0x0

    goto/16 :goto_417

    :catchall_378
    move-exception v0

    move-object v4, v6

    move-object v2, v7

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v13, 0x0

    move-object/from16 v31, v14

    move-object v14, v3

    move-object/from16 v3, v31

    goto/16 :goto_420

    :catch_385
    move-exception v0

    move-object v4, v6

    move-object v2, v7

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object/from16 v28, v3

    goto/16 :goto_405

    :catch_38e
    move-exception v0

    move-object v4, v6

    move-object v2, v7

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object/from16 v28, v3

    goto/16 :goto_417

    :catchall_397
    move-exception v0

    move-object v2, v7

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    const/4 v13, 0x0

    move-object v3, v14

    move-object v14, v4

    goto/16 :goto_420

    :catch_3a1
    move-exception v0

    move-object v2, v7

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    move-object/from16 v28, v4

    goto/16 :goto_405

    :catch_3aa
    move-exception v0

    move-object v2, v7

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    move-object/from16 v28, v4

    goto/16 :goto_417

    :catch_3b3
    move-exception v0

    move-object v2, v7

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 61
    :try_start_3b7
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v4, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_3bd
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_3b7 .. :try_end_3bd} :catch_3c1
    .catch Ljava/lang/Exception; {:try_start_3b7 .. :try_end_3bd} :catch_3bf
    .catchall {:try_start_3b7 .. :try_end_3bd} :catchall_3bd

    :catchall_3bd
    move-exception v0

    goto :goto_3cf

    :catch_3bf
    move-exception v0

    goto :goto_3d4

    :catch_3c1
    move-exception v0

    goto :goto_3d9

    :catchall_3c3
    move-exception v0

    move-object v2, v7

    goto :goto_3cd

    :catch_3c6
    move-exception v0

    move-object v2, v7

    goto :goto_3d2

    :catch_3c9
    move-exception v0

    move-object v2, v7

    goto :goto_3d7

    :catchall_3cc
    move-exception v0

    :goto_3cd
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_3cf
    move-object v4, v3

    goto :goto_3fa

    :catch_3d1
    move-exception v0

    :goto_3d2
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_3d4
    move-object v4, v3

    goto :goto_402

    :catch_3d6
    move-exception v0

    :goto_3d7
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_3d9
    move-object v4, v3

    goto :goto_414

    :cond_3db
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 62
    :try_start_3dd
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "This is a split archive. Zip file format does not allow updating split/spanned files"

    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3e5
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 63
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "file header not found in zip model, cannot remove file"

    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3ef
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_3dd .. :try_end_3ef} :catch_3f3
    .catch Ljava/lang/Exception; {:try_start_3dd .. :try_end_3ef} :catch_3f1
    .catchall {:try_start_3dd .. :try_end_3ef} :catchall_3ef

    :catchall_3ef
    move-exception v0

    goto :goto_3f8

    :catch_3f1
    move-exception v0

    goto :goto_400

    :catch_3f3
    move-exception v0

    goto :goto_412

    :catchall_3f5
    move-exception v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_3f8
    move-object v2, v3

    move-object v4, v2

    :goto_3fa
    move-object v14, v4

    :goto_3fb
    const/4 v13, 0x0

    goto :goto_420

    :catch_3fd
    move-exception v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_400
    move-object v2, v3

    move-object v4, v2

    :goto_402
    move-object v14, v4

    move-object/from16 v28, v14

    :goto_405
    const/4 v13, 0x0

    .line 64
    :goto_406
    :try_start_406
    invoke-virtual {v10, v0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->a(Ljava/lang/Throwable;)V

    .line 65
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_40f
    move-exception v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_412
    move-object v2, v3

    move-object v4, v2

    :goto_414
    move-object v14, v4

    move-object/from16 v28, v14

    :goto_417
    const/4 v13, 0x0

    .line 66
    :goto_418
    invoke-virtual {v10, v0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->a(Ljava/lang/Throwable;)V

    .line 67
    throw v0
    :try_end_41c
    .catchall {:try_start_406 .. :try_end_41c} :catchall_41c

    :catchall_41c
    move-exception v0

    move-object v3, v14

    move-object/from16 v14, v28

    :goto_420
    if-eqz v14, :cond_425

    .line 68
    :try_start_422
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V

    :cond_425
    if-eqz v3, :cond_431

    .line 69
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_42a
    .catch Ljava/io/IOException; {:try_start_422 .. :try_end_42a} :catch_42b

    goto :goto_431

    .line 70
    :catch_42b
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v0, v11}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_431
    :goto_431
    if-eqz v13, :cond_437

    .line 71
    invoke-direct {v9, v4, v2}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->h(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_43f

    .line 72
    :cond_437
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 74
    :goto_43f
    throw v0

    .line 75
    :cond_440
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "input parameters is null in maintain zip file, cannot remove file from archive"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    goto :goto_449

    :goto_448
    throw v0

    :goto_449
    goto :goto_448
.end method

###### Class net.lingala.zip4j.util.ArchiveMaintainer.AnonymousClass1 (net.lingala.zip4j.util.ArchiveMaintainer$1)
.class Lnet/lingala/zip4j/util/ArchiveMaintainer$1;
.super Ljava/lang/Thread;
.source "ArchiveMaintainer.java"


# instance fields
.field final synthetic o:Lnet/lingala/zip4j/model/ZipModel;

.field final synthetic p:Lnet/lingala/zip4j/model/FileHeader;

.field final synthetic q:Lnet/lingala/zip4j/progress/ProgressMonitor;

.field final synthetic r:Lnet/lingala/zip4j/util/ArchiveMaintainer;


# virtual methods
.method public run()V
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lnet/lingala/zip4j/util/ArchiveMaintainer$1;->r:Lnet/lingala/zip4j/util/ArchiveMaintainer;

    iget-object v1, p0, Lnet/lingala/zip4j/util/ArchiveMaintainer$1;->o:Lnet/lingala/zip4j/model/ZipModel;

    iget-object v2, p0, Lnet/lingala/zip4j/util/ArchiveMaintainer$1;->p:Lnet/lingala/zip4j/model/FileHeader;

    iget-object v3, p0, Lnet/lingala/zip4j/util/ArchiveMaintainer$1;->q:Lnet/lingala/zip4j/progress/ProgressMonitor;

    invoke-virtual {v0, v1, v2, v3}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->f(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/progress/ProgressMonitor;)Ljava/util/HashMap;

    .line 2
    iget-object v0, p0, Lnet/lingala/zip4j/util/ArchiveMaintainer$1;->q:Lnet/lingala/zip4j/progress/ProgressMonitor;

    invoke-virtual {v0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->b()V
    :try_end_10
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_10} :catch_10

    :catch_10
    return-void
.end method

###### Class net.lingala.zip4j.util.ArchiveMaintainer.AnonymousClass2 (net.lingala.zip4j.util.ArchiveMaintainer$2)
.class Lnet/lingala/zip4j/util/ArchiveMaintainer$2;
.super Ljava/lang/Thread;
.source "ArchiveMaintainer.java"


# instance fields
.field final synthetic o:Lnet/lingala/zip4j/model/ZipModel;

.field final synthetic p:Ljava/io/File;

.field final synthetic q:Lnet/lingala/zip4j/progress/ProgressMonitor;

.field final synthetic r:Lnet/lingala/zip4j/util/ArchiveMaintainer;


# virtual methods
.method public run()V
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lnet/lingala/zip4j/util/ArchiveMaintainer$2;->r:Lnet/lingala/zip4j/util/ArchiveMaintainer;

    iget-object v1, p0, Lnet/lingala/zip4j/util/ArchiveMaintainer$2;->o:Lnet/lingala/zip4j/model/ZipModel;

    iget-object v2, p0, Lnet/lingala/zip4j/util/ArchiveMaintainer$2;->p:Ljava/io/File;

    iget-object v3, p0, Lnet/lingala/zip4j/util/ArchiveMaintainer$2;->q:Lnet/lingala/zip4j/progress/ProgressMonitor;

    invoke-static {v0, v1, v2, v3}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->a(Lnet/lingala/zip4j/util/ArchiveMaintainer;Lnet/lingala/zip4j/model/ZipModel;Ljava/io/File;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    :try_end_b
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_b} :catch_b

    :catch_b
    return-void
.end method
