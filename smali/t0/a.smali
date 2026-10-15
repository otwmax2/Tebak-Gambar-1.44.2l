###### Class t0.a (t0.a)
.class public abstract Lt0/a;
.super Lt0/b;
.source "AsyncTaskLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt0/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Lt0/b<",
        "TD;>;"
    }
.end annotation


# instance fields
.field private final j:Ljava/util/concurrent/Executor;

.field volatile k:Lt0/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt0/a<",
            "TD;>.a;"
        }
    .end annotation
.end field

.field volatile l:Lt0/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt0/a<",
            "TD;>.a;"
        }
    .end annotation
.end field

.field m:J

.field n:J

.field o:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    sget-object v0, Lt0/c;->v:Ljava/util/concurrent/Executor;

    invoke-direct {p0, p1, v0}, Lt0/a;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .registers 5

    .line 2
    invoke-direct {p0, p1}, Lt0/b;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, -0x2710

    .line 3
    iput-wide v0, p0, Lt0/a;->n:J

    .line 4
    iput-object p2, p0, Lt0/a;->j:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public abstract A()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation
.end method

.method public B(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    return-void
.end method

.method protected C()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lt0/a;->A()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lt0/b;->g(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lt0/a;->k:Lt0/a$a;

    const-string p4, " waiting="

    if-eqz p2, :cond_20

    .line 3
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mTask="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lt0/a;->k:Lt0/a$a;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lt0/a;->k:Lt0/a$a;

    iget-boolean p2, p2, Lt0/a$a;->z:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 5
    :cond_20
    iget-object p2, p0, Lt0/a;->l:Lt0/a$a;

    if-eqz p2, :cond_3b

    .line 6
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mCancellingTask="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lt0/a;->l:Lt0/a$a;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lt0/a;->l:Lt0/a$a;

    iget-boolean p2, p2, Lt0/a$a;->z:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 8
    :cond_3b
    iget-wide v0, p0, Lt0/a;->m:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_61

    .line 9
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mUpdateThrottle="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10
    iget-wide p1, p0, Lt0/a;->m:J

    invoke-static {p1, p2, p3}, Landroidx/core/util/i;->c(JLjava/io/PrintWriter;)V

    const-string p1, " mLastLoadCompleteTime="

    .line 11
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 12
    iget-wide p1, p0, Lt0/a;->n:J

    .line 13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 14
    invoke-static {p1, p2, v0, v1, p3}, Landroidx/core/util/i;->b(JJLjava/io/PrintWriter;)V

    .line 15
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    :cond_61
    return-void
.end method

.method protected k()Z
    .registers 5

    .line 1
    iget-object v0, p0, Lt0/a;->k:Lt0/a$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_4b

    .line 2
    iget-boolean v0, p0, Lt0/b;->e:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lt0/b;->h:Z

    .line 4
    :cond_c
    iget-object v0, p0, Lt0/a;->l:Lt0/a$a;

    const/4 v2, 0x0

    if-eqz v0, :cond_25

    .line 5
    iget-object v0, p0, Lt0/a;->k:Lt0/a$a;

    iget-boolean v0, v0, Lt0/a$a;->z:Z

    if-eqz v0, :cond_22

    .line 6
    iget-object v0, p0, Lt0/a;->k:Lt0/a$a;

    iput-boolean v1, v0, Lt0/a$a;->z:Z

    .line 7
    iget-object v0, p0, Lt0/a;->o:Landroid/os/Handler;

    iget-object v3, p0, Lt0/a;->k:Lt0/a$a;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    :cond_22
    iput-object v2, p0, Lt0/a;->k:Lt0/a$a;

    return v1

    .line 9
    :cond_25
    iget-object v0, p0, Lt0/a;->k:Lt0/a$a;

    iget-boolean v0, v0, Lt0/a$a;->z:Z

    if-eqz v0, :cond_39

    .line 10
    iget-object v0, p0, Lt0/a;->k:Lt0/a$a;

    iput-boolean v1, v0, Lt0/a$a;->z:Z

    .line 11
    iget-object v0, p0, Lt0/a;->o:Landroid/os/Handler;

    iget-object v3, p0, Lt0/a;->k:Lt0/a$a;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    iput-object v2, p0, Lt0/a;->k:Lt0/a$a;

    return v1

    .line 13
    :cond_39
    iget-object v0, p0, Lt0/a;->k:Lt0/a$a;

    invoke-virtual {v0, v1}, Lt0/c;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 14
    iget-object v1, p0, Lt0/a;->k:Lt0/a$a;

    iput-object v1, p0, Lt0/a;->l:Lt0/a$a;

    .line 15
    invoke-virtual {p0}, Lt0/a;->w()V

    .line 16
    :cond_48
    iput-object v2, p0, Lt0/a;->k:Lt0/a$a;

    return v0

    :cond_4b
    return v1
.end method

.method protected m()V
    .registers 2

    .line 1
    invoke-super {p0}, Lt0/b;->m()V

    .line 2
    invoke-virtual {p0}, Lt0/b;->b()Z

    .line 3
    new-instance v0, Lt0/a$a;

    invoke-direct {v0, p0}, Lt0/a$a;-><init>(Lt0/a;)V

    iput-object v0, p0, Lt0/a;->k:Lt0/a$a;

    .line 4
    invoke-virtual {p0}, Lt0/a;->z()V

    return-void
.end method

.method public w()V
    .registers 1

    return-void
.end method

.method x(Lt0/a$a;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt0/a<",
            "TD;>.a;TD;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lt0/a;->B(Ljava/lang/Object;)V

    .line 2
    iget-object p2, p0, Lt0/a;->l:Lt0/a$a;

    if-ne p2, p1, :cond_19

    .line 3
    invoke-virtual {p0}, Lt0/b;->s()V

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lt0/a;->n:J

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lt0/a;->l:Lt0/a$a;

    .line 6
    invoke-virtual {p0}, Lt0/b;->e()V

    .line 7
    invoke-virtual {p0}, Lt0/a;->z()V

    :cond_19
    return-void
.end method

.method y(Lt0/a$a;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt0/a<",
            "TD;>.a;TD;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lt0/a;->k:Lt0/a$a;

    if-eq v0, p1, :cond_8

    .line 2
    invoke-virtual {p0, p1, p2}, Lt0/a;->x(Lt0/a$a;Ljava/lang/Object;)V

    goto :goto_21

    .line 3
    :cond_8
    invoke-virtual {p0}, Lt0/b;->i()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 4
    invoke-virtual {p0, p2}, Lt0/a;->B(Ljava/lang/Object;)V

    goto :goto_21

    .line 5
    :cond_12
    invoke-virtual {p0}, Lt0/b;->c()V

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lt0/a;->n:J

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lt0/a;->k:Lt0/a$a;

    .line 8
    invoke-virtual {p0, p2}, Lt0/b;->f(Ljava/lang/Object;)V

    :goto_21
    return-void
.end method

.method z()V
    .registers 7

    .line 1
    iget-object v0, p0, Lt0/a;->l:Lt0/a$a;

    if-nez v0, :cond_49

    iget-object v0, p0, Lt0/a;->k:Lt0/a$a;

    if-eqz v0, :cond_49

    .line 2
    iget-object v0, p0, Lt0/a;->k:Lt0/a$a;

    iget-boolean v0, v0, Lt0/a$a;->z:Z

    if-eqz v0, :cond_1a

    .line 3
    iget-object v0, p0, Lt0/a;->k:Lt0/a$a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lt0/a$a;->z:Z

    .line 4
    iget-object v0, p0, Lt0/a;->o:Landroid/os/Handler;

    iget-object v1, p0, Lt0/a;->k:Lt0/a$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    :cond_1a
    iget-wide v0, p0, Lt0/a;->m:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_41

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 7
    iget-wide v2, p0, Lt0/a;->n:J

    iget-wide v4, p0, Lt0/a;->m:J

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_41

    .line 8
    iget-object v0, p0, Lt0/a;->k:Lt0/a$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lt0/a$a;->z:Z

    .line 9
    iget-object v0, p0, Lt0/a;->o:Landroid/os/Handler;

    iget-object v1, p0, Lt0/a;->k:Lt0/a$a;

    iget-wide v2, p0, Lt0/a;->n:J

    iget-wide v4, p0, Lt0/a;->m:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void

    .line 10
    :cond_41
    iget-object v0, p0, Lt0/a;->k:Lt0/a$a;

    iget-object v1, p0, Lt0/a;->j:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lt0/c;->c(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lt0/c;

    :cond_49
    return-void
.end method

###### Class t0.a.RunnableC0250a (t0.a$a)
.class final Lt0/a$a;
.super Lt0/c;
.source "AsyncTaskLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt0/c<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TD;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final synthetic A:Lt0/a;

.field private final y:Ljava/util/concurrent/CountDownLatch;

.field z:Z


# direct methods
.method constructor <init>(Lt0/a;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lt0/a$a;->A:Lt0/a;

    invoke-direct {p0}, Lt0/c;-><init>()V

    .line 2
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lt0/a$a;->y:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method protected bridge synthetic b([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lt0/a$a;->n([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected h(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lt0/a$a;->A:Lt0/a;

    invoke-virtual {v0, p0, p1}, Lt0/a;->x(Lt0/a$a;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_b

    .line 2
    iget-object p1, p0, Lt0/a$a;->y:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_b
    move-exception p1

    iget-object v0, p0, Lt0/a$a;->y:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw p1
.end method

.method protected i(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lt0/a$a;->A:Lt0/a;

    invoke-virtual {v0, p0, p1}, Lt0/a;->y(Lt0/a$a;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_b

    .line 2
    iget-object p1, p0, Lt0/a$a;->y:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_b
    move-exception p1

    iget-object v0, p0, Lt0/a$a;->y:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw p1
.end method

.method protected varargs n([Ljava/lang/Void;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")TD;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p1, p0, Lt0/a$a;->A:Lt0/a;

    invoke-virtual {p1}, Lt0/a;->C()Ljava/lang/Object;

    move-result-object p1
    :try_end_6
    .catch Landroidx/core/os/l; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    :catch_7
    move-exception p1

    .line 2
    invoke-virtual {p0}, Lt0/c;->f()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_10
    throw p1
.end method

.method public run()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lt0/a$a;->z:Z

    .line 2
    iget-object v0, p0, Lt0/a$a;->A:Lt0/a;

    invoke-virtual {v0}, Lt0/a;->z()V

    return-void
.end method
