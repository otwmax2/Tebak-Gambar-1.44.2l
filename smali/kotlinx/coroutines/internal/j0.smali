###### Class kotlinx.coroutines.internal.j0 (kotlinx.coroutines.internal.j0)
.class public Lkotlinx/coroutines/internal/j0;
.super Ljava/lang/Object;
.source "ThreadSafeHeap.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lkotlinx/coroutines/internal/k0;",
        ":",
        "Ljava/lang/Comparable<",
        "-TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private volatile synthetic _size:I

.field private a:[Lkotlinx/coroutines/internal/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lkotlinx/coroutines/internal/j0;->_size:I

    return-void
.end method

.method private final f()[Lkotlinx/coroutines/internal/k0;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/j0;->a:[Lkotlinx/coroutines/internal/k0;

    if-nez v0, :cond_a

    const/4 v0, 0x4

    new-array v0, v0, [Lkotlinx/coroutines/internal/k0;

    .line 2
    iput-object v0, p0, Lkotlinx/coroutines/internal/j0;->a:[Lkotlinx/coroutines/internal/k0;

    goto :goto_24

    .line 3
    :cond_a
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/j0;->c()I

    move-result v1

    array-length v2, v0

    if-lt v1, v2, :cond_24

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/j0;->c()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "copyOf(this, newSize)"

    invoke-static {v0, v1}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Lkotlinx/coroutines/internal/k0;

    iput-object v0, p0, Lkotlinx/coroutines/internal/j0;->a:[Lkotlinx/coroutines/internal/k0;

    :cond_24
    :goto_24
    return-object v0
.end method

.method private final j(I)V
    .registers 2

    .line 1
    iput p1, p0, Lkotlinx/coroutines/internal/j0;->_size:I

    return-void
.end method

.method private final k(I)V
    .registers 7

    :goto_0
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/j0;->c()I

    move-result v1

    if-lt v0, v1, :cond_b

    return-void

    .line 2
    :cond_b
    iget-object v1, p0, Lkotlinx/coroutines/internal/j0;->a:[Lkotlinx/coroutines/internal/k0;

    invoke-static {v1}, Lt9/m;->b(Ljava/lang/Object;)V

    add-int/lit8 v2, v0, 0x1

    .line 3
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/j0;->c()I

    move-result v3

    if-ge v2, v3, :cond_2b

    aget-object v3, v1, v2

    invoke-static {v3}, Lt9/m;->b(Ljava/lang/Object;)V

    check-cast v3, Ljava/lang/Comparable;

    aget-object v4, v1, v0

    invoke-static {v4}, Lt9/m;->b(Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_2b

    move v0, v2

    .line 4
    :cond_2b
    aget-object v2, v1, p1

    invoke-static {v2}, Lt9/m;->b(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/Comparable;

    aget-object v1, v1, v0

    invoke-static {v1}, Lt9/m;->b(Ljava/lang/Object;)V

    invoke-interface {v2, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_3e

    return-void

    .line 5
    :cond_3e
    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/internal/j0;->m(II)V

    move p1, v0

    goto :goto_0
.end method

.method private final l(I)V
    .registers 5

    :goto_0
    if-gtz p1, :cond_3

    return-void

    .line 1
    :cond_3
    iget-object v0, p0, Lkotlinx/coroutines/internal/j0;->a:[Lkotlinx/coroutines/internal/k0;

    invoke-static {v0}, Lt9/m;->b(Ljava/lang/Object;)V

    add-int/lit8 v1, p1, -0x1

    .line 2
    div-int/lit8 v1, v1, 0x2

    .line 3
    aget-object v2, v0, v1

    invoke-static {v2}, Lt9/m;->b(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/Comparable;

    aget-object v0, v0, p1

    invoke-static {v0}, Lt9/m;->b(Ljava/lang/Object;)V

    invoke-interface {v2, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_1f

    return-void

    .line 4
    :cond_1f
    invoke-direct {p0, p1, v1}, Lkotlinx/coroutines/internal/j0;->m(II)V

    move p1, v1

    goto :goto_0
.end method

.method private final m(II)V
    .registers 6

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/j0;->a:[Lkotlinx/coroutines/internal/k0;

    invoke-static {v0}, Lt9/m;->b(Ljava/lang/Object;)V

    .line 2
    aget-object v1, v0, p2

    invoke-static {v1}, Lt9/m;->b(Ljava/lang/Object;)V

    .line 3
    aget-object v2, v0, p1

    invoke-static {v2}, Lt9/m;->b(Ljava/lang/Object;)V

    .line 4
    aput-object v1, v0, p1

    .line 5
    aput-object v2, v0, p2

    .line 6
    invoke-interface {v1, p1}, Lkotlinx/coroutines/internal/k0;->g(I)V

    .line 7
    invoke-interface {v2, p2}, Lkotlinx/coroutines/internal/k0;->g(I)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/internal/k0;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lda/s0;->a()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p1}, Lkotlinx/coroutines/internal/k0;->f()Lkotlinx/coroutines/internal/j0;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    if-eqz v0, :cond_12

    goto :goto_18

    :cond_12
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2
    :cond_18
    :goto_18
    invoke-interface {p1, p0}, Lkotlinx/coroutines/internal/k0;->c(Lkotlinx/coroutines/internal/j0;)V

    .line 3
    invoke-direct {p0}, Lkotlinx/coroutines/internal/j0;->f()[Lkotlinx/coroutines/internal/k0;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/j0;->c()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2}, Lkotlinx/coroutines/internal/j0;->j(I)V

    .line 5
    aput-object p1, v0, v1

    .line 6
    invoke-interface {p1, v1}, Lkotlinx/coroutines/internal/k0;->g(I)V

    .line 7
    invoke-direct {p0, v1}, Lkotlinx/coroutines/internal/j0;->l(I)V

    return-void
.end method

.method public final b()Lkotlinx/coroutines/internal/k0;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/j0;->a:[Lkotlinx/coroutines/internal/k0;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0
.end method

.method public final c()I
    .registers 2

    .line 1
    iget v0, p0, Lkotlinx/coroutines/internal/j0;->_size:I

    return v0
.end method

.method public final d()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/j0;->c()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final e()Lkotlinx/coroutines/internal/k0;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/j0;->b()Lkotlinx/coroutines/internal/k0;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final g(Lkotlinx/coroutines/internal/k0;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-interface {p1}, Lkotlinx/coroutines/internal/k0;->f()Lkotlinx/coroutines/internal/j0;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_b

    const/4 v1, 0x0

    goto :goto_24

    .line 3
    :cond_b
    invoke-interface {p1}, Lkotlinx/coroutines/internal/k0;->j()I

    move-result p1

    .line 4
    invoke-static {}, Lda/s0;->a()Z

    move-result v0

    if-eqz v0, :cond_21

    if-ltz p1, :cond_18

    const/4 v2, 0x1

    :cond_18
    if-eqz v2, :cond_1b

    goto :goto_21

    :cond_1b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 5
    :cond_21
    :goto_21
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/internal/j0;->h(I)Lkotlinx/coroutines/internal/k0;
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    .line 6
    :goto_24
    monitor-exit p0

    return v1

    :catchall_26
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final h(I)Lkotlinx/coroutines/internal/k0;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lda/s0;->a()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/j0;->c()I

    move-result v0

    if-lez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_14

    goto :goto_1a

    :cond_14
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2
    :cond_1a
    :goto_1a
    iget-object v0, p0, Lkotlinx/coroutines/internal/j0;->a:[Lkotlinx/coroutines/internal/k0;

    invoke-static {v0}, Lt9/m;->b(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/j0;->c()I

    move-result v3

    const/4 v4, -0x1

    add-int/2addr v3, v4

    invoke-direct {p0, v3}, Lkotlinx/coroutines/internal/j0;->j(I)V

    .line 4
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/j0;->c()I

    move-result v3

    if-ge p1, v3, :cond_57

    .line 5
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/j0;->c()I

    move-result v3

    invoke-direct {p0, p1, v3}, Lkotlinx/coroutines/internal/j0;->m(II)V

    add-int/lit8 v3, p1, -0x1

    .line 6
    div-int/lit8 v3, v3, 0x2

    if-lez p1, :cond_54

    .line 7
    aget-object v5, v0, p1

    invoke-static {v5}, Lt9/m;->b(Ljava/lang/Object;)V

    check-cast v5, Ljava/lang/Comparable;

    aget-object v6, v0, v3

    invoke-static {v6}, Lt9/m;->b(Ljava/lang/Object;)V

    invoke-interface {v5, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_54

    .line 8
    invoke-direct {p0, p1, v3}, Lkotlinx/coroutines/internal/j0;->m(II)V

    .line 9
    invoke-direct {p0, v3}, Lkotlinx/coroutines/internal/j0;->l(I)V

    goto :goto_57

    .line 10
    :cond_54
    invoke-direct {p0, p1}, Lkotlinx/coroutines/internal/j0;->k(I)V

    .line 11
    :cond_57
    :goto_57
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/j0;->c()I

    move-result p1

    aget-object p1, v0, p1

    invoke-static {p1}, Lt9/m;->b(Ljava/lang/Object;)V

    .line 12
    invoke-static {}, Lda/s0;->a()Z

    move-result v3

    if-eqz v3, :cond_76

    invoke-interface {p1}, Lkotlinx/coroutines/internal/k0;->f()Lkotlinx/coroutines/internal/j0;

    move-result-object v3

    if-ne v3, p0, :cond_6d

    const/4 v1, 0x1

    :cond_6d
    if-eqz v1, :cond_70

    goto :goto_76

    :cond_70
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_76
    :goto_76
    const/4 v1, 0x0

    .line 13
    invoke-interface {p1, v1}, Lkotlinx/coroutines/internal/k0;->c(Lkotlinx/coroutines/internal/j0;)V

    .line 14
    invoke-interface {p1, v4}, Lkotlinx/coroutines/internal/k0;->g(I)V

    .line 15
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/j0;->c()I

    move-result v2

    aput-object v1, v0, v2

    return-object p1
.end method

.method public final i()Lkotlinx/coroutines/internal/k0;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/j0;->c()I

    move-result v0

    if-lez v0, :cond_d

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/internal/j0;->h(I)Lkotlinx/coroutines/internal/k0;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_10

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 4
    :goto_e
    monitor-exit p0

    return-object v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method
