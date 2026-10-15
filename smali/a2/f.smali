###### Class a2.f (a2.f)
.class public La2/f;
.super Ljava/lang/Object;
.source "HttpUrlFetcher.java"

# interfaces
.implements La2/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La2/f$b;,
        La2/f$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La2/c<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field private static final f:La2/f$c;


# instance fields
.field private final a:Lg2/d;

.field private final b:La2/f$c;

.field private c:Ljava/net/HttpURLConnection;

.field private d:Ljava/io/InputStream;

.field private volatile e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, La2/f$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La2/f$b;-><init>(La2/f$a;)V

    sput-object v0, La2/f;->f:La2/f$c;

    return-void
.end method

.method public constructor <init>(Lg2/d;)V
    .registers 3

    .line 1
    sget-object v0, La2/f;->f:La2/f$c;

    invoke-direct {p0, p1, v0}, La2/f;-><init>(Lg2/d;La2/f$c;)V

    return-void
.end method

.method constructor <init>(Lg2/d;La2/f$c;)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, La2/f;->a:Lg2/d;

    .line 4
    iput-object p2, p0, La2/f;->b:La2/f$c;

    return-void
.end method

.method private d(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lx2/b;->c(Ljava/io/InputStream;J)Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, La2/f;->d:Ljava/io/InputStream;

    goto :goto_41

    :cond_1a
    const/4 v0, 0x3

    const-string v1, "HttpUrlFetcher"

    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got non empty content encoding: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_3b
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, La2/f;->d:Ljava/io/InputStream;

    .line 7
    :goto_41
    iget-object p1, p0, La2/f;->d:Ljava/io/InputStream;

    return-object p1
.end method

.method private f(Ljava/net/URL;ILjava/net/URL;Ljava/util/Map;)Ljava/io/InputStream;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "I",
            "Ljava/net/URL;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    if-ge p2, v0, :cond_d3

    if-eqz p3, :cond_1c

    .line 1
    :try_start_5
    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p3}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_14

    goto :goto_1c

    .line 2
    :cond_14
    new-instance p3, Ljava/io/IOException;

    const-string v0, "In re-direct loop"

    invoke-direct {p3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_1c
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_1c} :catch_1c

    .line 3
    :catch_1c
    :cond_1c
    :goto_1c
    iget-object p3, p0, La2/f;->b:La2/f$c;

    invoke-interface {p3, p1}, La2/f$c;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p3

    iput-object p3, p0, La2/f;->c:Ljava/net/HttpURLConnection;

    .line 4
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2c
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5
    iget-object v1, p0, La2/f;->c:Ljava/net/HttpURLConnection;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    .line 6
    :cond_4a
    iget-object p3, p0, La2/f;->c:Ljava/net/HttpURLConnection;

    const/16 v0, 0x9c4

    invoke-virtual {p3, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 7
    iget-object p3, p0, La2/f;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {p3, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 8
    iget-object p3, p0, La2/f;->c:Ljava/net/HttpURLConnection;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 9
    iget-object p3, p0, La2/f;->c:Ljava/net/HttpURLConnection;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 10
    iget-object p3, p0, La2/f;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->connect()V

    .line 11
    iget-boolean p3, p0, La2/f;->e:Z

    if-eqz p3, :cond_6d

    const/4 p1, 0x0

    return-object p1

    .line 12
    :cond_6d
    iget-object p3, p0, La2/f;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p3

    .line 13
    div-int/lit8 v1, p3, 0x64

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7f

    .line 14
    iget-object p1, p0, La2/f;->c:Ljava/net/HttpURLConnection;

    invoke-direct {p0, p1}, La2/f;->d(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    :cond_7f
    const/4 v2, 0x3

    if-ne v1, v2, :cond_a3

    .line 15
    iget-object p3, p0, La2/f;->c:Ljava/net/HttpURLConnection;

    const-string v1, "Location"

    invoke-virtual {p3, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 16
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9b

    .line 17
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1, p3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    add-int/2addr p2, v0

    .line 18
    invoke-direct {p0, v1, p2, p1, p4}, La2/f;->f(Ljava/net/URL;ILjava/net/URL;Ljava/util/Map;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    .line 19
    :cond_9b
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Received empty or null redirect url"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a3
    const/4 p1, -0x1

    if-ne p3, p1, :cond_ae

    .line 20
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Unable to retrieve response code from HttpUrlConnection."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_ae
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Request failed "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, La2/f;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_d3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Too many (> 5) redirects!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_dc

    :goto_db
    throw p1

    :goto_dc
    goto :goto_db
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, La2/f;->a:Lg2/d;

    invoke-virtual {v0}, Lg2/d;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b(Lv1/i;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, La2/f;->e(Lv1/i;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public c()V
    .registers 2

    .line 1
    iget-object v0, p0, La2/f;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_9

    .line 2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_9

    :catch_8
    nop

    .line 3
    :cond_9
    :goto_9
    iget-object v0, p0, La2/f;->c:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_10

    .line 4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_10
    return-void
.end method

.method public cancel()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, La2/f;->e:Z

    return-void
.end method

.method public e(Lv1/i;)Ljava/io/InputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p0, La2/f;->a:Lg2/d;

    invoke-virtual {p1}, Lg2/d;->e()Ljava/net/URL;

    move-result-object p1

    iget-object v0, p0, La2/f;->a:Lg2/d;

    invoke-virtual {v0}, Lg2/d;->b()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v0}, La2/f;->f(Ljava/net/URL;ILjava/net/URL;Ljava/util/Map;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

###### Class a2.f.a (a2.f$a)
.class synthetic La2/f$a;
.super Ljava/lang/Object;
.source "HttpUrlFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La2/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class a2.f.b (a2.f$b)
.class La2/f$b;
.super Ljava/lang/Object;
.source "HttpUrlFetcher.java"

# interfaces
.implements La2/f$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La2/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(La2/f$a;)V
    .registers 2

    .line 2
    invoke-direct {p0}, La2/f$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    return-object p1
.end method

###### Class a2.f.c (a2.f$c)
.class interface abstract La2/f$c;
.super Ljava/lang/Object;
.source "HttpUrlFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La2/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "c"
.end annotation


# virtual methods
.method public abstract a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
