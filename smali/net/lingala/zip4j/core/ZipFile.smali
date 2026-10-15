###### Class net.lingala.zip4j.core.ZipFile (net.lingala.zip4j.core.ZipFile)
.class public Lnet/lingala/zip4j/core/ZipFile;
.super Ljava/lang/Object;
.source "ZipFile.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Lnet/lingala/zip4j/model/ZipModel;

.field private d:Z

.field private e:Lnet/lingala/zip4j/progress/ProgressMonitor;

.field private f:Z

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_19

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/lingala/zip4j/core/ZipFile;->a:Ljava/lang/String;

    const/4 p1, 0x2

    .line 3
    iput p1, p0, Lnet/lingala/zip4j/core/ZipFile;->b:I

    .line 4
    new-instance p1, Lnet/lingala/zip4j/progress/ProgressMonitor;

    invoke-direct {p1}, Lnet/lingala/zip4j/progress/ProgressMonitor;-><init>()V

    iput-object p1, p0, Lnet/lingala/zip4j/core/ZipFile;->e:Lnet/lingala/zip4j/progress/ProgressMonitor;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lnet/lingala/zip4j/core/ZipFile;->f:Z

    return-void

    .line 6
    :cond_19
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const/4 v0, 0x1

    const-string v1, "Input zip file parameter is not null"

    invoke-direct {p1, v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method private a()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/core/ZipFile;->c:Lnet/lingala/zip4j/model/ZipModel;

    if-nez v0, :cond_13

    .line 2
    iget-object v0, p0, Lnet/lingala/zip4j/core/ZipFile;->a:Ljava/lang/String;

    invoke-static {v0}, Lnet/lingala/zip4j/util/Zip4jUtil;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3
    invoke-direct {p0}, Lnet/lingala/zip4j/core/ZipFile;->h()V

    goto :goto_13

    .line 4
    :cond_10
    invoke-direct {p0}, Lnet/lingala/zip4j/core/ZipFile;->b()V

    :cond_13
    :goto_13
    return-void
.end method

.method private b()V
    .registers 3

    .line 1
    new-instance v0, Lnet/lingala/zip4j/model/ZipModel;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/ZipModel;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/core/ZipFile;->c:Lnet/lingala/zip4j/model/ZipModel;

    .line 2
    iget-object v1, p0, Lnet/lingala/zip4j/core/ZipFile;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/ZipModel;->v(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lnet/lingala/zip4j/core/ZipFile;->c:Lnet/lingala/zip4j/model/ZipModel;

    iget-object v1, p0, Lnet/lingala/zip4j/core/ZipFile;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/ZipModel;->o(Ljava/lang/String;)V

    return-void
.end method

.method private h()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/core/ZipFile;->a:Ljava/lang/String;

    invoke-static {v0}, Lnet/lingala/zip4j/util/Zip4jUtil;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 2
    iget-object v0, p0, Lnet/lingala/zip4j/core/ZipFile;->a:Ljava/lang/String;

    invoke-static {v0}, Lnet/lingala/zip4j/util/Zip4jUtil;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 3
    iget v0, p0, Lnet/lingala/zip4j/core/ZipFile;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_58

    const/4 v0, 0x0

    .line 4
    :try_start_16
    new-instance v1, Ljava/io/RandomAccessFile;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lnet/lingala/zip4j/core/ZipFile;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v3, "r"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_24} :catch_47
    .catchall {:try_start_16 .. :try_end_24} :catchall_42

    .line 5
    :try_start_24
    iget-object v0, p0, Lnet/lingala/zip4j/core/ZipFile;->c:Lnet/lingala/zip4j/model/ZipModel;

    if-nez v0, :cond_3c

    .line 6
    new-instance v0, Lnet/lingala/zip4j/core/HeaderReader;

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/core/HeaderReader;-><init>(Ljava/io/RandomAccessFile;)V

    .line 7
    iget-object v2, p0, Lnet/lingala/zip4j/core/ZipFile;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/core/HeaderReader;->c(Ljava/lang/String;)Lnet/lingala/zip4j/model/ZipModel;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/core/ZipFile;->c:Lnet/lingala/zip4j/model/ZipModel;

    if-eqz v0, :cond_3c

    .line 8
    iget-object v2, p0, Lnet/lingala/zip4j/core/ZipFile;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/model/ZipModel;->v(Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_3c} :catch_40
    .catchall {:try_start_24 .. :try_end_3c} :catchall_51

    .line 9
    :cond_3c
    :try_start_3c
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_3f

    :catch_3f
    return-void

    :catch_40
    move-exception v0

    goto :goto_4b

    :catchall_42
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_52

    :catch_47
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 10
    :goto_4b
    :try_start_4b
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_51

    :catchall_51
    move-exception v0

    :goto_52
    if-eqz v1, :cond_57

    .line 11
    :try_start_54
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_57

    .line 12
    :catch_57
    :cond_57
    throw v0

    .line 13
    :cond_58
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "Invalid mode"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_60
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "no read access for the input zip file"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_68
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "zip file does not exist"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lnet/lingala/zip4j/core/ZipFile;->d(Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;)V

    return-void
.end method

.method public d(Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->u(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 2
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 3
    iget-object v0, p0, Lnet/lingala/zip4j/core/ZipFile;->c:Lnet/lingala/zip4j/model/ZipModel;

    if-nez v0, :cond_13

    .line 4
    invoke-direct {p0}, Lnet/lingala/zip4j/core/ZipFile;->h()V

    .line 5
    :cond_13
    iget-object v0, p0, Lnet/lingala/zip4j/core/ZipFile;->c:Lnet/lingala/zip4j/model/ZipModel;

    if-eqz v0, :cond_37

    .line 6
    iget-object v0, p0, Lnet/lingala/zip4j/core/ZipFile;->e:Lnet/lingala/zip4j/progress/ProgressMonitor;

    invoke-virtual {v0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->c()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2f

    .line 7
    new-instance v0, Lnet/lingala/zip4j/unzip/Unzip;

    iget-object v1, p0, Lnet/lingala/zip4j/core/ZipFile;->c:Lnet/lingala/zip4j/model/ZipModel;

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/unzip/Unzip;-><init>(Lnet/lingala/zip4j/model/ZipModel;)V

    .line 8
    iget-object v1, p0, Lnet/lingala/zip4j/core/ZipFile;->e:Lnet/lingala/zip4j/progress/ProgressMonitor;

    iget-boolean v2, p0, Lnet/lingala/zip4j/core/ZipFile;->f:Z

    invoke-virtual {v0, p2, p1, v1, v2}, Lnet/lingala/zip4j/unzip/Unzip;->e(Lnet/lingala/zip4j/model/UnzipParameters;Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;Z)V

    return-void

    .line 9
    :cond_2f
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "invalid operation - Zip4j is in busy state"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_37
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "Internal error occurred when extracting zip file"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_3f
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "invalid output path"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_47
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "output path is null or invalid"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lnet/lingala/zip4j/core/ZipFile;->h()V

    .line 2
    iget-object v0, p0, Lnet/lingala/zip4j/core/ZipFile;->c:Lnet/lingala/zip4j/model/ZipModel;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->a()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v0

    if-nez v0, :cond_e

    goto :goto_19

    .line 3
    :cond_e
    iget-object v0, p0, Lnet/lingala/zip4j/core/ZipFile;->c:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->a()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/CentralDirectory;->a()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :cond_19
    :goto_19
    const/4 v0, 0x0

    return-object v0
.end method

.method public f(Lnet/lingala/zip4j/model/FileHeader;)Lnet/lingala/zip4j/io/ZipInputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_1b

    .line 1
    invoke-direct {p0}, Lnet/lingala/zip4j/core/ZipFile;->a()V

    .line 2
    iget-object v0, p0, Lnet/lingala/zip4j/core/ZipFile;->c:Lnet/lingala/zip4j/model/ZipModel;

    if-eqz v0, :cond_13

    .line 3
    new-instance v1, Lnet/lingala/zip4j/unzip/Unzip;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/unzip/Unzip;-><init>(Lnet/lingala/zip4j/model/ZipModel;)V

    .line 4
    invoke-virtual {v1, p1}, Lnet/lingala/zip4j/unzip/Unzip;->f(Lnet/lingala/zip4j/model/FileHeader;)Lnet/lingala/zip4j/io/ZipInputStream;

    move-result-object p1

    return-object p1

    .line 5
    :cond_13
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "zip model is null, cannot get inputstream"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1b
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "FileHeader is null, cannot get InputStream"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/core/ZipFile;->c:Lnet/lingala/zip4j/model/ZipModel;

    if-nez v0, :cond_14

    .line 2
    invoke-direct {p0}, Lnet/lingala/zip4j/core/ZipFile;->h()V

    .line 3
    iget-object v0, p0, Lnet/lingala/zip4j/core/ZipFile;->c:Lnet/lingala/zip4j/model/ZipModel;

    if-eqz v0, :cond_c

    goto :goto_14

    .line 4
    :cond_c
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "Zip Model is null"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_14
    :goto_14
    iget-object v0, p0, Lnet/lingala/zip4j/core/ZipFile;->c:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->a()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lnet/lingala/zip4j/core/ZipFile;->c:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->a()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/CentralDirectory;->a()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_51

    .line 6
    iget-object v0, p0, Lnet/lingala/zip4j/core/ZipFile;->c:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->a()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/CentralDirectory;->a()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    .line 7
    :goto_33
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4e

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/lingala/zip4j/model/FileHeader;

    if-eqz v2, :cond_4b

    .line 9
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/FileHeader;->w()Z

    move-result v2

    if-eqz v2, :cond_4b

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lnet/lingala/zip4j/core/ZipFile;->d:Z

    goto :goto_4e

    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 11
    :cond_4e
    :goto_4e
    iget-boolean v0, p0, Lnet/lingala/zip4j/core/ZipFile;->d:Z

    return v0

    .line 12
    :cond_51
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "invalid zip file"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    goto :goto_5a

    :goto_59
    throw v0

    :goto_5a
    goto :goto_59
.end method

.method public i(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->u(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/lingala/zip4j/core/ZipFile;->j([C)V

    return-void

    :cond_e
    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public j([C)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/core/ZipFile;->c:Lnet/lingala/zip4j/model/ZipModel;

    if-nez v0, :cond_14

    .line 2
    invoke-direct {p0}, Lnet/lingala/zip4j/core/ZipFile;->h()V

    .line 3
    iget-object v0, p0, Lnet/lingala/zip4j/core/ZipFile;->c:Lnet/lingala/zip4j/model/ZipModel;

    if-eqz v0, :cond_c

    goto :goto_14

    .line 4
    :cond_c
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "Zip Model is null"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_14
    :goto_14
    iget-object v0, p0, Lnet/lingala/zip4j/core/ZipFile;->c:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->a()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v0

    if-eqz v0, :cond_76

    iget-object v0, p0, Lnet/lingala/zip4j/core/ZipFile;->c:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->a()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/CentralDirectory;->a()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_76

    const/4 v0, 0x0

    .line 6
    :goto_29
    iget-object v1, p0, Lnet/lingala/zip4j/core/ZipFile;->c:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipModel;->a()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/CentralDirectory;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_75

    .line 7
    iget-object v1, p0, Lnet/lingala/zip4j/core/ZipFile;->c:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipModel;->a()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/CentralDirectory;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_72

    .line 8
    iget-object v1, p0, Lnet/lingala/zip4j/core/ZipFile;->c:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipModel;->a()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/CentralDirectory;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/FileHeader;->w()Z

    move-result v1

    if-eqz v1, :cond_72

    .line 9
    iget-object v1, p0, Lnet/lingala/zip4j/core/ZipFile;->c:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipModel;->a()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/CentralDirectory;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v1, p1}, Lnet/lingala/zip4j/model/FileHeader;->T([C)V

    :cond_72
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_75
    return-void

    .line 10
    :cond_76
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "invalid zip file"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    goto :goto_7f

    :goto_7e
    throw p1

    :goto_7f
    goto :goto_7e
.end method
