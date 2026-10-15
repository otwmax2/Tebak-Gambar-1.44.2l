###### Class com.google.android.play.core.assetpacks.b3 (com.google.android.play.core.assetpacks.b3)
.class final Lcom/google/android/play/core/assetpacks/b3;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"


# static fields
.field private static final h:Lv4/a;


# instance fields
.field private final a:[B

.field private final b:Lcom/google/android/play/core/assetpacks/e0;

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:J

.field private final f:Ljava/lang/String;

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lv4/a;

    const-string v1, "SliceMetadataManager"

    invoke-direct {v0, v1}, Lv4/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/assetpacks/b3;->h:Lv4/a;

    return-void
.end method

.method constructor <init>(Lcom/google/android/play/core/assetpacks/e0;Ljava/lang/String;IJLjava/lang/String;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/play/core/assetpacks/b3;->a:[B

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/b3;->b:Lcom/google/android/play/core/assetpacks/e0;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/b3;->c:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/play/core/assetpacks/b3;->d:I

    iput-wide p4, p0, Lcom/google/android/play/core/assetpacks/b3;->e:J

    iput-object p6, p0, Lcom/google/android/play/core/assetpacks/b3;->f:Ljava/lang/String;

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/play/core/assetpacks/b3;->g:I

    return-void
.end method

.method private final n()Ljava/io/File;
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/b3;->b:Lcom/google/android/play/core/assetpacks/e0;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/b3;->c:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/play/core/assetpacks/b3;->d:I

    iget-wide v3, p0, Lcom/google/android/play/core/assetpacks/b3;->e:J

    iget-object v5, p0, Lcom/google/android/play/core/assetpacks/b3;->f:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/play/core/assetpacks/e0;->B(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_17

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_17
    return-object v0
.end method

.method private final o()Ljava/io/File;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/b3;->b:Lcom/google/android/play/core/assetpacks/e0;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/b3;->c:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/play/core/assetpacks/b3;->d:I

    iget-wide v3, p0, Lcom/google/android/play/core/assetpacks/b3;->e:J

    iget-object v5, p0, Lcom/google/android/play/core/assetpacks/b3;->f:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/play/core/assetpacks/e0;->A(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    return-object v0
.end method


# virtual methods
.method final a()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/b3;->b:Lcom/google/android/play/core/assetpacks/e0;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/b3;->c:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/play/core/assetpacks/b3;->d:I

    iget-wide v3, p0, Lcom/google/android/play/core/assetpacks/b3;->e:J

    iget-object v5, p0, Lcom/google/android/play/core/assetpacks/b3;->f:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/play/core/assetpacks/e0;->A(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_16

    const/4 v0, 0x0

    return v0

    :cond_16
    new-instance v1, Ljava/io/FileInputStream;

    .line 3
    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_1b
    new-instance v0, Ljava/util/Properties;

    .line 4
    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_52

    .line 6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    const-string v1, "fileStatus"

    const-string v2, "-1"

    .line 7
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_37

    const/4 v0, -0x1

    return v0

    :cond_37
    const-string v1, "previousChunk"

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4a

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 10
    :cond_4a
    new-instance v0, Lcom/google/android/play/core/assetpacks/d1;

    const-string v1, "Slice checkpoint file corrupt."

    .line 11
    invoke-direct {v0, v1}, Lcom/google/android/play/core/assetpacks/d1;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_52
    move-exception v0

    .line 12
    :try_start_53
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_56

    :catchall_56
    throw v0
.end method

.method final b()Lcom/google/android/play/core/assetpacks/a3;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "-1"

    .line 1
    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/b3;->b:Lcom/google/android/play/core/assetpacks/e0;

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/b3;->c:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/play/core/assetpacks/b3;->d:I

    iget-wide v4, p0, Lcom/google/android/play/core/assetpacks/b3;->e:J

    iget-object v6, p0, Lcom/google/android/play/core/assetpacks/b3;->f:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/play/core/assetpacks/e0;->A(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_89

    .line 3
    new-instance v2, Ljava/util/Properties;

    .line 4
    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    new-instance v3, Ljava/io/FileInputStream;

    .line 5
    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 6
    :try_start_20
    invoke-virtual {v2, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_84

    .line 7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    const-string v1, "fileStatus"

    .line 8
    invoke-virtual {v2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Slice checkpoint file corrupt."

    if-eqz v3, :cond_7e

    const-string v3, "previousChunk"

    .line 9
    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7e

    .line 10
    :try_start_38
    invoke-virtual {v2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const-string v1, "fileName"

    .line 11
    invoke-virtual {v2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "fileOffset"

    .line 12
    invoke-virtual {v2, v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const-string v1, "remainingBytes"

    .line 13
    invoke-virtual {v2, v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 14
    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    const-string v0, "metadataFileCounter"

    const-string v1, "0"

    .line 15
    invoke-virtual {v2, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/play/core/assetpacks/b3;->g:I
    :try_end_70
    .catch Ljava/lang/NumberFormatException; {:try_start_38 .. :try_end_70} :catch_77

    new-instance v0, Lcom/google/android/play/core/assetpacks/l0;

    move-object v5, v0

    .line 17
    invoke-direct/range {v5 .. v12}, Lcom/google/android/play/core/assetpacks/l0;-><init>(ILjava/lang/String;JJI)V

    return-object v0

    :catch_77
    move-exception v0

    .line 18
    new-instance v1, Lcom/google/android/play/core/assetpacks/d1;

    .line 19
    invoke-direct {v1, v4, v0}, Lcom/google/android/play/core/assetpacks/d1;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 20
    :cond_7e
    new-instance v0, Lcom/google/android/play/core/assetpacks/d1;

    .line 21
    invoke-direct {v0, v4}, Lcom/google/android/play/core/assetpacks/d1;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_84
    move-exception v0

    .line 22
    :try_start_85
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_88

    :catchall_88
    throw v0

    .line 23
    :cond_89
    new-instance v0, Lcom/google/android/play/core/assetpacks/d1;

    const-string v1, "Slice checkpoint file does not exist."

    .line 24
    invoke-direct {v0, v1}, Lcom/google/android/play/core/assetpacks/d1;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final c()Ljava/io/File;
    .registers 6

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/google/android/play/core/assetpacks/b3;->n()Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/google/android/play/core/assetpacks/b3;->g:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%s-NAM.dat"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method final d(Ljava/io/InputStream;J)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/play/core/assetpacks/b3;->c()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    .line 2
    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3
    :try_start_b
    invoke-virtual {v1, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    :cond_e
    iget-object p2, p0, Lcom/google/android/play/core/assetpacks/b3;->a:[B

    .line 4
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result p2

    if-lez p2, :cond_1c

    iget-object p3, p0, Lcom/google/android/play/core/assetpacks/b3;->a:[B

    const/4 v0, 0x0

    .line 5
    invoke-virtual {v1, p3, v0, p2}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_1c
    .catchall {:try_start_b .. :try_end_1c} :catchall_24

    :cond_1c
    const/16 p3, 0x2000

    if-eq p2, p3, :cond_e

    .line 6
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    return-void

    :catchall_24
    move-exception p1

    .line 7
    :try_start_25
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_28

    :catchall_28
    goto :goto_2a

    :goto_29
    throw p1

    :goto_2a
    goto :goto_29
.end method

.method final e(J[BII)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/play/core/assetpacks/b3;->c()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    .line 2
    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3
    :try_start_b
    invoke-virtual {v1, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 4
    invoke-virtual {v1, p3, p4, p5}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_15

    .line 5
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    return-void

    :catchall_15
    move-exception p1

    .line 6
    :try_start_16
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_19

    :catchall_19
    throw p1
.end method

.method final f(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const-string v1, "fileStatus"

    const-string v2, "3"

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/play/core/assetpacks/b3;->c()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fileOffset"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "previousChunk"

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcom/google/android/play/core/assetpacks/b3;->g:I

    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "metadataFileCounter"

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/io/FileOutputStream;

    .line 6
    invoke-direct {p0}, Lcom/google/android/play/core/assetpacks/b3;->o()Ljava/io/File;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v1, 0x0

    .line 7
    :try_start_3b
    invoke-virtual {v0, p1, v1}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_42

    .line 8
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_42
    move-exception v0

    .line 9
    :try_start_43
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_46

    :catchall_46
    throw v0
.end method

.method final g(Ljava/lang/String;JJI)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const-string v1, "fileStatus"

    const-string v2, "1"

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fileName"

    .line 3
    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "fileOffset"

    invoke-virtual {v0, p2, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "remainingBytes"

    invoke-virtual {v0, p2, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "previousChunk"

    invoke-virtual {v0, p2, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcom/google/android/play/core/assetpacks/b3;->g:I

    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "metadataFileCounter"

    invoke-virtual {v0, p2, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/io/FileOutputStream;

    .line 8
    invoke-direct {p0}, Lcom/google/android/play/core/assetpacks/b3;->o()Ljava/io/File;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 p2, 0x0

    .line 9
    :try_start_41
    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_48

    .line 10
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_48
    move-exception p2

    .line 11
    :try_start_49
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4c

    :catchall_4c
    throw p2
.end method

.method final h([BI)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const-string v1, "fileStatus"

    const-string v2, "2"

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "previousChunk"

    invoke-virtual {v0, v1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p2, p0, Lcom/google/android/play/core/assetpacks/b3;->g:I

    .line 4
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "metadataFileCounter"

    invoke-virtual {v0, v1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Ljava/io/FileOutputStream;

    .line 5
    invoke-direct {p0}, Lcom/google/android/play/core/assetpacks/b3;->o()Ljava/io/File;

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v1, 0x0

    .line 6
    :try_start_2a
    invoke-virtual {v0, p2, v1}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_58

    .line 7
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/b3;->b:Lcom/google/android/play/core/assetpacks/e0;

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/b3;->c:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/play/core/assetpacks/b3;->d:I

    iget-wide v5, p0, Lcom/google/android/play/core/assetpacks/b3;->e:J

    iget-object v7, p0, Lcom/google/android/play/core/assetpacks/b3;->f:Ljava/lang/String;

    .line 8
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/play/core/assetpacks/e0;->z(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 9
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 10
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    :cond_47
    new-instance v0, Ljava/io/FileOutputStream;

    .line 11
    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 12
    :try_start_4c
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_53

    .line 13
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_53
    move-exception p1

    .line 14
    :try_start_54
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_57

    :catchall_57
    throw p1

    :catchall_58
    move-exception p1

    .line 15
    :try_start_59
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_5c

    :catchall_5c
    throw p1
.end method

.method final i(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const-string v1, "fileStatus"

    const-string v2, "4"

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "previousChunk"

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcom/google/android/play/core/assetpacks/b3;->g:I

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "metadataFileCounter"

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/io/FileOutputStream;

    .line 5
    invoke-direct {p0}, Lcom/google/android/play/core/assetpacks/b3;->o()Ljava/io/File;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v1, 0x0

    .line 6
    :try_start_2a
    invoke-virtual {v0, p1, v1}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_31

    .line 7
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_31
    move-exception v0

    .line 8
    :try_start_32
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_35

    :catchall_35
    throw v0
.end method

.method final j([B)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/play/core/assetpacks/b3;->g:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/play/core/assetpacks/b3;->g:I

    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/google/android/play/core/assetpacks/b3;->n()Ljava/io/File;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    iget v3, p0, Lcom/google/android/play/core/assetpacks/b3;->g:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const-string v3, "%s-LFH.dat"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_20
    new-instance v1, Ljava/io/FileOutputStream;

    .line 2
    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_25} :catch_31

    .line 3
    :try_start_25
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_2c

    .line 4
    :try_start_28
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_31

    return-void

    :catchall_2c
    move-exception p1

    .line 5
    :try_start_2d
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_30

    :catchall_30
    :try_start_30
    throw p1
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_31} :catch_31

    :catch_31
    move-exception p1

    .line 6
    new-instance v0, Lcom/google/android/play/core/assetpacks/d1;

    const-string v1, "Could not write metadata file."

    .line 7
    invoke-direct {v0, v1, p1}, Lcom/google/android/play/core/assetpacks/d1;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method final k([BLjava/io/InputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/play/core/assetpacks/b3;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/play/core/assetpacks/b3;->g:I

    invoke-virtual {p0}, Lcom/google/android/play/core/assetpacks/b3;->c()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/FileOutputStream;

    .line 2
    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 3
    :try_start_f
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/b3;->a:[B

    .line 4
    invoke-virtual {p2, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    :goto_18
    if-lez p1, :cond_27

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/b3;->a:[B

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v1, v0, v2, p1}, Ljava/io/FileOutputStream;->write([BII)V

    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/b3;->a:[B

    .line 6
    invoke-virtual {p2, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_2b

    goto :goto_18

    .line 7
    :cond_27
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_2b
    move-exception p1

    .line 8
    :try_start_2c
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_2f

    :catchall_2f
    goto :goto_31

    :goto_30
    throw p1

    :goto_31
    goto :goto_30
.end method

.method final l([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget p2, p0, Lcom/google/android/play/core/assetpacks/b3;->g:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/google/android/play/core/assetpacks/b3;->g:I

    invoke-virtual {p0}, Lcom/google/android/play/core/assetpacks/b3;->c()Ljava/io/File;

    move-result-object p2

    new-instance v0, Ljava/io/FileOutputStream;

    .line 2
    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 p2, 0x0

    .line 3
    :try_start_10
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_17

    .line 4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_17
    move-exception p1

    .line 5
    :try_start_18
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1b

    :catchall_1b
    throw p1
.end method

.method final m()Z
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/b3;->b:Lcom/google/android/play/core/assetpacks/e0;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/b3;->c:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/play/core/assetpacks/b3;->d:I

    iget-wide v3, p0, Lcom/google/android/play/core/assetpacks/b3;->e:J

    iget-object v5, p0, Lcom/google/android/play/core/assetpacks/b3;->f:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/play/core/assetpacks/e0;->A(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_16

    return v2

    :cond_16
    const/4 v1, 0x1

    :try_start_17
    new-instance v3, Ljava/io/FileInputStream;

    .line 3
    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1c} :catch_4b

    :try_start_1c
    new-instance v0, Ljava/util/Properties;

    .line 4
    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 5
    invoke-virtual {v0, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_46

    .line 6
    :try_start_24
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_4b

    const-string v3, "fileStatus"

    .line 7
    invoke-virtual {v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_39

    sget-object v0, Lcom/google/android/play/core/assetpacks/b3;->h:Lv4/a;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "Slice checkpoint file corrupt while checking if extraction finished."

    .line 8
    invoke-virtual {v0, v3, v1}, Lv4/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    return v2

    .line 9
    :cond_39
    invoke-virtual {v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_45

    return v1

    :cond_45
    return v2

    :catchall_46
    move-exception v0

    .line 10
    :try_start_47
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_4a

    :catchall_4a
    :try_start_4a
    throw v0
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4b} :catch_4b

    :catch_4b
    move-exception v0

    .line 11
    sget-object v3, Lcom/google/android/play/core/assetpacks/b3;->h:Lv4/a;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v0, "Could not read checkpoint while checking if extraction finished. %s"

    .line 12
    invoke-virtual {v3, v0, v1}, Lv4/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    return v2
.end method
