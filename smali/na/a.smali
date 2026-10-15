###### Class na.a (na.a)
.class public final Lna/a;
.super Ljava/lang/Object;
.source "BridgeInterceptor.java"

# interfaces
.implements Lja/u;


# instance fields
.field private final a:Lja/m;


# direct methods
.method public constructor <init>(Lja/m;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lna/a;->a:Lja/m;

    return-void
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lja/l;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_2f

    if-lez v2, :cond_13

    const-string v3, "; "

    .line 3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    :cond_13
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lja/l;

    .line 5
    invoke-virtual {v3}, Lja/l;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lja/l;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 6
    :cond_2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public intercept(Lja/u$a;)Lja/c0;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lja/u$a;->f()Lja/a0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lja/a0;->g()Lja/a0$a;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lja/a0;->a()Lja/b0;

    move-result-object v2

    const-string v3, "Content-Type"

    const-wide/16 v4, -0x1

    const-string v6, "Content-Length"

    if-eqz v2, :cond_3e

    .line 4
    invoke-virtual {v2}, Lja/b0;->contentType()Lja/v;

    move-result-object v7

    if-eqz v7, :cond_21

    .line 5
    invoke-virtual {v7}, Lja/v;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v3, v7}, Lja/a0$a;->d(Ljava/lang/String;Ljava/lang/String;)Lja/a0$a;

    .line 6
    :cond_21
    invoke-virtual {v2}, Lja/b0;->contentLength()J

    move-result-wide v7

    const-string v2, "Transfer-Encoding"

    cmp-long v9, v7, v4

    if-eqz v9, :cond_36

    .line 7
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lja/a0$a;->d(Ljava/lang/String;Ljava/lang/String;)Lja/a0$a;

    .line 8
    invoke-virtual {v1, v2}, Lja/a0$a;->h(Ljava/lang/String;)Lja/a0$a;

    goto :goto_3e

    :cond_36
    const-string v7, "chunked"

    .line 9
    invoke-virtual {v1, v2, v7}, Lja/a0$a;->d(Ljava/lang/String;Ljava/lang/String;)Lja/a0$a;

    .line 10
    invoke-virtual {v1, v6}, Lja/a0$a;->h(Ljava/lang/String;)Lja/a0$a;

    :cond_3e
    :goto_3e
    const-string v2, "Host"

    .line 11
    invoke-virtual {v0, v2}, Lja/a0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    if-nez v7, :cond_52

    .line 12
    invoke-virtual {v0}, Lja/a0;->h()Lja/t;

    move-result-object v7

    invoke-static {v7, v8}, Lka/c;->s(Lja/t;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Lja/a0$a;->d(Ljava/lang/String;Ljava/lang/String;)Lja/a0$a;

    :cond_52
    const-string v2, "Connection"

    .line 13
    invoke-virtual {v0, v2}, Lja/a0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_5f

    const-string v7, "Keep-Alive"

    .line 14
    invoke-virtual {v1, v2, v7}, Lja/a0$a;->d(Ljava/lang/String;Ljava/lang/String;)Lja/a0$a;

    :cond_5f
    const-string v2, "Accept-Encoding"

    .line 15
    invoke-virtual {v0, v2}, Lja/a0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "gzip"

    if-nez v7, :cond_75

    const-string v7, "Range"

    invoke-virtual {v0, v7}, Lja/a0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_75

    const/4 v8, 0x1

    .line 16
    invoke-virtual {v1, v2, v9}, Lja/a0$a;->d(Ljava/lang/String;Ljava/lang/String;)Lja/a0$a;

    .line 17
    :cond_75
    iget-object v2, p0, Lna/a;->a:Lja/m;

    invoke-virtual {v0}, Lja/a0;->h()Lja/t;

    move-result-object v7

    invoke-interface {v2, v7}, Lja/m;->a(Lja/t;)Ljava/util/List;

    move-result-object v2

    .line 18
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8e

    .line 19
    invoke-direct {p0, v2}, Lna/a;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "Cookie"

    invoke-virtual {v1, v7, v2}, Lja/a0$a;->d(Ljava/lang/String;Ljava/lang/String;)Lja/a0$a;

    :cond_8e
    const-string v2, "User-Agent"

    .line 20
    invoke-virtual {v0, v2}, Lja/a0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_9d

    .line 21
    invoke-static {}, Lka/d;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Lja/a0$a;->d(Ljava/lang/String;Ljava/lang/String;)Lja/a0$a;

    .line 22
    :cond_9d
    invoke-virtual {v1}, Lja/a0$a;->b()Lja/a0;

    move-result-object v1

    invoke-interface {p1, v1}, Lja/u$a;->e(Lja/a0;)Lja/c0;

    move-result-object p1

    .line 23
    iget-object v1, p0, Lna/a;->a:Lja/m;

    invoke-virtual {v0}, Lja/a0;->h()Lja/t;

    move-result-object v2

    invoke-virtual {p1}, Lja/c0;->h()Lja/s;

    move-result-object v7

    invoke-static {v1, v2, v7}, Lna/e;->e(Lja/m;Lja/t;Lja/s;)V

    .line 24
    invoke-virtual {p1}, Lja/c0;->k()Lja/c0$a;

    move-result-object v1

    .line 25
    invoke-virtual {v1, v0}, Lja/c0$a;->p(Lja/a0;)Lja/c0$a;

    move-result-object v0

    if-eqz v8, :cond_102

    const-string v1, "Content-Encoding"

    .line 26
    invoke-virtual {p1, v1}, Lja/c0;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_102

    .line 27
    invoke-static {p1}, Lna/e;->c(Lja/c0;)Z

    move-result v2

    if-eqz v2, :cond_102

    .line 28
    new-instance v2, Lokio/l;

    invoke-virtual {p1}, Lja/c0;->b()Lja/d0;

    move-result-object v7

    invoke-virtual {v7}, Lja/d0;->source()Lokio/e;

    move-result-object v7

    invoke-direct {v2, v7}, Lokio/l;-><init>(Lokio/u;)V

    .line 29
    invoke-virtual {p1}, Lja/c0;->h()Lja/s;

    move-result-object v7

    invoke-virtual {v7}, Lja/s;->f()Lja/s$a;

    move-result-object v7

    .line 30
    invoke-virtual {v7, v1}, Lja/s$a;->e(Ljava/lang/String;)Lja/s$a;

    move-result-object v1

    .line 31
    invoke-virtual {v1, v6}, Lja/s$a;->e(Ljava/lang/String;)Lja/s$a;

    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lja/s$a;->d()Lja/s;

    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Lja/c0$a;->j(Lja/s;)Lja/c0$a;

    .line 34
    invoke-virtual {p1, v3}, Lja/c0;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 35
    new-instance v1, Lna/h;

    invoke-static {v2}, Lokio/n;->c(Lokio/u;)Lokio/e;

    move-result-object v2

    invoke-direct {v1, p1, v4, v5, v2}, Lna/h;-><init>(Ljava/lang/String;JLokio/e;)V

    invoke-virtual {v0, v1}, Lja/c0$a;->b(Lja/d0;)Lja/c0$a;

    .line 36
    :cond_102
    invoke-virtual {v0}, Lja/c0$a;->c()Lja/c0;

    move-result-object p1

    return-object p1
.end method
