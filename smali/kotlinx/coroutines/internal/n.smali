###### Class kotlinx.coroutines.internal.n (kotlinx.coroutines.internal.n)
.class public final Lkotlinx/coroutines/internal/n;
.super Lda/i0;
.source "LimitedDispatcher.kt"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lda/x0;


# instance fields
.field private final q:Lda/i0;

.field private final r:I

.field private volatile runningWorkers:I

.field private final synthetic s:Lda/x0;

.field private final t:Lkotlinx/coroutines/internal/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/internal/s<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lda/i0;I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lda/i0;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/internal/n;->q:Lda/i0;

    .line 3
    iput p2, p0, Lkotlinx/coroutines/internal/n;->r:I

    .line 4
    instance-of p2, p1, Lda/x0;

    if-eqz p2, :cond_e

    check-cast p1, Lda/x0;

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    if-nez p1, :cond_15

    invoke-static {}, Lda/v0;->a()Lda/x0;

    move-result-object p1

    :cond_15
    iput-object p1, p0, Lkotlinx/coroutines/internal/n;->s:Lda/x0;

    .line 5
    new-instance p1, Lkotlinx/coroutines/internal/s;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lkotlinx/coroutines/internal/s;-><init>(Z)V

    iput-object p1, p0, Lkotlinx/coroutines/internal/n;->t:Lkotlinx/coroutines/internal/s;

    .line 6
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/internal/n;->u:Ljava/lang/Object;

    return-void
.end method

.method private final x(Ljava/lang/Runnable;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/n;->t:Lkotlinx/coroutines/internal/s;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/internal/s;->a(Ljava/lang/Object;)Z

    .line 2
    iget p1, p0, Lkotlinx/coroutines/internal/n;->runningWorkers:I

    iget v0, p0, Lkotlinx/coroutines/internal/n;->r:I

    if-lt p1, v0, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    return p1
.end method

.method private final z()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/n;->u:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_3
    iget v1, p0, Lkotlinx/coroutines/internal/n;->runningWorkers:I

    iget v2, p0, Lkotlinx/coroutines/internal/n;->r:I
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_14

    if-lt v1, v2, :cond_c

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 4
    :cond_c
    :try_start_c
    iget v1, p0, Lkotlinx/coroutines/internal/n;->runningWorkers:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lkotlinx/coroutines/internal/n;->runningWorkers:I
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_14

    .line 5
    monitor-exit v0

    return v2

    :catchall_14
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public m(Lk9/g;Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    invoke-direct {p0, p2}, Lkotlinx/coroutines/internal/n;->x(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_11

    .line 2
    invoke-direct {p0}, Lkotlinx/coroutines/internal/n;->z()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 3
    iget-object p1, p0, Lkotlinx/coroutines/internal/n;->q:Lda/i0;

    invoke-virtual {p1, p0, p0}, Lda/i0;->m(Lk9/g;Ljava/lang/Runnable;)V

    :cond_11
    return-void
.end method

.method public run()V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x0

    .line 1
    :cond_2
    iget-object v2, p0, Lkotlinx/coroutines/internal/n;->t:Lkotlinx/coroutines/internal/s;

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/s;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    if-eqz v2, :cond_2a

    .line 2
    :try_start_c
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_10

    goto :goto_16

    :catchall_10
    move-exception v2

    .line 3
    sget-object v3, Lk9/h;->o:Lk9/h;

    invoke-static {v3, v2}, Lda/l0;->a(Lk9/g;Ljava/lang/Throwable;)V

    :goto_16
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x10

    if-lt v1, v2, :cond_2

    .line 4
    iget-object v2, p0, Lkotlinx/coroutines/internal/n;->q:Lda/i0;

    invoke-virtual {v2, p0}, Lda/i0;->o(Lk9/g;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    iget-object v0, p0, Lkotlinx/coroutines/internal/n;->q:Lda/i0;

    invoke-virtual {v0, p0, p0}, Lda/i0;->m(Lk9/g;Ljava/lang/Runnable;)V

    return-void

    .line 6
    :cond_2a
    iget-object v1, p0, Lkotlinx/coroutines/internal/n;->u:Ljava/lang/Object;

    .line 7
    monitor-enter v1

    .line 8
    :try_start_2d
    iget v2, p0, Lkotlinx/coroutines/internal/n;->runningWorkers:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lkotlinx/coroutines/internal/n;->runningWorkers:I

    .line 9
    iget-object v2, p0, Lkotlinx/coroutines/internal/n;->t:Lkotlinx/coroutines/internal/s;

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/s;->c()I

    move-result v2
    :try_end_39
    .catchall {:try_start_2d .. :try_end_39} :catchall_47

    if-nez v2, :cond_3d

    monitor-exit v1

    return-void

    .line 10
    :cond_3d
    :try_start_3d
    iget v2, p0, Lkotlinx/coroutines/internal/n;->runningWorkers:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lkotlinx/coroutines/internal/n;->runningWorkers:I

    .line 11
    sget-object v2, Lh9/t;->a:Lh9/t;
    :try_end_45
    .catchall {:try_start_3d .. :try_end_45} :catchall_47

    monitor-exit v1

    goto :goto_1

    :catchall_47
    move-exception v0

    monitor-exit v1

    goto :goto_4b

    :goto_4a
    throw v0

    :goto_4b
    goto :goto_4a
.end method
