###### Class okio.n (okio.n)
.class public final Lokio/n;
.super Ljava/lang/Object;
.source "Okio.java"


# static fields
.field static final a:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lokio/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lokio/n;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/File;)Lokio/t;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-eqz p0, :cond_d

    .line 1
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-static {v0}, Lokio/n;->f(Ljava/io/OutputStream;)Lokio/t;

    move-result-object p0

    return-object p0

    .line 2
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "file == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Lokio/t;)Lokio/d;
    .registers 2

    .line 1
    new-instance v0, Lokio/o;

    invoke-direct {v0, p0}, Lokio/o;-><init>(Lokio/t;)V

    return-object v0
.end method

.method public static c(Lokio/u;)Lokio/e;
    .registers 2

    .line 1
    new-instance v0, Lokio/p;

    invoke-direct {v0, p0}, Lokio/p;-><init>(Lokio/u;)V

    return-object v0
.end method

.method static d(Ljava/lang/AssertionError;)Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 2
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getsockname failed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public static e(Ljava/io/File;)Lokio/t;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-eqz p0, :cond_c

    .line 1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lokio/n;->f(Ljava/io/OutputStream;)Lokio/t;

    move-result-object p0

    return-object p0

    .line 2
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "file == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static f(Ljava/io/OutputStream;)Lokio/t;
    .registers 2

    .line 1
    new-instance v0, Lokio/v;

    invoke-direct {v0}, Lokio/v;-><init>()V

    invoke-static {p0, v0}, Lokio/n;->g(Ljava/io/OutputStream;Lokio/v;)Lokio/t;

    move-result-object p0

    return-object p0
.end method

.method private static g(Ljava/io/OutputStream;Lokio/v;)Lokio/t;
    .registers 3

    if-eqz p0, :cond_12

    if-eqz p1, :cond_a

    .line 1
    new-instance v0, Lokio/n$a;

    invoke-direct {v0, p1, p0}, Lokio/n$a;-><init>(Lokio/v;Ljava/io/OutputStream;)V

    return-object v0

    .line 2
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "timeout == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "out == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static h(Ljava/net/Socket;)Lokio/t;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_21

    .line 1
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 2
    invoke-static {p0}, Lokio/n;->m(Ljava/net/Socket;)Lokio/a;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-static {p0, v0}, Lokio/n;->g(Ljava/io/OutputStream;Lokio/v;)Lokio/t;

    move-result-object p0

    .line 4
    invoke-virtual {v0, p0}, Lokio/a;->r(Lokio/t;)Lokio/t;

    move-result-object p0

    return-object p0

    .line 5
    :cond_19
    new-instance p0, Ljava/io/IOException;

    const-string v0, "socket\'s output stream == null"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "socket == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static i(Ljava/io/File;)Lokio/u;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-eqz p0, :cond_c

    .line 1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lokio/n;->j(Ljava/io/InputStream;)Lokio/u;

    move-result-object p0

    return-object p0

    .line 2
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "file == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static j(Ljava/io/InputStream;)Lokio/u;
    .registers 2

    .line 1
    new-instance v0, Lokio/v;

    invoke-direct {v0}, Lokio/v;-><init>()V

    invoke-static {p0, v0}, Lokio/n;->k(Ljava/io/InputStream;Lokio/v;)Lokio/u;

    move-result-object p0

    return-object p0
.end method

.method private static k(Ljava/io/InputStream;Lokio/v;)Lokio/u;
    .registers 3

    if-eqz p0, :cond_12

    if-eqz p1, :cond_a

    .line 1
    new-instance v0, Lokio/n$b;

    invoke-direct {v0, p1, p0}, Lokio/n$b;-><init>(Lokio/v;Ljava/io/InputStream;)V

    return-object v0

    .line 2
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "timeout == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "in == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static l(Ljava/net/Socket;)Lokio/u;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_21

    .line 1
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 2
    invoke-static {p0}, Lokio/n;->m(Ljava/net/Socket;)Lokio/a;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0, v0}, Lokio/n;->k(Ljava/io/InputStream;Lokio/v;)Lokio/u;

    move-result-object p0

    .line 4
    invoke-virtual {v0, p0}, Lokio/a;->s(Lokio/u;)Lokio/u;

    move-result-object p0

    return-object p0

    .line 5
    :cond_19
    new-instance p0, Ljava/io/IOException;

    const-string v0, "socket\'s input stream == null"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "socket == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static m(Ljava/net/Socket;)Lokio/a;
    .registers 2

    .line 1
    new-instance v0, Lokio/n$c;

    invoke-direct {v0, p0}, Lokio/n$c;-><init>(Ljava/net/Socket;)V

    return-object v0
.end method

###### Class okio.n.a (okio.n$a)
.class final Lokio/n$a;
.super Ljava/lang/Object;
.source "Okio.java"

# interfaces
.implements Lokio/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/n;->g(Ljava/io/OutputStream;Lokio/v;)Lokio/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lokio/v;

