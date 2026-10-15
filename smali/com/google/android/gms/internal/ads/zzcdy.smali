###### Class com.google.android.gms.internal.ads.zzcdy (com.google.android.gms.internal.ads.zzcdy)
.class final Lcom/google/android/gms/internal/ads/zzcdy;
.super Lcom/google/android/gms/internal/ads/zzfa;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgd;


# static fields
.field private static final v:Ljava/util/regex/Pattern;


# instance fields
.field private final e:I

.field private final f:I

.field private final g:Ljava/lang/String;

.field private final h:Lcom/google/android/gms/internal/ads/zzgc;

.field private i:Lcom/google/android/gms/internal/ads/zzfl;

.field private j:Ljava/net/HttpURLConnection;

.field private final k:Ljava/util/Queue;

.field private l:Ljava/io/InputStream;

.field private m:Z

.field private n:I

.field private o:J

.field private p:J

.field private q:J

.field private r:J

.field private s:J

.field private final t:J

.field private final u:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "^bytes (\\d+)-(\\d+)/(\\d+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcdy;->v:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgi;IIJJ)V
    .registers 10

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfa;-><init>(Z)V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdl;->c(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdy;->g:Ljava/lang/String;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgc;

    .line 3
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzgc;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdy;->h:Lcom/google/android/gms/internal/ads/zzgc;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzcdy;->e:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzcdy;->f:I

    new-instance p1, Ljava/util/ArrayDeque;

    .line 4
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdy;->k:Ljava/util/Queue;

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzcdy;->t:J

    iput-wide p7, p0, Lcom/google/android/gms/internal/ads/zzcdy;->u:J

    if-eqz p2, :cond_24

    .line 5
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzfa;->f(Lcom/google/android/gms/internal/ads/zzgi;)V

    :cond_24
    return-void
.end method

.method private final r()V
    .registers 3

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdy;->k:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdy;->k:Ljava/util/Queue;

    .line 2
    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 3
    :try_start_10
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_13} :catch_14

    goto :goto_0

    :catch_14
    move-exception v0

    const-string v1, "Unexpected error while disconnecting"

    .line 4
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1b
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdy;->j:Ljava/net/HttpURLConnection;

    return-void
.end method


# virtual methods
.method public final a()Landroid/net/Uri;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdy;->j:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/util/Map;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdy;->j:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final d()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzfz;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcdy;->l:Ljava/io/InputStream;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_25

    if-eqz v2, :cond_16

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_a
    .catchall {:try_start_6 .. :try_end_9} :catchall_25

    goto :goto_16

    :catch_a
    move-exception v2

    .line 2
    :try_start_b
    new-instance v3, Lcom/google/android/gms/internal/ads/zzfz;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcdy;->i:Lcom/google/android/gms/internal/ads/zzfl;

    const/16 v5, 0x7d0

    const/4 v6, 0x3

    .line 3
    invoke-direct {v3, v2, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzfz;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzfl;II)V

    .line 4
    throw v3
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_25

    .line 5
    :cond_16
    :goto_16
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdy;->l:Ljava/io/InputStream;

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcdy;->r()V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcdy;->m:Z

    if-eqz v1, :cond_24

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcdy;->m:Z

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfa;->n()V

    :cond_24
    return-void

    :catchall_25
    move-exception v2

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdy;->l:Ljava/io/InputStream;

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcdy;->r()V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcdy;->m:Z

    if-eqz v1, :cond_34

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcdy;->m:Z

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfa;->n()V

    .line 10
    :cond_34
    throw v2
.end method

