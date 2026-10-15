###### Class f6.e (f6.e)
.class final Lf6/e;
.super Ljava/lang/Object;
.source "JsonValueObjectEncoderContext.java"

# interfaces
.implements Ld6/e;
.implements Ld6/g;


# instance fields
.field private a:Lf6/e;

.field private b:Z

.field private final c:Landroid/util/JsonWriter;

.field private final d:Ljava/util/Map;
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

.field private final e:Ljava/util/Map;
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

.field private final f:Ld6/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld6/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Z


# direct methods
.method constructor <init>(Ljava/io/Writer;Ljava/util/Map;Ljava/util/Map;Ld6/d;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Writer;",
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
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lf6/e;->a:Lf6/e;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lf6/e;->b:Z

    .line 4
    new-instance v0, Landroid/util/JsonWriter;

    invoke-direct {v0, p1}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lf6/e;->c:Landroid/util/JsonWriter;

    .line 5
    iput-object p2, p0, Lf6/e;->d:Ljava/util/Map;

    .line 6
    iput-object p3, p0, Lf6/e;->e:Ljava/util/Map;

    .line 7
    iput-object p4, p0, Lf6/e;->f:Ld6/d;

    .line 8
    iput-boolean p5, p0, Lf6/e;->g:Z

    return-void
.end method

.method private t(Ljava/lang/Object;)Z
    .registers 3

    if-eqz p1, :cond_1f

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_1f

    instance-of v0, p1, Ljava/util/Collection;

    if-nez v0, :cond_1f

    instance-of v0, p1, Ljava/util/Date;

    if-nez v0, :cond_1f

    instance-of v0, p1, Ljava/lang/Enum;

    if-nez v0, :cond_1f

    instance-of p1, p1, Ljava/lang/Number;

    if-eqz p1, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p1, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 p1, 0x1

    :goto_20
    return p1
.end method

.method private w(Ljava/lang/String;Ljava/lang/Object;)Lf6/e;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ld6/b;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lf6/e;->y()V

    .line 2
    iget-object v0, p0, Lf6/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    if-nez p2, :cond_10

    .line 3
    iget-object p1, p0, Lf6/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->nullValue()Landroid/util/JsonWriter;

    return-object p0

    :cond_10
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p2, p1}, Lf6/e;->k(Ljava/lang/Object;Z)Lf6/e;

    move-result-object p1

    return-object p1
.end method

.method private x(Ljava/lang/String;Ljava/lang/Object;)Lf6/e;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ld6/b;
        }
    .end annotation

    if-nez p2, :cond_3

    return-object p0

    .line 1
    :cond_3
    invoke-direct {p0}, Lf6/e;->y()V

    .line 2
    iget-object v0, p0, Lf6/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p2, p1}, Lf6/e;->k(Ljava/lang/Object;Z)Lf6/e;

    move-result-object p1

    return-object p1
.end method

.method private y()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lf6/e;->b:Z

    if-eqz v0, :cond_19

    .line 2
    iget-object v0, p0, Lf6/e;->a:Lf6/e;

    if-eqz v0, :cond_18

    .line 3
    invoke-direct {v0}, Lf6/e;->y()V

    .line 4
    iget-object v0, p0, Lf6/e;->a:Lf6/e;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lf6/e;->b:Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lf6/e;->a:Lf6/e;

    .line 6
    iget-object v0, p0, Lf6/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {v0}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    :cond_18
    return-void

    .line 7
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Parent context used since this context was created. Cannot use this context anymore."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Ld6/c;Z)Ld6/e;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ld6/c;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lf6/e;->q(Ljava/lang/String;Z)Lf6/e;

    move-result-object p1

    return-object p1
.end method

.method public b(Ld6/c;D)Ld6/e;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ld6/c;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lf6/e;->m(Ljava/lang/String;D)Lf6/e;

    move-result-object p1

    return-object p1
.end method

.method public c(Ld6/c;J)Ld6/e;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ld6/c;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lf6/e;->o(Ljava/lang/String;J)Lf6/e;

    move-result-object p1

    return-object p1
.end method

.method public d(Ld6/c;I)Ld6/e;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ld6/c;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lf6/e;->n(Ljava/lang/String;I)Lf6/e;

    move-result-object p1

    return-object p1
.end method

.method public e(Ld6/c;Ljava/lang/Object;)Ld6/e;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ld6/c;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lf6/e;->p(Ljava/lang/String;Ljava/lang/Object;)Lf6/e;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f(Ljava/lang/String;)Ld6/g;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lf6/e;->l(Ljava/lang/String;)Lf6/e;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic g(Z)Ld6/g;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lf6/e;->r(Z)Lf6/e;

    move-result-object p1

    return-object p1
.end method

.method public h(D)Lf6/e;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lf6/e;->y()V

    .line 2
    iget-object v0, p0, Lf6/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1, p2}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    return-object p0
.end method

.method public i(I)Lf6/e;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lf6/e;->y()V

    .line 2
    iget-object v0, p0, Lf6/e;->c:Landroid/util/JsonWriter;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    return-object p0
