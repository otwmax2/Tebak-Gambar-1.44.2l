###### Class pa.f (pa.f)
.class public final Lpa/f;
.super Ljava/lang/Object;
.source "Http2Codec.java"

# interfaces
.implements Lna/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpa/f$a;
    }
.end annotation


# static fields
.field private static final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lja/u$a;

.field final b:Lma/g;

.field private final c:Lpa/g;

.field private d:Lpa/i;

.field private final e:Lja/y;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    const-string v0, "connection"

    const-string v1, "host"

    const-string v2, "keep-alive"

    const-string v3, "proxy-connection"

    const-string v4, "te"

    const-string v5, "transfer-encoding"

    const-string v6, "encoding"

    const-string v7, "upgrade"

    const-string v8, ":method"

    const-string v9, ":path"

    const-string v10, ":scheme"

    const-string v11, ":authority"

    .line 1
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lka/c;->u([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lpa/f;->f:Ljava/util/List;

    const-string v1, "connection"

    const-string v2, "host"

    const-string v3, "keep-alive"

    const-string v4, "proxy-connection"

    const-string v5, "te"

    const-string v6, "transfer-encoding"

    const-string v7, "encoding"

    const-string v8, "upgrade"

    .line 2
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lka/c;->u([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lpa/f;->g:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lja/x;Lja/u$a;Lma/g;Lpa/g;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lpa/f;->a:Lja/u$a;

    .line 3
    iput-object p3, p0, Lpa/f;->b:Lma/g;

    .line 4
    iput-object p4, p0, Lpa/f;->c:Lpa/g;

    .line 5
    invoke-virtual {p1}, Lja/x;->w()Ljava/util/List;

    move-result-object p1

    sget-object p2, Lja/y;->t:Lja/y;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    goto :goto_18

    .line 6
    :cond_16
    sget-object p2, Lja/y;->s:Lja/y;

    :goto_18
    iput-object p2, p0, Lpa/f;->e:Lja/y;

    return-void
.end method

.method public static g(Lja/a0;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lja/a0;",
            ")",
            "Ljava/util/List<",
            "Lpa/c;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lja/a0;->d()Lja/s;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lja/s;->h()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    new-instance v2, Lpa/c;

    sget-object v3, Lpa/c;->f:Lokio/f;

    invoke-virtual {p0}, Lja/a0;->f()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lpa/c;-><init>(Lokio/f;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v2, Lpa/c;

    sget-object v3, Lpa/c;->g:Lokio/f;

    invoke-virtual {p0}, Lja/a0;->h()Lja/t;

    move-result-object v4

    invoke-static {v4}, Lna/i;->c(Lja/t;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lpa/c;-><init>(Lokio/f;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Host"

    .line 5
    invoke-virtual {p0, v2}, Lja/a0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_41

    .line 6
    new-instance v3, Lpa/c;

    sget-object v4, Lpa/c;->i:Lokio/f;

    invoke-direct {v3, v4, v2}, Lpa/c;-><init>(Lokio/f;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_41
    new-instance v2, Lpa/c;

    sget-object v3, Lpa/c;->h:Lokio/f;

    invoke-virtual {p0}, Lja/a0;->h()Lja/t;

    move-result-object p0

    invoke-virtual {p0}, Lja/t;->H()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Lpa/c;-><init>(Lokio/f;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    .line 8
    invoke-virtual {v0}, Lja/s;->h()I

    move-result v2

    :goto_58
    if-ge p0, v2, :cond_83

    .line 9
    invoke-virtual {v0, p0}, Lja/s;->e(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lokio/f;->l(Ljava/lang/String;)Lokio/f;

    move-result-object v3

    .line 10
    sget-object v4, Lpa/f;->f:Ljava/util/List;

    invoke-virtual {v3}, Lokio/f;->O()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_80

    .line 11
    new-instance v4, Lpa/c;

    invoke-virtual {v0, p0}, Lja/s;->i(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lpa/c;-><init>(Lokio/f;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_80
    add-int/lit8 p0, p0, 0x1

    goto :goto_58

    :cond_83
    return-object v1
.end method

.method public static h(Lja/s;Lja/y;)Lja/c0$a;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lja/s$a;

    invoke-direct {v0}, Lja/s$a;-><init>()V

    .line 2
    invoke-virtual {p0}, Lja/s;->h()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v1, :cond_43

    .line 3
    invoke-virtual {p0, v3}, Lja/s;->e(I)Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-virtual {p0, v3}, Lja/s;->i(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ":status"

    .line 5
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTP/1.1 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lna/k;->a(Ljava/lang/String;)Lna/k;

    move-result-object v2

    goto :goto_40

    .line 7
    :cond_33
    sget-object v6, Lpa/f;->g:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_40

    .line 8
    sget-object v6, Lka/a;->a:Lka/a;

    invoke-virtual {v6, v0, v4, v5}, Lka/a;->b(Lja/s$a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_40
    :goto_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_43
    if-eqz v2, :cond_63

    .line 9
    new-instance p0, Lja/c0$a;

    invoke-direct {p0}, Lja/c0$a;-><init>()V

    .line 10
    invoke-virtual {p0, p1}, Lja/c0$a;->n(Lja/y;)Lja/c0$a;

    move-result-object p0

    iget p1, v2, Lna/k;->b:I

    .line 11
    invoke-virtual {p0, p1}, Lja/c0$a;->g(I)Lja/c0$a;

    move-result-object p0

    iget-object p1, v2, Lna/k;->c:Ljava/lang/String;

    .line 12
    invoke-virtual {p0, p1}, Lja/c0$a;->k(Ljava/lang/String;)Lja/c0$a;

    move-result-object p0

    .line 13
    invoke-virtual {v0}, Lja/s$a;->d()Lja/s;

    move-result-object p1

    invoke-virtual {p0, p1}, Lja/c0$a;->j(Lja/s;)Lja/c0$a;

    move-result-object p0

    return-object p0

    .line 14
    :cond_63
    new-instance p0, Ljava/net/ProtocolException;

    const-string p1, "Expected \':status\' header not present"

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    goto :goto_6c

    :goto_6b
    throw p0

    :goto_6c
    goto :goto_6b
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
    iget-object v0, p0, Lpa/f;->d:Lpa/i;

    invoke-virtual {v0}, Lpa/i;->j()Lokio/t;

    move-result-object v0

    invoke-interface {v0}, Lokio/t;->close()V

    return-void
.end method

.method public b(Lja/c0;)Lja/d0;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lpa/f;->b:Lma/g;

    iget-object v1, v0, Lma/g;->f:Lja/p;

    iget-object v0, v0, Lma/g;->e:Lja/e;

    invoke-virtual {v1, v0}, Lja/p;->q(Lja/e;)V

    const-string v0, "Content-Type"

    .line 2
    invoke-virtual {p1, v0}, Lja/c0;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lna/e;->b(Lja/c0;)J

    move-result-wide v1

    .line 4
    new-instance p1, Lpa/f$a;

    iget-object v3, p0, Lpa/f;->d:Lpa/i;

    invoke-virtual {v3}, Lpa/i;->k()Lokio/u;

    move-result-object v3

    invoke-direct {p1, p0, v3}, Lpa/f$a;-><init>(Lpa/f;Lokio/u;)V

    .line 5
    new-instance v3, Lna/h;

    invoke-static {p1}, Lokio/n;->c(Lokio/u;)Lokio/e;

    move-result-object p1

    invoke-direct {v3, v0, v1, v2, p1}, Lna/h;-><init>(Ljava/lang/String;JLokio/e;)V

    return-object v3
.end method

.method public c(Lja/a0;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lpa/f;->d:Lpa/i;

    if-eqz v0, :cond_5

    return-void

    .line 2
    :cond_5
    invoke-virtual {p1}, Lja/a0;->a()Lja/b0;

    move-result-object v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 3
    :goto_e
    invoke-static {p1}, Lpa/f;->g(Lja/a0;)Ljava/util/List;

    move-result-object p1

    .line 4
    iget-object v1, p0, Lpa/f;->c:Lpa/g;

    invoke-virtual {v1, p1, v0}, Lpa/g;->s(Ljava/util/List;Z)Lpa/i;

    move-result-object p1

    iput-object p1, p0, Lpa/f;->d:Lpa/i;

    .line 5
    invoke-virtual {p1}, Lpa/i;->n()Lokio/v;

    move-result-object p1

    iget-object v0, p0, Lpa/f;->a:Lja/u$a;

    invoke-interface {v0}, Lja/u$a;->a()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lokio/v;->g(JLjava/util/concurrent/TimeUnit;)Lokio/v;

    .line 6
    iget-object p1, p0, Lpa/f;->d:Lpa/i;

    invoke-virtual {p1}, Lpa/i;->u()Lokio/v;

    move-result-object p1

    iget-object v0, p0, Lpa/f;->a:Lja/u$a;

    invoke-interface {v0}, Lja/u$a;->b()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1, v2}, Lokio/v;->g(JLjava/util/concurrent/TimeUnit;)Lokio/v;

    return-void
.end method

.method public cancel()V
    .registers 3

    .line 1
    iget-object v0, p0, Lpa/f;->d:Lpa/i;

    if-eqz v0, :cond_9

    sget-object v1, Lpa/b;->u:Lpa/b;

    invoke-virtual {v0, v1}, Lpa/i;->h(Lpa/b;)V

    :cond_9
    return-void
.end method

.method public d(Z)Lja/c0$a;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lpa/f;->d:Lpa/i;

    invoke-virtual {v0}, Lpa/i;->s()Lja/s;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lpa/f;->e:Lja/y;

    invoke-static {v0, v1}, Lpa/f;->h(Lja/s;Lja/y;)Lja/c0$a;

    move-result-object v0

    if-eqz p1, :cond_1a

    .line 3
    sget-object p1, Lka/a;->a:Lka/a;

    invoke-virtual {p1, v0}, Lka/a;->d(Lja/c0$a;)I

    move-result p1

    const/16 v1, 0x64

    if-ne p1, v1, :cond_1a

    const/4 p1, 0x0

    return-object p1

    :cond_1a
    return-object v0
.end method

.method public e(Lja/a0;J)Lokio/t;
    .registers 4

    .line 1
    iget-object p1, p0, Lpa/f;->d:Lpa/i;

    invoke-virtual {p1}, Lpa/i;->j()Lokio/t;

    move-result-object p1

    return-object p1
.end method

.method public f()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lpa/f;->c:Lpa/g;

    invoke-virtual {v0}, Lpa/g;->flush()V

    return-void
.end method

###### Class pa.f.a (pa.f$a)
.class Lpa/f$a;
.super Lokio/i;
.source "Http2Codec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpa/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field p:Z

.field q:J

.field final synthetic r:Lpa/f;


# direct methods
.method constructor <init>(Lpa/f;Lokio/u;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lpa/f$a;->r:Lpa/f;

    .line 2
    invoke-direct {p0, p2}, Lokio/i;-><init>(Lokio/u;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lpa/f$a;->p:Z

    const-wide/16 p1, 0x0

    .line 4
    iput-wide p1, p0, Lpa/f$a;->q:J

    return-void
.end method

.method private b(Ljava/io/IOException;)V
    .registers 9

    .line 1
    iget-boolean v0, p0, Lpa/f$a;->p:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lpa/f$a;->p:Z

    .line 3
    iget-object v3, p0, Lpa/f$a;->r:Lpa/f;

    iget-object v1, v3, Lpa/f;->b:Lma/g;

    const/4 v2, 0x0

    iget-wide v4, p0, Lpa/f$a;->q:J

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lma/g;->r(ZLna/c;JLjava/io/IOException;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lokio/i;->close()V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lpa/f$a;->b(Ljava/io/IOException;)V

    return-void
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
    invoke-virtual {p0}, Lokio/i;->delegate()Lokio/u;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lokio/u;->read(Lokio/c;J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-lez p3, :cond_13

    .line 2
    iget-wide v0, p0, Lpa/f$a;->q:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lpa/f$a;->q:J
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_14

    :cond_13
    return-wide p1

    :catch_14
    move-exception p1

    .line 3
    invoke-direct {p0, p1}, Lpa/f$a;->b(Ljava/io/IOException;)V

    .line 4
    throw p1
.end method
