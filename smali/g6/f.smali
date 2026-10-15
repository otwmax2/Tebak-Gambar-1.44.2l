###### Class g6.f (g6.f)
.class final Lg6/f;
.super Ljava/lang/Object;
.source "ProtobufDataEncoderContext.java"

# interfaces
.implements Ld6/e;


# static fields
.field private static final f:Ljava/nio/charset/Charset;

.field private static final g:Ld6/c;

.field private static final h:Ld6/c;

.field private static final i:Ld6/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld6/d<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/io/OutputStream;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ld6/d<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ld6/f<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final d:Ld6/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld6/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lg6/i;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "UTF-8"

    .line 1
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lg6/f;->f:Ljava/nio/charset/Charset;

    const-string v0, "key"

    .line 2
    invoke-static {v0}, Ld6/c;->a(Ljava/lang/String;)Ld6/c$b;

    move-result-object v0

    invoke-static {}, Lg6/a;->b()Lg6/a;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lg6/a;->c(I)Lg6/a;

    move-result-object v1

    invoke-virtual {v1}, Lg6/a;->a()Lg6/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld6/c$b;->b(Ljava/lang/annotation/Annotation;)Ld6/c$b;

    move-result-object v0

    invoke-virtual {v0}, Ld6/c$b;->a()Ld6/c;

    move-result-object v0

    sput-object v0, Lg6/f;->g:Ld6/c;

    const-string v0, "value"

    .line 3
    invoke-static {v0}, Ld6/c;->a(Ljava/lang/String;)Ld6/c$b;

    move-result-object v0

    invoke-static {}, Lg6/a;->b()Lg6/a;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lg6/a;->c(I)Lg6/a;

    move-result-object v1

    invoke-virtual {v1}, Lg6/a;->a()Lg6/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld6/c$b;->b(Ljava/lang/annotation/Annotation;)Ld6/c$b;

    move-result-object v0

    invoke-virtual {v0}, Ld6/c$b;->a()Ld6/c;

    move-result-object v0

    sput-object v0, Lg6/f;->h:Ld6/c;

    .line 4
    sget-object v0, Lg6/e;->a:Lg6/e;

    sput-object v0, Lg6/f;->i:Ld6/d;

    return-void
.end method

