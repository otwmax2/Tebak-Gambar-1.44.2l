###### Class net.lingala.zip4j.unzip.Unzip (net.lingala.zip4j.unzip.Unzip)
.class public Lnet/lingala/zip4j/unzip/Unzip;
.super Ljava/lang/Object;
.source "Unzip.java"


# instance fields
.field private a:Lnet/lingala/zip4j/model/ZipModel;


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/model/ZipModel;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    .line 2
    iput-object p1, p0, Lnet/lingala/zip4j/unzip/Unzip;->a:Lnet/lingala/zip4j/model/ZipModel;

    return-void

    .line 3
    :cond_8
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "ZipModel is null"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lnet/lingala/zip4j/unzip/Unzip;Ljava/util/ArrayList;Lnet/lingala/zip4j/model/UnzipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/lingala/zip4j/unzip/Unzip;->g(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/UnzipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lnet/lingala/zip4j/unzip/Unzip;Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p5}, Lnet/lingala/zip4j/unzip/Unzip;->h(Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    return-void
.end method

.method private c(Ljava/util/ArrayList;)J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_36

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    .line 1
    :goto_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_35

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/lingala/zip4j/model/FileHeader;

    .line 3
    invoke-virtual {v5}, Lnet/lingala/zip4j/model/FileHeader;->u()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v6

    if-eqz v6, :cond_2d

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/FileHeader;->u()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v6

    invoke-virtual {v6}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->d()J

    move-result-wide v6

    cmp-long v8, v6, v1

    if-lez v8, :cond_2d

    .line 4
    invoke-virtual {v5}, Lnet/lingala/zip4j/model/FileHeader;->u()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->a()J

    move-result-wide v5

    goto :goto_31

    .line 5
    :cond_2d
    invoke-virtual {v5}, Lnet/lingala/zip4j/model/FileHeader;->b()J

    move-result-wide v5

    :goto_31
    add-long/2addr v3, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_35
    return-wide v3

    .line 6
    :cond_36
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "fileHeaders is null, cannot calculate total work"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    goto :goto_3f

    :goto_3e
    throw p1

    :goto_3f
    goto :goto_3e
.end method

.method private d(Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_49

    .line 1
    invoke-static {p2}, Lnet/lingala/zip4j/util/Zip4jUtil;->u(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 2
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->k()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p3}, Lnet/lingala/zip4j/util/Zip4jUtil;->u(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_14

    :cond_13
    move-object p3, p1

    .line 4
    :goto_14
    invoke-static {p3}, Lnet/lingala/zip4j/util/Zip4jUtil;->u(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1b

    return-void

    .line 5
    :cond_1b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    :try_start_2a
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    .line 8
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_41

    .line 10
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_41} :catch_42

    :cond_41
    return-void

    :catch_42
    move-exception p1

    .line 11
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 12
    :cond_49
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "Cannot check output directory structure...one of the parameters was null"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private g(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/UnzipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;Ljava/lang/String;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 2
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lnet/lingala/zip4j/model/FileHeader;

    const/4 v7, 0x0

    move-object v3, p0

    move-object v5, p4

    move-object v6, p2

    move-object v8, p3

    .line 3
    invoke-direct/range {v3 .. v8}, Lnet/lingala/zip4j/unzip/Unzip;->h(Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    .line 4
    invoke-virtual {p3}, Lnet/lingala/zip4j/progress/ProgressMonitor;->d()Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 p1, 0x3

    .line 5
    invoke-virtual {p3, p1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->h(I)V

    .line 6
    invoke-virtual {p3, v0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->i(I)V

    return-void

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_28
    return-void
.end method

.method private h(Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_80

    .line 1
    :try_start_2
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->g(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lnet/lingala/zip4j/util/InternalZipConstants;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4
    :cond_20
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->v()Z

    move-result v0
    :try_end_24
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_2 .. :try_end_24} :catch_7b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_24} :catch_71

    if-eqz v0, :cond_59

    .line 5
    :try_start_26
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->k()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->u(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_31

    return-void

    .line 7
    :cond_31
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_66

    .line 10
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_4e} :catch_4f

    goto :goto_66

    :catch_4f
    move-exception p1

    .line 11
    :try_start_50
    invoke-virtual {p5, p1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->a(Ljava/lang/Throwable;)V

    .line 12
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 13
    :cond_59
    invoke-direct {p0, p1, p2, p4}, Lnet/lingala/zip4j/unzip/Unzip;->d(Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    new-instance v0, Lnet/lingala/zip4j/unzip/UnzipEngine;

    iget-object v1, p0, Lnet/lingala/zip4j/unzip/Unzip;->a:Lnet/lingala/zip4j/model/ZipModel;

    invoke-direct {v0, v1, p1}, Lnet/lingala/zip4j/unzip/UnzipEngine;-><init>(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;)V
    :try_end_63
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_50 .. :try_end_63} :catch_7b
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_63} :catch_71

    .line 15
    :try_start_63
    invoke-virtual {v0, p5, p2, p4, p3}, Lnet/lingala/zip4j/unzip/UnzipEngine;->t(Lnet/lingala/zip4j/progress/ProgressMonitor;Ljava/lang/String;Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_66} :catch_67

    :cond_66
    :goto_66
    return-void

    :catch_67
    move-exception p1

    .line 16
    :try_start_68
    invoke-virtual {p5, p1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->a(Ljava/lang/Throwable;)V

    .line 17
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_71
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_68 .. :try_end_71} :catch_7b
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_71} :catch_71

    :catch_71
    move-exception p1

    .line 18
    invoke-virtual {p5, p1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->a(Ljava/lang/Throwable;)V

    .line 19
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_7b
    move-exception p1

    .line 20
    invoke-virtual {p5, p1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->a(Ljava/lang/Throwable;)V

    .line 21
    throw p1

    .line 22
    :cond_80
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "fileHeader is null"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public e(Lnet/lingala/zip4j/model/UnzipParameters;Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;Z)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/Unzip;->a:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->a()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 2
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/CentralDirectory;->a()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_36

    .line 3
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/CentralDirectory;->a()Ljava/util/ArrayList;

    move-result-object v5

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p3, v0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->f(I)V

    .line 5
    invoke-direct {p0, v5}, Lnet/lingala/zip4j/unzip/Unzip;->c(Ljava/util/ArrayList;)J

    move-result-wide v1

    invoke-virtual {p3, v1, v2}, Lnet/lingala/zip4j/progress/ProgressMonitor;->j(J)V

    .line 6
    invoke-virtual {p3, v0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->i(I)V

    if-eqz p4, :cond_32

    .line 7
    new-instance p4, Lnet/lingala/zip4j/unzip/Unzip$1;

    const-string v4, "Zip4j"

    move-object v2, p4

    move-object v3, p0

    move-object v6, p1

    move-object v7, p3

    move-object v8, p2

    invoke-direct/range {v2 .. v8}, Lnet/lingala/zip4j/unzip/Unzip$1;-><init>(Lnet/lingala/zip4j/unzip/Unzip;Ljava/lang/String;Ljava/util/ArrayList;Lnet/lingala/zip4j/model/UnzipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p4}, Ljava/lang/Thread;->start()V

    goto :goto_35

    .line 9
    :cond_32
    invoke-direct {p0, v5, p1, p3, p2}, Lnet/lingala/zip4j/unzip/Unzip;->g(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/UnzipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;Ljava/lang/String;)V

    :goto_35
    return-void

    .line 10
    :cond_36
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "invalid central directory in zipModel"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f(Lnet/lingala/zip4j/model/FileHeader;)Lnet/lingala/zip4j/io/ZipInputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    new-instance v0, Lnet/lingala/zip4j/unzip/UnzipEngine;

    iget-object v1, p0, Lnet/lingala/zip4j/unzip/Unzip;->a:Lnet/lingala/zip4j/model/ZipModel;

    invoke-direct {v0, v1, p1}, Lnet/lingala/zip4j/unzip/UnzipEngine;-><init>(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;)V

    .line 2
    invoke-virtual {v0}, Lnet/lingala/zip4j/unzip/UnzipEngine;->k()Lnet/lingala/zip4j/io/ZipInputStream;

    move-result-object p1

    return-object p1
.end method

###### Class net.lingala.zip4j.unzip.Unzip.AnonymousClass1 (net.lingala.zip4j.unzip.Unzip$1)
.class Lnet/lingala/zip4j/unzip/Unzip$1;
.super Ljava/lang/Thread;
.source "Unzip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/lingala/zip4j/unzip/Unzip;->e(Lnet/lingala/zip4j/model/UnzipParameters;Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Ljava/util/ArrayList;

.field final synthetic p:Lnet/lingala/zip4j/model/UnzipParameters;

.field final synthetic q:Lnet/lingala/zip4j/progress/ProgressMonitor;

.field final synthetic r:Ljava/lang/String;

.field final synthetic s:Lnet/lingala/zip4j/unzip/Unzip;


# direct methods
.method constructor <init>(Lnet/lingala/zip4j/unzip/Unzip;Ljava/lang/String;Ljava/util/ArrayList;Lnet/lingala/zip4j/model/UnzipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;Ljava/lang/String;)V
    .registers 7

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/unzip/Unzip$1;->s:Lnet/lingala/zip4j/unzip/Unzip;

    iput-object p3, p0, Lnet/lingala/zip4j/unzip/Unzip$1;->o:Ljava/util/ArrayList;

    iput-object p4, p0, Lnet/lingala/zip4j/unzip/Unzip$1;->p:Lnet/lingala/zip4j/model/UnzipParameters;

    iput-object p5, p0, Lnet/lingala/zip4j/unzip/Unzip$1;->q:Lnet/lingala/zip4j/progress/ProgressMonitor;

    iput-object p6, p0, Lnet/lingala/zip4j/unzip/Unzip$1;->r:Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/Unzip$1;->s:Lnet/lingala/zip4j/unzip/Unzip;

    iget-object v1, p0, Lnet/lingala/zip4j/unzip/Unzip$1;->o:Ljava/util/ArrayList;

    iget-object v2, p0, Lnet/lingala/zip4j/unzip/Unzip$1;->p:Lnet/lingala/zip4j/model/UnzipParameters;

    iget-object v3, p0, Lnet/lingala/zip4j/unzip/Unzip$1;->q:Lnet/lingala/zip4j/progress/ProgressMonitor;

    iget-object v4, p0, Lnet/lingala/zip4j/unzip/Unzip$1;->r:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lnet/lingala/zip4j/unzip/Unzip;->a(Lnet/lingala/zip4j/unzip/Unzip;Ljava/util/ArrayList;Lnet/lingala/zip4j/model/UnzipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/Unzip$1;->q:Lnet/lingala/zip4j/progress/ProgressMonitor;

    invoke-virtual {v0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->b()V
    :try_end_12
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_12} :catch_12

    :catch_12
    return-void
.end method

###### Class net.lingala.zip4j.unzip.Unzip.AnonymousClass2 (net.lingala.zip4j.unzip.Unzip$2)
.class Lnet/lingala/zip4j/unzip/Unzip$2;
.super Ljava/lang/Thread;
.source "Unzip.java"


# instance fields
.field final synthetic o:Lnet/lingala/zip4j/model/FileHeader;

.field final synthetic p:Ljava/lang/String;

.field final synthetic q:Lnet/lingala/zip4j/model/UnzipParameters;

.field final synthetic r:Ljava/lang/String;

.field final synthetic s:Lnet/lingala/zip4j/progress/ProgressMonitor;

.field final synthetic t:Lnet/lingala/zip4j/unzip/Unzip;


# virtual methods
.method public run()V
    .registers 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/Unzip$2;->t:Lnet/lingala/zip4j/unzip/Unzip;

    iget-object v1, p0, Lnet/lingala/zip4j/unzip/Unzip$2;->o:Lnet/lingala/zip4j/model/FileHeader;

    iget-object v2, p0, Lnet/lingala/zip4j/unzip/Unzip$2;->p:Ljava/lang/String;

    iget-object v3, p0, Lnet/lingala/zip4j/unzip/Unzip$2;->q:Lnet/lingala/zip4j/model/UnzipParameters;

    iget-object v4, p0, Lnet/lingala/zip4j/unzip/Unzip$2;->r:Ljava/lang/String;

    iget-object v5, p0, Lnet/lingala/zip4j/unzip/Unzip$2;->s:Lnet/lingala/zip4j/progress/ProgressMonitor;

    invoke-static/range {v0 .. v5}, Lnet/lingala/zip4j/unzip/Unzip;->b(Lnet/lingala/zip4j/unzip/Unzip;Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;Lnet/lingala/zip4j/model/UnzipParameters;Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    .line 2
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/Unzip$2;->s:Lnet/lingala/zip4j/progress/ProgressMonitor;

    invoke-virtual {v0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->b()V
    :try_end_14
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_14} :catch_14

    :catch_14
    return-void
.end method
