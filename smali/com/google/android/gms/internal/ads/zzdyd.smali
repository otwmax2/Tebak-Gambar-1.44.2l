###### Class com.google.android.gms.internal.ads.zzdyd (com.google.android.gms.internal.ads.zzdyd)
.class public final Lcom/google/android/gms/internal/ads/zzdyd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfcd;


# instance fields
.field protected final a:Landroid/content/Context;

.field protected final b:Ljava/lang/String;

.field protected final c:Lcom/google/android/gms/internal/ads/zzbtz;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbtz;I[B)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyd;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdyd;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdyd;->c:Lcom/google/android/gms/internal/ads/zzbtz;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdyb;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdyd;->b(Lcom/google/android/gms/internal/ads/zzdyb;)Lcom/google/android/gms/internal/ads/zzdyc;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/google/android/gms/internal/ads/zzdyb;)Lcom/google/android/gms/internal/ads/zzdyc;
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdtf;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "Received error HTTP response code: "

    .line 1
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzdyb;->a:Ljava/lang/String;

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzdyb;->b:I

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzdyb;->c:Ljava/util/Map;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzdyb;->d:[B

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdyb;->e:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->b()J

    move-result-wide v14

    const/4 v10, 0x1

    :try_start_19
    new-instance v9, Lcom/google/android/gms/internal/ads/zzdyc;

    .line 3
    invoke-direct {v9}, Lcom/google/android/gms/internal/ads/zzdyc;-><init>()V

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzdyd;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SDK version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzbza;->f(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AdRequestServiceImpl: Sending request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    .line 8
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/HashMap;

    .line 9
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v5, 0x0

    const/16 v16, 0x0

    .line 10
    :goto_55
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    .line 11
    move-object v8, v4

    check-cast v8, Ljava/net/HttpURLConnection;
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_5c} :catch_22e

    .line 12
    :try_start_5c
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzdyd;->a:Landroid/content/Context;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzdyd;->b:Ljava/lang/String;
    :try_end_64
    .catch Lcom/google/android/gms/internal/ads/zzdtf; {:try_start_5c .. :try_end_64} :catch_202
    .catchall {:try_start_5c .. :try_end_64} :catchall_1fe

    const/4 v7, 0x0

    const/16 v17, 0x0

    move-object/from16 p1, v8

    move-object/from16 v18, v9

    move/from16 v9, v17

    const/4 v1, 0x1

    move v10, v11

    .line 13
    :try_start_6f
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/ads/internal/util/zzs;->D(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;ZI)V

    .line 14
    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 15
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_92
    .catch Lcom/google/android/gms/internal/ads/zzdtf; {:try_start_6f .. :try_end_92} :catch_1f8
    .catchall {:try_start_6f .. :try_end_92} :catchall_1f4

    move-object/from16 v7, p1

    :try_start_94
    invoke-virtual {v7, v6, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 p1, v7

    goto :goto_7a

    :cond_9a
    move-object/from16 v7, p1

    .line 16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a7

    const-string v4, "Content-Type"

    .line 17
    invoke-virtual {v7, v4, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_a7
    array-length v4, v13

    const/4 v5, 0x0

    if-lez v4, :cond_c9

    .line 19
    invoke-virtual {v7, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 20
    invoke-virtual {v7, v4}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V
    :try_end_b1
    .catch Lcom/google/android/gms/internal/ads/zzdtf; {:try_start_94 .. :try_end_b1} :catch_1f2
    .catchall {:try_start_94 .. :try_end_b1} :catchall_227

    .line 21
    :try_start_b1
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_ba
    .catchall {:try_start_b1 .. :try_end_ba} :catchall_c4

    .line 22
    :try_start_ba
    invoke-virtual {v4, v13}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_bd
    .catchall {:try_start_ba .. :try_end_bd} :catchall_c1

    .line 23
    :try_start_bd
    invoke-static {v4}, Lcom/google/android/gms/common/util/IOUtils;->b(Ljava/io/Closeable;)V

    goto :goto_c9

    :catchall_c1
    move-exception v0

    move-object v5, v4

    goto :goto_c5

    :catchall_c4
    move-exception v0

    :goto_c5
    invoke-static {v5}, Lcom/google/android/gms/common/util/IOUtils;->b(Ljava/io/Closeable;)V

    .line 24
    throw v0

    .line 25
    :cond_c9
    :goto_c9
    new-instance v4, Lcom/google/android/gms/internal/ads/zzbyz;

    .line 26
    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/zzbyz;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v4, v7, v13}, Lcom/google/android/gms/internal/ads/zzbyz;->c(Ljava/net/HttpURLConnection;[B)V

    .line 28
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 29
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v8

    .line 30
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_e1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_113

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 31
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 32
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 33
    invoke-interface {v3, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_109

    .line 34
    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_e1

    :cond_109
    new-instance v5, Ljava/util/ArrayList;

    .line 35
    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v3, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    goto :goto_e1

    .line 36
    :cond_113
    invoke-virtual {v4, v7, v6}, Lcom/google/android/gms/internal/ads/zzbyz;->e(Ljava/net/HttpURLConnection;I)V
    :try_end_116
    .catch Lcom/google/android/gms/internal/ads/zzdtf; {:try_start_bd .. :try_end_116} :catch_1f2
    .catchall {:try_start_bd .. :try_end_116} :catchall_227

    move-object/from16 v5, v18

    :try_start_118
    iput v6, v5, Lcom/google/android/gms/internal/ads/zzdyc;->a:I

    iput-object v3, v5, Lcom/google/android/gms/internal/ads/zzdyc;->b:Ljava/util/Map;

    const-string v8, ""

    iput-object v8, v5, Lcom/google/android/gms/internal/ads/zzdyc;->c:Ljava/lang/String;
    :try_end_120
    .catch Lcom/google/android/gms/internal/ads/zzdtf; {:try_start_118 .. :try_end_120} :catch_1f0
    .catchall {:try_start_118 .. :try_end_120} :catchall_227

    const/16 v8, 0xc8

    const/16 v9, 0x12c

    if-lt v6, v8, :cond_178

    if-ge v6, v9, :cond_178

    :try_start_128
    new-instance v2, Ljava/io/InputStreamReader;

    .line 37
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_131
    .catchall {:try_start_128 .. :try_end_131} :catchall_172

    .line 38
    :try_start_131
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/zzs;->j(Ljava/io/InputStreamReader;)Ljava/lang/String;

    move-result-object v0
    :try_end_138
    .catchall {:try_start_131 .. :try_end_138} :catchall_170

    .line 39
    :try_start_138
    invoke-static {v2}, Lcom/google/android/gms/common/util/IOUtils;->b(Ljava/io/Closeable;)V

    .line 40
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzbyz;->g(Ljava/lang/String;)V

    iput-object v0, v5, Lcom/google/android/gms/internal/ads/zzdyc;->c:Ljava/lang/String;

    .line 41
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_160

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->Z4:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 42
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 43
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_159

    goto :goto_160

    :cond_159
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdtf;

    const/4 v2, 0x3

    .line 44
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzdtf;-><init>(I)V

    throw v0

    .line 45
    :cond_160
    :goto_160
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->b()J

    move-result-wide v2

    sub-long/2addr v2, v14

    iput-wide v2, v5, Lcom/google/android/gms/internal/ads/zzdyc;->d:J
    :try_end_16b
    .catch Lcom/google/android/gms/internal/ads/zzdtf; {:try_start_138 .. :try_end_16b} :catch_1f0
    .catchall {:try_start_138 .. :try_end_16b} :catchall_227

    .line 46
    :goto_16b
    :try_start_16b
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_16e
    .catch Ljava/io/IOException; {:try_start_16b .. :try_end_16e} :catch_22c

    goto/16 :goto_225

    :catchall_170
    move-exception v0

    goto :goto_174

    :catchall_172
    move-exception v0

    const/4 v2, 0x0

    .line 47
    :goto_174
    :try_start_174
    invoke-static {v2}, Lcom/google/android/gms/common/util/IOUtils;->b(Ljava/io/Closeable;)V

    .line 48
    throw v0

    :cond_178
    if-lt v6, v9, :cond_1c9

    const/16 v4, 0x190

    if-ge v6, v4, :cond_1c9

    const-string v4, "Location"

    .line 49
    invoke-virtual {v7, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 50
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1bc

    .line 51
    new-instance v6, Ljava/net/URL;

    .line 52
    invoke-direct {v6, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v16, 0x1

    .line 53
    sget-object v8, Lcom/google/android/gms/internal/ads/zzbar;->B4:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 54
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v8

    .line 55
    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8
    :try_end_1a1
    .catch Lcom/google/android/gms/internal/ads/zzdtf; {:try_start_174 .. :try_end_1a1} :catch_1f0
    .catchall {:try_start_174 .. :try_end_1a1} :catchall_227

    if-gt v4, v8, :cond_1af

    .line 56
    :try_start_1a3
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1a6
    .catch Ljava/io/IOException; {:try_start_1a3 .. :try_end_1a6} :catch_22c

    move-object/from16 v1, p0

    move/from16 v16, v4

    move-object v9, v5

    move-object v4, v6

    const/4 v10, 0x1

    goto/16 :goto_55

    :cond_1af
    :try_start_1af
    const-string v0, "Too many redirects."

    .line 57
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdtf;

    const-string v2, "Too many redirects"

    .line 58
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdtf;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1bc
    const-string v0, "No location header to follow redirect."

    .line 59
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdtf;

    const-string v2, "No location header to follow redirect"

    .line 60
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdtf;-><init>(ILjava/lang/String;)V

    throw v0

    .line 61
    :cond_1c9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 62
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdtf;

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    .line 65
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdtf;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_1f0
    .catch Lcom/google/android/gms/internal/ads/zzdtf; {:try_start_1af .. :try_end_1f0} :catch_1f0
    .catchall {:try_start_1af .. :try_end_1f0} :catchall_227

    :catch_1f0
    move-exception v0

    goto :goto_206

    :catch_1f2
    move-exception v0

    goto :goto_1fb

    :catchall_1f4
    move-exception v0

    move-object/from16 v7, p1

    goto :goto_228

    :catch_1f8
    move-exception v0

    move-object/from16 v7, p1

    :goto_1fb
    move-object/from16 v5, v18

    goto :goto_206

    :catchall_1fe
    move-exception v0

    move-object v7, v8

    const/4 v1, 0x1

    goto :goto_228

    :catch_202
    move-exception v0

    move-object v7, v8

    move-object v5, v9

    const/4 v1, 0x1

    .line 66
    :goto_206
    :try_start_206
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbar;->G7:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 67
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v2

    .line 68
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_226

    .line 69
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->b()J

    move-result-wide v2

    sub-long/2addr v2, v14

    iput-wide v2, v5, Lcom/google/android/gms/internal/ads/zzdyc;->d:J

    goto/16 :goto_16b

    :goto_225
    return-object v5

    .line 70
    :cond_226
    throw v0
    :try_end_227
    .catchall {:try_start_206 .. :try_end_227} :catchall_227

    :catchall_227
    move-exception v0

    .line 71
    :goto_228
    :try_start_228
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 72
    throw v0
    :try_end_22c
    .catch Ljava/io/IOException; {:try_start_228 .. :try_end_22c} :catch_22c

    :catch_22c
    move-exception v0

    goto :goto_230

    :catch_22e
    move-exception v0

    const/4 v1, 0x1

    .line 73
    :goto_230
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error while connecting to ad server: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdtf;

    .line 75
    invoke-direct {v3, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzdtf;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_248

    :goto_247
    throw v3

    :goto_248
    goto :goto_247
.end method
