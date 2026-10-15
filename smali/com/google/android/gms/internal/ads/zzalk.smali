###### Class com.google.android.gms.internal.ads.zzalk (com.google.android.gms.internal.ads.zzalk)
.class public final Lcom/google/android/gms/internal/ads/zzalk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzajy;


# instance fields
.field private final a:Ljava/util/Map;

.field private b:J

.field private final c:Lcom/google/android/gms/internal/ads/zzalj;

.field private final d:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzalj;I)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/util/LinkedHashMap;

    const/16 v0, 0x10

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    invoke-direct {p2, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzalk;->a:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzalk;->b:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalk;->c:Lcom/google/android/gms/internal/ads/zzalj;

    const/high16 p1, 0x500000

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzalk;->d:I

    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .registers 6

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/util/LinkedHashMap;

    const/16 v0, 0x10

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    invoke-direct {p2, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzalk;->a:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzalk;->b:J

    new-instance p2, Lcom/google/android/gms/internal/ads/zzalg;

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzalg;-><init>(Lcom/google/android/gms/internal/ads/zzalk;Ljava/io/File;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzalk;->c:Lcom/google/android/gms/internal/ads/zzalj;

    const/high16 p1, 0x1400000

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzalk;->d:I

    return-void
.end method

.method static a(Ljava/io/InputStream;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzalk;->j(Ljava/io/InputStream;)I

    move-result v0

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzalk;->j(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzalk;->j(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzalk;->j(Ljava/io/InputStream;)I

    move-result p0

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr v0, v1

    or-int/2addr p0, v0

    return p0
.end method

.method static b(Ljava/io/InputStream;)J
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzalk;->j(Ljava/io/InputStream;)I

    move-result v0

    int-to-long v0, v0

    .line 2
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzalk;->j(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    .line 3
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzalk;->j(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    .line 4
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzalk;->j(Ljava/io/InputStream;)I

    move-result v6

    int-to-long v6, v6

    .line 5
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzalk;->j(Ljava/io/InputStream;)I

    move-result v8

    int-to-long v8, v8

    .line 6
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzalk;->j(Ljava/io/InputStream;)I

    move-result v10

    int-to-long v10, v10

    .line 7
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzalk;->j(Ljava/io/InputStream;)I

    move-result v12

    int-to-long v12, v12

    .line 8
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzalk;->j(Ljava/io/InputStream;)I

    move-result v14

    int-to-long v14, v14

    const-wide/16 v16, 0xff

    and-long v2, v2, v16

    and-long v4, v4, v16

    and-long v6, v6, v16

    and-long v8, v8, v16

    and-long v10, v10, v16

    and-long v12, v12, v16

    and-long v14, v14, v16

    and-long v0, v0, v16

    const/16 v16, 0x8

    shl-long v2, v2, v16

    or-long/2addr v0, v2

    const/16 v2, 0x10

    shl-long v2, v4, v2

    or-long/2addr v0, v2

    const/16 v2, 0x18

    shl-long v2, v6, v2

    or-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long v2, v8, v2

    or-long/2addr v0, v2

    const/16 v2, 0x28

    shl-long v2, v10, v2

    or-long/2addr v0, v2

    const/16 v2, 0x30

    shl-long v2, v12, v2

    or-long/2addr v0, v2

    const/16 v2, 0x38

    shl-long v2, v14, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method static d(Lcom/google/android/gms/internal/ads/zzali;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzalk;->b(Ljava/io/InputStream;)J

    move-result-wide v0

    .line 2
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzalk;->i(Lcom/google/android/gms/internal/ads/zzali;J)[B

    move-result-object p0

    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method static f(Ljava/io/OutputStream;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit16 v0, p1, 0xff

    .line 1
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 2
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 3
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    .line 4
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method static g(Ljava/io/OutputStream;J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    long-to-int v0, p1

    int-to-byte v0, v0

    .line 1
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x8

    ushr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 2
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x10

    ushr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 3
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x18

    ushr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 4
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 5
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x28

    ushr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 6
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x30

    ushr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 7
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x38

    ushr-long/2addr p1, v0

    long-to-int p2, p1

    int-to-byte p1, p2

    .line 8
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method static h(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 2
    array-length v0, p1

    int-to-long v1, v0

    invoke-static {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzalk;->g(Ljava/io/OutputStream;J)V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, p1, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method static i(Lcom/google/android/gms/internal/ads/zzali;J)[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzali;->b()J

    move-result-wide v0

    if-ltz v2, :cond_1f

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1f

    long-to-int v2, p1

    int-to-long v3, v2

    cmp-long v5, v3, p1

    if-nez v5, :cond_1f

    new-array p1, v2, [B

    new-instance p2, Ljava/io/DataInputStream;

    .line 2
    invoke-direct {p2, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p2, p1}, Ljava/io/DataInputStream;->readFully([B)V

    return-object p1

    .line 3
    :cond_1f
    new-instance p0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "streamToBytes length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", maxLength="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static j(Ljava/io/InputStream;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_8

    return p0

    .line 2
    :cond_8
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method private final k(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzalh;)V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalk;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzalk;->b:J

    iget-wide v2, p2, Lcom/google/android/gms/internal/ads/zzalh;->a:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzalk;->b:J

    goto :goto_22

    .line 2
    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalk;->a:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzalh;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzalk;->b:J

    iget-wide v3, p2, Lcom/google/android/gms/internal/ads/zzalh;->a:J

    .line 4
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzalh;->a:J

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzalk;->b:J

    .line 5
    :goto_22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalk;->a:Ljava/util/Map;

    .line 6
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final l(Ljava/lang/String;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalk;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzalh;

    if-eqz p1, :cond_11

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzalk;->b:J

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzalh;->a:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzalk;->b:J

    :cond_11
    return-void
.end method

.method private static final m(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final c(Ljava/lang/String;)Ljava/io/File;
    .registers 4

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzalk;->c:Lcom/google/android/gms/internal/ads/zzalj;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzalj;->zza()Ljava/io/File;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzalk;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final declared-synchronized e(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzalk;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzalk;->l(Ljava/lang/String;)V

    if-nez v0, :cond_22

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzalk;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Could not delete cache entry for key=%s, filename=%s"

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzala;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_24

    monitor-exit p0

    return-void

    :cond_22
    monitor-exit p0

    return-void

    :catchall_24
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized o(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzajx;
    .registers 14

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalk;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzalh;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c5

    const/4 v1, 0x0

    if-nez v0, :cond_e

    monitor-exit p0

    return-object v1

    .line 2
    :cond_e
    :try_start_e
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzalk;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_c5

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    :try_start_15
    new-instance v6, Lcom/google/android/gms/internal/ads/zzali;

    new-instance v7, Ljava/io/BufferedInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    .line 3
    invoke-direct {v8, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4
    invoke-direct {v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-direct {v6, v7, v8, v9}, Lcom/google/android/gms/internal/ads/zzali;-><init>(Ljava/io/InputStream;J)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_28} :catch_ac
    .catchall {:try_start_15 .. :try_end_28} :catchall_c5

    .line 5
    :try_start_28
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzalh;->a(Lcom/google/android/gms/internal/ads/zzali;)Lcom/google/android/gms/internal/ads/zzalh;

    move-result-object v7

    iget-object v8, v7, Lcom/google/android/gms/internal/ads/zzalh;->b:Ljava/lang/String;

    .line 6
    invoke-static {p1, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_50

    const-string v0, "%s: key=%s, found=%s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    .line 7
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    aput-object p1, v8, v3

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzalh;->b:Ljava/lang/String;

    aput-object v7, v8, v5

    .line 8
    invoke-static {v0, v8}, Lcom/google/android/gms/internal/ads/zzala;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzalk;->l(Ljava/lang/String;)V
    :try_end_4b
    .catchall {:try_start_28 .. :try_end_4b} :catchall_a7

    .line 10
    :try_start_4b
    invoke-virtual {v6}, Ljava/io/FilterInputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_ac
    .catchall {:try_start_4b .. :try_end_4e} :catchall_c5

    monitor-exit p0

    return-object v1

    :cond_50
    :try_start_50
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzali;->b()J

    move-result-wide v7

    .line 11
    invoke-static {v6, v7, v8}, Lcom/google/android/gms/internal/ads/zzalk;->i(Lcom/google/android/gms/internal/ads/zzali;J)[B

    move-result-object v7

    new-instance v8, Lcom/google/android/gms/internal/ads/zzajx;

    .line 12
    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/zzajx;-><init>()V

    iput-object v7, v8, Lcom/google/android/gms/internal/ads/zzajx;->a:[B

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzalh;->c:Ljava/lang/String;

    iput-object v7, v8, Lcom/google/android/gms/internal/ads/zzajx;->b:Ljava/lang/String;

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzalh;->d:J

    iput-wide v9, v8, Lcom/google/android/gms/internal/ads/zzajx;->c:J

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzalh;->e:J

    iput-wide v9, v8, Lcom/google/android/gms/internal/ads/zzajx;->d:J

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzalh;->f:J

    iput-wide v9, v8, Lcom/google/android/gms/internal/ads/zzajx;->e:J

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzalh;->g:J

    iput-wide v9, v8, Lcom/google/android/gms/internal/ads/zzajx;->f:J

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzalh;->h:Ljava/util/List;

    new-instance v9, Ljava/util/TreeMap;

    sget-object v10, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 13
    invoke-direct {v9, v10}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 14
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_80
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_98

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/ads/zzakg;

    .line 15
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzakg;->a()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzakg;->b()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_80

    :cond_98
    iput-object v9, v8, Lcom/google/android/gms/internal/ads/zzajx;->g:Ljava/util/Map;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzalh;->h:Ljava/util/List;

    .line 16
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v8, Lcom/google/android/gms/internal/ads/zzajx;->h:Ljava/util/List;
    :try_end_a2
    .catchall {:try_start_50 .. :try_end_a2} :catchall_a7

    .line 17
    :try_start_a2
    invoke-virtual {v6}, Ljava/io/FilterInputStream;->close()V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a5} :catch_ac
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_c5

    monitor-exit p0

    return-object v8

    :catchall_a7
    move-exception v0

    :try_start_a8
    invoke-virtual {v6}, Ljava/io/FilterInputStream;->close()V

    .line 18
    throw v0
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ac} :catch_ac
    .catchall {:try_start_a8 .. :try_end_ac} :catchall_c5

    :catch_ac
    move-exception v0

    :try_start_ad
    new-array v5, v5, [Ljava/lang/Object;

    .line 19
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v4

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    const-string v0, "%s: %s"

    invoke-static {v0, v5}, Lcom/google/android/gms/internal/ads/zzala;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzalk;->e(Ljava/lang/String;)V
    :try_end_c3
    .catchall {:try_start_ad .. :try_end_c3} :catchall_c5

    monitor-exit p0

    return-object v1

    :catchall_c5
    move-exception p1

    monitor-exit p0

    goto :goto_c9

    :goto_c8
    throw p1

    :goto_c9
    goto :goto_c8
.end method

.method public final declared-synchronized p(Ljava/lang/String;Z)V
    .registers 5

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzalk;->o(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzajx;

    move-result-object p2

    if-eqz p2, :cond_12

    const-wide/16 v0, 0x0

    iput-wide v0, p2, Lcom/google/android/gms/internal/ads/zzajx;->f:J

    iput-wide v0, p2, Lcom/google/android/gms/internal/ads/zzajx;->e:J

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzalk;->q(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzajx;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_14

    monitor-exit p0

    return-void

    :cond_12
    monitor-exit p0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized q(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzajx;)V
    .registers 18

    move-object v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    monitor-enter p0

    .line 1
    :try_start_6
    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzalk;->b:J

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzajx;->a:[B

    array-length v5, v5

    int-to-long v6, v5

    add-long/2addr v3, v6

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzalk;->d:I
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_1a4

    int-to-long v7, v6

    const v9, 0x3f666666    # 0.9f

    cmp-long v10, v3, v7

    if-lez v10, :cond_22

    int-to-float v3, v5

    int-to-float v4, v6

    mul-float v4, v4, v9

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_20

    goto :goto_22

    .line 2
    :cond_20
    monitor-exit p0

    return-void

    .line 3
    :cond_22
    :goto_22
    :try_start_22
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzalk;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_1a4

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4
    :try_start_28
    new-instance v6, Ljava/io/BufferedOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    .line 5
    invoke-direct {v7, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 6
    invoke-direct {v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v7, Lcom/google/android/gms/internal/ads/zzalh;

    .line 7
    invoke-direct {v7, v0, v2}, Lcom/google/android/gms/internal/ads/zzalh;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzajx;)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_37} :catch_16e
    .catchall {:try_start_28 .. :try_end_37} :catchall_1a4

    const v8, 0x20150306

    .line 8
    :try_start_3a
    invoke-static {v6, v8}, Lcom/google/android/gms/internal/ads/zzalk;->f(Ljava/io/OutputStream;I)V

    iget-object v8, v7, Lcom/google/android/gms/internal/ads/zzalh;->b:Ljava/lang/String;

    .line 9
    invoke-static {v6, v8}, Lcom/google/android/gms/internal/ads/zzalk;->h(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-object v8, v7, Lcom/google/android/gms/internal/ads/zzalh;->c:Ljava/lang/String;

    if-nez v8, :cond_48

    const-string v8, ""

    .line 10
    :cond_48
    invoke-static {v6, v8}, Lcom/google/android/gms/internal/ads/zzalk;->h(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-wide v10, v7, Lcom/google/android/gms/internal/ads/zzalh;->d:J

    .line 11
    invoke-static {v6, v10, v11}, Lcom/google/android/gms/internal/ads/zzalk;->g(Ljava/io/OutputStream;J)V

    iget-wide v10, v7, Lcom/google/android/gms/internal/ads/zzalh;->e:J

    .line 12
    invoke-static {v6, v10, v11}, Lcom/google/android/gms/internal/ads/zzalk;->g(Ljava/io/OutputStream;J)V

    iget-wide v10, v7, Lcom/google/android/gms/internal/ads/zzalh;->f:J

    .line 13
    invoke-static {v6, v10, v11}, Lcom/google/android/gms/internal/ads/zzalk;->g(Ljava/io/OutputStream;J)V

    iget-wide v10, v7, Lcom/google/android/gms/internal/ads/zzalh;->g:J

    .line 14
    invoke-static {v6, v10, v11}, Lcom/google/android/gms/internal/ads/zzalk;->g(Ljava/io/OutputStream;J)V

    iget-object v8, v7, Lcom/google/android/gms/internal/ads/zzalh;->h:Ljava/util/List;

    if-eqz v8, :cond_89

    .line 15
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v6, v10}, Lcom/google/android/gms/internal/ads/zzalk;->f(Ljava/io/OutputStream;I)V

    .line 16
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/ads/zzakg;

    .line 17
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzakg;->a()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Lcom/google/android/gms/internal/ads/zzalk;->h(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzakg;->b()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lcom/google/android/gms/internal/ads/zzalk;->h(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_6e

    .line 19
    :cond_89
    invoke-static {v6, v5}, Lcom/google/android/gms/internal/ads/zzalk;->f(Ljava/io/OutputStream;I)V

    .line 20
    :cond_8c
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_8f} :catch_14a
    .catchall {:try_start_3a .. :try_end_8f} :catchall_1a4

    .line 21
    :try_start_8f
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzajx;->a:[B

    invoke-virtual {v6, v2}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 22
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V

    .line 23
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v10

    iput-wide v10, v7, Lcom/google/android/gms/internal/ads/zzalh;->a:J

    .line 24
    invoke-direct {p0, v0, v7}, Lcom/google/android/gms/internal/ads/zzalk;->k(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzalh;)V

    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/zzalk;->b:J

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzalk;->d:I

    int-to-long v10, v0

    cmp-long v0, v6, v10

    if-gez v0, :cond_ab

    goto/16 :goto_1a2

    .line 25
    :cond_ab
    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzala;->b:Z

    if-eqz v0, :cond_b6

    const-string v0, "Pruning old cache entries."

    new-array v2, v5, [Ljava/lang/Object;

    .line 26
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzala;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b6
    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/zzalk;->b:J

    .line 27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzalk;->a:Ljava/util/Map;

    .line 28
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    .line 29
    :goto_c7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v12, 0x2

    if-eqz v8, :cond_11e

    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 31
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/zzalh;

    .line 32
    iget-object v13, v8, Lcom/google/android/gms/internal/ads/zzalh;->b:Ljava/lang/String;

    invoke-virtual {p0, v13}, Lcom/google/android/gms/internal/ads/zzalk;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    move-result v13

    if-eqz v13, :cond_f0

    iget-wide v13, v1, Lcom/google/android/gms/internal/ads/zzalk;->b:J

    move-wide/from16 p1, v10

    .line 33
    iget-wide v9, v8, Lcom/google/android/gms/internal/ads/zzalh;->a:J

    sub-long/2addr v13, v9

    iput-wide v13, v1, Lcom/google/android/gms/internal/ads/zzalk;->b:J

    goto :goto_103

    :cond_f0
    move-wide/from16 p1, v10

    const-string v9, "Could not delete cache entry for key=%s, filename=%s"

    new-array v10, v12, [Ljava/lang/Object;

    .line 34
    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzalh;->b:Ljava/lang/String;

    aput-object v8, v10, v5

    .line 35
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzalk;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v10, v4

    .line 36
    invoke-static {v9, v10}, Lcom/google/android/gms/internal/ads/zzala;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    :goto_103
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v2, v2, 0x1

    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/zzalk;->b:J

    long-to-float v8, v8

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzalk;->d:I

    int-to-float v9, v9

    const v10, 0x3f666666    # 0.9f

    mul-float v9, v9, v10

    cmpg-float v8, v8, v9

    if-gez v8, :cond_118

    goto :goto_120

    :cond_118
    move-wide/from16 v10, p1

    const v9, 0x3f666666    # 0.9f

    goto :goto_c7

    :cond_11e
    move-wide/from16 p1, v10

    :goto_120
    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzala;->b:Z

    if-eqz v0, :cond_1a2

    const-string v0, "pruned %d files, %d bytes, %d ms"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    .line 38
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v5

    iget-wide v9, v1, Lcom/google/android/gms/internal/ads/zzalk;->b:J

    sub-long/2addr v9, v6

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v8, v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move-wide/from16 v9, p1

    sub-long/2addr v6, v9

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v8, v12

    .line 39
    invoke-static {v0, v8}, Lcom/google/android/gms/internal/ads/zzala;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_148
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_148} :catch_16e
    .catchall {:try_start_8f .. :try_end_148} :catchall_1a4

    monitor-exit p0

    return-void

    :catch_14a
    move-exception v0

    :try_start_14b
    const-string v2, "%s"

    new-array v7, v4, [Ljava/lang/Object;

    .line 40
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v5

    invoke-static {v2, v7}, Lcom/google/android/gms/internal/ads/zzala;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V

    const-string v0, "Failed to write header for %s"

    new-array v2, v4, [Ljava/lang/Object;

    .line 42
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzala;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/io/IOException;

    .line 43
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_16e
    .catch Ljava/io/IOException; {:try_start_14b .. :try_end_16e} :catch_16e
    .catchall {:try_start_14b .. :try_end_16e} :catchall_1a4

    .line 44
    :catch_16e
    :try_start_16e
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_181

    new-array v0, v4, [Ljava/lang/Object;

    .line 45
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    const-string v2, "Could not clean up file %s"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzala;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_181
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzalk;->c:Lcom/google/android/gms/internal/ads/zzalj;

    .line 46
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzalj;->zza()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1a2

    const-string v0, "Re-initializing cache after external clearing."

    new-array v2, v5, [Ljava/lang/Object;

    .line 47
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzala;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzalk;->a:Ljava/util/Map;

    .line 48
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/zzalk;->b:J

    .line 49
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzalk;->zzb()V
    :try_end_1a0
    .catchall {:try_start_16e .. :try_end_1a0} :catchall_1a4

    monitor-exit p0

    return-void

    .line 50
    :cond_1a2
    :goto_1a2
    monitor-exit p0

    return-void

    :catchall_1a4
    move-exception v0

    monitor-exit p0

    goto :goto_1a8

    :goto_1a7
    throw v0

    :goto_1a8
    goto :goto_1a7
.end method

.method public final declared-synchronized zzb()V
    .registers 9

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalk;->c:Lcom/google/android/gms/internal/ads/zzalj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzalj;->zza()Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_26

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_24

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "Unable to create cache dir %s"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzala;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_62

    monitor-exit p0

    return-void

    :cond_24
    monitor-exit p0

    return-void

    .line 5
    :cond_26
    :try_start_26
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_60

    :goto_2c
    array-length v1, v0

    if-ge v2, v1, :cond_5e

    .line 6
    aget-object v1, v0, v2
    :try_end_31
    .catchall {:try_start_26 .. :try_end_31} :catchall_62

    .line 7
    :try_start_31
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    new-instance v5, Lcom/google/android/gms/internal/ads/zzali;

    new-instance v6, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    .line 8
    invoke-direct {v7, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 9
    invoke-direct {v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6, v3, v4}, Lcom/google/android/gms/internal/ads/zzali;-><init>(Ljava/io/InputStream;J)V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_44} :catch_58
    .catchall {:try_start_31 .. :try_end_44} :catchall_62

    .line 10
    :try_start_44
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzalh;->a(Lcom/google/android/gms/internal/ads/zzali;)Lcom/google/android/gms/internal/ads/zzalh;

    move-result-object v6

    iput-wide v3, v6, Lcom/google/android/gms/internal/ads/zzalh;->a:J

    iget-object v3, v6, Lcom/google/android/gms/internal/ads/zzalh;->b:Ljava/lang/String;

    .line 11
    invoke-direct {p0, v3, v6}, Lcom/google/android/gms/internal/ads/zzalk;->k(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzalh;)V
    :try_end_4f
    .catchall {:try_start_44 .. :try_end_4f} :catchall_53

    .line 12
    :try_start_4f
    invoke-virtual {v5}, Ljava/io/FilterInputStream;->close()V

    goto :goto_5b

    :catchall_53
    move-exception v3

    invoke-virtual {v5}, Ljava/io/FilterInputStream;->close()V

    .line 13
    throw v3
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_58} :catch_58
    .catchall {:try_start_4f .. :try_end_58} :catchall_62

    .line 14
    :catch_58
    :try_start_58
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_62

    :goto_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 15
    :cond_5e
    monitor-exit p0

    return-void

    :cond_60
    monitor-exit p0

    return-void

    :catchall_62
    move-exception v0

    monitor-exit p0

    goto :goto_66

    :goto_65
    throw v0

    :goto_66
    goto :goto_65
.end method
