###### Class n9.c (n9.c)
.class public final Ln9/c;
.super Ljava/lang/Object;
.source "progressionUtil.kt"


# direct methods
.method private static final a(III)I
    .registers 3

    .line 1
    invoke-static {p0, p2}, Ln9/c;->e(II)I

    move-result p0

    invoke-static {p1, p2}, Ln9/c;->e(II)I

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p0, p2}, Ln9/c;->e(II)I

    move-result p0

    return p0
.end method

.method private static final b(JJJ)J
    .registers 6

    .line 1
    invoke-static {p0, p1, p4, p5}, Ln9/c;->f(JJ)J

    move-result-wide p0

    invoke-static {p2, p3, p4, p5}, Ln9/c;->f(JJ)J

    move-result-wide p2

    sub-long/2addr p0, p2

    invoke-static {p0, p1, p4, p5}, Ln9/c;->f(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final c(III)I
    .registers 3

    if-lez p2, :cond_b

    if-lt p0, p1, :cond_5

    goto :goto_16

    .line 1
    :cond_5
    invoke-static {p1, p0, p2}, Ln9/c;->a(III)I

    move-result p0

    sub-int/2addr p1, p0

    goto :goto_16

    :cond_b
    if-gez p2, :cond_17

    if-gt p0, p1, :cond_10

    goto :goto_16

    :cond_10
    neg-int p2, p2

    .line 2
    invoke-static {p0, p1, p2}, Ln9/c;->a(III)I

    move-result p0

    add-int/2addr p1, p0

    :goto_16
    return p1

    .line 3
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Step is zero."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final d(JJJ)J
    .registers 13

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-lez v2, :cond_14

    cmp-long v0, p0, p2

    if-ltz v0, :cond_b

    goto :goto_25

    :cond_b
    move-wide v0, p2

    move-wide v2, p0

    move-wide v4, p4

    .line 1
    invoke-static/range {v0 .. v5}, Ln9/c;->b(JJJ)J

    move-result-wide p0

    sub-long/2addr p2, p0

    goto :goto_25

    :cond_14
    cmp-long v2, p4, v0

    if-gez v2, :cond_26

    cmp-long v0, p0, p2

    if-gtz v0, :cond_1d

    goto :goto_25

    :cond_1d
    neg-long v5, p4

    move-wide v1, p0

    move-wide v3, p2

    .line 2
    invoke-static/range {v1 .. v6}, Ln9/c;->b(JJJ)J

    move-result-wide p0

    add-long/2addr p2, p0

    :goto_25
    return-wide p2

    .line 3
    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Step is zero."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final e(II)I
    .registers 2

    .line 1
    rem-int/2addr p0, p1

    if-ltz p0, :cond_4

    goto :goto_5

    :cond_4
    add-int/2addr p0, p1

    :goto_5
    return p0
.end method

.method private static final f(JJ)J
    .registers 7

    .line 1
    rem-long/2addr p0, p2

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_8

    goto :goto_9

    :cond_8
    add-long/2addr p0, p2

    :goto_9
    return-wide p0
.end method