.method public final e([BII)I
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzfz;
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v0, p3

    const/4 v8, -0x1

    if-nez v0, :cond_9

    const/4 v8, 0x0

    goto :goto_6c

    .line 1
    :cond_9
    :try_start_9
    iget-wide v1, v7, Lcom/google/android/gms/internal/ads/zzcdy;->o:J

    iget-wide v3, v7, Lcom/google/android/gms/internal/ads/zzcdy;->p:J

    sub-long/2addr v1, v3

    const-wide/16 v5, 0x0

    cmp-long v9, v1, v5

    if-nez v9, :cond_15

    goto :goto_6c

    :cond_15
    iget-wide v1, v7, Lcom/google/android/gms/internal/ads/zzcdy;->q:J

    add-long/2addr v1, v3

    int-to-long v9, v0

    iget-wide v3, v7, Lcom/google/android/gms/internal/ads/zzcdy;->u:J

    add-long/2addr v1, v9

    add-long/2addr v1, v3

    iget-wide v5, v7, Lcom/google/android/gms/internal/ads/zzcdy;->s:J

    const-wide/16 v11, 0x1

    add-long v13, v5, v11

    cmp-long v0, v1, v13

    if-lez v0, :cond_4a

    iget-wide v0, v7, Lcom/google/android/gms/internal/ads/zzcdy;->r:J

    cmp-long v2, v5, v0

    if-gez v2, :cond_4a

    iget-wide v5, v7, Lcom/google/android/gms/internal/ads/zzcdy;->t:J

    add-long/2addr v5, v13

    sub-long/2addr v5, v3

    const-wide/16 v2, -0x1

    add-long/2addr v5, v2

    add-long v15, v13, v9

    add-long/2addr v2, v15

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 2
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    const/4 v6, 0x2

    move-object/from16 v1, p0

    move-wide v2, v13

    move-wide v13, v4

    .line 3
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzcdy;->q(JJI)Ljava/net/HttpURLConnection;

    iput-wide v13, v7, Lcom/google/android/gms/internal/ads/zzcdy;->s:J

    move-wide v5, v13

    :cond_4a
    add-long/2addr v5, v11

    iget-wide v0, v7, Lcom/google/android/gms/internal/ads/zzcdy;->q:J

    sub-long/2addr v5, v0

    iget-wide v0, v7, Lcom/google/android/gms/internal/ads/zzcdy;->p:J

    sub-long/2addr v5, v0

    .line 4
    invoke-static {v9, v10, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzcdy;->l:Ljava/io/InputStream;

    move-object/from16 v2, p1

    move/from16 v3, p2

    .line 5
    invoke-virtual {v0, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-eq v0, v8, :cond_6d

    .line 6
    iget-wide v1, v7, Lcom/google/android/gms/internal/ads/zzcdy;->p:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, v7, Lcom/google/android/gms/internal/ads/zzcdy;->p:J

    .line 7
    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/ads/zzfa;->w(I)V

    move v8, v0

    :goto_6c
    return v8

    .line 8
    :cond_6d
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_73} :catch_73

    :catch_73
    move-exception v0

    .line 9
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfz;

    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzcdy;->i:Lcom/google/android/gms/internal/ads/zzfl;

    const/16 v3, 0x7d0

    const/4 v4, 0x2

    .line 10
    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfz;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzfl;II)V

    .line 11
    throw v1
.end method

.method public final j(Lcom/google/android/gms/internal/ads/zzfl;)J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzfz;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdy;->i:Lcom/google/android/gms/internal/ads/zzfl;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcdy;->p:J

    iget-wide v3, p1, Lcom/google/android/gms/internal/ads/zzfl;->f:J

    .line 2
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzfl;->g:J

    const-wide/16 v8, -0x1

    cmp-long v2, v0, v8

    if-nez v2, :cond_13

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcdy;->t:J

    goto :goto_19

    .line 3
    :cond_13
    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzcdy;->t:J

    .line 4
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_19
    add-long/2addr v0, v3

    add-long v5, v0, v8

    .line 5
    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzcdy;->q:J

    const/4 v7, 0x1

    move-object v2, p0

    .line 6
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzcdy;->q(JJI)Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdy;->j:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Range"

    .line 7
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_97

    sget-object v1, Lcom/google/android/gms/internal/ads/zzcdy;->v:Ljava/util/regex/Pattern;

    .line 9
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_97

    const/4 v2, 0x1

    .line 11
    :try_start_3f
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    const/4 v3, 0x2

    .line 12
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const/4 v5, 0x3

    .line 13
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_58
    .catch Ljava/lang/NumberFormatException; {:try_start_3f .. :try_end_58} :catch_7e

    .line 14
    iget-wide v5, p1, Lcom/google/android/gms/internal/ads/zzfl;->g:J

    cmp-long v7, v5, v8

    if-eqz v7, :cond_6b

    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/zzcdy;->o:J

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcdy;->q:J

    add-long/2addr v0, v5

    add-long/2addr v0, v8

    .line 15
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcdy;->r:J

    goto :goto_74

    .line 16
    :cond_6b
    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzcdy;->q:J

    sub-long v5, v0, v5

    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/zzcdy;->o:J

    add-long/2addr v0, v8

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcdy;->r:J

    .line 17
    :goto_74
    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzcdy;->s:J

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzcdy;->m:Z

    .line 18
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfa;->p(Lcom/google/android/gms/internal/ads/zzfl;)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcdy;->o:J

    return-wide v0

    .line 19
    :catch_7e
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected Content-Range ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbza;->d(Ljava/lang/String;)V

    .line 22
    :cond_97
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcdw;

    .line 23
    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzcdw;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfl;)V

    throw v1
