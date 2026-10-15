###### Class com.google.android.datatransport.cct.d (com.google.android.datatransport.cct.d)
.class final Lcom/google/android/datatransport/cct/d;
.super Ljava/lang/Object;
.source "CctTransportBackend.java"

# interfaces
.implements Lm3/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/cct/d$a;,
        Lcom/google/android/datatransport/cct/d$b;
    }
.end annotation


# instance fields
.field private final a:Ld6/a;

.field private final b:Landroid/net/ConnectivityManager;

.field private final c:Landroid/content/Context;

.field final d:Ljava/net/URL;

.field private final e:Lv3/a;

.field private final f:Lv3/a;

.field private final g:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lv3/a;Lv3/a;)V
    .registers 5

    const v0, 0x1fbd0

    .line 9
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/datatransport/cct/d;-><init>(Landroid/content/Context;Lv3/a;Lv3/a;I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lv3/a;Lv3/a;I)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lk3/j;->b()Ld6/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/datatransport/cct/d;->a:Ld6/a;

    .line 3
    iput-object p1, p0, Lcom/google/android/datatransport/cct/d;->c:Landroid/content/Context;

    const-string v0, "connectivity"

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/google/android/datatransport/cct/d;->b:Landroid/net/ConnectivityManager;

    .line 5
    sget-object p1, Lcom/google/android/datatransport/cct/a;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/datatransport/cct/d;->n(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/cct/d;->d:Ljava/net/URL;

    .line 6
    iput-object p3, p0, Lcom/google/android/datatransport/cct/d;->e:Lv3/a;

    .line 7
    iput-object p2, p0, Lcom/google/android/datatransport/cct/d;->f:Lv3/a;

    .line 8
    iput p4, p0, Lcom/google/android/datatransport/cct/d;->g:I

    return-void
.end method

.method public static synthetic c(Lcom/google/android/datatransport/cct/d$a;Lcom/google/android/datatransport/cct/d$b;)Lcom/google/android/datatransport/cct/d$a;
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/datatransport/cct/d;->l(Lcom/google/android/datatransport/cct/d$a;Lcom/google/android/datatransport/cct/d$b;)Lcom/google/android/datatransport/cct/d$a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/google/android/datatransport/cct/d;Lcom/google/android/datatransport/cct/d$a;)Lcom/google/android/datatransport/cct/d$b;
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/datatransport/cct/d;->e(Lcom/google/android/datatransport/cct/d$a;)Lcom/google/android/datatransport/cct/d$b;

    move-result-object p0

    return-object p0
.end method

