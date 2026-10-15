###### Class w5.e (w5.e)
.class final Lw5/e;
.super Ljava/lang/Object;
.source "ReportQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw5/e$b;
    }
.end annotation


# instance fields
.field private final a:D

.field private final b:D

.field private final c:J

.field private final d:J

.field private final e:I

.field private final f:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final h:Lj3/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj3/f<",
            "Ls5/f0;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lq5/g0;

.field private j:I

.field private k:J


# direct methods
.method constructor <init>(DDJLj3/f;Lq5/g0;)V
    .registers 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ThreadPoolCreation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDJ",
            "Lj3/f<",
            "Ls5/f0;",
            ">;",
            "Lq5/g0;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lw5/e;->a:D

    .line 4
    iput-wide p3, p0, Lw5/e;->b:D

    .line 5
    iput-wide p5, p0, Lw5/e;->c:J

    .line 6
    iput-object p7, p0, Lw5/e;->h:Lj3/f;

    .line 7
    iput-object p8, p0, Lw5/e;->i:Lq5/g0;

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    iput-wide p3, p0, Lw5/e;->d:J

    double-to-int p1, p1

    .line 9
    iput p1, p0, Lw5/e;->e:I

    .line 10
    new-instance p8, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {p8, p1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object p8, p0, Lw5/e;->f:Ljava/util/concurrent/BlockingQueue;

    .line 11
    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object p7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 p3, 0x1

    const/4 p4, 0x1

    const-wide/16 p5, 0x0

    move-object p2, p1

    invoke-direct/range {p2 .. p8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object p1, p0, Lw5/e;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lw5/e;->j:I

    const-wide/16 p1, 0x0

    .line 13
    iput-wide p1, p0, Lw5/e;->k:J

    return-void
.end method

.method constructor <init>(Lj3/f;Lx5/d;Lq5/g0;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj3/f<",
            "Ls5/f0;",
            ">;",
            "Lx5/d;",
            "Lq5/g0;",
            ")V"
        }
    .end annotation

    .line 1
    iget-wide v1, p2, Lx5/d;->f:D

    iget-wide v3, p2, Lx5/d;->g:D

    iget p2, p2, Lx5/d;->h:I

    int-to-long v5, p2

    const-wide/16 v7, 0x3e8

    mul-long v5, v5, v7

    move-object v0, p0

    move-object v7, p1

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lw5/e;-><init>(DDJLj3/f;Lq5/g0;)V

    return-void
.end method

.method public static synthetic a(Lw5/e;Lcom/google/android/gms/tasks/TaskCompletionSource;ZLq5/u;Ljava/lang/Exception;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lw5/e;->n(Lcom/google/android/gms/tasks/TaskCompletionSource;ZLq5/u;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic b(Lw5/e;Ljava/util/concurrent/CountDownLatch;)V
    .registers 2

    invoke-direct {p0, p1}, Lw5/e;->m(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method static synthetic c(Lw5/e;Lq5/u;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lw5/e;->p(Lq5/u;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method

.method static synthetic d(Lw5/e;)Lq5/g0;
    .registers 1

    .line 1
    iget-object p0, p0, Lw5/e;->i:Lq5/g0;

    return-object p0
.end method

.method static synthetic e(Lw5/e;)D
    .registers 3

    .line 1
    invoke-direct {p0}, Lw5/e;->g()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic f(D)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lw5/e;->q(D)V

    return-void
.end method

.method private g()D
    .registers 7

    .line 1
    iget-wide v0, p0, Lw5/e;->a:D

    const-wide v2, 0x40ed4c0000000000L    # 60000.0

    div-double/2addr v2, v0

    iget-wide v0, p0, Lw5/e;->b:D

    invoke-direct {p0}, Lw5/e;->h()I

    move-result v4

    int-to-double v4, v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double v2, v2, v0

    const-wide v0, 0x414b774000000000L    # 3600000.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method private h()I
    .registers 6

    .line 1
    iget-wide v0, p0, Lw5/e;->k:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_e

    .line 2
    invoke-direct {p0}, Lw5/e;->o()J

    move-result-wide v0

    iput-wide v0, p0, Lw5/e;->k:J

    .line 3
    :cond_e
    invoke-direct {p0}, Lw5/e;->o()J

    move-result-wide v0

    iget-wide v2, p0, Lw5/e;->k:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lw5/e;->c:J

    div-long/2addr v0, v2

    long-to-int v1, v0

    .line 4
    invoke-direct {p0}, Lw5/e;->l()Z

    move-result v0

    if-eqz v0, :cond_29

    const/16 v0, 0x64

    .line 5
    iget v2, p0, Lw5/e;->j:I

    add-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_31

    :cond_29
    const/4 v0, 0x0

    .line 6
    iget v2, p0, Lw5/e;->j:I

    sub-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7
    :goto_31
    iget v1, p0, Lw5/e;->j:I

    if-eq v1, v0, :cond_3d

    .line 8
    iput v0, p0, Lw5/e;->j:I

    .line 9
    invoke-direct {p0}, Lw5/e;->o()J

    move-result-wide v1

    iput-wide v1, p0, Lw5/e;->k:J

    :cond_3d
    return v0
.end method

.method private k()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lw5/e;->f:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    iget v1, p0, Lw5/e;->e:I

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private l()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lw5/e;->f:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    iget v1, p0, Lw5/e;->e:I

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private synthetic m(Ljava/util/concurrent/CountDownLatch;)V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lw5/e;->h:Lj3/f;

    sget-object v1, Lj3/d;->q:Lj3/d;

    invoke-static {v0, v1}, Ll3/l;->a(Lj3/f;Lj3/d;)V
    :try_end_7
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_7} :catch_7

    .line 2
    :catch_7
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private synthetic n(Lcom/google/android/gms/tasks/TaskCompletionSource;ZLq5/u;Ljava/lang/Exception;)V
    .registers 5

    if-eqz p4, :cond_6

    .line 1
    invoke-virtual {p1, p4}, Lcom/google/android/gms/tasks/TaskCompletionSource;->d(Ljava/lang/Exception;)Z

    return-void

    :cond_6
    if-eqz p2, :cond_b

    .line 2
    invoke-virtual {p0}, Lw5/e;->j()V

    .line 3
    :cond_b
    invoke-virtual {p1, p3}, Lcom/google/android/gms/tasks/TaskCompletionSource;->e(Ljava/lang/Object;)Z

    return-void
.end method

.method private o()J
    .registers 3

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private p(Lq5/u;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/u;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lq5/u;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending report through Google DataTransport: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p1}, Lq5/u;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln5/g;->b(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lw5/e;->d:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v4, v0, v2

    if-gez v4, :cond_2b

    const/4 v0, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    .line 4
    :goto_2c
    iget-object v1, p0, Lw5/e;->h:Lj3/f;

    .line 5
    invoke-virtual {p1}, Lq5/u;->b()Ls5/f0;

    move-result-object v2

    invoke-static {v2}, Lj3/c;->f(Ljava/lang/Object;)Lj3/c;

    move-result-object v2

    new-instance v3, Lw5/c;

    invoke-direct {v3, p0, p2, v0, p1}, Lw5/c;-><init>(Lw5/e;Lcom/google/android/gms/tasks/TaskCompletionSource;ZLq5/u;)V

    .line 6
    invoke-interface {v1, v2, v3}, Lj3/f;->a(Lj3/c;Lj3/h;)V

    return-void
.end method

.method private static q(D)V
    .registers 2

    double-to-long p0, p0

    .line 1
    :try_start_1
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method


# virtual methods
.method i(Lq5/u;Z)Lcom/google/android/gms/tasks/TaskCompletionSource;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/u;",
            "Z)",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lq5/u;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lw5/e;->f:Ljava/util/concurrent/BlockingQueue;

    monitor-enter v0

    .line 2
    :try_start_3
    new-instance v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    if-eqz p2, :cond_a4

    .line 3
    iget-object p2, p0, Lw5/e;->i:Lq5/g0;

    invoke-virtual {p2}, Lq5/g0;->b()V

    .line 4
    invoke-direct {p0}, Lw5/e;->k()Z

    move-result p2

    if-eqz p2, :cond_7b

    .line 5
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enqueueing report: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lq5/u;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ln5/g;->b(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Queue size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lw5/e;->f:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ln5/g;->b(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lw5/e;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lw5/e$b;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v1, v3}, Lw5/e$b;-><init>(Lw5/e;Lq5/u;Lcom/google/android/gms/tasks/TaskCompletionSource;Lw5/e$a;)V

    invoke-virtual {p2, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 8
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Closing task for report: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lq5/u;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ln5/g;->b(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->e(Ljava/lang/Object;)Z

    .line 10
    monitor-exit v0

    return-object v1

    .line 11
    :cond_7b
    invoke-direct {p0}, Lw5/e;->h()I

    .line 12
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dropping report due to queue being full: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {p1}, Lq5/u;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ln5/g;->b(Ljava/lang/String;)V

    .line 14
    iget-object p2, p0, Lw5/e;->i:Lq5/g0;

    invoke-virtual {p2}, Lq5/g0;->a()V

    .line 15
    invoke-virtual {v1, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->e(Ljava/lang/Object;)Z

    .line 16
    monitor-exit v0

    return-object v1

    .line 17
    :cond_a4
    invoke-direct {p0, p1, v1}, Lw5/e;->p(Lq5/u;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 18
    monitor-exit v0

    return-object v1

    :catchall_a9
    move-exception p1

    .line 19
    monitor-exit v0
    :try_end_ab
    .catchall {:try_start_3 .. :try_end_ab} :catchall_a9

    throw p1
.end method

.method public j()V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DiscouragedApi",
            "ThreadPoolCreation"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 2
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lw5/d;

    invoke-direct {v2, p0, v0}, Lw5/d;-><init>(Lw5/e;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 4
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    invoke-static {v0, v2, v3, v1}, Lq5/q0;->g(Ljava/util/concurrent/CountDownLatch;JLjava/util/concurrent/TimeUnit;)Z

    return-void
.end method

###### Class w5.e.a (w5.e$a)
.class synthetic Lw5/e$a;
.super Ljava/lang/Object;
.source "ReportQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw5/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class w5.e.b (w5.e$b)
.class final Lw5/e$b;
.super Ljava/lang/Object;
.source "ReportQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw5/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field private final o:Lq5/u;

.field private final p:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lq5/u;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic q:Lw5/e;


# direct methods
.method private constructor <init>(Lw5/e;Lq5/u;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/u;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lq5/u;",
            ">;)V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lw5/e$b;->q:Lw5/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lw5/e$b;->o:Lq5/u;

    .line 4
    iput-object p3, p0, Lw5/e$b;->p:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method

.method synthetic constructor <init>(Lw5/e;Lq5/u;Lcom/google/android/gms/tasks/TaskCompletionSource;Lw5/e$a;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lw5/e$b;-><init>(Lw5/e;Lq5/u;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 1
    iget-object v0, p0, Lw5/e$b;->q:Lw5/e;

    iget-object v1, p0, Lw5/e$b;->o:Lq5/u;

    iget-object v2, p0, Lw5/e$b;->p:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v0, v1, v2}, Lw5/e;->c(Lw5/e;Lq5/u;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 2
    iget-object v0, p0, Lw5/e$b;->q:Lw5/e;

    invoke-static {v0}, Lw5/e;->d(Lw5/e;)Lq5/g0;

    move-result-object v0

    invoke-virtual {v0}, Lq5/g0;->c()V

    .line 3
    iget-object v0, p0, Lw5/e$b;->q:Lw5/e;

    invoke-static {v0}, Lw5/e;->e(Lw5/e;)D

    move-result-wide v0

    .line 4
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delay for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double v6, v0, v6

    .line 5
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "%.2f"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " s for report: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lw5/e$b;->o:Lq5/u;

    .line 6
    invoke-virtual {v4}, Lq5/u;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual {v2, v3}, Ln5/g;->b(Ljava/lang/String;)V

    .line 8
    invoke-static {v0, v1}, Lw5/e;->f(D)V

    return-void
.end method

###### Class w5.c (w5.c)
.class public final synthetic Lw5/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lj3/h;


# instance fields
.field public final synthetic a:Lw5/e;

.field public final synthetic b:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field public final synthetic c:Z

.field public final synthetic d:Lq5/u;


# direct methods
.method public synthetic constructor <init>(Lw5/e;Lcom/google/android/gms/tasks/TaskCompletionSource;ZLq5/u;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw5/c;->a:Lw5/e;

    iput-object p2, p0, Lw5/c;->b:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput-boolean p3, p0, Lw5/c;->c:Z

    iput-object p4, p0, Lw5/c;->d:Lq5/u;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .registers 6

    iget-object v0, p0, Lw5/c;->a:Lw5/e;

    iget-object v1, p0, Lw5/c;->b:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-boolean v2, p0, Lw5/c;->c:Z

    iget-object v3, p0, Lw5/c;->d:Lq5/u;

    invoke-static {v0, v1, v2, v3, p1}, Lw5/e;->a(Lw5/e;Lcom/google/android/gms/tasks/TaskCompletionSource;ZLq5/u;Ljava/lang/Exception;)V

    return-void
.end method

###### Class w5.d (w5.d)
.class public final synthetic Lw5/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lw5/e;

.field public final synthetic p:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lw5/e;Ljava/util/concurrent/CountDownLatch;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw5/d;->o:Lw5/e;

    iput-object p2, p0, Lw5/d;->p:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lw5/d;->o:Lw5/e;

    iget-object v1, p0, Lw5/d;->p:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1}, Lw5/e;->b(Lw5/e;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
