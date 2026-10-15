###### Class com.google.android.gms.measurement.internal.u (com.google.android.gms.measurement.internal.u)
.class final Lcom/google/android/gms/measurement/internal/u;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@20.1.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final o:Ljava/net/URL;

.field private final p:[B

.field private final q:Lcom/google/android/gms/measurement/internal/s;

.field private final r:Ljava/lang/String;

.field private final s:Ljava/util/Map;

.field final synthetic t:Lcom/google/android/gms/measurement/internal/zzfe;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzfe;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/s;)V
    .registers 7

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/u;->t:Lcom/google/android/gms/measurement/internal/zzfe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p6}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/u;->o:Ljava/net/URL;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/u;->p:[B

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/u;->q:Lcom/google/android/gms/measurement/internal/s;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/u;->r:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/u;->s:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 15

    const-string v0, "Error closing HTTP compressed POST connection output stream. appId"

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/u;->t:Lcom/google/android/gms/measurement/internal/zzfe;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/y0;->b()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_9
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/u;->t:Lcom/google/android/gms/measurement/internal/zzfe;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/u;->o:Ljava/net/URL;

    .line 2
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    .line 3
    instance-of v5, v4, Ljava/net/HttpURLConnection;

    if-eqz v5, :cond_114

    .line 4
    check-cast v4, Ljava/net/HttpURLConnection;

    .line 5
    invoke-virtual {v4, v1}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 6
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgi;->v()Lcom/google/android/gms/measurement/internal/zzaf;

    const v5, 0xea60

    .line 7
    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 8
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgi;->v()Lcom/google/android/gms/measurement/internal/zzaf;

    const v3, 0xee48

    .line 9
    invoke-virtual {v4, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 10
    invoke-virtual {v4, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/4 v3, 0x1

    .line 11
    invoke-virtual {v4, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_37} :catch_15b
    .catchall {:try_start_9 .. :try_end_37} :catchall_11c

    :try_start_37
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/u;->s:Ljava/util/Map;

    if-eqz v5, :cond_5f

    .line 12
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_43
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 13
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v7, v6}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43

    :cond_5f
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/u;->p:[B

    if-eqz v5, :cond_ac

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/u;->t:Lcom/google/android/gms/measurement/internal/zzfe;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/q3;->b:Lcom/google/android/gms/measurement/internal/zzli;

    .line 14
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzli;->e0()Lcom/google/android/gms/measurement/internal/zzlk;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/u;->p:[B

    .line 15
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzlk;->M([B)[B

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/u;->t:Lcom/google/android/gms/measurement/internal/zzfe;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 16
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v6

    .line 17
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v6

    array-length v7, v5

    const-string v8, "Uploading data. size"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    invoke-virtual {v4, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v3, "Content-Encoding"

    const-string v6, "gzip"

    .line 19
    invoke-virtual {v4, v3, v6}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v4, v7}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 21
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 22
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_9b} :catch_110
    .catchall {:try_start_37 .. :try_end_9b} :catchall_10c

    .line 23
    :try_start_9b
    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    .line 24
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_a1} :catch_a7
    .catchall {:try_start_9b .. :try_end_a1} :catchall_a2

    goto :goto_ac

    :catchall_a2
    move-exception v5

    move-object v12, v2

    move-object v2, v3

    goto/16 :goto_120

    :catch_a7
    move-exception v5

    move-object v12, v2

    move-object v2, v3

    goto/16 :goto_15f

    .line 25
    :cond_ac
    :goto_ac
    :try_start_ac
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_b0} :catch_110
    .catchall {:try_start_ac .. :try_end_b0} :catchall_10c

    .line 26
    :try_start_b0
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v11
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_b4} :catch_107
    .catchall {:try_start_b0 .. :try_end_b4} :catchall_103

    .line 27
    :try_start_b4
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 28
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5
    :try_end_bd
    .catchall {:try_start_b4 .. :try_end_bd} :catchall_ef

    const/16 v6, 0x400

    :try_start_bf
    new-array v6, v6, [B

    .line 29
    :goto_c1
    invoke-virtual {v5, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_cb

    .line 30
    invoke-virtual {v3, v6, v1, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_c1

    .line 31
    :cond_cb
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10
    :try_end_cf
    .catchall {:try_start_bf .. :try_end_cf} :catchall_ed

    .line 32
    :try_start_cf
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_d2} :catch_fc
    .catchall {:try_start_cf .. :try_end_d2} :catchall_f7

    .line 33
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/u;->t:Lcom/google/android/gms/measurement/internal/zzfe;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 34
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->B()Lcom/google/android/gms/measurement/internal/zzgf;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/t;

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/u;->r:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/u;->q:Lcom/google/android/gms/measurement/internal/s;

    const/4 v9, 0x0

    const/4 v12, 0x0

    move-object v5, v1

    .line 35
    invoke-direct/range {v5 .. v12}, Lcom/google/android/gms/measurement/internal/t;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/s;ILjava/lang/Throwable;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzfb;)V

    .line 36
    :goto_e9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgf;->v(Ljava/lang/Runnable;)V

    return-void

    :catchall_ed
    move-exception v1

    goto :goto_f1

    :catchall_ef
    move-exception v1

    move-object v5, v2

    :goto_f1
    if-eqz v5, :cond_f6

    .line 37
    :try_start_f3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 38
    :cond_f6
    throw v1
    :try_end_f7
    .catch Ljava/io/IOException; {:try_start_f3 .. :try_end_f7} :catch_fc
    .catchall {:try_start_f3 .. :try_end_f7} :catchall_f7

    :catchall_f7
    move-exception v1

    move-object v5, v1

    move v9, v8

    move-object v12, v11

    goto :goto_121

    :catch_fc
    move-exception v1

    move-object v5, v1

    move-object v10, v5

    move v9, v8

    move-object v12, v11

    goto/16 :goto_161

    :catchall_103
    move-exception v5

    move-object v12, v2

    move v9, v8

    goto :goto_121

    :catch_107
    move-exception v5

    move-object v12, v2

    move-object v10, v5

    move v9, v8

    goto :goto_161

    :catchall_10c
    move-exception v3

    move-object v12, v2

    move-object v5, v3

    goto :goto_120

    :catch_110
    move-exception v3

    move-object v12, v2

    move-object v10, v3

    goto :goto_160

    .line 39
    :cond_114
    :try_start_114
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Failed to obtain HTTP connection"

    .line 40
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_11c
    .catch Ljava/io/IOException; {:try_start_114 .. :try_end_11c} :catch_15b
    .catchall {:try_start_114 .. :try_end_11c} :catchall_11c

    :catchall_11c
    move-exception v3

    move-object v5, v3

    move-object v4, v2

    move-object v12, v4

    :goto_120
    const/4 v9, 0x0

    :goto_121
    if-eqz v2, :cond_13d

    .line 41
    :try_start_123
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_126
    .catch Ljava/io/IOException; {:try_start_123 .. :try_end_126} :catch_127

    goto :goto_13d

    :catch_127
    move-exception v1

    .line 42
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/u;->t:Lcom/google/android/gms/measurement/internal/zzfe;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 43
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    .line 44
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/u;->r:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 45
    invoke-virtual {v2, v0, v3, v1}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_13d
    :goto_13d
    if-eqz v4, :cond_142

    .line 46
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_142
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/u;->t:Lcom/google/android/gms/measurement/internal/zzfe;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 47
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->B()Lcom/google/android/gms/measurement/internal/zzgf;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/t;

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/u;->r:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/u;->q:Lcom/google/android/gms/measurement/internal/s;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v6, v1

    .line 48
    invoke-direct/range {v6 .. v13}, Lcom/google/android/gms/measurement/internal/t;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/s;ILjava/lang/Throwable;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzfb;)V

    .line 49
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgf;->v(Ljava/lang/Runnable;)V

    .line 50
    throw v5

    :catch_15b
    move-exception v3

    move-object v5, v3

    move-object v4, v2

    move-object v12, v4

    :goto_15f
    move-object v10, v5

    :goto_160
    const/4 v9, 0x0

    :goto_161
    if-eqz v2, :cond_17d

    .line 51
    :try_start_163
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_166
    .catch Ljava/io/IOException; {:try_start_163 .. :try_end_166} :catch_167

    goto :goto_17d

    :catch_167
    move-exception v1

    .line 52
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/u;->t:Lcom/google/android/gms/measurement/internal/zzfe;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 53
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    .line 54
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/u;->r:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 55
    invoke-virtual {v2, v0, v3, v1}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_17d
    :goto_17d
    if-eqz v4, :cond_182

    .line 56
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_182
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/u;->t:Lcom/google/android/gms/measurement/internal/zzfe;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 57
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->B()Lcom/google/android/gms/measurement/internal/zzgf;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/t;

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/u;->r:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/u;->q:Lcom/google/android/gms/measurement/internal/s;

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v6, v1

    .line 58
    invoke-direct/range {v6 .. v13}, Lcom/google/android/gms/measurement/internal/t;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/s;ILjava/lang/Throwable;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzfb;)V

    goto/16 :goto_e9
.end method
