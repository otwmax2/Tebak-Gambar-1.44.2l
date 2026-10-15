###### Class oa.a (oa.a)
.class public final Loa/a;
.super Ljava/lang/Object;
.source "Http1Codec.java"

# interfaces
.implements Lna/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Loa/a$g;,
        Loa/a$d;,
        Loa/a$f;,
        Loa/a$b;,
        Loa/a$c;,
        Loa/a$e;
    }
.end annotation


# instance fields
.field final a:Lja/x;

.field final b:Lma/g;

.field final c:Lokio/e;

.field final d:Lokio/d;

.field e:I

.field private f:J


# direct methods
.method public constructor <init>(Lja/x;Lma/g;Lokio/e;Lokio/d;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Loa/a;->e:I

    const-wide/32 v0, 0x40000

    .line 3
    iput-wide v0, p0, Loa/a;->f:J

    .line 4
    iput-object p1, p0, Loa/a;->a:Lja/x;

    .line 5
    iput-object p2, p0, Loa/a;->b:Lma/g;

    .line 6
    iput-object p3, p0, Loa/a;->c:Lokio/e;

    .line 7
    iput-object p4, p0, Loa/a;->d:Lokio/d;

    return-void
.end method

.method private m()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Loa/a;->c:Lokio/e;

    iget-wide v1, p0, Loa/a;->f:J

    invoke-interface {v0, v1, v2}, Lokio/e;->p1(J)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-wide v1, p0, Loa/a;->f:J

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Loa/a;->f:J

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Loa/a;->d:Lokio/d;

    invoke-interface {v0}, Lokio/d;->flush()V

    return-void
.end method

.method public b(Lja/c0;)Lja/d0;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Loa/a;->b:Lma/g;

    iget-object v1, v0, Lma/g;->f:Lja/p;

    iget-object v0, v0, Lma/g;->e:Lja/e;

    invoke-virtual {v1, v0}, Lja/p;->q(Lja/e;)V

    const-string v0, "Content-Type"

    .line 2
    invoke-virtual {p1, v0}, Lja/c0;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lna/e;->c(Lja/c0;)Z

    move-result v1

    if-nez v1, :cond_25

    const-wide/16 v1, 0x0

    .line 4
    invoke-virtual {p0, v1, v2}, Loa/a;->k(J)Lokio/u;

    move-result-object p1

    .line 5
    new-instance v3, Lna/h;

    invoke-static {p1}, Lokio/n;->c(Lokio/u;)Lokio/e;

    move-result-object p1

    invoke-direct {v3, v0, v1, v2, p1}, Lna/h;-><init>(Ljava/lang/String;JLokio/e;)V

    return-object v3

    :cond_25
    const-string v1, "Transfer-Encoding"

    .line 6
    invoke-virtual {p1, v1}, Lja/c0;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "chunked"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_4b

    .line 7
    invoke-virtual {p1}, Lja/c0;->n()Lja/a0;

    move-result-object p1

    invoke-virtual {p1}, Lja/a0;->h()Lja/t;

    move-result-object p1

    invoke-virtual {p0, p1}, Loa/a;->i(Lja/t;)Lokio/u;

    move-result-object p1

    .line 8
    new-instance v1, Lna/h;

    invoke-static {p1}, Lokio/n;->c(Lokio/u;)Lokio/e;

    move-result-object p1

    invoke-direct {v1, v0, v2, v3, p1}, Lna/h;-><init>(Ljava/lang/String;JLokio/e;)V

    return-object v1

    .line 9
    :cond_4b
    invoke-static {p1}, Lna/e;->b(Lja/c0;)J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-eqz p1, :cond_61

    .line 10
    invoke-virtual {p0, v4, v5}, Loa/a;->k(J)Lokio/u;

    move-result-object p1

    .line 11
    new-instance v1, Lna/h;

    invoke-static {p1}, Lokio/n;->c(Lokio/u;)Lokio/e;

    move-result-object p1

    invoke-direct {v1, v0, v4, v5, p1}, Lna/h;-><init>(Ljava/lang/String;JLokio/e;)V

    return-object v1

    .line 12
    :cond_61
    new-instance p1, Lna/h;

    invoke-virtual {p0}, Loa/a;->l()Lokio/u;

    move-result-object v1

    invoke-static {v1}, Lokio/n;->c(Lokio/u;)Lokio/e;

    move-result-object v1

    invoke-direct {p1, v0, v2, v3, v1}, Lna/h;-><init>(Ljava/lang/String;JLokio/e;)V

    return-object p1
.end method

.method public c(Lja/a0;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Loa/a;->b:Lma/g;

    .line 2
    invoke-virtual {v0}, Lma/g;->d()Lma/c;

    move-result-object v0

    invoke-virtual {v0}, Lma/c;->q()Lja/e0;

    move-result-object v0

    invoke-virtual {v0}, Lja/e0;->b()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    .line 3
    invoke-static {p1, v0}, Lna/i;->a(Lja/a0;Ljava/net/Proxy$Type;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lja/a0;->d()Lja/s;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Loa/a;->o(Lja/s;Ljava/lang/String;)V

    return-void
.end method

.method public cancel()V
    .registers 2

    .line 1
    iget-object v0, p0, Loa/a;->b:Lma/g;

    invoke-virtual {v0}, Lma/g;->d()Lma/c;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2
    invoke-virtual {v0}, Lma/c;->d()V

    :cond_b
    return-void
.end method

.method public d(Z)Lja/c0$a;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Loa/a;->e:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_22

    if-ne v0, v1, :cond_9

    goto :goto_22

    .line 2
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Loa/a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_22
    :goto_22
    :try_start_22
    invoke-direct {p0}, Loa/a;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lna/k;->a(Ljava/lang/String;)Lna/k;

    move-result-object v0

    .line 4
    new-instance v2, Lja/c0$a;

    invoke-direct {v2}, Lja/c0$a;-><init>()V

    iget-object v3, v0, Lna/k;->a:Lja/y;

    .line 5
    invoke-virtual {v2, v3}, Lja/c0$a;->n(Lja/y;)Lja/c0$a;

    move-result-object v2

    iget v3, v0, Lna/k;->b:I

    .line 6
    invoke-virtual {v2, v3}, Lja/c0$a;->g(I)Lja/c0$a;

    move-result-object v2

    iget-object v3, v0, Lna/k;->c:Ljava/lang/String;

    .line 7
    invoke-virtual {v2, v3}, Lja/c0$a;->k(Ljava/lang/String;)Lja/c0$a;

    move-result-object v2

    .line 8
    invoke-virtual {p0}, Loa/a;->n()Lja/s;

    move-result-object v3

    invoke-virtual {v2, v3}, Lja/c0$a;->j(Lja/s;)Lja/c0$a;

    move-result-object v2

    const/16 v3, 0x64

    if-eqz p1, :cond_53

    .line 9
    iget p1, v0, Lna/k;->b:I

    if-ne p1, v3, :cond_53

    const/4 p1, 0x0

    return-object p1

    .line 10
    :cond_53
    iget p1, v0, Lna/k;->b:I

    if-ne p1, v3, :cond_5a

    .line 11
    iput v1, p0, Loa/a;->e:I

    return-object v2

    :cond_5a
    const/4 p1, 0x4

    .line 12
    iput p1, p0, Loa/a;->e:I
    :try_end_5d
    .catch Ljava/io/EOFException; {:try_start_22 .. :try_end_5d} :catch_5e

    return-object v2

    :catch_5e
    move-exception p1

    .line 13
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected end of stream on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Loa/a;->b:Lma/g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 15
    throw v0
.end method

.method public e(Lja/a0;J)Lokio/t;
    .registers 6

    const-string v0, "Transfer-Encoding"

    .line 1
    invoke-virtual {p1, v0}, Lja/a0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "chunked"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 2
    invoke-virtual {p0}, Loa/a;->h()Lokio/t;

    move-result-object p1

    return-object p1

    :cond_13
    const-wide/16 v0, -0x1

    cmp-long p1, p2, v0

    if-eqz p1, :cond_1e

    .line 3
    invoke-virtual {p0, p2, p3}, Loa/a;->j(J)Lokio/t;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Loa/a;->d:Lokio/d;

    invoke-interface {v0}, Lokio/d;->flush()V

    return-void
.end method

.method g(Lokio/j;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Lokio/j;->i()Lokio/v;

    move-result-object v0

    .line 2
    sget-object v1, Lokio/v;->d:Lokio/v;

    invoke-virtual {p1, v1}, Lokio/j;->j(Lokio/v;)Lokio/j;

    .line 3
    invoke-virtual {v0}, Lokio/v;->a()Lokio/v;

    .line 4
    invoke-virtual {v0}, Lokio/v;->b()Lokio/v;

    return-void
.end method

.method public h()Lokio/t;
    .registers 4

    .line 1
    iget v0, p0, Loa/a;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Loa/a;->e:I

    .line 3
    new-instance v0, Loa/a$c;

    invoke-direct {v0, p0}, Loa/a$c;-><init>(Loa/a;)V

    return-object v0

    .line 4
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Loa/a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i(Lja/t;)Lokio/u;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Loa/a;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    const/4 v0, 0x5

    .line 2
    iput v0, p0, Loa/a;->e:I

    .line 3
    new-instance v0, Loa/a$d;

    invoke-direct {v0, p0, p1}, Loa/a$d;-><init>(Loa/a;Lja/t;)V

    return-object v0

    .line 4
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Loa/a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j(J)Lokio/t;
    .registers 5

    .line 1
    iget v0, p0, Loa/a;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Loa/a;->e:I

    .line 3
    new-instance v0, Loa/a$e;

    invoke-direct {v0, p0, p1, p2}, Loa/a$e;-><init>(Loa/a;J)V

    return-object v0

    .line 4
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Loa/a;->e:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public k(J)Lokio/u;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Loa/a;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    const/4 v0, 0x5

    .line 2
    iput v0, p0, Loa/a;->e:I

    .line 3
    new-instance v0, Loa/a$f;

    invoke-direct {v0, p0, p1, p2}, Loa/a$f;-><init>(Loa/a;J)V

    return-object v0

    .line 4
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Loa/a;->e:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public l()Lokio/u;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Loa/a;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1d

    .line 2
    iget-object v0, p0, Loa/a;->b:Lma/g;

    if-eqz v0, :cond_15

    const/4 v1, 0x5

    .line 3
    iput v1, p0, Loa/a;->e:I

    .line 4
    invoke-virtual {v0}, Lma/g;->j()V

    .line 5
    new-instance v0, Loa/a$g;

    invoke-direct {v0, p0}, Loa/a$g;-><init>(Loa/a;)V

    return-object v0

    .line 6
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "streamAllocation == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Loa/a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public n()Lja/s;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lja/s$a;

    invoke-direct {v0}, Lja/s$a;-><init>()V

    .line 2
    :goto_5
    invoke-direct {p0}, Loa/a;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_15

    .line 3
    sget-object v2, Lka/a;->a:Lka/a;

    invoke-virtual {v2, v0, v1}, Lka/a;->a(Lja/s$a;Ljava/lang/String;)V

    goto :goto_5

    .line 4
    :cond_15
    invoke-virtual {v0}, Lja/s$a;->d()Lja/s;

    move-result-object v0

    return-object v0
.end method

.method public o(Lja/s;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Loa/a;->e:I

    if-nez v0, :cond_3d

    .line 2
    iget-object v0, p0, Loa/a;->d:Lokio/d;

    invoke-interface {v0, p2}, Lokio/d;->H1(Ljava/lang/String;)Lokio/d;

    move-result-object p2

    const-string v0, "\r\n"

    invoke-interface {p2, v0}, Lokio/d;->H1(Ljava/lang/String;)Lokio/d;

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1}, Lja/s;->h()I

    move-result v1

    :goto_14
    if-ge p2, v1, :cond_34

    .line 4
    iget-object v2, p0, Loa/a;->d:Lokio/d;

    invoke-virtual {p1, p2}, Lja/s;->e(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lokio/d;->H1(Ljava/lang/String;)Lokio/d;

    move-result-object v2

    const-string v3, ": "

    .line 5
    invoke-interface {v2, v3}, Lokio/d;->H1(Ljava/lang/String;)Lokio/d;

    move-result-object v2

    .line 6
    invoke-virtual {p1, p2}, Lja/s;->i(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lokio/d;->H1(Ljava/lang/String;)Lokio/d;

    move-result-object v2

    .line 7
    invoke-interface {v2, v0}, Lokio/d;->H1(Ljava/lang/String;)Lokio/d;

    add-int/lit8 p2, p2, 0x1

    goto :goto_14

    .line 8
    :cond_34
    iget-object p1, p0, Loa/a;->d:Lokio/d;

    invoke-interface {p1, v0}, Lokio/d;->H1(Ljava/lang/String;)Lokio/d;

    const/4 p1, 0x1

    .line 9
    iput p1, p0, Loa/a;->e:I

    return-void

    .line 10
    :cond_3d
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Loa/a;->e:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_57

    :goto_56
    throw p1

    :goto_57
    goto :goto_56
.end method

###### Class oa.a.C0215a (oa.a$a)
.class synthetic Loa/a$a;
.super Ljava/lang/Object;
.source "Http1Codec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loa/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class oa.a.b (oa.a$b)
.class abstract Loa/a$b;
.super Ljava/lang/Object;
.source "Http1Codec.java"

# interfaces
.implements Lokio/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loa/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "b"
.end annotation


# instance fields
.field protected final o:Lokio/j;

.field protected p:Z

.field protected q:J

.field final synthetic r:Loa/a;


# direct methods
.method private constructor <init>(Loa/a;)V
    .registers 4

    .line 1
    iput-object p1, p0, Loa/a$b;->r:Loa/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lokio/j;

    iget-object p1, p1, Loa/a;->c:Lokio/e;

    invoke-interface {p1}, Lokio/u;->timeout()Lokio/v;

    move-result-object p1

    invoke-direct {v0, p1}, Lokio/j;-><init>(Lokio/v;)V

    iput-object v0, p0, Loa/a$b;->o:Lokio/j;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Loa/a$b;->q:J

    return-void
.end method

.method synthetic constructor <init>(Loa/a;Loa/a$a;)V
    .registers 3

    .line 4
    invoke-direct {p0, p1}, Loa/a$b;-><init>(Loa/a;)V

    return-void
.end method


# virtual methods
.method protected final b(ZLjava/io/IOException;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Loa/a$b;->r:Loa/a;

    iget v1, v0, Loa/a;->e:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_8

    return-void

    :cond_8
    const/4 v3, 0x5

    if-ne v1, v3, :cond_21

    .line 2
    iget-object v1, p0, Loa/a$b;->o:Lokio/j;

    invoke-virtual {v0, v1}, Loa/a;->g(Lokio/j;)V

    .line 3
    iget-object v5, p0, Loa/a$b;->r:Loa/a;

    iput v2, v5, Loa/a;->e:I

    .line 4
    iget-object v3, v5, Loa/a;->b:Lma/g;

    if-eqz v3, :cond_20

    xor-int/lit8 v4, p1, 0x1

    .line 5
    iget-wide v6, p0, Loa/a$b;->q:J

    move-object v8, p2

    invoke-virtual/range {v3 .. v8}, Lma/g;->r(ZLna/c;JLjava/io/IOException;)V

    :cond_20
    return-void

    .line 6
    :cond_21
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Loa/a$b;->r:Loa/a;

    iget v0, v0, Loa/a;->e:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public read(Lokio/c;J)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Loa/a$b;->r:Loa/a;

    iget-object v0, v0, Loa/a;->c:Lokio/e;

    invoke-interface {v0, p1, p2, p3}, Lokio/u;->read(Lokio/c;J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-lez p3, :cond_13

    .line 2
    iget-wide v0, p0, Loa/a$b;->q:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Loa/a$b;->q:J
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_14

    :cond_13
    return-wide p1

    :catch_14
    move-exception p1

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p0, p2, p1}, Loa/a$b;->b(ZLjava/io/IOException;)V

    .line 4
    throw p1
.end method

.method public timeout()Lokio/v;
    .registers 2

    .line 1
    iget-object v0, p0, Loa/a$b;->o:Lokio/j;

    return-object v0
.end method

###### Class oa.a.c (oa.a$c)
.class final Loa/a$c;
.super Ljava/lang/Object;
.source "Http1Codec.java"

# interfaces
.implements Lokio/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loa/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field private final o:Lokio/j;

.field private p:Z

.field final synthetic q:Loa/a;


# direct methods
.method constructor <init>(Loa/a;)V
    .registers 3

    .line 1
    iput-object p1, p0, Loa/a$c;->q:Loa/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lokio/j;

    iget-object p1, p1, Loa/a;->d:Lokio/d;

    invoke-interface {p1}, Lokio/t;->timeout()Lokio/v;

    move-result-object p1

    invoke-direct {v0, p1}, Lokio/j;-><init>(Lokio/v;)V

    iput-object v0, p0, Loa/a$c;->o:Lokio/j;

    return-void
.end method


# virtual methods
.method public a2(Lokio/c;J)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Loa/a$c;->p:Z

    if-nez v0, :cond_2a

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_b

    return-void

    .line 2
    :cond_b
    iget-object v0, p0, Loa/a$c;->q:Loa/a;

    iget-object v0, v0, Loa/a;->d:Lokio/d;

    invoke-interface {v0, p2, p3}, Lokio/d;->i2(J)Lokio/d;

    .line 3
    iget-object v0, p0, Loa/a$c;->q:Loa/a;

    iget-object v0, v0, Loa/a;->d:Lokio/d;

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lokio/d;->H1(Ljava/lang/String;)Lokio/d;

    .line 4
    iget-object v0, p0, Loa/a$c;->q:Loa/a;

    iget-object v0, v0, Loa/a;->d:Lokio/d;

    invoke-interface {v0, p1, p2, p3}, Lokio/t;->a2(Lokio/c;J)V

    .line 5
    iget-object p1, p0, Loa/a$c;->q:Loa/a;

    iget-object p1, p1, Loa/a;->d:Lokio/d;

    invoke-interface {p1, v1}, Lokio/d;->H1(Ljava/lang/String;)Lokio/d;

    return-void

    .line 6
    :cond_2a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Loa/a$c;->p:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_21

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x1

    .line 2
    :try_start_8
    iput-boolean v0, p0, Loa/a$c;->p:Z

    .line 3
    iget-object v0, p0, Loa/a$c;->q:Loa/a;

    iget-object v0, v0, Loa/a;->d:Lokio/d;

    const-string v1, "0\r\n\r\n"

    invoke-interface {v0, v1}, Lokio/d;->H1(Ljava/lang/String;)Lokio/d;

    .line 4
    iget-object v0, p0, Loa/a$c;->q:Loa/a;

    iget-object v1, p0, Loa/a$c;->o:Lokio/j;

    invoke-virtual {v0, v1}, Loa/a;->g(Lokio/j;)V

    .line 5
    iget-object v0, p0, Loa/a$c;->q:Loa/a;

    const/4 v1, 0x3

    iput v1, v0, Loa/a;->e:I
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_21

    .line 6
    monitor-exit p0

    return-void

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Loa/a$c;->p:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    .line 2
    :cond_7
    :try_start_7
    iget-object v0, p0, Loa/a$c;->q:Loa/a;

    iget-object v0, v0, Loa/a;->d:Lokio/d;

    invoke-interface {v0}, Lokio/d;->flush()V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_10

    .line 3
    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public timeout()Lokio/v;
    .registers 2

    .line 1
    iget-object v0, p0, Loa/a$c;->o:Lokio/j;

    return-object v0
.end method

###### Class oa.a.d (oa.a$d)
.class Loa/a$d;
.super Loa/a$b;
.source "Http1Codec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loa/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private final s:Lja/t;

.field private t:J

.field private u:Z

.field final synthetic v:Loa/a;


# direct methods
.method constructor <init>(Loa/a;Lja/t;)V
    .registers 5

    .line 1
    iput-object p1, p0, Loa/a$d;->v:Loa/a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Loa/a$b;-><init>(Loa/a;Loa/a$a;)V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Loa/a$d;->t:J

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Loa/a$d;->u:Z

    .line 4
    iput-object p2, p0, Loa/a$d;->s:Lja/t;

    return-void
.end method

.method private c()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Loa/a$d;->t:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_f

    .line 2
    iget-object v0, p0, Loa/a$d;->v:Loa/a;

    iget-object v0, v0, Loa/a;->c:Lokio/e;

    invoke-interface {v0}, Lokio/e;->D2()Ljava/lang/String;

    .line 3
    :cond_f
    :try_start_f
    iget-object v0, p0, Loa/a$d;->v:Loa/a;

    iget-object v0, v0, Loa/a;->c:Lokio/e;

    invoke-interface {v0}, Lokio/e;->P3()J

    move-result-wide v0

    iput-wide v0, p0, Loa/a$d;->t:J

    .line 4
    iget-object v0, p0, Loa/a$d;->v:Loa/a;

    iget-object v0, v0, Loa/a;->c:Lokio/e;

    invoke-interface {v0}, Lokio/e;->D2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-wide v1, p0, Loa/a$d;->t:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_5d

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3b

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_39
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_39} :catch_7e

    if-eqz v1, :cond_5d

    .line 6
    :cond_3b
    iget-wide v0, p0, Loa/a$d;->t:J

    cmp-long v2, v0, v3

    if-nez v2, :cond_5c

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Loa/a$d;->u:Z

    .line 8
    iget-object v0, p0, Loa/a$d;->v:Loa/a;

    iget-object v0, v0, Loa/a;->a:Lja/x;

    invoke-virtual {v0}, Lja/x;->j()Lja/m;

    move-result-object v0

    iget-object v1, p0, Loa/a$d;->s:Lja/t;

    iget-object v2, p0, Loa/a$d;->v:Loa/a;

    invoke-virtual {v2}, Loa/a;->n()Lja/s;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lna/e;->e(Lja/m;Lja/t;Lja/s;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v0, v1}, Loa/a$b;->b(ZLjava/io/IOException;)V

    :cond_5c
    return-void

    .line 10
    :cond_5d
    :try_start_5d
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected chunk size and optional extensions but was \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Loa/a$d;->t:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_7e
    .catch Ljava/lang/NumberFormatException; {:try_start_5d .. :try_end_7e} :catch_7e

    :catch_7e
    move-exception v0

    .line 11
    new-instance v1, Ljava/net/ProtocolException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
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
    iget-boolean v0, p0, Loa/a$b;->p:Z

    if-eqz v0, :cond_5

    return-void

    .line 2
    :cond_5
    iget-boolean v0, p0, Loa/a$d;->u:Z

    if-eqz v0, :cond_18

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Lka/c;->p(Lokio/u;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Loa/a$b;->b(ZLjava/io/IOException;)V

    :cond_18
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Loa/a$b;->p:Z

    return-void
.end method

.method public read(Lokio/c;J)J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_4b

    .line 1
    iget-boolean v2, p0, Loa/a$b;->p:Z

    if-nez v2, :cond_43

    .line 2
    iget-boolean v2, p0, Loa/a$d;->u:Z

    const-wide/16 v3, -0x1

    if-nez v2, :cond_11

    return-wide v3

    .line 3
    :cond_11
    iget-wide v5, p0, Loa/a$d;->t:J

    cmp-long v2, v5, v0

    if-eqz v2, :cond_1b

    cmp-long v0, v5, v3

    if-nez v0, :cond_23

    .line 4
    :cond_1b
    invoke-direct {p0}, Loa/a$d;->c()V

    .line 5
    iget-boolean v0, p0, Loa/a$d;->u:Z

    if-nez v0, :cond_23

    return-wide v3

    .line 6
    :cond_23
    iget-wide v0, p0, Loa/a$d;->t:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-super {p0, p1, p2, p3}, Loa/a$b;->read(Lokio/c;J)J

    move-result-wide p1

    cmp-long p3, p1, v3

    if-eqz p3, :cond_37

    .line 7
    iget-wide v0, p0, Loa/a$d;->t:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Loa/a$d;->t:J

    return-wide p1

    .line 8
    :cond_37
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "unexpected end of stream"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 9
    invoke-virtual {p0, p2, p1}, Loa/a$b;->b(ZLjava/io/IOException;)V

    .line 10
    throw p1

    .line 11
    :cond_43
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_4b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class oa.a.e (oa.a$e)
.class final Loa/a$e;
.super Ljava/lang/Object;
.source "Http1Codec.java"

# interfaces
.implements Lokio/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loa/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "e"
.end annotation


# instance fields
.field private final o:Lokio/j;

.field private p:Z

.field private q:J

.field final synthetic r:Loa/a;


# direct methods
.method constructor <init>(Loa/a;J)V
    .registers 5

    .line 1
    iput-object p1, p0, Loa/a$e;->r:Loa/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lokio/j;

    iget-object p1, p1, Loa/a;->d:Lokio/d;

    invoke-interface {p1}, Lokio/t;->timeout()Lokio/v;

    move-result-object p1

    invoke-direct {v0, p1}, Lokio/j;-><init>(Lokio/v;)V

    iput-object v0, p0, Loa/a$e;->o:Lokio/j;

    .line 3
    iput-wide p2, p0, Loa/a$e;->q:J

    return-void
.end method


# virtual methods
.method public a2(Lokio/c;J)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Loa/a$e;->p:Z

    if-nez v0, :cond_42

    .line 2
    invoke-virtual {p1}, Lokio/c;->s()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lka/c;->f(JJJ)V

    .line 3
    iget-wide v0, p0, Loa/a$e;->q:J

    cmp-long v2, p2, v0

    if-gtz v2, :cond_21

    .line 4
    iget-object v0, p0, Loa/a$e;->r:Loa/a;

    iget-object v0, v0, Loa/a;->d:Lokio/d;

    invoke-interface {v0, p1, p2, p3}, Lokio/t;->a2(Lokio/c;J)V

    .line 5
    iget-wide v0, p0, Loa/a$e;->q:J

    sub-long/2addr v0, p2

    iput-wide v0, p0, Loa/a$e;->q:J

    return-void

    .line 6
    :cond_21
    new-instance p1, Ljava/net/ProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Loa/a$e;->q:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " bytes but received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_42
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Loa/a$e;->p:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Loa/a$e;->p:Z

    .line 3
    iget-wide v0, p0, Loa/a$e;->q:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1d

    .line 4
    iget-object v0, p0, Loa/a$e;->r:Loa/a;

    iget-object v1, p0, Loa/a$e;->o:Lokio/j;

    invoke-virtual {v0, v1}, Loa/a;->g(Lokio/j;)V

    .line 5
    iget-object v0, p0, Loa/a$e;->r:Loa/a;

    const/4 v1, 0x3

    iput v1, v0, Loa/a;->e:I

    return-void

    .line 6
    :cond_1d
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Loa/a$e;->p:Z

    if-eqz v0, :cond_5

    return-void

    .line 2
    :cond_5
    iget-object v0, p0, Loa/a$e;->r:Loa/a;

    iget-object v0, v0, Loa/a;->d:Lokio/d;

    invoke-interface {v0}, Lokio/d;->flush()V

    return-void
.end method

.method public timeout()Lokio/v;
    .registers 2

    .line 1
    iget-object v0, p0, Loa/a$e;->o:Lokio/j;

    return-object v0
.end method

###### Class oa.a.f (oa.a$f)
.class Loa/a$f;
.super Loa/a$b;
.source "Http1Codec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loa/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field private s:J

.field final synthetic t:Loa/a;


# direct methods
.method constructor <init>(Loa/a;J)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Loa/a$f;->t:Loa/a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Loa/a$b;-><init>(Loa/a;Loa/a$a;)V

    .line 2
    iput-wide p2, p0, Loa/a$f;->s:J

    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    if-nez p1, :cond_12

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1, v0}, Loa/a$b;->b(ZLjava/io/IOException;)V

    :cond_12
    return-void
.end method


# virtual methods
.method public close()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Loa/a$b;->p:Z

    if-eqz v0, :cond_5

    return-void

    .line 2
    :cond_5
    iget-wide v0, p0, Loa/a$f;->s:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1c

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Lka/c;->p(Lokio/u;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Loa/a$b;->b(ZLjava/io/IOException;)V

    :cond_1c
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Loa/a$b;->p:Z

    return-void
.end method

.method public read(Lokio/c;J)J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_42

    .line 1
    iget-boolean v2, p0, Loa/a$b;->p:Z

    if-nez v2, :cond_3a

    .line 2
    iget-wide v2, p0, Loa/a$f;->s:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v0

    if-nez v6, :cond_13

    return-wide v4

    .line 3
    :cond_13
    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-super {p0, p1, p2, p3}, Loa/a$b;->read(Lokio/c;J)J

    move-result-wide p1

    cmp-long p3, p1, v4

    if-eqz p3, :cond_2e

    .line 4
    iget-wide v2, p0, Loa/a$f;->s:J

    sub-long/2addr v2, p1

    iput-wide v2, p0, Loa/a$f;->s:J

    cmp-long p3, v2, v0

    if-nez p3, :cond_2d

    const/4 p3, 0x1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p3, v0}, Loa/a$b;->b(ZLjava/io/IOException;)V

    :cond_2d
    return-wide p1

    .line 6
    :cond_2e
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "unexpected end of stream"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 7
    invoke-virtual {p0, p2, p1}, Loa/a$b;->b(ZLjava/io/IOException;)V

    .line 8
    throw p1

    .line 9
    :cond_3a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_42
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class oa.a.g (oa.a$g)
.class Loa/a$g;
.super Loa/a$b;
.source "Http1Codec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loa/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field private s:Z

.field final synthetic t:Loa/a;


# direct methods
.method constructor <init>(Loa/a;)V
    .registers 3

    .line 1
    iput-object p1, p0, Loa/a$g;->t:Loa/a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Loa/a$b;-><init>(Loa/a;Loa/a$a;)V

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
    iget-boolean v0, p0, Loa/a$b;->p:Z

    if-eqz v0, :cond_5

    return-void

    .line 2
    :cond_5
    iget-boolean v0, p0, Loa/a$g;->s:Z

    if-nez v0, :cond_e

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Loa/a$b;->b(ZLjava/io/IOException;)V

    :cond_e
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Loa/a$b;->p:Z

    return-void
.end method

.method public read(Lokio/c;J)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2a

    .line 1
    iget-boolean v0, p0, Loa/a$b;->p:Z

    if-nez v0, :cond_22

    .line 2
    iget-boolean v0, p0, Loa/a$g;->s:Z

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_11

    return-wide v1

    .line 3
    :cond_11
    invoke-super {p0, p1, p2, p3}, Loa/a$b;->read(Lokio/c;J)J

    move-result-wide p1

    cmp-long p3, p1, v1

    if-nez p3, :cond_21

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Loa/a$g;->s:Z

    const/4 p2, 0x0

    .line 5
    invoke-virtual {p0, p1, p2}, Loa/a$b;->b(ZLjava/io/IOException;)V

    return-wide v1

    :cond_21
    return-wide p1

    .line 6
    :cond_22
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
