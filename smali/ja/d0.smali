###### Class ja.d0 (ja.d0)
.class public abstract Lja/d0;
.super Ljava/lang/Object;
.source "ResponseBody.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lja/d0$b;
    }
.end annotation


# instance fields
.field private o:Ljava/io/Reader;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b()Ljava/nio/charset/Charset;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lja/d0;->contentType()Lja/v;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 2
    sget-object v1, Lka/c;->j:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lja/v;->b(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_f

    :cond_d
    sget-object v0, Lka/c;->j:Ljava/nio/charset/Charset;

    :goto_f
    return-object v0
.end method

.method public static create(Lja/v;JLokio/e;)Lja/d0;
    .registers 5
    .param p0    # Lja/v;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "source == null"

    .line 10
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    new-instance v0, Lja/d0$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lja/d0$a;-><init>(Lja/v;JLokio/e;)V

    return-object v0
.end method

.method public static create(Lja/v;Ljava/lang/String;)Lja/d0;
    .registers 4
    .param p0    # Lja/v;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lka/c;->j:Ljava/nio/charset/Charset;

    if-eqz p0, :cond_21

    .line 2
    invoke-virtual {p0}, Lja/v;->a()Ljava/nio/charset/Charset;

    move-result-object v1

    if-nez v1, :cond_20

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "; charset=utf-8"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lja/v;->d(Ljava/lang/String;)Lja/v;

    move-result-object p0

    goto :goto_21

    :cond_20
    move-object v0, v1

    .line 4
    :cond_21
    :goto_21
    new-instance v1, Lokio/c;

    invoke-direct {v1}, Lokio/c;-><init>()V

    invoke-virtual {v1, p1, v0}, Lokio/c;->I(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/c;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lokio/c;->s()J

    move-result-wide v0

    invoke-static {p0, v0, v1, p1}, Lja/d0;->create(Lja/v;JLokio/e;)Lja/d0;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lja/v;Lokio/f;)Lja/d0;
    .registers 5
    .param p0    # Lja/v;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 8
    new-instance v0, Lokio/c;

    invoke-direct {v0}, Lokio/c;-><init>()V

    invoke-virtual {v0, p1}, Lokio/c;->w(Lokio/f;)Lokio/c;

    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lokio/f;->J()I

    move-result p1

    int-to-long v1, p1

    invoke-static {p0, v1, v2, v0}, Lja/d0;->create(Lja/v;JLokio/e;)Lja/d0;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lja/v;[B)Lja/d0;
    .registers 5
    .param p0    # Lja/v;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 6
    new-instance v0, Lokio/c;

    invoke-direct {v0}, Lokio/c;-><init>()V

    invoke-virtual {v0, p1}, Lokio/c;->x([B)Lokio/c;

    move-result-object v0

    .line 7
    array-length p1, p1

    int-to-long v1, p1

    invoke-static {p0, v1, v2, v0}, Lja/d0;->create(Lja/v;JLokio/e;)Lja/d0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final byteStream()Ljava/io/InputStream;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lja/d0;->source()Lokio/e;

    move-result-object v0

    invoke-interface {v0}, Lokio/e;->S3()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final bytes()[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lja/d0;->contentLength()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_4e

    .line 2
    invoke-virtual {p0}, Lja/d0;->source()Lokio/e;

    move-result-object v2

    .line 3
    :try_start_f
    invoke-interface {v2}, Lokio/e;->M0()[B

    move-result-object v3
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_49

    .line 4
    invoke-static {v2}, Lka/c;->g(Ljava/io/Closeable;)V

    const-wide/16 v4, -0x1

    cmp-long v2, v0, v4

    if-eqz v2, :cond_48

    .line 5
    array-length v2, v3

    int-to-long v4, v2

    cmp-long v2, v0, v4

    if-nez v2, :cond_23

    goto :goto_48

    .line 6
    :cond_23
    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Content-Length ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ") and stream length ("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") disagree"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_48
    :goto_48
    return-object v3

    :catchall_49
    move-exception v0

    .line 7
    invoke-static {v2}, Lka/c;->g(Ljava/io/Closeable;)V

    throw v0

    .line 8
    :cond_4e
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot buffer entire body for content length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final charStream()Ljava/io/Reader;
    .registers 4

    .line 1
    iget-object v0, p0, Lja/d0;->o:Ljava/io/Reader;

    if-eqz v0, :cond_5

    goto :goto_14

    .line 2
    :cond_5
    new-instance v0, Lja/d0$b;

    invoke-virtual {p0}, Lja/d0;->source()Lokio/e;

    move-result-object v1

    invoke-direct {p0}, Lja/d0;->b()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lja/d0$b;-><init>(Lokio/e;Ljava/nio/charset/Charset;)V

    iput-object v0, p0, Lja/d0;->o:Ljava/io/Reader;

    :goto_14
    return-object v0
.end method

.method public close()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lja/d0;->source()Lokio/e;

    move-result-object v0

    invoke-static {v0}, Lka/c;->g(Ljava/io/Closeable;)V

    return-void
.end method

.method public abstract contentLength()J
.end method

.method public abstract contentType()Lja/v;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract source()Lokio/e;
.end method

.method public final string()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lja/d0;->source()Lokio/e;

    move-result-object v0

    .line 2
    :try_start_4
    invoke-direct {p0}, Lja/d0;->b()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-static {v0, v1}, Lka/c;->c(Lokio/e;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 3
    invoke-interface {v0, v1}, Lokio/e;->T1(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_14

    .line 4
    invoke-static {v0}, Lka/c;->g(Ljava/io/Closeable;)V

    return-object v1

    :catchall_14
    move-exception v1

    invoke-static {v0}, Lka/c;->g(Ljava/io/Closeable;)V

    throw v1
.end method

###### Class ja.d0.a (ja.d0$a)
.class Lja/d0$a;
.super Lja/d0;
.source "ResponseBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lja/d0;->create(Lja/v;JLokio/e;)Lja/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic p:Lja/v;

.field final synthetic q:J

.field final synthetic r:Lokio/e;


# direct methods
.method constructor <init>(Lja/v;JLokio/e;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lja/d0$a;->p:Lja/v;

    iput-wide p2, p0, Lja/d0$a;->q:J

    iput-object p4, p0, Lja/d0$a;->r:Lokio/e;

    invoke-direct {p0}, Lja/d0;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lja/d0$a;->q:J

    return-wide v0
.end method

.method public contentType()Lja/v;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lja/d0$a;->p:Lja/v;

    return-object v0
.end method

.method public source()Lokio/e;
    .registers 2

    .line 1
    iget-object v0, p0, Lja/d0$a;->r:Lokio/e;

    return-object v0
.end method

###### Class ja.d0.b (ja.d0$b)
.class final Lja/d0$b;
.super Ljava/io/Reader;
.source "ResponseBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lja/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final o:Lokio/e;

.field private final p:Ljava/nio/charset/Charset;

.field private q:Z

.field private r:Ljava/io/Reader;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lokio/e;Ljava/nio/charset/Charset;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 2
    iput-object p1, p0, Lja/d0$b;->o:Lokio/e;

    .line 3
    iput-object p2, p0, Lja/d0$b;->p:Ljava/nio/charset/Charset;

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

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lja/d0$b;->q:Z

    .line 2
    iget-object v0, p0, Lja/d0$b;->r:Ljava/io/Reader;

    if-eqz v0, :cond_b

    .line 3
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    goto :goto_10

    .line 4
    :cond_b
    iget-object v0, p0, Lja/d0$b;->o:Lokio/e;

    invoke-interface {v0}, Lokio/u;->close()V

    :goto_10
    return-void
.end method

.method public read([CII)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lja/d0$b;->q:Z

    if-nez v0, :cond_23

    .line 2
    iget-object v0, p0, Lja/d0$b;->r:Ljava/io/Reader;

    if-nez v0, :cond_1e

    .line 3
    iget-object v0, p0, Lja/d0$b;->o:Lokio/e;

    iget-object v1, p0, Lja/d0$b;->p:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lka/c;->c(Lokio/e;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lja/d0$b;->o:Lokio/e;

    invoke-interface {v2}, Lokio/e;->S3()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    iput-object v1, p0, Lja/d0$b;->r:Ljava/io/Reader;

    move-object v0, v1

    .line 5
    :cond_1e
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    move-result p1

    return p1

    .line 6
    :cond_23
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
