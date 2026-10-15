###### Class n7.a (n7.a)
.class public final Ln7/a;
.super Ljava/lang/Object;
.source "DataMatrixWriter.java"

# interfaces
.implements Li7/g;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b(Lu7/b;II)Ll7/b;
    .registers 13

    .line 1
    invoke-virtual {p0}, Lu7/b;->e()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lu7/b;->d()I

    move-result v1

    .line 3
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 4
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 5
    div-int v4, v2, v0

    div-int v5, v3, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int v5, v0, v4

    sub-int/2addr v2, v5

    .line 6
    div-int/lit8 v2, v2, 0x2

    mul-int v5, v1, v4

    sub-int/2addr v3, v5

    .line 7
    div-int/lit8 v3, v3, 0x2

    const/4 v5, 0x0

    if-lt p2, v1, :cond_2e

    if-ge p1, v0, :cond_28

    goto :goto_2e

    .line 8
    :cond_28
    new-instance v6, Ll7/b;

    invoke-direct {v6, p1, p2}, Ll7/b;-><init>(II)V

    goto :goto_35

    .line 9
    :cond_2e
    :goto_2e
    new-instance v6, Ll7/b;

    invoke-direct {v6, v0, v1}, Ll7/b;-><init>(II)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 10
    :goto_35
    invoke-virtual {v6}, Ll7/b;->b()V

    const/4 p1, 0x0

    :goto_39
    if-ge p1, v1, :cond_51

    move v7, v2

    const/4 p2, 0x0

    :goto_3d
    if-ge p2, v0, :cond_4d

    .line 11
    invoke-virtual {p0, p2, p1}, Lu7/b;->b(II)B

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_49

    .line 12
    invoke-virtual {v6, v7, v3, v4, v4}, Ll7/b;->j(IIII)V

    :cond_49
    add-int/lit8 p2, p2, 0x1

    add-int/2addr v7, v4

    goto :goto_3d

    :cond_4d
    add-int/lit8 p1, p1, 0x1

    add-int/2addr v3, v4

    goto :goto_39

    :cond_51
    return-object v6
.end method

