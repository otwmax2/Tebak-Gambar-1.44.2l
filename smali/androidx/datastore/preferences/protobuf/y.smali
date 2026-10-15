###### Class androidx.datastore.preferences.protobuf.y (androidx.datastore.preferences.protobuf.y)
.class public abstract Landroidx/datastore/preferences/protobuf/y;
.super Landroidx/datastore/preferences/protobuf/a;
.source "GeneratedMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/y$b;,
        Landroidx/datastore/preferences/protobuf/y$e;,
        Landroidx/datastore/preferences/protobuf/y$d;,
        Landroidx/datastore/preferences/protobuf/y$c;,
        Landroidx/datastore/preferences/protobuf/y$a;,
        Landroidx/datastore/preferences/protobuf/y$f;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Landroidx/datastore/preferences/protobuf/y<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Landroidx/datastore/preferences/protobuf/y$a<",
        "TMessageType;TBuilderType;>;>",
        "Landroidx/datastore/preferences/protobuf/a<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static defaultInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Landroidx/datastore/preferences/protobuf/y<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected memoizedSerializedSize:I

.field protected unknownFields:Landroidx/datastore/preferences/protobuf/o1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroidx/datastore/preferences/protobuf/y;->defaultInstanceMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/a;-><init>()V

    .line 2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/o1;->e()Landroidx/datastore/preferences/protobuf/o1;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/y;->unknownFields:Landroidx/datastore/preferences/protobuf/o1;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroidx/datastore/preferences/protobuf/y;->memoizedSerializedSize:I

    return-void
.end method

.method protected static A(Landroidx/datastore/preferences/protobuf/a0$i;)Landroidx/datastore/preferences/protobuf/a0$i;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/datastore/preferences/protobuf/a0$i<",
            "TE;>;)",
            "Landroidx/datastore/preferences/protobuf/a0$i<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0xa

    goto :goto_b

    :cond_9
    mul-int/lit8 v0, v0, 0x2

    .line 2
    :goto_b
    invoke-interface {p0, v0}, Landroidx/datastore/preferences/protobuf/a0$i;->B0(I)Landroidx/datastore/preferences/protobuf/a0$i;

    move-result-object p0

    return-object p0
.end method

