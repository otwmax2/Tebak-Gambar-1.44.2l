###### Class com.android.volley.toolbox.NetworkUtility (com.android.volley.toolbox.NetworkUtility)
.class final Lcom/android/volley/toolbox/NetworkUtility;
.super Ljava/lang/Object;
.source "NetworkUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/android/volley/Request;Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/VolleyError;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/volley/Request;->O()Lcom/android/volley/RetryPolicy;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/android/volley/Request;->P()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 3
    :try_start_b
    invoke-static {p1}, Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;->a(Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;)Lcom/android/volley/VolleyError;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/android/volley/RetryPolicy;->a(Lcom/android/volley/VolleyError;)V
    :try_end_12
    .catch Lcom/android/volley/VolleyError; {:try_start_b .. :try_end_12} :catch_2a

    new-array v0, v4, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;->b(Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "%s-retry [timeout=%s]"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/volley/Request;->e(Ljava/lang/String;)V

    return-void

    :catch_2a
    move-exception v0

    new-array v4, v4, [Ljava/lang/Object;

    .line 5
    invoke-static {p1}, Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;->b(Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    const-string p1, "%s-timeout-giveup [timeout=%s]"

    .line 6
    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/volley/Request;->e(Ljava/lang/String;)V

    .line 8
    throw v0
.end method

.method static b(Lcom/android/volley/Request;JLjava/util/List;)Lcom/android/volley/NetworkResponse;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;J",
            "Ljava/util/List<",
            "Lcom/android/volley/Header;",
            ">;)",
            "Lcom/android/volley/NetworkResponse;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/volley/Request;->p()Lcom/android/volley/Cache$Entry;

    move-result-object p0

    if-nez p0, :cond_13

    .line 2
    new-instance p0, Lcom/android/volley/NetworkResponse;

    const/16 v1, 0x130

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/volley/NetworkResponse;-><init>(I[BZJLjava/util/List;)V

    return-object p0

    .line 3
    :cond_13
    invoke-static {p3, p0}, Lcom/android/volley/toolbox/HttpHeaderParser;->a(Ljava/util/List;Lcom/android/volley/Cache$Entry;)Ljava/util/List;

    move-result-object v10

    .line 4
    new-instance p3, Lcom/android/volley/NetworkResponse;

    const/16 v5, 0x130

    iget-object v6, p0, Lcom/android/volley/Cache$Entry;->a:[B

    const/4 v7, 0x1

    move-object v4, p3

    move-wide v8, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/volley/NetworkResponse;-><init>(I[BZJLjava/util/List;)V

    return-object p3
.end method

.method static c(Ljava/io/InputStream;ILcom/android/volley/toolbox/ByteArrayPool;)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Error occurred when closing InputStream"

    .line 1
    new-instance v1, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;

    invoke-direct {v1, p2, p1}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;-><init>(Lcom/android/volley/toolbox/ByteArrayPool;I)V

    const/16 p1, 0x400

    const/4 v2, 0x0

    .line 2
    :try_start_a
    invoke-virtual {p2, p1}, Lcom/android/volley/toolbox/ByteArrayPool;->a(I)[B

    move-result-object p1
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_2f

    .line 3
    :goto_e
    :try_start_e
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_19

    .line 4
    invoke-virtual {v1, p1, v2, v3}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->write([BII)V

    goto :goto_e

    .line 5
    :cond_19
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_2d

    .line 6
    :try_start_1d
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_26

    :catch_21
    new-array p0, v2, [Ljava/lang/Object;

    .line 7
    invoke-static {v0, p0}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    :goto_26
    invoke-virtual {p2, p1}, Lcom/android/volley/toolbox/ByteArrayPool;->b([B)V

    .line 9
    invoke-virtual {v1}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->close()V

    return-object v3

    :catchall_2d
    move-exception v3

    goto :goto_31

    :catchall_2f
    move-exception v3

    const/4 p1, 0x0

    :goto_31
    if-eqz p0, :cond_3c

    .line 10
    :try_start_33
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_37

    goto :goto_3c

    :catch_37
    new-array p0, v2, [Ljava/lang/Object;

    .line 11
    invoke-static {v0, p0}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    :cond_3c
    :goto_3c
    invoke-virtual {p2, p1}, Lcom/android/volley/toolbox/ByteArrayPool;->b([B)V

    .line 13
    invoke-virtual {v1}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->close()V

    goto :goto_44

    :goto_43
    throw v3

    :goto_44
    goto :goto_43
.end method

.method static d(JLcom/android/volley/Request;[BI)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/android/volley/Request<",
            "*>;[BI)V"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/android/volley/VolleyLog;->b:Z

    if-nez v0, :cond_a

    const-wide/16 v0, 0xbb8

    cmp-long v2, p0, v0

    if-lez v2, :cond_3f

    :cond_a
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v0, v1

    const/4 p0, 0x2

    if-eqz p3, :cond_20

    .line 3
    array-length p1, p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_22

    :cond_20
    const-string p1, "null"

    :goto_22
    aput-object p1, v0, p0

    const/4 p0, 0x3

    .line 4
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, p0

    const/4 p0, 0x4

    .line 5
    invoke-virtual {p2}, Lcom/android/volley/Request;->O()Lcom/android/volley/RetryPolicy;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/volley/RetryPolicy;->c()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, p0

    const-string p0, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    .line 6
    invoke-static {p0, v0}, Lcom/android/volley/VolleyLog;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3f
    return-void
.end method

.method static e(Lcom/android/volley/Request;Ljava/io/IOException;JLcom/android/volley/toolbox/HttpResponse;[B)Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Ljava/io/IOException;",
            "J",
            "Lcom/android/volley/toolbox/HttpResponse;",
            "[B)",
            "Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/VolleyError;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 2
    new-instance p0, Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;

    new-instance p1, Lcom/android/volley/TimeoutError;

    invoke-direct {p1}, Lcom/android/volley/TimeoutError;-><init>()V

    const-string p2, "socket"

    invoke-direct {p0, p2, p1, v1}, Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;-><init>(Ljava/lang/String;Lcom/android/volley/VolleyError;Lcom/android/volley/toolbox/NetworkUtility$1;)V

    return-object p0

    .line 3
    :cond_12
    instance-of v0, p1, Ljava/net/MalformedURLException;

    if-nez v0, :cond_b3

    if-eqz p4, :cond_9a

    .line 4
    invoke-virtual {p4}, Lcom/android/volley/toolbox/HttpResponse;->d()I

    move-result p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/volley/Request;->R()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "Unexpected response code %d for %s"

    invoke-static {v2, v0}, Lcom/android/volley/VolleyLog;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p5, :cond_8d

    .line 6
    invoke-virtual {p4}, Lcom/android/volley/toolbox/HttpResponse;->c()Ljava/util/List;

    move-result-object v8

    .line 7
    new-instance p4, Lcom/android/volley/NetworkResponse;

    const/4 v5, 0x0

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v6, v2, p2

    move-object v2, p4

    move v3, p1

    move-object v4, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/volley/NetworkResponse;-><init>(I[BZJLjava/util/List;)V

    const/16 p2, 0x191

    if-eq p1, p2, :cond_80

    const/16 p2, 0x193

    if-ne p1, p2, :cond_50

    goto :goto_80

    :cond_50
    const/16 p2, 0x190

    if-lt p1, p2, :cond_5f

    const/16 p2, 0x1f3

    if-le p1, p2, :cond_59

    goto :goto_5f

    .line 9
    :cond_59
    new-instance p0, Lcom/android/volley/ClientError;

    invoke-direct {p0, p4}, Lcom/android/volley/ClientError;-><init>(Lcom/android/volley/NetworkResponse;)V

    throw p0

    :cond_5f
    :goto_5f
    const/16 p2, 0x1f4

    if-lt p1, p2, :cond_7a

    const/16 p2, 0x257

    if-gt p1, p2, :cond_7a

    .line 10
    invoke-virtual {p0}, Lcom/android/volley/Request;->h0()Z

    move-result p0

    if-eqz p0, :cond_7a

    .line 11
    new-instance p0, Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;

    new-instance p1, Lcom/android/volley/ServerError;

    invoke-direct {p1, p4}, Lcom/android/volley/ServerError;-><init>(Lcom/android/volley/NetworkResponse;)V

    const-string p2, "server"

    invoke-direct {p0, p2, p1, v1}, Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;-><init>(Ljava/lang/String;Lcom/android/volley/VolleyError;Lcom/android/volley/toolbox/NetworkUtility$1;)V

    return-object p0

    .line 12
    :cond_7a
    new-instance p0, Lcom/android/volley/ServerError;

    invoke-direct {p0, p4}, Lcom/android/volley/ServerError;-><init>(Lcom/android/volley/NetworkResponse;)V

    throw p0

    .line 13
    :cond_80
    :goto_80
    new-instance p0, Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;

    new-instance p1, Lcom/android/volley/AuthFailureError;

    invoke-direct {p1, p4}, Lcom/android/volley/AuthFailureError;-><init>(Lcom/android/volley/NetworkResponse;)V

    const-string p2, "auth"

    invoke-direct {p0, p2, p1, v1}, Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;-><init>(Ljava/lang/String;Lcom/android/volley/VolleyError;Lcom/android/volley/toolbox/NetworkUtility$1;)V

    return-object p0

    .line 14
    :cond_8d
    new-instance p0, Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;

    new-instance p1, Lcom/android/volley/NetworkError;

    invoke-direct {p1}, Lcom/android/volley/NetworkError;-><init>()V

    const-string p2, "network"

    invoke-direct {p0, p2, p1, v1}, Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;-><init>(Ljava/lang/String;Lcom/android/volley/VolleyError;Lcom/android/volley/toolbox/NetworkUtility$1;)V

    return-object p0

    .line 15
    :cond_9a
    invoke-virtual {p0}, Lcom/android/volley/Request;->g0()Z

    move-result p0

    if-eqz p0, :cond_ad

    .line 16
    new-instance p0, Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;

    new-instance p1, Lcom/android/volley/NoConnectionError;

    invoke-direct {p1}, Lcom/android/volley/NoConnectionError;-><init>()V

    const-string p2, "connection"

    invoke-direct {p0, p2, p1, v1}, Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;-><init>(Ljava/lang/String;Lcom/android/volley/VolleyError;Lcom/android/volley/toolbox/NetworkUtility$1;)V

    return-object p0

    .line 17
    :cond_ad
    new-instance p0, Lcom/android/volley/NoConnectionError;

    invoke-direct {p0, p1}, Lcom/android/volley/NoConnectionError;-><init>(Ljava/lang/Throwable;)V

    throw p0

    .line 18
    :cond_b3
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Bad URL "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/volley/Request;->R()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

###### Class com.android.volley.toolbox.NetworkUtility.AnonymousClass1 (com.android.volley.toolbox.NetworkUtility$1)
.class synthetic Lcom/android/volley/toolbox/NetworkUtility$1;
.super Ljava/lang/Object;
.source "NetworkUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/toolbox/NetworkUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.android.volley.toolbox.NetworkUtility.RetryInfo (com.android.volley.toolbox.NetworkUtility$RetryInfo)
.class Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;
.super Ljava/lang/Object;
.source "NetworkUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/toolbox/NetworkUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RetryInfo"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/android/volley/VolleyError;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/android/volley/VolleyError;)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;->b:Lcom/android/volley/VolleyError;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/android/volley/VolleyError;Lcom/android/volley/toolbox/NetworkUtility$1;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;-><init>(Ljava/lang/String;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method static synthetic a(Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;)Lcom/android/volley/VolleyError;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;->b:Lcom/android/volley/VolleyError;

    return-object p0
.end method

.method static synthetic b(Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;->a:Ljava/lang/String;

    return-object p0
.end method
