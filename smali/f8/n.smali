###### Class f8.n (f8.n)
.class final Lf8/n;
.super Ljava/io/InputStream;
.source "MarkableInputStream.java"


# instance fields
.field private final o:Ljava/io/InputStream;

.field private p:J

.field private q:J

.field private r:J

.field private s:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    const/16 v0, 0x1000

    .line 1
    invoke-direct {p0, p1, v0}, Lf8/n;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 5

    .line 2
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lf8/n;->s:J

    .line 4
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_13

    .line 5
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object p1, v0

    .line 6
    :cond_13
    iput-object p1, p0, Lf8/n;->o:Ljava/io/InputStream;

    return-void
.end method

.method private d(J)V
    .registers 8

    .line 1
    :try_start_0
    iget-wide v0, p0, Lf8/n;->q:J

    iget-wide v2, p0, Lf8/n;->p:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_25

    iget-wide v0, p0, Lf8/n;->r:J

    cmp-long v4, v2, v0

    if-gtz v4, :cond_25

    .line 2
    iget-object v0, p0, Lf8/n;->o:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 3
    iget-object v0, p0, Lf8/n;->o:Ljava/io/InputStream;

    iget-wide v1, p0, Lf8/n;->q:J

    sub-long v1, p1, v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->mark(I)V

    .line 4
    iget-wide v0, p0, Lf8/n;->q:J

    iget-wide v2, p0, Lf8/n;->p:J

    invoke-direct {p0, v0, v1, v2, v3}, Lf8/n;->e(JJ)V

    goto :goto_2f

    .line 5
    :cond_25
    iput-wide v2, p0, Lf8/n;->q:J

    .line 6
    iget-object v0, p0, Lf8/n;->o:Ljava/io/InputStream;

    sub-long v2, p1, v2

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 7
    :goto_2f
    iput-wide p1, p0, Lf8/n;->r:J
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_31} :catch_32

    return-void

    :catch_32
    move-exception p1

    .line 8
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to mark: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private e(JJ)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    cmp-long v0, p1, p3

    if-gez v0, :cond_1e

    .line 1
    iget-object v0, p0, Lf8/n;->o:Ljava/io/InputStream;

    sub-long v1, p3, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1c

    .line 2
    invoke-virtual {p0}, Lf8/n;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1a

    goto :goto_1e

    :cond_1a
    const-wide/16 v0, 0x1

    :cond_1c
    add-long/2addr p1, v0

    goto :goto_0

    :cond_1e
    :goto_1e
    return-void
.end method


# virtual methods
.method public available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf8/n;->o:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public b(J)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lf8/n;->p:J

    iget-wide v2, p0, Lf8/n;->r:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1b

    iget-wide v0, p0, Lf8/n;->q:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1b

    .line 2
    iget-object v0, p0, Lf8/n;->o:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 3
    iget-wide v0, p0, Lf8/n;->q:J

    invoke-direct {p0, v0, v1, p1, p2}, Lf8/n;->e(JJ)V

    .line 4
    iput-wide p1, p0, Lf8/n;->p:J

    return-void

    .line 5
    :cond_1b
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Cannot reset"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(I)J
    .registers 6

    .line 1
    iget-wide v0, p0, Lf8/n;->p:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    .line 2
    iget-wide v2, p0, Lf8/n;->r:J

    cmp-long p1, v2, v0

    if-gez p1, :cond_d

    .line 3
    invoke-direct {p0, v0, v1}, Lf8/n;->d(J)V

    .line 4
    :cond_d
    iget-wide v0, p0, Lf8/n;->p:J

    return-wide v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf8/n;->o:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public mark(I)V
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Lf8/n;->c(I)J

    move-result-wide v0

    iput-wide v0, p0, Lf8/n;->s:J

    return-void
.end method

.method public markSupported()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lf8/n;->o:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf8/n;->o:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    .line 2
    iget-wide v1, p0, Lf8/n;->p:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lf8/n;->p:J

    :cond_10
    return v0
.end method

.method public read([B)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lf8/n;->o:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_f

    .line 4
    iget-wide v0, p0, Lf8/n;->p:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lf8/n;->p:J

    :cond_f
    return p1
.end method

.method public read([BII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lf8/n;->o:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_f

    .line 6
    iget-wide p2, p0, Lf8/n;->p:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lf8/n;->p:J

    :cond_f
    return p1
.end method

.method public reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lf8/n;->s:J

    invoke-virtual {p0, v0, v1}, Lf8/n;->b(J)V

    return-void
.end method

.method public skip(J)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf8/n;->o:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    .line 2
    iget-wide v0, p0, Lf8/n;->p:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lf8/n;->p:J

    return-wide p1
.end method
