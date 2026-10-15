###### Class com.android.volley.toolbox.DiskBasedCache (com.android.volley.toolbox.DiskBasedCache)
.class public Lcom/android/volley/toolbox/DiskBasedCache;
.super Ljava/lang/Object;
.source "DiskBasedCache.java"

# interfaces
.implements Lcom/android/volley/Cache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;,
        Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;,
        Lcom/android/volley/toolbox/DiskBasedCache$FileSupplier;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;",
            ">;"
        }
    .end annotation
.end field

.field private b:J

.field private final c:Lcom/android/volley/toolbox/DiskBasedCache$FileSupplier;

.field private final d:I


# direct methods
.method private h(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private i()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->c:Lcom/android/volley/toolbox/DiskBasedCache$FileSupplier;

    invoke-interface {v0}, Lcom/android/volley/toolbox/DiskBasedCache$FileSupplier;->get()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Re-initializing cache after external clearing."

    .line 2
    invoke-static {v1, v0}, Lcom/android/volley/VolleyLog;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->b:J

    .line 5
    invoke-virtual {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->b()V

    :cond_20
    return-void
.end method

.method private j()V
    .registers 15

    .line 1
    iget-wide v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->b:J

    iget v2, p0, Lcom/android/volley/toolbox/DiskBasedCache;->d:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_a

    return-void

    .line 2
    :cond_a
    sget-boolean v0, Lcom/android/volley/VolleyLog;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "Pruning old cache entries."

    .line 3
    invoke-static {v2, v0}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :cond_16
    iget-wide v2, p0, Lcom/android/volley/toolbox/DiskBasedCache;->b:J

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 6
    iget-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v6, 0x0

    .line 7
    :cond_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v7, :cond_74

    .line 8
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 9
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    .line 10
    iget-object v10, v7, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->b:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/android/volley/toolbox/DiskBasedCache;->g(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v10

    if-eqz v10, :cond_4f

    .line 11
    iget-wide v10, p0, Lcom/android/volley/toolbox/DiskBasedCache;->b:J

    iget-wide v12, v7, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->a:J

    sub-long/2addr v10, v12

    iput-wide v10, p0, Lcom/android/volley/toolbox/DiskBasedCache;->b:J

    goto :goto_60

    :cond_4f
    new-array v10, v8, [Ljava/lang/Object;

    .line 12
    iget-object v7, v7, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->b:Ljava/lang/String;

    aput-object v7, v10, v1

    .line 13
    invoke-direct {p0, v7}, Lcom/android/volley/toolbox/DiskBasedCache;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v10, v9

    const-string v7, "Could not delete cache entry for key=%s, filename=%s"

    .line 14
    invoke-static {v7, v10}, Lcom/android/volley/VolleyLog;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    :goto_60
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v6, v6, 0x1

    .line 16
    iget-wide v10, p0, Lcom/android/volley/toolbox/DiskBasedCache;->b:J

    long-to-float v7, v10

    iget v10, p0, Lcom/android/volley/toolbox/DiskBasedCache;->d:I

    int-to-float v10, v10

    const v11, 0x3f666666    # 0.9f

    mul-float v10, v10, v11

    cmpg-float v7, v7, v10

    if-gez v7, :cond_27

    .line 17
    :cond_74
    sget-boolean v0, Lcom/android/volley/VolleyLog;->b:Z

    if-eqz v0, :cond_9a

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 18
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v1

    iget-wide v6, p0, Lcom/android/volley/toolbox/DiskBasedCache;->b:J

    sub-long/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v8

    const-string v1, "pruned %d files, %d bytes, %d ms"

    .line 19
    invoke-static {v1, v0}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9a
    return-void
.end method

.method private k(Ljava/lang/String;Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;)V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 2
    iget-wide v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->b:J

    iget-wide v2, p2, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->a:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->b:J

    goto :goto_22

    .line 3
    :cond_10
    iget-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    .line 4
    iget-wide v1, p0, Lcom/android/volley/toolbox/DiskBasedCache;->b:J

    iget-wide v3, p2, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->a:J

    iget-wide v5, v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->a:J

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/volley/toolbox/DiskBasedCache;->b:J

    .line 5
    :goto_22
    iget-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static l(Ljava/io/InputStream;)I
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

.method static m(Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/volley/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->n(Ljava/io/InputStream;)I

    move-result v0

    if-ltz v0, :cond_31

    if-nez v0, :cond_d

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_12

    :cond_d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_12
    const/4 v2, 0x0

    :goto_13
    if-ge v2, v0, :cond_30

    .line 3
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->p(Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->p(Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 5
    new-instance v5, Lcom/android/volley/Header;

    invoke-direct {v5, v3, v4}, Lcom/android/volley/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_30
    return-object v1

    .line 6
    :cond_31
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readHeaderList size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_49

    :goto_48
    throw p0

    :goto_49
    goto :goto_48
.end method

.method static n(Ljava/io/InputStream;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->l(Ljava/io/InputStream;)I

    move-result v0

    shl-int/lit8 v0, v0, 0x0

    or-int/lit8 v0, v0, 0x0

    .line 2
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->l(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 3
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->l(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 4
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->l(Ljava/io/InputStream;)I

    move-result p0

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method static o(Ljava/io/InputStream;)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->l(Ljava/io/InputStream;)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/4 v4, 0x0

    shl-long/2addr v0, v4

    const-wide/16 v4, 0x0

    or-long/2addr v0, v4

    .line 2
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->l(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 3
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->l(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 4
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->l(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 5
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->l(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 6
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->l(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 7
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->l(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 8
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->l(Ljava/io/InputStream;)I

    move-result p0

    int-to-long v4, p0

    and-long/2addr v2, v4

    const/16 p0, 0x38

    shl-long/2addr v2, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method static p(Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->o(Ljava/io/InputStream;)J

    move-result-wide v0

    .line 2
    invoke-static {p0, v0, v1}, Lcom/android/volley/toolbox/DiskBasedCache;->s(Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;J)[B

    move-result-object p0

    .line 3
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method private r(Ljava/lang/String;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    if-eqz p1, :cond_11

    .line 2
    iget-wide v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->b:J

    iget-wide v2, p1, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->a:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->b:J

    :cond_11
    return-void
.end method

.method static s(Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;J)[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-ltz v4, :cond_1f

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1f

    long-to-int v2, p1

    int-to-long v3, v2

    cmp-long v5, v3, p1

    if-nez v5, :cond_1f

    .line 2
    new-array p1, v2, [B

    .line 3
    new-instance p2, Ljava/io/DataInputStream;

    invoke-direct {p2, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p2, p1}, Ljava/io/DataInputStream;->readFully([B)V

    return-object p1

    .line 4
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

.method static t(Ljava/util/List;Ljava/io/OutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/volley/Header;",
            ">;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_28

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/volley/toolbox/DiskBasedCache;->u(Ljava/io/OutputStream;I)V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/Header;

    .line 3
    invoke-virtual {v0}, Lcom/android/volley/Header;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/volley/toolbox/DiskBasedCache;->w(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Lcom/android/volley/Header;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/volley/toolbox/DiskBasedCache;->w(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_d

    :cond_28
    const/4 p0, 0x0

    .line 5
    invoke-static {p1, p0}, Lcom/android/volley/toolbox/DiskBasedCache;->u(Ljava/io/OutputStream;I)V

    :cond_2c
    return-void
.end method

.method static u(Ljava/io/OutputStream;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shr-int/lit8 v0, p1, 0x0

    and-int/lit16 v0, v0, 0xff

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

.method static v(Ljava/io/OutputStream;J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    ushr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

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

.method static w(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 4
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

    int-to-long v0, v0

    invoke-static {p0, v0, v1}, Lcom/android/volley/toolbox/DiskBasedCache;->v(Ljava/io/OutputStream;J)V

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Lcom/android/volley/Cache$Entry;
    .registers 12

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7e

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 2
    monitor-exit p0

    return-object v1

    .line 3
    :cond_e
    :try_start_e
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->g(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_7e

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    .line 4
    :try_start_15
    new-instance v6, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;

    new-instance v7, Ljava/io/BufferedInputStream;

    .line 5
    invoke-virtual {p0, v2}, Lcom/android/volley/toolbox/DiskBasedCache;->e(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-direct {v6, v7, v8, v9}, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;-><init>(Ljava/io/InputStream;J)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_27} :catch_65
    .catchall {:try_start_15 .. :try_end_27} :catchall_7e

    .line 6
    :try_start_27
    invoke-static {v6}, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->b(Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;)Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    move-result-object v7

    .line 7
    iget-object v8, v7, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->b:Ljava/lang/String;

    invoke-static {p1, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4f

    const-string v0, "%s: key=%s, found=%s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    .line 8
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    aput-object p1, v8, v3

    iget-object v7, v7, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->b:Ljava/lang/String;

    aput-object v7, v8, v5

    .line 9
    invoke-static {v0, v8}, Lcom/android/volley/VolleyLog;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->r(Ljava/lang/String;)V
    :try_end_4a
    .catchall {:try_start_27 .. :try_end_4a} :catchall_60

    .line 11
    :try_start_4a
    invoke-virtual {v6}, Ljava/io/FilterInputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_65
    .catchall {:try_start_4a .. :try_end_4d} :catchall_7e

    .line 12
    monitor-exit p0

    return-object v1

    .line 13
    :cond_4f
    :try_start_4f
    invoke-virtual {v6}, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->b()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Lcom/android/volley/toolbox/DiskBasedCache;->s(Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;J)[B

    move-result-object v7

    .line 14
    invoke-virtual {v0, v7}, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->c([B)Lcom/android/volley/Cache$Entry;

    move-result-object v0
    :try_end_5b
    .catchall {:try_start_4f .. :try_end_5b} :catchall_60

    .line 15
    :try_start_5b
    invoke-virtual {v6}, Ljava/io/FilterInputStream;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_65
    .catchall {:try_start_5b .. :try_end_5e} :catchall_7e

    .line 16
    monitor-exit p0

    return-object v0

    :catchall_60
    move-exception v0

    .line 17
    :try_start_61
    invoke-virtual {v6}, Ljava/io/FilterInputStream;->close()V

    throw v0
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_65} :catch_65
    .catchall {:try_start_61 .. :try_end_65} :catchall_7e

    :catch_65
    move-exception v0

    :try_start_66
    const-string v6, "%s: %s"

    new-array v5, v5, [Ljava/lang/Object;

    .line 18
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v4

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-static {v6, v5}, Lcom/android/volley/VolleyLog;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->q(Ljava/lang/String;)V
    :try_end_7c
    .catchall {:try_start_66 .. :try_end_7c} :catchall_7e

    .line 20
    monitor-exit p0

    return-object v1

    :catchall_7e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()V
    .registers 10

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->c:Lcom/android/volley/toolbox/DiskBasedCache$FileSupplier;

    invoke-interface {v0}, Lcom/android/volley/toolbox/DiskBasedCache$FileSupplier;->get()Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_24

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_22

    const-string v1, "Unable to create cache dir %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {v1, v3}, Lcom/android/volley/VolleyLog;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_5f

    .line 5
    :cond_22
    monitor-exit p0

    return-void

    .line 6
    :cond_24
    :try_start_24
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_5f

    if-nez v0, :cond_2c

    .line 7
    monitor-exit p0

    return-void

    .line 8
    :cond_2c
    :try_start_2c
    array-length v1, v0

    :goto_2d
    if-ge v2, v1, :cond_5d

    aget-object v3, v0, v2
    :try_end_31
    .catchall {:try_start_2c .. :try_end_31} :catchall_5f

    .line 9
    :try_start_31
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 10
    new-instance v6, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;

    new-instance v7, Ljava/io/BufferedInputStream;

    .line 11
    invoke-virtual {p0, v3}, Lcom/android/volley/toolbox/DiskBasedCache;->e(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7, v4, v5}, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;-><init>(Ljava/io/InputStream;J)V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_43} :catch_57
    .catchall {:try_start_31 .. :try_end_43} :catchall_5f

    .line 12
    :try_start_43
    invoke-static {v6}, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->b(Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;)Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    move-result-object v7

    .line 13
    iput-wide v4, v7, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->a:J

    .line 14
    iget-object v4, v7, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->b:Ljava/lang/String;

    invoke-direct {p0, v4, v7}, Lcom/android/volley/toolbox/DiskBasedCache;->k(Ljava/lang/String;Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;)V
    :try_end_4e
    .catchall {:try_start_43 .. :try_end_4e} :catchall_52

    .line 15
    :try_start_4e
    invoke-virtual {v6}, Ljava/io/FilterInputStream;->close()V

    goto :goto_5a

    :catchall_52
    move-exception v4

    invoke-virtual {v6}, Ljava/io/FilterInputStream;->close()V

    throw v4
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_57} :catch_57
    .catchall {:try_start_4e .. :try_end_57} :catchall_5f

    .line 16
    :catch_57
    :try_start_57
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_5f

    :goto_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 17
    :cond_5d
    monitor-exit p0

    return-void

    :catchall_5f
    move-exception v0

    monitor-exit p0

    goto :goto_63

    :goto_62
    throw v0

    :goto_63
    goto :goto_62
.end method

.method public declared-synchronized c(Ljava/lang/String;Z)V
    .registers 6

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->a(Ljava/lang/String;)Lcom/android/volley/Cache$Entry;

    move-result-object v0

    if-eqz v0, :cond_12

    const-wide/16 v1, 0x0

    .line 2
    iput-wide v1, v0, Lcom/android/volley/Cache$Entry;->f:J

    if-eqz p2, :cond_f

    .line 3
    iput-wide v1, v0, Lcom/android/volley/Cache$Entry;->e:J

    .line 4
    :cond_f
    invoke-virtual {p0, p1, v0}, Lcom/android/volley/toolbox/DiskBasedCache;->d(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 5
    :cond_12
    monitor-exit p0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clear()V
    .registers 6

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->c:Lcom/android/volley/toolbox/DiskBasedCache$FileSupplier;

    invoke-interface {v0}, Lcom/android/volley/toolbox/DiskBasedCache$FileSupplier;->get()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 2
    array-length v2, v0

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_1a

    aget-object v4, v0, v3

    .line 3
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 4
    :cond_1a
    iget-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-wide/16 v2, 0x0

    .line 5
    iput-wide v2, p0, Lcom/android/volley/toolbox/DiskBasedCache;->b:J

    const-string v0, "Cache cleared."

    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    invoke-static {v0, v1}, Lcom/android/volley/VolleyLog;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2c

    .line 7
    monitor-exit p0

    return-void

    :catchall_2c
    move-exception v0

    monitor-exit p0

    goto :goto_30

    :goto_2f
    throw v0

    :goto_30
    goto :goto_2f
.end method

.method public declared-synchronized d(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V
    .registers 10

    monitor-enter p0

    .line 1
    :try_start_1
    iget-wide v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->b:J

    iget-object v2, p2, Lcom/android/volley/Cache$Entry;->a:[B

    array-length v3, v2

    int-to-long v3, v3

    add-long/2addr v0, v3

    iget v3, p0, Lcom/android/volley/toolbox/DiskBasedCache;->d:I

    int-to-long v4, v3

    cmp-long v6, v0, v4

    if-lez v6, :cond_1d

    array-length v0, v2
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_7a

    int-to-float v0, v0

    int-to-float v1, v3

    const v2, 0x3f666666    # 0.9f

    mul-float v1, v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1d

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_1d
    :try_start_1d
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->g(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_7a

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 4
    :try_start_23
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-virtual {p0, v0}, Lcom/android/volley/toolbox/DiskBasedCache;->f(Ljava/io/File;)Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 5
    new-instance v4, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    invoke-direct {v4, p1, p2}, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;-><init>(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V

    .line 6
    invoke-virtual {v4, v3}, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->d(Ljava/io/OutputStream;)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 7
    iget-object p2, p2, Lcom/android/volley/Cache$Entry;->a:[B

    invoke-virtual {v3, p2}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 8
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->a:J

    .line 10
    invoke-direct {p0, p1, v4}, Lcom/android/volley/toolbox/DiskBasedCache;->k(Ljava/lang/String;Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;)V

    .line 11
    invoke-direct {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->j()V

    goto :goto_78

    .line 12
    :cond_4c
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    const-string p1, "Failed to write header for %s"

    new-array p2, v2, [Ljava/lang/Object;

    .line 13
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v1

    invoke-static {p1, p2}, Lcom/android/volley/VolleyLog;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_62} :catch_62
    .catchall {:try_start_23 .. :try_end_62} :catchall_7a

    .line 15
    :catch_62
    :try_start_62
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_75

    const-string p1, "Could not clean up file %s"

    new-array p2, v2, [Ljava/lang/Object;

    .line 16
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v1

    invoke-static {p1, p2}, Lcom/android/volley/VolleyLog;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    :cond_75
    invoke-direct {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->i()V
    :try_end_78
    .catchall {:try_start_62 .. :try_end_78} :catchall_7a

    .line 18
    :goto_78
    monitor-exit p0

    return-void

    :catchall_7a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method e(Ljava/io/File;)Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method f(Ljava/io/File;)Ljava/io/OutputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public g(Ljava/lang/String;)Ljava/io/File;
    .registers 4

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/volley/toolbox/DiskBasedCache;->c:Lcom/android/volley/toolbox/DiskBasedCache$FileSupplier;

    invoke-interface {v1}, Lcom/android/volley/toolbox/DiskBasedCache$FileSupplier;->get()Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public declared-synchronized q(Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->g(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->r(Ljava/lang/String;)V

    if-nez v0, :cond_20

    const-string v0, "Could not delete cache entry for key=%s, filename=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    .line 3
    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    .line 4
    invoke-static {v0, v1}, Lcom/android/volley/VolleyLog;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    .line 5
    :cond_20
    monitor-exit p0

    return-void

    :catchall_22
    move-exception p1

    monitor-exit p0

    throw p1
.end method

###### Class com.android.volley.toolbox.DiskBasedCache.AnonymousClass1 (com.android.volley.toolbox.DiskBasedCache$1)
.class Lcom/android/volley/toolbox/DiskBasedCache$1;
.super Ljava/lang/Object;
.source "DiskBasedCache.java"

# interfaces
.implements Lcom/android/volley/toolbox/DiskBasedCache$FileSupplier;


# instance fields
.field final synthetic a:Ljava/io/File;


# virtual methods
.method public get()Ljava/io/File;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache$1;->a:Ljava/io/File;

    return-object v0
.end method

###### Class com.android.volley.toolbox.DiskBasedCache.CacheHeader (com.android.volley.toolbox.DiskBasedCache$CacheHeader)
.class Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
.super Ljava/lang/Object;
.source "DiskBasedCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/toolbox/DiskBasedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CacheHeader"
.end annotation


# instance fields
.field a:J

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:J

.field final e:J

.field final f:J

.field final g:J

.field final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/volley/Header;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V
    .registers 15

    .line 9
    iget-object v2, p2, Lcom/android/volley/Cache$Entry;->b:Ljava/lang/String;

    iget-wide v3, p2, Lcom/android/volley/Cache$Entry;->c:J

    iget-wide v5, p2, Lcom/android/volley/Cache$Entry;->d:J

    iget-wide v7, p2, Lcom/android/volley/Cache$Entry;->e:J

    iget-wide v9, p2, Lcom/android/volley/Cache$Entry;->f:J

    .line 10
    invoke-static {p2}, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->a(Lcom/android/volley/Cache$Entry;)Ljava/util/List;

    move-result-object v11

    move-object v0, p0

    move-object v1, p1

    .line 11
    invoke-direct/range {v0 .. v11}, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJJJ",
            "Ljava/util/List<",
            "Lcom/android/volley/Header;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->b:Ljava/lang/String;

    const-string p1, ""

    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p2, 0x0

    :cond_e
    iput-object p2, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->c:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->d:J

    .line 5
    iput-wide p5, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->e:J

    .line 6
    iput-wide p7, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->f:J

    .line 7
    iput-wide p9, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->g:J

    .line 8
    iput-object p11, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->h:Ljava/util/List;

    return-void
.end method

.method private static a(Lcom/android/volley/Cache$Entry;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Cache$Entry;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/volley/Header;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/volley/Cache$Entry;->h:Ljava/util/List;

    if-eqz v0, :cond_5

    return-object v0

    .line 2
    :cond_5
    iget-object p0, p0, Lcom/android/volley/Cache$Entry;->g:Ljava/util/Map;

    invoke-static {p0}, Lcom/android/volley/toolbox/HttpHeaderParser;->i(Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static b(Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;)Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->n(Ljava/io/InputStream;)I

    move-result v0

    const v1, 0x20150306

    if-ne v0, v1, :cond_2c

    .line 2
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->p(Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;)Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->p(Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;)Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->o(Ljava/io/InputStream;)J

    move-result-wide v5

    .line 5
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->o(Ljava/io/InputStream;)J

    move-result-wide v7

    .line 6
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->o(Ljava/io/InputStream;)J

    move-result-wide v9

    .line 7
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->o(Ljava/io/InputStream;)J

    move-result-wide v11

    .line 8
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->m(Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;)Ljava/util/List;

    move-result-object v13

    .line 9
    new-instance p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    move-object v2, p0

    invoke-direct/range {v2 .. v13}, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V

    return-object p0

    .line 10
    :cond_2c
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method


# virtual methods
.method c([B)Lcom/android/volley/Cache$Entry;
    .registers 5

    .line 1
    new-instance v0, Lcom/android/volley/Cache$Entry;

    invoke-direct {v0}, Lcom/android/volley/Cache$Entry;-><init>()V

    .line 2
    iput-object p1, v0, Lcom/android/volley/Cache$Entry;->a:[B

    .line 3
    iget-object p1, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->c:Ljava/lang/String;

    iput-object p1, v0, Lcom/android/volley/Cache$Entry;->b:Ljava/lang/String;

    .line 4
    iget-wide v1, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->d:J

    iput-wide v1, v0, Lcom/android/volley/Cache$Entry;->c:J

    .line 5
    iget-wide v1, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->e:J

    iput-wide v1, v0, Lcom/android/volley/Cache$Entry;->d:J

    .line 6
    iget-wide v1, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->f:J

    iput-wide v1, v0, Lcom/android/volley/Cache$Entry;->e:J

    .line 7
    iget-wide v1, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->g:J

    iput-wide v1, v0, Lcom/android/volley/Cache$Entry;->f:J

    .line 8
    iget-object p1, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->h:Ljava/util/List;

    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->j(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, v0, Lcom/android/volley/Cache$Entry;->g:Ljava/util/Map;

    .line 9
    iget-object p1, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->h:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcom/android/volley/Cache$Entry;->h:Ljava/util/List;

    return-object v0
.end method

.method d(Ljava/io/OutputStream;)Z
    .registers 6

    const v0, 0x20150306

    const/4 v1, 0x1

    .line 1
    :try_start_4
    invoke-static {p1, v0}, Lcom/android/volley/toolbox/DiskBasedCache;->u(Ljava/io/OutputStream;I)V

    .line 2
    iget-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/volley/toolbox/DiskBasedCache;->w(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->c:Ljava/lang/String;

    if-nez v0, :cond_12

    const-string v0, ""

    :cond_12
    invoke-static {p1, v0}, Lcom/android/volley/toolbox/DiskBasedCache;->w(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 4
    iget-wide v2, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->d:J

    invoke-static {p1, v2, v3}, Lcom/android/volley/toolbox/DiskBasedCache;->v(Ljava/io/OutputStream;J)V

    .line 5
    iget-wide v2, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->e:J

    invoke-static {p1, v2, v3}, Lcom/android/volley/toolbox/DiskBasedCache;->v(Ljava/io/OutputStream;J)V

    .line 6
    iget-wide v2, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->f:J

    invoke-static {p1, v2, v3}, Lcom/android/volley/toolbox/DiskBasedCache;->v(Ljava/io/OutputStream;J)V

    .line 7
    iget-wide v2, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->g:J

    invoke-static {p1, v2, v3}, Lcom/android/volley/toolbox/DiskBasedCache;->v(Ljava/io/OutputStream;J)V

    .line 8
    iget-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->h:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->t(Ljava/util/List;Ljava/io/OutputStream;)V

    .line 9
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_31} :catch_32

    return v1

    :catch_32
    move-exception p1

    new-array v0, v1, [Ljava/lang/Object;

    .line 10
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "%s"

    invoke-static {p1, v0}, Lcom/android/volley/VolleyLog;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

###### Class com.android.volley.toolbox.DiskBasedCache.CountingInputStream (com.android.volley.toolbox.DiskBasedCache$CountingInputStream)
.class Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;
.super Ljava/io/FilterInputStream;
.source "DiskBasedCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/toolbox/DiskBasedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CountingInputStream"
.end annotation


# instance fields
.field private final o:J

.field private p:J


# direct methods
.method constructor <init>(Ljava/io/InputStream;J)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2
    iput-wide p2, p0, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->o:J

    return-void
.end method


# virtual methods
.method b()J
    .registers 5

    .line 1
    iget-wide v0, p0, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->o:J

    iget-wide v2, p0, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->p:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    .line 2
    iget-wide v1, p0, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->p:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->p:J

    :cond_e
    return v0
.end method

.method public read([BII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_d

    .line 4
    iget-wide p2, p0, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->p:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->p:J

    :cond_d
    return p1
.end method

###### Class com.android.volley.toolbox.DiskBasedCache.FileSupplier (com.android.volley.toolbox.DiskBasedCache$FileSupplier)
.class public interface abstract Lcom/android/volley/toolbox/DiskBasedCache$FileSupplier;
.super Ljava/lang/Object;
.source "DiskBasedCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/toolbox/DiskBasedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FileSupplier"
.end annotation


# virtual methods
.method public abstract get()Ljava/io/File;
.end method
