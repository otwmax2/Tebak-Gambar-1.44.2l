###### Class com.google.android.gms.internal.ads.zzccx (com.google.android.gms.internal.ads.zzccx)
.class public final Lcom/google/android/gms/internal/ads/zzccx;
.super Lcom/google/android/gms/internal/ads/zzccu;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static final t:Ljava/util/Set;

.field private static final u:Ljava/text/DecimalFormat;

.field public static final synthetic v:I


# instance fields
.field private r:Ljava/io/File;

.field private s:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzccx;->t:Ljava/util/Set;

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#,###"

    .line 2
    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzccx;->u:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcbj;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzccu;-><init>(Lcom/google/android/gms/internal/ads/zzcbj;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzccu;->o:Landroid/content/Context;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_11

    const-string p1, "Context.getCacheDir() returned null"

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    return-void

    :cond_11
    new-instance v0, Ljava/io/File;

    const-string v1, "admobVideoStreams"

    .line 4
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzccx;->r:Ljava/io/File;

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_40

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzccx;->r:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-eqz p1, :cond_2a

    goto :goto_40

    .line 6
    :cond_2a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzccx;->r:Ljava/io/File;

    .line 7
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Could not create preload cache directory at "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzccx;->r:Ljava/io/File;

    return-void

    .line 9
    :cond_40
    :goto_40
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzccx;->r:Ljava/io/File;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 10
    invoke-virtual {p1, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    move-result p1

    if-eqz p1, :cond_54

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzccx;->r:Ljava/io/File;

    .line 11
    invoke-virtual {p1, v1, v2}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result p1

    if-nez p1, :cond_53

    goto :goto_54

    :cond_53
    return-void

    :cond_54
    :goto_54
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzccx;->r:Ljava/io/File;

    .line 12
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Could not set cache file permissions at "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzccx;->r:Ljava/io/File;

    return-void
.end method

.method private final y(Ljava/io/File;)Ljava/io/File;
    .registers 5

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzccx;->r:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, ".done"

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final g()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzccx;->s:Z

    return-void
.end method

.method public final v(Ljava/lang/String;)Z
    .registers 31

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    .line 1
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzccx;->r:Ljava/io/File;

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz v0, :cond_435

    :cond_a
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzccx;->r:Ljava/io/File;

    if-nez v0, :cond_10

    const/4 v3, 0x0

    goto :goto_2c

    .line 2
    :cond_10
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_17
    if-ge v2, v1, :cond_2c

    aget-object v4, v0, v2

    .line 3
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".done"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_29

    add-int/lit8 v3, v3, 0x1

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 4
    :cond_2c
    :goto_2c
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->s:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v3, v0, :cond_90

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzccx;->r:Ljava/io/File;

    if-nez v0, :cond_43

    goto :goto_85

    .line 7
    :cond_43
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const-wide v2, 0x7fffffffffffffffL

    move-object v5, v11

    const/4 v4, 0x0

    :goto_4f
    if-ge v4, v1, :cond_6c

    aget-object v6, v0, v4

    .line 8
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v12, ".done"

    invoke-virtual {v7, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_69

    .line 9
    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    cmp-long v7, v12, v2

    if-gez v7, :cond_69

    move-object v5, v6

    move-wide v2, v12

    :cond_69
    add-int/lit8 v4, v4, 0x1

    goto :goto_4f

    :cond_6c
    if-eqz v5, :cond_82

    .line 10
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v0

    .line 11
    invoke-direct {v8, v5}, Lcom/google/android/gms/internal/ads/zzccx;->y(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_83

    .line 13
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    and-int/2addr v0, v1

    goto :goto_83

    :cond_82
    const/4 v0, 0x0

    :cond_83
    :goto_83
    if-nez v0, :cond_a

    :goto_85
    const-string v0, "Unable to expire stream cache"

    .line 14
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    const-string v0, "expireFailed"

    .line 15
    invoke-virtual {v8, v9, v11, v0, v11}, Lcom/google/android/gms/internal/ads/zzccu;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v10

    .line 16
    :cond_90
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzbyt;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v12, Ljava/io/File;

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzccx;->r:Ljava/io/File;

    .line 17
    invoke-direct {v12, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18
    invoke-direct {v8, v12}, Lcom/google/android/gms/internal/ads/zzccx;->y(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 19
    invoke-virtual {v12}, Ljava/io/File;->isFile()Z

    move-result v1

    const/4 v13, 0x1

    if-eqz v1, :cond_c7

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_ad

    goto :goto_c7

    .line 20
    :cond_ad
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Stream cache hit at "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v9, v0, v1}, Lcom/google/android/gms/internal/ads/zzccu;->j(Ljava/lang/String;Ljava/lang/String;I)V

    return v13

    .line 23
    :cond_c7
    :goto_c7
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzccx;->r:Ljava/io/File;

    .line 24
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/zzccx;->t:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 25
    monitor-enter v3

    .line 26
    :try_start_dc
    invoke-interface {v3, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_101

    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stream cache already in progress at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "inProgress"

    invoke-virtual {v8, v9, v0, v1, v11}, Lcom/google/android/gms/internal/ads/zzccu;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    monitor-exit v3

    return v10

    .line 31
    :cond_101
    invoke-interface {v3, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    monitor-exit v3
    :try_end_105
    .catchall {:try_start_dc .. :try_end_105} :catchall_432

    const-string v15, "error"

    :try_start_107
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfka;->b()Lcom/google/android/gms/internal/ads/zzfkm;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzccw;

    invoke-direct {v2, v9}, Lcom/google/android/gms/internal/ads/zzccw;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x109

    const/4 v5, -0x1

    .line 33
    invoke-virtual {v1, v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzfkm;->m(Lcom/google/android/gms/internal/ads/zzfkl;II)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 34
    instance-of v2, v1, Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_166

    .line 35
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v4, 0x190

    if-ge v2, v4, :cond_124

    goto :goto_166

    :cond_124
    const-string v15, "badUrl"
    :try_end_126
    .catch Ljava/io/IOException; {:try_start_107 .. :try_end_126} :catch_3b6
    .catch Ljava/lang/RuntimeException; {:try_start_107 .. :try_end_126} :catch_3b4

    .line 36
    :try_start_126
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP request failed. Code: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_13b
    .catch Ljava/io/IOException; {:try_start_126 .. :try_end_13b} :catch_161
    .catch Ljava/lang/RuntimeException; {:try_start_126 .. :try_end_13b} :catch_15f

    :try_start_13b
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    .line 37
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTP status code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_15a
    .catch Ljava/io/IOException; {:try_start_13b .. :try_end_15a} :catch_15c
    .catch Ljava/lang/RuntimeException; {:try_start_13b .. :try_end_15a} :catch_15a

    :catch_15a
    move-exception v0

    goto :goto_15d

    :catch_15c
    move-exception v0

    :goto_15d
    move-object v2, v1

    goto :goto_163

    :catch_15f
    move-exception v0

    goto :goto_162

    :catch_161
    move-exception v0

    :goto_162
    move-object v2, v11

    :goto_163
    move-object v1, v14

    goto/16 :goto_3be

    .line 38
    :cond_166
    :goto_166
    :try_start_166
    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentLength()I

    move-result v7

    if-gez v7, :cond_18d

    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stream cache aborted, missing content-length header at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "contentLengthMissing"

    invoke-virtual {v8, v9, v0, v1, v11}, Lcom/google/android/gms/internal/ads/zzccu;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-interface {v3, v14}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return v10

    :cond_18d
    sget-object v2, Lcom/google/android/gms/internal/ads/zzccx;->u:Ljava/text/DecimalFormat;

    int-to-long v4, v7

    .line 43
    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbar;->t:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 44
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v4

    .line 45
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v7, v6, :cond_1e0

    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Content length "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " exceeds limit at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File too big for full file cache. Size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sizeExceeded"

    invoke-virtual {v8, v9, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzccu;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-interface {v3, v14}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return v10

    :cond_1e0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 51
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caching "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " bytes from "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 52
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 54
    invoke-static {v1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v5

    new-instance v4, Ljava/io/FileOutputStream;

    .line 55
    invoke-direct {v4, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_209
    .catch Ljava/io/IOException; {:try_start_166 .. :try_end_209} :catch_3b6
    .catch Ljava/lang/RuntimeException; {:try_start_166 .. :try_end_209} :catch_3b4

    .line 56
    :try_start_209
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    const/high16 v1, 0x100000

    .line 57
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 58
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object v16

    .line 59
    invoke-interface/range {v16 .. v16}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v17

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbar;->w:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 60
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v11

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v1

    .line 61
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    new-instance v1, Lcom/google/android/gms/ads/internal/util/zzbz;

    invoke-direct {v1, v10, v11}, Lcom/google/android/gms/ads/internal/util/zzbz;-><init>(J)V

    sget-object v10, Lcom/google/android/gms/internal/ads/zzbar;->v:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 62
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v10

    .line 63
    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 v13, 0x0

    .line 64
    :goto_241
    invoke-interface {v5, v2}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v19
    :try_end_245
    .catch Ljava/io/IOException; {:try_start_209 .. :try_end_245} :catch_3a8
    .catch Ljava/lang/RuntimeException; {:try_start_209 .. :try_end_245} :catch_3a6

    if-ltz v19, :cond_343

    add-int v13, v13, v19

    if-gt v13, v6, :cond_30d

    .line 65
    :try_start_24b
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 66
    :cond_24e
    invoke-virtual {v3, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v19

    if-gtz v19, :cond_24e

    .line 67
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 68
    invoke-interface/range {v16 .. v16}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v19

    sub-long v19, v19, v17

    const-wide/16 v21, 0x3e8

    mul-long v21, v21, v10

    cmp-long v23, v19, v21

    if-gtz v23, :cond_2d9

    move-object/from16 v19, v2

    .line 69
    iget-boolean v2, v8, Lcom/google/android/gms/internal/ads/zzccx;->s:Z

    if-nez v2, :cond_2c9

    .line 70
    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/util/zzbz;->b()Z

    move-result v2

    if-eqz v2, :cond_2a5

    .line 71
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbyt;->b:Landroid/os/Handler;
    :try_end_277
    .catch Ljava/io/IOException; {:try_start_24b .. :try_end_277} :catch_305
    .catch Ljava/lang/RuntimeException; {:try_start_24b .. :try_end_277} :catch_303

    move-object/from16 v21, v15

    :try_start_279
    new-instance v15, Lcom/google/android/gms/internal/ads/zzcco;
    :try_end_27b
    .catch Ljava/io/IOException; {:try_start_279 .. :try_end_27b} :catch_2a0
    .catch Ljava/lang/RuntimeException; {:try_start_279 .. :try_end_27b} :catch_29e

    const/16 v22, 0x0

    move-object/from16 v23, v1

    move-object v1, v15

    move-object/from16 v24, v14

    move-object v14, v2

    move-object/from16 v2, p0

    move-object/from16 v25, v3

    move-object/from16 v3, p1

    move-object/from16 v26, v4

    move-object/from16 v4, v20

    move-object/from16 v20, v5

    move v5, v13

    move/from16 v27, v6

    move v6, v7

    move/from16 v28, v7

    move/from16 v7, v22

    :try_start_297
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzcco;-><init>(Lcom/google/android/gms/internal/ads/zzccu;Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 72
    invoke-virtual {v14, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2b5

    :catch_29e
    move-exception v0

    goto :goto_2a1

    :catch_2a0
    move-exception v0

    :goto_2a1
    move-object/from16 v26, v4

    goto/16 :goto_30a

    :cond_2a5
    move-object/from16 v23, v1

    move-object/from16 v25, v3

    move-object/from16 v26, v4

    move-object/from16 v20, v5

    move/from16 v27, v6

    move/from16 v28, v7

    move-object/from16 v24, v14

    move-object/from16 v21, v15

    :goto_2b5
    move-object/from16 v2, v19

    move-object/from16 v5, v20

    move-object/from16 v15, v21

    move-object/from16 v1, v23

    move-object/from16 v14, v24

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    move/from16 v6, v27

    move/from16 v7, v28

    goto/16 :goto_241

    :cond_2c9
    move-object/from16 v26, v4

    move-object/from16 v24, v14

    move-object/from16 v21, v15

    const-string v15, "externalAbort"
    :try_end_2d1
    .catch Ljava/io/IOException; {:try_start_297 .. :try_end_2d1} :catch_3a2
    .catch Ljava/lang/RuntimeException; {:try_start_297 .. :try_end_2d1} :catch_3a0

    .line 73
    :try_start_2d1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "abort requested"

    .line 74
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2d9
    .catch Ljava/io/IOException; {:try_start_2d1 .. :try_end_2d9} :catch_33e
    .catch Ljava/lang/RuntimeException; {:try_start_2d1 .. :try_end_2d9} :catch_33c

    :cond_2d9
    move-object/from16 v26, v4

    move-object/from16 v24, v14

    move-object/from16 v21, v15

    :try_start_2df
    const-string v15, "downloadTimeout"
    :try_end_2e1
    .catch Ljava/io/IOException; {:try_start_2df .. :try_end_2e1} :catch_3a2
    .catch Ljava/lang/RuntimeException; {:try_start_2df .. :try_end_2e1} :catch_3a0

    .line 75
    :try_start_2e1
    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timeout exceeded. Limit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " sec"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11
    :try_end_2fb
    .catch Ljava/io/IOException; {:try_start_2e1 .. :try_end_2fb} :catch_33e
    .catch Ljava/lang/RuntimeException; {:try_start_2e1 .. :try_end_2fb} :catch_33c

    :try_start_2fb
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream cache time limit exceeded"

    .line 76
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_303
    .catch Ljava/io/IOException; {:try_start_2fb .. :try_end_303} :catch_334
    .catch Ljava/lang/RuntimeException; {:try_start_2fb .. :try_end_303} :catch_332

    :catch_303
    move-exception v0

    goto :goto_306

    :catch_305
    move-exception v0

    :goto_306
    move-object/from16 v26, v4

    move-object/from16 v21, v15

    :goto_30a
    move-object v1, v14

    goto/16 :goto_3ae

    :cond_30d
    move-object/from16 v26, v4

    move-object/from16 v24, v14

    move-object/from16 v21, v15

    :try_start_313
    const-string v15, "sizeExceeded"
    :try_end_315
    .catch Ljava/io/IOException; {:try_start_313 .. :try_end_315} :catch_3a2
    .catch Ljava/lang/RuntimeException; {:try_start_313 .. :try_end_315} :catch_3a0

    .line 77
    :try_start_315
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File too big for full file cache. Size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11
    :try_end_32a
    .catch Ljava/io/IOException; {:try_start_315 .. :try_end_32a} :catch_33e
    .catch Ljava/lang/RuntimeException; {:try_start_315 .. :try_end_32a} :catch_33c

    :try_start_32a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream cache file size limit exceeded"

    .line 78
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_332
    .catch Ljava/io/IOException; {:try_start_32a .. :try_end_332} :catch_334
    .catch Ljava/lang/RuntimeException; {:try_start_32a .. :try_end_332} :catch_332

    :catch_332
    move-exception v0

    goto :goto_335

    :catch_334
    move-exception v0

    :goto_335
    move-object v2, v11

    move-object/from16 v1, v24

    move-object/from16 v11, v26

    goto/16 :goto_3be

    :catch_33c
    move-exception v0

    goto :goto_33f

    :catch_33e
    move-exception v0

    :goto_33f
    move-object/from16 v1, v24

    goto/16 :goto_3b0

    :cond_343
    move-object/from16 v26, v4

    move-object/from16 v24, v14

    move-object/from16 v21, v15

    .line 79
    :try_start_349
    invoke-virtual/range {v26 .. v26}, Ljava/io/FileOutputStream;->close()V

    const/4 v1, 0x3

    .line 80
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbza;->j(I)Z

    move-result v1

    if-eqz v1, :cond_376

    sget-object v1, Lcom/google/android/gms/internal/ads/zzccx;->u:Ljava/text/DecimalFormat;

    int-to-long v2, v13

    .line 81
    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    .line 82
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Preloaded "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " bytes from "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    :cond_376
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 84
    invoke-virtual {v12, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 85
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_389

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z
    :try_end_388
    .catch Ljava/io/IOException; {:try_start_349 .. :try_end_388} :catch_3a2
    .catch Ljava/lang/RuntimeException; {:try_start_349 .. :try_end_388} :catch_3a0

    goto :goto_38c

    .line 87
    :cond_389
    :try_start_389
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_38c
    .catch Ljava/io/IOException; {:try_start_389 .. :try_end_38c} :catch_38c
    .catch Ljava/lang/RuntimeException; {:try_start_389 .. :try_end_38c} :catch_3a0

    .line 88
    :catch_38c
    :goto_38c
    :try_start_38c
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v9, v0, v13}, Lcom/google/android/gms/internal/ads/zzccu;->j(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzccx;->t:Ljava/util/Set;
    :try_end_395
    .catch Ljava/io/IOException; {:try_start_38c .. :try_end_395} :catch_3a2
    .catch Ljava/lang/RuntimeException; {:try_start_38c .. :try_end_395} :catch_3a0

    move-object/from16 v1, v24

    .line 89
    :try_start_397
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_39a
    .catch Ljava/io/IOException; {:try_start_397 .. :try_end_39a} :catch_39e
    .catch Ljava/lang/RuntimeException; {:try_start_397 .. :try_end_39a} :catch_39c

    const/4 v0, 0x1

    return v0

    :catch_39c
    move-exception v0

    goto :goto_3ae

    :catch_39e
    move-exception v0

    goto :goto_3ae

    :catch_3a0
    move-exception v0

    goto :goto_3a3

    :catch_3a2
    move-exception v0

    :goto_3a3
    move-object/from16 v1, v24

    goto :goto_3ae

    :catch_3a6
    move-exception v0

    goto :goto_3a9

    :catch_3a8
    move-exception v0

    :goto_3a9
    move-object/from16 v26, v4

    move-object v1, v14

    move-object/from16 v21, v15

    :goto_3ae
    move-object/from16 v15, v21

    :goto_3b0
    move-object/from16 v11, v26

    const/4 v2, 0x0

    goto :goto_3be

    :catch_3b4
    move-exception v0

    goto :goto_3b7

    :catch_3b6
    move-exception v0

    :goto_3b7
    move-object v1, v14

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    const/4 v2, 0x0

    const/4 v11, 0x0

    .line 90
    :goto_3be
    instance-of v3, v0, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_3cb

    const-string v3, "VideoStreamFullFileCache.preload"

    .line 91
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Lcom/google/android/gms/internal/ads/zzbyj;->u(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 92
    :cond_3cb
    :try_start_3cb
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_3ce
    .catch Ljava/io/IOException; {:try_start_3cb .. :try_end_3ce} :catch_3cf
    .catch Ljava/lang/NullPointerException; {:try_start_3cb .. :try_end_3ce} :catch_3cf

    goto :goto_3d0

    :catch_3cf
    nop

    :goto_3d0
    iget-boolean v3, v8, Lcom/google/android/gms/internal/ads/zzccx;->s:Z

    if-eqz v3, :cond_3ee

    new-instance v0, Ljava/lang/StringBuilder;

    .line 93
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Preload aborted for URL \""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->f(Ljava/lang/String;)V

    goto :goto_407

    .line 95
    :cond_3ee
    new-instance v3, Ljava/lang/StringBuilder;

    .line 96
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Preload failed for URL \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 97
    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/zzbza;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    :goto_407
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_424

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_424

    .line 99
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Could not delete partial cache file at "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    .line 101
    :cond_424
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v9, v0, v15, v2}, Lcom/google/android/gms/internal/ads/zzccu;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzccx;->t:Ljava/util/Set;

    .line 102
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_430
    const/4 v1, 0x0

    return v1

    :catchall_432
    move-exception v0

    .line 103
    :try_start_433
    monitor-exit v3
    :try_end_434
    .catchall {:try_start_433 .. :try_end_434} :catchall_432

    throw v0

    :cond_435
    const-string v0, "noCacheDir"

    const/4 v1, 0x0

    .line 104
    invoke-virtual {v8, v9, v1, v0, v1}, Lcom/google/android/gms/internal/ads/zzccu;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_430
.end method

###### Class com.google.android.gms.internal.ads.zzccw (com.google.android.gms.internal.ads.zzccw)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzccw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfkl;


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccw;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/net/URLConnection;
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccw;->a:Ljava/lang/String;

    sget v1, Lcom/google/android/gms/internal/ads/zzccx;->v:I

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->y()Lcom/google/android/gms/internal/ads/zzbzt;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbar;->x:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_1e
    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x14

    if-gt v3, v4, :cond_a3

    .line 5
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    .line 6
    invoke-virtual {v4, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 7
    invoke-virtual {v4, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 8
    instance-of v5, v4, Ljava/net/HttpURLConnection;

    if-eqz v5, :cond_9b

    .line 9
    check-cast v4, Ljava/net/HttpURLConnection;

    .line 10
    new-instance v5, Lcom/google/android/gms/internal/ads/zzbyz;

    const/4 v6, 0x0

    .line 11
    invoke-direct {v5, v6}, Lcom/google/android/gms/internal/ads/zzbyz;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v5, v4, v6}, Lcom/google/android/gms/internal/ads/zzbyz;->c(Ljava/net/HttpURLConnection;[B)V

    .line 13
    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 14
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 15
    invoke-virtual {v5, v4, v6}, Lcom/google/android/gms/internal/ads/zzbyz;->e(Ljava/net/HttpURLConnection;I)V

    div-int/lit8 v6, v6, 0x64

    const/4 v5, 0x3

    if-ne v6, v5, :cond_9a

    const-string v5, "Location"

    .line 16
    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_92

    .line 17
    new-instance v6, Ljava/net/URL;

    .line 18
    invoke-direct {v6, v2, v5}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8a

    const-string v7, "http"

    .line 20
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7c

    const-string v7, "https"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_70

    goto :goto_7c

    :cond_70
    const-string v0, "Unsupported scheme: "

    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/IOException;

    .line 22
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7c
    :goto_7c
    const-string v2, "Redirecting to "

    .line 23
    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v2, v6

    goto :goto_1e

    .line 26
    :cond_8a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Protocol is null"

    .line 27
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_92
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Missing Location header in redirect"

    .line 29
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9a
    return-object v4

    .line 30
    :cond_9b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid protocol."

    .line 31
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_a3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Too many redirects (20)"

    .line 33
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_ac

    :goto_ab
    throw v0

    :goto_ac
    goto :goto_ab
.end method
