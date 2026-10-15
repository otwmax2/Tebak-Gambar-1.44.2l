###### Class j7.a (j7.a)
.class public final Lj7/a;
.super Ljava/lang/Object;
.source "AztecWriter.java"

# interfaces
.implements Li7/g;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b(Ljava/lang/String;Li7/a;IILjava/nio/charset/Charset;II)Ll7/b;
    .registers 8

    .line 1
    sget-object v0, Li7/a;->o:Li7/a;

    if-ne p1, v0, :cond_11

    .line 2
    invoke-virtual {p0, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0, p5, p6}, Lk7/c;->d([BII)Lk7/a;

    move-result-object p0

    .line 3
    invoke-static {p0, p2, p3}, Lj7/a;->c(Lk7/a;II)Ll7/b;

    move-result-object p0

    return-object p0

    .line 4
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Can only encode AZTEC, but got "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static c(Lk7/a;II)Ll7/b;
    .registers 12

    .line 1
    invoke-virtual {p0}, Lk7/a;->a()Ll7/b;

    move-result-object p0

    if-eqz p0, :cond_49

    .line 2
    invoke-virtual {p0}, Ll7/b;->h()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Ll7/b;->g()I

    move-result v1

    .line 4
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 5
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 6
    div-int v2, p1, v0

    div-int v3, p2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    mul-int v3, v0, v2

    sub-int v3, p1, v3

    .line 7
    div-int/lit8 v3, v3, 0x2

    mul-int v4, v1, v2

    sub-int v4, p2, v4

    .line 8
    div-int/lit8 v4, v4, 0x2

    .line 9
    new-instance v5, Ll7/b;

    invoke-direct {v5, p1, p2}, Ll7/b;-><init>(II)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    :goto_31
    if-ge p2, v1, :cond_48

    move v7, v3

    const/4 v6, 0x0

    :goto_35
    if-ge v6, v0, :cond_44

    .line 10
    invoke-virtual {p0, v6, p2}, Ll7/b;->f(II)Z

    move-result v8

    if-eqz v8, :cond_40

    .line 11
    invoke-virtual {v5, v7, v4, v2, v2}, Ll7/b;->j(IIII)V

    :cond_40
    add-int/lit8 v6, v6, 0x1

    add-int/2addr v7, v2

    goto :goto_35

    :cond_44
    add-int/lit8 p2, p2, 0x1

    add-int/2addr v4, v2

    goto :goto_31

    :cond_48
    return-object v5

    .line 12
    :cond_49
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    goto :goto_50

    :goto_4f
    throw p0

    :goto_50
    goto :goto_4f
.end method


# virtual methods
.method public a(Ljava/lang/String;Li7/a;IILjava/util/Map;)Ll7/b;
    .registers 16
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

    .line 1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    const/16 v1, 0x21

    const/4 v2, 0x0

    if-eqz p5, :cond_4a

    .line 2
    sget-object v3, Li7/c;->p:Li7/c;

    invoke-interface {p5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 3
    invoke-interface {p5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 4
    :cond_1b
    sget-object v3, Li7/c;->o:Li7/c;

    invoke-interface {p5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 5
    invoke-interface {p5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 6
    :cond_2f
    sget-object v3, Li7/c;->x:Li7/c;

    invoke-interface {p5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 7
    invoke-interface {p5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object v7, v0

    move v8, v1

    move v9, v2

    goto :goto_4e

    :cond_47
    move-object v7, v0

    move v8, v1

    goto :goto_4d

    :cond_4a
    move-object v7, v0

    const/16 v8, 0x21

    :goto_4d
    const/4 v9, 0x0

    :goto_4e
    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    .line 8
    invoke-static/range {v3 .. v9}, Lj7/a;->b(Ljava/lang/String;Li7/a;IILjava/nio/charset/Charset;II)Ll7/b;

    move-result-object p1

    return-object p1
.end method
