###### Class s.k (s.k)
.class public Ls/k;
.super Ls/i;
.source "VirtualLayout.java"


# instance fields
.field private M0:I

.field private N0:I

.field private O0:I

.field private P0:I

.field private Q0:I

.field private R0:I

.field private S0:I

.field private T0:I

.field private U0:Z

.field private V0:I

.field private W0:I

.field protected X0:Lt/b$a;

.field Y0:Lt/b$b;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ls/i;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ls/k;->M0:I

    .line 3
    iput v0, p0, Ls/k;->N0:I

    .line 4
    iput v0, p0, Ls/k;->O0:I

    .line 5
    iput v0, p0, Ls/k;->P0:I

    .line 6
    iput v0, p0, Ls/k;->Q0:I

    .line 7
    iput v0, p0, Ls/k;->R0:I

    .line 8
    iput v0, p0, Ls/k;->S0:I

    .line 9
    iput v0, p0, Ls/k;->T0:I

    .line 10
    iput-boolean v0, p0, Ls/k;->U0:Z

    .line 11
    iput v0, p0, Ls/k;->V0:I

    .line 12
    iput v0, p0, Ls/k;->W0:I

    .line 13
    new-instance v0, Lt/b$a;

    invoke-direct {v0}, Lt/b$a;-><init>()V

    iput-object v0, p0, Ls/k;->X0:Lt/b$a;

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Ls/k;->Y0:Lt/b$b;

    return-void
.end method


# virtual methods
.method public c(Ls/f;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Ls/k;->q1()V

    return-void
.end method

.method public q1()V
    .registers 4

    const/4 v0, 0x0

    .line 1
    :goto_1
    iget v1, p0, Ls/i;->L0:I

    if-ge v0, v1, :cond_12

    .line 2
    iget-object v1, p0, Ls/i;->K0:[Ls/e;

    aget-object v1, v1, v0

    if-eqz v1, :cond_f

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1, v2}, Ls/e;->R0(Z)V

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    return-void
.end method

.method public r1(Ljava/util/HashSet;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ls/e;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_2
    iget v2, p0, Ls/i;->L0:I

    if-ge v1, v2, :cond_15

    .line 2
    iget-object v2, p0, Ls/i;->K0:[Ls/e;

    aget-object v2, v2, v1

    .line 3
    invoke-virtual {p1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 p1, 0x1

    return p1

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_15
    return v0
.end method

.method public s1()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Ls/k;->U0:Z

    return v0
.end method
