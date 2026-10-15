###### Class q7.a (q7.a)
.class public final Lq7/a;
.super Ljava/lang/Object;
.source "PDF417Writer.java"

# interfaces
.implements Li7/g;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b([[BI)Ll7/b;
    .registers 10

    .line 1
    new-instance v0, Ll7/b;

    const/4 v1, 0x0

    aget-object v2, p0, v1

    array-length v2, v2

    mul-int/lit8 v3, p1, 0x2

    add-int/2addr v2, v3

    array-length v4, p0

    add-int/2addr v4, v3

    invoke-direct {v0, v2, v4}, Ll7/b;-><init>(II)V

    .line 2
    invoke-virtual {v0}, Ll7/b;->b()V

    .line 3
    invoke-virtual {v0}, Ll7/b;->g()I

    move-result v2

    sub-int/2addr v2, p1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    :goto_19
    array-length v5, p0

    if-ge v4, v5, :cond_35

    .line 4
    aget-object v5, p0, v4

    const/4 v6, 0x0

    .line 5
    :goto_1f
    aget-object v7, p0, v1

    array-length v7, v7

    if-ge v6, v7, :cond_30

    .line 6
    aget-byte v7, v5, v6

    if-ne v7, v3, :cond_2d

    add-int v7, v6, p1

    .line 7
    invoke-virtual {v0, v7, v2}, Ll7/b;->i(II)V

    :cond_2d
    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    :cond_30
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_19

    :cond_35
    return-object v0
.end method

.method private static c(Lr7/e;Ljava/lang/String;IIII)Ll7/b;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Li7/h;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lr7/e;->e(Ljava/lang/String;I)V

    .line 2
    invoke-virtual {p0}, Lr7/e;->f()Lr7/a;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x4

    invoke-virtual {p1, p2, v0}, Lr7/a;->b(II)[[B

    move-result-object p1

    const/4 v0, 0x0

    if-le p4, p3, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    .line 3
    :goto_13
    aget-object v2, p1, v0

    array-length v2, v2

    array-length v3, p1

    if-ge v2, v3, :cond_1b

    const/4 v2, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v2, 0x0

    :goto_1c
    if-eq v1, v2, :cond_24

    .line 4
    invoke-static {p1}, Lq7/a;->d([[B)[[B

    move-result-object p1

    const/4 v1, 0x1

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    .line 5
    :goto_25
    aget-object v0, p1, v0

    array-length v0, v0

    div-int/2addr p3, v0

    .line 6
    array-length v0, p1

    div-int/2addr p4, v0

    if-ge p3, p4, :cond_2e

    goto :goto_2f

    :cond_2e
    move p3, p4

    :goto_2f
    if-le p3, p2, :cond_46

    .line 7
    invoke-virtual {p0}, Lr7/e;->f()Lr7/a;

    move-result-object p0

    shl-int/lit8 p1, p3, 0x2

    invoke-virtual {p0, p3, p1}, Lr7/a;->b(II)[[B

    move-result-object p0

    if-eqz v1, :cond_41

    .line 8
    invoke-static {p0}, Lq7/a;->d([[B)[[B

    move-result-object p0

    .line 9
    :cond_41
    invoke-static {p0, p5}, Lq7/a;->b([[BI)Ll7/b;

    move-result-object p0

    return-object p0

    .line 10
    :cond_46
    invoke-static {p1, p5}, Lq7/a;->b([[BI)Ll7/b;

    move-result-object p0

    return-object p0
.end method

.method private static d([[B)[[B
    .registers 9

    const/4 v0, 0x0

    .line 1
    aget-object v1, p0, v0

    array-length v1, v1

    array-length v2, p0

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v2, v3, v4

    aput v1, v3, v0

    const-class v1, B

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    const/4 v2, 0x0

    .line 2
    :goto_16
    array-length v3, p0

    if-ge v2, v3, :cond_30

    .line 3
    array-length v3, p0

    sub-int/2addr v3, v2

    sub-int/2addr v3, v4

    const/4 v5, 0x0

    .line 4
    :goto_1d
    aget-object v6, p0, v0

    array-length v6, v6

    if-ge v5, v6, :cond_2d

    .line 5
    aget-object v6, v1, v5

    aget-object v7, p0, v2

    aget-byte v7, v7, v5

    aput-byte v7, v6, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_30
    return-object v1
.end method


# virtual methods
.method public a(Ljava/lang/String;Li7/a;IILjava/util/Map;)Ll7/b;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Li7/a;",
            "II",
            "Ljava/util/Map<",
            "Li7/c;",
            "*>;)",
            "Ll7/b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Li7/h;
        }
    .end annotation

    .line 1
    sget-object v0, Li7/a;->y:Li7/a;

    if-ne p2, v0, :cond_ae

    .line 2
    new-instance v1, Lr7/e;

    invoke-direct {v1}, Lr7/e;-><init>()V

    const/16 p2, 0x1e

    const/4 v0, 0x2

    if-eqz p5, :cond_a3

    .line 3
    sget-object v2, Li7/c;->u:Li7/c;

    invoke-interface {p5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 4
    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lr7/e;->h(Z)V

    .line 5
    :cond_29
    sget-object v2, Li7/c;->v:Li7/c;

    invoke-interface {p5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 6
    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lr7/c;->valueOf(Ljava/lang/String;)Lr7/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Lr7/e;->i(Lr7/c;)V

    .line 7
    :cond_40
    sget-object v2, Li7/c;->w:Li7/c;

    invoke-interface {p5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 8
    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr7/d;

    .line 9
    invoke-virtual {v2}, Lr7/d;->a()I

    move-result v3

    .line 10
    invoke-virtual {v2}, Lr7/d;->c()I

    move-result v4

    .line 11
    invoke-virtual {v2}, Lr7/d;->b()I

    move-result v5

    .line 12
    invoke-virtual {v2}, Lr7/d;->d()I

    move-result v2

    .line 13
    invoke-virtual {v1, v3, v4, v5, v2}, Lr7/e;->j(IIII)V

    .line 14
    :cond_61
    sget-object v2, Li7/c;->t:Li7/c;

    invoke-interface {p5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 15
    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 16
    :cond_75
    sget-object v2, Li7/c;->o:Li7/c;

    invoke-interface {p5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_89

    .line 17
    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 18
    :cond_89
    sget-object v2, Li7/c;->p:Li7/c;

    invoke-interface {p5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a0

    .line 19
    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p5

    .line 20
    invoke-virtual {v1, p5}, Lr7/e;->k(Ljava/nio/charset/Charset;)V

    :cond_a0
    move v6, p2

    move v3, v0

    goto :goto_a6

    :cond_a3
    const/4 v3, 0x2

    const/16 v6, 0x1e

    :goto_a6
    move-object v2, p1

    move v4, p3

    move v5, p4

    .line 21
    invoke-static/range {v1 .. v6}, Lq7/a;->c(Lr7/e;Ljava/lang/String;IIII)Ll7/b;

    move-result-object p1

    return-object p1

    .line 22
    :cond_ae
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Can only encode PDF_417, but got "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
