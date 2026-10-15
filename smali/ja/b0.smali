###### Class ja.b0 (ja.b0)
.class public abstract Lja/b0;
.super Ljava/lang/Object;
.source "RequestBody.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lja/v;Ljava/io/File;)Lja/b0;
    .registers 3
    .param p0    # Lja/v;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "file == null"

    .line 11
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    new-instance v0, Lja/b0$c;

    invoke-direct {v0, p0, p1}, Lja/b0$c;-><init>(Lja/v;Ljava/io/File;)V

    return-object v0
.end method

.method public static create(Lja/v;Ljava/lang/String;)Lja/b0;
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
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 5
    invoke-static {p0, p1}, Lja/b0;->create(Lja/v;[B)Lja/b0;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lja/v;Lokio/f;)Lja/b0;
    .registers 3
    .param p0    # Lja/v;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 6
    new-instance v0, Lja/b0$a;

    invoke-direct {v0, p0, p1}, Lja/b0$a;-><init>(Lja/v;Lokio/f;)V

    return-object v0
.end method

.method public static create(Lja/v;[B)Lja/b0;
    .registers 4
    .param p0    # Lja/v;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lja/b0;->create(Lja/v;[BII)Lja/b0;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lja/v;[BII)Lja/b0;
    .registers 11
    .param p0    # Lja/v;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "content == null"

    .line 8
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lka/c;->f(JJJ)V

    .line 10
    new-instance v0, Lja/b0$b;

    invoke-direct {v0, p0, p3, p1, p2}, Lja/b0$b;-><init>(Lja/v;I[BI)V

    return-object v0
.end method


# virtual methods
.method public contentLength()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public abstract contentType()Lja/v;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract writeTo(Lokio/d;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

###### Class ja.b0.a (ja.b0$a)
.class Lja/b0$a;
.super Lja/b0;
.source "RequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lja/b0;->create(Lja/v;Lokio/f;)Lja/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lja/v;

.field final synthetic b:Lokio/f;


# direct methods
.method constructor <init>(Lja/v;Lokio/f;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lja/b0$a;->a:Lja/v;

    iput-object p2, p0, Lja/b0$a;->b:Lokio/f;

    invoke-direct {p0}, Lja/b0;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lja/b0$a;->b:Lokio/f;

    invoke-virtual {v0}, Lokio/f;->J()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public contentType()Lja/v;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lja/b0$a;->a:Lja/v;

    return-object v0
.end method

.method public writeTo(Lokio/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lja/b0$a;->b:Lokio/f;

    invoke-interface {p1, v0}, Lokio/d;->c3(Lokio/f;)Lokio/d;

    return-void
.end method

###### Class ja.b0.b (ja.b0$b)
.class Lja/b0$b;
.super Lja/b0;
.source "RequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lja/b0;->create(Lja/v;[BII)Lja/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lja/v;

.field final synthetic b:I

.field final synthetic c:[B

.field final synthetic d:I


# direct methods
.method constructor <init>(Lja/v;I[BI)V
    .registers 5

    .line 1
    iput-object p1, p0, Lja/b0$b;->a:Lja/v;

    iput p2, p0, Lja/b0$b;->b:I

    iput-object p3, p0, Lja/b0$b;->c:[B

    iput p4, p0, Lja/b0$b;->d:I

    invoke-direct {p0}, Lja/b0;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .registers 3

    .line 1
    iget v0, p0, Lja/b0$b;->b:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public contentType()Lja/v;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lja/b0$b;->a:Lja/v;

    return-object v0
.end method

.method public writeTo(Lokio/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lja/b0$b;->c:[B

    iget v1, p0, Lja/b0$b;->d:I

    iget v2, p0, Lja/b0$b;->b:I

    invoke-interface {p1, v0, v1, v2}, Lokio/d;->W1([BII)Lokio/d;

    return-void
.end method

###### Class ja.b0.c (ja.b0$c)
.class Lja/b0$c;
.super Lja/b0;
.source "RequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lja/b0;->create(Lja/v;Ljava/io/File;)Lja/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lja/v;

.field final synthetic b:Ljava/io/File;


# direct methods
.method constructor <init>(Lja/v;Ljava/io/File;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lja/b0$c;->a:Lja/v;

    iput-object p2, p0, Lja/b0$c;->b:Ljava/io/File;

    invoke-direct {p0}, Lja/b0;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .registers 3

    .line 1
    iget-object v0, p0, Lja/b0$c;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lja/v;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lja/b0$c;->a:Lja/v;

    return-object v0
.end method

.method public writeTo(Lokio/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_1
    iget-object v1, p0, Lja/b0$c;->b:Ljava/io/File;

    invoke-static {v1}, Lokio/n;->i(Ljava/io/File;)Lokio/u;

    move-result-object v0

    .line 2
    invoke-interface {p1, v0}, Lokio/d;->h2(Lokio/u;)J
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_e

    .line 3
    invoke-static {v0}, Lka/c;->g(Ljava/io/Closeable;)V

    return-void

    :catchall_e
    move-exception p1

    invoke-static {v0}, Lka/c;->g(Ljava/io/Closeable;)V

    throw p1
.end method
