###### Class s.i (s.i)
.class public Ls/i;
.super Ls/e;
.source "HelperWidget.java"

# interfaces
.implements Ls/h;


# instance fields
.field public K0:[Ls/e;

.field public L0:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ls/e;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Ls/e;

    .line 2
    iput-object v0, p0, Ls/i;->K0:[Ls/e;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Ls/i;->L0:I

    return-void
.end method


# virtual methods
.method public a(Ls/e;)V
    .registers 5

    if-eq p1, p0, :cond_23

    if-nez p1, :cond_5

    goto :goto_23

    .line 1
    :cond_5
    iget v0, p0, Ls/i;->L0:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Ls/i;->K0:[Ls/e;

    array-length v2, v1

    if-le v0, v2, :cond_19

    .line 2
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ls/e;

    iput-object v0, p0, Ls/i;->K0:[Ls/e;

    .line 3
    :cond_19
    iget-object v0, p0, Ls/i;->K0:[Ls/e;

    iget v1, p0, Ls/i;->L0:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 4
    iput v1, p0, Ls/i;->L0:I

    :cond_23
    :goto_23
    return-void
.end method

.method public b()V
    .registers 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Ls/i;->L0:I

    .line 2
    iget-object v0, p0, Ls/i;->K0:[Ls/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public c(Ls/f;)V
    .registers 2

    return-void
.end method

.method public o1(Ljava/util/ArrayList;ILt/o;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lt/o;",
            ">;I",
            "Lt/o;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_2
    iget v2, p0, Ls/i;->L0:I

    if-ge v1, v2, :cond_10

    .line 2
    iget-object v2, p0, Ls/i;->K0:[Ls/e;

    aget-object v2, v2, v1

    .line 3
    invoke-virtual {p3, v2}, Lt/o;->a(Ls/e;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4
    :cond_10
    :goto_10
    iget v1, p0, Ls/i;->L0:I

    if-ge v0, v1, :cond_1e

    .line 5
    iget-object v1, p0, Ls/i;->K0:[Ls/e;

    aget-object v1, v1, v0

    .line 6
    invoke-static {v1, p2, p1, p3}, Lt/i;->a(Ls/e;ILjava/util/ArrayList;Lt/o;)Lt/o;

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_1e
    return-void
.end method

.method public p1(I)I
    .registers 6

    const/4 v0, 0x0

    .line 1
    :goto_1
    iget v1, p0, Ls/i;->L0:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_1c

    .line 2
    iget-object v1, p0, Ls/i;->K0:[Ls/e;

    aget-object v1, v1, v0

    if-nez p1, :cond_11

    .line 3
    iget v3, v1, Ls/e;->H0:I

    if-eq v3, v2, :cond_11

    return v3

    :cond_11
    const/4 v3, 0x1

    if-ne p1, v3, :cond_19

    .line 4
    iget v1, v1, Ls/e;->I0:I

    if-eq v1, v2, :cond_19

    return v1

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1c
    return v2
.end method
