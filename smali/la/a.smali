###### Class la.a (la.a)
.class public final Lla/a;
.super Ljava/lang/Object;
.source "CacheInterceptor.java"

# interfaces
.implements Lja/u;


# instance fields
.field final a:Lla/d;


# direct methods
.method public constructor <init>(Lla/d;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lla/a;->a:Lla/d;

    return-void
.end method

.method private a(Lla/b;Lja/c0;)Lja/c0;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_3

    return-object p2

    .line 1
    :cond_3
    invoke-interface {p1}, Lla/b;->a()Lokio/t;

    move-result-object v0

    if-nez v0, :cond_a

    return-object p2

    .line 2
    :cond_a
    invoke-virtual {p2}, Lja/c0;->b()Lja/d0;

    move-result-object v1

    invoke-virtual {v1}, Lja/d0;->source()Lokio/e;

    move-result-object v1

    .line 3
    invoke-static {v0}, Lokio/n;->b(Lokio/t;)Lokio/d;

    move-result-object v0

    .line 4
    new-instance v2, Lla/a$a;

    invoke-direct {v2, p0, v1, p1, v0}, Lla/a$a;-><init>(Lla/a;Lokio/e;Lla/b;Lokio/d;)V

    const-string p1, "Content-Type"

    .line 5
    invoke-virtual {p2, p1}, Lja/c0;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {p2}, Lja/c0;->b()Lja/d0;

    move-result-object v0

    invoke-virtual {v0}, Lja/d0;->contentLength()J

    move-result-wide v0

    .line 7
    invoke-virtual {p2}, Lja/c0;->k()Lja/c0$a;

    move-result-object p2

    new-instance v3, Lna/h;

    .line 8
    invoke-static {v2}, Lokio/n;->c(Lokio/u;)Lokio/e;

    move-result-object v2

    invoke-direct {v3, p1, v0, v1, v2}, Lna/h;-><init>(Ljava/lang/String;JLokio/e;)V

    invoke-virtual {p2, v3}, Lja/c0$a;->b(Lja/d0;)Lja/c0$a;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lja/c0$a;->c()Lja/c0;

    move-result-object p1

    return-object p1
.end method

.method private static b(Lja/s;Lja/s;)Lja/s;
    .registers 9

    .line 1
    new-instance v0, Lja/s$a;

    invoke-direct {v0}, Lja/s$a;-><init>()V

    .line 2
    invoke-virtual {p0}, Lja/s;->h()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v1, :cond_40

    .line 3
    invoke-virtual {p0, v3}, Lja/s;->e(I)Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-virtual {p0, v3}, Lja/s;->i(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Warning"

    .line 5
    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_26

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_26

    goto :goto_3d

    .line 6
    :cond_26
    invoke-static {v4}, Lla/a;->c(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_38

    invoke-static {v4}, Lla/a;->d(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 7
    invoke-virtual {p1, v4}, Lja/s;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3d

    .line 8
    :cond_38
    sget-object v6, Lka/a;->a:Lka/a;

    invoke-virtual {v6, v0, v4, v5}, Lka/a;->b(Lja/s$a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3d
    :goto_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 9
    :cond_40
    invoke-virtual {p1}, Lja/s;->h()I

    move-result p0

    :goto_44
    if-ge v2, p0, :cond_62

    .line 10
    invoke-virtual {p1, v2}, Lja/s;->e(I)Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-static {v1}, Lla/a;->c(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5f

    invoke-static {v1}, Lla/a;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 12
    sget-object v3, Lka/a;->a:Lka/a;

    invoke-virtual {p1, v2}, Lja/s;->i(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v1, v4}, Lka/a;->b(Lja/s$a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5f
    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    .line 13
    :cond_62
    invoke-virtual {v0}, Lja/s$a;->d()Lja/s;

    move-result-object p0

    return-object p0
.end method

.method static c(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "Content-Length"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "Content-Encoding"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "Content-Type"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    :goto_1c
    return p0
.end method

.method static d(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "Connection"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "Keep-Alive"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "Proxy-Authenticate"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "Proxy-Authorization"

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "TE"

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "Trailers"

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "Transfer-Encoding"

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "Upgrade"

    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_42

    const/4 p0, 0x1

    goto :goto_43

    :cond_42
    const/4 p0, 0x0

    :goto_43
    return p0
.end method

.method private static e(Lja/c0;)Lja/c0;
    .registers 2

    if-eqz p0, :cond_15

    .line 1
    invoke-virtual {p0}, Lja/c0;->b()Lja/d0;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 2
    invoke-virtual {p0}, Lja/c0;->k()Lja/c0$a;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lja/c0$a;->b(Lja/d0;)Lja/c0$a;

    move-result-object p0

    invoke-virtual {p0}, Lja/c0$a;->c()Lja/c0;

    move-result-object p0

    :cond_15
    return-object p0
.end method


# virtual methods
.method public intercept(Lja/u$a;)Lja/c0;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lla/a;->a:Lla/d;

    if-eqz v0, :cond_d

    .line 2
    invoke-interface {p1}, Lja/u$a;->f()Lja/a0;

    move-result-object v1

    invoke-interface {v0, v1}, Lla/d;->f(Lja/a0;)Lja/c0;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 3
    :goto_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 4
    new-instance v3, Lla/c$a;

    invoke-interface {p1}, Lja/u$a;->f()Lja/a0;

    move-result-object v4

    invoke-direct {v3, v1, v2, v4, v0}, Lla/c$a;-><init>(JLja/a0;Lja/c0;)V

    invoke-virtual {v3}, Lla/c$a;->c()Lla/c;

    move-result-object v1

    .line 5
    iget-object v2, v1, Lla/c;->a:Lja/a0;

    .line 6
    iget-object v3, v1, Lla/c;->b:Lja/c0;

    .line 7
    iget-object v4, p0, Lla/a;->a:Lla/d;

    if-eqz v4, :cond_2a

    .line 8
    invoke-interface {v4, v1}, Lla/d;->e(Lla/c;)V

    :cond_2a
    if-eqz v0, :cond_35

    if-nez v3, :cond_35

    .line 9
    invoke-virtual {v0}, Lja/c0;->b()Lja/d0;

    move-result-object v1

    invoke-static {v1}, Lka/c;->g(Ljava/io/Closeable;)V

    :cond_35
    if-nez v2, :cond_71

    if-nez v3, :cond_71

    .line 10
    new-instance v0, Lja/c0$a;

    invoke-direct {v0}, Lja/c0$a;-><init>()V

    .line 11
    invoke-interface {p1}, Lja/u$a;->f()Lja/a0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lja/c0$a;->p(Lja/a0;)Lja/c0$a;

    move-result-object p1

    sget-object v0, Lja/y;->q:Lja/y;

    .line 12
    invoke-virtual {p1, v0}, Lja/c0$a;->n(Lja/y;)Lja/c0$a;

    move-result-object p1

    const/16 v0, 0x1f8

    .line 13
    invoke-virtual {p1, v0}, Lja/c0$a;->g(I)Lja/c0$a;

    move-result-object p1

    const-string v0, "Unsatisfiable Request (only-if-cached)"

    .line 14
    invoke-virtual {p1, v0}, Lja/c0$a;->k(Ljava/lang/String;)Lja/c0$a;

    move-result-object p1

    sget-object v0, Lka/c;->c:Lja/d0;

    .line 15
    invoke-virtual {p1, v0}, Lja/c0$a;->b(Lja/d0;)Lja/c0$a;

    move-result-object p1

    const-wide/16 v0, -0x1

    .line 16
    invoke-virtual {p1, v0, v1}, Lja/c0$a;->q(J)Lja/c0$a;

    move-result-object p1

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lja/c0$a;->o(J)Lja/c0$a;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lja/c0$a;->c()Lja/c0;

    move-result-object p1

    return-object p1

    :cond_71
    if-nez v2, :cond_84

    .line 19
    invoke-virtual {v3}, Lja/c0;->k()Lja/c0$a;

    move-result-object p1

    .line 20
    invoke-static {v3}, Lla/a;->e(Lja/c0;)Lja/c0;

    move-result-object v0

    invoke-virtual {p1, v0}, Lja/c0$a;->d(Lja/c0;)Lja/c0$a;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lja/c0$a;->c()Lja/c0;

    move-result-object p1

    return-object p1

    .line 22
    :cond_84
    :try_start_84
    invoke-interface {p1, v2}, Lja/u$a;->e(Lja/a0;)Lja/c0;

    move-result-object p1
    :try_end_88
    .catchall {:try_start_84 .. :try_end_88} :catchall_131

    if-nez p1, :cond_93

    if-eqz v0, :cond_93

    .line 23
    invoke-virtual {v0}, Lja/c0;->b()Lja/d0;

    move-result-object v0

    invoke-static {v0}, Lka/c;->g(Ljava/io/Closeable;)V

    :cond_93
    if-eqz v3, :cond_ee

    .line 24
    invoke-virtual {p1}, Lja/c0;->d()I

    move-result v0

    const/16 v1, 0x130

    if-ne v0, v1, :cond_e7

    .line 25
    invoke-virtual {v3}, Lja/c0;->k()Lja/c0$a;

    move-result-object v0

    .line 26
    invoke-virtual {v3}, Lja/c0;->h()Lja/s;

    move-result-object v1

    invoke-virtual {p1}, Lja/c0;->h()Lja/s;

    move-result-object v2

    invoke-static {v1, v2}, Lla/a;->b(Lja/s;Lja/s;)Lja/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lja/c0$a;->j(Lja/s;)Lja/c0$a;

    move-result-object v0

    .line 27
    invoke-virtual {p1}, Lja/c0;->o()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lja/c0$a;->q(J)Lja/c0$a;

    move-result-object v0

    .line 28
    invoke-virtual {p1}, Lja/c0;->m()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lja/c0$a;->o(J)Lja/c0$a;

    move-result-object v0

    .line 29
    invoke-static {v3}, Lla/a;->e(Lja/c0;)Lja/c0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lja/c0$a;->d(Lja/c0;)Lja/c0$a;

    move-result-object v0

    .line 30
    invoke-static {p1}, Lla/a;->e(Lja/c0;)Lja/c0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lja/c0$a;->l(Lja/c0;)Lja/c0$a;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lja/c0$a;->c()Lja/c0;

    move-result-object v0

    .line 32
    invoke-virtual {p1}, Lja/c0;->b()Lja/d0;

    move-result-object p1

    invoke-virtual {p1}, Lja/d0;->close()V

    .line 33
    iget-object p1, p0, Lla/a;->a:Lla/d;

    invoke-interface {p1}, Lla/d;->c()V

    .line 34
    iget-object p1, p0, Lla/a;->a:Lla/d;

    invoke-interface {p1, v3, v0}, Lla/d;->d(Lja/c0;Lja/c0;)V

    return-object v0

    .line 35
    :cond_e7
    invoke-virtual {v3}, Lja/c0;->b()Lja/d0;

    move-result-object v0

    invoke-static {v0}, Lka/c;->g(Ljava/io/Closeable;)V

    .line 36
    :cond_ee
    invoke-virtual {p1}, Lja/c0;->k()Lja/c0$a;

    move-result-object v0

    .line 37
    invoke-static {v3}, Lla/a;->e(Lja/c0;)Lja/c0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lja/c0$a;->d(Lja/c0;)Lja/c0$a;

    move-result-object v0

    .line 38
    invoke-static {p1}, Lla/a;->e(Lja/c0;)Lja/c0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lja/c0$a;->l(Lja/c0;)Lja/c0$a;

    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lja/c0$a;->c()Lja/c0;

    move-result-object p1

    .line 40
    iget-object v0, p0, Lla/a;->a:Lla/d;

    if-eqz v0, :cond_130

    .line 41
    invoke-static {p1}, Lna/e;->c(Lja/c0;)Z

    move-result v0

    if-eqz v0, :cond_121

    invoke-static {p1, v2}, Lla/c;->a(Lja/c0;Lja/a0;)Z

    move-result v0

    if-eqz v0, :cond_121

    .line 42
    iget-object v0, p0, Lla/a;->a:Lla/d;

    invoke-interface {v0, p1}, Lla/d;->a(Lja/c0;)Lla/b;

    move-result-object v0

    .line 43
    invoke-direct {p0, v0, p1}, Lla/a;->a(Lla/b;Lja/c0;)Lja/c0;

    move-result-object p1

    return-object p1

    .line 44
    :cond_121
    invoke-virtual {v2}, Lja/a0;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lna/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_130

    .line 45
    :try_start_12b
    iget-object v0, p0, Lla/a;->a:Lla/d;

    invoke-interface {v0, v2}, Lla/d;->b(Lja/a0;)V
    :try_end_130
    .catch Ljava/io/IOException; {:try_start_12b .. :try_end_130} :catch_130

    :catch_130
    :cond_130
    return-object p1

    :catchall_131
    move-exception p1

    if-eqz v0, :cond_13b

    .line 46
    invoke-virtual {v0}, Lja/c0;->b()Lja/d0;

    move-result-object v0

    invoke-static {v0}, Lka/c;->g(Ljava/io/Closeable;)V

    :cond_13b
    throw p1
.end method

###### Class la.a.C0201a (la.a$a)
.class Lla/a$a;
.super Ljava/lang/Object;
.source "CacheInterceptor.java"

# interfaces
.implements Lokio/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lla/a;->a(Lla/b;Lja/c0;)Lja/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field o:Z

.field final synthetic p:Lokio/e;

.field final synthetic q:Lla/b;

.field final synthetic r:Lokio/d;

.field final synthetic s:Lla/a;


# direct methods
.method constructor <init>(Lla/a;Lokio/e;Lla/b;Lokio/d;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lla/a$a;->s:Lla/a;

    iput-object p2, p0, Lla/a$a;->p:Lokio/e;

    iput-object p3, p0, Lla/a$a;->q:Lla/b;

    iput-object p4, p0, Lla/a$a;->r:Lokio/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lla/a$a;->o:Z

    if-nez v0, :cond_16

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    invoke-static {p0, v0, v1}, Lka/c;->p(Lokio/u;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lla/a$a;->o:Z

    .line 4
    iget-object v0, p0, Lla/a$a;->q:Lla/b;

    invoke-interface {v0}, Lla/b;->abort()V

    .line 5
    :cond_16
    iget-object v0, p0, Lla/a$a;->p:Lokio/e;

    invoke-interface {v0}, Lokio/u;->close()V

    return-void
.end method

.method public read(Lokio/c;J)J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    :try_start_1
    iget-object v1, p0, Lla/a$a;->p:Lokio/e;

    invoke-interface {v1, p1, p2, p3}, Lokio/u;->read(Lokio/c;J)J

    move-result-wide p2
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_7} :catch_30

    const-wide/16 v1, -0x1

    cmp-long v3, p2, v1

    if-nez v3, :cond_19

    .line 2
    iget-boolean p1, p0, Lla/a$a;->o:Z

    if-nez p1, :cond_18

    .line 3
    iput-boolean v0, p0, Lla/a$a;->o:Z

    .line 4
    iget-object p1, p0, Lla/a$a;->r:Lokio/d;

    invoke-interface {p1}, Lokio/t;->close()V

    :cond_18
    return-wide v1

    .line 5
    :cond_19
    iget-object v0, p0, Lla/a$a;->r:Lokio/d;

    invoke-interface {v0}, Lokio/d;->B()Lokio/c;

    move-result-object v3

    invoke-virtual {p1}, Lokio/c;->s()J

    move-result-wide v0

    sub-long v4, v0, p2

    move-object v2, p1

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, Lokio/c;->g(Lokio/c;JJ)Lokio/c;

    .line 6
    iget-object p1, p0, Lla/a$a;->r:Lokio/d;

    invoke-interface {p1}, Lokio/d;->h1()Lokio/d;

    return-wide p2

    :catch_30
    move-exception p1

    .line 7
    iget-boolean p2, p0, Lla/a$a;->o:Z

    if-nez p2, :cond_3c

    .line 8
    iput-boolean v0, p0, Lla/a$a;->o:Z

    .line 9
    iget-object p2, p0, Lla/a$a;->q:Lla/b;

    invoke-interface {p2}, Lla/b;->abort()V

    .line 10
    :cond_3c
    throw p1
.end method

.method public timeout()Lokio/v;
    .registers 2

    .line 1
    iget-object v0, p0, Lla/a$a;->p:Lokio/e;

    invoke-interface {v0}, Lokio/u;->timeout()Lokio/v;

    move-result-object v0

    return-object v0
.end method
