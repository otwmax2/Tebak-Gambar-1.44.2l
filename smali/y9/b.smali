###### Class y9.b (y9.b)
.class public final Ly9/b;
.super Li9/i;
.source "ProgressionIterators.kt"


# instance fields
.field private final o:I

.field private final p:I

.field private q:Z

.field private r:I


# direct methods
.method public constructor <init>(CCI)V
    .registers 6

    .line 1
    invoke-direct {p0}, Li9/i;-><init>()V

    iput p3, p0, Ly9/b;->o:I

    .line 2
    iput p2, p0, Ly9/b;->p:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p3, :cond_12

    .line 3
    invoke-static {p1, p2}, Lt9/m;->f(II)I

    move-result p3

    if-gtz p3, :cond_19

    goto :goto_1a

    :cond_12
    invoke-static {p1, p2}, Lt9/m;->f(II)I

    move-result p3

    if-ltz p3, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    iput-boolean v0, p0, Ly9/b;->q:Z

    if-eqz v0, :cond_1f

    goto :goto_20

    :cond_1f
    move p1, p2

    .line 4
    :goto_20
    iput p1, p0, Ly9/b;->r:I

    return-void
.end method


# virtual methods
.method public a()C
    .registers 3

    .line 1
    iget v0, p0, Ly9/b;->r:I

    .line 2
    iget v1, p0, Ly9/b;->p:I

    if-ne v0, v1, :cond_14

    .line 3
    iget-boolean v1, p0, Ly9/b;->q:Z

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Ly9/b;->q:Z

    goto :goto_19

    .line 5
    :cond_e
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 6
    :cond_14
    iget v1, p0, Ly9/b;->o:I

    add-int/2addr v1, v0

    iput v1, p0, Ly9/b;->r:I

    :goto_19
    int-to-char v0, v0

    return v0
.end method

.method public hasNext()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Ly9/b;->q:Z

    return v0
.end method
