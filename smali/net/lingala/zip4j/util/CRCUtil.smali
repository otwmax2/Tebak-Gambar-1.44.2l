###### Class net.lingala.zip4j.util.CRCUtil (net.lingala.zip4j.util.CRCUtil)
.class public Lnet/lingala/zip4j/util/CRCUtil;
.super Ljava/lang/Object;
.source "CRCUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    const-string v0, "error while closing the file after calculating crc"

    .line 1
    invoke-static {p0}, Lnet/lingala/zip4j/util/Zip4jUtil;->u(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7d

    const/4 v1, 0x0

    .line 2
    :try_start_9
    invoke-static {p0}, Lnet/lingala/zip4j/util/Zip4jUtil;->c(Ljava/lang/String;)Z

    .line 3
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_16} :catch_69
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_16} :catch_62
    .catchall {:try_start_9 .. :try_end_16} :catchall_60

    const/16 p0, 0x4000

    :try_start_18
    new-array p0, p0, [B

    .line 4
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    .line 5
    :cond_1f
    invoke-virtual {v2, p0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_49

    const/4 v4, 0x0

    .line 6
    invoke-virtual {v1, p0, v4, v3}, Ljava/util/zip/CRC32;->update([BII)V

    if-eqz p1, :cond_1f

    int-to-long v5, v3

    .line 7
    invoke-virtual {p1, v5, v6}, Lnet/lingala/zip4j/progress/ProgressMonitor;->k(J)V

    .line 8
    invoke-virtual {p1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->d()Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 p0, 0x3

    .line 9
    invoke-virtual {p1, p0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->h(I)V

    .line 10
    invoke-virtual {p1, v4}, Lnet/lingala/zip4j/progress/ProgressMonitor;->i(I)V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_3d} :catch_5d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_3d} :catch_5a
    .catchall {:try_start_18 .. :try_end_3d} :catchall_57

    const-wide/16 p0, 0x0

    .line 11
    :try_start_3f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_43

    return-wide p0

    .line 12
    :catch_43
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p0, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_49
    :try_start_49
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide p0
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4d} :catch_5d
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4d} :catch_5a
    .catchall {:try_start_49 .. :try_end_4d} :catchall_57

    .line 14
    :try_start_4d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_51

    return-wide p0

    .line 15
    :catch_51
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p0, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_57
    move-exception p0

    move-object v1, v2

    goto :goto_70

    :catch_5a
    move-exception p0

    move-object v1, v2

    goto :goto_63

    :catch_5d
    move-exception p0

    move-object v1, v2

    goto :goto_6a

    :catchall_60
    move-exception p0

    goto :goto_70

    :catch_62
    move-exception p0

    .line 16
    :goto_63
    :try_start_63
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p1, p0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_69
    move-exception p0

    .line 17
    :goto_6a
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p1, p0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_70
    .catchall {:try_start_63 .. :try_end_70} :catchall_60

    :goto_70
    if-eqz v1, :cond_7c

    .line 18
    :try_start_72
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_76

    goto :goto_7c

    .line 19
    :catch_76
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p0, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7c
    :goto_7c
    throw p0

    .line 20
    :cond_7d
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    const-string p1, "input file is null or empty, cannot calculate CRC for the file"

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    goto :goto_86

    :goto_85
    throw p0

    :goto_86
    goto :goto_85
.end method
