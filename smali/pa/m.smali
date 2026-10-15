###### Class pa.m (pa.m)
.class public final Lpa/m;
.super Ljava/lang/Object;
.source "Settings.java"


# instance fields
.field private a:I

.field private final b:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 2
    iput-object v0, p0, Lpa/m;->b:[I

    return-void
.end method


# virtual methods
.method a()V
    .registers 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lpa/m;->a:I

    .line 2
    iget-object v1, p0, Lpa/m;->b:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method b(I)I
    .registers 3

    .line 1
    iget-object v0, p0, Lpa/m;->b:[I

    aget p1, v0, p1

    return p1
.end method

.method c()I
    .registers 3

    .line 1
    iget v0, p0, Lpa/m;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_c

    iget-object v0, p0, Lpa/m;->b:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    goto :goto_d

    :cond_c
    const/4 v0, -0x1

    :goto_d
    return v0
.end method

.method d()I
    .registers 3

    .line 1
    iget v0, p0, Lpa/m;->a:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_c

    iget-object v0, p0, Lpa/m;->b:[I

    const/4 v1, 0x7

    aget v0, v0, v1

    goto :goto_f

    :cond_c
    const v0, 0xffff

    :goto_f
    return v0
.end method

.method e(I)I
    .registers 3

    .line 1
    iget v0, p0, Lpa/m;->a:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_b

    iget-object p1, p0, Lpa/m;->b:[I

    const/4 v0, 0x4

    aget p1, p1, v0

    :cond_b
    return p1
.end method

.method f(I)I
    .registers 3

    .line 1
    iget v0, p0, Lpa/m;->a:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_b

    iget-object p1, p0, Lpa/m;->b:[I

    const/4 v0, 0x5

    aget p1, p1, v0

    :cond_b
    return p1
.end method

.method g(I)Z
    .registers 4

    const/4 v0, 0x1

    shl-int p1, v0, p1

    .line 1
    iget v1, p0, Lpa/m;->a:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method h(Lpa/m;)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_16

    .line 1
    invoke-virtual {p1, v0}, Lpa/m;->g(I)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_13

    .line 2
    :cond_c
    invoke-virtual {p1, v0}, Lpa/m;->b(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lpa/m;->i(II)Lpa/m;

    :goto_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_16
    return-void
.end method

.method i(II)Lpa/m;
    .registers 6

    if-ltz p1, :cond_11

    .line 1
    iget-object v0, p0, Lpa/m;->b:[I

    array-length v1, v0

    if-lt p1, v1, :cond_8

    goto :goto_11

    :cond_8
    const/4 v1, 0x1

    shl-int/2addr v1, p1

    .line 2
    iget v2, p0, Lpa/m;->a:I

    or-int/2addr v1, v2

    iput v1, p0, Lpa/m;->a:I

    .line 3
    aput p2, v0, p1

    :cond_11
    :goto_11
    return-object p0
.end method

.method j()I
    .registers 2

    .line 1
    iget v0, p0, Lpa/m;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method
