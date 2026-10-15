###### Class okio.s (okio.s)
.class final Lokio/s;
.super Lokio/f;
.source "SegmentedByteString.java"


# instance fields
.field final transient t:[[B

.field final transient u:[I


# direct methods
.method constructor <init>(Lokio/c;I)V
    .registers 10

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lokio/f;-><init>([B)V

    .line 2
    iget-wide v1, p1, Lokio/c;->p:J

    int-to-long v5, p2

    const-wide/16 v3, 0x0

    invoke-static/range {v1 .. v6}, Lokio/w;->b(JJJ)V

    .line 3
    iget-object v0, p1, Lokio/c;->o:Lokio/q;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_11
    if-ge v2, p2, :cond_28

    .line 4
    iget v4, v0, Lokio/q;->c:I

    iget v5, v0, Lokio/q;->b:I

    if-eq v4, v5, :cond_20

    sub-int/2addr v4, v5

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    .line 5
    iget-object v0, v0, Lokio/q;->f:Lokio/q;

    goto :goto_11

    .line 6
    :cond_20
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "s.limit == s.pos"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 7
    :cond_28
    new-array v0, v3, [[B

    iput-object v0, p0, Lokio/s;->t:[[B

    mul-int/lit8 v3, v3, 0x2

    .line 8
    new-array v0, v3, [I

    iput-object v0, p0, Lokio/s;->u:[I

    .line 9
    iget-object p1, p1, Lokio/c;->o:Lokio/q;

    const/4 v0, 0x0

    :goto_35
    if-ge v1, p2, :cond_56

    .line 10
    iget-object v2, p0, Lokio/s;->t:[[B

    iget-object v3, p1, Lokio/q;->a:[B

    aput-object v3, v2, v0

    .line 11
    iget v3, p1, Lokio/q;->c:I

    iget v4, p1, Lokio/q;->b:I

    sub-int/2addr v3, v4

    add-int/2addr v1, v3

    if-le v1, p2, :cond_46

    move v1, p2

    .line 12
    :cond_46
    iget-object v3, p0, Lokio/s;->u:[I

    aput v1, v3, v0

    .line 13
    array-length v2, v2

    add-int/2addr v2, v0

    aput v4, v3, v2

    const/4 v2, 0x1

    .line 14
    iput-boolean v2, p1, Lokio/q;->d:Z

    add-int/lit8 v0, v0, 0x1

    .line 15
    iget-object p1, p1, Lokio/q;->f:Lokio/q;

    goto :goto_35

    :cond_56
    return-void
.end method

.method private Q(I)I
    .registers 5

    .line 1
    iget-object v0, p0, Lokio/s;->u:[I

    iget-object v1, p0, Lokio/s;->t:[[B

    array-length v1, v1

    add-int/lit8 p1, p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result p1

    if-ltz p1, :cond_f

    goto :goto_11

    :cond_f
    xor-int/lit8 p1, p1, -0x1

    :goto_11
    return p1
.end method

.method private R()Lokio/f;
    .registers 3

    .line 1
    new-instance v0, Lokio/f;

    invoke-virtual {p0}, Lokio/s;->N()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/f;-><init>([B)V

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-direct {p0}, Lokio/s;->R()Lokio/f;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public I()Lokio/f;
    .registers 2

    .line 1
    invoke-direct {p0}, Lokio/s;->R()Lokio/f;

    move-result-object v0

    invoke-virtual {v0}, Lokio/f;->I()Lokio/f;

    move-result-object v0

    return-object v0
.end method

.method public J()I
    .registers 3

    .line 1
    iget-object v0, p0, Lokio/s;->u:[I

    iget-object v1, p0, Lokio/s;->t:[[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public L(II)Lokio/f;
    .registers 4

    .line 1
    invoke-direct {p0}, Lokio/s;->R()Lokio/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lokio/f;->L(II)Lokio/f;

    move-result-object p1

    return-object p1
.end method

.method public M()Lokio/f;
    .registers 2

    .line 1
    invoke-direct {p0}, Lokio/s;->R()Lokio/f;

    move-result-object v0

    invoke-virtual {v0}, Lokio/f;->M()Lokio/f;

    move-result-object v0

    return-object v0
.end method

.method public N()[B
    .registers 9

    .line 1
    iget-object v0, p0, Lokio/s;->u:[I

    iget-object v1, p0, Lokio/s;->t:[[B

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget v0, v0, v2

    new-array v0, v0, [B

    .line 2
    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_e
    if-ge v2, v1, :cond_25

    .line 3
    iget-object v4, p0, Lokio/s;->u:[I

    add-int v5, v1, v2

    aget v5, v4, v5

    .line 4
    aget v4, v4, v2

    .line 5
    iget-object v6, p0, Lokio/s;->t:[[B

    aget-object v6, v6, v2

    sub-int v7, v4, v3

    invoke-static {v6, v5, v0, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_e

    :cond_25
    return-object v0
.end method

.method public O()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-direct {p0}, Lokio/s;->R()Lokio/f;

    move-result-object v0

    invoke-virtual {v0}, Lokio/f;->O()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method P(Lokio/c;)V
    .registers 13

    .line 1
    iget-object v0, p0, Lokio/s;->t:[[B

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_5
    if-ge v1, v0, :cond_33

    .line 2
    iget-object v3, p0, Lokio/s;->u:[I

    add-int v4, v0, v1

    aget v7, v3, v4

    .line 3
    aget v3, v3, v1

    .line 4
    new-instance v4, Lokio/q;

    iget-object v5, p0, Lokio/s;->t:[[B

    aget-object v6, v5, v1

    add-int v5, v7, v3

    sub-int v8, v5, v2

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Lokio/q;-><init>([BIIZZ)V

    .line 5
    iget-object v2, p1, Lokio/c;->o:Lokio/q;

    if-nez v2, :cond_2a

    .line 6
    iput-object v4, v4, Lokio/q;->g:Lokio/q;

    iput-object v4, v4, Lokio/q;->f:Lokio/q;

    iput-object v4, p1, Lokio/c;->o:Lokio/q;

    goto :goto_2f

    .line 7
    :cond_2a
    iget-object v2, v2, Lokio/q;->g:Lokio/q;

    invoke-virtual {v2, v4}, Lokio/q;->c(Lokio/q;)Lokio/q;

    :goto_2f
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_5

    .line 8
    :cond_33
    iget-wide v0, p1, Lokio/c;->p:J

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p1, Lokio/c;->p:J

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-direct {p0}, Lokio/s;->R()Lokio/f;

    move-result-object v0

    invoke-virtual {v0}, Lokio/f;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lokio/f;

    const/4 v2, 0x0

    if-eqz v1, :cond_20

    check-cast p1, Lokio/f;

    .line 2
    invoke-virtual {p1}, Lokio/f;->J()I

    move-result v1

    invoke-virtual {p0}, Lokio/s;->J()I

    move-result v3

    if-ne v1, v3, :cond_20

    .line 3
    invoke-virtual {p0}, Lokio/s;->J()I

    move-result v1

    invoke-virtual {p0, v2, p1, v2, v1}, Lokio/s;->q(ILokio/f;II)Z

    move-result p1

    if-eqz p1, :cond_20

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    return v0
.end method

.method public hashCode()I
    .registers 9

    .line 1
    iget v0, p0, Lokio/f;->p:I

    if-eqz v0, :cond_5

    return v0

    .line 2
    :cond_5
    iget-object v0, p0, Lokio/s;->t:[[B

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_c
    if-ge v1, v0, :cond_2b

    .line 3
    iget-object v4, p0, Lokio/s;->t:[[B

    aget-object v4, v4, v1

    .line 4
    iget-object v5, p0, Lokio/s;->u:[I

    add-int v6, v0, v1

    aget v6, v5, v6

    .line 5
    aget v5, v5, v1

    sub-int v2, v5, v2

    add-int/2addr v2, v6

    :goto_1d
    if-ge v6, v2, :cond_27

    mul-int/lit8 v3, v3, 0x1f

    .line 6
    aget-byte v7, v4, v6

    add-int/2addr v3, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    :cond_27
    add-int/lit8 v1, v1, 0x1

    move v2, v5

    goto :goto_c

    .line 7
    :cond_2b
    iput v3, p0, Lokio/f;->p:I

    return v3
.end method

.method public m(I)B
    .registers 9

    .line 1
    iget-object v0, p0, Lokio/s;->u:[I

    iget-object v1, p0, Lokio/s;->t:[[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    int-to-long v1, v0

    int-to-long v3, p1

    const-wide/16 v5, 0x1

    invoke-static/range {v1 .. v6}, Lokio/w;->b(JJJ)V

    .line 2
    invoke-direct {p0, p1}, Lokio/s;->Q(I)I

    move-result v0

    if-nez v0, :cond_18

    const/4 v1, 0x0

    goto :goto_1e

    .line 3
    :cond_18
    iget-object v1, p0, Lokio/s;->u:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    .line 4
    :goto_1e
    iget-object v2, p0, Lokio/s;->u:[I

    iget-object v3, p0, Lokio/s;->t:[[B

    array-length v4, v3

    add-int/2addr v4, v0

    aget v2, v2, v4

    .line 5
    aget-object v0, v3, v0

    sub-int/2addr p1, v1

    add-int/2addr p1, v2

    aget-byte p1, v0, p1

    return p1
.end method

.method public n()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-direct {p0}, Lokio/s;->R()Lokio/f;

    move-result-object v0

    invoke-virtual {v0}, Lokio/f;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q(ILokio/f;II)Z
    .registers 12

    const/4 v0, 0x0

    if-ltz p1, :cond_42

    .line 1
    invoke-virtual {p0}, Lokio/s;->J()I

    move-result v1

    sub-int/2addr v1, p4

    if-le p1, v1, :cond_b

    goto :goto_42

    .line 2
    :cond_b
    invoke-direct {p0, p1}, Lokio/s;->Q(I)I

    move-result v1

    :goto_f
    if-lez p4, :cond_40

    if-nez v1, :cond_15

    const/4 v2, 0x0

    goto :goto_1b

    .line 3
    :cond_15
    iget-object v2, p0, Lokio/s;->u:[I

    add-int/lit8 v3, v1, -0x1

    aget v2, v2, v3

    .line 4
    :goto_1b
    iget-object v3, p0, Lokio/s;->u:[I

    aget v3, v3, v1

    sub-int/2addr v3, v2

    add-int/2addr v3, v2

    sub-int/2addr v3, p1

    .line 5
    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 6
    iget-object v4, p0, Lokio/s;->u:[I

    iget-object v5, p0, Lokio/s;->t:[[B

    array-length v6, v5

    add-int/2addr v6, v1

    aget v4, v4, v6

    sub-int v2, p1, v2

    add-int/2addr v2, v4

    .line 7
    aget-object v4, v5, v1

    invoke-virtual {p2, p3, v4, v2, v3}, Lokio/f;->r(I[BII)Z

    move-result v2

    if-nez v2, :cond_3a

    return v0

    :cond_3a
    add-int/2addr p1, v3

    add-int/2addr p3, v3

    sub-int/2addr p4, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_40
    const/4 p1, 0x1

    return p1

    :cond_42
    :goto_42
    return v0
.end method

.method public r(I[BII)Z
    .registers 12

    const/4 v0, 0x0

    if-ltz p1, :cond_48

    .line 1
    invoke-virtual {p0}, Lokio/s;->J()I

    move-result v1

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_48

    if-ltz p3, :cond_48

    array-length v1, p2

    sub-int/2addr v1, p4

    if-le p3, v1, :cond_11

    goto :goto_48

    .line 2
    :cond_11
    invoke-direct {p0, p1}, Lokio/s;->Q(I)I

    move-result v1

    :goto_15
    if-lez p4, :cond_46

    if-nez v1, :cond_1b

    const/4 v2, 0x0

    goto :goto_21

    .line 3
    :cond_1b
    iget-object v2, p0, Lokio/s;->u:[I

    add-int/lit8 v3, v1, -0x1

    aget v2, v2, v3

    .line 4
    :goto_21
    iget-object v3, p0, Lokio/s;->u:[I

    aget v3, v3, v1

    sub-int/2addr v3, v2

    add-int/2addr v3, v2

    sub-int/2addr v3, p1

    .line 5
    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 6
    iget-object v4, p0, Lokio/s;->u:[I

    iget-object v5, p0, Lokio/s;->t:[[B

    array-length v6, v5

    add-int/2addr v6, v1

    aget v4, v4, v6

    sub-int v2, p1, v2

    add-int/2addr v2, v4

    .line 7
    aget-object v4, v5, v1

    invoke-static {v4, v2, p2, p3, v3}, Lokio/w;->a([BI[BII)Z

    move-result v2

    if-nez v2, :cond_40

    return v0

    :cond_40
    add-int/2addr p1, v3

    add-int/2addr p3, v3

    sub-int/2addr p4, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_46
    const/4 p1, 0x1

    return p1

    :cond_48
    :goto_48
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-direct {p0}, Lokio/s;->R()Lokio/f;

    move-result-object v0

    invoke-virtual {v0}, Lokio/f;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Lokio/f;
    .registers 2

    .line 1
    invoke-direct {p0}, Lokio/s;->R()Lokio/f;

    move-result-object v0

    invoke-virtual {v0}, Lokio/f;->u()Lokio/f;

    move-result-object v0

    return-object v0
.end method