.method protected static C(Landroidx/datastore/preferences/protobuf/r0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    new-instance v0, Landroidx/datastore/preferences/protobuf/e1;

    invoke-direct {v0, p0, p1, p2}, Landroidx/datastore/preferences/protobuf/e1;-><init>(Landroidx/datastore/preferences/protobuf/r0;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method protected static D(Landroidx/datastore/preferences/protobuf/y;Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/y;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/datastore/preferences/protobuf/y<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/b0;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/i;->f(Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/i;

    move-result-object p1

    .line 2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/p;->b()Landroidx/datastore/preferences/protobuf/p;

    move-result-object v0

    .line 3
    invoke-static {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/y;->E(Landroidx/datastore/preferences/protobuf/y;Landroidx/datastore/preferences/protobuf/i;Landroidx/datastore/preferences/protobuf/p;)Landroidx/datastore/preferences/protobuf/y;

    move-result-object p0

    .line 4
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/y;->p(Landroidx/datastore/preferences/protobuf/y;)Landroidx/datastore/preferences/protobuf/y;

    move-result-object p0

    return-object p0
.end method

.method static E(Landroidx/datastore/preferences/protobuf/y;Landroidx/datastore/preferences/protobuf/i;Landroidx/datastore/preferences/protobuf/p;)Landroidx/datastore/preferences/protobuf/y;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/datastore/preferences/protobuf/y<",
            "TT;*>;>(TT;",
            "Landroidx/datastore/preferences/protobuf/i;",
            "Landroidx/datastore/preferences/protobuf/p;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/b0;
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/y$f;->r:Landroidx/datastore/preferences/protobuf/y$f;

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/y;->r(Landroidx/datastore/preferences/protobuf/y$f;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/y;

    .line 2
    :try_start_8
    invoke-static {}, Landroidx/datastore/preferences/protobuf/c1;->a()Landroidx/datastore/preferences/protobuf/c1;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/datastore/preferences/protobuf/c1;->e(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/g1;

    move-result-object v0

    .line 3
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/j;->Q(Landroidx/datastore/preferences/protobuf/i;)Landroidx/datastore/preferences/protobuf/j;

    move-result-object p1

    invoke-interface {v0, p0, p1, p2}, Landroidx/datastore/preferences/protobuf/g1;->e(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/f1;Landroidx/datastore/preferences/protobuf/p;)V

    .line 4
    invoke-interface {v0, p0}, Landroidx/datastore/preferences/protobuf/g1;->f(Ljava/lang/Object;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_1a} :catch_2c
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_1a} :catch_1b

    return-object p0

    :catch_1b
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Landroidx/datastore/preferences/protobuf/b0;

    if-eqz p1, :cond_2b

    .line 6
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/b0;

    throw p0

    .line 7
    :cond_2b
    throw p0

    :catch_2c
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Landroidx/datastore/preferences/protobuf/b0;

    if-eqz p2, :cond_3c

    .line 9
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/b0;

    throw p0

    .line 10
    :cond_3c
    new-instance p2, Landroidx/datastore/preferences/protobuf/b0;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroidx/datastore/preferences/protobuf/b0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Landroidx/datastore/preferences/protobuf/b0;->i(Landroidx/datastore/preferences/protobuf/r0;)Landroidx/datastore/preferences/protobuf/b0;

    move-result-object p0

    throw p0
.end method

.method protected static F(Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/y;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/datastore/preferences/protobuf/y<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/y;->defaultInstanceMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static p(Landroidx/datastore/preferences/protobuf/y;)Landroidx/datastore/preferences/protobuf/y;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/datastore/preferences/protobuf/y<",
            "TT;*>;>(TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/b0;
        }
    .end annotation

    if-eqz p0, :cond_16

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/y;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_16

    .line 2
    :cond_9
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/a;->l()Landroidx/datastore/preferences/protobuf/m1;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/m1;->a()Landroidx/datastore/preferences/protobuf/b0;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p0}, Landroidx/datastore/preferences/protobuf/b0;->i(Landroidx/datastore/preferences/protobuf/r0;)Landroidx/datastore/preferences/protobuf/b0;

    move-result-object p0

    throw p0

    :cond_16
    :goto_16
    return-object p0
.end method

.method protected static u()Landroidx/datastore/preferences/protobuf/a0$i;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Landroidx/datastore/preferences/protobuf/a0$i<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/d1;->i()Landroidx/datastore/preferences/protobuf/d1;

    move-result-object v0

    return-object v0
.end method

.method static v(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/y;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/datastore/preferences/protobuf/y<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/y;->defaultInstanceMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/y;

    if-nez v0, :cond_28

    .line 2
    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_16} :catch_1f

    .line 3
    sget-object v0, Landroidx/datastore/preferences/protobuf/y;->defaultInstanceMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/y;

    goto :goto_28

    :catch_1f
    move-exception p0

    .line 4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_28
    :goto_28
    if-nez v0, :cond_42

    .line 5
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/r1;->i(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/y;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/y;->w()Landroidx/datastore/preferences/protobuf/y;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 6
    sget-object v1, Landroidx/datastore/preferences/protobuf/y;->defaultInstanceMap:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_42

    .line 7
    :cond_3c
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_42
    :goto_42
    return-object v0
.end method

.method static varargs x(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_4} :catch_20
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 3
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1d

    .line 4
    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_15

    .line 5
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 6
    :cond_15
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 7
    :cond_1d
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_20
    move-exception p0

    .line 8
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static final y(Landroidx/datastore/preferences/protobuf/y;Z)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/datastore/preferences/protobuf/y<",
            "TT;*>;>(TT;Z)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/y$f;->o:Landroidx/datastore/preferences/protobuf/y$f;

    .line 2
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/y;->r(Landroidx/datastore/preferences/protobuf/y$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    return v1

    :cond_10
    if-nez v0, :cond_14

    const/4 p0, 0x0

    return p0

    .line 3
    :cond_14
    invoke-static {}, Landroidx/datastore/preferences/protobuf/c1;->a()Landroidx/datastore/preferences/protobuf/c1;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/datastore/preferences/protobuf/c1;->e(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/g1;

    move-result-object v0

    invoke-interface {v0, p0}, Landroidx/datastore/preferences/protobuf/g1;->g(Ljava/lang/Object;)Z

    move-result v0

    if-eqz p1, :cond_2c

    .line 4
    sget-object p1, Landroidx/datastore/preferences/protobuf/y$f;->p:Landroidx/datastore/preferences/protobuf/y$f;

    if-eqz v0, :cond_28

    move-object v1, p0

    goto :goto_29

    :cond_28
    const/4 v1, 0x0

    :goto_29
    invoke-virtual {p0, p1, v1}, Landroidx/datastore/preferences/protobuf/y;->s(Landroidx/datastore/preferences/protobuf/y$f;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c
    return v0
.end method


# virtual methods
.method public final B()Landroidx/datastore/preferences/protobuf/y$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/y$f;->s:Landroidx/datastore/preferences/protobuf/y$f;

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/y;->r(Landroidx/datastore/preferences/protobuf/y$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/y$a;

    return-object v0
.end method

.method public final G()Landroidx/datastore/preferences/protobuf/y$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/y$f;->s:Landroidx/datastore/preferences/protobuf/y$f;

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/y;->r(Landroidx/datastore/preferences/protobuf/y$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/y$a;

    .line 2
    invoke-virtual {v0, p0}, Landroidx/datastore/preferences/protobuf/y$a;->u(Landroidx/datastore/preferences/protobuf/y;)Landroidx/datastore/preferences/protobuf/y$a;

    return-object v0
.end method

.method public bridge synthetic a()Landroidx/datastore/preferences/protobuf/r0;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/y;->w()Landroidx/datastore/preferences/protobuf/y;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b()Landroidx/datastore/preferences/protobuf/r0$a;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/y;->G()Landroidx/datastore/preferences/protobuf/y$a;

    move-result-object v0

    return-object v0
.end method

.method e()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/y;->memoizedSerializedSize:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_4
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/y;->w()Landroidx/datastore/preferences/protobuf/y;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_14
    invoke-static {}, Landroidx/datastore/preferences/protobuf/c1;->a()Landroidx/datastore/preferences/protobuf/c1;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/datastore/preferences/protobuf/c1;->e(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/g1;

    move-result-object v0

    check-cast p1, Landroidx/datastore/preferences/protobuf/y;

    invoke-interface {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/g1;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f()I
    .registers 3

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/y;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    .line 2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/c1;->a()Landroidx/datastore/preferences/protobuf/c1;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/datastore/preferences/protobuf/c1;->e(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/g1;

    move-result-object v0

    invoke-interface {v0, p0}, Landroidx/datastore/preferences/protobuf/g1;->i(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/y;->memoizedSerializedSize:I

    .line 3
    :cond_13
    iget v0, p0, Landroidx/datastore/preferences/protobuf/y;->memoizedSerializedSize:I

    return v0
.end method

.method public g(Landroidx/datastore/preferences/protobuf/k;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/c1;->a()Landroidx/datastore/preferences/protobuf/c1;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Landroidx/datastore/preferences/protobuf/c1;->e(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/g1;

    move-result-object v0

    .line 3
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/l;->P(Landroidx/datastore/preferences/protobuf/k;)Landroidx/datastore/preferences/protobuf/l;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/g1;->h(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/u1;)V

    return-void
.end method

.method public bridge synthetic h()Landroidx/datastore/preferences/protobuf/r0$a;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/y;->B()Landroidx/datastore/preferences/protobuf/y$a;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/a;->memoizedHashCode:I

    if-eqz v0, :cond_5

    return v0

    .line 2
    :cond_5
    invoke-static {}, Landroidx/datastore/preferences/protobuf/c1;->a()Landroidx/datastore/preferences/protobuf/c1;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/datastore/preferences/protobuf/c1;->e(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/g1;

    move-result-object v0

    invoke-interface {v0, p0}, Landroidx/datastore/preferences/protobuf/g1;->d(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/a;->memoizedHashCode:I

    return v0
.end method

.method public final i()Landroidx/datastore/preferences/protobuf/z0;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/protobuf/z0<",
            "TMessageType;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/y$f;->u:Landroidx/datastore/preferences/protobuf/y$f;

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/y;->r(Landroidx/datastore/preferences/protobuf/y$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/z0;

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Landroidx/datastore/preferences/protobuf/y;->y(Landroidx/datastore/preferences/protobuf/y;Z)Z

    move-result v0

    return v0
.end method

.method m(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/datastore/preferences/protobuf/y;->memoizedSerializedSize:I

    return-void
.end method

.method o()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/y$f;->q:Landroidx/datastore/preferences/protobuf/y$f;

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/y;->r(Landroidx/datastore/preferences/protobuf/y$f;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final q()Landroidx/datastore/preferences/protobuf/y$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Landroidx/datastore/preferences/protobuf/y<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Landroidx/datastore/preferences/protobuf/y$a<",
            "TMessageType;TBuilderType;>;>()TBuilderType;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/y$f;->s:Landroidx/datastore/preferences/protobuf/y$f;

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/y;->r(Landroidx/datastore/preferences/protobuf/y$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/y$a;

    return-object v0
.end method

.method protected r(Landroidx/datastore/preferences/protobuf/y$f;)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Landroidx/datastore/preferences/protobuf/y;->t(Landroidx/datastore/preferences/protobuf/y$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected s(Landroidx/datastore/preferences/protobuf/y$f;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Landroidx/datastore/preferences/protobuf/y;->t(Landroidx/datastore/preferences/protobuf/y$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected abstract t(Landroidx/datastore/preferences/protobuf/y$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/datastore/preferences/protobuf/t0;->e(Landroidx/datastore/preferences/protobuf/r0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final w()Landroidx/datastore/preferences/protobuf/y;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/y$f;->t:Landroidx/datastore/preferences/protobuf/y$f;

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/y;->r(Landroidx/datastore/preferences/protobuf/y$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/y;

    return-object v0
.end method

.method protected z()V
    .registers 2

    .line 1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/c1;->a()Landroidx/datastore/preferences/protobuf/c1;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/datastore/preferences/protobuf/c1;->e(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/g1;

    move-result-object v0

    invoke-interface {v0, p0}, Landroidx/datastore/preferences/protobuf/g1;->f(Ljava/lang/Object;)V

    return-void
.end method

###### Class androidx.datastore.preferences.protobuf.y.a (androidx.datastore.preferences.protobuf.y$a)
.class public abstract Landroidx/datastore/preferences/protobuf/y$a;
.super Landroidx/datastore/preferences/protobuf/a$a;
.source "GeneratedMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Landroidx/datastore/preferences/protobuf/y<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Landroidx/datastore/preferences/protobuf/y$a<",
        "TMessageType;TBuilderType;>;>",
        "Landroidx/datastore/preferences/protobuf/a$a<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field private final o:Landroidx/datastore/preferences/protobuf/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected p:Landroidx/datastore/preferences/protobuf/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected q:Z


# direct methods
.method protected constructor <init>(Landroidx/datastore/preferences/protobuf/y;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/a$a;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/y$a;->o:Landroidx/datastore/preferences/protobuf/y;

    .line 3
    sget-object v0, Landroidx/datastore/preferences/protobuf/y$f;->r:Landroidx/datastore/preferences/protobuf/y$f;

    .line 4
    invoke-virtual {p1, v0}, Landroidx/datastore/preferences/protobuf/y;->r(Landroidx/datastore/preferences/protobuf/y$f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/datastore/preferences/protobuf/y;

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/y$a;->p:Landroidx/datastore/preferences/protobuf/y;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Landroidx/datastore/preferences/protobuf/y$a;->q:Z

    return-void
.end method

.method private v(Landroidx/datastore/preferences/protobuf/y;Landroidx/datastore/preferences/protobuf/y;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/c1;->a()Landroidx/datastore/preferences/protobuf/c1;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/c1;->e(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/g1;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/g1;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic A2()Landroidx/datastore/preferences/protobuf/r0;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/y$a;->p()Landroidx/datastore/preferences/protobuf/y;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a()Landroidx/datastore/preferences/protobuf/r0;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/y$a;->s()Landroidx/datastore/preferences/protobuf/y;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Landroidx/datastore/preferences/protobuf/r0;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/y$a;->o()Landroidx/datastore/preferences/protobuf/y;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/y$a;->q()Landroidx/datastore/preferences/protobuf/y$a;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic l(Landroidx/datastore/preferences/protobuf/a;)Landroidx/datastore/preferences/protobuf/a$a;
    .registers 2

    .line 1
    check-cast p1, Landroidx/datastore/preferences/protobuf/y;

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/y$a;->t(Landroidx/datastore/preferences/protobuf/y;)Landroidx/datastore/preferences/protobuf/y$a;

    move-result-object p1

    return-object p1
.end method

.method public final o()Landroidx/datastore/preferences/protobuf/y;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/y$a;->p()Landroidx/datastore/preferences/protobuf/y;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/y;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 3
    :cond_b
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/a$a;->n(Landroidx/datastore/preferences/protobuf/r0;)Landroidx/datastore/preferences/protobuf/m1;

    move-result-object v0

    throw v0
.end method

.method public p()Landroidx/datastore/preferences/protobuf/y;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/y$a;->q:Z

    if-eqz v0, :cond_7

    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/y$a;->p:Landroidx/datastore/preferences/protobuf/y;

    return-object v0

    .line 3
    :cond_7
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/y$a;->p:Landroidx/datastore/preferences/protobuf/y;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/y;->z()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroidx/datastore/preferences/protobuf/y$a;->q:Z

    .line 5
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/y$a;->p:Landroidx/datastore/preferences/protobuf/y;

    return-object v0
.end method

.method public q()Landroidx/datastore/preferences/protobuf/y$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/y$a;->s()Landroidx/datastore/preferences/protobuf/y;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/y;->B()Landroidx/datastore/preferences/protobuf/y$a;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/y$a;->p()Landroidx/datastore/preferences/protobuf/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/y$a;->u(Landroidx/datastore/preferences/protobuf/y;)Landroidx/datastore/preferences/protobuf/y$a;

    return-object v0
.end method

.method protected r()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/y$a;->q:Z

    if-eqz v0, :cond_18

    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/y$a;->p:Landroidx/datastore/preferences/protobuf/y;

    sget-object v1, Landroidx/datastore/preferences/protobuf/y$f;->r:Landroidx/datastore/preferences/protobuf/y$f;

    .line 3
    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/y;->r(Landroidx/datastore/preferences/protobuf/y$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/y;

    .line 4
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/y$a;->p:Landroidx/datastore/preferences/protobuf/y;

    invoke-direct {p0, v0, v1}, Landroidx/datastore/preferences/protobuf/y$a;->v(Landroidx/datastore/preferences/protobuf/y;Landroidx/datastore/preferences/protobuf/y;)V

    .line 5
    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/y$a;->p:Landroidx/datastore/preferences/protobuf/y;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Landroidx/datastore/preferences/protobuf/y$a;->q:Z

    :cond_18
    return-void
.end method

.method public s()Landroidx/datastore/preferences/protobuf/y;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/y$a;->o:Landroidx/datastore/preferences/protobuf/y;

    return-object v0
.end method

.method protected t(Landroidx/datastore/preferences/protobuf/y;)Landroidx/datastore/preferences/protobuf/y$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/y$a;->u(Landroidx/datastore/preferences/protobuf/y;)Landroidx/datastore/preferences/protobuf/y$a;

    move-result-object p1

    return-object p1
.end method

.method public u(Landroidx/datastore/preferences/protobuf/y;)Landroidx/datastore/preferences/protobuf/y$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/y$a;->r()V

    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/y$a;->p:Landroidx/datastore/preferences/protobuf/y;

    invoke-direct {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/y$a;->v(Landroidx/datastore/preferences/protobuf/y;Landroidx/datastore/preferences/protobuf/y;)V

    return-object p0
.end method

###### Class androidx.datastore.preferences.protobuf.y.b (androidx.datastore.preferences.protobuf.y$b)
.class public Landroidx/datastore/preferences/protobuf/y$b;
.super Landroidx/datastore/preferences/protobuf/b;
.source "GeneratedMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/datastore/preferences/protobuf/y<",
        "TT;*>;>",
        "Landroidx/datastore/preferences/protobuf/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final b:Landroidx/datastore/preferences/protobuf/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/datastore/preferences/protobuf/y;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/b;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/y$b;->b:Landroidx/datastore/preferences/protobuf/y;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Landroidx/datastore/preferences/protobuf/i;Landroidx/datastore/preferences/protobuf/p;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/b0;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/y$b;->g(Landroidx/datastore/preferences/protobuf/i;Landroidx/datastore/preferences/protobuf/p;)Landroidx/datastore/preferences/protobuf/y;

    move-result-object p1

    return-object p1
.end method

.method public g(Landroidx/datastore/preferences/protobuf/i;Landroidx/datastore/preferences/protobuf/p;)Landroidx/datastore/preferences/protobuf/y;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/preferences/protobuf/i;",
            "Landroidx/datastore/preferences/protobuf/p;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/b0;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/y$b;->b:Landroidx/datastore/preferences/protobuf/y;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/y;->E(Landroidx/datastore/preferences/protobuf/y;Landroidx/datastore/preferences/protobuf/i;Landroidx/datastore/preferences/protobuf/p;)Landroidx/datastore/preferences/protobuf/y;

    move-result-object p1

    return-object p1
.end method

###### Class androidx.datastore.preferences.protobuf.y.c (androidx.datastore.preferences.protobuf.y$c)
.class public abstract Landroidx/datastore/preferences/protobuf/y$c;
.super Landroidx/datastore/preferences/protobuf/y;
.source "GeneratedMessageLite.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/s0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Landroidx/datastore/preferences/protobuf/y$c<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/datastore/preferences/protobuf/y<",
        "TMessageType;TBuilderType;>;",
        "Landroidx/datastore/preferences/protobuf/s0;"
    }
.end annotation


# instance fields
.field protected extensions:Landroidx/datastore/preferences/protobuf/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/u<",
            "Landroidx/datastore/preferences/protobuf/y$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/y;-><init>()V

    .line 2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/u;->h()Landroidx/datastore/preferences/protobuf/u;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/y$c;->extensions:Landroidx/datastore/preferences/protobuf/u;

    return-void
.end method


# virtual methods
.method H()Landroidx/datastore/preferences/protobuf/u;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/protobuf/u<",
            "Landroidx/datastore/preferences/protobuf/y$d;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/y$c;->extensions:Landroidx/datastore/preferences/protobuf/u;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/u;->o()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/y$c;->extensions:Landroidx/datastore/preferences/protobuf/u;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/u;->b()Landroidx/datastore/preferences/protobuf/u;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/y$c;->extensions:Landroidx/datastore/preferences/protobuf/u;

    .line 3
    :cond_10
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/y$c;->extensions:Landroidx/datastore/preferences/protobuf/u;

    return-object v0
.end method

.method public bridge synthetic a()Landroidx/datastore/preferences/protobuf/r0;
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/datastore/preferences/protobuf/y;->w()Landroidx/datastore/preferences/protobuf/y;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b()Landroidx/datastore/preferences/protobuf/r0$a;
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/datastore/preferences/protobuf/y;->G()Landroidx/datastore/preferences/protobuf/y$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic h()Landroidx/datastore/preferences/protobuf/r0$a;
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/datastore/preferences/protobuf/y;->B()Landroidx/datastore/preferences/protobuf/y$a;

    move-result-object v0

    return-object v0
.end method

###### Class androidx.datastore.preferences.protobuf.y.d (androidx.datastore.preferences.protobuf.y$d)
.class final Landroidx/datastore/preferences/protobuf/y$d;
.super Ljava/lang/Object;
.source "GeneratedMessageLite.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/u$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/datastore/preferences/protobuf/u$b<",
        "Landroidx/datastore/preferences/protobuf/y$d;",
        ">;"
    }
.end annotation


# instance fields
.field final o:Landroidx/datastore/preferences/protobuf/a0$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/a0$d<",
            "*>;"
        }
    .end annotation
.end field

.field final p:I

.field final q:Landroidx/datastore/preferences/protobuf/t1$b;

.field final r:Z

.field final s:Z


# virtual methods
.method public E()Landroidx/datastore/preferences/protobuf/t1$c;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/y$d;->q:Landroidx/datastore/preferences/protobuf/t1$b;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/t1$b;->c()Landroidx/datastore/preferences/protobuf/t1$c;

    move-result-object v0

    return-object v0
.end method

.method public F()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/y$d;->s:Z

    return v0
.end method

.method public H(Landroidx/datastore/preferences/protobuf/r0$a;Landroidx/datastore/preferences/protobuf/r0;)Landroidx/datastore/preferences/protobuf/r0$a;
    .registers 3

    .line 1
    check-cast p1, Landroidx/datastore/preferences/protobuf/y$a;

    check-cast p2, Landroidx/datastore/preferences/protobuf/y;

    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/y$a;->u(Landroidx/datastore/preferences/protobuf/y;)Landroidx/datastore/preferences/protobuf/y$a;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroidx/datastore/preferences/protobuf/y$d;)I
    .registers 3

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/y$d;->p:I

    iget p1, p1, Landroidx/datastore/preferences/protobuf/y$d;->p:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 1
    check-cast p1, Landroidx/datastore/preferences/protobuf/y$d;

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/y$d;->c(Landroidx/datastore/preferences/protobuf/y$d;)I

    move-result p1

    return p1
.end method

.method public e()Landroidx/datastore/preferences/protobuf/a0$d;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/protobuf/a0$d<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/y$d;->o:Landroidx/datastore/preferences/protobuf/a0$d;

    return-object v0
.end method

.method public h()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/y$d;->p:I

    return v0
.end method

.method public w()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/y$d;->r:Z

    return v0
.end method

.method public x()Landroidx/datastore/preferences/protobuf/t1$b;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/y$d;->q:Landroidx/datastore/preferences/protobuf/t1$b;

    return-object v0
.end method

###### Class androidx.datastore.preferences.protobuf.y.e (androidx.datastore.preferences.protobuf.y$e)
.class public Landroidx/datastore/preferences/protobuf/y$e;
.super Landroidx/datastore/preferences/protobuf/n;
.source "GeneratedMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ContainingType::",
        "Landroidx/datastore/preferences/protobuf/r0;",
        "Type:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/datastore/preferences/protobuf/n<",
        "TContainingType;TType;>;"
    }
.end annotation


# instance fields
.field final a:Landroidx/datastore/preferences/protobuf/r0;

.field final b:Landroidx/datastore/preferences/protobuf/y$d;


# virtual methods
.method public a()Landroidx/datastore/preferences/protobuf/t1$b;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/y$e;->b:Landroidx/datastore/preferences/protobuf/y$d;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/y$d;->x()Landroidx/datastore/preferences/protobuf/t1$b;

    move-result-object v0

    return-object v0
.end method

.method public b()Landroidx/datastore/preferences/protobuf/r0;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/y$e;->a:Landroidx/datastore/preferences/protobuf/r0;

    return-object v0
.end method

.method public c()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/y$e;->b:Landroidx/datastore/preferences/protobuf/y$d;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/y$d;->h()I

    move-result v0

    return v0
.end method

.method public d()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/y$e;->b:Landroidx/datastore/preferences/protobuf/y$d;

    iget-boolean v0, v0, Landroidx/datastore/preferences/protobuf/y$d;->r:Z

    return v0
.end method

###### Class androidx.datastore.preferences.protobuf.y.f (androidx.datastore.preferences.protobuf.y$f)
.class public final enum Landroidx/datastore/preferences/protobuf/y$f;
.super Ljava/lang/Enum;
.source "GeneratedMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/datastore/preferences/protobuf/y$f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum o:Landroidx/datastore/preferences/protobuf/y$f;

.field public static final enum p:Landroidx/datastore/preferences/protobuf/y$f;

.field public static final enum q:Landroidx/datastore/preferences/protobuf/y$f;

.field public static final enum r:Landroidx/datastore/preferences/protobuf/y$f;

.field public static final enum s:Landroidx/datastore/preferences/protobuf/y$f;

.field public static final enum t:Landroidx/datastore/preferences/protobuf/y$f;

.field public static final enum u:Landroidx/datastore/preferences/protobuf/y$f;

.field private static final synthetic v:[Landroidx/datastore/preferences/protobuf/y$f;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .line 1
    new-instance v0, Landroidx/datastore/preferences/protobuf/y$f;

    const-string v1, "GET_MEMOIZED_IS_INITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/datastore/preferences/protobuf/y$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/y$f;->o:Landroidx/datastore/preferences/protobuf/y$f;

    .line 2
    new-instance v1, Landroidx/datastore/preferences/protobuf/y$f;

    const-string v3, "SET_MEMOIZED_IS_INITIALIZED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroidx/datastore/preferences/protobuf/y$f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/datastore/preferences/protobuf/y$f;->p:Landroidx/datastore/preferences/protobuf/y$f;

    .line 3
    new-instance v3, Landroidx/datastore/preferences/protobuf/y$f;

    const-string v5, "BUILD_MESSAGE_INFO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroidx/datastore/preferences/protobuf/y$f;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/datastore/preferences/protobuf/y$f;->q:Landroidx/datastore/preferences/protobuf/y$f;

    .line 4
    new-instance v5, Landroidx/datastore/preferences/protobuf/y$f;

    const-string v7, "NEW_MUTABLE_INSTANCE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroidx/datastore/preferences/protobuf/y$f;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroidx/datastore/preferences/protobuf/y$f;->r:Landroidx/datastore/preferences/protobuf/y$f;

    .line 5
    new-instance v7, Landroidx/datastore/preferences/protobuf/y$f;

    const-string v9, "NEW_BUILDER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Landroidx/datastore/preferences/protobuf/y$f;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroidx/datastore/preferences/protobuf/y$f;->s:Landroidx/datastore/preferences/protobuf/y$f;

    .line 6
    new-instance v9, Landroidx/datastore/preferences/protobuf/y$f;

    const-string v11, "GET_DEFAULT_INSTANCE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Landroidx/datastore/preferences/protobuf/y$f;-><init>(Ljava/lang/String;I)V

    sput-object v9, Landroidx/datastore/preferences/protobuf/y$f;->t:Landroidx/datastore/preferences/protobuf/y$f;

    .line 7
    new-instance v11, Landroidx/datastore/preferences/protobuf/y$f;

    const-string v13, "GET_PARSER"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Landroidx/datastore/preferences/protobuf/y$f;-><init>(Ljava/lang/String;I)V

    sput-object v11, Landroidx/datastore/preferences/protobuf/y$f;->u:Landroidx/datastore/preferences/protobuf/y$f;

    const/4 v13, 0x7

    new-array v13, v13, [Landroidx/datastore/preferences/protobuf/y$f;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 8
    sput-object v13, Landroidx/datastore/preferences/protobuf/y$f;->v:[Landroidx/datastore/preferences/protobuf/y$f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/y$f;
    .registers 2

    .line 1
    const-class v0, Landroidx/datastore/preferences/protobuf/y$f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/y$f;

    return-object p0
.end method

.method public static values()[Landroidx/datastore/preferences/protobuf/y$f;
    .registers 1

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/y$f;->v:[Landroidx/datastore/preferences/protobuf/y$f;

    invoke-virtual {v0}, [Landroidx/datastore/preferences/protobuf/y$f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/datastore/preferences/protobuf/y$f;

    return-object v0
.end method