.method constructor <init>(Ljava/io/OutputStream;Ljava/util/Map;Ljava/util/Map;Ld6/d;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ld6/d<",
            "*>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ld6/f<",
            "*>;>;",
            "Ld6/d<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lg6/i;

    invoke-direct {v0, p0}, Lg6/i;-><init>(Lg6/f;)V

    iput-object v0, p0, Lg6/f;->e:Lg6/i;

    .line 3
    iput-object p1, p0, Lg6/f;->a:Ljava/io/OutputStream;

    .line 4
    iput-object p2, p0, Lg6/f;->b:Ljava/util/Map;

    .line 5
    iput-object p3, p0, Lg6/f;->c:Ljava/util/Map;

    .line 6
    iput-object p4, p0, Lg6/f;->d:Ld6/d;

    return-void
.end method

.method public static synthetic f(Ljava/util/Map$Entry;Ld6/e;)V
    .registers 2

    invoke-static {p0, p1}, Lg6/f;->w(Ljava/util/Map$Entry;Ld6/e;)V

    return-void
.end method

.method private static p(I)Ljava/nio/ByteBuffer;
    .registers 2

    .line 1
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method private q(Ld6/d;Ljava/lang/Object;)J
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ld6/d<",
            "TT;>;TT;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lg6/b;

    invoke-direct {v0}, Lg6/b;-><init>()V

    .line 2
    :try_start_5
    iget-object v1, p0, Lg6/f;->a:Ljava/io/OutputStream;

    .line 3
    iput-object v0, p0, Lg6/f;->a:Ljava/io/OutputStream;
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_1a

    .line 4
    :try_start_9
    invoke-interface {p1, p2, p0}, Ld6/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_16

    .line 5
    :try_start_c
    iput-object v1, p0, Lg6/f;->a:Ljava/io/OutputStream;

    .line 6
    invoke-virtual {v0}, Lg6/b;->b()J

    move-result-wide p1
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_1a

    .line 7
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-wide p1

    :catchall_16
    move-exception p1

    .line 8
    :try_start_17
    iput-object v1, p0, Lg6/f;->a:Ljava/io/OutputStream;

    .line 9
    throw p1
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1a

    :catchall_1a
    move-exception p1

    .line 10
    :try_start_1b
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    goto :goto_23

    :catchall_1f
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_23
    throw p1
.end method

.method private r(Ld6/d;Ld6/c;Ljava/lang/Object;Z)Lg6/f;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ld6/d<",
            "TT;>;",
            "Ld6/c;",
            "TT;Z)",
            "Lg6/f;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p3}, Lg6/f;->q(Ld6/d;Ljava/lang/Object;)J

    move-result-wide v0

    if-eqz p4, :cond_d

    const-wide/16 v2, 0x0

    cmp-long p4, v0, v2

    if-nez p4, :cond_d

    return-object p0

    .line 2
    :cond_d
    invoke-static {p2}, Lg6/f;->v(Ld6/c;)I

    move-result p2

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x2

    .line 3
    invoke-direct {p0, p2}, Lg6/f;->x(I)V

    .line 4
    invoke-direct {p0, v0, v1}, Lg6/f;->y(J)V

    .line 5
    invoke-interface {p1, p3, p0}, Ld6/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private s(Ld6/f;Ld6/c;Ljava/lang/Object;Z)Lg6/f;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ld6/f<",
            "TT;>;",
            "Ld6/c;",
            "TT;Z)",
            "Lg6/f;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg6/f;->e:Lg6/i;

    invoke-virtual {v0, p2, p4}, Lg6/i;->b(Ld6/c;Z)V

    .line 2
    iget-object p2, p0, Lg6/f;->e:Lg6/i;

    invoke-interface {p1, p3, p2}, Ld6/f;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private static u(Ld6/c;)Lg6/d;
    .registers 2

    .line 1
    const-class v0, Lg6/d;

    invoke-virtual {p0, v0}, Ld6/c;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lg6/d;

    if-eqz p0, :cond_b

    return-object p0

    .line 2
    :cond_b
    new-instance p0, Ld6/b;

    const-string v0, "Field has no @Protobuf config"

    invoke-direct {p0, v0}, Ld6/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static v(Ld6/c;)I
    .registers 2

    .line 1
    const-class v0, Lg6/d;

    invoke-virtual {p0, v0}, Ld6/c;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lg6/d;

    if-eqz p0, :cond_f

    .line 2
    invoke-interface {p0}, Lg6/d;->tag()I

    move-result p0

    return p0

    .line 3
    :cond_f
    new-instance p0, Ld6/b;

    const-string v0, "Field has no @Protobuf config"

    invoke-direct {p0, v0}, Ld6/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static synthetic w(Ljava/util/Map$Entry;Ld6/e;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lg6/f;->g:Ld6/c;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    .line 2
    sget-object v0, Lg6/f;->h:Ld6/c;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    return-void
.end method

.method private x(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    and-int/lit8 v0, p1, -0x80

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_15

    .line 1
    iget-object v0, p0, Lg6/f;->a:Ljava/io/OutputStream;

    and-int/lit8 v1, p1, 0x7f

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    .line 2
    :cond_15
    iget-object v0, p0, Lg6/f;->a:Ljava/io/OutputStream;

    and-int/lit8 p1, p1, 0x7f

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method private y(J)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_16

    .line 1
    iget-object v0, p0, Lg6/f;->a:Ljava/io/OutputStream;

    long-to-int v1, p1

    and-int/lit8 v1, v1, 0x7f

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0

    .line 2
    :cond_16
    iget-object v0, p0, Lg6/f;->a:Ljava/io/OutputStream;

    long-to-int p2, p1

    and-int/lit8 p1, p2, 0x7f

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ld6/c;Z)Ld6/e;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lg6/f;->n(Ld6/c;Z)Lg6/f;

    move-result-object p1

    return-object p1
.end method

.method public b(Ld6/c;D)Ld6/e;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lg6/f;->g(Ld6/c;DZ)Ld6/e;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c(Ld6/c;J)Ld6/e;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lg6/f;->l(Ld6/c;J)Lg6/f;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d(Ld6/c;I)Ld6/e;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lg6/f;->j(Ld6/c;I)Lg6/f;

    move-result-object p1

    return-object p1
.end method

.method public e(Ld6/c;Ljava/lang/Object;)Ld6/e;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lg6/f;->i(Ld6/c;Ljava/lang/Object;Z)Ld6/e;

    move-result-object p1

    return-object p1
.end method

.method g(Ld6/c;DZ)Ld6/e;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p4, :cond_9

    const-wide/16 v0, 0x0

    cmpl-double p4, p2, v0

    if-nez p4, :cond_9

    return-object p0

    .line 1
    :cond_9
    invoke-static {p1}, Lg6/f;->v(Ld6/c;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x1

    .line 2
    invoke-direct {p0, p1}, Lg6/f;->x(I)V

    .line 3
    iget-object p1, p0, Lg6/f;->a:Ljava/io/OutputStream;

    const/16 p4, 0x8

    invoke-static {p4}, Lg6/f;->p(I)Ljava/nio/ByteBuffer;

    move-result-object p4

    invoke-virtual {p4, p2, p3}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    return-object p0
.end method

.method h(Ld6/c;FZ)Ld6/e;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_8

    const/4 p3, 0x0

    cmpl-float p3, p2, p3

    if-nez p3, :cond_8

    return-object p0

    .line 1
    :cond_8
    invoke-static {p1}, Lg6/f;->v(Ld6/c;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x5

    .line 2
    invoke-direct {p0, p1}, Lg6/f;->x(I)V

    .line 3
    iget-object p1, p0, Lg6/f;->a:Ljava/io/OutputStream;

    const/4 p3, 0x4

    invoke-static {p3}, Lg6/f;->p(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    return-object p0
.end method

.method i(Ld6/c;Ljava/lang/Object;Z)Ld6/e;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_3

    return-object p0

    .line 1
    :cond_3
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_31

    .line 2
    check-cast p2, Ljava/lang/CharSequence;

    if-eqz p3, :cond_12

    .line 3
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-nez p3, :cond_12

    return-object p0

    .line 4
    :cond_12
    invoke-static {p1}, Lg6/f;->v(Ld6/c;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    .line 5
    invoke-direct {p0, p1}, Lg6/f;->x(I)V

    .line 6
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lg6/f;->f:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 7
    array-length p2, p1

    invoke-direct {p0, p2}, Lg6/f;->x(I)V

    .line 8
    iget-object p2, p0, Lg6/f;->a:Ljava/io/OutputStream;

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    return-object p0

    .line 9
    :cond_31
    instance-of v0, p2, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_4b

    .line 10
    check-cast p2, Ljava/util/Collection;

    .line 11
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 12
    invoke-virtual {p0, p1, p3, v1}, Lg6/f;->i(Ld6/c;Ljava/lang/Object;Z)Ld6/e;

    goto :goto_3c

    :cond_4a
    return-object p0

    .line 13
    :cond_4b
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_6c

    .line 14
    check-cast p2, Ljava/util/Map;

    .line 15
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_59
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 16
    sget-object v0, Lg6/f;->i:Ld6/d;

    invoke-direct {p0, v0, p1, p3, v1}, Lg6/f;->r(Ld6/d;Ld6/c;Ljava/lang/Object;Z)Lg6/f;

    goto :goto_59

    :cond_6b
    return-object p0

    .line 17
    :cond_6c
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_7b

    .line 18
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p3}, Lg6/f;->g(Ld6/c;DZ)Ld6/e;

    move-result-object p1

    return-object p1

    .line 19
    :cond_7b
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_8a

    .line 20
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lg6/f;->h(Ld6/c;FZ)Ld6/e;

    move-result-object p1

    return-object p1

    .line 21
    :cond_8a
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_99

    .line 22
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p3}, Lg6/f;->m(Ld6/c;JZ)Lg6/f;

    move-result-object p1

    return-object p1

    .line 23
    :cond_99
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_a8

    .line 24
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lg6/f;->o(Ld6/c;ZZ)Lg6/f;

    move-result-object p1

    return-object p1

    .line 25
    :cond_a8
    instance-of v0, p2, [B

    if-eqz v0, :cond_c9

    .line 26
    check-cast p2, [B

    if-eqz p3, :cond_b4

    .line 27
    array-length p3, p2

    if-nez p3, :cond_b4

    return-object p0

    .line 28
    :cond_b4
    invoke-static {p1}, Lg6/f;->v(Ld6/c;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    .line 29
    invoke-direct {p0, p1}, Lg6/f;->x(I)V

    .line 30
    array-length p1, p2

    invoke-direct {p0, p1}, Lg6/f;->x(I)V

    .line 31
    iget-object p1, p0, Lg6/f;->a:Ljava/io/OutputStream;

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    return-object p0

    .line 32
    :cond_c9
    iget-object v0, p0, Lg6/f;->b:Ljava/util/Map;

    .line 33
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld6/d;

    if-eqz v0, :cond_dc

    .line 34
    invoke-direct {p0, v0, p1, p2, p3}, Lg6/f;->r(Ld6/d;Ld6/c;Ljava/lang/Object;Z)Lg6/f;

    move-result-object p1

    return-object p1

    .line 35
    :cond_dc
    iget-object v0, p0, Lg6/f;->c:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld6/f;

    if-eqz v0, :cond_ef

    .line 36
    invoke-direct {p0, v0, p1, p2, p3}, Lg6/f;->s(Ld6/f;Ld6/c;Ljava/lang/Object;Z)Lg6/f;

    move-result-object p1

    return-object p1

    .line 37
    :cond_ef
    instance-of v0, p2, Lg6/c;

    if-eqz v0, :cond_fe

    .line 38
    check-cast p2, Lg6/c;

    invoke-interface {p2}, Lg6/c;->h()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lg6/f;->j(Ld6/c;I)Lg6/f;

    move-result-object p1

    return-object p1

    .line 39
    :cond_fe
    instance-of v0, p2, Ljava/lang/Enum;

    if-eqz v0, :cond_10d

    .line 40
    check-cast p2, Ljava/lang/Enum;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lg6/f;->j(Ld6/c;I)Lg6/f;

    move-result-object p1

    return-object p1

    .line 41
    :cond_10d
    iget-object v0, p0, Lg6/f;->d:Ld6/d;

    invoke-direct {p0, v0, p1, p2, p3}, Lg6/f;->r(Ld6/d;Ld6/c;Ljava/lang/Object;Z)Lg6/f;

    move-result-object p1

    return-object p1
.end method

.method public j(Ld6/c;I)Lg6/f;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lg6/f;->k(Ld6/c;IZ)Lg6/f;

    move-result-object p1

    return-object p1
.end method

.method k(Ld6/c;IZ)Lg6/f;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_5

    if-nez p2, :cond_5

    return-object p0

    .line 1
    :cond_5
    invoke-static {p1}, Lg6/f;->u(Ld6/c;)Lg6/d;

    move-result-object p1

    .line 2
    sget-object p3, Lg6/f$a;->a:[I

    invoke-interface {p1}, Lg6/d;->intEncoding()Lg6/d$a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p3, p3, v0

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p3, v0, :cond_4d

    const/4 v0, 0x2

    if-eq p3, v0, :cond_3c

    if-eq p3, v1, :cond_1f

    goto :goto_58

    .line 3
    :cond_1f
    invoke-interface {p1}, Lg6/d;->tag()I

    move-result p1

    shl-int/2addr p1, v1

    or-int/lit8 p1, p1, 0x5

    invoke-direct {p0, p1}, Lg6/f;->x(I)V

    .line 4
    iget-object p1, p0, Lg6/f;->a:Ljava/io/OutputStream;

    const/4 p3, 0x4

    invoke-static {p3}, Lg6/f;->p(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_58

    .line 5
    :cond_3c
    invoke-interface {p1}, Lg6/d;->tag()I

    move-result p1

    shl-int/2addr p1, v1

    invoke-direct {p0, p1}, Lg6/f;->x(I)V

    shl-int/lit8 p1, p2, 0x1

    shr-int/lit8 p2, p2, 0x1f

    xor-int/2addr p1, p2

    .line 6
    invoke-direct {p0, p1}, Lg6/f;->x(I)V

    goto :goto_58

    .line 7
    :cond_4d
    invoke-interface {p1}, Lg6/d;->tag()I

    move-result p1

    shl-int/2addr p1, v1

    invoke-direct {p0, p1}, Lg6/f;->x(I)V

    .line 8
    invoke-direct {p0, p2}, Lg6/f;->x(I)V

    :goto_58
    return-object p0
.end method

.method public l(Ld6/c;J)Lg6/f;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lg6/f;->m(Ld6/c;JZ)Lg6/f;

    move-result-object p1

    return-object p1
.end method

.method m(Ld6/c;JZ)Lg6/f;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p4, :cond_9

    const-wide/16 v0, 0x0

    cmp-long p4, p2, v0

    if-nez p4, :cond_9

    return-object p0

    .line 1
    :cond_9
    invoke-static {p1}, Lg6/f;->u(Ld6/c;)Lg6/d;

    move-result-object p1

    .line 2
    sget-object p4, Lg6/f$a;->a:[I

    invoke-interface {p1}, Lg6/d;->intEncoding()Lg6/d$a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p4, p4, v0

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p4, v0, :cond_53

    const/4 v2, 0x2

    if-eq p4, v2, :cond_40

    if-eq p4, v1, :cond_23

    goto :goto_5e

    .line 3
    :cond_23
    invoke-interface {p1}, Lg6/d;->tag()I

    move-result p1

    shl-int/2addr p1, v1

    or-int/2addr p1, v0

    invoke-direct {p0, p1}, Lg6/f;->x(I)V

    .line 4
    iget-object p1, p0, Lg6/f;->a:Ljava/io/OutputStream;

    const/16 p4, 0x8

    invoke-static {p4}, Lg6/f;->p(I)Ljava/nio/ByteBuffer;

    move-result-object p4

    invoke-virtual {p4, p2, p3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_5e

    .line 5
    :cond_40
    invoke-interface {p1}, Lg6/d;->tag()I

    move-result p1

    shl-int/2addr p1, v1

    invoke-direct {p0, p1}, Lg6/f;->x(I)V

    shl-long v0, p2, v0

    const/16 p1, 0x3f

    shr-long p1, p2, p1

    xor-long/2addr p1, v0

    .line 6
    invoke-direct {p0, p1, p2}, Lg6/f;->y(J)V

    goto :goto_5e

    .line 7
    :cond_53
    invoke-interface {p1}, Lg6/d;->tag()I

    move-result p1

    shl-int/2addr p1, v1

    invoke-direct {p0, p1}, Lg6/f;->x(I)V

    .line 8
    invoke-direct {p0, p2, p3}, Lg6/f;->y(J)V

    :goto_5e
    return-object p0
.end method

.method public n(Ld6/c;Z)Lg6/f;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lg6/f;->o(Ld6/c;ZZ)Lg6/f;

    move-result-object p1

    return-object p1
.end method

.method o(Ld6/c;ZZ)Lg6/f;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lg6/f;->k(Ld6/c;IZ)Lg6/f;

    move-result-object p1

    return-object p1
.end method

.method t(Ljava/lang/Object;)Lg6/f;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_3

    return-object p0

    .line 1
    :cond_3
    iget-object v0, p0, Lg6/f;->b:Ljava/util/Map;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld6/d;

    if-eqz v0, :cond_15

    .line 3
    invoke-interface {v0, p1, p0}, Ld6/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 4
    :cond_15
    new-instance v0, Ld6/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No encoder for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ld6/b;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class g6.f.a (g6.f$a)
.class synthetic Lg6/f$a;
.super Ljava/lang/Object;
.source "ProtobufDataEncoderContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg6/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lg6/d$a;->values()[Lg6/d$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lg6/f$a;->a:[I

    :try_start_9
    sget-object v1, Lg6/d$a;->o:Lg6/d$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lg6/f$a;->a:[I

    sget-object v1, Lg6/d$a;->p:Lg6/d$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lg6/f$a;->a:[I

    sget-object v1, Lg6/d$a;->q:Lg6/d$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method

###### Class g6.e (g6.e)
.class public final synthetic Lg6/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ld6/d;


# static fields
.field public static final synthetic a:Lg6/e;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lg6/e;

    invoke-direct {v0}, Lg6/e;-><init>()V

    sput-object v0, Lg6/e;->a:Lg6/e;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Ljava/util/Map$Entry;

    check-cast p2, Ld6/e;

    invoke-static {p1, p2}, Lg6/f;->f(Ljava/util/Map$Entry;Ld6/e;)V

    return-void
.end method
