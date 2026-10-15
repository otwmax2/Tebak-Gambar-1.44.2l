###### Class com.google.android.play.core.assetpacks.y0 (com.google.android.play.core.assetpacks.y0)
.class final Lcom/google/android/play/core/assetpacks/y0;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"


# static fields
.field private static final g:Lv4/a;


# instance fields
.field private final a:[B

.field private final b:Lcom/google/android/play/core/assetpacks/e0;

.field private final c:Lv4/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv4/y<",
            "Lcom/google/android/play/core/assetpacks/u3;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lv4/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv4/y<",
            "Lcom/google/android/play/core/assetpacks/y;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/android/play/core/assetpacks/h1;

.field private final f:Lcom/google/android/play/core/assetpacks/p2;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lv4/a;

    const-string v1, "ExtractChunkTaskHandler"

    invoke-direct {v0, v1}, Lv4/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/assetpacks/y0;->g:Lv4/a;

    return-void
.end method

.method constructor <init>(Lcom/google/android/play/core/assetpacks/e0;Lv4/y;Lv4/y;Lcom/google/android/play/core/assetpacks/h1;Lcom/google/android/play/core/assetpacks/p2;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/assetpacks/e0;",
            "Lv4/y<",
            "Lcom/google/android/play/core/assetpacks/u3;",
            ">;",
            "Lv4/y<",
            "Lcom/google/android/play/core/assetpacks/y;",
            ">;",
            "Lcom/google/android/play/core/assetpacks/h1;",
            "Lcom/google/android/play/core/assetpacks/p2;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/play/core/assetpacks/y0;->a:[B

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/y0;->b:Lcom/google/android/play/core/assetpacks/e0;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/y0;->c:Lv4/y;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/y0;->d:Lv4/y;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/y0;->e:Lcom/google/android/play/core/assetpacks/h1;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/y0;->f:Lcom/google/android/play/core/assetpacks/p2;

    return-void
.end method

.method private final b(Lcom/google/android/play/core/assetpacks/x0;)Ljava/io/File;
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/y0;->b:Lcom/google/android/play/core/assetpacks/e0;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/y1;->b:Ljava/lang/String;

    iget v2, p1, Lcom/google/android/play/core/assetpacks/x0;->c:I

    iget-wide v3, p1, Lcom/google/android/play/core/assetpacks/x0;->d:J

    iget-object v5, p1, Lcom/google/android/play/core/assetpacks/x0;->f:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/play/core/assetpacks/e0;->C(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_17

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_17
    return-object p1
.end method


# virtual methods
.method public final a(Lcom/google/android/play/core/assetpacks/x0;)V
    .registers 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1
    new-instance v0, Lcom/google/android/play/core/assetpacks/b3;

    iget-object v4, v1, Lcom/google/android/play/core/assetpacks/y0;->b:Lcom/google/android/play/core/assetpacks/e0;

    iget-object v5, v2, Lcom/google/android/play/core/assetpacks/y1;->b:Ljava/lang/String;

    iget v6, v2, Lcom/google/android/play/core/assetpacks/x0;->c:I

    iget-wide v7, v2, Lcom/google/android/play/core/assetpacks/x0;->d:J

    iget-object v9, v2, Lcom/google/android/play/core/assetpacks/x0;->f:Ljava/lang/String;

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/google/android/play/core/assetpacks/b3;-><init>(Lcom/google/android/play/core/assetpacks/e0;Ljava/lang/String;IJLjava/lang/String;)V

    iget-object v10, v1, Lcom/google/android/play/core/assetpacks/y0;->b:Lcom/google/android/play/core/assetpacks/e0;

    iget-object v11, v2, Lcom/google/android/play/core/assetpacks/y1;->b:Ljava/lang/String;

    iget v12, v2, Lcom/google/android/play/core/assetpacks/x0;->c:I

    iget-wide v13, v2, Lcom/google/android/play/core/assetpacks/x0;->d:J

    iget-object v15, v2, Lcom/google/android/play/core/assetpacks/x0;->f:Ljava/lang/String;

    .line 2
    invoke-virtual/range {v10 .. v15}, Lcom/google/android/play/core/assetpacks/e0;->B(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 3
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2b

    .line 4
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_2b
    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    :try_start_2f
    iget-object v3, v2, Lcom/google/android/play/core/assetpacks/x0;->l:Ljava/io/InputStream;

    iget v4, v2, Lcom/google/android/play/core/assetpacks/x0;->g:I

    const/16 v15, 0x2000

    if-eq v4, v13, :cond_39

    move-object v9, v3

    goto :goto_3f

    :cond_39
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    .line 5
    invoke-direct {v4, v3, v15}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_3e} :catch_34a

    move-object v9, v4

    :goto_3f
    :try_start_3f
    iget v3, v2, Lcom/google/android/play/core/assetpacks/x0;->h:I

    const/16 v16, 0x0

    if-lez v3, :cond_182

    .line 6
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/b3;->b()Lcom/google/android/play/core/assetpacks/a3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/play/core/assetpacks/a3;->b()I

    move-result v4

    iget v5, v2, Lcom/google/android/play/core/assetpacks/x0;->h:I

    add-int/lit8 v6, v5, -0x1

    if-ne v4, v6, :cond_161

    .line 7
    invoke-virtual {v3}, Lcom/google/android/play/core/assetpacks/a3;->a()I

    move-result v4

    if-eq v4, v13, :cond_db

    if-eq v4, v12, :cond_9c

    if-ne v4, v11, :cond_82

    .line 8
    sget-object v4, Lcom/google/android/play/core/assetpacks/y0;->g:Lv4/a;

    const-string v5, "Resuming central directory from last chunk."

    new-array v6, v14, [Ljava/lang/Object;

    .line 9
    invoke-virtual {v4, v5, v6}, Lv4/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {v3}, Lcom/google/android/play/core/assetpacks/a3;->c()J

    move-result-wide v3

    .line 10
    invoke-virtual {v0, v9, v3, v4}, Lcom/google/android/play/core/assetpacks/b3;->d(Ljava/io/InputStream;J)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/play/core/assetpacks/x0;->a()Z

    move-result v3

    if-eqz v3, :cond_78

    move-object v10, v9

    :goto_74
    move-object/from16 v9, v16

    goto/16 :goto_184

    .line 11
    :cond_78
    new-instance v0, Lcom/google/android/play/core/assetpacks/d1;

    const-string v3, "Chunk has ended twice during central directory. This should not be possible with chunk sizes of 50MB."

    iget v4, v2, Lcom/google/android/play/core/assetpacks/y1;->a:I

    .line 12
    invoke-direct {v0, v3, v4}, Lcom/google/android/play/core/assetpacks/d1;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 13
    :cond_82
    new-instance v0, Lcom/google/android/play/core/assetpacks/d1;

    new-array v4, v13, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/google/android/play/core/assetpacks/a3;->a()I

    move-result v3

    .line 14
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v14

    const-string v3, "Slice checkpoint file corrupt. Unexpected FileExtractionStatus %s."

    .line 15
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget v4, v2, Lcom/google/android/play/core/assetpacks/y1;->a:I

    invoke-direct {v0, v3, v4}, Lcom/google/android/play/core/assetpacks/d1;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 16
    :cond_9c
    sget-object v3, Lcom/google/android/play/core/assetpacks/y0;->g:Lv4/a;

    const-string v4, "Resuming zip entry from last chunk during local file header."

    new-array v5, v14, [Ljava/lang/Object;

    .line 17
    invoke-virtual {v3, v4, v5}, Lv4/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v3, v1, Lcom/google/android/play/core/assetpacks/y0;->b:Lcom/google/android/play/core/assetpacks/e0;

    iget-object v4, v2, Lcom/google/android/play/core/assetpacks/y1;->b:Ljava/lang/String;

    iget v5, v2, Lcom/google/android/play/core/assetpacks/x0;->c:I

    iget-wide v6, v2, Lcom/google/android/play/core/assetpacks/x0;->d:J

    iget-object v8, v2, Lcom/google/android/play/core/assetpacks/x0;->f:Ljava/lang/String;

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move/from16 v18, v5

    move-wide/from16 v19, v6

    move-object/from16 v21, v8

    .line 18
    invoke-virtual/range {v16 .. v21}, Lcom/google/android/play/core/assetpacks/e0;->z(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 19
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_d1

    .line 20
    new-instance v4, Ljava/io/SequenceInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5, v9}, Ljava/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    move-object v10, v9

    move-object v9, v4

    goto/16 :goto_184

    .line 21
    :cond_d1
    new-instance v0, Lcom/google/android/play/core/assetpacks/d1;

    const-string v3, "Checkpoint extension file not found."

    iget v4, v2, Lcom/google/android/play/core/assetpacks/y1;->a:I

    .line 22
    invoke-direct {v0, v3, v4}, Lcom/google/android/play/core/assetpacks/d1;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 23
    :cond_db
    sget-object v4, Lcom/google/android/play/core/assetpacks/y0;->g:Lv4/a;

    new-array v5, v13, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/google/android/play/core/assetpacks/a3;->e()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v14

    const-string v6, "Resuming zip entry from last chunk during file %s."

    .line 24
    invoke-virtual {v4, v6, v5}, Lv4/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Lcom/google/android/play/core/assetpacks/a3;->e()Ljava/lang/String;

    move-result-object v5

    .line 25
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_156

    .line 27
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v6, "rw"

    .line 28
    invoke-direct {v5, v4, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/android/play/core/assetpacks/a3;->c()J

    move-result-wide v6

    .line 29
    invoke-virtual {v5, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v3}, Lcom/google/android/play/core/assetpacks/a3;->d()J

    move-result-wide v6

    :goto_10b
    const-wide/16 v10, 0x2000

    .line 30
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    long-to-int v3, v10

    iget-object v8, v1, Lcom/google/android/play/core/assetpacks/y0;->a:[B

    .line 31
    invoke-virtual {v9, v8, v14, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    move-result v8

    if-lez v8, :cond_123

    iget-object v10, v1, Lcom/google/android/play/core/assetpacks/y0;->a:[B

    .line 32
    invoke-virtual {v5, v10, v14, v8}, Ljava/io/RandomAccessFile;->write([BII)V

    :cond_123
    int-to-long v10, v8

    sub-long v10, v6, v10

    const-wide/16 v6, 0x0

    cmp-long v19, v10, v6

    if-lez v19, :cond_131

    if-gtz v8, :cond_12f

    goto :goto_131

    :cond_12f
    move-wide v6, v10

    goto :goto_10b

    .line 33
    :cond_131
    :goto_131
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    .line 34
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    if-eq v8, v3, :cond_182

    sget-object v3, Lcom/google/android/play/core/assetpacks/y0;->g:Lv4/a;

    const-string v5, "Chunk has ended while resuming the previous chunks file content."

    new-array v8, v14, [Ljava/lang/Object;

    .line 35
    invoke-virtual {v3, v5, v8}, Lv4/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 36
    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    iget v8, v2, Lcom/google/android/play/core/assetpacks/x0;->h:I
    :try_end_149
    .catchall {:try_start_3f .. :try_end_149} :catchall_344

    move-object v3, v0

    move-wide v5, v6

    move/from16 v19, v8

    move-wide v7, v10

    move-object v10, v9

    move/from16 v9, v19

    .line 37
    :try_start_151
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/play/core/assetpacks/b3;->g(Ljava/lang/String;JJI)V

    goto/16 :goto_74

    :cond_156
    move-object v10, v9

    .line 38
    new-instance v0, Lcom/google/android/play/core/assetpacks/d1;

    const-string v3, "Partial file specified in checkpoint does not exist. Corrupt directory."

    iget v4, v2, Lcom/google/android/play/core/assetpacks/y1;->a:I

    .line 39
    invoke-direct {v0, v3, v4}, Lcom/google/android/play/core/assetpacks/d1;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_161
    move-object v10, v9

    .line 40
    new-instance v0, Lcom/google/android/play/core/assetpacks/d1;

    const-string v4, "Trying to resume with chunk number %s when previously processed chunk was number %s."

    new-array v6, v12, [Ljava/lang/Object;

    .line 41
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v14

    invoke-virtual {v3}, Lcom/google/android/play/core/assetpacks/a3;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v13

    .line 42
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget v4, v2, Lcom/google/android/play/core/assetpacks/y1;->a:I

    invoke-direct {v0, v3, v4}, Lcom/google/android/play/core/assetpacks/d1;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_182
    move-object v10, v9

    move-object v9, v10

    :goto_184
    if-eqz v9, :cond_295

    .line 43
    new-instance v3, Lcom/google/android/play/core/assetpacks/q0;

    .line 44
    invoke-direct {v3, v9}, Lcom/google/android/play/core/assetpacks/q0;-><init>(Ljava/io/InputStream;)V

    .line 45
    invoke-direct/range {p0 .. p1}, Lcom/google/android/play/core/assetpacks/y0;->b(Lcom/google/android/play/core/assetpacks/x0;)Ljava/io/File;

    move-result-object v4

    .line 46
    :cond_18f
    invoke-virtual {v3}, Lcom/google/android/play/core/assetpacks/q0;->c()Lcom/google/android/play/core/assetpacks/h3;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/play/core/assetpacks/h3;->e()Z

    move-result v6

    if-nez v6, :cond_1e6

    invoke-virtual {v3}, Lcom/google/android/play/core/assetpacks/q0;->d()Z

    move-result v6

    if-nez v6, :cond_1e6

    invoke-virtual {v5}, Lcom/google/android/play/core/assetpacks/h3;->h()Z

    move-result v6

    if-eqz v6, :cond_1df

    .line 47
    invoke-virtual {v5}, Lcom/google/android/play/core/assetpacks/h3;->g()Z

    move-result v6

    if-nez v6, :cond_1df

    invoke-virtual {v5}, Lcom/google/android/play/core/assetpacks/h3;->f()[B

    move-result-object v6

    .line 48
    invoke-virtual {v0, v6}, Lcom/google/android/play/core/assetpacks/b3;->j([B)V

    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Lcom/google/android/play/core/assetpacks/h3;->c()Ljava/lang/String;

    move-result-object v7

    .line 49
    invoke-direct {v6, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    new-instance v7, Ljava/io/FileOutputStream;

    .line 51
    invoke-direct {v7, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iget-object v6, v1, Lcom/google/android/play/core/assetpacks/y0;->a:[B

    .line 52
    invoke-virtual {v3, v6, v14, v15}, Lcom/google/android/play/core/assetpacks/q0;->read([BII)I

    move-result v6

    :goto_1cd
    if-lez v6, :cond_1db

    iget-object v8, v1, Lcom/google/android/play/core/assetpacks/y0;->a:[B

    .line 53
    invoke-virtual {v7, v8, v14, v6}, Ljava/io/FileOutputStream;->write([BII)V

    iget-object v6, v1, Lcom/google/android/play/core/assetpacks/y0;->a:[B

    .line 54
    invoke-virtual {v3, v6, v14, v15}, Lcom/google/android/play/core/assetpacks/q0;->read([BII)I

    move-result v6

    goto :goto_1cd

    .line 55
    :cond_1db
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    goto :goto_1e6

    .line 56
    :cond_1df
    invoke-virtual {v5}, Lcom/google/android/play/core/assetpacks/h3;->f()[B

    move-result-object v6

    .line 57
    invoke-virtual {v0, v6, v3}, Lcom/google/android/play/core/assetpacks/b3;->k([BLjava/io/InputStream;)V

    .line 58
    :cond_1e6
    :goto_1e6
    invoke-virtual {v3}, Lcom/google/android/play/core/assetpacks/q0;->e()Z

    move-result v6

    if-nez v6, :cond_1f2

    invoke-virtual {v3}, Lcom/google/android/play/core/assetpacks/q0;->d()Z

    move-result v6

    if-eqz v6, :cond_18f

    :cond_1f2
    invoke-virtual {v3}, Lcom/google/android/play/core/assetpacks/q0;->d()Z

    move-result v4

    if-eqz v4, :cond_208

    sget-object v4, Lcom/google/android/play/core/assetpacks/y0;->g:Lv4/a;

    const-string v6, "Writing central directory metadata."

    new-array v7, v14, [Ljava/lang/Object;

    .line 59
    invoke-virtual {v4, v6, v7}, Lv4/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {v5}, Lcom/google/android/play/core/assetpacks/h3;->f()[B

    move-result-object v4

    .line 60
    invoke-virtual {v0, v4, v9}, Lcom/google/android/play/core/assetpacks/b3;->k([BLjava/io/InputStream;)V

    :cond_208
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/play/core/assetpacks/x0;->a()Z

    move-result v4

    if-nez v4, :cond_295

    invoke-virtual {v5}, Lcom/google/android/play/core/assetpacks/h3;->e()Z

    move-result v4

    if-eqz v4, :cond_227

    sget-object v3, Lcom/google/android/play/core/assetpacks/y0;->g:Lv4/a;

    const-string v4, "Writing slice checkpoint for partial local file header."

    new-array v6, v14, [Ljava/lang/Object;

    .line 61
    invoke-virtual {v3, v4, v6}, Lv4/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {v5}, Lcom/google/android/play/core/assetpacks/h3;->f()[B

    move-result-object v3

    iget v4, v2, Lcom/google/android/play/core/assetpacks/x0;->h:I

    .line 62
    invoke-virtual {v0, v3, v4}, Lcom/google/android/play/core/assetpacks/b3;->h([BI)V

    goto :goto_295

    .line 63
    :cond_227
    invoke-virtual {v3}, Lcom/google/android/play/core/assetpacks/q0;->d()Z

    move-result v4

    if-eqz v4, :cond_23c

    sget-object v3, Lcom/google/android/play/core/assetpacks/y0;->g:Lv4/a;

    const-string v4, "Writing slice checkpoint for central directory."

    new-array v5, v14, [Ljava/lang/Object;

    .line 64
    invoke-virtual {v3, v4, v5}, Lv4/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    iget v3, v2, Lcom/google/android/play/core/assetpacks/x0;->h:I

    .line 65
    invoke-virtual {v0, v3}, Lcom/google/android/play/core/assetpacks/b3;->f(I)V

    goto :goto_295

    :cond_23c
    invoke-virtual {v5}, Lcom/google/android/play/core/assetpacks/h3;->a()I

    move-result v4

    if-nez v4, :cond_272

    sget-object v4, Lcom/google/android/play/core/assetpacks/y0;->g:Lv4/a;

    const-string v6, "Writing slice checkpoint for partial file."

    new-array v7, v14, [Ljava/lang/Object;

    .line 66
    invoke-virtual {v4, v6, v7}, Lv4/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v4, Ljava/io/File;

    .line 67
    invoke-direct/range {p0 .. p1}, Lcom/google/android/play/core/assetpacks/y0;->b(Lcom/google/android/play/core/assetpacks/x0;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5}, Lcom/google/android/play/core/assetpacks/h3;->c()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/google/android/play/core/assetpacks/h3;->b()J

    move-result-wide v5

    invoke-virtual {v3}, Lcom/google/android/play/core/assetpacks/q0;->b()J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 68
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v7

    cmp-long v9, v7, v5

    if-nez v9, :cond_26a

    goto :goto_283

    .line 69
    :cond_26a
    new-instance v0, Lcom/google/android/play/core/assetpacks/d1;

    const-string v3, "Partial file is of unexpected size."

    .line 70
    invoke-direct {v0, v3}, Lcom/google/android/play/core/assetpacks/d1;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_272
    sget-object v4, Lcom/google/android/play/core/assetpacks/y0;->g:Lv4/a;

    const-string v5, "Writing slice checkpoint for partial unextractable file."

    new-array v6, v14, [Ljava/lang/Object;

    .line 72
    invoke-virtual {v4, v5, v6}, Lv4/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 73
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/b3;->c()Ljava/io/File;

    move-result-object v4

    .line 74
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 75
    :goto_283
    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/play/core/assetpacks/q0;->b()J

    move-result-wide v7

    iget v9, v2, Lcom/google/android/play/core/assetpacks/x0;->h:I

    move-object v3, v0

    .line 76
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/play/core/assetpacks/b3;->g(Ljava/lang/String;JJI)V
    :try_end_291
    .catchall {:try_start_151 .. :try_end_291} :catchall_292

    goto :goto_295

    :catchall_292
    move-exception v0

    goto/16 :goto_346

    .line 77
    :cond_295
    :goto_295
    :try_start_295
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_298
    .catch Ljava/io/IOException; {:try_start_295 .. :try_end_298} :catch_34a

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/play/core/assetpacks/x0;->a()Z

    move-result v3

    if-eqz v3, :cond_2be

    :try_start_29e
    iget v3, v2, Lcom/google/android/play/core/assetpacks/x0;->h:I

    .line 78
    invoke-virtual {v0, v3}, Lcom/google/android/play/core/assetpacks/b3;->i(I)V
    :try_end_2a3
    .catch Ljava/io/IOException; {:try_start_29e .. :try_end_2a3} :catch_2a4

    goto :goto_2be

    :catch_2a4
    move-exception v0

    .line 79
    sget-object v3, Lcom/google/android/play/core/assetpacks/y0;->g:Lv4/a;

    new-array v4, v13, [Ljava/lang/Object;

    .line 80
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v14

    const-string v5, "Writing extraction finished checkpoint failed with %s."

    invoke-virtual {v3, v5, v4}, Lv4/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v3, Lcom/google/android/play/core/assetpacks/d1;

    iget v2, v2, Lcom/google/android/play/core/assetpacks/y1;->a:I

    const-string v4, "Writing extraction finished checkpoint failed."

    .line 81
    invoke-direct {v3, v4, v0, v2}, Lcom/google/android/play/core/assetpacks/d1;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v3

    .line 82
    :cond_2be
    :goto_2be
    sget-object v0, Lcom/google/android/play/core/assetpacks/y0;->g:Lv4/a;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, v2, Lcom/google/android/play/core/assetpacks/x0;->h:I

    .line 83
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v14

    iget-object v4, v2, Lcom/google/android/play/core/assetpacks/x0;->f:Ljava/lang/String;

    aput-object v4, v3, v13

    iget-object v4, v2, Lcom/google/android/play/core/assetpacks/y1;->b:Ljava/lang/String;

    aput-object v4, v3, v12

    iget v4, v2, Lcom/google/android/play/core/assetpacks/y1;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    const-string v4, "Extraction finished for chunk %s of slice %s of pack %s of session %s."

    .line 84
    invoke-virtual {v0, v4, v3}, Lv4/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, v1, Lcom/google/android/play/core/assetpacks/y0;->c:Lv4/y;

    .line 85
    invoke-interface {v0}, Lv4/y;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/assetpacks/u3;

    iget v3, v2, Lcom/google/android/play/core/assetpacks/y1;->a:I

    iget-object v4, v2, Lcom/google/android/play/core/assetpacks/y1;->b:Ljava/lang/String;

    iget-object v5, v2, Lcom/google/android/play/core/assetpacks/x0;->f:Ljava/lang/String;

    iget v6, v2, Lcom/google/android/play/core/assetpacks/x0;->h:I

    .line 86
    invoke-interface {v0, v3, v4, v5, v6}, Lcom/google/android/play/core/assetpacks/u3;->d(ILjava/lang/String;Ljava/lang/String;I)V

    :try_start_2f4
    iget-object v0, v2, Lcom/google/android/play/core/assetpacks/x0;->l:Ljava/io/InputStream;

    .line 87
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2f9
    .catch Ljava/io/IOException; {:try_start_2f4 .. :try_end_2f9} :catch_2fa

    goto :goto_314

    .line 88
    :catch_2fa
    sget-object v0, Lcom/google/android/play/core/assetpacks/y0;->g:Lv4/a;

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Object;

    iget v3, v2, Lcom/google/android/play/core/assetpacks/x0;->h:I

    .line 89
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v14

    iget-object v3, v2, Lcom/google/android/play/core/assetpacks/x0;->f:Ljava/lang/String;

    aput-object v3, v4, v13

    iget-object v3, v2, Lcom/google/android/play/core/assetpacks/y1;->b:Ljava/lang/String;

    aput-object v3, v4, v12

    const-string v3, "Could not close file for chunk %s of slice %s of pack %s."

    .line 90
    invoke-virtual {v0, v3, v4}, Lv4/a;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 91
    :goto_314
    iget v0, v2, Lcom/google/android/play/core/assetpacks/x0;->k:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_343

    iget-object v0, v1, Lcom/google/android/play/core/assetpacks/y0;->d:Lv4/y;

    .line 92
    invoke-interface {v0}, Lv4/y;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/assetpacks/y;

    iget-object v3, v2, Lcom/google/android/play/core/assetpacks/y1;->b:Ljava/lang/String;

    iget-wide v7, v2, Lcom/google/android/play/core/assetpacks/x0;->j:J

    const/4 v4, 0x3

    const/4 v5, 0x0

    iget-object v6, v1, Lcom/google/android/play/core/assetpacks/y0;->e:Lcom/google/android/play/core/assetpacks/h1;

    .line 93
    invoke-virtual {v6, v3, v2}, Lcom/google/android/play/core/assetpacks/h1;->b(Ljava/lang/String;Lcom/google/android/play/core/assetpacks/y1;)D

    move-result-wide v9

    const/4 v11, 0x1

    iget-object v12, v2, Lcom/google/android/play/core/assetpacks/x0;->e:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/play/core/assetpacks/y0;->f:Lcom/google/android/play/core/assetpacks/p2;

    iget-object v2, v2, Lcom/google/android/play/core/assetpacks/y1;->b:Ljava/lang/String;

    .line 94
    invoke-virtual {v6, v2}, Lcom/google/android/play/core/assetpacks/p2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v2, v3

    move v3, v4

    move v4, v5

    move-wide v5, v7

    .line 95
    invoke-static/range {v2 .. v13}, Lcom/google/android/play/core/assetpacks/AssetPackState;->h(Ljava/lang/String;IIJJDILjava/lang/String;Ljava/lang/String;)Lcom/google/android/play/core/assetpacks/AssetPackState;

    move-result-object v2

    .line 96
    invoke-virtual {v0, v2}, Lcom/google/android/play/core/assetpacks/y;->h(Lcom/google/android/play/core/assetpacks/AssetPackState;)V

    :cond_343
    return-void

    :catchall_344
    move-exception v0

    move-object v10, v9

    .line 97
    :goto_346
    :try_start_346
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_349
    .catchall {:try_start_346 .. :try_end_349} :catchall_349

    :catchall_349
    :try_start_349
    throw v0
    :try_end_34a
    .catch Ljava/io/IOException; {:try_start_349 .. :try_end_34a} :catch_34a

    :catch_34a
    move-exception v0

    .line 98
    sget-object v3, Lcom/google/android/play/core/assetpacks/y0;->g:Lv4/a;

    new-array v4, v13, [Ljava/lang/Object;

    .line 99
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v14

    const-string v5, "IOException during extraction %s."

    invoke-virtual {v3, v5, v4}, Lv4/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v3, Lcom/google/android/play/core/assetpacks/d1;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, v2, Lcom/google/android/play/core/assetpacks/x0;->h:I

    .line 100
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v14

    iget-object v5, v2, Lcom/google/android/play/core/assetpacks/x0;->f:Ljava/lang/String;

    aput-object v5, v4, v13

    iget-object v5, v2, Lcom/google/android/play/core/assetpacks/y1;->b:Ljava/lang/String;

    aput-object v5, v4, v12

    iget v5, v2, Lcom/google/android/play/core/assetpacks/y1;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v4, v6

    const-string v5, "Error extracting chunk %s of slice %s of pack %s of session %s."

    .line 101
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget v2, v2, Lcom/google/android/play/core/assetpacks/y1;->a:I

    invoke-direct {v3, v4, v0, v2}, Lcom/google/android/play/core/assetpacks/d1;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_385

    :goto_384
    throw v3

    :goto_385
    goto :goto_384
.end method