.end method

.method final q(JJI)Ljava/net/HttpURLConnection;
    .registers 14
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzfz;
        }
    .end annotation

    const-string v0, "Unable to connect to "

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdy;->i:Lcom/google/android/gms/internal/ads/zzfl;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfl;->a:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2
    :try_start_a
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzcdy;->e:I

    .line 4
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzcdy;->f:I

    .line 5
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcdy;->h:Lcom/google/android/gms/internal/ads/zzgc;

    .line 6
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgc;->a()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d

    :cond_49
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Range"

    .line 9
    invoke-virtual {v2, p2, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "User-Agent"

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcdy;->g:Ljava/lang/String;

    .line 10
    invoke-virtual {v2, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Accept-Encoding"

    const-string p2, "identity"

    .line 11
    invoke-virtual {v2, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "GET"

    .line 12
    invoke-virtual {v2, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdy;->k:Ljava/util/Queue;

    .line 14
    invoke-interface {p1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_82} :catch_e3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdy;->i:Lcom/google/android/gms/internal/ads/zzfl;

    .line 15
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfl;->a:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 16
    :try_start_8a
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcdy;->n:I
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_90} :catch_ca

    const/16 p1, 0xc8

    if-lt p2, p1, :cond_b9

    const/16 p1, 0x12b

    if-gt p2, p1, :cond_b9

    .line 17
    :try_start_98
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcdy;->l:Ljava/io/InputStream;

    if-eqz p2, :cond_a8

    .line 18
    new-instance p2, Ljava/io/SequenceInputStream;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcdy;->l:Ljava/io/InputStream;

    invoke-direct {p2, p3, p1}, Ljava/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    move-object p1, p2

    :cond_a8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdy;->l:Ljava/io/InputStream;
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_aa} :catch_ab

    return-object v2

    :catch_ab
    move-exception p1

    .line 19
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcdy;->r()V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfz;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcdy;->i:Lcom/google/android/gms/internal/ads/zzfl;

    const/16 p4, 0x7d0

    .line 20
    invoke-direct {p2, p1, p3, p4, p5}, Lcom/google/android/gms/internal/ads/zzfz;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzfl;II)V

    .line 21
    throw p2

    .line 22
    :cond_b9
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p1

    .line 23
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcdy;->r()V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzcdx;

    iget p3, p0, Lcom/google/android/gms/internal/ads/zzcdy;->n:I

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzcdy;->i:Lcom/google/android/gms/internal/ads/zzfl;

    .line 24
    invoke-direct {p2, p3, p1, p4, p5}, Lcom/google/android/gms/internal/ads/zzcdx;-><init>(ILjava/util/Map;Lcom/google/android/gms/internal/ads/zzfl;I)V

    throw p2

    :catch_ca
    move-exception p2

    move-object v3, p2

    .line 25
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcdy;->r()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfz;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcdy;->i:Lcom/google/android/gms/internal/ads/zzfl;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x7d0

    move-object v1, p2

    move v6, p5

    .line 26
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfz;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzfl;II)V

    .line 27
    throw p2

    :catch_e3
    move-exception p1

    move-object v4, p1

    .line 28
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfz;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcdy;->i:Lcom/google/android/gms/internal/ads/zzfl;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x7d0

    move-object v2, p2

    move v7, p5

    .line 29
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzfz;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzfl;II)V

    .line 30
    goto :goto_fa

    :goto_f9
    throw p2

    :goto_fa
    goto :goto_f9
.end method
