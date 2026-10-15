###### Class t2.e (t2.e)
.class public Lt2/e;
.super Ljava/lang/Object;
.source "RequestFutureTarget.java"

# interfaces
.implements Lt2/a;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt2/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lt2/a<",
        "TR;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final z:Lt2/e$a;


# instance fields
.field private final o:Landroid/os/Handler;

.field private final p:I

.field private final q:I

.field private final r:Z

.field private final s:Lt2/e$a;

.field private t:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private u:Lt2/c;

.field private v:Z

.field private w:Ljava/lang/Exception;

.field private x:Z

.field private y:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lt2/e$a;

    invoke-direct {v0}, Lt2/e$a;-><init>()V

    sput-object v0, Lt2/e;->z:Lt2/e$a;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;II)V
    .registers 10

    .line 1
    sget-object v5, Lt2/e;->z:Lt2/e$a;

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lt2/e;-><init>(Landroid/os/Handler;IIZLt2/e$a;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Handler;IIZLt2/e$a;)V
    .registers 6

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lt2/e;->o:Landroid/os/Handler;

    .line 4
    iput p2, p0, Lt2/e;->p:I

    .line 5
    iput p3, p0, Lt2/e;->q:I

    .line 6
    iput-boolean p4, p0, Lt2/e;->r:Z

    .line 7
    iput-object p5, p0, Lt2/e;->s:Lt2/e$a;

    return-void
.end method

.method private declared-synchronized d(Ljava/lang/Long;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Lt2/e;->r:Z

    if-eqz v0, :cond_8

    .line 2
    invoke-static {}, Lx2/h;->a()V

    .line 3
    :cond_8
    iget-boolean v0, p0, Lt2/e;->v:Z

    if-nez v0, :cond_6b

    .line 4
    iget-boolean v0, p0, Lt2/e;->y:Z

    if-nez v0, :cond_63

    .line 5
    iget-boolean v0, p0, Lt2/e;->x:Z

    if-eqz v0, :cond_18

    .line 6
    iget-object p1, p0, Lt2/e;->t:Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_71

    monitor-exit p0

    return-object p1

    :cond_18
    const-wide/16 v0, 0x0

    if-nez p1, :cond_22

    .line 7
    :try_start_1c
    iget-object p1, p0, Lt2/e;->s:Lt2/e$a;

    invoke-virtual {p1, p0, v0, v1}, Lt2/e$a;->b(Ljava/lang/Object;J)V

    goto :goto_33

    .line 8
    :cond_22
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_33

    .line 9
    iget-object v0, p0, Lt2/e;->s:Lt2/e$a;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Lt2/e$a;->b(Ljava/lang/Object;J)V

    .line 10
    :cond_33
    :goto_33
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result p1

    if-nez p1, :cond_5d

    .line 11
    iget-boolean p1, p0, Lt2/e;->y:Z

    if-nez p1, :cond_55

    .line 12
    iget-boolean p1, p0, Lt2/e;->v:Z

    if-nez p1, :cond_4f

    .line 13
    iget-boolean p1, p0, Lt2/e;->x:Z

    if-eqz p1, :cond_49

    .line 14
    iget-object p1, p0, Lt2/e;->t:Ljava/lang/Object;
    :try_end_47
    .catchall {:try_start_1c .. :try_end_47} :catchall_71

    monitor-exit p0

    return-object p1

    .line 15
    :cond_49
    :try_start_49
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p1

    .line 16
    :cond_4f
    new-instance p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {p1}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw p1

    .line 17
    :cond_55
    new-instance p1, Ljava/util/concurrent/ExecutionException;

    iget-object v0, p0, Lt2/e;->w:Ljava/lang/Exception;

    invoke-direct {p1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 18
    :cond_5d
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1

    .line 19
    :cond_63
    new-instance p1, Ljava/util/concurrent/ExecutionException;

    iget-object v0, p0, Lt2/e;->w:Ljava/lang/Exception;

    invoke-direct {p1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 20
    :cond_6b
    new-instance p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {p1}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw p1
    :try_end_71
    .catchall {:try_start_49 .. :try_end_71} :catchall_71

    :catchall_71
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 1
    iget-object v0, p0, Lt2/e;->o:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public declared-synchronized c(Ljava/lang/Object;Lu2/c;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lu2/c<",
            "-TR;>;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 p2, 0x1

    .line 1
    :try_start_2
    iput-boolean p2, p0, Lt2/e;->x:Z

    .line 2
    iput-object p1, p0, Lt2/e;->t:Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lt2/e;->s:Lt2/e$a;

    invoke-virtual {p1, p0}, Lt2/e$a;->a(Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_d

    .line 4
    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized cancel(Z)Z
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Lt2/e;->v:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1d

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 2
    monitor-exit p0

    return v1

    .line 3
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Lt2/e;->isDone()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1b

    .line 4
    iput-boolean v1, p0, Lt2/e;->v:Z

    if-eqz p1, :cond_16

    .line 5
    invoke-virtual {p0}, Lt2/e;->a()V

    .line 6
    :cond_16
    iget-object p1, p0, Lt2/e;->s:Lt2/e$a;

    invoke-virtual {p1, p0}, Lt2/e$a;->a(Ljava/lang/Object;)V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_1d

    .line 7
    :cond_1b
    monitor-exit p0

    return v0

    :catchall_1d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized g(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    monitor-enter p0

    const/4 p2, 0x1

    .line 1
    :try_start_2
    iput-boolean p2, p0, Lt2/e;->y:Z

    .line 2
    iput-object p1, p0, Lt2/e;->w:Ljava/lang/Exception;

    .line 3
    iget-object p1, p0, Lt2/e;->s:Lt2/e$a;

    invoke-virtual {p1, p0}, Lt2/e$a;->a(Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_d

    .line 4
    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public get()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-direct {p0, v0}, Lt2/e;->d(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_5} :catch_6

    return-object v0

    :catch_6
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 3
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, p1}, Lt2/e;->d(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public h()V
    .registers 1

    return-void
.end method

.method public i(Lv2/h;)V
    .registers 4

    .line 1
    iget v0, p0, Lt2/e;->p:I

    iget v1, p0, Lt2/e;->q:I

    invoke-interface {p1, v0, v1}, Lv2/h;->g(II)V

    return-void
.end method

.method public declared-synchronized isCancelled()Z
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Lt2/e;->v:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDone()Z
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Lt2/e;->v:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lt2/e;->x:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_f

    if-eqz v0, :cond_a

    goto :goto_c

    :cond_a
    const/4 v0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v0, 0x1

    :goto_d
    monitor-exit p0

    return v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public j(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    return-void
.end method

.method public k()Lt2/c;
    .registers 2

    .line 1
    iget-object v0, p0, Lt2/e;->u:Lt2/c;

    return-object v0
.end method

.method public l(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    return-void
.end method

.method public m(Lt2/c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lt2/e;->u:Lt2/c;

    return-void
.end method

.method public onDestroy()V
    .registers 1

    return-void
.end method

.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lt2/e;->u:Lt2/c;

    if-eqz v0, :cond_b

    .line 2
    invoke-interface {v0}, Lt2/c;->clear()V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lt2/e;->cancel(Z)Z

    :cond_b
    return-void
.end method

###### Class t2.e.a (t2.e$a)
.class Lt2/e$a;
.super Ljava/lang/Object;
.source "RequestFutureTarget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method public b(Ljava/lang/Object;J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2, p3}, Ljava/lang/Object;->wait(J)V

    return-void
.end method
