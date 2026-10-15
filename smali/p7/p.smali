###### Class p7.p (p7.p)
.class public abstract Lp7/p;
.super Lp7/m;
.source "UPCEANReader.java"


# static fields
.field static final a:[I

.field static final b:[I

.field static final c:[I

.field static final d:[[I

.field static final e:[[I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_98

    sput-object v1, Lp7/p;->a:[I

    const/4 v1, 0x5

    new-array v2, v1, [I

    .line 2
    fill-array-data v2, :array_a2

    sput-object v2, Lp7/p;->b:[I

    const/4 v2, 0x6

    new-array v3, v2, [I

    .line 3
    fill-array-data v3, :array_b0

    sput-object v3, Lp7/p;->c:[I

    const/16 v3, 0xa

    new-array v4, v3, [[I

    const/4 v5, 0x4

    new-array v6, v5, [I

    .line 4
    fill-array-data v6, :array_c0

    const/4 v7, 0x0

    aput-object v6, v4, v7

    new-array v6, v5, [I

    fill-array-data v6, :array_cc

    const/4 v8, 0x1

    aput-object v6, v4, v8

    new-array v6, v5, [I

    fill-array-data v6, :array_d8

    const/4 v9, 0x2

    aput-object v6, v4, v9

    new-array v6, v5, [I

    fill-array-data v6, :array_e4

    aput-object v6, v4, v0

    new-array v0, v5, [I

    fill-array-data v0, :array_f0

    aput-object v0, v4, v5

    new-array v0, v5, [I

    fill-array-data v0, :array_fc

    aput-object v0, v4, v1

    new-array v0, v5, [I

    fill-array-data v0, :array_108

    aput-object v0, v4, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_114

    const/4 v1, 0x7

    aput-object v0, v4, v1

    new-array v0, v5, [I

    fill-array-data v0, :array_120

    const/16 v1, 0x8

    aput-object v0, v4, v1

    new-array v0, v5, [I

    fill-array-data v0, :array_12c

    const/16 v1, 0x9

    aput-object v0, v4, v1

    sput-object v4, Lp7/p;->d:[[I

    const/16 v0, 0x14

    new-array v1, v0, [[I

    .line 5
    sput-object v1, Lp7/p;->e:[[I

    .line 6
    invoke-static {v4, v7, v1, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_76
    if-ge v3, v0, :cond_96

    .line 7
    sget-object v1, Lp7/p;->d:[[I

    add-int/lit8 v2, v3, -0xa

    aget-object v1, v1, v2

    .line 8
    array-length v2, v1

    new-array v2, v2, [I

    const/4 v4, 0x0

    .line 9
    :goto_82
    array-length v5, v1

    if-ge v4, v5, :cond_8f

    .line 10
    array-length v5, v1

    sub-int/2addr v5, v4

    sub-int/2addr v5, v8

    aget v5, v1, v5

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_82

    .line 11
    :cond_8f
    sget-object v1, Lp7/p;->e:[[I

    aput-object v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_76

    :cond_96
    return-void

    nop

    :array_98
    .array-data 4
        0x1
        0x1
        0x1
    .end array-data

    :array_a2
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_b0
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_c0
    .array-data 4
        0x3
        0x2
        0x1
        0x1
    .end array-data

    :array_cc
    .array-data 4
        0x2
        0x2
        0x2
        0x1
    .end array-data

    :array_d8
    .array-data 4
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_e4
    .array-data 4
        0x1
        0x4
        0x1
        0x1
    .end array-data

    :array_f0
    .array-data 4
        0x1
        0x1
        0x3
        0x2
    .end array-data

    :array_fc
    .array-data 4
        0x1
        0x2
        0x3
        0x1
    .end array-data

    :array_108
    .array-data 4
        0x1
        0x1
        0x1
        0x4
    .end array-data

    :array_114
    .array-data 4
        0x1
        0x3
        0x1
        0x2
    .end array-data

    :array_120
    .array-data 4
        0x1
        0x2
        0x1
        0x3
    .end array-data

    :array_12c
    .array-data 4
        0x3
        0x1
        0x1
        0x2
    .end array-data
.end method

.method static a(Ljava/lang/CharSequence;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Li7/d;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const/4 v2, 0x1

    sub-int/2addr v0, v2

    .line 2
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    .line 3
    invoke-interface {p0, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Lp7/p;->b(Ljava/lang/CharSequence;)I

    move-result p0

    if-ne p0, v3, :cond_1f

    return v2

    :cond_1f
    return v1
.end method

.method static b(Ljava/lang/CharSequence;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Li7/d;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x0

    :goto_7
    const/16 v3, 0x9

    if-ltz v1, :cond_1e

    .line 2
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    if-ltz v4, :cond_19

    if-gt v4, v3, :cond_19

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, -0x2

    goto :goto_7

    .line 3
    :cond_19
    invoke-static {}, Li7/d;->a()Li7/d;

    move-result-object p0

    throw p0

    :cond_1e
    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v0, v0, -0x2

    :goto_22
    if-ltz v0, :cond_37

    .line 4
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    if-ltz v1, :cond_32

    if-gt v1, v3, :cond_32

    add-int/2addr v2, v1

    add-int/lit8 v0, v0, -0x2

    goto :goto_22

    .line 5
    :cond_32
    invoke-static {}, Li7/d;->a()Li7/d;

    move-result-object p0

    throw p0

    :cond_37
    rsub-int p0, v2, 0x3e8

    .line 6
    rem-int/lit8 p0, p0, 0xa

    return p0
.end method
