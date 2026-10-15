###### Class na.j (na.j)
.class public final Lna/j;
.super Ljava/lang/Object;
.source "RetryAndFollowUpInterceptor.java"

# interfaces
.implements Lja/u;


# instance fields
.field private final a:Lja/x;

.field private final b:Z

.field private volatile c:Lma/g;

.field private d:Ljava/lang/Object;

.field private volatile e:Z


# direct methods
.method public constructor <init>(Lja/x;Z)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lna/j;->a:Lja/x;

    .line 3
    iput-boolean p2, p0, Lna/j;->b:Z

    return-void
.end method

.method private b(Lja/t;)Lja/a;
    .registers 19

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p1 .. p1}, Lja/t;->n()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    .line 2
    iget-object v1, v0, Lna/j;->a:Lja/x;

    invoke-virtual {v1}, Lja/x;->D()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    .line 3
    iget-object v1, v0, Lna/j;->a:Lja/x;

    invoke-virtual {v1}, Lja/x;->p()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    .line 4
    iget-object v3, v0, Lna/j;->a:Lja/x;

    invoke-virtual {v3}, Lja/x;->f()Lja/g;

    move-result-object v3

    move-object v10, v1

    move-object v9, v2

    move-object v11, v3

    goto :goto_22

    :cond_1f
    move-object v9, v2

    move-object v10, v9

    move-object v11, v10

    .line 5
    :goto_22
    new-instance v1, Lja/a;

    invoke-virtual/range {p1 .. p1}, Lja/t;->m()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lja/t;->z()I

    move-result v6

    iget-object v2, v0, Lna/j;->a:Lja/x;

    invoke-virtual {v2}, Lja/x;->l()Lja/o;

    move-result-object v7

    iget-object v2, v0, Lna/j;->a:Lja/x;

    invoke-virtual {v2}, Lja/x;->C()Ljavax/net/SocketFactory;

    move-result-object v8

    iget-object v2, v0, Lna/j;->a:Lja/x;

    .line 6
    invoke-virtual {v2}, Lja/x;->y()Lja/b;

    move-result-object v12

    iget-object v2, v0, Lna/j;->a:Lja/x;

    .line 7
    invoke-virtual {v2}, Lja/x;->x()Ljava/net/Proxy;

    move-result-object v13

    iget-object v2, v0, Lna/j;->a:Lja/x;

    invoke-virtual {v2}, Lja/x;->w()Ljava/util/List;

    move-result-object v14

    iget-object v2, v0, Lna/j;->a:Lja/x;

    invoke-virtual {v2}, Lja/x;->i()Ljava/util/List;

    move-result-object v15

    iget-object v2, v0, Lna/j;->a:Lja/x;

    invoke-virtual {v2}, Lja/x;->z()Ljava/net/ProxySelector;

    move-result-object v16

    move-object v4, v1

    invoke-direct/range {v4 .. v16}, Lja/a;-><init>(Ljava/lang/String;ILja/o;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lja/g;Lja/b;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    return-object v1
.end method

.method private c(Lja/c0;Lja/e0;)Lja/a0;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_142

    .line 1
    invoke-virtual {p1}, Lja/c0;->d()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lja/c0;->n()Lja/a0;

    move-result-object v1

    invoke-virtual {v1}, Lja/a0;->f()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x133

    const-string v3, "GET"

    const/4 v4, 0x0

    if-eq v0, v2, :cond_a5

    const/16 v2, 0x134

    if-eq v0, v2, :cond_a5

    const/16 v2, 0x191

    if-eq v0, v2, :cond_9a

    const/16 v2, 0x1f7

    if-eq v0, v2, :cond_7a

    const/16 v2, 0x197

    if-eq v0, v2, :cond_5b

    const/16 p2, 0x198

    if-eq v0, p2, :cond_2d

    packed-switch v0, :pswitch_data_148

    return-object v4

    .line 3
    :cond_2d
    iget-object v0, p0, Lna/j;->a:Lja/x;

    invoke-virtual {v0}, Lja/x;->B()Z

    move-result v0

    if-nez v0, :cond_36

    return-object v4

    .line 4
    :cond_36
    invoke-virtual {p1}, Lja/c0;->n()Lja/a0;

    move-result-object v0

    invoke-virtual {v0}, Lja/a0;->a()Lja/b0;

    .line 5
    invoke-virtual {p1}, Lja/c0;->l()Lja/c0;

    move-result-object v0

    if-eqz v0, :cond_4e

    .line 6
    invoke-virtual {p1}, Lja/c0;->l()Lja/c0;

    move-result-object v0

    invoke-virtual {v0}, Lja/c0;->d()I

    move-result v0

    if-ne v0, p2, :cond_4e

    return-object v4

    :cond_4e
    const/4 p2, 0x0

    .line 7
    invoke-direct {p0, p1, p2}, Lna/j;->h(Lja/c0;I)I

    move-result p2

    if-lez p2, :cond_56

    return-object v4

    .line 8
    :cond_56
    invoke-virtual {p1}, Lja/c0;->n()Lja/a0;

    move-result-object p1

    return-object p1

    .line 9
    :cond_5b
    invoke-virtual {p2}, Lja/e0;->b()Ljava/net/Proxy;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_72

    .line 11
    iget-object v0, p0, Lna/j;->a:Lja/x;

    invoke-virtual {v0}, Lja/x;->y()Lja/b;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lja/b;->a(Lja/e0;Lja/c0;)Lja/a0;

    move-result-object p1

    return-object p1

    .line 12
    :cond_72
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_7a
    invoke-virtual {p1}, Lja/c0;->l()Lja/c0;

    move-result-object p2

    if-eqz p2, :cond_8b

    .line 14
    invoke-virtual {p1}, Lja/c0;->l()Lja/c0;

    move-result-object p2

    invoke-virtual {p2}, Lja/c0;->d()I

    move-result p2

    if-ne p2, v2, :cond_8b

    return-object v4

    :cond_8b
    const p2, 0x7fffffff

    .line 15
    invoke-direct {p0, p1, p2}, Lna/j;->h(Lja/c0;I)I

    move-result p2

    if-nez p2, :cond_99

    .line 16
    invoke-virtual {p1}, Lja/c0;->n()Lja/a0;

    move-result-object p1

    return-object p1

    :cond_99
    return-object v4

    .line 17
    :cond_9a
    iget-object v0, p0, Lna/j;->a:Lja/x;

    invoke-virtual {v0}, Lja/x;->b()Lja/b;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lja/b;->a(Lja/e0;Lja/c0;)Lja/a0;

    move-result-object p1

    return-object p1

    .line 18
    :cond_a5
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b4

    const-string p2, "HEAD"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b4

    return-object v4

    .line 19
    :cond_b4
    :pswitch_b4
    iget-object p2, p0, Lna/j;->a:Lja/x;

    invoke-virtual {p2}, Lja/x;->n()Z

    move-result p2

    if-nez p2, :cond_bd

    return-object v4

    :cond_bd
    const-string p2, "Location"

    .line 20
    invoke-virtual {p1, p2}, Lja/c0;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_c6

    return-object v4

    .line 21
    :cond_c6
    invoke-virtual {p1}, Lja/c0;->n()Lja/a0;

    move-result-object v0

    invoke-virtual {v0}, Lja/a0;->h()Lja/t;

    move-result-object v0

    invoke-virtual {v0, p2}, Lja/t;->G(Ljava/lang/String;)Lja/t;

    move-result-object p2

    if-nez p2, :cond_d5

    return-object v4

    .line 22
    :cond_d5
    invoke-virtual {p2}, Lja/t;->H()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lja/c0;->n()Lja/a0;

    move-result-object v2

    invoke-virtual {v2}, Lja/a0;->h()Lja/t;

    move-result-object v2

    invoke-virtual {v2}, Lja/t;->H()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f4

    .line 23
    iget-object v0, p0, Lna/j;->a:Lja/x;

    invoke-virtual {v0}, Lja/x;->o()Z

    move-result v0

    if-nez v0, :cond_f4

    return-object v4

    .line 24
    :cond_f4
    invoke-virtual {p1}, Lja/c0;->n()Lja/a0;

    move-result-object v0

    invoke-virtual {v0}, Lja/a0;->g()Lja/a0$a;

    move-result-object v0

    .line 25
    invoke-static {v1}, Lna/f;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12e

    .line 26
    invoke-static {v1}, Lna/f;->d(Ljava/lang/String;)Z

    move-result v2

    .line 27
    invoke-static {v1}, Lna/f;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_110

    .line 28
    invoke-virtual {v0, v3, v4}, Lja/a0$a;->f(Ljava/lang/String;Lja/b0;)Lja/a0$a;

    goto :goto_11d

    :cond_110
    if-eqz v2, :cond_11a

    .line 29
    invoke-virtual {p1}, Lja/c0;->n()Lja/a0;

    move-result-object v3

    invoke-virtual {v3}, Lja/a0;->a()Lja/b0;

    move-result-object v4

    .line 30
    :cond_11a
    invoke-virtual {v0, v1, v4}, Lja/a0$a;->f(Ljava/lang/String;Lja/b0;)Lja/a0$a;

    :goto_11d
    if-nez v2, :cond_12e

    const-string v1, "Transfer-Encoding"

    .line 31
    invoke-virtual {v0, v1}, Lja/a0$a;->h(Ljava/lang/String;)Lja/a0$a;

    const-string v1, "Content-Length"

    .line 32
    invoke-virtual {v0, v1}, Lja/a0$a;->h(Ljava/lang/String;)Lja/a0$a;

    const-string v1, "Content-Type"

    .line 33
    invoke-virtual {v0, v1}, Lja/a0$a;->h(Ljava/lang/String;)Lja/a0$a;

    .line 34
    :cond_12e
    invoke-direct {p0, p1, p2}, Lna/j;->i(Lja/c0;Lja/t;)Z

    move-result p1

    if-nez p1, :cond_139

    const-string p1, "Authorization"

    .line 35
    invoke-virtual {v0, p1}, Lja/a0$a;->h(Ljava/lang/String;)Lja/a0$a;

    .line 36
    :cond_139
    invoke-virtual {v0, p2}, Lja/a0$a;->i(Lja/t;)Lja/a0$a;

    move-result-object p1

    invoke-virtual {p1}, Lja/a0$a;->b()Lja/a0;

    move-result-object p1

    return-object p1

    .line 37
    :cond_142
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :pswitch_data_148
    .packed-switch 0x12c
        :pswitch_b4
        :pswitch_b4
        :pswitch_b4
        :pswitch_b4
    .end packed-switch
.end method

.method private e(Ljava/io/IOException;Z)Z
    .registers 6

    .line 1
    instance-of v0, p1, Ljava/net/ProtocolException;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 2
    :cond_6
    instance-of v0, p1, Ljava/io/InterruptedIOException;

    const/4 v2, 0x1

    if-eqz v0, :cond_13

    .line 3
    instance-of p1, p1, Ljava/net/SocketTimeoutException;

    if-eqz p1, :cond_12

    if-nez p2, :cond_12

    const/4 v1, 0x1

    :cond_12
    return v1

    .line 4
    :cond_13
    instance-of p2, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz p2, :cond_20

    .line 5
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/security/cert/CertificateException;

    if-eqz p2, :cond_20

    return v1

    .line 6
    :cond_20
    instance-of p1, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz p1, :cond_25

    return v1

    :cond_25
    return v2
.end method

.method private f(Ljava/io/IOException;Lma/g;ZLja/a0;)Z
    .registers 7

    .line 1
    invoke-virtual {p2, p1}, Lma/g;->q(Ljava/io/IOException;)V

    .line 2
    iget-object v0, p0, Lna/j;->a:Lja/x;

    invoke-virtual {v0}, Lja/x;->B()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    return v1

    :cond_d
    if-eqz p3, :cond_16

    .line 3
    invoke-direct {p0, p1, p4}, Lna/j;->g(Ljava/io/IOException;Lja/a0;)Z

    move-result p4

    if-eqz p4, :cond_16

    return v1

    .line 4
    :cond_16
    invoke-direct {p0, p1, p3}, Lna/j;->e(Ljava/io/IOException;Z)Z

    move-result p1

    if-nez p1, :cond_1d

    return v1

    .line 5
    :cond_1d
    invoke-virtual {p2}, Lma/g;->h()Z

    move-result p1

    if-nez p1, :cond_24

    return v1

    :cond_24
    const/4 p1, 0x1

    return p1
.end method

.method private g(Ljava/io/IOException;Lja/a0;)Z
    .registers 3

    .line 1
    invoke-virtual {p2}, Lja/a0;->a()Lja/b0;

    instance-of p1, p1, Ljava/io/FileNotFoundException;

    if-eqz p1, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method private h(Lja/c0;I)I
    .registers 4

    const-string v0, "Retry-After"

    .line 1
    invoke-virtual {p1, v0}, Lja/c0;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_9

    return p2

    :cond_9
    const-string p2, "\\d+"

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1a

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1a
    const p1, 0x7fffffff

    return p1
.end method

.method private i(Lja/c0;Lja/t;)Z
    .registers 5

    .line 1
    invoke-virtual {p1}, Lja/c0;->n()Lja/a0;

    move-result-object p1

    invoke-virtual {p1}, Lja/a0;->h()Lja/t;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lja/t;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lja/t;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 3
    invoke-virtual {p1}, Lja/t;->z()I

    move-result v0

    invoke-virtual {p2}, Lja/t;->z()I

    move-result v1

    if-ne v0, v1, :cond_30

    .line 4
    invoke-virtual {p1}, Lja/t;->H()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lja/t;->H()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_30

    const/4 p1, 0x1

    goto :goto_31

    :cond_30
    const/4 p1, 0x0

    :goto_31
    return p1
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lna/j;->e:Z

    .line 2
    iget-object v0, p0, Lna/j;->c:Lma/g;

    if-eqz v0, :cond_a

    .line 3
    invoke-virtual {v0}, Lma/g;->b()V

    :cond_a
    return-void
.end method

.method public d()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lna/j;->e:Z

    return v0
.end method

.method public intercept(Lja/u$a;)Lja/c0;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lja/u$a;->f()Lja/a0;

    move-result-object v0

    .line 2
    check-cast p1, Lna/g;

    .line 3
    invoke-virtual {p1}, Lna/g;->g()Lja/e;

    move-result-object v7

    .line 4
    invoke-virtual {p1}, Lna/g;->h()Lja/p;

    move-result-object v8

    .line 5
    new-instance v9, Lma/g;

    iget-object v1, p0, Lna/j;->a:Lja/x;

    invoke-virtual {v1}, Lja/x;->h()Lja/j;

    move-result-object v2

    .line 6
    invoke-virtual {v0}, Lja/a0;->h()Lja/t;

    move-result-object v1

    invoke-direct {p0, v1}, Lna/j;->b(Lja/t;)Lja/a;

    move-result-object v3

    iget-object v6, p0, Lna/j;->d:Ljava/lang/Object;

    move-object v1, v9

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v1 .. v6}, Lma/g;-><init>(Lja/j;Lja/a;Lja/e;Lja/p;Ljava/lang/Object;)V

    .line 7
    iput-object v9, p0, Lna/j;->c:Lma/g;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, v11

    const/4 v2, 0x0

    .line 8
    :goto_2c
    iget-boolean v3, p0, Lna/j;->e:Z

    if-nez v3, :cond_105

    .line 9
    :try_start_30
    invoke-virtual {p1, v0, v9, v11, v11}, Lna/g;->j(Lja/a0;Lma/g;Lna/c;Lma/c;)Lja/c0;

    move-result-object v0
    :try_end_34
    .catch Lma/e; {:try_start_30 .. :try_end_34} :catch_ec
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_34} :catch_db
    .catchall {:try_start_30 .. :try_end_34} :catchall_d9

    if-eqz v1, :cond_4e

    .line 10
    invoke-virtual {v0}, Lja/c0;->k()Lja/c0$a;

    move-result-object v0

    .line 11
    invoke-virtual {v1}, Lja/c0;->k()Lja/c0$a;

    move-result-object v1

    .line 12
    invoke-virtual {v1, v11}, Lja/c0$a;->b(Lja/d0;)Lja/c0$a;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lja/c0$a;->c()Lja/c0;

    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lja/c0$a;->m(Lja/c0;)Lja/c0$a;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lja/c0$a;->c()Lja/c0;

    move-result-object v0

    .line 16
    :cond_4e
    :try_start_4e
    invoke-virtual {v9}, Lma/g;->o()Lja/e0;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lna/j;->c(Lja/c0;Lja/e0;)Lja/a0;

    move-result-object v12
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_56} :catch_d4

    if-nez v12, :cond_5c

    .line 17
    invoke-virtual {v9}, Lma/g;->k()V

    return-object v0

    .line 18
    :cond_5c
    invoke-virtual {v0}, Lja/c0;->b()Lja/d0;

    move-result-object v1

    invoke-static {v1}, Lka/c;->g(Ljava/io/Closeable;)V

    add-int/lit8 v13, v2, 0x1

    const/16 v1, 0x14

    if-gt v13, v1, :cond_ba

    .line 19
    invoke-virtual {v12}, Lja/a0;->a()Lja/b0;

    .line 20
    invoke-virtual {v12}, Lja/a0;->h()Lja/t;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lna/j;->i(Lja/c0;Lja/t;)Z

    move-result v1

    if-nez v1, :cond_94

    .line 21
    invoke-virtual {v9}, Lma/g;->k()V

    .line 22
    new-instance v9, Lma/g;

    iget-object v1, p0, Lna/j;->a:Lja/x;

    invoke-virtual {v1}, Lja/x;->h()Lja/j;

    move-result-object v2

    .line 23
    invoke-virtual {v12}, Lja/a0;->h()Lja/t;

    move-result-object v1

    invoke-direct {p0, v1}, Lna/j;->b(Lja/t;)Lja/a;

    move-result-object v3

    iget-object v6, p0, Lna/j;->d:Ljava/lang/Object;

    move-object v1, v9

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v1 .. v6}, Lma/g;-><init>(Lja/j;Lja/a;Lja/e;Lja/p;Ljava/lang/Object;)V

    .line 24
    iput-object v9, p0, Lna/j;->c:Lma/g;

    goto :goto_9a

    .line 25
    :cond_94
    invoke-virtual {v9}, Lma/g;->c()Lna/c;

    move-result-object v1

    if-nez v1, :cond_9e

    :goto_9a
    move-object v1, v0

    move-object v0, v12

    move v2, v13

    goto :goto_2c

    .line 26
    :cond_9e
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closing the body of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " didn\'t close its backing stream. Bad interceptor?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_ba
    invoke-virtual {v9}, Lma/g;->k()V

    .line 28
    new-instance p1, Ljava/net/ProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too many follow-up requests: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_d4
    move-exception p1

    .line 29
    invoke-virtual {v9}, Lma/g;->k()V

    .line 30
    throw p1

    :catchall_d9
    move-exception p1

    goto :goto_fe

    :catch_db
    move-exception v3

    .line 31
    :try_start_dc
    instance-of v4, v3, Lpa/a;

    if-nez v4, :cond_e2

    const/4 v4, 0x1

    goto :goto_e3

    :cond_e2
    const/4 v4, 0x0

    .line 32
    :goto_e3
    invoke-direct {p0, v3, v9, v4, v0}, Lna/j;->f(Ljava/io/IOException;Lma/g;ZLja/a0;)Z

    move-result v4

    if-eqz v4, :cond_eb

    goto/16 :goto_2c

    :cond_eb
    throw v3

    :catch_ec
    move-exception v3

    .line 33
    invoke-virtual {v3}, Lma/e;->c()Ljava/io/IOException;

    move-result-object v4

    invoke-direct {p0, v4, v9, v10, v0}, Lna/j;->f(Ljava/io/IOException;Lma/g;ZLja/a0;)Z

    move-result v4

    if-eqz v4, :cond_f9

    goto/16 :goto_2c

    .line 34
    :cond_f9
    invoke-virtual {v3}, Lma/e;->b()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_fe
    .catchall {:try_start_dc .. :try_end_fe} :catchall_d9

    .line 35
    :goto_fe
    invoke-virtual {v9, v11}, Lma/g;->q(Ljava/io/IOException;)V

    .line 36
    invoke-virtual {v9}, Lma/g;->k()V

    throw p1

    .line 37
    :cond_105
    invoke-virtual {v9}, Lma/g;->k()V

    .line 38
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Canceled"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_111

    :goto_110
    throw p1

    :goto_111
    goto :goto_110
.end method

.method public j(Ljava/lang/Object;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lna/j;->d:Ljava/lang/Object;

    return-void
.end method
