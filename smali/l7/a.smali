###### Class l7.a (l7.a)
.class public final Ll7/a;
.super Ljava/lang/Object;
.source "BitArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private o:[I

.field private p:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ll7/a;->p:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 3
    iput-object v0, p0, Ll7/a;->o:[I

    return-void
.end method

.method constructor <init>([II)V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Ll7/a;->o:[I

    .line 6
    iput p2, p0, Ll7/a;->p:I

    return-void
.end method

.method private g(I)V
    .registers 5

    .line 1
    iget-object v0, p0, Ll7/a;->o:[I

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x5

    if-le p1, v0, :cond_14

    .line 2
    invoke-static {p1}, Ll7/a;->k(I)[I

    move-result-object p1

    .line 3
    iget-object v0, p0, Ll7/a;->o:[I

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iput-object p1, p0, Ll7/a;->o:[I

    :cond_14
    return-void
.end method

.method private static k(I)[I
    .registers 1

    add-int/lit8 p0, p0, 0x1f

    .line 1
    div-int/lit8 p0, p0, 0x20

    new-array p0, p0, [I

    return-object p0
.end method


# virtual methods
.method public a(Z)V
    .registers 6

    .line 1
    iget v0, p0, Ll7/a;->p:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Ll7/a;->g(I)V

    if-eqz p1, :cond_18

    .line 2
    iget-object p1, p0, Ll7/a;->o:[I

    iget v0, p0, Ll7/a;->p:I

    div-int/lit8 v2, v0, 0x20

    aget v3, p1, v2

    and-int/lit8 v0, v0, 0x1f

    shl-int v0, v1, v0

    or-int/2addr v0, v3

    aput v0, p1, v2

    .line 3
    :cond_18
    iget p1, p0, Ll7/a;->p:I

    add-int/2addr p1, v1

    iput p1, p0, Ll7/a;->p:I

    return-void
.end method

.method public b(Ll7/a;)V
    .registers 5

    .line 1
    iget v0, p1, Ll7/a;->p:I

    .line 2
    iget v1, p0, Ll7/a;->p:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Ll7/a;->g(I)V

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_15

    .line 3
    invoke-virtual {p1, v1}, Ll7/a;->h(I)Z

    move-result v2

    invoke-virtual {p0, v2}, Ll7/a;->a(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_15
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ll7/a;->f()Ll7/a;

    move-result-object v0

    return-object v0
.end method

.method public d(II)V
    .registers 5

    if-ltz p2, :cond_1f

    const/16 v0, 0x20

    if-gt p2, v0, :cond_1f

    .line 1
    iget v0, p0, Ll7/a;->p:I

    add-int/2addr v0, p2

    invoke-direct {p0, v0}, Ll7/a;->g(I)V

    :goto_c
    if-lez p2, :cond_1e

    add-int/lit8 v0, p2, -0x1

    shr-int v0, p1, v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_17

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    .line 2
    :goto_18
    invoke-virtual {p0, v1}, Ll7/a;->a(Z)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_c

    :cond_1e
    return-void

    .line 3
    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Num bits must be between 0 and 32"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_28

    :goto_27
    throw p1

    :goto_28
    goto :goto_27
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    instance-of v0, p1, Ll7/a;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2
    :cond_6
    check-cast p1, Ll7/a;

    .line 3
    iget v0, p0, Ll7/a;->p:I

    iget v2, p1, Ll7/a;->p:I

    if-ne v0, v2, :cond_1a

    iget-object v0, p0, Ll7/a;->o:[I

    iget-object p1, p1, Ll7/a;->o:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_1a

    const/4 p1, 0x1

    return p1

    :cond_1a
    return v1
.end method

.method public f()Ll7/a;
    .registers 4

    .line 1
    new-instance v0, Ll7/a;

    iget-object v1, p0, Ll7/a;->o:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iget v2, p0, Ll7/a;->p:I

    invoke-direct {v0, v1, v2}, Ll7/a;-><init>([II)V

    return-object v0
.end method

.method public h(I)Z
    .registers 4

    .line 1
    iget-object v0, p0, Ll7/a;->o:[I

    div-int/lit8 v1, p1, 0x20

    aget v0, v0, v1

    and-int/lit8 p1, p1, 0x1f

    const/4 v1, 0x1

    shl-int p1, v1, p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_f

    return v1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget v0, p0, Ll7/a;->p:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ll7/a;->o:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public i()I
    .registers 2

    .line 1
    iget v0, p0, Ll7/a;->p:I

    return v0
.end method

.method public j()I
    .registers 2

    .line 1
    iget v0, p0, Ll7/a;->p:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public l(I[BII)V
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p4, :cond_23

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_6
    const/16 v4, 0x8

    if-ge v2, v4, :cond_1b

    .line 1
    invoke-virtual {p0, p1}, Ll7/a;->h(I)Z

    move-result v4

    if-eqz v4, :cond_16

    rsub-int/lit8 v4, v2, 0x7

    const/4 v5, 0x1

    shl-int v4, v5, v4

    or-int/2addr v3, v4

    :cond_16
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1b
    add-int v2, p3, v1

    int-to-byte v3, v3

    .line 2
    aput-byte v3, p2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_23
    return-void
.end method

.method public m(Ll7/a;)V
    .registers 6

    .line 1
    iget v0, p0, Ll7/a;->p:I

    iget v1, p1, Ll7/a;->p:I

    if-ne v0, v1, :cond_19

    const/4 v0, 0x0

    .line 2
    :goto_7
    iget-object v1, p0, Ll7/a;->o:[I

    array-length v2, v1

    if-ge v0, v2, :cond_18

    .line 3
    aget v2, v1, v0

    iget-object v3, p1, Ll7/a;->o:[I

    aget v3, v3, v0

    xor-int/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_18
    return-void

    .line 4
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Sizes don\'t match"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_22

    :goto_21
    throw p1

    :goto_22
    goto :goto_21
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Ll7/a;->p:I

    div-int/lit8 v2, v1, 0x8

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 2
    :goto_d
    iget v2, p0, Ll7/a;->p:I

    if-ge v1, v2, :cond_2b

    and-int/lit8 v2, v1, 0x7

    if-nez v2, :cond_1a

    const/16 v2, 0x20

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    :cond_1a
    invoke-virtual {p0, v1}, Ll7/a;->h(I)Z

    move-result v2

    if-eqz v2, :cond_23

    const/16 v2, 0x58

    goto :goto_25

    :cond_23
    const/16 v2, 0x2e

    :goto_25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 5
    :cond_2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