.end method

.method public j(J)Lf6/e;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lf6/e;->y()V

    .line 2
    iget-object v0, p0, Lf6/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1, p2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    return-object p0
.end method

.method k(Ljava/lang/Object;Z)Lf6/e;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_22

    .line 1
    invoke-direct {p0, p1}, Lf6/e;->t(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 2
    new-instance p2, Ld6/b;

    new-array v0, v0, [Ljava/lang/Object;

    if-nez p1, :cond_12

    const/4 p1, 0x0

    goto :goto_16

    .line 3
    :cond_12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    :goto_16
    aput-object p1, v0, v1

    const-string p1, "%s cannot be encoded inline"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ld6/b;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_22
    if-nez p1, :cond_2a

    .line 4
    iget-object p1, p0, Lf6/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->nullValue()Landroid/util/JsonWriter;

    return-object p0

    .line 5
    :cond_2a
    instance-of v2, p1, Ljava/lang/Number;

    if-eqz v2, :cond_36

    .line 6
    iget-object p2, p0, Lf6/e;->c:Landroid/util/JsonWriter;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p2, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    return-object p0

    .line 7
    :cond_36
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_c1

    .line 8
    instance-of p2, p1, [B

    if-eqz p2, :cond_4b

    .line 9
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lf6/e;->s([B)Lf6/e;

    move-result-object p1

    return-object p1

    .line 10
    :cond_4b
    iget-object p2, p0, Lf6/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {p2}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 11
    instance-of p2, p1, [I

    if-eqz p2, :cond_64

    .line 12
    check-cast p1, [I

    array-length p2, p1

    :goto_57
    if-ge v1, p2, :cond_bb

    aget v0, p1, v1

    .line 13
    iget-object v2, p0, Lf6/e;->c:Landroid/util/JsonWriter;

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_57

    .line 14
    :cond_64
    instance-of p2, p1, [J

    if-eqz p2, :cond_75

    .line 15
    check-cast p1, [J

    array-length p2, p1

    :goto_6b
    if-ge v1, p2, :cond_bb

    aget-wide v2, p1, v1

    .line 16
    invoke-virtual {p0, v2, v3}, Lf6/e;->j(J)Lf6/e;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6b

    .line 17
    :cond_75
    instance-of p2, p1, [D

    if-eqz p2, :cond_88

    .line 18
    check-cast p1, [D

    array-length p2, p1

    :goto_7c
    if-ge v1, p2, :cond_bb

    aget-wide v2, p1, v1

    .line 19
    iget-object v0, p0, Lf6/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {v0, v2, v3}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_7c

    .line 20
    :cond_88
    instance-of p2, p1, [Z

    if-eqz p2, :cond_9b

    .line 21
    check-cast p1, [Z

    array-length p2, p1

    :goto_8f
    if-ge v1, p2, :cond_bb

    aget-boolean v0, p1, v1

    .line 22
    iget-object v2, p0, Lf6/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {v2, v0}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_8f

    .line 23
    :cond_9b
    instance-of p2, p1, [Ljava/lang/Number;

    if-eqz p2, :cond_ad

    .line 24
    check-cast p1, [Ljava/lang/Number;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_a3
    if-ge v0, p2, :cond_bb

    aget-object v2, p1, v0

    .line 25
    invoke-virtual {p0, v2, v1}, Lf6/e;->k(Ljava/lang/Object;Z)Lf6/e;

    add-int/lit8 v0, v0, 0x1

    goto :goto_a3

    .line 26
    :cond_ad
    check-cast p1, [Ljava/lang/Object;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_b1
    if-ge v0, p2, :cond_bb

    aget-object v2, p1, v0

    .line 27
    invoke-virtual {p0, v2, v1}, Lf6/e;->k(Ljava/lang/Object;Z)Lf6/e;

    add-int/lit8 v0, v0, 0x1

    goto :goto_b1

    .line 28
    :cond_bb
    iget-object p1, p0, Lf6/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    return-object p0

    .line 29
    :cond_c1
    instance-of v2, p1, Ljava/util/Collection;

    if-eqz v2, :cond_e4

    .line 30
    check-cast p1, Ljava/util/Collection;

    .line 31
    iget-object p2, p0, Lf6/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {p2}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 32
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_de

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 33
    invoke-virtual {p0, p2, v1}, Lf6/e;->k(Ljava/lang/Object;Z)Lf6/e;

    goto :goto_d0

    .line 34
    :cond_de
    iget-object p1, p0, Lf6/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    return-object p0

    .line 35
    :cond_e4
    instance-of v2, p1, Ljava/util/Map;

    if-eqz v2, :cond_130

    .line 36
    check-cast p1, Ljava/util/Map;

    .line 37
    iget-object p2, p0, Lf6/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {p2}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 38
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_12a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 39
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 40
    :try_start_107
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v3, p2}, Lf6/e;->p(Ljava/lang/String;Ljava/lang/Object;)Lf6/e;
    :try_end_111
    .catch Ljava/lang/ClassCastException; {:try_start_107 .. :try_end_111} :catch_112

    goto :goto_f7

    :catch_112
    move-exception p1

    .line 41
    new-instance p2, Ld6/b;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v1

    .line 42
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v0, "Only String keys are currently supported in maps, got %s of type %s instead."

    .line 43
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ld6/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    .line 44
    :cond_12a
    iget-object p1, p0, Lf6/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-object p0

    .line 45
    :cond_130
    iget-object v0, p0, Lf6/e;->d:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld6/d;

    if-eqz v0, :cond_143

    .line 46
    invoke-virtual {p0, v0, p1, p2}, Lf6/e;->v(Ld6/d;Ljava/lang/Object;Z)Lf6/e;

    move-result-object p1

    return-object p1

    .line 47
    :cond_143
    iget-object v0, p0, Lf6/e;->e:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld6/f;

    if-eqz v0, :cond_155

    .line 48
    invoke-interface {v0, p1, p0}, Ld6/f;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 49
    :cond_155
    instance-of v0, p1, Ljava/lang/Enum;

    if-eqz v0, :cond_171

    .line 50
    instance-of p2, p1, Lf6/f;

    if-eqz p2, :cond_167

    .line 51
    check-cast p1, Lf6/f;

    invoke-interface {p1}, Lf6/f;->h()I

    move-result p1

    invoke-virtual {p0, p1}, Lf6/e;->i(I)Lf6/e;

    goto :goto_170

    .line 52
    :cond_167
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lf6/e;->l(Ljava/lang/String;)Lf6/e;

    :goto_170
    return-object p0

    .line 53
    :cond_171
    iget-object v0, p0, Lf6/e;->f:Ld6/d;

    invoke-virtual {p0, v0, p1, p2}, Lf6/e;->v(Ld6/d;Ljava/lang/Object;Z)Lf6/e;

    move-result-object p1

    return-object p1
.end method

.method public l(Ljava/lang/String;)Lf6/e;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lf6/e;->y()V

    .line 2
    iget-object v0, p0, Lf6/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    return-object p0
.end method

.method public m(Ljava/lang/String;D)Lf6/e;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lf6/e;->y()V

    .line 2
    iget-object v0, p0, Lf6/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 3
    invoke-virtual {p0, p2, p3}, Lf6/e;->h(D)Lf6/e;

    move-result-object p1

    return-object p1
.end method

.method public n(Ljava/lang/String;I)Lf6/e;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lf6/e;->y()V

    .line 2
    iget-object v0, p0, Lf6/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 3
    invoke-virtual {p0, p2}, Lf6/e;->i(I)Lf6/e;

    move-result-object p1

    return-object p1
.end method

.method public o(Ljava/lang/String;J)Lf6/e;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lf6/e;->y()V

    .line 2
    iget-object v0, p0, Lf6/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 3
    invoke-virtual {p0, p2, p3}, Lf6/e;->j(J)Lf6/e;

    move-result-object p1

    return-object p1
.end method

.method public p(Ljava/lang/String;Ljava/lang/Object;)Lf6/e;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lf6/e;->g:Z

    if-eqz v0, :cond_9

    .line 2
    invoke-direct {p0, p1, p2}, Lf6/e;->x(Ljava/lang/String;Ljava/lang/Object;)Lf6/e;

    move-result-object p1

    return-object p1

    .line 3
    :cond_9
    invoke-direct {p0, p1, p2}, Lf6/e;->w(Ljava/lang/String;Ljava/lang/Object;)Lf6/e;

    move-result-object p1

    return-object p1
.end method

.method public q(Ljava/lang/String;Z)Lf6/e;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lf6/e;->y()V

    .line 2
    iget-object v0, p0, Lf6/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 3
    invoke-virtual {p0, p2}, Lf6/e;->r(Z)Lf6/e;

    move-result-object p1

    return-object p1
.end method

.method public r(Z)Lf6/e;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lf6/e;->y()V

    .line 2
    iget-object v0, p0, Lf6/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    return-object p0
.end method

.method public s([B)Lf6/e;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lf6/e;->y()V

    if-nez p1, :cond_b

    .line 2
    iget-object p1, p0, Lf6/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->nullValue()Landroid/util/JsonWriter;

    goto :goto_15

    .line 3
    :cond_b
    iget-object v0, p0, Lf6/e;->c:Landroid/util/JsonWriter;

    const/4 v1, 0x2

    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    :goto_15
    return-object p0
.end method

.method u()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lf6/e;->y()V

    .line 2
    iget-object v0, p0, Lf6/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {v0}, Landroid/util/JsonWriter;->flush()V

    return-void
.end method

.method v(Ld6/d;Ljava/lang/Object;Z)Lf6/e;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld6/d<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Z)",
            "Lf6/e;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_7

    .line 1
    iget-object v0, p0, Lf6/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 2
    :cond_7
    invoke-interface {p1, p2, p0}, Ld6/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez p3, :cond_11

    .line 3
    iget-object p1, p0, Lf6/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    :cond_11
    return-object p0
.end method
