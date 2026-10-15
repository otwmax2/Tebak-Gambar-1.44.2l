###### Class com.android.volley.toolbox.BasicNetwork (com.android.volley.toolbox.BasicNetwork)
.class public Lcom/android/volley/toolbox/BasicNetwork;
.super Ljava/lang/Object;
.source "BasicNetwork.java"

# interfaces
.implements Lcom/android/volley/Network;


# instance fields
.field private final a:Lcom/android/volley/toolbox/BaseHttpStack;

.field protected final b:Lcom/android/volley/toolbox/ByteArrayPool;


# virtual methods
.method public a(Lcom/android/volley/Request;)Lcom/android/volley/NetworkResponse;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;)",
            "Lcom/android/volley/NetworkResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/VolleyError;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 2
    :goto_8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    const/4 v2, 0x0

    .line 3
    :try_start_c
    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->p()Lcom/android/volley/Cache$Entry;

    move-result-object v0

    invoke-static {v0}, Lcom/android/volley/toolbox/HttpHeaderParser;->c(Lcom/android/volley/Cache$Entry;)Ljava/util/Map;

    move-result-object v0

    .line 4
    iget-object v3, v1, Lcom/android/volley/toolbox/BasicNetwork;->a:Lcom/android/volley/toolbox/BaseHttpStack;

    invoke-virtual {v3, v8, v0}, Lcom/android/volley/toolbox/BaseHttpStack;->b(Lcom/android/volley/Request;Ljava/util/Map;)Lcom/android/volley/toolbox/HttpResponse;

    move-result-object v3
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1a} :catch_70

    .line 5
    :try_start_1a
    invoke-virtual {v3}, Lcom/android/volley/toolbox/HttpResponse;->d()I

    move-result v12

    .line 6
    invoke-virtual {v3}, Lcom/android/volley/toolbox/HttpResponse;->c()Ljava/util/List;

    move-result-object v0

    const/16 v4, 0x130

    if-ne v12, v4, :cond_30

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v9

    .line 8
    invoke-static {v8, v4, v5, v0}, Lcom/android/volley/toolbox/NetworkUtility;->b(Lcom/android/volley/Request;JLjava/util/List;)Lcom/android/volley/NetworkResponse;

    move-result-object v0

    return-object v0

    .line 9
    :cond_30
    invoke-virtual {v3}, Lcom/android/volley/toolbox/HttpResponse;->a()Ljava/io/InputStream;

    move-result-object v4

    if-eqz v4, :cond_41

    .line 10
    invoke-virtual {v3}, Lcom/android/volley/toolbox/HttpResponse;->b()I

    move-result v5

    iget-object v6, v1, Lcom/android/volley/toolbox/BasicNetwork;->b:Lcom/android/volley/toolbox/ByteArrayPool;

    .line 11
    invoke-static {v4, v5, v6}, Lcom/android/volley/toolbox/NetworkUtility;->c(Ljava/io/InputStream;ILcom/android/volley/toolbox/ByteArrayPool;)[B

    move-result-object v2

    goto :goto_44

    :cond_41
    const/4 v4, 0x0

    new-array v2, v4, [B

    .line 12
    :goto_44
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v9

    .line 13
    invoke-static {v4, v5, v8, v2, v12}, Lcom/android/volley/toolbox/NetworkUtility;->d(JLcom/android/volley/Request;[BI)V

    const/16 v4, 0xc8

    if-lt v12, v4, :cond_65

    const/16 v4, 0x12b

    if-gt v12, v4, :cond_65

    .line 14
    new-instance v4, Lcom/android/volley/NetworkResponse;

    const/4 v14, 0x0

    .line 15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long v15, v5, v9

    move-object v11, v4

    move-object v13, v2

    move-object/from16 v17, v0

    invoke-direct/range {v11 .. v17}, Lcom/android/volley/NetworkResponse;-><init>(I[BZJLjava/util/List;)V

    return-object v4

    .line 16
    :cond_65
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_6b} :catch_6b

    :catch_6b
    move-exception v0

    move-object v7, v2

    move-object v6, v3

    move-object v3, v0

    goto :goto_74

    :catch_70
    move-exception v0

    move-object v3, v0

    move-object v6, v2

    move-object v7, v6

    :goto_74
    move-object/from16 v2, p1

    move-wide v4, v9

    .line 17
    invoke-static/range {v2 .. v7}, Lcom/android/volley/toolbox/NetworkUtility;->e(Lcom/android/volley/Request;Ljava/io/IOException;JLcom/android/volley/toolbox/HttpResponse;[B)Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;

    move-result-object v0

    .line 18
    invoke-static {v8, v0}, Lcom/android/volley/toolbox/NetworkUtility;->a(Lcom/android/volley/Request;Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;)V

    goto :goto_8
.end method
