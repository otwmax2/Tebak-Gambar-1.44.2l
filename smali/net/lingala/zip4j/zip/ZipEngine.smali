###### Class net.lingala.zip4j.zip.ZipEngine (net.lingala.zip4j.zip.ZipEngine)
.class public Lnet/lingala/zip4j/zip/ZipEngine;
.super Ljava/lang/Object;
.source "ZipEngine.java"


# instance fields
.field private a:Lnet/lingala/zip4j/model/ZipModel;


# direct methods
.method static synthetic a(Lnet/lingala/zip4j/zip/ZipEngine;Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lnet/lingala/zip4j/zip/ZipEngine;->d(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    return-void
.end method

.method private b(Lnet/lingala/zip4j/model/ZipParameters;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_71

    .line 1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->d()I

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_19

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->d()I

    move-result v0

    if-ne v0, v1, :cond_11

    goto :goto_19

    .line 2
    :cond_11
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "unsupported compression type"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_19
    :goto_19
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->d()I

    move-result v0

    if-ne v0, v1, :cond_36

    .line 4
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->b()I

    move-result v0

    if-gez v0, :cond_36

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->b()I

    move-result v0

    const/16 v1, 0x9

    if-gt v0, v1, :cond_2e

    goto :goto_36

    .line 5
    :cond_2e
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "invalid compression level. compression level dor deflate should be in the range of 0-9"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_36
    :goto_36
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->m()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 7
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->g()I

    move-result v0

    if-eqz v0, :cond_53

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->g()I

    move-result v0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_4b

    goto :goto_53

    .line 8
    :cond_4b
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "unsupported encryption method"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_53
    :goto_53
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->i()[C

    move-result-object v0

    if-eqz v0, :cond_61

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->i()[C

    move-result-object p1

    array-length p1, p1

    if-lez p1, :cond_61

    goto :goto_70

    .line 10
    :cond_61
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "input password is empty or null"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_69
    const/4 v0, -0x1

    .line 11
    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/ZipParameters;->o(I)V

    .line 12
    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/ZipParameters;->r(I)V

    :goto_70
    return-void

    .line 13
    :cond_71
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "cannot validate zip parameters"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private c()Lnet/lingala/zip4j/model/EndCentralDirRecord;
    .registers 4

    .line 1
    new-instance v0, Lnet/lingala/zip4j/model/EndCentralDirRecord;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/EndCentralDirRecord;-><init>()V

    const-wide/32 v1, 0x6054b50

    .line 2
    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->p(J)V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->m(I)V

    .line 4
    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->r(I)V

    .line 5
    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->s(I)V

    const-wide/16 v1, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->o(J)V

    return-object v0
.end method

.method private d(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_192

    if-eqz p2, :cond_192

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_18a

    .line 2
    iget-object v0, p0, Lnet/lingala/zip4j/zip/ZipEngine;->a:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->b()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 3
    iget-object v0, p0, Lnet/lingala/zip4j/zip/ZipEngine;->a:Lnet/lingala/zip4j/model/ZipModel;

    invoke-direct {p0}, Lnet/lingala/zip4j/zip/ZipEngine;->c()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/ZipModel;->n(Lnet/lingala/zip4j/model/EndCentralDirRecord;)V

    :cond_1b
    const/4 v0, 0x0

    .line 4
    :try_start_1c
    invoke-direct {p0, p2}, Lnet/lingala/zip4j/zip/ZipEngine;->b(Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lnet/lingala/zip4j/zip/ZipEngine;->f(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    .line 6
    iget-object v1, p0, Lnet/lingala/zip4j/zip/ZipEngine;->a:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipModel;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/lingala/zip4j/util/Zip4jUtil;->b(Ljava/lang/String;)Z

    move-result v1

    .line 7
    new-instance v2, Lnet/lingala/zip4j/io/SplitOutputStream;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lnet/lingala/zip4j/zip/ZipEngine;->a:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/ZipModel;->j()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lnet/lingala/zip4j/zip/ZipEngine;->a:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/ZipModel;->g()J

    move-result-wide v4

    invoke-direct {v2, v3, v4, v5}, Lnet/lingala/zip4j/io/SplitOutputStream;-><init>(Ljava/io/File;J)V

    .line 8
    new-instance v3, Lnet/lingala/zip4j/io/ZipOutputStream;

    iget-object v4, p0, Lnet/lingala/zip4j/zip/ZipEngine;->a:Lnet/lingala/zip4j/model/ZipModel;

    invoke-direct {v3, v2, v4}, Lnet/lingala/zip4j/io/ZipOutputStream;-><init>(Ljava/io/OutputStream;Lnet/lingala/zip4j/model/ZipModel;)V
    :try_end_49
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_1c .. :try_end_49} :catch_174
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_49} :catch_169
    .catchall {:try_start_1c .. :try_end_49} :catchall_166

    if-eqz v1, :cond_69

    .line 9
    :try_start_4b
    iget-object v1, p0, Lnet/lingala/zip4j/zip/ZipEngine;->a:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipModel;->b()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v1

    if-eqz v1, :cond_61

    .line 10
    iget-object v1, p0, Lnet/lingala/zip4j/zip/ZipEngine;->a:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipModel;->b()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->f()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lnet/lingala/zip4j/io/SplitOutputStream;->i(J)V

    goto :goto_69

    .line 11
    :cond_61
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "invalid end of central directory record"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_69
    :goto_69
    const/16 v1, 0x1000

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 12
    :goto_6f
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_14d

    .line 13
    invoke-virtual {p3}, Lnet/lingala/zip4j/progress/ProgressMonitor;->d()Z

    move-result v5

    const/4 v6, 0x3

    if-eqz v5, :cond_8b

    .line 14
    invoke-virtual {p3, v6}, Lnet/lingala/zip4j/progress/ProgressMonitor;->h(I)V

    .line 15
    invoke-virtual {p3, v2}, Lnet/lingala/zip4j/progress/ProgressMonitor;->i(I)V
    :try_end_82
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_4b .. :try_end_82} :catch_162
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_82} :catch_15e
    .catchall {:try_start_4b .. :try_end_82} :catchall_15c

    if-eqz v0, :cond_87

    .line 16
    :try_start_84
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_87

    .line 17
    :catch_87
    :cond_87
    :try_start_87
    invoke-virtual {v3}, Lnet/lingala/zip4j/io/CipherOutputStream;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_8a

    :catch_8a
    return-void

    .line 18
    :cond_8b
    :try_start_8b
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/lingala/zip4j/model/ZipParameters;

    .line 19
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Lnet/lingala/zip4j/progress/ProgressMonitor;->g(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_f6

    .line 21
    invoke-virtual {v5}, Lnet/lingala/zip4j/model/ZipParameters;->m()Z

    move-result v7

    if-eqz v7, :cond_e3

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/ZipParameters;->g()I

    move-result v7

    if-nez v7, :cond_e3

    .line 22
    invoke-virtual {p3, v6}, Lnet/lingala/zip4j/progress/ProgressMonitor;->f(I)V

    .line 23
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p3}, Lnet/lingala/zip4j/util/CRCUtil;->a(Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;)J

    move-result-wide v7

    long-to-int v8, v7

    invoke-virtual {v5, v8}, Lnet/lingala/zip4j/model/ZipParameters;->s(I)V

    .line 24
    invoke-virtual {p3, v2}, Lnet/lingala/zip4j/progress/ProgressMonitor;->f(I)V

    .line 25
    invoke-virtual {p3}, Lnet/lingala/zip4j/progress/ProgressMonitor;->d()Z

    move-result v7

    if-eqz v7, :cond_e3

    .line 26
    invoke-virtual {p3, v6}, Lnet/lingala/zip4j/progress/ProgressMonitor;->h(I)V

    .line 27
    invoke-virtual {p3, v2}, Lnet/lingala/zip4j/progress/ProgressMonitor;->i(I)V
    :try_end_da
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_8b .. :try_end_da} :catch_162
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_da} :catch_15e
    .catchall {:try_start_8b .. :try_end_da} :catchall_15c

    if-eqz v0, :cond_df

    .line 28
    :try_start_dc
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_df
    .catch Ljava/io/IOException; {:try_start_dc .. :try_end_df} :catch_df

    .line 29
    :catch_df
    :cond_df
    :try_start_df
    invoke-virtual {v3}, Lnet/lingala/zip4j/io/CipherOutputStream;->close()V
    :try_end_e2
    .catch Ljava/io/IOException; {:try_start_df .. :try_end_e2} :catch_e2

    :catch_e2
    return-void

    .line 30
    :cond_e3
    :try_start_e3
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    invoke-static {v7}, Lnet/lingala/zip4j/util/Zip4jUtil;->o(Ljava/io/File;)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-nez v11, :cond_f6

    .line 31
    invoke-virtual {v5, v2}, Lnet/lingala/zip4j/model/ZipParameters;->p(I)V

    .line 32
    :cond_f6
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    invoke-virtual {v3, v7, v5}, Lnet/lingala/zip4j/io/DeflaterOutputStream;->m(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 33
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_10f

    .line 34
    invoke-virtual {v3}, Lnet/lingala/zip4j/io/DeflaterOutputStream;->b()V

    goto :goto_143

    .line 35
    :cond_10f
    new-instance v5, Ljava/io/FileInputStream;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    invoke-direct {v5, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_11a
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_e3 .. :try_end_11a} :catch_162
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_11a} :catch_15e
    .catchall {:try_start_e3 .. :try_end_11a} :catchall_15c

    .line 36
    :goto_11a
    :try_start_11a
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v7, -0x1

    if-eq v0, v7, :cond_13c

    .line 37
    invoke-virtual {p3}, Lnet/lingala/zip4j/progress/ProgressMonitor;->d()Z

    move-result v7

    if-eqz v7, :cond_134

    .line 38
    invoke-virtual {p3, v6}, Lnet/lingala/zip4j/progress/ProgressMonitor;->h(I)V

    .line 39
    invoke-virtual {p3, v2}, Lnet/lingala/zip4j/progress/ProgressMonitor;->i(I)V
    :try_end_12d
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_11a .. :try_end_12d} :catch_14b
    .catch Ljava/lang/Exception; {:try_start_11a .. :try_end_12d} :catch_149
    .catchall {:try_start_11a .. :try_end_12d} :catchall_147

    .line 40
    :try_start_12d
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_130
    .catch Ljava/io/IOException; {:try_start_12d .. :try_end_130} :catch_130

    .line 41
    :catch_130
    :try_start_130
    invoke-virtual {v3}, Lnet/lingala/zip4j/io/CipherOutputStream;->close()V
    :try_end_133
    .catch Ljava/io/IOException; {:try_start_130 .. :try_end_133} :catch_133

    :catch_133
    return-void

    .line 42
    :cond_134
    :try_start_134
    invoke-virtual {v3, v1, v2, v0}, Lnet/lingala/zip4j/io/ZipOutputStream;->write([BII)V

    int-to-long v7, v0

    .line 43
    invoke-virtual {p3, v7, v8}, Lnet/lingala/zip4j/progress/ProgressMonitor;->k(J)V

    goto :goto_11a

    .line 44
    :cond_13c
    invoke-virtual {v3}, Lnet/lingala/zip4j/io/DeflaterOutputStream;->b()V

    .line 45
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_142
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_134 .. :try_end_142} :catch_14b
    .catch Ljava/lang/Exception; {:try_start_134 .. :try_end_142} :catch_149
    .catchall {:try_start_134 .. :try_end_142} :catchall_147

    move-object v0, v5

    :goto_143
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_6f

    :catchall_147
    move-exception p1

    goto :goto_17c

    :catch_149
    move-exception p1

    goto :goto_160

    :catch_14b
    move-exception p1

    goto :goto_164

    .line 46
    :cond_14d
    :try_start_14d
    invoke-virtual {v3}, Lnet/lingala/zip4j/io/DeflaterOutputStream;->g()V

    .line 47
    invoke-virtual {p3}, Lnet/lingala/zip4j/progress/ProgressMonitor;->b()V
    :try_end_153
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_14d .. :try_end_153} :catch_162
    .catch Ljava/lang/Exception; {:try_start_14d .. :try_end_153} :catch_15e
    .catchall {:try_start_14d .. :try_end_153} :catchall_15c

    if-eqz v0, :cond_158

    .line 48
    :try_start_155
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_158
    .catch Ljava/io/IOException; {:try_start_155 .. :try_end_158} :catch_158

    .line 49
    :catch_158
    :cond_158
    :try_start_158
    invoke-virtual {v3}, Lnet/lingala/zip4j/io/CipherOutputStream;->close()V
    :try_end_15b
    .catch Ljava/io/IOException; {:try_start_158 .. :try_end_15b} :catch_15b

    :catch_15b
    return-void

    :catchall_15c
    move-exception p1

    goto :goto_17d

    :catch_15e
    move-exception p1

    move-object v5, v0

    :goto_160
    move-object v0, v3

    goto :goto_16b

    :catch_162
    move-exception p1

    move-object v5, v0

    :goto_164
    move-object v0, v3

    goto :goto_176

    :catchall_166
    move-exception p1

    move-object v3, v0

    goto :goto_17d

    :catch_169
    move-exception p1

    move-object v5, v0

    .line 50
    :goto_16b
    :try_start_16b
    invoke-virtual {p3, p1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->a(Ljava/lang/Throwable;)V

    .line 51
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_174
    move-exception p1

    move-object v5, v0

    .line 52
    :goto_176
    invoke-virtual {p3, p1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->a(Ljava/lang/Throwable;)V

    .line 53
    throw p1
    :try_end_17a
    .catchall {:try_start_16b .. :try_end_17a} :catchall_17a

    :catchall_17a
    move-exception p1

    move-object v3, v0

    :goto_17c
    move-object v0, v5

    :goto_17d
    if-eqz v0, :cond_184

    .line 54
    :try_start_17f
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_182
    .catch Ljava/io/IOException; {:try_start_17f .. :try_end_182} :catch_183

    goto :goto_184

    :catch_183
    nop

    :cond_184
    :goto_184
    if-eqz v3, :cond_189

    .line 55
    :try_start_186
    invoke-virtual {v3}, Lnet/lingala/zip4j/io/CipherOutputStream;->close()V
    :try_end_189
    .catch Ljava/io/IOException; {:try_start_186 .. :try_end_189} :catch_189

    .line 56
    :catch_189
    :cond_189
    throw p1

    .line 57
    :cond_18a
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "no files to add"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 58
    :cond_192
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "one of the input parameters is null when adding files"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    goto :goto_19b

    :goto_19a
    throw p1

    :goto_19b
    goto :goto_19a
.end method

.method private e()Ljava/io/RandomAccessFile;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/zip/ZipEngine;->a:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->j()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lnet/lingala/zip4j/util/Zip4jUtil;->u(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 3
    :try_start_c
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_22

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 6
    :cond_22
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_29} :catch_2a

    return-object v0

    :catch_2a
    move-exception v0

    .line 7
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 8
    :cond_31
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "invalid output path"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private f(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    const-string v0, "offsetCentralDir"

    .line 1
    iget-object v1, p0, Lnet/lingala/zip4j/zip/ZipEngine;->a:Lnet/lingala/zip4j/model/ZipModel;

    if-eqz v1, :cond_c8

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipModel;->a()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v1

    if-eqz v1, :cond_c8

    iget-object v1, p0, Lnet/lingala/zip4j/zip/ZipEngine;->a:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipModel;->a()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/CentralDirectory;->a()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_c8

    iget-object v1, p0, Lnet/lingala/zip4j/zip/ZipEngine;->a:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipModel;->a()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/CentralDirectory;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_2a

    goto/16 :goto_c8

    :cond_2a
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v1

    const/4 v3, 0x0

    .line 2
    :goto_2e
    :try_start_2e
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_b3

    .line 3
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 4
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->j()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->f()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lnet/lingala/zip4j/util/Zip4jUtil;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5
    iget-object v6, p0, Lnet/lingala/zip4j/zip/ZipEngine;->a:Lnet/lingala/zip4j/model/ZipModel;

    invoke-static {v6, v5}, Lnet/lingala/zip4j/util/Zip4jUtil;->m(Lnet/lingala/zip4j/model/ZipModel;Ljava/lang/String;)Lnet/lingala/zip4j/model/FileHeader;

    move-result-object v5

    if-eqz v5, :cond_af

    if-eqz v4, :cond_58

    .line 6
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    move-object v4, v1

    .line 7
    :cond_58
    new-instance v6, Lnet/lingala/zip4j/util/ArchiveMaintainer;

    invoke-direct {v6}, Lnet/lingala/zip4j/util/ArchiveMaintainer;-><init>()V

    const/4 v7, 0x2

    .line 8
    invoke-virtual {p3, v7}, Lnet/lingala/zip4j/progress/ProgressMonitor;->f(I)V

    .line 9
    iget-object v7, p0, Lnet/lingala/zip4j/zip/ZipEngine;->a:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v6, v7, v5, p3}, Lnet/lingala/zip4j/util/ArchiveMaintainer;->f(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/progress/ProgressMonitor;)Ljava/util/HashMap;

    move-result-object v5

    .line 10
    invoke-virtual {p3}, Lnet/lingala/zip4j/progress/ProgressMonitor;->d()Z

    move-result v6

    if-eqz v6, :cond_7a

    const/4 p1, 0x3

    .line 11
    invoke-virtual {p3, p1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->h(I)V

    .line 12
    invoke-virtual {p3, v2}, Lnet/lingala/zip4j/progress/ProgressMonitor;->i(I)V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_74} :catch_bb
    .catchall {:try_start_2e .. :try_end_74} :catchall_b9

    if-eqz v4, :cond_79

    .line 13
    :try_start_76
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_79

    :catch_79
    :cond_79
    return-void

    .line 14
    :cond_7a
    :try_start_7a
    invoke-virtual {p3, v2}, Lnet/lingala/zip4j/progress/ProgressMonitor;->f(I)V

    if-nez v4, :cond_af

    .line 15
    invoke-direct {p0}, Lnet/lingala/zip4j/zip/ZipEngine;->e()Ljava/io/RandomAccessFile;

    move-result-object v4

    if-eqz v5, :cond_af

    .line 16
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_89} :catch_bb
    .catchall {:try_start_7a .. :try_end_89} :catchall_b9

    if-eqz v6, :cond_af

    .line 17
    :try_start_8b
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_95
    .catch Ljava/lang/NumberFormatException; {:try_start_8b .. :try_end_95} :catch_a7
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_95} :catch_9f
    .catchall {:try_start_8b .. :try_end_95} :catchall_b9

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-ltz v9, :cond_af

    .line 18
    :try_start_9b
    invoke-virtual {v4, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_af

    .line 19
    :catch_9f
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "Error while parsing offset central directory. Cannot update already existing file header"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :catch_a7
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "NumberFormatException while parsing offset central directory. Cannot update already existing file header"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_af} :catch_bb
    .catchall {:try_start_9b .. :try_end_af} :catchall_b9

    :cond_af
    :goto_af
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2e

    :cond_b3
    if-eqz v4, :cond_b8

    .line 21
    :try_start_b5
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_b8} :catch_b8

    :catch_b8
    :cond_b8
    return-void

    :catchall_b9
    move-exception p1

    goto :goto_c2

    :catch_bb
    move-exception p1

    .line 22
    :try_start_bc
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_c2
    .catchall {:try_start_bc .. :try_end_c2} :catchall_b9

    :goto_c2
    if-eqz v4, :cond_c7

    .line 23
    :try_start_c4
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c7
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_c7} :catch_c7

    .line 24
    :catch_c7
    :cond_c7
    throw p1

    :cond_c8
    :goto_c8
    return-void
