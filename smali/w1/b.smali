###### Class w1.b (w1.b)
.class Lw1/b;
.super Ljava/lang/Object;
.source "StrictLineReader.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final o:Ljava/io/InputStream;

.field private final p:Ljava/nio/charset/Charset;

.field private q:[B

.field private r:I

.field private s:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V
    .registers 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2a

    if-eqz p3, :cond_2a

    if-ltz p2, :cond_22

    .line 3
    sget-object v0, Lw1/c;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 4
    iput-object p1, p0, Lw1/b;->o:Ljava/io/InputStream;

    .line 5
    iput-object p3, p0, Lw1/b;->p:Ljava/nio/charset/Charset;

    .line 6
    new-array p1, p2, [B

    iput-object p1, p0, Lw1/b;->q:[B

    return-void

    .line 7
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupported encoding"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "capacity <= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2a
    const/4 p1, 0x0

    .line 9
    throw p1
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .registers 4

    const/16 v0, 0x2000

    .line 1
    invoke-direct {p0, p1, v0, p2}, Lw1/b;-><init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V

    return-void
.end method

.method static synthetic b(Lw1/b;)Ljava/nio/charset/Charset;
    .registers 1

    .line 1
    iget-object p0, p0, Lw1/b;->p:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method private c()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lw1/b;->o:Ljava/io/InputStream;

    iget-object v1, p0, Lw1/b;->q:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    .line 2
    iput v3, p0, Lw1/b;->r:I

    .line 3
    iput v0, p0, Lw1/b;->s:I

    return-void

    .line 4
    :cond_12
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
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
    iget-object v0, p0, Lw1/b;->o:Ljava/io/InputStream;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lw1/b;->q:[B

    if-eqz v1, :cond_f

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lw1/b;->q:[B

    .line 4
    iget-object v1, p0, Lw1/b;->o:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 5
    :cond_f
    monitor-exit v0

    return-void

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public d()Z
    .registers 3

    .line 1
    iget v0, p0, Lw1/b;->s:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public e()Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lw1/b;->o:Ljava/io/InputStream;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lw1/b;->q:[B

    if-eqz v1, :cond_7f

    .line 3
    iget v1, p0, Lw1/b;->r:I

    iget v2, p0, Lw1/b;->s:I

    if-lt v1, v2, :cond_10

    .line 4
    invoke-direct {p0}, Lw1/b;->c()V

    .line 5
    :cond_10
    iget v1, p0, Lw1/b;->r:I

    :goto_12
    iget v2, p0, Lw1/b;->s:I

    const/16 v3, 0xa

    if-eq v1, v2, :cond_41

    .line 6
    iget-object v2, p0, Lw1/b;->q:[B

    aget-byte v4, v2, v1

    if-ne v4, v3, :cond_3e

    .line 7
    iget v3, p0, Lw1/b;->r:I

    if-eq v1, v3, :cond_2b

    add-int/lit8 v4, v1, -0x1

    aget-byte v5, v2, v4

    const/16 v6, 0xd

    if-ne v5, v6, :cond_2b

    goto :goto_2c

    :cond_2b
    move v4, v1

    .line 8
    :goto_2c
    new-instance v5, Ljava/lang/String;

    sub-int/2addr v4, v3

    iget-object v6, p0, Lw1/b;->p:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v2, v3, v4, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    .line 9
    iput v1, p0, Lw1/b;->r:I

    .line 10
    monitor-exit v0

    return-object v5

    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 11
    :cond_41
    new-instance v1, Lw1/b$a;

    iget v2, p0, Lw1/b;->s:I

    iget v4, p0, Lw1/b;->r:I

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x50

    invoke-direct {v1, p0, v2}, Lw1/b$a;-><init>(Lw1/b;I)V

    .line 12
    :cond_4d
    iget-object v2, p0, Lw1/b;->q:[B

    iget v4, p0, Lw1/b;->r:I

    iget v5, p0, Lw1/b;->s:I

    sub-int/2addr v5, v4

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v2, -0x1

    .line 13
    iput v2, p0, Lw1/b;->s:I

    .line 14
    invoke-direct {p0}, Lw1/b;->c()V

    .line 15
    iget v2, p0, Lw1/b;->r:I

    :goto_5f
    iget v4, p0, Lw1/b;->s:I

    if-eq v2, v4, :cond_4d

    .line 16
    iget-object v4, p0, Lw1/b;->q:[B

    aget-byte v5, v4, v2

    if-ne v5, v3, :cond_7c

    .line 17
    iget v3, p0, Lw1/b;->r:I

    if-eq v2, v3, :cond_72

    sub-int v5, v2, v3

    .line 18
    invoke-virtual {v1, v4, v3, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_72
    add-int/lit8 v2, v2, 0x1

    .line 19
    iput v2, p0, Lw1/b;->r:I

    .line 20
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_7c
    add-int/lit8 v2, v2, 0x1

    goto :goto_5f

    .line 21
    :cond_7f
    new-instance v1, Ljava/io/IOException;

    const-string v2, "LineReader is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_87
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_89
    .catchall {:try_start_3 .. :try_end_89} :catchall_87

    goto :goto_8b

    :goto_8a
    throw v1

    :goto_8b
    goto :goto_8a
.end method

###### Class w1.b.a (w1.b$a)
.class Lw1/b$a;
.super Ljava/io/ByteArrayOutputStream;
.source "StrictLineReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw1/b;->e()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lw1/b;


# direct methods
.method constructor <init>(Lw1/b;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lw1/b$a;->o:Lw1/b;

    invoke-direct {p0, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 6

    .line 1
    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    if-lez v0, :cond_10

    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    add-int/lit8 v2, v0, -0x1

    aget-byte v1, v1, v2

    const/16 v2, 0xd

    if-ne v1, v2, :cond_10

    add-int/lit8 v0, v0, -0x1

    .line 2
    :cond_10
    :try_start_10
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lw1/b$a;->o:Lw1/b;

    invoke-static {v4}, Lw1/b;->b(Lw1/b;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_22
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_10 .. :try_end_22} :catch_23

    return-object v1

    :catch_23
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