.method private e(Lcom/google/android/datatransport/cct/d$a;)Lcom/google/android/datatransport/cct/d$b;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/google/android/datatransport/cct/d$a;->a:Ljava/net/URL;

    const-string v1, "CctTransportBackend"

    const-string v2, "Making request to: %s"

    invoke-static {v1, v2, v0}, Lp3/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iget-object v0, p1, Lcom/google/android/datatransport/cct/d$a;->a:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/16 v2, 0x7530

    .line 3
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 4
    iget v2, p0, Lcom/google/android/datatransport/cct/d;->g:I

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v4, "POST"

    .line 7
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "3.1.9"

    aput-object v4, v2, v3

    const-string v3, "datatransport/%s android/"

    .line 8
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "User-Agent"

    .line 9
    invoke-virtual {v0, v3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-Encoding"

    const-string v3, "gzip"

    .line 10
    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Content-Type"

    const-string v5, "application/json"

    .line 11
    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Accept-Encoding"

    .line 12
    invoke-virtual {v0, v5, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v3, p1, Lcom/google/android/datatransport/cct/d$a;->c:Ljava/lang/String;

    if-eqz v3, :cond_55

    const-string v5, "X-Goog-Api-Key"

    .line 14
    invoke-virtual {v0, v5, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_55
    const-wide/16 v5, 0x0

    const/4 v3, 0x0

    .line 15
    :try_start_58
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7
    :try_end_5c
    .catch Ljava/net/ConnectException; {:try_start_58 .. :try_end_5c} :catch_12f
    .catch Ljava/net/UnknownHostException; {:try_start_58 .. :try_end_5c} :catch_12d
    .catch Ld6/b; {:try_start_58 .. :try_end_5c} :catch_11f
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5c} :catch_11d

    .line 16
    :try_start_5c
    new-instance v8, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v8, v7}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_61
    .catchall {:try_start_5c .. :try_end_61} :catchall_111

    .line 17
    :try_start_61
    iget-object v9, p0, Lcom/google/android/datatransport/cct/d;->a:Ld6/a;

    iget-object p1, p1, Lcom/google/android/datatransport/cct/d$a;->b:Lk3/j;

    new-instance v10, Ljava/io/BufferedWriter;

    new-instance v11, Ljava/io/OutputStreamWriter;

    invoke-direct {v11, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v10, v11}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-interface {v9, p1, v10}, Ld6/a;->a(Ljava/lang/Object;Ljava/io/Writer;)V
    :try_end_72
    .catchall {:try_start_61 .. :try_end_72} :catchall_107

    .line 18
    :try_start_72
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_111

    if-eqz v7, :cond_7a

    :try_start_77
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_7a
    .catch Ljava/net/ConnectException; {:try_start_77 .. :try_end_7a} :catch_12f
    .catch Ljava/net/UnknownHostException; {:try_start_77 .. :try_end_7a} :catch_12d
    .catch Ld6/b; {:try_start_77 .. :try_end_7a} :catch_11f
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_11d

    .line 19
    :cond_7a
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "Status Code: %d"

    invoke-static {v1, v8, v7}, Lp3/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "Content-Type: %s"

    invoke-static {v1, v7, v4}, Lp3/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "Content-Encoding: %s"

    invoke-static {v1, v7, v4}, Lp3/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v1, 0x12e

    if-eq p1, v1, :cond_f6

    const/16 v1, 0x12d

    if-eq p1, v1, :cond_f6

    const/16 v1, 0x133

    if-ne p1, v1, :cond_a6

    goto :goto_f6

    :cond_a6
    const/16 v1, 0xc8

    if-eq p1, v1, :cond_b0

    .line 23
    new-instance v0, Lcom/google/android/datatransport/cct/d$b;

    invoke-direct {v0, p1, v3, v5, v6}, Lcom/google/android/datatransport/cct/d$b;-><init>(ILjava/net/URL;J)V

    return-object v0

    .line 24
    :cond_b0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 25
    :try_start_b4
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/datatransport/cct/d;->m(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_bc
    .catchall {:try_start_b4 .. :try_end_bc} :catchall_ea

    .line 26
    :try_start_bc
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 27
    invoke-static {v2}, Lk3/n;->b(Ljava/io/Reader;)Lk3/n;

    move-result-object v2

    .line 28
    invoke-virtual {v2}, Lk3/n;->c()J

    move-result-wide v4

    .line 29
    new-instance v2, Lcom/google/android/datatransport/cct/d$b;

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/google/android/datatransport/cct/d$b;-><init>(ILjava/net/URL;J)V
    :try_end_d3
    .catchall {:try_start_bc .. :try_end_d3} :catchall_de

    if-eqz v0, :cond_d8

    .line 30
    :try_start_d5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_d8
    .catchall {:try_start_d5 .. :try_end_d8} :catchall_ea

    :cond_d8
    if-eqz v1, :cond_dd

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_dd
    return-object v2

    :catchall_de
    move-exception p1

    if-eqz v0, :cond_e9

    .line 31
    :try_start_e1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_e4
    .catchall {:try_start_e1 .. :try_end_e4} :catchall_e5

    goto :goto_e9

    :catchall_e5
    move-exception v0

    :try_start_e6
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_e9
    :goto_e9
    throw p1
    :try_end_ea
    .catchall {:try_start_e6 .. :try_end_ea} :catchall_ea

    :catchall_ea
    move-exception p1

    if-eqz v1, :cond_f5

    :try_start_ed
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_f0
    .catchall {:try_start_ed .. :try_end_f0} :catchall_f1

    goto :goto_f5

    :catchall_f1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_f5
    :goto_f5
    throw p1

    :cond_f6
    :goto_f6
    const-string v1, "Location"

    .line 32
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    new-instance v1, Lcom/google/android/datatransport/cct/d$b;

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, p1, v2, v5, v6}, Lcom/google/android/datatransport/cct/d$b;-><init>(ILjava/net/URL;J)V

    return-object v1

    :catchall_107
    move-exception p1

    .line 34
    :try_start_108
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_10b
    .catchall {:try_start_108 .. :try_end_10b} :catchall_10c

    goto :goto_110

    :catchall_10c
    move-exception v0

    :try_start_10d
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_110
    throw p1
    :try_end_111
    .catchall {:try_start_10d .. :try_end_111} :catchall_111

    :catchall_111
    move-exception p1

    if-eqz v7, :cond_11c

    :try_start_114
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_117
    .catchall {:try_start_114 .. :try_end_117} :catchall_118

    goto :goto_11c

    :catchall_118
    move-exception v0

    :try_start_119
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_11c
    :goto_11c
    throw p1
    :try_end_11d
    .catch Ljava/net/ConnectException; {:try_start_119 .. :try_end_11d} :catch_12f
    .catch Ljava/net/UnknownHostException; {:try_start_119 .. :try_end_11d} :catch_12d
    .catch Ld6/b; {:try_start_119 .. :try_end_11d} :catch_11f
    .catch Ljava/io/IOException; {:try_start_119 .. :try_end_11d} :catch_11d

    :catch_11d
    move-exception p1

    goto :goto_120

    :catch_11f
    move-exception p1

    :goto_120
    const-string v0, "Couldn\'t encode request, returning with 400"

    .line 35
    invoke-static {v1, v0, p1}, Lp3/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    new-instance p1, Lcom/google/android/datatransport/cct/d$b;

    const/16 v0, 0x190

    invoke-direct {p1, v0, v3, v5, v6}, Lcom/google/android/datatransport/cct/d$b;-><init>(ILjava/net/URL;J)V

    return-object p1

    :catch_12d
    move-exception p1

    goto :goto_130

    :catch_12f
    move-exception p1

    :goto_130
    const-string v0, "Couldn\'t open connection, returning with 500"

    .line 37
    invoke-static {v1, v0, p1}, Lp3/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    new-instance p1, Lcom/google/android/datatransport/cct/d$b;

    const/16 v0, 0x1f4

    invoke-direct {p1, v0, v3, v5, v6}, Lcom/google/android/datatransport/cct/d$b;-><init>(ILjava/net/URL;J)V

    return-object p1
.end method

.method private static f(Landroid/net/NetworkInfo;)I
    .registers 2

    if-nez p0, :cond_9

    .line 1
    sget-object p0, Lk3/o$b;->p:Lk3/o$b;

    invoke-virtual {p0}, Lk3/o$b;->e()I

    move-result p0

    return p0

    .line 2
    :cond_9
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_17

    .line 3
    sget-object p0, Lk3/o$b;->J:Lk3/o$b;

    invoke-virtual {p0}, Lk3/o$b;->e()I

    move-result p0

    return p0

    .line 4
    :cond_17
    invoke-static {p0}, Lk3/o$b;->c(I)Lk3/o$b;

    move-result-object v0

    if-eqz v0, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    return p0
.end method

.method private static g(Landroid/net/NetworkInfo;)I
    .registers 1

    if-nez p0, :cond_9

    .line 1
    sget-object p0, Lk3/o$c;->H:Lk3/o$c;

    invoke-virtual {p0}, Lk3/o$c;->e()I

    move-result p0

    return p0

    .line 2
    :cond_9
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    return p0
.end method

.method private static h(Landroid/content/Context;)I
    .registers 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_f} :catch_10

    return p0

    :catch_10
    move-exception p0

    const-string v0, "CctTransportBackend"

    const-string v1, "Unable to find version code for package"

    .line 3
    invoke-static {v0, v1, p0}, Lp3/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method private i(Lm3/f;)Lk3/j;
    .registers 11

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-virtual {p1}, Lm3/f;->b()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll3/i;

    .line 3
    invoke-virtual {v1}, Ll3/i;->j()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 8
    :cond_2f
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 9
    :cond_39
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_46
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 11
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll3/i;

    .line 12
    invoke-static {}, Lk3/m;->a()Lk3/m$a;

    move-result-object v3

    sget-object v4, Lk3/p;->p:Lk3/p;

    .line 13
    invoke-virtual {v3, v4}, Lk3/m$a;->f(Lk3/p;)Lk3/m$a;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/datatransport/cct/d;->f:Lv3/a;

    .line 14
    invoke-interface {v4}, Lv3/a;->a()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lk3/m$a;->g(J)Lk3/m$a;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/datatransport/cct/d;->e:Lv3/a;

    .line 15
    invoke-interface {v4}, Lv3/a;->a()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lk3/m$a;->h(J)Lk3/m$a;

    move-result-object v3

    .line 16
    invoke-static {}, Lk3/k;->a()Lk3/k$a;

    move-result-object v4

    sget-object v5, Lk3/k$b;->q:Lk3/k$b;

    .line 17
    invoke-virtual {v4, v5}, Lk3/k$a;->c(Lk3/k$b;)Lk3/k$a;

    move-result-object v4

    .line 18
    invoke-static {}, Lk3/a;->a()Lk3/a$a;

    move-result-object v5

    const-string v6, "sdk-version"

    .line 19
    invoke-virtual {v2, v6}, Ll3/i;->g(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lk3/a$a;->m(Ljava/lang/Integer;)Lk3/a$a;

    move-result-object v5

    const-string v6, "model"

    .line 20
    invoke-virtual {v2, v6}, Ll3/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lk3/a$a;->j(Ljava/lang/String;)Lk3/a$a;

    move-result-object v5

    const-string v6, "hardware"

    .line 21
    invoke-virtual {v2, v6}, Ll3/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lk3/a$a;->f(Ljava/lang/String;)Lk3/a$a;

    move-result-object v5

    const-string v6, "device"

    .line 22
    invoke-virtual {v2, v6}, Ll3/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lk3/a$a;->d(Ljava/lang/String;)Lk3/a$a;

    move-result-object v5

    const-string v6, "product"

    .line 23
    invoke-virtual {v2, v6}, Ll3/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lk3/a$a;->l(Ljava/lang/String;)Lk3/a$a;

    move-result-object v5

    const-string v6, "os-uild"

    .line 24
    invoke-virtual {v2, v6}, Ll3/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lk3/a$a;->k(Ljava/lang/String;)Lk3/a$a;

    move-result-object v5

    const-string v6, "manufacturer"

    .line 25
    invoke-virtual {v2, v6}, Ll3/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lk3/a$a;->h(Ljava/lang/String;)Lk3/a$a;

    move-result-object v5

    const-string v6, "fingerprint"

    .line 26
    invoke-virtual {v2, v6}, Ll3/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lk3/a$a;->e(Ljava/lang/String;)Lk3/a$a;

    move-result-object v5

    const-string v6, "country"

    .line 27
    invoke-virtual {v2, v6}, Ll3/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lk3/a$a;->c(Ljava/lang/String;)Lk3/a$a;

    move-result-object v5

    const-string v6, "locale"

    .line 28
    invoke-virtual {v2, v6}, Ll3/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lk3/a$a;->g(Ljava/lang/String;)Lk3/a$a;

    move-result-object v5

    const-string v6, "mcc_mnc"

    .line 29
    invoke-virtual {v2, v6}, Ll3/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lk3/a$a;->i(Ljava/lang/String;)Lk3/a$a;

    move-result-object v5

    const-string v6, "application_build"

    .line 30
    invoke-virtual {v2, v6}, Ll3/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lk3/a$a;->b(Ljava/lang/String;)Lk3/a$a;

    move-result-object v2

    .line 31
    invoke-virtual {v2}, Lk3/a$a;->a()Lk3/a;

    move-result-object v2

    .line 32
    invoke-virtual {v4, v2}, Lk3/k$a;->b(Lk3/a;)Lk3/k$a;

    move-result-object v2

    .line 33
    invoke-virtual {v2}, Lk3/k$a;->a()Lk3/k;

    move-result-object v2

    .line 34
    invoke-virtual {v3, v2}, Lk3/m$a;->b(Lk3/k;)Lk3/m$a;

    move-result-object v2

    .line 35
    :try_start_117
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lk3/m$a;->i(I)Lk3/m$a;
    :try_end_124
    .catch Ljava/lang/NumberFormatException; {:try_start_117 .. :try_end_124} :catch_125

    goto :goto_12e

    .line 36
    :catch_125
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lk3/m$a;->j(Ljava/lang/String;)Lk3/m$a;

    .line 37
    :goto_12e
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 38
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ll3/i;

    .line 39
    invoke-virtual {v4}, Ll3/i;->e()Ll3/h;

    move-result-object v5

    .line 40
    invoke-virtual {v5}, Ll3/h;->b()Lj3/b;

    move-result-object v6

    const-string v7, "proto"

    .line 41
    invoke-static {v7}, Lj3/b;->b(Ljava/lang/String;)Lj3/b;

    move-result-object v7

    invoke-virtual {v6, v7}, Lj3/b;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_166

    .line 42
    invoke-virtual {v5}, Ll3/h;->a()[B

    move-result-object v5

    invoke-static {v5}, Lk3/l;->j([B)Lk3/l$a;

    move-result-object v5

    goto :goto_185

    :cond_166
    const-string v7, "json"

    .line 43
    invoke-static {v7}, Lj3/b;->b(Ljava/lang/String;)Lj3/b;

    move-result-object v7

    invoke-virtual {v6, v7}, Lj3/b;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1dc

    .line 44
    new-instance v6, Ljava/lang/String;

    .line 45
    invoke-virtual {v5}, Ll3/h;->a()[B

    move-result-object v5

    const-string v7, "UTF-8"

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v6}, Lk3/l;->i(Ljava/lang/String;)Lk3/l$a;

    move-result-object v5

    .line 46
    :goto_185
    invoke-virtual {v4}, Ll3/i;->f()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lk3/l$a;->c(J)Lk3/l$a;

    move-result-object v6

    .line 47
    invoke-virtual {v4}, Ll3/i;->k()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lk3/l$a;->d(J)Lk3/l$a;

    move-result-object v6

    const-string v7, "tz-offset"

    .line 48
    invoke-virtual {v4, v7}, Ll3/i;->h(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lk3/l$a;->h(J)Lk3/l$a;

    move-result-object v6

    .line 49
    invoke-static {}, Lk3/o;->a()Lk3/o$a;

    move-result-object v7

    const-string v8, "net-type"

    .line 50
    invoke-virtual {v4, v8}, Ll3/i;->g(Ljava/lang/String;)I

    move-result v8

    .line 51
    invoke-static {v8}, Lk3/o$c;->c(I)Lk3/o$c;

    move-result-object v8

    .line 52
    invoke-virtual {v7, v8}, Lk3/o$a;->c(Lk3/o$c;)Lk3/o$a;

    move-result-object v7

    const-string v8, "mobile-subtype"

    .line 53
    invoke-virtual {v4, v8}, Ll3/i;->g(Ljava/lang/String;)I

    move-result v8

    .line 54
    invoke-static {v8}, Lk3/o$b;->c(I)Lk3/o$b;

    move-result-object v8

    .line 55
    invoke-virtual {v7, v8}, Lk3/o$a;->b(Lk3/o$b;)Lk3/o$a;

    move-result-object v7

    .line 56
    invoke-virtual {v7}, Lk3/o$a;->a()Lk3/o;

    move-result-object v7

    .line 57
    invoke-virtual {v6, v7}, Lk3/l$a;->e(Lk3/o;)Lk3/l$a;

    .line 58
    invoke-virtual {v4}, Ll3/i;->d()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_1d3

    .line 59
    invoke-virtual {v4}, Ll3/i;->d()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Lk3/l$a;->b(Ljava/lang/Integer;)Lk3/l$a;

    .line 60
    :cond_1d3
    invoke-virtual {v5}, Lk3/l$a;->a()Lk3/l;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_13d

    :cond_1dc
    const-string v4, "CctTransportBackend"

    const-string v5, "Received event of unsupported encoding %s. Skipping..."

    .line 61
    invoke-static {v4, v5, v6}, Lp3/a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_13d

    .line 62
    :cond_1e5
    invoke-virtual {v2, v3}, Lk3/m$a;->c(Ljava/util/List;)Lk3/m$a;

    .line 63
    invoke-virtual {v2}, Lk3/m$a;->a()Lk3/m;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_46

    .line 64
    :cond_1f1
    invoke-static {p1}, Lk3/j;->a(Ljava/util/List;)Lk3/j;

    move-result-object p1

    return-object p1
.end method

.method private static j(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .registers 2

    const-string v0, "phone"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static k()J
    .registers 3

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    return-wide v0
.end method

.method private static synthetic l(Lcom/google/android/datatransport/cct/d$a;Lcom/google/android/datatransport/cct/d$b;)Lcom/google/android/datatransport/cct/d$a;
    .registers 5

    .line 1
    iget-object v0, p1, Lcom/google/android/datatransport/cct/d$b;->b:Ljava/net/URL;

    if-eqz v0, :cond_12

    const-string v1, "CctTransportBackend"

    const-string v2, "Following redirect to: %s"

    .line 2
    invoke-static {v1, v2, v0}, Lp3/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iget-object p1, p1, Lcom/google/android/datatransport/cct/d$b;->b:Ljava/net/URL;

    invoke-virtual {p0, p1}, Lcom/google/android/datatransport/cct/d$a;->a(Ljava/net/URL;)Lcom/google/android/datatransport/cct/d$a;

    move-result-object p0

    return-object p0

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method private static m(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "gzip"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 2
    new-instance p1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p1, p0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    return-object p1

    :cond_e
    return-object p0
.end method

.method private static n(Ljava/lang/String;)Ljava/net/URL;
    .registers 5

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    :catch_6
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public a(Ll3/i;)Ll3/i;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/cct/d;->b:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Ll3/i;->l()Ll3/i$a;

    move-result-object p1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, "sdk-version"

    .line 3
    invoke-virtual {p1, v2, v1}, Ll3/i$a;->a(Ljava/lang/String;I)Ll3/i$a;

    move-result-object p1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "model"

    .line 4
    invoke-virtual {p1, v2, v1}, Ll3/i$a;->c(Ljava/lang/String;Ljava/lang/String;)Ll3/i$a;

    move-result-object p1

    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v2, "hardware"

    .line 5
    invoke-virtual {p1, v2, v1}, Ll3/i$a;->c(Ljava/lang/String;Ljava/lang/String;)Ll3/i$a;

    move-result-object p1

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "device"

    .line 6
    invoke-virtual {p1, v2, v1}, Ll3/i$a;->c(Ljava/lang/String;Ljava/lang/String;)Ll3/i$a;

    move-result-object p1

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v2, "product"

    .line 7
    invoke-virtual {p1, v2, v1}, Ll3/i$a;->c(Ljava/lang/String;Ljava/lang/String;)Ll3/i$a;

    move-result-object p1

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    const-string v2, "os-uild"

    .line 8
    invoke-virtual {p1, v2, v1}, Ll3/i$a;->c(Ljava/lang/String;Ljava/lang/String;)Ll3/i$a;

    move-result-object p1

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "manufacturer"

    .line 9
    invoke-virtual {p1, v2, v1}, Ll3/i$a;->c(Ljava/lang/String;Ljava/lang/String;)Ll3/i$a;

    move-result-object p1

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v2, "fingerprint"

    .line 10
    invoke-virtual {p1, v2, v1}, Ll3/i$a;->c(Ljava/lang/String;Ljava/lang/String;)Ll3/i$a;

    move-result-object p1

    .line 11
    invoke-static {}, Lcom/google/android/datatransport/cct/d;->k()J

    move-result-wide v1

    const-string v3, "tz-offset"

    invoke-virtual {p1, v3, v1, v2}, Ll3/i$a;->b(Ljava/lang/String;J)Ll3/i$a;

    move-result-object p1

    .line 12
    invoke-static {v0}, Lcom/google/android/datatransport/cct/d;->g(Landroid/net/NetworkInfo;)I

    move-result v1

    const-string v2, "net-type"

    invoke-virtual {p1, v2, v1}, Ll3/i$a;->a(Ljava/lang/String;I)Ll3/i$a;

    move-result-object p1

    .line 13
    invoke-static {v0}, Lcom/google/android/datatransport/cct/d;->f(Landroid/net/NetworkInfo;)I

    move-result v0

    const-string v1, "mobile-subtype"

    invoke-virtual {p1, v1, v0}, Ll3/i$a;->a(Ljava/lang/String;I)Ll3/i$a;

    move-result-object p1

    .line 14
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "country"

    invoke-virtual {p1, v1, v0}, Ll3/i$a;->c(Ljava/lang/String;Ljava/lang/String;)Ll3/i$a;

    move-result-object p1

    .line 15
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "locale"

    invoke-virtual {p1, v1, v0}, Ll3/i$a;->c(Ljava/lang/String;Ljava/lang/String;)Ll3/i$a;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/datatransport/cct/d;->c:Landroid/content/Context;

    .line 16
    invoke-static {v0}, Lcom/google/android/datatransport/cct/d;->j(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mcc_mnc"

    invoke-virtual {p1, v1, v0}, Ll3/i$a;->c(Ljava/lang/String;Ljava/lang/String;)Ll3/i$a;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/datatransport/cct/d;->c:Landroid/content/Context;

    .line 17
    invoke-static {v0}, Lcom/google/android/datatransport/cct/d;->h(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "application_build"

    .line 18
    invoke-virtual {p1, v1, v0}, Ll3/i$a;->c(Ljava/lang/String;Ljava/lang/String;)Ll3/i$a;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Ll3/i$a;->d()Ll3/i;

    move-result-object p1

    return-object p1
.end method

.method public b(Lm3/f;)Lm3/g;
    .registers 6

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/datatransport/cct/d;->i(Lm3/f;)Lk3/j;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/datatransport/cct/d;->d:Ljava/net/URL;

    .line 3
    invoke-virtual {p1}, Lm3/f;->c()[B

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_35

    .line 4
    :try_start_d
    invoke-virtual {p1}, Lm3/f;->c()[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/datatransport/cct/a;->c([B)Lcom/google/android/datatransport/cct/a;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/a;->d()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 6
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/a;->d()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 7
    :cond_20
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/a;->e()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_35

    .line 8
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/a;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/datatransport/cct/d;->n(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1
    :try_end_2e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_2e} :catch_30

    move-object v1, p1

    goto :goto_35

    .line 9
    :catch_30
    invoke-static {}, Lm3/g;->a()Lm3/g;

    move-result-object p1

    return-object p1

    :cond_35
    :goto_35
    const/4 p1, 0x5

    .line 10
    :try_start_36
    new-instance v2, Lcom/google/android/datatransport/cct/d$a;

    invoke-direct {v2, v1, v0, v3}, Lcom/google/android/datatransport/cct/d$a;-><init>(Ljava/net/URL;Lk3/j;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/datatransport/cct/b;

    invoke-direct {v0, p0}, Lcom/google/android/datatransport/cct/b;-><init>(Lcom/google/android/datatransport/cct/d;)V

    sget-object v1, Lcom/google/android/datatransport/cct/c;->a:Lcom/google/android/datatransport/cct/c;

    .line 11
    invoke-static {p1, v2, v0, v1}, Lq3/b;->a(ILjava/lang/Object;Lq3/a;Lq3/c;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/datatransport/cct/d$b;

    .line 12
    iget v0, p1, Lcom/google/android/datatransport/cct/d$b;->a:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_55

    .line 13
    iget-wide v0, p1, Lcom/google/android/datatransport/cct/d$b;->c:J

    invoke-static {v0, v1}, Lm3/g;->e(J)Lm3/g;

    move-result-object p1

    return-object p1

    :cond_55
    const/16 p1, 0x1f4

    if-ge v0, p1, :cond_6c

    const/16 p1, 0x194

    if-ne v0, p1, :cond_5e

    goto :goto_6c

    :cond_5e
    const/16 p1, 0x190

    if-ne v0, p1, :cond_67

    .line 14
    invoke-static {}, Lm3/g;->d()Lm3/g;

    move-result-object p1

    return-object p1

    .line 15
    :cond_67
    invoke-static {}, Lm3/g;->a()Lm3/g;

    move-result-object p1

    return-object p1

    .line 16
    :cond_6c
    :goto_6c
    invoke-static {}, Lm3/g;->f()Lm3/g;

    move-result-object p1
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_70} :catch_71

    return-object p1

    :catch_71
    move-exception p1

    const-string v0, "CctTransportBackend"

    const-string v1, "Could not make request to the backend"

    .line 17
    invoke-static {v0, v1, p1}, Lp3/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    invoke-static {}, Lm3/g;->f()Lm3/g;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.android.datatransport.cct.d.a (com.google.android.datatransport.cct.d$a)
.class final Lcom/google/android/datatransport/cct/d$a;
.super Ljava/lang/Object;
.source "CctTransportBackend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/cct/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/net/URL;

.field final b:Lk3/j;

.field final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/net/URL;Lk3/j;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/datatransport/cct/d$a;->a:Ljava/net/URL;

    .line 3
    iput-object p2, p0, Lcom/google/android/datatransport/cct/d$a;->b:Lk3/j;

    .line 4
    iput-object p3, p0, Lcom/google/android/datatransport/cct/d$a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a(Ljava/net/URL;)Lcom/google/android/datatransport/cct/d$a;
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/datatransport/cct/d$a;

    iget-object v1, p0, Lcom/google/android/datatransport/cct/d$a;->b:Lk3/j;

    iget-object v2, p0, Lcom/google/android/datatransport/cct/d$a;->c:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/datatransport/cct/d$a;-><init>(Ljava/net/URL;Lk3/j;Ljava/lang/String;)V

    return-object v0
.end method

###### Class com.google.android.datatransport.cct.d.b (com.google.android.datatransport.cct.d$b)
.class final Lcom/google/android/datatransport/cct/d$b;
.super Ljava/lang/Object;
.source "CctTransportBackend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/cct/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field final a:I

.field final b:Ljava/net/URL;

.field final c:J


# direct methods
.method constructor <init>(ILjava/net/URL;J)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/datatransport/cct/d$b;->a:I

    .line 3
    iput-object p2, p0, Lcom/google/android/datatransport/cct/d$b;->b:Ljava/net/URL;

    .line 4
    iput-wide p3, p0, Lcom/google/android/datatransport/cct/d$b;->c:J

    return-void
.end method

###### Class com.google.android.datatransport.cct.b (com.google.android.datatransport.cct.b)
.class public final synthetic Lcom/google/android/datatransport/cct/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lq3/a;


# instance fields
.field public final synthetic a:Lcom/google/android/datatransport/cct/d;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/datatransport/cct/d;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/cct/b;->a:Lcom/google/android/datatransport/cct/d;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/datatransport/cct/b;->a:Lcom/google/android/datatransport/cct/d;

    check-cast p1, Lcom/google/android/datatransport/cct/d$a;

    invoke-static {v0, p1}, Lcom/google/android/datatransport/cct/d;->d(Lcom/google/android/datatransport/cct/d;Lcom/google/android/datatransport/cct/d$a;)Lcom/google/android/datatransport/cct/d$b;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.android.datatransport.cct.c (com.google.android.datatransport.cct.c)
.class public final synthetic Lcom/google/android/datatransport/cct/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lq3/c;


# static fields
.field public static final synthetic a:Lcom/google/android/datatransport/cct/c;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/datatransport/cct/c;

    invoke-direct {v0}, Lcom/google/android/datatransport/cct/c;-><init>()V

    sput-object v0, Lcom/google/android/datatransport/cct/c;->a:Lcom/google/android/datatransport/cct/c;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lcom/google/android/datatransport/cct/d$a;

    check-cast p2, Lcom/google/android/datatransport/cct/d$b;

    invoke-static {p1, p2}, Lcom/google/android/datatransport/cct/d;->c(Lcom/google/android/datatransport/cct/d$a;Lcom/google/android/datatransport/cct/d$b;)Lcom/google/android/datatransport/cct/d$a;

    move-result-object p1

    return-object p1
.end method
