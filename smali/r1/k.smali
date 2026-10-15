###### Class r1.k (r1.k)
.class public Lr1/k;
.super Ljava/lang/Object;
.source "WorkForegroundRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final u:Ljava/lang/String;


# instance fields
.field final o:Landroidx/work/impl/utils/futures/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/work/impl/utils/futures/c<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field final p:Landroid/content/Context;

.field final q:Lq1/p;

.field final r:Landroidx/work/ListenableWorker;

.field final s:Li1/f;

.field final t:Ls1/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "WorkForegroundRunnable"

    .line 1
    invoke-static {v0}, Li1/j;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lr1/k;->u:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lq1/p;Landroidx/work/ListenableWorker;Li1/f;Ls1/a;)V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LambdaLast"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Landroidx/work/impl/utils/futures/c;->u()Landroidx/work/impl/utils/futures/c;

    move-result-object v0

    iput-object v0, p0, Lr1/k;->o:Landroidx/work/impl/utils/futures/c;

    .line 3
    iput-object p1, p0, Lr1/k;->p:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lr1/k;->q:Lq1/p;

    .line 5
    iput-object p3, p0, Lr1/k;->r:Landroidx/work/ListenableWorker;

    .line 6
    iput-object p4, p0, Lr1/k;->s:Li1/f;

    .line 7
    iput-object p5, p0, Lr1/k;->t:Ls1/a;

    return-void
.end method


# virtual methods
.method public a()La5/a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La5/a<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lr1/k;->o:Landroidx/work/impl/utils/futures/c;

    return-object v0
.end method

.method public run()V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnsafeExperimentalUsageError"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lr1/k;->q:Lq1/p;

    iget-boolean v0, v0, Lq1/p;->q:Z

    if-eqz v0, :cond_2e

    invoke-static {}, Landroidx/core/os/a;->c()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_2e

    .line 2
    :cond_d
    invoke-static {}, Landroidx/work/impl/utils/futures/c;->u()Landroidx/work/impl/utils/futures/c;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lr1/k;->t:Ls1/a;

    invoke-interface {v1}, Ls1/a;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lr1/k$a;

    invoke-direct {v2, p0, v0}, Lr1/k$a;-><init>(Lr1/k;Landroidx/work/impl/utils/futures/c;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 4
    new-instance v1, Lr1/k$b;

    invoke-direct {v1, p0, v0}, Lr1/k$b;-><init>(Lr1/k;Landroidx/work/impl/utils/futures/c;)V

    iget-object v2, p0, Lr1/k;->t:Ls1/a;

    .line 5
    invoke-interface {v2}, Ls1/a;->a()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 6
    invoke-virtual {v0, v1, v2}, Landroidx/work/impl/utils/futures/a;->e(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    .line 7
    :cond_2e
    :goto_2e
    iget-object v0, p0, Lr1/k;->o:Landroidx/work/impl/utils/futures/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/work/impl/utils/futures/c;->q(Ljava/lang/Object;)Z

    return-void
.end method

###### Class r1.k.a (r1.k$a)
.class Lr1/k$a;
.super Ljava/lang/Object;
.source "WorkForegroundRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr1/k;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Landroidx/work/impl/utils/futures/c;

.field final synthetic p:Lr1/k;


# direct methods
.method constructor <init>(Lr1/k;Landroidx/work/impl/utils/futures/c;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lr1/k$a;->p:Lr1/k;

    iput-object p2, p0, Lr1/k$a;->o:Landroidx/work/impl/utils/futures/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lr1/k$a;->o:Landroidx/work/impl/utils/futures/c;

    iget-object v1, p0, Lr1/k$a;->p:Lr1/k;

    iget-object v1, v1, Lr1/k;->r:Landroidx/work/ListenableWorker;

    invoke-virtual {v1}, Landroidx/work/ListenableWorker;->getForegroundInfoAsync()La5/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/work/impl/utils/futures/c;->s(La5/a;)Z

    return-void
.end method

###### Class r1.k.b (r1.k$b)
.class Lr1/k$b;
.super Ljava/lang/Object;
.source "WorkForegroundRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr1/k;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Landroidx/work/impl/utils/futures/c;

.field final synthetic p:Lr1/k;


# direct methods
.method constructor <init>(Lr1/k;Landroidx/work/impl/utils/futures/c;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lr1/k$b;->p:Lr1/k;

    iput-object p2, p0, Lr1/k$b;->o:Landroidx/work/impl/utils/futures/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 1
    :try_start_0
    iget-object v0, p0, Lr1/k$b;->o:Landroidx/work/impl/utils/futures/c;

    invoke-virtual {v0}, Landroidx/work/impl/utils/futures/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li1/e;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_44

    .line 2
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v3

    sget-object v4, Lr1/k;->u:Ljava/lang/String;

    const-string v5, "Updating notification for %s"

    new-array v6, v2, [Ljava/lang/Object;

    iget-object v7, p0, Lr1/k$b;->p:Lr1/k;

    iget-object v7, v7, Lr1/k;->q:Lq1/p;

    iget-object v7, v7, Lq1/p;->c:Ljava/lang/String;

    aput-object v7, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-virtual {v3, v4, v5, v1}, Li1/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 3
    iget-object v1, p0, Lr1/k$b;->p:Lr1/k;

    iget-object v1, v1, Lr1/k;->r:Landroidx/work/ListenableWorker;

    invoke-virtual {v1, v2}, Landroidx/work/ListenableWorker;->setRunInForeground(Z)V

    .line 4
    iget-object v1, p0, Lr1/k$b;->p:Lr1/k;

    iget-object v2, v1, Lr1/k;->o:Landroidx/work/impl/utils/futures/c;

    iget-object v3, v1, Lr1/k;->s:Li1/f;

    iget-object v4, v1, Lr1/k;->p:Landroid/content/Context;

    iget-object v1, v1, Lr1/k;->r:Landroidx/work/ListenableWorker;

    .line 5
    invoke-virtual {v1}, Landroidx/work/ListenableWorker;->getId()Ljava/util/UUID;

    move-result-object v1

    .line 6
    invoke-interface {v3, v4, v1, v0}, Li1/f;->a(Landroid/content/Context;Ljava/util/UUID;Li1/e;)La5/a;

    move-result-object v0

    .line 7
    invoke-virtual {v2, v0}, Landroidx/work/impl/utils/futures/c;->s(La5/a;)Z

    goto :goto_62

    :cond_44
    const-string v0, "Worker was marked important (%s) but did not provide ForegroundInfo"

    new-array v2, v2, [Ljava/lang/Object;

    .line 8
    iget-object v3, p0, Lr1/k$b;->p:Lr1/k;

    iget-object v3, v3, Lr1/k;->q:Lq1/p;

    iget-object v3, v3, Lq1/p;->c:Ljava/lang/String;

    aput-object v3, v2, v1

    .line 9
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 10
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5a
    .catchall {:try_start_0 .. :try_end_5a} :catchall_5a

    :catchall_5a
    move-exception v0

    .line 11
    iget-object v1, p0, Lr1/k$b;->p:Lr1/k;

    iget-object v1, v1, Lr1/k;->o:Landroidx/work/impl/utils/futures/c;

    invoke-virtual {v1, v0}, Landroidx/work/impl/utils/futures/c;->r(Ljava/lang/Throwable;)Z

    :goto_62
    return-void
.end method
