###### Class o7.j (o7.j)
.class public final Lo7/j;
.super Ljava/lang/Object;
.source "HighLevelEncoder.java"


# direct methods
.method public static a(Ljava/lang/CharSequence;I)I
    .registers 6

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-ge p1, v0, :cond_1e

    .line 2
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 3
    :cond_b
    :goto_b
    invoke-static {v2}, Lo7/j;->f(C)Z

    move-result v3

    if-eqz v3, :cond_1e

    if-ge p1, v0, :cond_1e

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p1, p1, 0x1

    if-ge p1, v0, :cond_b

    .line 4
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    goto :goto_b

    :cond_1e
    return v1
.end method

.method public static b(Ljava/lang/String;Lo7/l;Li7/b;Li7/b;)Ljava/lang/String;
    .registers 11

    const/4 v0, 0x6

    new-array v0, v0, [Lo7/g;

    .line 1
    new-instance v1, Lo7/a;

    invoke-direct {v1}, Lo7/a;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lo7/c;

    invoke-direct {v1}, Lo7/c;-><init>()V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lo7/m;

    invoke-direct {v1}, Lo7/m;-><init>()V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    new-instance v1, Lo7/n;

    invoke-direct {v1}, Lo7/n;-><init>()V

    const/4 v5, 0x3

    aput-object v1, v0, v5

    new-instance v1, Lo7/f;

    invoke-direct {v1}, Lo7/f;-><init>()V

    const/4 v5, 0x4

    aput-object v1, v0, v5

    new-instance v1, Lo7/b;

    invoke-direct {v1}, Lo7/b;-><init>()V

    const/4 v6, 0x5

    aput-object v1, v0, v6

    .line 2
    new-instance v1, Lo7/h;

    invoke-direct {v1, p0}, Lo7/h;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1, p1}, Lo7/h;->n(Lo7/l;)V

    .line 4
    invoke-virtual {v1, p2, p3}, Lo7/h;->l(Li7/b;Li7/b;)V

    const-string p1, "[)>\u001e05\u001d"

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const-string p2, "\u001e\u0004"

    if-eqz p1, :cond_5d

    invoke-virtual {p0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5d

    const/16 p0, 0xec

    .line 6
    invoke-virtual {v1, p0}, Lo7/h;->r(C)V

    .line 7
    invoke-virtual {v1, v4}, Lo7/h;->m(I)V

    .line 8
    iget p0, v1, Lo7/h;->f:I

    add-int/lit8 p0, p0, 0x7

    iput p0, v1, Lo7/h;->f:I

    goto :goto_79

    :cond_5d
    const-string p1, "[)>\u001e06\u001d"

    .line 9
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_79

    invoke-virtual {p0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_79

    const/16 p0, 0xed

    .line 10
    invoke-virtual {v1, p0}, Lo7/h;->r(C)V

    .line 11
    invoke-virtual {v1, v4}, Lo7/h;->m(I)V

    .line 12
    iget p0, v1, Lo7/h;->f:I

    add-int/lit8 p0, p0, 0x7

    iput p0, v1, Lo7/h;->f:I

    .line 13
    :cond_79
    :goto_79
    invoke-virtual {v1}, Lo7/h;->i()Z

    move-result p0

    if-eqz p0, :cond_92

    .line 14
    aget-object p0, v0, v2

    invoke-interface {p0, v1}, Lo7/g;->a(Lo7/h;)V

    .line 15
    invoke-virtual {v1}, Lo7/h;->e()I

    move-result p0

    if-ltz p0, :cond_79

    .line 16
    invoke-virtual {v1}, Lo7/h;->e()I

    move-result v2

    .line 17
    invoke-virtual {v1}, Lo7/h;->j()V

    goto :goto_79

    .line 18
    :cond_92
    invoke-virtual {v1}, Lo7/h;->a()I

    move-result p0

    .line 19
    invoke-virtual {v1}, Lo7/h;->p()V

    .line 20
    invoke-virtual {v1}, Lo7/h;->g()Lo7/k;

    move-result-object p1

    invoke-virtual {p1}, Lo7/k;->a()I

    move-result p1

    if-ge p0, p1, :cond_ae

    if-eqz v2, :cond_ae

    if-eq v2, v6, :cond_ae

    if-eq v2, v5, :cond_ae

    const/16 p0, 0xfe

    .line 21
    invoke-virtual {v1, p0}, Lo7/h;->r(C)V

    .line 22
    :cond_ae
    invoke-virtual {v1}, Lo7/h;->b()Ljava/lang/StringBuilder;

    move-result-object p0

    .line 23
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    const/16 p3, 0x81

    if-ge p2, p1, :cond_bd

    .line 24
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    :cond_bd
    :goto_bd
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-ge p2, p1, :cond_d0

    .line 26
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    add-int/2addr p2, v3

    invoke-static {p3, p2}, Lo7/j;->o(CI)C

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_bd

    .line 27
    :cond_d0
    invoke-virtual {v1}, Lo7/h;->b()Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c([F[II[B)I
    .registers 8

    const/4 v0, 0x0

    .line 1
    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([BB)V

    const/4 v1, 0x0

    :goto_5
    const/4 v2, 0x6

    if-ge v1, v2, :cond_26

    .line 2
    aget v2, p0, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    aput v2, p1, v1

    .line 3
    aget v2, p1, v1

    if-le p2, v2, :cond_1a

    .line 4
    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([BB)V

    move p2, v2

    :cond_1a
    if-ne p2, v2, :cond_23

    .line 5
    aget-byte v2, p3, v1

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_26
    return p2
.end method

.method private static d([B)I
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x6

    if-ge v0, v2, :cond_b

    .line 1
    aget-byte v2, p0, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_b
    return v1
.end method

.method static e(C)V
    .registers 6

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x4

    const-string v3, "0000"

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Illegal character: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, " (0x"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static f(C)Z
    .registers 2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method static g(C)Z
    .registers 2

    const/16 v0, 0x80

    if-lt p0, v0, :cond_a

    const/16 v0, 0xff

    if-gt p0, v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private static h(C)Z
    .registers 2

    const/16 v0, 0x20

    if-eq p0, v0, :cond_17

    const/16 v0, 0x30

    if-lt p0, v0, :cond_c

    const/16 v0, 0x39

    if-le p0, v0, :cond_17

    :cond_c
    const/16 v0, 0x41

    if-lt p0, v0, :cond_15

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    return p0

    :cond_17
    :goto_17
    const/4 p0, 0x1

    return p0
.end method

.method private static i(C)Z
    .registers 2

    const/16 v0, 0x20

    if-lt p0, v0, :cond_a

    const/16 v0, 0x5e

    if-gt p0, v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private static j(C)Z
    .registers 2

    const/16 v0, 0x20

    if-eq p0, v0, :cond_17

    const/16 v0, 0x30

    if-lt p0, v0, :cond_c

    const/16 v0, 0x39

    if-le p0, v0, :cond_17

    :cond_c
    const/16 v0, 0x61

    if-lt p0, v0, :cond_15

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    return p0

    :cond_17
    :goto_17
    const/4 p0, 0x1

    return p0
.end method

.method private static k(C)Z
    .registers 2

    .line 1
    invoke-static {p0}, Lo7/j;->m(C)Z

    move-result v0

    if-nez v0, :cond_1d

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1d

    const/16 v0, 0x30

    if-lt p0, v0, :cond_12

    const/16 v0, 0x39

    if-le p0, v0, :cond_1d

    :cond_12
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1b

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p0, 0x0

    return p0

    :cond_1d
    :goto_1d
    const/4 p0, 0x1

    return p0
.end method

.method private static l(C)Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method private static m(C)Z
    .registers 2

    const/16 v0, 0xd

    if-eq p0, v0, :cond_f

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_f

    const/16 v0, 0x3e

    if-ne p0, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method static n(Ljava/lang/CharSequence;II)I
    .registers 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v1, v2, :cond_b

    return p2

    :cond_b
    const/4 v2, 0x6

    if-nez p2, :cond_14

    new-array v3, v2, [F

    .line 2
    fill-array-data v3, :array_1de

    goto :goto_1c

    :cond_14
    new-array v3, v2, [F

    .line 3
    fill-array-data v3, :array_1ee

    const/4 v4, 0x0

    .line 4
    aput v4, v3, p2

    :goto_1c
    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_1e
    add-int v6, v1, v5

    .line 5
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const v8, 0x7fffffff

    const/4 v9, 0x5

    const/4 v10, 0x2

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x1

    if-ne v6, v7, :cond_5c

    new-array v0, v2, [B

    new-array v1, v2, [I

    .line 6
    invoke-static {v3, v1, v8, v0}, Lo7/j;->c([F[II[B)I

    move-result v2

    .line 7
    invoke-static {v0}, Lo7/j;->d([B)I

    move-result v3

    .line 8
    aget v1, v1, v4

    if-ne v1, v2, :cond_3f

    return v4

    :cond_3f
    if-ne v3, v13, :cond_46

    .line 9
    aget-byte v1, v0, v9

    if-lez v1, :cond_46

    return v9

    :cond_46
    if-ne v3, v13, :cond_4d

    .line 10
    aget-byte v1, v0, v11

    if-lez v1, :cond_4d

    return v11

    :cond_4d
    if-ne v3, v13, :cond_54

    .line 11
    aget-byte v1, v0, v10

    if-lez v1, :cond_54

    return v10

    :cond_54
    if-ne v3, v13, :cond_5b

    .line 12
    aget-byte v0, v0, v12

    if-lez v0, :cond_5b

    return v12

    :cond_5b
    return v13

    .line 13
    :cond_5c
    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    add-int/lit8 v5, v5, 0x1

    .line 14
    invoke-static {v6}, Lo7/j;->f(C)Z

    move-result v7

    const/high16 v14, 0x3f800000    # 1.0f

    if-eqz v7, :cond_72

    .line 15
    aget v7, v3, v4

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v7, v15

    aput v7, v3, v4

    goto :goto_99

    .line 16
    :cond_72
    invoke-static {v6}, Lo7/j;->g(C)Z

    move-result v7

    if-eqz v7, :cond_8a

    .line 17
    aget v7, v3, v4

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-float v7, v7

    aput v7, v3, v4

    .line 18
    aget v7, v3, v4

    const/high16 v8, 0x40000000    # 2.0f

    add-float/2addr v7, v8

    aput v7, v3, v4

    goto :goto_99

    .line 19
    :cond_8a
    aget v7, v3, v4

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-float v7, v7

    aput v7, v3, v4

    .line 20
    aget v7, v3, v4

    add-float/2addr v7, v14

    aput v7, v3, v4

    .line 21
    :goto_99
    invoke-static {v6}, Lo7/j;->h(C)Z

    move-result v7

    const v8, 0x402aaaab

    const v9, 0x3faaaaab

    const v16, 0x3f2aaaab

    if-eqz v7, :cond_af

    .line 22
    aget v7, v3, v13

    add-float v7, v7, v16

    aput v7, v3, v13

    goto :goto_c0

    .line 23
    :cond_af
    invoke-static {v6}, Lo7/j;->g(C)Z

    move-result v7

    if-eqz v7, :cond_bb

    .line 24
    aget v7, v3, v13

    add-float/2addr v7, v8

    aput v7, v3, v13

    goto :goto_c0

    .line 25
    :cond_bb
    aget v7, v3, v13

    add-float/2addr v7, v9

    aput v7, v3, v13

    .line 26
    :goto_c0
    invoke-static {v6}, Lo7/j;->j(C)Z

    move-result v7

    if-eqz v7, :cond_cd

    .line 27
    aget v7, v3, v10

    add-float v7, v7, v16

    aput v7, v3, v10

    goto :goto_de

    .line 28
    :cond_cd
    invoke-static {v6}, Lo7/j;->g(C)Z

    move-result v7

    if-eqz v7, :cond_d9

    .line 29
    aget v7, v3, v10

    add-float/2addr v7, v8

    aput v7, v3, v10

    goto :goto_de

    .line 30
    :cond_d9
    aget v7, v3, v10

    add-float/2addr v7, v9

    aput v7, v3, v10

    .line 31
    :goto_de
    invoke-static {v6}, Lo7/j;->k(C)Z

    move-result v7

    if-eqz v7, :cond_eb

    .line 32
    aget v7, v3, v12

    add-float v7, v7, v16

    aput v7, v3, v12

    goto :goto_102

    .line 33
    :cond_eb
    invoke-static {v6}, Lo7/j;->g(C)Z

    move-result v7

    if-eqz v7, :cond_fa

    .line 34
    aget v7, v3, v12

    const v8, 0x408aaaab

    add-float/2addr v7, v8

    aput v7, v3, v12

    goto :goto_102

    .line 35
    :cond_fa
    aget v7, v3, v12

    const v8, 0x40555555

    add-float/2addr v7, v8

    aput v7, v3, v12

    .line 36
    :goto_102
    invoke-static {v6}, Lo7/j;->i(C)Z

    move-result v7

    if-eqz v7, :cond_110

    .line 37
    aget v7, v3, v11

    const/high16 v8, 0x3f400000    # 0.75f

    add-float/2addr v7, v8

    aput v7, v3, v11

    goto :goto_125

    .line 38
    :cond_110
    invoke-static {v6}, Lo7/j;->g(C)Z

    move-result v7

    if-eqz v7, :cond_11e

    .line 39
    aget v7, v3, v11

    const/high16 v8, 0x40880000    # 4.25f

    add-float/2addr v7, v8

    aput v7, v3, v11

    goto :goto_125

    .line 40
    :cond_11e
    aget v7, v3, v11

    const/high16 v8, 0x40500000    # 3.25f

    add-float/2addr v7, v8

    aput v7, v3, v11

    .line 41
    :goto_125
    invoke-static {v6}, Lo7/j;->l(C)Z

    move-result v6

    if-eqz v6, :cond_134

    const/4 v6, 0x5

    .line 42
    aget v7, v3, v6

    const/high16 v8, 0x40800000    # 4.0f

    add-float/2addr v7, v8

    aput v7, v3, v6

    goto :goto_13a

    :cond_134
    const/4 v6, 0x5

    .line 43
    aget v7, v3, v6

    add-float/2addr v7, v14

    aput v7, v3, v6

    :goto_13a
    if-lt v5, v11, :cond_1e

    new-array v7, v2, [I

    new-array v8, v2, [B

    const v9, 0x7fffffff

    .line 44
    invoke-static {v3, v7, v9, v8}, Lo7/j;->c([F[II[B)I

    .line 45
    invoke-static {v8}, Lo7/j;->d([B)I

    move-result v9

    .line 46
    aget v14, v7, v4

    aget v15, v7, v6

    move v6, v15

    if-ge v14, v6, :cond_16a

    aget v6, v7, v4

    aget v14, v7, v13

    if-ge v6, v14, :cond_16a

    aget v6, v7, v4

    aget v14, v7, v10

    if-ge v6, v14, :cond_16a

    aget v6, v7, v4

    aget v14, v7, v12

    if-ge v6, v14, :cond_16a

    aget v6, v7, v4

    aget v14, v7, v11

    if-ge v6, v14, :cond_16a

    return v4

    :cond_16a
    const/4 v6, 0x5

    .line 47
    aget v14, v7, v6

    aget v6, v7, v4

    if-lt v14, v6, :cond_1db

    aget-byte v6, v8, v13

    aget-byte v14, v8, v10

    add-int/2addr v6, v14

    aget-byte v14, v8, v12

    add-int/2addr v6, v14

    aget-byte v14, v8, v11

    add-int/2addr v6, v14

    if-nez v6, :cond_17f

    goto :goto_1db

    :cond_17f
    if-ne v9, v13, :cond_186

    .line 48
    aget-byte v6, v8, v11

    if-lez v6, :cond_186

    return v11

    :cond_186
    if-ne v9, v13, :cond_18d

    .line 49
    aget-byte v6, v8, v10

    if-lez v6, :cond_18d

    return v10

    :cond_18d
    if-ne v9, v13, :cond_194

    .line 50
    aget-byte v6, v8, v12

    if-lez v6, :cond_194

    return v12

    .line 51
    :cond_194
    aget v6, v7, v13

    add-int/2addr v6, v13

    aget v8, v7, v4

    if-ge v6, v8, :cond_1e

    aget v6, v7, v13

    add-int/2addr v6, v13

    const/4 v8, 0x5

    aget v8, v7, v8

    if-ge v6, v8, :cond_1e

    aget v6, v7, v13

    add-int/2addr v6, v13

    aget v8, v7, v11

    if-ge v6, v8, :cond_1e

    aget v6, v7, v13

    add-int/2addr v6, v13

    aget v8, v7, v10

    if-ge v6, v8, :cond_1e

    .line 52
    aget v6, v7, v13

    aget v8, v7, v12

    if-ge v6, v8, :cond_1b8

    return v13

    .line 53
    :cond_1b8
    aget v6, v7, v13

    aget v7, v7, v12

    if-ne v6, v7, :cond_1e

    add-int/2addr v1, v5

    add-int/2addr v1, v13

    .line 54
    :goto_1c0
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1da

    .line 55
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 56
    invoke-static {v2}, Lo7/j;->m(C)Z

    move-result v3

    if-eqz v3, :cond_1d1

    return v12

    .line 57
    :cond_1d1
    invoke-static {v2}, Lo7/j;->k(C)Z

    move-result v2

    if-eqz v2, :cond_1da

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c0

    :cond_1da
    return v13

    :cond_1db
    :goto_1db
    const/4 v0, 0x5

    return v0

    nop

    :array_1de
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3fa00000    # 1.25f
    .end array-data

    :array_1ee
    .array-data 4
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40100000    # 2.25f
    .end array-data
.end method

.method private static o(CI)C
    .registers 2

    mul-int/lit16 p1, p1, 0x95

    .line 1
    rem-int/lit16 p1, p1, 0xfd

    add-int/lit8 p1, p1, 0x1

    add-int/2addr p0, p1

    const/16 p1, 0xfe

    if-gt p0, p1, :cond_c

    goto :goto_e

    :cond_c
    add-int/lit16 p0, p0, -0xfe

    :goto_e
    int-to-char p0, p0

    return p0
.end method