.end method

###### Class net.lingala.zip4j.zip.ZipEngine.AnonymousClass1 (net.lingala.zip4j.zip.ZipEngine$1)
.class Lnet/lingala/zip4j/zip/ZipEngine$1;
.super Ljava/lang/Thread;
.source "ZipEngine.java"


# instance fields
.field final synthetic o:Ljava/util/ArrayList;

.field final synthetic p:Lnet/lingala/zip4j/model/ZipParameters;

.field final synthetic q:Lnet/lingala/zip4j/progress/ProgressMonitor;

.field final synthetic r:Lnet/lingala/zip4j/zip/ZipEngine;


# virtual methods
.method public run()V
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lnet/lingala/zip4j/zip/ZipEngine$1;->r:Lnet/lingala/zip4j/zip/ZipEngine;

    iget-object v1, p0, Lnet/lingala/zip4j/zip/ZipEngine$1;->o:Ljava/util/ArrayList;

    iget-object v2, p0, Lnet/lingala/zip4j/zip/ZipEngine$1;->p:Lnet/lingala/zip4j/model/ZipParameters;

    iget-object v3, p0, Lnet/lingala/zip4j/zip/ZipEngine$1;->q:Lnet/lingala/zip4j/progress/ProgressMonitor;

    invoke-static {v0, v1, v2, v3}, Lnet/lingala/zip4j/zip/ZipEngine;->a(Lnet/lingala/zip4j/zip/ZipEngine;Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    :try_end_b
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_b} :catch_b

    :catch_b
    return-void
.end method
