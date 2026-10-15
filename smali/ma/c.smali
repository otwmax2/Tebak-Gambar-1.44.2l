###### Class ma.c (ma.c)
.class public final Lma/c;
.super Lpa/g$j;
.source "RealConnection.java"

# interfaces
.implements Lja/i;


# instance fields
.field private final b:Lja/j;

.field private final c:Lja/e0;

.field private d:Ljava/net/Socket;

.field private e:Ljava/net/Socket;

.field private f:Lja/r;

.field private g:Lja/y;

.field private h:Lpa/g;

.field private i:Lokio/e;

.field private j:Lokio/d;

.field public k:Z

.field public l:I

.field public m:I

.field public final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/Reference<",
            "Lma/g;",
            ">;>;"
        }
    .end annotation
.end field

.field public o:J


# direct methods
.method public constructor <init>(Lja/j;Lja/e0;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lpa/g$j;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lma/c;->m:I

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lma/c;->n:Ljava/util/List;

    const-wide v0, 0x7fffffffffffffffL

    .line 4
    iput-wide v0, p0, Lma/c;->o:J

    .line 5
    iput-object p1, p0, Lma/c;->b:Lja/j;

    .line 6
    iput-object p2, p0, Lma/c;->c:Lja/e0;

    return-void
.end method

.method private f(IILja/e;Lja/p;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lma/c;->c:Lja/e0;

    invoke-virtual {v0}, Lja/e0;->b()Ljava/net/Proxy;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lma/c;->c:Lja/e0;

    invoke-virtual {v1}, Lja/e0;->a()Lja/a;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v2, v3, :cond_23

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v2, v3, :cond_1d

    goto :goto_23

    .line 4
    :cond_1d
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1, v0}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_2b

    .line 5
    :cond_23
    :goto_23
    invoke-virtual {v1}, Lja/a;->j()Ljavax/net/SocketFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v1

    .line 6
    :goto_2b
    iput-object v1, p0, Lma/c;->d:Ljava/net/Socket;

    .line 7
    iget-object v1, p0, Lma/c;->c:Lja/e0;

    invoke-virtual {v1}, Lja/e0;->d()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {p4, p3, v1, v0}, Lja/p;->f(Lja/e;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V

    .line 8
    iget-object p3, p0, Lma/c;->d:Ljava/net/Socket;

    invoke-virtual {p3, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 9
    :try_start_3b
    invoke-static {}, Lqa/g;->l()Lqa/g;

    move-result-object p2

    iget-object p3, p0, Lma/c;->d:Ljava/net/Socket;

    iget-object p4, p0, Lma/c;->c:Lja/e0;

    invoke-virtual {p4}, Lja/e0;->d()Ljava/net/InetSocketAddress;

    move-result-object p4

    invoke-virtual {p2, p3, p4, p1}, Lqa/g;->h(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_4a
    .catch Ljava/net/ConnectException; {:try_start_3b .. :try_end_4a} :catch_77

    .line 10
    :try_start_4a
    iget-object p1, p0, Lma/c;->d:Ljava/net/Socket;

    invoke-static {p1}, Lokio/n;->l(Ljava/net/Socket;)Lokio/u;

    move-result-object p1

    invoke-static {p1}, Lokio/n;->c(Lokio/u;)Lokio/e;

    move-result-object p1

    iput-object p1, p0, Lma/c;->i:Lokio/e;

    .line 11
    iget-object p1, p0, Lma/c;->d:Ljava/net/Socket;

    invoke-static {p1}, Lokio/n;->h(Ljava/net/Socket;)Lokio/t;

    move-result-object p1

    invoke-static {p1}, Lokio/n;->b(Lokio/t;)Lokio/d;

    move-result-object p1

    iput-object p1, p0, Lma/c;->j:Lokio/d;
    :try_end_62
    .catch Ljava/lang/NullPointerException; {:try_start_4a .. :try_end_62} :catch_63

    goto :goto_70

    :catch_63
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "throw with null exception"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_71

    :goto_70
    return-void

    .line 13
    :cond_71
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_77
    move-exception p1

    .line 14
    new-instance p2, Ljava/net/ConnectException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to connect to "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lma/c;->c:Lja/e0;

    invoke-virtual {p4}, Lja/e0;->d()Ljava/net/InetSocketAddress;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p2, p1}, Ljava/net/ConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 16
    throw p2
.end method

.method private g(Lma/b;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lma/c;->c:Lja/e0;

    invoke-virtual {v0}, Lja/e0;->a()Lja/a;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lja/a;->k()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    :try_start_b
    iget-object v3, p0, Lma/c;->d:Ljava/net/Socket;

    .line 4
    invoke-virtual {v0}, Lja/a;->l()Lja/t;

    move-result-object v4

    invoke-virtual {v4}, Lja/t;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lja/a;->l()Lja/t;

    move-result-object v5

    invoke-virtual {v5}, Lja/t;->z()I

    move-result v5

    const/4 v6, 0x1

    .line 5
    invoke-virtual {v1, v3, v4, v5, v6}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLSocket;
    :try_end_24
    .catch Ljava/lang/AssertionError; {:try_start_b .. :try_end_24} :catch_12e
    .catchall {:try_start_b .. :try_end_24} :catchall_12c

    .line 6
    :try_start_24
    invoke-virtual {p1, v1}, Lma/b;->a(Ljavax/net/ssl/SSLSocket;)Lja/k;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lja/k;->f()Z

    move-result v3

    if-eqz v3, :cond_41

    .line 8
    invoke-static {}, Lqa/g;->l()Lqa/g;

    move-result-object v3

    .line 9
    invoke-virtual {v0}, Lja/a;->l()Lja/t;

    move-result-object v4

    invoke-virtual {v4}, Lja/t;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lja/a;->f()Ljava/util/List;

    move-result-object v5

    .line 10
    invoke-virtual {v3, v1, v4, v5}, Lqa/g;->g(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 11
    :cond_41
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 12
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    .line 13
    invoke-static {v3}, Lja/r;->b(Ljavax/net/ssl/SSLSession;)Lja/r;

    move-result-object v4

    .line 14
    invoke-virtual {v0}, Lja/a;->e()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v5

    invoke-virtual {v0}, Lja/a;->l()Lja/t;

    move-result-object v6

    invoke-virtual {v6}, Lja/t;->m()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v3

    if-nez v3, :cond_d8

    .line 15
    invoke-virtual {v4}, Lja/r;->c()Ljava/util/List;

    move-result-object p1

    .line 16
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2
    :try_end_66
    .catch Ljava/lang/AssertionError; {:try_start_24 .. :try_end_66} :catch_129
    .catchall {:try_start_24 .. :try_end_66} :catchall_126

    const-string v3, "Hostname "

    if-nez v2, :cond_b6

    const/4 v2, 0x0

    .line 17
    :try_start_6b
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 18
    new-instance v2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Lja/a;->l()Lja/t;

    move-result-object v0

    invoke-virtual {v0}, Lja/t;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not verified:\n    certificate: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-static {p1}, Lja/g;->c(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n    DN: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n    subjectAltNames: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-static {p1}, Lsa/d;->a(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 23
    :cond_b6
    new-instance p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Lja/a;->l()Lja/t;

    move-result-object v0

    invoke-virtual {v0}, Lja/t;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not verified (no certificates)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_d8
    invoke-virtual {v0}, Lja/a;->a()Lja/g;

    move-result-object v3

    invoke-virtual {v0}, Lja/a;->l()Lja/t;

    move-result-object v0

    invoke-virtual {v0}, Lja/t;->m()Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-virtual {v4}, Lja/r;->c()Ljava/util/List;

    move-result-object v5

    .line 27
    invoke-virtual {v3, v0, v5}, Lja/g;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 28
    invoke-virtual {p1}, Lja/k;->f()Z

    move-result p1

    if-eqz p1, :cond_f9

    .line 29
    invoke-static {}, Lqa/g;->l()Lqa/g;

    move-result-object p1

    invoke-virtual {p1, v1}, Lqa/g;->n(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v2

    .line 30
    :cond_f9
    iput-object v1, p0, Lma/c;->e:Ljava/net/Socket;

    .line 31
    invoke-static {v1}, Lokio/n;->l(Ljava/net/Socket;)Lokio/u;

    move-result-object p1

    invoke-static {p1}, Lokio/n;->c(Lokio/u;)Lokio/e;

    move-result-object p1

    iput-object p1, p0, Lma/c;->i:Lokio/e;

    .line 32
    iget-object p1, p0, Lma/c;->e:Ljava/net/Socket;

    invoke-static {p1}, Lokio/n;->h(Ljava/net/Socket;)Lokio/t;

    move-result-object p1

    invoke-static {p1}, Lokio/n;->b(Lokio/t;)Lokio/d;

    move-result-object p1

    iput-object p1, p0, Lma/c;->j:Lokio/d;

    .line 33
    iput-object v4, p0, Lma/c;->f:Lja/r;

    if-eqz v2, :cond_11a

    .line 34
    invoke-static {v2}, Lja/y;->c(Ljava/lang/String;)Lja/y;

    move-result-object p1

    goto :goto_11c

    .line 35
    :cond_11a
    sget-object p1, Lja/y;->q:Lja/y;

    :goto_11c
    iput-object p1, p0, Lma/c;->g:Lja/y;
    :try_end_11e
    .catch Ljava/lang/AssertionError; {:try_start_6b .. :try_end_11e} :catch_129
    .catchall {:try_start_6b .. :try_end_11e} :catchall_126

    .line 36
    invoke-static {}, Lqa/g;->l()Lqa/g;

    move-result-object p1

    invoke-virtual {p1, v1}, Lqa/g;->a(Ljavax/net/ssl/SSLSocket;)V

    return-void

    :catchall_126
    move-exception p1

    move-object v2, v1

    goto :goto_13c

    :catch_129
    move-exception p1

    move-object v2, v1

    goto :goto_12f

    :catchall_12c
    move-exception p1

    goto :goto_13c

    :catch_12e
    move-exception p1

    .line 37
    :goto_12f
    :try_start_12f
    invoke-static {p1}, Lka/c;->A(Ljava/lang/AssertionError;)Z

    move-result v0

    if-eqz v0, :cond_13b

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 38
    :cond_13b
    throw p1
    :try_end_13c
    .catchall {:try_start_12f .. :try_end_13c} :catchall_12c

    :goto_13c
    if-eqz v2, :cond_145

    .line 39
    invoke-static {}, Lqa/g;->l()Lqa/g;

    move-result-object v0

    invoke-virtual {v0, v2}, Lqa/g;->a(Ljavax/net/ssl/SSLSocket;)V

    .line 40
    :cond_145
    invoke-static {v2}, Lka/c;->h(Ljava/net/Socket;)V

    throw p1
.end method

.method private h(IIILja/e;Lja/p;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lma/c;->j()Lja/a0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lja/a0;->h()Lja/t;

    move-result-object v1

    const/4 v2, 0x0

    :goto_9
    const/16 v3, 0x15

    if-ge v2, v3, :cond_35

    .line 3
    invoke-direct {p0, p1, p2, p4, p5}, Lma/c;->f(IILja/e;Lja/p;)V

    .line 4
    invoke-direct {p0, p2, p3, v0, v1}, Lma/c;->i(IILja/a0;Lja/t;)Lja/a0;

    move-result-object v0

    if-nez v0, :cond_17

    goto :goto_35

    .line 5
    :cond_17
    iget-object v3, p0, Lma/c;->d:Ljava/net/Socket;

    invoke-static {v3}, Lka/c;->h(Ljava/net/Socket;)V

    const/4 v3, 0x0

    .line 6
    iput-object v3, p0, Lma/c;->d:Ljava/net/Socket;

    .line 7
    iput-object v3, p0, Lma/c;->j:Lokio/d;

    .line 8
    iput-object v3, p0, Lma/c;->i:Lokio/e;

    .line 9
    iget-object v4, p0, Lma/c;->c:Lja/e0;

    invoke-virtual {v4}, Lja/e0;->d()Ljava/net/InetSocketAddress;

    move-result-object v4

    iget-object v5, p0, Lma/c;->c:Lja/e0;

    invoke-virtual {v5}, Lja/e0;->b()Ljava/net/Proxy;

    move-result-object v5

    invoke-virtual {p5, p4, v4, v5, v3}, Lja/p;->d(Lja/e;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lja/y;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_35
    :goto_35
    return-void
.end method

.method private i(IILja/a0;Lja/t;)Lja/a0;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CONNECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-static {p4, v1}, Lka/c;->s(Lja/t;Z)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " HTTP/1.1"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 2
    :goto_1b
    new-instance v0, Loa/a;

    iget-object v1, p0, Lma/c;->i:Lokio/e;

    iget-object v2, p0, Lma/c;->j:Lokio/d;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Loa/a;-><init>(Lja/x;Lma/g;Lokio/e;Lokio/d;)V

    .line 3
    iget-object v1, p0, Lma/c;->i:Lokio/e;

    invoke-interface {v1}, Lokio/u;->timeout()Lokio/v;

    move-result-object v1

    int-to-long v4, p1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v2}, Lokio/v;->g(JLjava/util/concurrent/TimeUnit;)Lokio/v;

    .line 4
    iget-object v1, p0, Lma/c;->j:Lokio/d;

    invoke-interface {v1}, Lokio/t;->timeout()Lokio/v;

    move-result-object v1

    int-to-long v4, p2

    invoke-virtual {v1, v4, v5, v2}, Lokio/v;->g(JLjava/util/concurrent/TimeUnit;)Lokio/v;

    .line 5
    invoke-virtual {p3}, Lja/a0;->d()Lja/s;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Loa/a;->o(Lja/s;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Loa/a;->a()V

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Loa/a;->d(Z)Lja/c0$a;

    move-result-object v1

    .line 8
    invoke-virtual {v1, p3}, Lja/c0$a;->p(Lja/a0;)Lja/c0$a;

    move-result-object p3

    .line 9
    invoke-virtual {p3}, Lja/c0$a;->c()Lja/c0;

    move-result-object p3

    .line 10
    invoke-static {p3}, Lna/e;->b(Lja/c0;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_5e

    const-wide/16 v4, 0x0

    .line 11
    :cond_5e
    invoke-virtual {v0, v4, v5}, Loa/a;->k(J)Lokio/u;

    move-result-object v0

    const v1, 0x7fffffff

    .line 12
    invoke-static {v0, v1, v2}, Lka/c;->D(Lokio/u;ILjava/util/concurrent/TimeUnit;)Z

    .line 13
    invoke-interface {v0}, Lokio/u;->close()V

    .line 14
    invoke-virtual {p3}, Lja/c0;->d()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_bd

    const/16 v1, 0x197

    if-ne v0, v1, :cond_a2

    .line 15
    iget-object v0, p0, Lma/c;->c:Lja/e0;

    invoke-virtual {v0}, Lja/e0;->a()Lja/a;

    move-result-object v0

    invoke-virtual {v0}, Lja/a;->h()Lja/b;

    move-result-object v0

    iget-object v1, p0, Lma/c;->c:Lja/e0;

    invoke-interface {v0, v1, p3}, Lja/b;->a(Lja/e0;Lja/c0;)Lja/a0;

    move-result-object v0

    if-eqz v0, :cond_9a

    const-string v1, "Connection"

    .line 16
    invoke-virtual {p3, v1}, Lja/c0;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "close"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_98

    return-object v0

    :cond_98
    move-object p3, v0

    goto :goto_1b

    .line 17
    :cond_9a
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Failed to authenticate with proxy"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_a2
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unexpected response code for CONNECT: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {p3}, Lja/c0;->d()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_bd
    iget-object p1, p0, Lma/c;->i:Lokio/e;

    invoke-interface {p1}, Lokio/e;->B()Lokio/c;

    move-result-object p1

    invoke-virtual {p1}, Lokio/c;->S0()Z

    move-result p1

    if-eqz p1, :cond_d6

    iget-object p1, p0, Lma/c;->j:Lokio/d;

    invoke-interface {p1}, Lokio/d;->B()Lokio/c;

    move-result-object p1

    invoke-virtual {p1}, Lokio/c;->S0()Z

    move-result p1

    if-eqz p1, :cond_d6

    return-object v3

    .line 21
    :cond_d6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "TLS tunnel buffered too many bytes!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_df

    :goto_de
    throw p1

    :goto_df
    goto :goto_de
.end method

.method private j()Lja/a0;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lja/a0$a;

    invoke-direct {v0}, Lja/a0$a;-><init>()V

    iget-object v1, p0, Lma/c;->c:Lja/e0;

    .line 2
    invoke-virtual {v1}, Lja/e0;->a()Lja/a;

    move-result-object v1

    invoke-virtual {v1}, Lja/a;->l()Lja/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lja/a0$a;->i(Lja/t;)Lja/a0$a;

    move-result-object v0

    const-string v1, "CONNECT"

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Lja/a0$a;->f(Ljava/lang/String;Lja/b0;)Lja/a0$a;

    move-result-object v0

    iget-object v1, p0, Lma/c;->c:Lja/e0;

    .line 4
    invoke-virtual {v1}, Lja/e0;->a()Lja/a;

    move-result-object v1

    invoke-virtual {v1}, Lja/a;->l()Lja/t;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lka/c;->s(Lja/t;Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Host"

    invoke-virtual {v0, v2, v1}, Lja/a0$a;->d(Ljava/lang/String;Ljava/lang/String;)Lja/a0$a;

    move-result-object v0

    const-string v1, "Proxy-Connection"

    const-string v2, "Keep-Alive"

    .line 5
    invoke-virtual {v0, v1, v2}, Lja/a0$a;->d(Ljava/lang/String;Ljava/lang/String;)Lja/a0$a;

    move-result-object v0

    .line 6
    invoke-static {}, Lka/d;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "User-Agent"

    invoke-virtual {v0, v2, v1}, Lja/a0$a;->d(Ljava/lang/String;Ljava/lang/String;)Lja/a0$a;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lja/a0$a;->b()Lja/a0;

    move-result-object v0

    .line 8
    new-instance v1, Lja/c0$a;

    invoke-direct {v1}, Lja/c0$a;-><init>()V

    .line 9
    invoke-virtual {v1, v0}, Lja/c0$a;->p(Lja/a0;)Lja/c0$a;

    move-result-object v1

    sget-object v2, Lja/y;->q:Lja/y;

    .line 10
    invoke-virtual {v1, v2}, Lja/c0$a;->n(Lja/y;)Lja/c0$a;

    move-result-object v1

    const/16 v2, 0x197

    .line 11
    invoke-virtual {v1, v2}, Lja/c0$a;->g(I)Lja/c0$a;

    move-result-object v1

    const-string v2, "Preemptive Authenticate"

    .line 12
    invoke-virtual {v1, v2}, Lja/c0$a;->k(Ljava/lang/String;)Lja/c0$a;

    move-result-object v1

    sget-object v2, Lka/c;->c:Lja/d0;

    .line 13
    invoke-virtual {v1, v2}, Lja/c0$a;->b(Lja/d0;)Lja/c0$a;

    move-result-object v1

    const-wide/16 v2, -0x1

    .line 14
    invoke-virtual {v1, v2, v3}, Lja/c0$a;->q(J)Lja/c0$a;

    move-result-object v1

    .line 15
    invoke-virtual {v1, v2, v3}, Lja/c0$a;->o(J)Lja/c0$a;

    move-result-object v1

    const-string v2, "Proxy-Authenticate"

    const-string v3, "OkHttp-Preemptive"

    .line 16
    invoke-virtual {v1, v2, v3}, Lja/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)Lja/c0$a;

    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lja/c0$a;->c()Lja/c0;

    move-result-object v1

    .line 18
    iget-object v2, p0, Lma/c;->c:Lja/e0;

    invoke-virtual {v2}, Lja/e0;->a()Lja/a;

    move-result-object v2

    invoke-virtual {v2}, Lja/a;->h()Lja/b;

    move-result-object v2

    iget-object v3, p0, Lma/c;->c:Lja/e0;

    .line 19
    invoke-interface {v2, v3, v1}, Lja/b;->a(Lja/e0;Lja/c0;)Lja/a0;

    move-result-object v1

    if-eqz v1, :cond_8f

    move-object v0, v1

    :cond_8f
    return-object v0
.end method

.method private k(Lma/b;ILja/e;Lja/p;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lma/c;->c:Lja/e0;

    invoke-virtual {v0}, Lja/e0;->a()Lja/a;

    move-result-object v0

    invoke-virtual {v0}, Lja/a;->k()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-nez v0, :cond_31

    .line 2
    iget-object p1, p0, Lma/c;->c:Lja/e0;

    invoke-virtual {p1}, Lja/e0;->a()Lja/a;

    move-result-object p1

    invoke-virtual {p1}, Lja/a;->f()Ljava/util/List;

    move-result-object p1

    sget-object p3, Lja/y;->t:Lja/y;

    invoke-interface {p1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 3
    iget-object p1, p0, Lma/c;->d:Ljava/net/Socket;

    iput-object p1, p0, Lma/c;->e:Ljava/net/Socket;

    .line 4
    iput-object p3, p0, Lma/c;->g:Lja/y;

    .line 5
    invoke-direct {p0, p2}, Lma/c;->s(I)V

    return-void

    .line 6
    :cond_28
    iget-object p1, p0, Lma/c;->d:Ljava/net/Socket;

    iput-object p1, p0, Lma/c;->e:Ljava/net/Socket;

    .line 7
    sget-object p1, Lja/y;->q:Lja/y;

    iput-object p1, p0, Lma/c;->g:Lja/y;

    return-void

    .line 8
    :cond_31
    invoke-virtual {p4, p3}, Lja/p;->u(Lja/e;)V

    .line 9
    invoke-direct {p0, p1}, Lma/c;->g(Lma/b;)V

    .line 10
    iget-object p1, p0, Lma/c;->f:Lja/r;

    invoke-virtual {p4, p3, p1}, Lja/p;->t(Lja/e;Lja/r;)V

    .line 11
    iget-object p1, p0, Lma/c;->g:Lja/y;

    sget-object p3, Lja/y;->s:Lja/y;

    if-ne p1, p3, :cond_45

    .line 12
    invoke-direct {p0, p2}, Lma/c;->s(I)V

    :cond_45
    return-void
.end method

.method private s(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lma/c;->e:Ljava/net/Socket;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 2
    new-instance v0, Lpa/g$h;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lpa/g$h;-><init>(Z)V

    iget-object v1, p0, Lma/c;->e:Ljava/net/Socket;

    iget-object v2, p0, Lma/c;->c:Lja/e0;

    .line 3
    invoke-virtual {v2}, Lja/e0;->a()Lja/a;

    move-result-object v2

    invoke-virtual {v2}, Lja/a;->l()Lja/t;

    move-result-object v2

    invoke-virtual {v2}, Lja/t;->m()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lma/c;->i:Lokio/e;

    iget-object v4, p0, Lma/c;->j:Lokio/d;

    invoke-virtual {v0, v1, v2, v3, v4}, Lpa/g$h;->d(Ljava/net/Socket;Ljava/lang/String;Lokio/e;Lokio/d;)Lpa/g$h;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p0}, Lpa/g$h;->b(Lpa/g$j;)Lpa/g$h;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lpa/g$h;->c(I)Lpa/g$h;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lpa/g$h;->a()Lpa/g;

    move-result-object p1

    iput-object p1, p0, Lma/c;->h:Lpa/g;

    .line 7
    invoke-virtual {p1}, Lpa/g;->E()V

    return-void
.end method


# virtual methods
.method public a()Lja/y;
    .registers 2

    .line 1
    iget-object v0, p0, Lma/c;->g:Lja/y;

    return-object v0
.end method

.method public b(Lpa/g;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lma/c;->b:Lja/j;

    monitor-enter v0

    .line 2
    :try_start_3
    invoke-virtual {p1}, Lpa/g;->q()I

    move-result p1

    iput p1, p0, Lma/c;->m:I

    .line 3
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method public c(Lpa/i;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lpa/b;->t:Lpa/b;

    invoke-virtual {p1, v0}, Lpa/i;->f(Lpa/b;)V

    return-void
.end method

.method public d()V
    .registers 2

    .line 1
    iget-object v0, p0, Lma/c;->d:Ljava/net/Socket;

    invoke-static {v0}, Lka/c;->h(Ljava/net/Socket;)V

    return-void
.end method

.method public e(IIIIZLja/e;Lja/p;)V
    .registers 24

    move-object/from16 v7, p0

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 1
    iget-object v0, v7, Lma/c;->g:Lja/y;

    if-nez v0, :cond_150

    .line 2
    iget-object v0, v7, Lma/c;->c:Lja/e0;

    invoke-virtual {v0}, Lja/e0;->a()Lja/a;

    move-result-object v0

    invoke-virtual {v0}, Lja/a;->b()Ljava/util/List;

    move-result-object v0

    .line 3
    new-instance v10, Lma/b;

    invoke-direct {v10, v0}, Lma/b;-><init>(Ljava/util/List;)V

    .line 4
    iget-object v1, v7, Lma/c;->c:Lja/e0;

    invoke-virtual {v1}, Lja/e0;->a()Lja/a;

    move-result-object v1

    invoke-virtual {v1}, Lja/a;->k()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    if-nez v1, :cond_74

    .line 5
    sget-object v1, Lja/k;->j:Lja/k;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 6
    iget-object v0, v7, Lma/c;->c:Lja/e0;

    invoke-virtual {v0}, Lja/e0;->a()Lja/a;

    move-result-object v0

    invoke-virtual {v0}, Lja/a;->l()Lja/t;

    move-result-object v0

    invoke-virtual {v0}, Lja/t;->m()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {}, Lqa/g;->l()Lqa/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lqa/g;->q(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_46

    goto :goto_86

    .line 8
    :cond_46
    new-instance v1, Lma/e;

    new-instance v2, Ljava/net/UnknownServiceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CLEARTEXT communication to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not permitted by network security policy"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lma/e;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 9
    :cond_67
    new-instance v0, Lma/e;

    new-instance v1, Ljava/net/UnknownServiceException;

    const-string v2, "CLEARTEXT communication not enabled for client"

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lma/e;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 10
    :cond_74
    iget-object v0, v7, Lma/c;->c:Lja/e0;

    invoke-virtual {v0}, Lja/e0;->a()Lja/a;

    move-result-object v0

    invoke-virtual {v0}, Lja/a;->f()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lja/y;->t:Lja/y;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_143

    :goto_86
    const/4 v11, 0x0

    move-object v12, v11

    .line 11
    :goto_88
    :try_start_88
    iget-object v0, v7, Lma/c;->c:Lja/e0;

    invoke-virtual {v0}, Lja/e0;->c()Z

    move-result v0

    if-eqz v0, :cond_a9

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    .line 12
    invoke-direct/range {v1 .. v6}, Lma/c;->h(IIILja/e;Lja/p;)V

    .line 13
    iget-object v0, v7, Lma/c;->d:Ljava/net/Socket;
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_a1} :catch_f9

    if-nez v0, :cond_a4

    goto :goto_c6

    :cond_a4
    move/from16 v13, p1

    move/from16 v14, p2

    goto :goto_b0

    :cond_a9
    move/from16 v13, p1

    move/from16 v14, p2

    .line 14
    :try_start_ad
    invoke-direct {v7, v13, v14, v8, v9}, Lma/c;->f(IILja/e;Lja/p;)V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b0} :catch_f7

    :goto_b0
    move/from16 v15, p4

    .line 15
    :try_start_b2
    invoke-direct {v7, v10, v15, v8, v9}, Lma/c;->k(Lma/b;ILja/e;Lja/p;)V

    .line 16
    iget-object v0, v7, Lma/c;->c:Lja/e0;

    invoke-virtual {v0}, Lja/e0;->d()Ljava/net/InetSocketAddress;

    move-result-object v0

    iget-object v1, v7, Lma/c;->c:Lja/e0;

    invoke-virtual {v1}, Lja/e0;->b()Ljava/net/Proxy;

    move-result-object v1

    iget-object v2, v7, Lma/c;->g:Lja/y;

    invoke-virtual {v9, v8, v0, v1, v2}, Lja/p;->d(Lja/e;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lja/y;)V
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_c6} :catch_f5

    .line 17
    :goto_c6
    iget-object v0, v7, Lma/c;->c:Lja/e0;

    invoke-virtual {v0}, Lja/e0;->c()Z

    move-result v0

    if-eqz v0, :cond_e0

    iget-object v0, v7, Lma/c;->d:Ljava/net/Socket;

    if-eqz v0, :cond_d3

    goto :goto_e0

    .line 18
    :cond_d3
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Too many tunnel connections attempted: 21"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 19
    new-instance v1, Lma/e;

    invoke-direct {v1, v0}, Lma/e;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 20
    :cond_e0
    :goto_e0
    iget-object v0, v7, Lma/c;->h:Lpa/g;

    if-eqz v0, :cond_f4

    .line 21
    iget-object v1, v7, Lma/c;->b:Lja/j;

    monitor-enter v1

    .line 22
    :try_start_e7
    iget-object v0, v7, Lma/c;->h:Lpa/g;

    invoke-virtual {v0}, Lpa/g;->q()I

    move-result v0

    iput v0, v7, Lma/c;->m:I

    .line 23
    monitor-exit v1

    goto :goto_f4

    :catchall_f1
    move-exception v0

    monitor-exit v1
    :try_end_f3
    .catchall {:try_start_e7 .. :try_end_f3} :catchall_f1

    throw v0

    :cond_f4
    :goto_f4
    return-void

    :catch_f5
    move-exception v0

    goto :goto_100

    :catch_f7
    move-exception v0

    goto :goto_fe

    :catch_f9
    move-exception v0

    move/from16 v13, p1

    move/from16 v14, p2

    :goto_fe
    move/from16 v15, p4

    .line 24
    :goto_100
    iget-object v1, v7, Lma/c;->e:Ljava/net/Socket;

    invoke-static {v1}, Lka/c;->h(Ljava/net/Socket;)V

    .line 25
    iget-object v1, v7, Lma/c;->d:Ljava/net/Socket;

    invoke-static {v1}, Lka/c;->h(Ljava/net/Socket;)V

    .line 26
    iput-object v11, v7, Lma/c;->e:Ljava/net/Socket;

    .line 27
    iput-object v11, v7, Lma/c;->d:Ljava/net/Socket;

    .line 28
    iput-object v11, v7, Lma/c;->i:Lokio/e;

    .line 29
    iput-object v11, v7, Lma/c;->j:Lokio/d;

    .line 30
    iput-object v11, v7, Lma/c;->f:Lja/r;

    .line 31
    iput-object v11, v7, Lma/c;->g:Lja/y;

    .line 32
    iput-object v11, v7, Lma/c;->h:Lpa/g;

    .line 33
    iget-object v1, v7, Lma/c;->c:Lja/e0;

    invoke-virtual {v1}, Lja/e0;->d()Ljava/net/InetSocketAddress;

    move-result-object v3

    iget-object v1, v7, Lma/c;->c:Lja/e0;

    invoke-virtual {v1}, Lja/e0;->b()Ljava/net/Proxy;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v1, p7

    move-object/from16 v2, p6

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lja/p;->e(Lja/e;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lja/y;Ljava/io/IOException;)V

    if-nez v12, :cond_135

    .line 34
    new-instance v12, Lma/e;

    invoke-direct {v12, v0}, Lma/e;-><init>(Ljava/io/IOException;)V

    goto :goto_138

    .line 35
    :cond_135
    invoke-virtual {v12, v0}, Lma/e;->a(Ljava/io/IOException;)V

    :goto_138
    if-eqz p5, :cond_142

    .line 36
    invoke-virtual {v10, v0}, Lma/b;->b(Ljava/io/IOException;)Z

    move-result v0

    if-eqz v0, :cond_142

    goto/16 :goto_88

    .line 37
    :cond_142
    throw v12

    .line 38
    :cond_143
    new-instance v0, Lma/e;

    new-instance v1, Ljava/net/UnknownServiceException;

    const-string v2, "H2_PRIOR_KNOWLEDGE cannot be used with HTTPS"

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lma/e;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 39
    :cond_150
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_159

    :goto_158
    throw v0

    :goto_159
    goto :goto_158
.end method

.method public l()Lja/r;
    .registers 2

    .line 1
    iget-object v0, p0, Lma/c;->f:Lja/r;

    return-object v0
.end method

.method public m(Lja/a;Lja/e0;)Z
    .registers 7
    .param p2    # Lja/e0;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lma/c;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lma/c;->m:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_a5

    iget-boolean v0, p0, Lma/c;->k:Z

    if-eqz v0, :cond_11

    goto/16 :goto_a5

    .line 2
    :cond_11
    sget-object v0, Lka/a;->a:Lka/a;

    iget-object v1, p0, Lma/c;->c:Lja/e0;

    invoke-virtual {v1}, Lja/e0;->a()Lja/a;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lka/a;->g(Lja/a;Lja/a;)Z

    move-result v0

    if-nez v0, :cond_20

    return v2

    .line 3
    :cond_20
    invoke-virtual {p1}, Lja/a;->l()Lja/t;

    move-result-object v0

    invoke-virtual {v0}, Lja/t;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lma/c;->q()Lja/e0;

    move-result-object v1

    invoke-virtual {v1}, Lja/e0;->a()Lja/a;

    move-result-object v1

    invoke-virtual {v1}, Lja/a;->l()Lja/t;

    move-result-object v1

    invoke-virtual {v1}, Lja/t;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_40

    return v1

    .line 4
    :cond_40
    iget-object v0, p0, Lma/c;->h:Lpa/g;

    if-nez v0, :cond_45

    return v2

    :cond_45
    if-nez p2, :cond_48

    return v2

    .line 5
    :cond_48
    invoke-virtual {p2}, Lja/e0;->b()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v3, :cond_55

    return v2

    .line 6
    :cond_55
    iget-object v0, p0, Lma/c;->c:Lja/e0;

    invoke-virtual {v0}, Lja/e0;->b()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v3, :cond_64

    return v2

    .line 7
    :cond_64
    iget-object v0, p0, Lma/c;->c:Lja/e0;

    invoke-virtual {v0}, Lja/e0;->d()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {p2}, Lja/e0;->d()Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_75

    return v2

    .line 8
    :cond_75
    invoke-virtual {p2}, Lja/e0;->a()Lja/a;

    move-result-object p2

    invoke-virtual {p2}, Lja/a;->e()Ljavax/net/ssl/HostnameVerifier;

    move-result-object p2

    sget-object v0, Lsa/d;->a:Lsa/d;

    if-eq p2, v0, :cond_82

    return v2

    .line 9
    :cond_82
    invoke-virtual {p1}, Lja/a;->l()Lja/t;

    move-result-object p2

    invoke-virtual {p0, p2}, Lma/c;->t(Lja/t;)Z

    move-result p2

    if-nez p2, :cond_8d

    return v2

    .line 10
    :cond_8d
    :try_start_8d
    invoke-virtual {p1}, Lja/a;->a()Lja/g;

    move-result-object p2

    invoke-virtual {p1}, Lja/a;->l()Lja/t;

    move-result-object p1

    invoke-virtual {p1}, Lja/t;->m()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lma/c;->l()Lja/r;

    move-result-object v0

    invoke-virtual {v0}, Lja/r;->c()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lja/g;->a(Ljava/lang/String;Ljava/util/List;)V
    :try_end_a4
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_8d .. :try_end_a4} :catch_a5

    return v1

    :catch_a5
    :cond_a5
    :goto_a5
    return v2
.end method

.method public n(Z)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lma/c;->e:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_52

    iget-object v0, p0, Lma/c;->e:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_52

    iget-object v0, p0, Lma/c;->e:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_52

    .line 2
    :cond_1a
    iget-object v0, p0, Lma/c;->h:Lpa/g;

    if-eqz v0, :cond_27

    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lpa/g;->p(J)Z

    move-result p1

    return p1

    :cond_27
    const/4 v0, 0x1

    if-eqz p1, :cond_51

    .line 4
    :try_start_2a
    iget-object p1, p0, Lma/c;->e:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getSoTimeout()I

    move-result p1
    :try_end_30
    .catch Ljava/net/SocketTimeoutException; {:try_start_2a .. :try_end_30} :catch_51
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_30} :catch_50

    .line 5
    :try_start_30
    iget-object v2, p0, Lma/c;->e:Ljava/net/Socket;

    invoke-virtual {v2, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 6
    iget-object v2, p0, Lma/c;->i:Lokio/e;

    invoke-interface {v2}, Lokio/e;->S0()Z

    move-result v2
    :try_end_3b
    .catchall {:try_start_30 .. :try_end_3b} :catchall_49

    if-eqz v2, :cond_43

    .line 7
    :try_start_3d
    iget-object v2, p0, Lma/c;->e:Ljava/net/Socket;

    invoke-virtual {v2, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    return v1

    :cond_43
    iget-object v2, p0, Lma/c;->e:Ljava/net/Socket;

    invoke-virtual {v2, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    return v0

    :catchall_49
    move-exception v2

    iget-object v3, p0, Lma/c;->e:Ljava/net/Socket;

    invoke-virtual {v3, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v2
    :try_end_50
    .catch Ljava/net/SocketTimeoutException; {:try_start_3d .. :try_end_50} :catch_51
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_50} :catch_50

    :catch_50
    return v1

    :catch_51
    :cond_51
    return v0

    :cond_52
    :goto_52
    return v1
.end method

.method public o()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lma/c;->h:Lpa/g;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public p(Lja/x;Lja/u$a;Lma/g;)Lna/c;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lma/c;->h:Lpa/g;

    if-eqz v0, :cond_c

    .line 2
    new-instance v0, Lpa/f;

    iget-object v1, p0, Lma/c;->h:Lpa/g;

    invoke-direct {v0, p1, p2, p3, v1}, Lpa/f;-><init>(Lja/x;Lja/u$a;Lma/g;Lpa/g;)V

    return-object v0

    .line 3
    :cond_c
    iget-object v0, p0, Lma/c;->e:Ljava/net/Socket;

    invoke-interface {p2}, Lja/u$a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 4
    iget-object v0, p0, Lma/c;->i:Lokio/e;

    invoke-interface {v0}, Lokio/u;->timeout()Lokio/v;

    move-result-object v0

    invoke-interface {p2}, Lja/u$a;->a()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokio/v;->g(JLjava/util/concurrent/TimeUnit;)Lokio/v;

    .line 5
    iget-object v0, p0, Lma/c;->j:Lokio/d;

    invoke-interface {v0}, Lokio/t;->timeout()Lokio/v;

    move-result-object v0

    invoke-interface {p2}, Lja/u$a;->b()I

    move-result p2

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2, v3}, Lokio/v;->g(JLjava/util/concurrent/TimeUnit;)Lokio/v;

    .line 6
    new-instance p2, Loa/a;

    iget-object v0, p0, Lma/c;->i:Lokio/e;

    iget-object v1, p0, Lma/c;->j:Lokio/d;

    invoke-direct {p2, p1, p3, v0, v1}, Loa/a;-><init>(Lja/x;Lma/g;Lokio/e;Lokio/d;)V

    return-object p2
.end method

.method public q()Lja/e0;
    .registers 2

    .line 1
    iget-object v0, p0, Lma/c;->c:Lja/e0;

    return-object v0
.end method

.method public r()Ljava/net/Socket;
    .registers 2

    .line 1
    iget-object v0, p0, Lma/c;->e:Ljava/net/Socket;

    return-object v0
.end method

.method public t(Lja/t;)Z
    .registers 6

    .line 1
    invoke-virtual {p1}, Lja/t;->z()I

    move-result v0

    iget-object v1, p0, Lma/c;->c:Lja/e0;

    invoke-virtual {v1}, Lja/e0;->a()Lja/a;

    move-result-object v1

    invoke-virtual {v1}, Lja/a;->l()Lja/t;

    move-result-object v1

    invoke-virtual {v1}, Lja/t;->z()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_16

    return v2

    .line 2
    :cond_16
    invoke-virtual {p1}, Lja/t;->m()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lma/c;->c:Lja/e0;

    invoke-virtual {v1}, Lja/e0;->a()Lja/a;

    move-result-object v1

    invoke-virtual {v1}, Lja/a;->l()Lja/t;

    move-result-object v1

    invoke-virtual {v1}, Lja/t;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4d

    .line 3
    iget-object v0, p0, Lma/c;->f:Lja/r;

    if-eqz v0, :cond_4c

    sget-object v0, Lsa/d;->a:Lsa/d;

    .line 4
    invoke-virtual {p1}, Lja/t;->m()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lma/c;->f:Lja/r;

    invoke-virtual {v3}, Lja/r;->c()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 5
    invoke-virtual {v0, p1, v3}, Lsa/d;->c(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result p1

    if-eqz p1, :cond_4c

    const/4 v2, 0x1

    :cond_4c
    return v2

    :cond_4d
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lma/c;->c:Lja/e0;

    .line 2
    invoke-virtual {v1}, Lja/e0;->a()Lja/a;

    move-result-object v1

    invoke-virtual {v1}, Lja/a;->l()Lja/t;

    move-result-object v1

    invoke-virtual {v1}, Lja/t;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lma/c;->c:Lja/e0;

    invoke-virtual {v1}, Lja/e0;->a()Lja/a;

    move-result-object v1

    invoke-virtual {v1}, Lja/a;->l()Lja/t;

    move-result-object v1

    invoke-virtual {v1}, Lja/t;->z()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lma/c;->c:Lja/e0;

    .line 3
    invoke-virtual {v1}, Lja/e0;->b()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lma/c;->c:Lja/e0;

    .line 4
    invoke-virtual {v1}, Lja/e0;->d()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Lma/c;->f:Lja/r;

    if-eqz v1, :cond_5b

    invoke-virtual {v1}, Lja/r;->a()Lja/h;

    move-result-object v1

    goto :goto_5d

    :cond_5b
    const-string v1, "none"

    :goto_5d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lma/c;->g:Lja/y;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
