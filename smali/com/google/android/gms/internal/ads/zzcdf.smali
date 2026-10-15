###### Class com.google.android.gms.internal.ads.zzcdf (com.google.android.gms.internal.ads.zzcdf)
.class final Lcom/google/android/gms/internal/ads/zzcdf;
.super Lcom/google/android/gms/internal/ads/zzfa;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgd;


# static fields
.field private static final u:Ljava/util/regex/Pattern;

.field private static final v:Ljava/util/concurrent/atomic/AtomicReference;


# instance fields
.field private final e:Ljavax/net/ssl/SSLSocketFactory;

.field private final f:I

.field private final g:I

.field private final h:Ljava/lang/String;

.field private final i:Lcom/google/android/gms/internal/ads/zzgc;

.field private j:Lcom/google/android/gms/internal/ads/zzfl;

.field private k:Ljava/net/HttpURLConnection;

.field private l:Ljava/io/InputStream;

.field private m:Z

.field private n:I

.field private o:J

.field private p:J

.field private q:J

.field private r:J

.field private s:I

.field private final t:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "^bytes (\\d+)-(\\d+)/(\\d+)$"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcdf;->u:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcdf;->v:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgi;III)V
    .registers 7

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfa;-><init>(Z)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcde;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcde;-><init>(Lcom/google/android/gms/internal/ads/zzcdf;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->e:Ljavax/net/ssl/SSLSocketFactory;

    new-instance v0, Ljava/util/HashSet;

    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->t:Ljava/util/Set;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdl;->c(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdf;->h:Ljava/lang/String;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgc;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzgc;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdf;->i:Lcom/google/android/gms/internal/ads/zzgc;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzcdf;->f:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzcdf;->g:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzcdf;->s:I

    if-eqz p2, :cond_29

    .line 6
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzfa;->f(Lcom/google/android/gms/internal/ads/zzgi;)V

    :cond_29
    return-void
.end method

.method static bridge synthetic q(Lcom/google/android/gms/internal/ads/zzcdf;)I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->s:I

    return p0
.end method

.method static bridge synthetic r(Lcom/google/android/gms/internal/ads/zzcdf;Ljava/net/Socket;)V
    .registers 2

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->t:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final t()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->k:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_11

    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_e

    :catch_8
    move-exception v0

    const-string v1, "Unexpected error while disconnecting"

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_e
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->k:Ljava/net/HttpURLConnection;

    :cond_11
    return-void
.end method


# virtual methods
.method public final a()Landroid/net/Uri;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->k:Ljava/net/HttpURLConnection;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->k:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final d()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzfz;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcdf;->l:Ljava/io/InputStream;

    if-eqz v2, :cond_79

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcdf;->k:Ljava/net/HttpURLConnection;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzcdf;->p:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_11

    goto :goto_14

    .line 2
    :cond_11
    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/zzcdf;->r:J

    sub-long/2addr v3, v7

    .line 3
    :goto_14
    sget v7, Lcom/google/android/gms/internal/ads/zzew;->a:I
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_8d

    const/16 v8, 0x13

    if-eq v7, v8, :cond_1f

    const/16 v8, 0x14

    if-eq v7, v8, :cond_1f

    goto :goto_67

    .line 4
    :cond_1f
    :try_start_1f
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    cmp-long v7, v3, v5

    if-nez v7, :cond_2f

    .line 5
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_67

    goto :goto_36

    :cond_2f
    const-wide/16 v5, 0x800

    cmp-long v7, v3, v5

    if-gtz v7, :cond_36

    goto :goto_67

    .line 6
    :cond_36
    :goto_36
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream"

    .line 7
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4e

    const-string v4, "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream"

    .line 8
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 9
    :cond_4e
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "unexpectedEndOfInput"

    new-array v5, v1, [Ljava/lang/Class;

    .line 10
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x1

    .line 11
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v4, v1, [Ljava/lang/Object;

    .line 12
    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_67} :catch_67
    .catchall {:try_start_1f .. :try_end_67} :catchall_8d

    .line 13
    :catch_67
    :cond_67
    :goto_67
    :try_start_67
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcdf;->l:Ljava/io/InputStream;

    .line 14
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6c} :catch_6d
    .catchall {:try_start_67 .. :try_end_6c} :catchall_8d

    goto :goto_79

    :catch_6d
    move-exception v2

    .line 15
    :try_start_6e
    new-instance v3, Lcom/google/android/gms/internal/ads/zzfz;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcdf;->j:Lcom/google/android/gms/internal/ads/zzfl;

    const/16 v5, 0x7d0

    const/4 v6, 0x3

    .line 16
    invoke-direct {v3, v2, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzfz;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzfl;II)V

    .line 17
    throw v3
    :try_end_79
    .catchall {:try_start_6e .. :try_end_79} :catchall_8d

    .line 18
    :cond_79
    :goto_79
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->l:Ljava/io/InputStream;

    .line 19
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcdf;->t()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->m:Z

    if-eqz v0, :cond_87

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcdf;->m:Z

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfa;->n()V

    :cond_87
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->t:Ljava/util/Set;

    .line 21
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void

    :catchall_8d
    move-exception v2

    .line 22
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->l:Ljava/io/InputStream;

    .line 23
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcdf;->t()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->m:Z

    if-eqz v0, :cond_9c

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcdf;->m:Z

    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfa;->n()V

    :cond_9c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->t:Ljava/util/Set;

    .line 25
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 26
    throw v2
.end method

.method public final e([BII)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzfz;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->q:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzcdf;->o:J

    const/4 v4, 0x0

    const/4 v5, -0x1

    cmp-long v6, v0, v2

    if-nez v6, :cond_b

    goto :goto_53

    .line 2
    :cond_b
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcdf;->v:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_1a

    const/16 v0, 0x1000

    new-array v0, v0, [B

    :cond_1a
    :goto_1a
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzcdf;->q:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzcdf;->o:J

    cmp-long v3, v1, v6

    if-eqz v3, :cond_4e

    .line 4
    array-length v3, v0

    sub-long/2addr v6, v1

    int-to-long v1, v3

    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdf;->l:Ljava/io/InputStream;

    .line 5
    invoke-virtual {v1, v0, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 6
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_48

    if-eq v1, v5, :cond_42

    .line 7
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzcdf;->q:J

    int-to-long v6, v1

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzcdf;->q:J

    .line 8
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzfa;->w(I)V

    goto :goto_1a

    .line 9
    :cond_42
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 10
    :cond_48
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    .line 11
    :cond_4e
    sget-object v1, Lcom/google/android/gms/internal/ads/zzcdf;->v:Ljava/util/concurrent/atomic/AtomicReference;

    .line 12
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :goto_53
    if-nez p3, :cond_56

    goto :goto_8d

    .line 13
    :cond_56
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->p:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_6f

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzcdf;->r:J

    sub-long/2addr v0, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v0, v6

    if-nez v4, :cond_69

    :goto_67
    const/4 v4, -0x1

    goto :goto_8d

    :cond_69
    int-to-long v6, p3

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    :cond_6f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->l:Ljava/io/InputStream;

    .line 14
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-ne v4, v5, :cond_84

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzcdf;->p:J

    cmp-long p3, p1, v2

    if-nez p3, :cond_7e

    goto :goto_67

    .line 15
    :cond_7e
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 16
    :cond_84
    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzcdf;->r:J

    int-to-long v0, v4

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzcdf;->r:J

    .line 17
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzfa;->w(I)V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8d} :catch_8e

    :goto_8d
    return v4

    :catch_8e
    move-exception p1

    .line 18
    new-instance p2, Lcom/google/android/gms/internal/ads/zzfz;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcdf;->j:Lcom/google/android/gms/internal/ads/zzfl;

    const/16 v0, 0x7d0

    const/4 v1, 0x2

    .line 19
    invoke-direct {p2, p1, p3, v0, v1}, Lcom/google/android/gms/internal/ads/zzfz;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzfl;II)V

    .line 20
    goto :goto_9b

    :goto_9a
    throw p2

    :goto_9b
    goto :goto_9a
.end method

.method public final j(Lcom/google/android/gms/internal/ads/zzfl;)J
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzfz;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    const-string v2, "Unable to connect to "

    .line 1
    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzcdf;->j:Lcom/google/android/gms/internal/ads/zzfl;

    const-wide/16 v3, 0x0

    iput-wide v3, v1, Lcom/google/android/gms/internal/ads/zzcdf;->r:J

    iput-wide v3, v1, Lcom/google/android/gms/internal/ads/zzcdf;->q:J

    :try_start_e
    new-instance v0, Ljava/net/URL;

    iget-object v5, v7, Lcom/google/android/gms/internal/ads/zzfl;->a:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2
    iget-wide v5, v7, Lcom/google/android/gms/internal/ads/zzfl;->f:J

    .line 3
    iget-wide v8, v7, Lcom/google/android/gms/internal/ads/zzfl;->g:J

    const/4 v10, 0x1

    .line 4
    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/ads/zzfl;->b(I)Z

    move-result v11

    const/4 v13, 0x0

    :goto_23
    add-int/lit8 v14, v13, 0x1

    const/16 v15, 0x14

    if-gt v13, v15, :cond_279

    .line 5
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v13

    check-cast v13, Ljava/net/HttpURLConnection;

    .line 6
    instance-of v15, v13, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v15, :cond_3b

    .line 7
    move-object v15, v13

    check-cast v15, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzcdf;->e:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v15, v10}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_3b
    iget v10, v1, Lcom/google/android/gms/internal/ads/zzcdf;->f:I

    .line 8
    invoke-virtual {v13, v10}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget v10, v1, Lcom/google/android/gms/internal/ads/zzcdf;->g:I

    .line 9
    invoke-virtual {v13, v10}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzcdf;->i:Lcom/google/android/gms/internal/ads/zzgc;

    .line 10
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzgc;->a()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_53
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_71

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 11
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v12, v16

    check-cast v12, Ljava/lang/String;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v13, v12, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_53

    :cond_71
    const-wide/16 v18, -0x1

    cmp-long v10, v5, v3

    if-nez v10, :cond_7c

    cmp-long v10, v8, v18

    if-eqz v10, :cond_ae

    goto :goto_7d

    :cond_7c
    move-wide v3, v5

    :goto_7d
    new-instance v10, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "bytes="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, "-"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    cmp-long v12, v8, v18

    if-eqz v12, :cond_a9

    add-long/2addr v3, v8

    add-long v3, v3, v18

    new-instance v12, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_a9
    const-string v3, "Range"

    .line 14
    invoke-virtual {v13, v3, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ae
    const-string v3, "User-Agent"

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzcdf;->h:Ljava/lang/String;

    .line 15
    invoke-virtual {v13, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v11, :cond_be

    const-string v3, "Accept-Encoding"

    const-string v4, "identity"

    .line 16
    invoke-virtual {v13, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_be
    const/4 v3, 0x0

    .line 17
    invoke-virtual {v13, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 18
    invoke-virtual {v13, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 19
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->connect()V

    .line 20
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v10, 0x12c

    if-eq v4, v10, :cond_232

    const/16 v10, 0x12d

    if-eq v4, v10, :cond_232

    const/16 v10, 0x12e

    if-eq v4, v10, :cond_232

    const/16 v10, 0x12f

    if-eq v4, v10, :cond_232

    const/16 v10, 0x133

    if-eq v4, v10, :cond_232

    const/16 v10, 0x134

    if-ne v4, v10, :cond_e6

    goto/16 :goto_232

    .line 21
    :cond_e6
    iput-object v13, v1, Lcom/google/android/gms/internal/ads/zzcdf;->k:Ljava/net/HttpURLConnection;
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e8} :catch_290

    .line 22
    :try_start_e8
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, v1, Lcom/google/android/gms/internal/ads/zzcdf;->n:I
    :try_end_ee
    .catch Ljava/io/IOException; {:try_start_e8 .. :try_end_ee} :catch_212

    const/16 v2, 0xc8

    if-lt v0, v2, :cond_1ea

    const/16 v3, 0x12b

    if-le v0, v3, :cond_f8

    goto/16 :goto_1ea

    :cond_f8
    if-ne v0, v2, :cond_102

    .line 23
    iget-wide v2, v7, Lcom/google/android/gms/internal/ads/zzfl;->f:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_104

    :cond_102
    const-wide/16 v2, 0x0

    :cond_104
    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/zzcdf;->o:J

    const/4 v2, 0x1

    .line 24
    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/ads/zzfl;->b(I)Z

    move-result v0

    if-nez v0, :cond_1c8

    .line 25
    iget-wide v2, v7, Lcom/google/android/gms/internal/ads/zzfl;->g:J

    cmp-long v0, v2, v18

    if-eqz v0, :cond_117

    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/zzcdf;->p:J

    goto/16 :goto_1cc

    .line 26
    :cond_117
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcdf;->k:Ljava/net/HttpURLConnection;

    const-string v2, "Content-Length"

    .line 27
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 28
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "]"

    if-nez v3, :cond_143

    .line 29
    :try_start_127
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_12b
    .catch Ljava/lang/NumberFormatException; {:try_start_127 .. :try_end_12b} :catch_12c

    goto :goto_145

    .line 30
    :catch_12c
    new-instance v3, Ljava/lang/StringBuilder;

    .line 31
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected Content-Length ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 32
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzbza;->d(Ljava/lang/String;)V

    :cond_143
    move-wide/from16 v5, v18

    :goto_145
    const-string v3, "Content-Range"

    .line 33
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1bb

    sget-object v3, Lcom/google/android/gms/internal/ads/zzcdf;->u:Ljava/util/regex/Pattern;

    .line 35
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 36
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_1bb

    const/4 v8, 0x2

    .line 37
    :try_start_15e
    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    const-wide/16 v16, 0x0

    cmp-long v3, v5, v16

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    if-gez v3, :cond_17b

    move-wide v5, v8

    goto :goto_1bb

    :cond_17b
    cmp-long v3, v5, v8

    if-eqz v3, :cond_1bb

    new-instance v3, Ljava/lang/StringBuilder;

    .line 38
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Inconsistent headers ["

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] ["

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 39
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    .line 40
    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2
    :try_end_1a2
    .catch Ljava/lang/NumberFormatException; {:try_start_15e .. :try_end_1a2} :catch_1a4

    move-wide v5, v2

    goto :goto_1bb

    .line 41
    :catch_1a4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected Content-Range ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->d(Ljava/lang/String;)V

    :cond_1bb
    :goto_1bb
    cmp-long v0, v5, v18

    if-eqz v0, :cond_1c3

    .line 44
    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzcdf;->o:J

    sub-long v18, v5, v2

    :cond_1c3
    move-wide/from16 v2, v18

    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/zzcdf;->p:J

    goto :goto_1cc

    .line 45
    :cond_1c8
    iget-wide v2, v7, Lcom/google/android/gms/internal/ads/zzfl;->g:J

    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/zzcdf;->p:J

    .line 46
    :goto_1cc
    :try_start_1cc
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcdf;->k:Ljava/net/HttpURLConnection;

    .line 47
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzcdf;->l:Ljava/io/InputStream;
    :try_end_1d4
    .catch Ljava/io/IOException; {:try_start_1cc .. :try_end_1d4} :catch_1dd

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzcdf;->m:Z

    .line 48
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzfa;->p(Lcom/google/android/gms/internal/ads/zzfl;)V

    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzcdf;->p:J

    return-wide v2

    :catch_1dd
    move-exception v0

    .line 49
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzcdf;->t()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfz;

    const/16 v3, 0x7d0

    const/4 v4, 0x1

    .line 50
    invoke-direct {v2, v0, v7, v3, v4}, Lcom/google/android/gms/internal/ads/zzfz;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzfl;II)V

    .line 51
    throw v2

    .line 52
    :cond_1ea
    :goto_1ea
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcdf;->k:Ljava/net/HttpURLConnection;

    .line 53
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v6

    .line 54
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzcdf;->t()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgb;

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzcdf;->n:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 55
    sget-object v8, Lcom/google/android/gms/internal/ads/zzew;->f:[B

    move-object v2, v0

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzgb;-><init>(ILjava/lang/String;Ljava/io/IOException;Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzfl;[B)V

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzcdf;->n:I

    const/16 v3, 0x1a0

    if-ne v2, v3, :cond_211

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfh;

    const/16 v3, 0x7d8

    .line 56
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzfh;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 57
    :cond_211
    throw v0

    :catch_212
    move-exception v0

    move-object v4, v0

    .line 58
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzcdf;->t()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfz;

    .line 59
    iget-object v3, v7, Lcom/google/android/gms/internal/ads/zzfl;->a:Landroid/net/Uri;

    .line 60
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x7d0

    const/4 v8, 0x1

    move-object v2, v0

    move-object/from16 v5, p1

    move v7, v8

    .line 61
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzfz;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzfl;II)V

    .line 62
    throw v0

    :cond_232
    :goto_232
    const/4 v4, 0x1

    const-wide/16 v16, 0x0

    :try_start_235
    const-string v10, "Location"

    .line 63
    invoke-virtual {v13, v10}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 64
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v10, :cond_271

    .line 65
    new-instance v12, Ljava/net/URL;

    .line 66
    invoke-direct {v12, v0, v10}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v12}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v10, "https"

    .line 68
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_26a

    const-string v10, "http"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_25a

    goto :goto_26a

    .line 69
    :cond_25a
    new-instance v3, Ljava/net/ProtocolException;

    const-string v4, "Unsupported protocol redirect: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_26a
    :goto_26a
    move-object v0, v12

    move v13, v14

    move-wide/from16 v3, v16

    const/4 v10, 0x1

    goto/16 :goto_23

    .line 70
    :cond_271
    new-instance v0, Ljava/net/ProtocolException;

    const-string v3, "Null location redirect"

    invoke-direct {v0, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_279
    new-instance v0, Ljava/net/NoRouteToHostException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Too many redirects: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_290
    .catch Ljava/io/IOException; {:try_start_235 .. :try_end_290} :catch_290

    :catch_290
    move-exception v0

    move-object v4, v0

    .line 72
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfz;

    .line 73
    iget-object v3, v7, Lcom/google/android/gms/internal/ads/zzfl;->a:Landroid/net/Uri;

    .line 74
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x7d0

    const/4 v8, 0x1

    move-object v2, v0

    move-object/from16 v5, p1

    move v7, v8

    .line 75
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzfz;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzfl;II)V

    .line 76
    goto :goto_2ae

    :goto_2ad
    throw v0

    :goto_2ae
    goto :goto_2ad
.end method

.method final s(I)V
    .registers 4

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcdf;->s:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdf;->t:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    .line 2
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_8

    :try_start_1a
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcdf;->s:I

    .line 3
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setReceiveBufferSize(I)V
    :try_end_1f
    .catch Ljava/net/SocketException; {:try_start_1a .. :try_end_1f} :catch_20

    goto :goto_8

    :catch_20
    move-exception v0

    const-string v1, "Failed to update receive buffer size."

    .line 4
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbza;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_27
    return-void
.end method