.method private static c(Lo7/e;Lo7/k;II)Ll7/b;
    .registers 15

    .line 1
    invoke-virtual {p1}, Lo7/k;->h()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lo7/k;->g()I

    move-result v1

    .line 3
    new-instance v2, Lu7/b;

    invoke-virtual {p1}, Lo7/k;->j()I

    move-result v3

    invoke-virtual {p1}, Lo7/k;->i()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lu7/b;-><init>(II)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_18
    if-ge v4, v1, :cond_83

    .line 4
    iget v6, p1, Lo7/k;->e:I

    rem-int v6, v4, v6

    const/4 v7, 0x1

    if-nez v6, :cond_39

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 5
    :goto_23
    invoke-virtual {p1}, Lo7/k;->j()I

    move-result v9

    if-ge v6, v9, :cond_37

    .line 6
    rem-int/lit8 v9, v6, 0x2

    if-nez v9, :cond_2f

    const/4 v9, 0x1

    goto :goto_30

    :cond_2f
    const/4 v9, 0x0

    :goto_30
    invoke-virtual {v2, v8, v5, v9}, Lu7/b;->g(IIZ)V

    add-int/2addr v8, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    :cond_37
    add-int/lit8 v5, v5, 0x1

    :cond_39
    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_3b
    if-ge v6, v0, :cond_66

    .line 7
    iget v9, p1, Lo7/k;->d:I

    rem-int v9, v6, v9

    if-nez v9, :cond_48

    .line 8
    invoke-virtual {v2, v8, v5, v7}, Lu7/b;->g(IIZ)V

    add-int/lit8 v8, v8, 0x1

    .line 9
    :cond_48
    invoke-virtual {p0, v6, v4}, Lo7/e;->e(II)Z

    move-result v9

    invoke-virtual {v2, v8, v5, v9}, Lu7/b;->g(IIZ)V

    add-int/2addr v8, v7

    .line 10
    iget v9, p1, Lo7/k;->d:I

    rem-int v10, v6, v9

    sub-int/2addr v9, v7

    if-ne v10, v9, :cond_63

    .line 11
    rem-int/lit8 v9, v4, 0x2

    if-nez v9, :cond_5d

    const/4 v9, 0x1

    goto :goto_5e

    :cond_5d
    const/4 v9, 0x0

    :goto_5e
    invoke-virtual {v2, v8, v5, v9}, Lu7/b;->g(IIZ)V

    add-int/lit8 v8, v8, 0x1

    :cond_63
    add-int/lit8 v6, v6, 0x1

    goto :goto_3b

    :cond_66
    add-int/lit8 v5, v5, 0x1

    .line 12
    iget v6, p1, Lo7/k;->e:I

    rem-int v8, v4, v6

    sub-int/2addr v6, v7

    if-ne v8, v6, :cond_80

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 13
    :goto_71
    invoke-virtual {p1}, Lo7/k;->j()I

    move-result v9

    if-ge v6, v9, :cond_7e

    .line 14
    invoke-virtual {v2, v8, v5, v7}, Lu7/b;->g(IIZ)V

    add-int/2addr v8, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_71

    :cond_7e
    add-int/lit8 v5, v5, 0x1

    :cond_80
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 15
    :cond_83
    invoke-static {v2, p2, p3}, Ln7/a;->b(Lu7/b;II)Ll7/b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Li7/a;IILjava/util/Map;)Ll7/b;
    .registers 9
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
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8b

    .line 2
    sget-object v0, Li7/a;->t:Li7/a;

    if-ne p2, v0, :cond_7b

    if-ltz p3, :cond_5f

    if-ltz p4, :cond_5f

    .line 3
    sget-object p2, Lo7/l;->o:Lo7/l;

    const/4 v0, 0x0

    if-eqz p5, :cond_38

    .line 4
    sget-object v1, Li7/c;->q:Li7/c;

    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo7/l;

    if-eqz v1, :cond_1e

    move-object p2, v1

    .line 5
    :cond_1e
    sget-object v1, Li7/c;->r:Li7/c;

    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li7/b;

    if-eqz v1, :cond_29

    goto :goto_2a

    :cond_29
    move-object v1, v0

    .line 6
    :goto_2a
    sget-object v2, Li7/c;->s:Li7/c;

    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Li7/b;

    if-eqz p5, :cond_35

    goto :goto_36

    :cond_35
    move-object p5, v0

    :goto_36
    move-object v0, v1

    goto :goto_39

    :cond_38
    move-object p5, v0

    .line 7
    :goto_39
    invoke-static {p1, p2, v0, p5}, Lo7/j;->b(Ljava/lang/String;Lo7/l;Li7/b;Li7/b;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v1, p2, v0, p5, v2}, Lo7/k;->l(ILo7/l;Li7/b;Li7/b;Z)Lo7/k;

    move-result-object p2

    .line 9
    invoke-static {p1, p2}, Lo7/i;->c(Ljava/lang/String;Lo7/k;)Ljava/lang/String;

    move-result-object p1

    .line 10
    new-instance p5, Lo7/e;

    invoke-virtual {p2}, Lo7/k;->h()I

    move-result v0

    invoke-virtual {p2}, Lo7/k;->g()I

    move-result v1

    invoke-direct {p5, p1, v0, v1}, Lo7/e;-><init>(Ljava/lang/CharSequence;II)V

    .line 11
    invoke-virtual {p5}, Lo7/e;->h()V

    .line 12
    invoke-static {p5, p2, p3, p4}, Ln7/a;->c(Lo7/e;Lo7/k;II)Ll7/b;

    move-result-object p1

    return-object p1

    .line 13
    :cond_5f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "Requested dimensions can\'t be negative: "

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p3, 0x78

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_7b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Can only encode DATA_MATRIX, but got "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_8b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Found empty contents"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
