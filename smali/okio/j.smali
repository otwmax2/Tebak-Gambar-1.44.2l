###### Class okio.j (okio.j)
.class public Lokio/j;
.super Lokio/v;
.source "ForwardingTimeout.java"


# instance fields
.field private e:Lokio/v;


# direct methods
.method public constructor <init>(Lokio/v;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lokio/v;-><init>()V

    if-eqz p1, :cond_8

    .line 2
    iput-object p1, p0, Lokio/j;->e:Lokio/v;

    return-void

    .line 3
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "delegate == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lokio/v;
    .registers 2

    .line 1
    iget-object v0, p0, Lokio/j;->e:Lokio/v;

    invoke-virtual {v0}, Lokio/v;->a()Lokio/v;

    move-result-object v0

    return-object v0
.end method

.method public b()Lokio/v;
    .registers 2

    .line 1
    iget-object v0, p0, Lokio/j;->e:Lokio/v;

    invoke-virtual {v0}, Lokio/v;->b()Lokio/v;

    move-result-object v0

    return-object v0
.end method

.method public c()J
    .registers 3

    .line 1
    iget-object v0, p0, Lokio/j;->e:Lokio/v;

    invoke-virtual {v0}, Lokio/v;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public d(J)Lokio/v;
    .registers 4

    .line 1
    iget-object v0, p0, Lokio/j;->e:Lokio/v;

    invoke-virtual {v0, p1, p2}, Lokio/v;->d(J)Lokio/v;

    move-result-object p1

    return-object p1
.end method

.method public e()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lokio/j;->e:Lokio/v;

    invoke-virtual {v0}, Lokio/v;->e()Z

    move-result v0

    return v0
.end method

.method public f()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokio/j;->e:Lokio/v;

    invoke-virtual {v0}, Lokio/v;->f()V

    return-void
.end method

.method public g(JLjava/util/concurrent/TimeUnit;)Lokio/v;
    .registers 5

    .line 1
    iget-object v0, p0, Lokio/j;->e:Lokio/v;

    invoke-virtual {v0, p1, p2, p3}, Lokio/v;->g(JLjava/util/concurrent/TimeUnit;)Lokio/v;

    move-result-object p1

    return-object p1
.end method

.method public final i()Lokio/v;
    .registers 2

    .line 1
    iget-object v0, p0, Lokio/j;->e:Lokio/v;

    return-object v0
.end method

.method public final j(Lokio/v;)Lokio/j;
    .registers 3

    if-eqz p1, :cond_5

    .line 1
    iput-object p1, p0, Lokio/j;->e:Lokio/v;

    return-object p0

    .line 2
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "delegate == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
