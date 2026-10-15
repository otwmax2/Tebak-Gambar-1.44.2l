###### Class na.b (na.b)
.class public final Lna/b;
.super Ljava/lang/Object;
.source "CallServerInterceptor.java"

# interfaces
.implements Lja/u;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lna/b$a;
    }
.end annotation


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lna/b;->a:Z

    return-void
.end method


# virtual methods
.method public intercept(Lja/u$a;)Lja/c0;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lna/g;

    .line 2
    invoke-virtual {p1}, Lna/g;->i()Lna/c;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lna/g;->k()Lma/g;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Lna/g;->c()Lja/i;

    move-result-object v2

    check-cast v2, Lma/c;

    .line 5
    invoke-virtual {p1}, Lna/g;->f()Lja/a0;

    move-result-object v3

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 7
    invoke-virtual {p1}, Lna/g;->h()Lja/p;

    move-result-object v6

    invoke-virtual {p1}, Lna/g;->g()Lja/e;

    move-result-object v7

    invoke-virtual {v6, v7}, Lja/p;->o(Lja/e;)V

    .line 8
    invoke-interface {v0, v3}, Lna/c;->c(Lja/a0;)V

    .line 9
    invoke-virtual {p1}, Lna/g;->h()Lja/p;

    move-result-object v6

    invoke-virtual {p1}, Lna/g;->g()Lja/e;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Lja/p;->n(Lja/e;Lja/a0;)V

    .line 10
    invoke-virtual {v3}, Lja/a0;->f()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lna/f;->b(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_a6

    invoke-virtual {v3}, Lja/a0;->a()Lja/b0;

    move-result-object v6

    if-eqz v6, :cond_a6

    const-string v6, "Expect"

    .line 11
    invoke-virtual {v3, v6}, Lja/a0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "100-continue"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_63

    .line 12
    invoke-interface {v0}, Lna/c;->f()V

    .line 13
    invoke-virtual {p1}, Lna/g;->h()Lja/p;

    move-result-object v6

    invoke-virtual {p1}, Lna/g;->g()Lja/e;

    move-result-object v7

    invoke-virtual {v6, v7}, Lja/p;->s(Lja/e;)V

    const/4 v6, 0x1

    .line 14
    invoke-interface {v0, v6}, Lna/c;->d(Z)Lja/c0$a;

    move-result-object v7

    :cond_63
    if-nez v7, :cond_9d

    .line 15
    invoke-virtual {p1}, Lna/g;->h()Lja/p;

    move-result-object v2

    invoke-virtual {p1}, Lna/g;->g()Lja/e;

    move-result-object v6

    invoke-virtual {v2, v6}, Lja/p;->m(Lja/e;)V

    .line 16
    invoke-virtual {v3}, Lja/a0;->a()Lja/b0;

    move-result-object v2

    invoke-virtual {v2}, Lja/b0;->contentLength()J

    move-result-wide v8

    .line 17
    new-instance v2, Lna/b$a;

    .line 18
    invoke-interface {v0, v3, v8, v9}, Lna/c;->e(Lja/a0;J)Lokio/t;

    move-result-object v6

    invoke-direct {v2, v6}, Lna/b$a;-><init>(Lokio/t;)V

    .line 19
    invoke-static {v2}, Lokio/n;->b(Lokio/t;)Lokio/d;

    move-result-object v6

    .line 20
    invoke-virtual {v3}, Lja/a0;->a()Lja/b0;

    move-result-object v8

    invoke-virtual {v8, v6}, Lja/b0;->writeTo(Lokio/d;)V

    .line 21
    invoke-interface {v6}, Lokio/t;->close()V

    .line 22
    invoke-virtual {p1}, Lna/g;->h()Lja/p;

    move-result-object v6

    .line 23
    invoke-virtual {p1}, Lna/g;->g()Lja/e;

    move-result-object v8

    iget-wide v9, v2, Lna/b$a;->p:J

    invoke-virtual {v6, v8, v9, v10}, Lja/p;->l(Lja/e;J)V

    goto :goto_a6

    .line 24
    :cond_9d
    invoke-virtual {v2}, Lma/c;->o()Z

    move-result v2

    if-nez v2, :cond_a6

    .line 25
    invoke-virtual {v1}, Lma/g;->j()V

    .line 26
    :cond_a6
    :goto_a6
    invoke-interface {v0}, Lna/c;->a()V

    const/4 v2, 0x0

    if-nez v7, :cond_bb

    .line 27
    invoke-virtual {p1}, Lna/g;->h()Lja/p;

    move-result-object v6

    invoke-virtual {p1}, Lna/g;->g()Lja/e;

    move-result-object v7

    invoke-virtual {v6, v7}, Lja/p;->s(Lja/e;)V

    .line 28
    invoke-interface {v0, v2}, Lna/c;->d(Z)Lja/c0$a;

    move-result-object v7

    .line 29
    :cond_bb
    invoke-virtual {v7, v3}, Lja/c0$a;->p(Lja/a0;)Lja/c0$a;

    move-result-object v6

    .line 30
    invoke-virtual {v1}, Lma/g;->d()Lma/c;

    move-result-object v7

    invoke-virtual {v7}, Lma/c;->l()Lja/r;

    move-result-object v7

    invoke-virtual {v6, v7}, Lja/c0$a;->h(Lja/r;)Lja/c0$a;

    move-result-object v6

    .line 31
    invoke-virtual {v6, v4, v5}, Lja/c0$a;->q(J)Lja/c0$a;

    move-result-object v6

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lja/c0$a;->o(J)Lja/c0$a;

    move-result-object v6

    .line 33
    invoke-virtual {v6}, Lja/c0$a;->c()Lja/c0;

    move-result-object v6

    .line 34
    invoke-virtual {v6}, Lja/c0;->d()I

    move-result v7

    const/16 v8, 0x64

    if-ne v7, v8, :cond_10b

    .line 35
    invoke-interface {v0, v2}, Lna/c;->d(Z)Lja/c0$a;

    move-result-object v2

    .line 36
    invoke-virtual {v2, v3}, Lja/c0$a;->p(Lja/a0;)Lja/c0$a;

    move-result-object v2

    .line 37
    invoke-virtual {v1}, Lma/g;->d()Lma/c;

    move-result-object v3

    invoke-virtual {v3}, Lma/c;->l()Lja/r;

    move-result-object v3

    invoke-virtual {v2, v3}, Lja/c0$a;->h(Lja/r;)Lja/c0$a;

    move-result-object v2

    .line 38
    invoke-virtual {v2, v4, v5}, Lja/c0$a;->q(J)Lja/c0$a;

    move-result-object v2

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lja/c0$a;->o(J)Lja/c0$a;

    move-result-object v2

    .line 40
    invoke-virtual {v2}, Lja/c0$a;->c()Lja/c0;

    move-result-object v6

    .line 41
    invoke-virtual {v6}, Lja/c0;->d()I

    move-result v7

    .line 42
    :cond_10b
    invoke-virtual {p1}, Lna/g;->h()Lja/p;

    move-result-object v2

    .line 43
    invoke-virtual {p1}, Lna/g;->g()Lja/e;

    move-result-object p1

    invoke-virtual {v2, p1, v6}, Lja/p;->r(Lja/e;Lja/c0;)V

    .line 44
    iget-boolean p1, p0, Lna/b;->a:Z

    if-eqz p1, :cond_12d

    const/16 p1, 0x65

    if-ne v7, p1, :cond_12d

    .line 45
    invoke-virtual {v6}, Lja/c0;->k()Lja/c0$a;

    move-result-object p1

    sget-object v0, Lka/c;->c:Lja/d0;

    .line 46
    invoke-virtual {p1, v0}, Lja/c0$a;->b(Lja/d0;)Lja/c0$a;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lja/c0$a;->c()Lja/c0;

    move-result-object p1

    goto :goto_13d

    .line 48
    :cond_12d
    invoke-virtual {v6}, Lja/c0;->k()Lja/c0$a;

    move-result-object p1

    .line 49
    invoke-interface {v0, v6}, Lna/c;->b(Lja/c0;)Lja/d0;

    move-result-object v0

    invoke-virtual {p1, v0}, Lja/c0$a;->b(Lja/d0;)Lja/c0$a;

    move-result-object p1

    .line 50
    invoke-virtual {p1}, Lja/c0$a;->c()Lja/c0;

    move-result-object p1

    .line 51
    :goto_13d
    invoke-virtual {p1}, Lja/c0;->n()Lja/a0;

    move-result-object v0

    const-string v2, "Connection"

    invoke-virtual {v0, v2}, Lja/a0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "close"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_159

    .line 52
    invoke-virtual {p1, v2}, Lja/c0;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15c

    .line 53
    :cond_159
    invoke-virtual {v1}, Lma/g;->j()V

    :cond_15c
    const/16 v0, 0xcc

    if-eq v7, v0, :cond_164

    const/16 v0, 0xcd

    if-ne v7, v0, :cond_172

    .line 54
    :cond_164
    invoke-virtual {p1}, Lja/c0;->b()Lja/d0;

    move-result-object v0

    invoke-virtual {v0}, Lja/d0;->contentLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_173

    :cond_172
    return-object p1

    .line 55
    :cond_173
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " had non-zero Content-Length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p1}, Lja/c0;->b()Lja/d0;

    move-result-object p1

    invoke-virtual {p1}, Lja/d0;->contentLength()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class na.b.a (na.b$a)
.class final Lna/b$a;
.super Lokio/h;
.source "CallServerInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lna/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field p:J


# direct methods
.method constructor <init>(Lokio/t;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lokio/h;-><init>(Lokio/t;)V

    return-void
.end method


# virtual methods
.method public a2(Lokio/c;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lokio/h;->a2(Lokio/c;J)V

    .line 2
    iget-wide v0, p0, Lna/b$a;->p:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lna/b$a;->p:J

    return-void
.end method