.field final synthetic p:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Lokio/v;Ljava/io/OutputStream;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lokio/n$a;->o:Lokio/v;

    iput-object p2, p0, Lokio/n$a;->p:Ljava/io/OutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a2(Lokio/c;J)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p1, Lokio/c;->p:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lokio/w;->b(JJJ)V

    :cond_8
    :goto_8
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_43

    .line 2
    iget-object v0, p0, Lokio/n$a;->o:Lokio/v;

    invoke-virtual {v0}, Lokio/v;->f()V

    .line 3
    iget-object v0, p1, Lokio/c;->o:Lokio/q;

    .line 4
    iget v1, v0, Lokio/q;->c:I

    iget v2, v0, Lokio/q;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 5
    iget-object v1, p0, Lokio/n$a;->p:Ljava/io/OutputStream;

    iget-object v3, v0, Lokio/q;->a:[B

    iget v4, v0, Lokio/q;->b:I

    invoke-virtual {v1, v3, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 6
    iget v1, v0, Lokio/q;->b:I

    add-int/2addr v1, v2

    iput v1, v0, Lokio/q;->b:I

    int-to-long v2, v2

    sub-long/2addr p2, v2

    .line 7
    iget-wide v4, p1, Lokio/c;->p:J

    sub-long/2addr v4, v2

    iput-wide v4, p1, Lokio/c;->p:J

    .line 8
    iget v2, v0, Lokio/q;->c:I

    if-ne v1, v2, :cond_8

    .line 9
    invoke-virtual {v0}, Lokio/q;->b()Lokio/q;

    move-result-object v1

    iput-object v1, p1, Lokio/c;->o:Lokio/q;

    .line 10
    invoke-static {v0}, Lokio/r;->a(Lokio/q;)V

    goto :goto_8

    :cond_43
    return-void
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokio/n$a;->p:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokio/n$a;->p:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public timeout()Lokio/v;
    .registers 2

    .line 1
    iget-object v0, p0, Lokio/n$a;->o:Lokio/v;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokio/n$a;->p:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class okio.n.b (okio.n$b)
.class final Lokio/n$b;
.super Ljava/lang/Object;
.source "Okio.java"

# interfaces
.implements Lokio/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/n;->k(Ljava/io/InputStream;Lokio/v;)Lokio/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lokio/v;

.field final synthetic p:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lokio/v;Ljava/io/InputStream;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lokio/n$b;->o:Lokio/v;

    iput-object p2, p0, Lokio/n$b;->p:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    iget-object v0, p0, Lokio/n$b;->p:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

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

    if-ltz v2, :cond_49

    cmp-long v2, p2, v0

    if-nez v2, :cond_b

    return-wide v0

    .line 1
    :cond_b
    :try_start_b
    iget-object v0, p0, Lokio/n$b;->o:Lokio/v;

    invoke-virtual {v0}, Lokio/v;->f()V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lokio/c;->v(I)Lokio/q;

    move-result-object v0

    .line 3
    iget v1, v0, Lokio/q;->c:I

    rsub-int v1, v1, 0x2000

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    long-to-int p3, p2

    .line 4
    iget-object p2, p0, Lokio/n$b;->p:Ljava/io/InputStream;

    iget-object v1, v0, Lokio/q;->a:[B

    iget v2, v0, Lokio/q;->c:I

    invoke-virtual {p2, v1, v2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_2f

    const-wide/16 p1, -0x1

    return-wide p1

    .line 5
    :cond_2f
    iget p3, v0, Lokio/q;->c:I

    add-int/2addr p3, p2

    iput p3, v0, Lokio/q;->c:I

    .line 6
    iget-wide v0, p1, Lokio/c;->p:J

    int-to-long p2, p2

    add-long/2addr v0, p2

    iput-wide v0, p1, Lokio/c;->p:J
    :try_end_3a
    .catch Ljava/lang/AssertionError; {:try_start_b .. :try_end_3a} :catch_3b

    return-wide p2

    :catch_3b
    move-exception p1

    .line 7
    invoke-static {p1}, Lokio/n;->d(Ljava/lang/AssertionError;)Z

    move-result p2

    if-eqz p2, :cond_48

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 8
    :cond_48
    throw p1

    .line 9
    :cond_49
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

.method public timeout()Lokio/v;
    .registers 2

    .line 1
    iget-object v0, p0, Lokio/n$b;->o:Lokio/v;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "source("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokio/n$b;->p:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class okio.n.c (okio.n$c)
.class final Lokio/n$c;
.super Lokio/a;
.source "Okio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/n;->m(Ljava/net/Socket;)Lokio/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic k:Ljava/net/Socket;


# direct methods
.method constructor <init>(Ljava/net/Socket;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lokio/n$c;->k:Ljava/net/Socket;

    invoke-direct {p0}, Lokio/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected o(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 4
    .param p1    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_c

    .line 2
    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_c
    return-object v0
.end method

.method protected t()V
    .registers 6

    const-string v0, "Failed to close timed out socket "

    .line 1
    :try_start_2
    iget-object v1, p0, Lokio/n$c;->k:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_29
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_7} :catch_8

    goto :goto_42

    :catch_8
    move-exception v1

    .line 2
    invoke-static {v1}, Lokio/n;->d(Ljava/lang/AssertionError;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 3
    sget-object v2, Lokio/n;->a:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lokio/n$c;->k:Ljava/net/Socket;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_42

    .line 4
    :cond_28
    throw v1

    :catch_29
    move-exception v1

    .line 5
    sget-object v2, Lokio/n;->a:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lokio/n$c;->k:Ljava/net/Socket;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_42
    return-void
.end method
