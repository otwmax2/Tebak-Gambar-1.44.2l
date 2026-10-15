###### Class q5.f0 (q5.f0)
.class Lq5/f0;
.super Ljava/lang/Object;
.source "NativeSessionFileGzipper.java"


# direct methods
.method private static a(Ljava/io/InputStream;Ljava/io/File;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/16 v0, 0x2000

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 1
    :try_start_8
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_27

    .line 2
    :goto_12
    :try_start_12
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result p1

    if-lez p1, :cond_1d

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v2, v0, v1, p1}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    goto :goto_12

    .line 4
    :cond_1d
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->finish()V
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_24

    .line 5
    invoke-static {v2}, Lq5/i;->g(Ljava/io/Closeable;)V

    return-void

    :catchall_24
    move-exception p0

    move-object v1, v2

    goto :goto_28

    :catchall_27
    move-exception p0

    :goto_28
    invoke-static {v1}, Lq5/i;->g(Ljava/io/Closeable;)V

    .line 6
    goto :goto_2d

    :goto_2c
    throw p0

    :goto_2d
    goto :goto_2c
.end method

.method static b(Ljava/io/File;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Lq5/e0;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq5/e0;

    const/4 v1, 0x0

    .line 2
    :try_start_11
    invoke-interface {v0}, Lq5/e0;->b()Ljava/io/InputStream;

    move-result-object v1
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_15} :catch_17
    .catchall {:try_start_11 .. :try_end_15} :catchall_28

    if-nez v1, :cond_1b

    .line 3
    :catch_17
    :goto_17
    invoke-static {v1}, Lq5/i;->g(Ljava/io/Closeable;)V

    goto :goto_4

    .line 4
    :cond_1b
    :try_start_1b
    new-instance v2, Ljava/io/File;

    .line 5
    invoke-interface {v0}, Lq5/e0;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6
    invoke-static {v1, v2}, Lq5/f0;->a(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_27} :catch_17
    .catchall {:try_start_1b .. :try_end_27} :catchall_28

    goto :goto_17

    :catchall_28
    move-exception p0

    .line 7
    invoke-static {v1}, Lq5/i;->g(Ljava/io/Closeable;)V

    .line 8
    throw p0

    :cond_2d
    return-void
.end method
