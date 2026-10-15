###### Class com.google.android.gms.internal.firebase_messaging.zzab (com.google.android.gms.internal.firebase_messaging.zzab)
.class final Lcom/google/android/gms/internal/firebase_messaging/zzab;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@22.0.0"

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

.field private final e:Lcom/google/android/gms/internal/firebase_messaging/zzaf;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "UTF-8"

    .line 1
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zzab;->f:Ljava/nio/charset/Charset;

    const-string v0, "key"

    .line 2
    invoke-static {v0}, Ld6/c;->a(Ljava/lang/String;)Ld6/c$b;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/firebase_messaging/zzv;

    .line 3
    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase_messaging/zzv;-><init>()V

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase_messaging/zzv;->a(I)Lcom/google/android/gms/internal/firebase_messaging/zzv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_messaging/zzv;->b()Lcom/google/android/gms/internal/firebase_messaging/zzz;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld6/c$b;->b(Ljava/lang/annotation/Annotation;)Ld6/c$b;

    move-result-object v0

    invoke-virtual {v0}, Ld6/c$b;->a()Ld6/c;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zzab;->g:Ld6/c;

    const-string v0, "value"

    .line 5
    invoke-static {v0}, Ld6/c;->a(Ljava/lang/String;)Ld6/c$b;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/firebase_messaging/zzv;

    .line 6
    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase_messaging/zzv;-><init>()V

    const/4 v2, 0x2

    .line 7
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase_messaging/zzv;->a(I)Lcom/google/android/gms/internal/firebase_messaging/zzv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_messaging/zzv;->b()Lcom/google/android/gms/internal/firebase_messaging/zzz;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld6/c$b;->b(Ljava/lang/annotation/Annotation;)Ld6/c$b;

    move-result-object v0

    invoke-virtual {v0}, Ld6/c$b;->a()Ld6/c;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zzab;->h:Ld6/c;

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/firebase_messaging/zzaa;->a:Ld6/d;

    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zzab;->i:Ld6/d;

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase_messaging/zzaf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/firebase_messaging/zzaf;-><init>(Lcom/google/android/gms/internal/firebase_messaging/zzab;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_messaging/zzab;->e:Lcom/google/android/gms/internal/firebase_messaging/zzaf;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_messaging/zzab;->a:Ljava/io/OutputStream;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_messaging/zzab;->b:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/internal/firebase_messaging/zzab;->c:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/android/gms/internal/firebase_messaging/zzab;->d:Ld6/d;

    return-void
.end method

.method static final synthetic l(Ljava/util/Map$Entry;Ld6/e;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/firebase_messaging/zzab;->g:Ld6/c;

    .line 1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    sget-object v0, Lcom/google/android/gms/internal/firebase_messaging/zzab;->h:Ld6/c;

    .line 2
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ld6/e;->e(Ld6/c;Ljava/lang/Object;)Ld6/e;

    return-void
.end method

.method private final m(Ld6/d;Ld6/c;Ljava/lang/Object;Z)Lcom/google/android/gms/internal/firebase_messaging/zzab;
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
            "Lcom/google/android/gms/internal/firebase_messaging/zzab;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/firebase_messaging/zzab;->n(Ld6/d;Ljava/lang/Object;)J

    move-result-wide v0

    if-eqz p4, :cond_d

    const-wide/16 v2, 0x0

    cmp-long p4, v0, v2

    if-nez p4, :cond_d

    return-object p0

    .line 2
    :cond_d
    invoke-static {p2}, Lcom/google/android/gms/internal/firebase_messaging/zzab;->q(Ld6/c;)I

    move-result p2

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x2

    .line 3
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/firebase_messaging/zzab;->s(I)V

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/firebase_messaging/zzab;->t(J)V

    .line 5
    invoke-interface {p1, p3, p0}, Ld6/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private final n(Ld6/d;Ljava/lang/Object;)J
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

    new-instance v0, Lcom/google/android/gms/internal/firebase_messaging/zzw;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_messaging/zzw;-><init>()V

    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_messaging/zzab;->a:Ljava/io/OutputStream;

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_messaging/zzab;->a:Ljava/io/OutputStream;
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_1a

    .line 2
    :try_start_9
    invoke-interface {p1, p2, p0}, Ld6/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_16

    :try_start_c
    iput-object v1, p0, Lcom/google/android/gms/internal/firebase_messaging/zzab;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_messaging/zzw;->b()J

    move-result-wide p1
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_1a

    .line 3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-wide p1

    :catchall_16
    move-exception p1

    .line 4
    :try_start_17
    iput-object v1, p0, Lcom/google/android/gms/internal/firebase_messaging/zzab;->a:Ljava/io/OutputStream;

    .line 5
    throw p1
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1a

    :catchall_1a
    move-exception p1

    .line 6
    :try_start_1b
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    goto :goto_23

    :catchall_1f
    move-exception p2

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/firebase_messaging/zzt;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_23
    throw p1
.end method

.method private final o(Ld6/f;Ld6/c;Ljava/lang/Object;Z)Lcom/google/android/gms/internal/firebase_messaging/zzab;
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
            "Lcom/google/android/gms/internal/firebase_messaging/zzab;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_messaging/zzab;->e:Lcom/google/android/gms/internal/firebase_messaging/zzaf;

    .line 1
    invoke-virtual {v0, p2, p4}, Lcom/google/android/gms/internal/firebase_messaging/zzaf;->a(Ld6/c;Z)V

    iget-object p2, p0, Lcom/google/android/gms/internal/firebase_messaging/zzab;->e:Lcom/google/android/gms/internal/firebase_messaging/zzaf;

    .line 2
    invoke-interface {p1, p3, p2}, Ld6/f;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
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

.method private static q(Ld6/c;)I
    .registers 2

    const-class v0, Lcom/google/android/gms/internal/firebase_messaging/zzz;

    .line 1
    invoke-virtual {p0, v0}, Ld6/c;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase_messaging/zzz;

    if-eqz p0, :cond_f

    .line 2
    invoke-interface {p0}, Lcom/google/android/gms/internal/firebase_messaging/zzz;->zza()I

    move-result p0

    return p0

    :cond_f
    new-instance p0, Ld6/b;

    const-string v0, "Field has no @Protobuf config"

    invoke-direct {p0, v0}, Ld6/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static r(Ld6/c;)Lcom/google/android/gms/internal/firebase_messaging/zzz;
    .registers 2

    const-class v0, Lcom/google/android/gms/internal/firebase_messaging/zzz;

    .line 1
    invoke-virtual {p0, v0}, Ld6/c;->c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase_messaging/zzz;

    if-eqz p0, :cond_b

    return-object p0

    .line 2
    :cond_b
    new-instance p0, Ld6/b;

    const-string v0, "Field has no @Protobuf config"

    invoke-direct {p0, v0}, Ld6/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final s(I)V
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

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_messaging/zzab;->a:Ljava/io/OutputStream;

    and-int/lit8 v1, p1, 0x7f

    or-int/lit16 v1, v1, 0x80

    .line 1
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_messaging/zzab;->a:Ljava/io/OutputStream;

    and-int/lit8 p1, p1, 0x7f

    .line 2
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method private final t(J)V
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

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_messaging/zzab;->a:Ljava/io/OutputStream;

    long-to-int v1, p1

    and-int/lit8 v1, v1, 0x7f

    or-int/lit16 v1, v1, 0x80

    .line 1
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0

    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_messaging/zzab;->a:Ljava/io/OutputStream;

    long-to-int p2, p1

    and-int/lit8 p1, p2, 0x7f

    .line 2
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ld6/c;Z)Ld6/e;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/firebase_messaging/zzab;->i(Ld6/c;IZ)Lcom/google/android/gms/internal/firebase_messaging/zzab;

    return-object p0
.end method

.method public final b(Ld6/c;D)Ld6/e;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/firebase_messaging/zzab;->g(Ld6/c;DZ)Ld6/e;

    return-object p0
.end method

.method public final bridge synthetic c(Ld6/c;J)Ld6/e;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/firebase_messaging/zzab;->j(Ld6/c;JZ)Lcom/google/android/gms/internal/firebase_messaging/zzab;

    return-object p0
.end method

.method public final bridge synthetic d(Ld6/c;I)Ld6/e;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/firebase_messaging/zzab;->i(Ld6/c;IZ)Lcom/google/android/gms/internal/firebase_messaging/zzab;

    return-object p0
.end method

.method public final e(Ld6/c;Ljava/lang/Object;)Ld6/e;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/firebase_messaging/zzab;->f(Ld6/c;Ljava/lang/Object;Z)Ld6/e;

    return-object p0
.end method

.method final f(Ld6/c;Ljava/lang/Object;Z)Ld6/e;
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
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_messaging/zzab;->q(Ld6/c;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_messaging/zzab;->s(I)V

    .line 6
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/firebase_messaging/zzab;->f:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 7
    array-length p2, p1

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/firebase_messaging/zzab;->s(I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/firebase_messaging/zzab;->a:Ljava/io/OutputStream;

    .line 8
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
    invoke-virtual {p0, p1, p3, v1}, Lcom/google/android/gms/internal/firebase_messaging/zzab;->f(Ld6/c;Ljava/lang/Object;Z)Ld6/e;

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

    sget-object v0, Lcom/google/android/gms/internal/firebase_messaging/zzab;->i:Ld6/d;

    .line 16
    invoke-direct {p0, v0, p1, p3, v1}, Lcom/google/android/gms/internal/firebase_messaging/zzab;->m(Ld6/d;Ld6/c;Ljava/lang/Object;Z)Lcom/google/android/gms/internal/firebase_messaging/zzab;

    goto :goto_59

    :cond_6b
    return-object p0

    .line 17
    :cond_6c
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_7a

    .line 18
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/google/android/gms/internal/firebase_messaging/zzab;->g(Ld6/c;DZ)Ld6/e;

    return-object p0

    .line 19
    :cond_7a
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_88

    .line 20
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase_messaging/zzab;->h(Ld6/c;FZ)Ld6/e;

    return-object p0

    .line 21
    :cond_88
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_96

    .line 22
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/google/android/gms/internal/firebase_messaging/zzab;->j(Ld6/c;JZ)Lcom/google/android/gms/internal/firebase_messaging/zzab;

    return-object p0

    .line 23
    :cond_96
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_a4

    .line 24
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 25
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase_messaging/zzab;->i(Ld6/c;IZ)Lcom/google/android/gms/internal/firebase_messaging/zzab;

    return-object p0

    .line 26
    :cond_a4
    instance-of v0, p2, [B

    if-eqz v0, :cond_c5

    .line 27
    check-cast p2, [B

    if-eqz p3, :cond_b0

    array-length p3, p2

    if-nez p3, :cond_b0

    return-object p0

    .line 28
    :cond_b0
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_messaging/zzab;->q(Ld6/c;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_messaging/zzab;->s(I)V

    array-length p1, p2

    .line 30
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_messaging/zzab;->s(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_messaging/zzab;->a:Ljava/io/OutputStream;

    .line 31
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    return-object p0

    :cond_c5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_messaging/zzab;->b:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 32
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld6/d;

    if-eqz v0, :cond_d7

    .line 33
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase_messaging/zzab;->m(Ld6/d;Ld6/c;Ljava/lang/Object;Z)Lcom/google/android/gms/internal/firebase_messaging/zzab;

    return-object p0

    :cond_d7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_messaging/zzab;->c:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 34
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld6/f;

    if-eqz v0, :cond_e9

    .line 35
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase_messaging/zzab;->o(Ld6/f;Ld6/c;Ljava/lang/Object;Z)Lcom/google/android/gms/internal/firebase_messaging/zzab;

    return-object p0

    .line 36
    :cond_e9
    instance-of v0, p2, Lcom/google/android/gms/internal/firebase_messaging/zzx;

    const/4 v1, 0x1

    if-eqz v0, :cond_f8

    .line 37
    check-cast p2, Lcom/google/android/gms/internal/firebase_messaging/zzx;

    invoke-interface {p2}, Lcom/google/android/gms/internal/firebase_messaging/zzx;->h()I

    move-result p2

    .line 38
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/firebase_messaging/zzab;->i(Ld6/c;IZ)Lcom/google/android/gms/internal/firebase_messaging/zzab;

    return-object p0

    .line 39
    :cond_f8
    instance-of v0, p2, Ljava/lang/Enum;

    if-eqz v0, :cond_106

    .line 40
    check-cast p2, Ljava/lang/Enum;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    .line 41
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/firebase_messaging/zzab;->i(Ld6/c;IZ)Lcom/google/android/gms/internal/firebase_messaging/zzab;

    return-object p0

    :cond_106
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_messaging/zzab;->d:Ld6/d;

    .line 42
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase_messaging/zzab;->m(Ld6/d;Ld6/c;Ljava/lang/Object;Z)Lcom/google/android/gms/internal/firebase_messaging/zzab;

    return-object p0
.end method

.method final g(Ld6/c;DZ)Ld6/e;
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
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_messaging/zzab;->q(Ld6/c;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_messaging/zzab;->s(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_messaging/zzab;->a:Ljava/io/OutputStream;

    const/16 p4, 0x8

    .line 3
    invoke-static {p4}, Lcom/google/android/gms/internal/firebase_messaging/zzab;->p(I)Ljava/nio/ByteBuffer;

    move-result-object p4

    invoke-virtual {p4, p2, p3}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    return-object p0
.end method

.method final h(Ld6/c;FZ)Ld6/e;
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
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_messaging/zzab;->q(Ld6/c;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x5

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_messaging/zzab;->s(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_messaging/zzab;->a:Ljava/io/OutputStream;

    const/4 p3, 0x4

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/internal/firebase_messaging/zzab;->p(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    return-object p0
.end method

.method final i(Ld6/c;IZ)Lcom/google/android/gms/internal/firebase_messaging/zzab;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_6

    if-eqz p2, :cond_5

    goto :goto_6

    :cond_5
    return-object p0

    .line 1
    :cond_6
    :goto_6
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_messaging/zzab;->r(Ld6/c;)Lcom/google/android/gms/internal/firebase_messaging/zzz;

    move-result-object p1

    .line 2
    sget-object p3, Lcom/google/android/gms/internal/firebase_messaging/zzy;->o:Lcom/google/android/gms/internal/firebase_messaging/zzy;

    invoke-interface {p1}, Lcom/google/android/gms/internal/firebase_messaging/zzz;->zzb()Lcom/google/android/gms/internal/firebase_messaging/zzy;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    if-eqz p3, :cond_4d

    const/4 v0, 0x1

    if-eq p3, v0, :cond_3b

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1d

    goto :goto_59

    :cond_1d
    invoke-interface {p1}, Lcom/google/android/gms/internal/firebase_messaging/zzz;->zza()I

    move-result p1

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x5

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_messaging/zzab;->s(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_messaging/zzab;->a:Ljava/io/OutputStream;

    const/4 p3, 0x4

    .line 4
    invoke-static {p3}, Lcom/google/android/gms/internal/firebase_messaging/zzab;->p(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_59

    :cond_3b
    invoke-interface {p1}, Lcom/google/android/gms/internal/firebase_messaging/zzz;->zza()I

    move-result p1

    shl-int/lit8 p1, p1, 0x3

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_messaging/zzab;->s(I)V

    add-int p1, p2, p2

    shr-int/lit8 p2, p2, 0x1f

    xor-int/2addr p1, p2

    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_messaging/zzab;->s(I)V

    goto :goto_59

    :cond_4d
    invoke-interface {p1}, Lcom/google/android/gms/internal/firebase_messaging/zzz;->zza()I

    move-result p1

    shl-int/lit8 p1, p1, 0x3

    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_messaging/zzab;->s(I)V

    .line 8
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/firebase_messaging/zzab;->s(I)V

    :goto_59
    return-object p0
.end method

.method final j(Ld6/c;JZ)Lcom/google/android/gms/internal/firebase_messaging/zzab;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p4, :cond_a

    const-wide/16 v0, 0x0

    cmp-long p4, p2, v0

    if-eqz p4, :cond_9

    goto :goto_a

    :cond_9
    return-object p0

    .line 1
    :cond_a
    :goto_a
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_messaging/zzab;->r(Ld6/c;)Lcom/google/android/gms/internal/firebase_messaging/zzz;

    move-result-object p1

    .line 2
    sget-object p4, Lcom/google/android/gms/internal/firebase_messaging/zzy;->o:Lcom/google/android/gms/internal/firebase_messaging/zzy;

    invoke-interface {p1}, Lcom/google/android/gms/internal/firebase_messaging/zzz;->zzb()Lcom/google/android/gms/internal/firebase_messaging/zzy;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    if-eqz p4, :cond_53

    const/4 v0, 0x1

    if-eq p4, v0, :cond_3f

    const/4 v1, 0x2

    if-eq p4, v1, :cond_21

    goto :goto_5f

    :cond_21
    invoke-interface {p1}, Lcom/google/android/gms/internal/firebase_messaging/zzz;->zza()I

    move-result p1

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, v0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_messaging/zzab;->s(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_messaging/zzab;->a:Ljava/io/OutputStream;

    const/16 p4, 0x8

    .line 4
    invoke-static {p4}, Lcom/google/android/gms/internal/firebase_messaging/zzab;->p(I)Ljava/nio/ByteBuffer;

    move-result-object p4

    invoke-virtual {p4, p2, p3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_5f

    :cond_3f
    invoke-interface {p1}, Lcom/google/android/gms/internal/firebase_messaging/zzz;->zza()I

    move-result p1

    shl-int/lit8 p1, p1, 0x3

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_messaging/zzab;->s(I)V

    add-long v0, p2, p2

    const/16 p1, 0x3f

    shr-long p1, p2, p1

    xor-long/2addr p1, v0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_messaging/zzab;->t(J)V

    goto :goto_5f

    :cond_53
    invoke-interface {p1}, Lcom/google/android/gms/internal/firebase_messaging/zzz;->zza()I

    move-result p1

    shl-int/lit8 p1, p1, 0x3

    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_messaging/zzab;->s(I)V

    .line 8
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/firebase_messaging/zzab;->t(J)V

    :goto_5f
    return-object p0
.end method

.method final k(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_messaging/zzab;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_3

    return-object p0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_messaging/zzab;->b:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld6/d;

    if-eqz v0, :cond_15

    .line 2
    invoke-interface {v0, p1, p0}, Ld6/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 3
    :cond_15
    new-instance v0, Ld6/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0xf

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "No encoder for "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ld6/b;-><init>(Ljava/lang/String;)V

    throw v0
.end method
