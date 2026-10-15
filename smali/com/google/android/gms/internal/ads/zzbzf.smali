###### Class com.google.android.gms.internal.ads.zzbzf (com.google.android.gms.internal.ads.zzbzf)
.class public Lcom/google/android/gms/internal/ads/zzbzf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbys;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzf;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbzf;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/String;)Z
    .registers 8

    const-string v0, ". "

    const/4 v1, 0x0

    .line 1
    :try_start_3
    invoke-static {}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->a()Z

    move-result v2

    if-eqz v2, :cond_e

    const/16 v2, 0x107

    .line 2
    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pinging URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    .line 4
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 6
    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_2d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_2d} :catch_91
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_2d} :catch_8f
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_2d} :catch_8d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_98

    .line 7
    :try_start_2d
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->b()Lcom/google/android/gms/internal/ads/zzbyt;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbzf;->a:Ljava/lang/String;

    const v4, 0xea60

    .line 8
    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/4 v5, 0x1

    .line 9
    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 10
    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    if-eqz v3, :cond_46

    const-string v4, "User-Agent"

    .line 11
    invoke-virtual {v2, v4, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_46
    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 13
    new-instance v3, Lcom/google/android/gms/internal/ads/zzbyz;

    const/4 v4, 0x0

    .line 14
    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/zzbyz;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzbyz;->c(Ljava/net/HttpURLConnection;[B)V

    .line 16
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 17
    invoke-virtual {v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzbyz;->e(Ljava/net/HttpURLConnection;I)V

    const/16 v3, 0xc8

    if-lt v4, v3, :cond_64

    const/16 v3, 0x12c

    if-lt v4, v3, :cond_62

    goto :goto_64

    :cond_62
    const/4 v1, 0x1

    goto :goto_80

    :cond_64
    :goto_64
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received non-success response code "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " from pinging URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V
    :try_end_80
    .catchall {:try_start_2d .. :try_end_80} :catchall_93

    .line 19
    :goto_80
    :try_start_80
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_83
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_80 .. :try_end_83} :catch_91
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_8f
    .catch Ljava/lang/RuntimeException; {:try_start_80 .. :try_end_83} :catch_8d
    .catchall {:try_start_80 .. :try_end_83} :catchall_98

    .line 20
    invoke-static {}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->a()Z

    move-result p1

    if-eqz p1, :cond_e7

    .line 21
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    return v1

    :catch_8d
    move-exception v2

    goto :goto_9a

    :catch_8f
    move-exception v2

    goto :goto_9a

    :catch_91
    move-exception v2

    goto :goto_c3

    :catchall_93
    move-exception v3

    .line 22
    :try_start_94
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 23
    throw v3
    :try_end_98
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_94 .. :try_end_98} :catch_91
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_98} :catch_8f
    .catch Ljava/lang/RuntimeException; {:try_start_94 .. :try_end_98} :catch_8d
    .catchall {:try_start_94 .. :try_end_98} :catchall_98

    :catchall_98
    move-exception p1

    goto :goto_ec

    .line 24
    :goto_9a
    :try_start_9a
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while pinging URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V
    :try_end_b8
    .catchall {:try_start_9a .. :try_end_b8} :catchall_98

    .line 25
    invoke-static {}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->a()Z

    move-result p1

    if-nez p1, :cond_bf

    goto :goto_e7

    .line 26
    :cond_bf
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    return v1

    .line 27
    :goto_c3
    :try_start_c3
    invoke-virtual {v2}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while parsing ping URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V
    :try_end_e1
    .catchall {:try_start_c3 .. :try_end_e1} :catchall_98

    .line 28
    invoke-static {}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->a()Z

    move-result p1

    if-nez p1, :cond_e8

    :cond_e7
    :goto_e7
    return v1

    .line 29
    :cond_e8
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    return v1

    .line 30
    :goto_ec
    invoke-static {}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->a()Z

    move-result v0

    if-eqz v0, :cond_f5

    .line 31
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 32
    :cond_f5
    throw p1
.end method
