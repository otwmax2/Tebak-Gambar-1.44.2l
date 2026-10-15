###### Class j1.j (j1.j)
.class public Lj1/j;
.super Ljava/lang/Object;
.source "WorkerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj1/j$c;
    }
.end annotation


# static fields
.field static final H:Ljava/lang/String;


# instance fields
.field private A:Lq1/b;

.field private B:Lq1/t;

.field private C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private D:Ljava/lang/String;

.field E:Landroidx/work/impl/utils/futures/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/work/impl/utils/futures/c<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field F:La5/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La5/a<",
            "Landroidx/work/ListenableWorker$a;",
            ">;"
        }
    .end annotation
.end field

.field private volatile G:Z

.field o:Landroid/content/Context;

.field private p:Ljava/lang/String;

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lj1/e;",
            ">;"
        }
    .end annotation
.end field

.field private r:Landroidx/work/WorkerParameters$a;

.field s:Lq1/p;

.field t:Landroidx/work/ListenableWorker;

.field u:Ls1/a;

.field v:Landroidx/work/ListenableWorker$a;

.field private w:Landroidx/work/a;

.field private x:Lp1/a;

.field private y:Landroidx/work/impl/WorkDatabase;

.field private z:Lq1/q;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "WorkerWrapper"

    .line 1
    invoke-static {v0}, Li1/j;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lj1/j;->H:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lj1/j$c;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Landroidx/work/ListenableWorker$a;->a()Landroidx/work/ListenableWorker$a;

    move-result-object v0

    iput-object v0, p0, Lj1/j;->v:Landroidx/work/ListenableWorker$a;

    .line 3
    invoke-static {}, Landroidx/work/impl/utils/futures/c;->u()Landroidx/work/impl/utils/futures/c;

    move-result-object v0

    iput-object v0, p0, Lj1/j;->E:Landroidx/work/impl/utils/futures/c;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lj1/j;->F:La5/a;

    .line 5
    iget-object v0, p1, Lj1/j$c;->a:Landroid/content/Context;

    iput-object v0, p0, Lj1/j;->o:Landroid/content/Context;

    .line 6
    iget-object v0, p1, Lj1/j$c;->d:Ls1/a;

    iput-object v0, p0, Lj1/j;->u:Ls1/a;

    .line 7
    iget-object v0, p1, Lj1/j$c;->c:Lp1/a;

    iput-object v0, p0, Lj1/j;->x:Lp1/a;

    .line 8
    iget-object v0, p1, Lj1/j$c;->g:Ljava/lang/String;

    iput-object v0, p0, Lj1/j;->p:Ljava/lang/String;

    .line 9
    iget-object v0, p1, Lj1/j$c;->h:Ljava/util/List;

    iput-object v0, p0, Lj1/j;->q:Ljava/util/List;

    .line 10
    iget-object v0, p1, Lj1/j$c;->i:Landroidx/work/WorkerParameters$a;

    iput-object v0, p0, Lj1/j;->r:Landroidx/work/WorkerParameters$a;

    .line 11
    iget-object v0, p1, Lj1/j$c;->b:Landroidx/work/ListenableWorker;

    iput-object v0, p0, Lj1/j;->t:Landroidx/work/ListenableWorker;

    .line 12
    iget-object v0, p1, Lj1/j$c;->e:Landroidx/work/a;

    iput-object v0, p0, Lj1/j;->w:Landroidx/work/a;

    .line 13
    iget-object p1, p1, Lj1/j$c;->f:Landroidx/work/impl/WorkDatabase;

    iput-object p1, p0, Lj1/j;->y:Landroidx/work/impl/WorkDatabase;

    .line 14
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->L()Lq1/q;

    move-result-object p1

    iput-object p1, p0, Lj1/j;->z:Lq1/q;

    .line 15
    iget-object p1, p0, Lj1/j;->y:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->D()Lq1/b;

    move-result-object p1

    iput-object p1, p0, Lj1/j;->A:Lq1/b;

    .line 16
    iget-object p1, p0, Lj1/j;->y:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->M()Lq1/t;

    move-result-object p1

    iput-object p1, p0, Lj1/j;->B:Lq1/t;

    return-void
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Work [ id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lj1/j;->p:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tags={ "

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v1, :cond_26

    const/4 v1, 0x0

    goto :goto_2b

    :cond_26
    const-string v3, ", "

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :goto_2b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    :cond_2f
    const-string p1, " } ]"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c(Landroidx/work/ListenableWorker$a;)V
    .registers 6

    .line 1
    instance-of v0, p1, Landroidx/work/ListenableWorker$a$c;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2d

    .line 2
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object p1

    sget-object v0, Lj1/j;->H:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lj1/j;->D:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v3, "Worker result SUCCESS for %s"

    .line 3
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Throwable;

    .line 4
    invoke-virtual {p1, v0, v1, v2}, Li1/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 5
    iget-object p1, p0, Lj1/j;->s:Lq1/p;

    invoke-virtual {p1}, Lq1/p;->d()Z

    move-result p1

    if-eqz p1, :cond_29

    .line 6
    invoke-direct {p0}, Lj1/j;->h()V

    goto :goto_72

    .line 7
    :cond_29
    invoke-direct {p0}, Lj1/j;->m()V

    goto :goto_72

    .line 8
    :cond_2d
    instance-of p1, p1, Landroidx/work/ListenableWorker$a$b;

    if-eqz p1, :cond_4c

    .line 9
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object p1

    sget-object v0, Lj1/j;->H:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lj1/j;->D:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v3, "Worker result RETRY for %s"

    .line 10
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Throwable;

    .line 11
    invoke-virtual {p1, v0, v1, v2}, Li1/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 12
    invoke-direct {p0}, Lj1/j;->g()V

    goto :goto_72

    .line 13
    :cond_4c
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object p1

    sget-object v0, Lj1/j;->H:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lj1/j;->D:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v3, "Worker result FAILURE for %s"

    .line 14
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Throwable;

    .line 15
    invoke-virtual {p1, v0, v1, v2}, Li1/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 16
    iget-object p1, p0, Lj1/j;->s:Lq1/p;

    invoke-virtual {p1}, Lq1/p;->d()Z

    move-result p1

    if-eqz p1, :cond_6f

    .line 17
    invoke-direct {p0}, Lj1/j;->h()V

    goto :goto_72

    .line 18
    :cond_6f
    invoke-virtual {p0}, Lj1/j;->l()V

    :goto_72
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .registers 7

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3
    :goto_8
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_35

    .line 4
    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lj1/j;->z:Lq1/q;

    invoke-interface {v1, p1}, Lq1/q;->m(Ljava/lang/String;)Li1/s$a;

    move-result-object v1

    sget-object v2, Li1/s$a;->t:Li1/s$a;

    if-eq v1, v2, :cond_2b

    .line 6
    iget-object v1, p0, Lj1/j;->z:Lq1/q;

    sget-object v2, Li1/s$a;->r:Li1/s$a;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v1, v2, v3}, Lq1/q;->g(Li1/s$a;[Ljava/lang/String;)I

    .line 7
    :cond_2b
    iget-object v1, p0, Lj1/j;->A:Lq1/b;

    invoke-interface {v1, p1}, Lq1/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_8

    :cond_35
    return-void
.end method

.method private g()V
    .registers 7

    .line 1
    iget-object v0, p0, Lj1/j;->y:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/h0;->e()V

    const/4 v0, 0x1

    .line 2
    :try_start_6
    iget-object v1, p0, Lj1/j;->z:Lq1/q;

    sget-object v2, Li1/s$a;->o:Li1/s$a;

    new-array v3, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lj1/j;->p:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lq1/q;->g(Li1/s$a;[Ljava/lang/String;)I

    .line 3
    iget-object v1, p0, Lj1/j;->z:Lq1/q;

    iget-object v2, p0, Lj1/j;->p:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Lq1/q;->s(Ljava/lang/String;J)V

    .line 4
    iget-object v1, p0, Lj1/j;->z:Lq1/q;

    iget-object v2, p0, Lj1/j;->p:Ljava/lang/String;

    const-wide/16 v3, -0x1

    invoke-interface {v1, v2, v3, v4}, Lq1/q;->c(Ljava/lang/String;J)I

    .line 5
    iget-object v1, p0, Lj1/j;->y:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/h0;->A()V
    :try_end_2d
    .catchall {:try_start_6 .. :try_end_2d} :catchall_36

    .line 6
    iget-object v1, p0, Lj1/j;->y:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/h0;->i()V

    .line 7
    invoke-direct {p0, v0}, Lj1/j;->i(Z)V

    return-void

    :catchall_36
    move-exception v1

    .line 8
    iget-object v2, p0, Lj1/j;->y:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Landroidx/room/h0;->i()V

    .line 9
    invoke-direct {p0, v0}, Lj1/j;->i(Z)V

    .line 10
    throw v1
.end method

.method private h()V
    .registers 6

    .line 1
    iget-object v0, p0, Lj1/j;->y:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/h0;->e()V

    const/4 v0, 0x0

    .line 2
    :try_start_6
    iget-object v1, p0, Lj1/j;->z:Lq1/q;

    iget-object v2, p0, Lj1/j;->p:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Lq1/q;->s(Ljava/lang/String;J)V

    .line 3
    iget-object v1, p0, Lj1/j;->z:Lq1/q;

    sget-object v2, Li1/s$a;->o:Li1/s$a;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lj1/j;->p:Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-interface {v1, v2, v3}, Lq1/q;->g(Li1/s$a;[Ljava/lang/String;)I

    .line 4
    iget-object v1, p0, Lj1/j;->z:Lq1/q;

    iget-object v2, p0, Lj1/j;->p:Ljava/lang/String;

    invoke-interface {v1, v2}, Lq1/q;->o(Ljava/lang/String;)I

    .line 5
    iget-object v1, p0, Lj1/j;->z:Lq1/q;

    iget-object v2, p0, Lj1/j;->p:Ljava/lang/String;

    const-wide/16 v3, -0x1

    invoke-interface {v1, v2, v3, v4}, Lq1/q;->c(Ljava/lang/String;J)I

    .line 6
    iget-object v1, p0, Lj1/j;->y:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/h0;->A()V
    :try_end_34
    .catchall {:try_start_6 .. :try_end_34} :catchall_3d

    .line 7
    iget-object v1, p0, Lj1/j;->y:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/h0;->i()V

    .line 8
    invoke-direct {p0, v0}, Lj1/j;->i(Z)V

    return-void

    :catchall_3d
    move-exception v1

    .line 9
    iget-object v2, p0, Lj1/j;->y:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Landroidx/room/h0;->i()V

    .line 10
    invoke-direct {p0, v0}, Lj1/j;->i(Z)V

    .line 11
    throw v1
.end method

.method private i(Z)V
    .registers 7

    .line 1
    iget-object v0, p0, Lj1/j;->y:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/h0;->e()V

    .line 2
    :try_start_5
    iget-object v0, p0, Lj1/j;->y:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->L()Lq1/q;

    move-result-object v0

    invoke-interface {v0}, Lq1/q;->k()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_19

    .line 3
    iget-object v0, p0, Lj1/j;->o:Landroid/content/Context;

    const-class v2, Landroidx/work/impl/background/systemalarm/RescheduleReceiver;

    invoke-static {v0, v2, v1}, Lr1/d;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    :cond_19
    if-eqz p1, :cond_32

    .line 4
    iget-object v0, p0, Lj1/j;->z:Lq1/q;

    sget-object v2, Li1/s$a;->o:Li1/s$a;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lj1/j;->p:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-interface {v0, v2, v3}, Lq1/q;->g(Li1/s$a;[Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lj1/j;->z:Lq1/q;

    iget-object v1, p0, Lj1/j;->p:Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Lq1/q;->c(Ljava/lang/String;J)I

    .line 6
    :cond_32
    iget-object v0, p0, Lj1/j;->s:Lq1/p;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lj1/j;->t:Landroidx/work/ListenableWorker;

    if-eqz v0, :cond_47

    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->isRunInForeground()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 7
    iget-object v0, p0, Lj1/j;->x:Lp1/a;

    iget-object v1, p0, Lj1/j;->p:Ljava/lang/String;

    invoke-interface {v0, v1}, Lp1/a;->a(Ljava/lang/String;)V

    .line 8
    :cond_47
    iget-object v0, p0, Lj1/j;->y:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/h0;->A()V
    :try_end_4c
    .catchall {:try_start_5 .. :try_end_4c} :catchall_5b

    .line 9
    iget-object v0, p0, Lj1/j;->y:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/h0;->i()V

    .line 10
    iget-object v0, p0, Lj1/j;->E:Landroidx/work/impl/utils/futures/c;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/work/impl/utils/futures/c;->q(Ljava/lang/Object;)Z

    return-void

    :catchall_5b
    move-exception p1

    .line 11
    iget-object v0, p0, Lj1/j;->y:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/h0;->i()V

    .line 12
    throw p1
.end method

.method private j()V
    .registers 8

    .line 1
    iget-object v0, p0, Lj1/j;->z:Lq1/q;

    iget-object v1, p0, Lj1/j;->p:Ljava/lang/String;

    invoke-interface {v0, v1}, Lq1/q;->m(Ljava/lang/String;)Li1/s$a;

    move-result-object v0

    .line 2
    sget-object v1, Li1/s$a;->p:Li1/s$a;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_29

    .line 3
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v0

    sget-object v1, Lj1/j;->H:Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lj1/j;->p:Ljava/lang/String;

    aput-object v5, v4, v3

    const-string v5, "Status for %s is RUNNING;not doing any work and rescheduling for later execution"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v4, v3}, Li1/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 4
    invoke-direct {p0, v2}, Lj1/j;->i(Z)V

    goto :goto_46

    .line 5
    :cond_29
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v1

    sget-object v4, Lj1/j;->H:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lj1/j;->p:Ljava/lang/String;

    aput-object v6, v5, v3

    aput-object v0, v5, v2

    const-string v0, "Status for %s is %s; not doing any work"

    .line 6
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Throwable;

    .line 7
    invoke-virtual {v1, v4, v0, v2}, Li1/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 8
    invoke-direct {p0, v3}, Lj1/j;->i(Z)V

    :goto_46
    return-void
.end method

.method private k()V
    .registers 17

    move-object/from16 v1, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lj1/j;->n()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 2
    :cond_9
    iget-object v0, v1, Lj1/j;->y:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/h0;->e()V

    .line 3
    :try_start_e
    iget-object v0, v1, Lj1/j;->z:Lq1/q;

    iget-object v2, v1, Lj1/j;->p:Ljava/lang/String;

    invoke-interface {v0, v2}, Lq1/q;->n(Ljava/lang/String;)Lq1/p;

    move-result-object v0

    iput-object v0, v1, Lj1/j;->s:Lq1/p;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_41

    .line 4
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v0

    sget-object v4, Lj1/j;->H:Ljava/lang/String;

    const-string v5, "Didn\'t find WorkSpec for id %s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v6, v1, Lj1/j;->p:Ljava/lang/String;

    aput-object v6, v2, v3

    .line 5
    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Throwable;

    .line 6
    invoke-virtual {v0, v4, v2, v5}, Li1/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 7
    invoke-direct {v1, v3}, Lj1/j;->i(Z)V

    .line 8
    iget-object v0, v1, Lj1/j;->y:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/h0;->A()V
    :try_end_3b
    .catchall {:try_start_e .. :try_end_3b} :catchall_209

    .line 9
    iget-object v0, v1, Lj1/j;->y:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/h0;->i()V

    return-void

    .line 10
    :cond_41
    :try_start_41
    iget-object v4, v0, Lq1/p;->b:Li1/s$a;

    sget-object v5, Li1/s$a;->o:Li1/s$a;

    if-eq v4, v5, :cond_6e

    .line 11
    invoke-direct/range {p0 .. p0}, Lj1/j;->j()V

    .line 12
    iget-object v0, v1, Lj1/j;->y:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/h0;->A()V

    .line 13
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v0

    sget-object v4, Lj1/j;->H:Ljava/lang/String;

    const-string v5, "%s is not in ENQUEUED state. Nothing more to do."

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v6, v1, Lj1/j;->s:Lq1/p;

    iget-object v6, v6, Lq1/p;->c:Ljava/lang/String;

    aput-object v6, v2, v3

    .line 14
    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Throwable;

    .line 15
    invoke-virtual {v0, v4, v2, v3}, Li1/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_68
    .catchall {:try_start_41 .. :try_end_68} :catchall_209

    .line 16
    iget-object v0, v1, Lj1/j;->y:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/h0;->i()V

    return-void

    .line 17
    :cond_6e
    :try_start_6e
    invoke-virtual {v0}, Lq1/p;->d()Z

    move-result v0

    if-nez v0, :cond_7c

    iget-object v0, v1, Lj1/j;->s:Lq1/p;

    invoke-virtual {v0}, Lq1/p;->c()Z

    move-result v0

    if-eqz v0, :cond_be

    .line 18
    :cond_7c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 19
    iget-object v0, v1, Lj1/j;->s:Lq1/p;

    iget-wide v6, v0, Lq1/p;->n:J

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-nez v10, :cond_8c

    const/4 v6, 0x1

    goto :goto_8d

    :cond_8c
    const/4 v6, 0x0

    :goto_8d
    if-nez v6, :cond_be

    .line 20
    invoke-virtual {v0}, Lq1/p;->a()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gez v0, :cond_be

    .line 21
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v0

    sget-object v4, Lj1/j;->H:Ljava/lang/String;

    const-string v5, "Delaying execution for %s because it is being executed before schedule."

    new-array v6, v2, [Ljava/lang/Object;

    iget-object v7, v1, Lj1/j;->s:Lq1/p;

    iget-object v7, v7, Lq1/p;->c:Ljava/lang/String;

    aput-object v7, v6, v3

    .line 22
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Throwable;

    .line 23
    invoke-virtual {v0, v4, v5, v3}, Li1/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 24
    invoke-direct {v1, v2}, Lj1/j;->i(Z)V

    .line 25
    iget-object v0, v1, Lj1/j;->y:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/h0;->A()V
    :try_end_b8
    .catchall {:try_start_6e .. :try_end_b8} :catchall_209

    .line 26
    iget-object v0, v1, Lj1/j;->y:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/h0;->i()V

    return-void

    .line 27
    :cond_be
    :try_start_be
    iget-object v0, v1, Lj1/j;->y:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/h0;->A()V
    :try_end_c3
    .catchall {:try_start_be .. :try_end_c3} :catchall_209

    .line 28
    iget-object v0, v1, Lj1/j;->y:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/h0;->i()V

    .line 29
    iget-object v0, v1, Lj1/j;->s:Lq1/p;

    invoke-virtual {v0}, Lq1/p;->d()Z

    move-result v0

    if-eqz v0, :cond_d6

    .line 30
    iget-object v0, v1, Lj1/j;->s:Lq1/p;

    iget-object v0, v0, Lq1/p;->e:Landroidx/work/b;

    :goto_d4
    move-object v6, v0

    goto :goto_11f

    .line 31
    :cond_d6
    iget-object v0, v1, Lj1/j;->w:Landroidx/work/a;

    invoke-virtual {v0}, Landroidx/work/a;->f()Li1/i;

    move-result-object v0

    .line 32
    iget-object v4, v1, Lj1/j;->s:Lq1/p;

    iget-object v4, v4, Lq1/p;->d:Ljava/lang/String;

    .line 33
    invoke-virtual {v0, v4}, Li1/i;->b(Ljava/lang/String;)Li1/h;

    move-result-object v0

    if-nez v0, :cond_103

    .line 34
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v0

    sget-object v4, Lj1/j;->H:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, v1, Lj1/j;->s:Lq1/p;

    iget-object v5, v5, Lq1/p;->d:Ljava/lang/String;

    aput-object v5, v2, v3

    const-string v5, "Could not create Input Merger %s"

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v4, v2, v3}, Li1/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 35
    invoke-virtual/range {p0 .. p0}, Lj1/j;->l()V

    return-void

    .line 36
    :cond_103
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 37
    iget-object v5, v1, Lj1/j;->s:Lq1/p;

    iget-object v5, v5, Lq1/p;->e:Landroidx/work/b;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v5, v1, Lj1/j;->z:Lq1/q;

    iget-object v6, v1, Lj1/j;->p:Ljava/lang/String;

    invoke-interface {v5, v6}, Lq1/q;->q(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 39
    invoke-virtual {v0, v4}, Li1/h;->b(Ljava/util/List;)Landroidx/work/b;

    move-result-object v0

    goto :goto_d4

    .line 40
    :goto_11f
    new-instance v0, Landroidx/work/WorkerParameters;

    iget-object v4, v1, Lj1/j;->p:Ljava/lang/String;

    .line 41
    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v5

    iget-object v7, v1, Lj1/j;->C:Ljava/util/List;

    iget-object v8, v1, Lj1/j;->r:Landroidx/work/WorkerParameters$a;

    iget-object v4, v1, Lj1/j;->s:Lq1/p;

    iget v9, v4, Lq1/p;->k:I

    iget-object v4, v1, Lj1/j;->w:Landroidx/work/a;

    .line 42
    invoke-virtual {v4}, Landroidx/work/a;->e()Ljava/util/concurrent/Executor;

    move-result-object v10

    iget-object v11, v1, Lj1/j;->u:Ls1/a;

    iget-object v4, v1, Lj1/j;->w:Landroidx/work/a;

    .line 43
    invoke-virtual {v4}, Landroidx/work/a;->m()Li1/v;

    move-result-object v12

    new-instance v13, Lr1/m;

    iget-object v4, v1, Lj1/j;->y:Landroidx/work/impl/WorkDatabase;

    iget-object v14, v1, Lj1/j;->u:Ls1/a;

    invoke-direct {v13, v4, v14}, Lr1/m;-><init>(Landroidx/work/impl/WorkDatabase;Ls1/a;)V

    new-instance v14, Lr1/l;

    iget-object v4, v1, Lj1/j;->y:Landroidx/work/impl/WorkDatabase;

    iget-object v15, v1, Lj1/j;->x:Lp1/a;

    iget-object v3, v1, Lj1/j;->u:Ls1/a;

    invoke-direct {v14, v4, v15, v3}, Lr1/l;-><init>(Landroidx/work/impl/WorkDatabase;Lp1/a;Ls1/a;)V

    move-object v4, v0

    invoke-direct/range {v4 .. v14}, Landroidx/work/WorkerParameters;-><init>(Ljava/util/UUID;Landroidx/work/b;Ljava/util/Collection;Landroidx/work/WorkerParameters$a;ILjava/util/concurrent/Executor;Ls1/a;Li1/v;Li1/o;Li1/f;)V

    .line 44
    iget-object v3, v1, Lj1/j;->t:Landroidx/work/ListenableWorker;

    if-nez v3, :cond_16b

    .line 45
    iget-object v3, v1, Lj1/j;->w:Landroidx/work/a;

    invoke-virtual {v3}, Landroidx/work/a;->m()Li1/v;

    move-result-object v3

    iget-object v4, v1, Lj1/j;->o:Landroid/content/Context;

    iget-object v5, v1, Lj1/j;->s:Lq1/p;

    iget-object v5, v5, Lq1/p;->c:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v0}, Li1/v;->b(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Landroidx/work/ListenableWorker;

    move-result-object v3

    iput-object v3, v1, Lj1/j;->t:Landroidx/work/ListenableWorker;

    .line 46
    :cond_16b
    iget-object v3, v1, Lj1/j;->t:Landroidx/work/ListenableWorker;

    if-nez v3, :cond_18d

    .line 47
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v0

    sget-object v3, Lj1/j;->H:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, v1, Lj1/j;->s:Lq1/p;

    iget-object v4, v4, Lq1/p;->c:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const-string v4, "Could not create Worker %s"

    .line 48
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/Throwable;

    .line 49
    invoke-virtual {v0, v3, v2, v4}, Li1/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 50
    invoke-virtual/range {p0 .. p0}, Lj1/j;->l()V

    return-void

    :cond_18d
    const/4 v5, 0x0

    .line 51
    invoke-virtual {v3}, Landroidx/work/ListenableWorker;->isUsed()Z

    move-result v3

    if-eqz v3, :cond_1b1

    .line 52
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v0

    sget-object v3, Lj1/j;->H:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, v1, Lj1/j;->s:Lq1/p;

    iget-object v4, v4, Lq1/p;->c:Ljava/lang/String;

    aput-object v4, v2, v5

    const-string v4, "Received an already-used Worker %s; WorkerFactory should return new instances"

    .line 53
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/Throwable;

    .line 54
    invoke-virtual {v0, v3, v2, v4}, Li1/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 55
    invoke-virtual/range {p0 .. p0}, Lj1/j;->l()V

    return-void

    .line 56
    :cond_1b1
    iget-object v2, v1, Lj1/j;->t:Landroidx/work/ListenableWorker;

    invoke-virtual {v2}, Landroidx/work/ListenableWorker;->setUsed()V

    .line 57
    invoke-direct/range {p0 .. p0}, Lj1/j;->o()Z

    move-result v2

    if-eqz v2, :cond_205

    .line 58
    invoke-direct/range {p0 .. p0}, Lj1/j;->n()Z

    move-result v2

    if-eqz v2, :cond_1c3

    return-void

    .line 59
    :cond_1c3
    invoke-static {}, Landroidx/work/impl/utils/futures/c;->u()Landroidx/work/impl/utils/futures/c;

    move-result-object v2

    .line 60
    new-instance v9, Lr1/k;

    iget-object v4, v1, Lj1/j;->o:Landroid/content/Context;

    iget-object v5, v1, Lj1/j;->s:Lq1/p;

    iget-object v6, v1, Lj1/j;->t:Landroidx/work/ListenableWorker;

    .line 61
    invoke-virtual {v0}, Landroidx/work/WorkerParameters;->b()Li1/f;

    move-result-object v7

    iget-object v8, v1, Lj1/j;->u:Ls1/a;

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lr1/k;-><init>(Landroid/content/Context;Lq1/p;Landroidx/work/ListenableWorker;Li1/f;Ls1/a;)V

    .line 62
    iget-object v0, v1, Lj1/j;->u:Ls1/a;

    invoke-interface {v0}, Ls1/a;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 63
    invoke-virtual {v9}, Lr1/k;->a()La5/a;

    move-result-object v0

    .line 64
    new-instance v3, Lj1/j$a;

    invoke-direct {v3, v1, v0, v2}, Lj1/j$a;-><init>(Lj1/j;La5/a;Landroidx/work/impl/utils/futures/c;)V

    iget-object v4, v1, Lj1/j;->u:Ls1/a;

    .line 65
    invoke-interface {v4}, Ls1/a;->a()Ljava/util/concurrent/Executor;

    move-result-object v4

    .line 66
    invoke-interface {v0, v3, v4}, La5/a;->e(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 67
    iget-object v0, v1, Lj1/j;->D:Ljava/lang/String;

    .line 68
    new-instance v3, Lj1/j$b;

    invoke-direct {v3, v1, v2, v0}, Lj1/j$b;-><init>(Lj1/j;Landroidx/work/impl/utils/futures/c;Ljava/lang/String;)V

    iget-object v0, v1, Lj1/j;->u:Ls1/a;

    .line 69
    invoke-interface {v0}, Ls1/a;->getBackgroundExecutor()Lr1/g;

    move-result-object v0

    .line 70
    invoke-virtual {v2, v3, v0}, Landroidx/work/impl/utils/futures/a;->e(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_208

    .line 71
    :cond_205
    invoke-direct/range {p0 .. p0}, Lj1/j;->j()V

    :goto_208
    return-void

    :catchall_209
    move-exception v0

    .line 72
    iget-object v2, v1, Lj1/j;->y:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Landroidx/room/h0;->i()V

    .line 73
    goto :goto_211

    :goto_210
    throw v0

    :goto_211
    goto :goto_210
.end method

.method private m()V
    .registers 11

    .line 1
    iget-object v0, p0, Lj1/j;->y:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/h0;->e()V

    const/4 v0, 0x0

    .line 2
    :try_start_6
    iget-object v1, p0, Lj1/j;->z:Lq1/q;

    sget-object v2, Li1/s$a;->q:Li1/s$a;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    iget-object v5, p0, Lj1/j;->p:Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-interface {v1, v2, v4}, Lq1/q;->g(Li1/s$a;[Ljava/lang/String;)I

    .line 3
    iget-object v1, p0, Lj1/j;->v:Landroidx/work/ListenableWorker$a;

    check-cast v1, Landroidx/work/ListenableWorker$a$c;

    .line 4
    invoke-virtual {v1}, Landroidx/work/ListenableWorker$a$c;->e()Landroidx/work/b;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lj1/j;->z:Lq1/q;

    iget-object v4, p0, Lj1/j;->p:Ljava/lang/String;

    invoke-interface {v2, v4, v1}, Lq1/q;->i(Ljava/lang/String;Landroidx/work/b;)V

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 7
    iget-object v4, p0, Lj1/j;->A:Lq1/b;

    iget-object v5, p0, Lj1/j;->p:Ljava/lang/String;

    invoke-interface {v4, v5}, Lq1/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 8
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_33
    :goto_33
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_77

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 9
    iget-object v6, p0, Lj1/j;->z:Lq1/q;

    invoke-interface {v6, v5}, Lq1/q;->m(Ljava/lang/String;)Li1/s$a;

    move-result-object v6

    sget-object v7, Li1/s$a;->s:Li1/s$a;

    if-ne v6, v7, :cond_33

    iget-object v6, p0, Lj1/j;->A:Lq1/b;

    .line 10
    invoke-interface {v6, v5}, Lq1/b;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 11
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v6

    sget-object v7, Lj1/j;->H:Ljava/lang/String;

    const-string v8, "Setting status to enqueued for %s"

    new-array v9, v3, [Ljava/lang/Object;

    aput-object v5, v9, v0

    .line 12
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v0, [Ljava/lang/Throwable;

    .line 13
    invoke-virtual {v6, v7, v8, v9}, Li1/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 14
    iget-object v6, p0, Lj1/j;->z:Lq1/q;

    sget-object v7, Li1/s$a;->o:Li1/s$a;

    new-array v8, v3, [Ljava/lang/String;

    aput-object v5, v8, v0

    invoke-interface {v6, v7, v8}, Lq1/q;->g(Li1/s$a;[Ljava/lang/String;)I

    .line 15
    iget-object v6, p0, Lj1/j;->z:Lq1/q;

    invoke-interface {v6, v5, v1, v2}, Lq1/q;->s(Ljava/lang/String;J)V

    goto :goto_33

    .line 16
    :cond_77
    iget-object v1, p0, Lj1/j;->y:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/h0;->A()V
    :try_end_7c
    .catchall {:try_start_6 .. :try_end_7c} :catchall_85

    .line 17
    iget-object v1, p0, Lj1/j;->y:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/h0;->i()V

    .line 18
    invoke-direct {p0, v0}, Lj1/j;->i(Z)V

    return-void

    :catchall_85
    move-exception v1

    .line 19
    iget-object v2, p0, Lj1/j;->y:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Landroidx/room/h0;->i()V

    .line 20
    invoke-direct {p0, v0}, Lj1/j;->i(Z)V

    .line 21
    goto :goto_90

    :goto_8f
    throw v1

    :goto_90
    goto :goto_8f
.end method

.method private n()Z
    .registers 7

    .line 1
    iget-boolean v0, p0, Lj1/j;->G:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_34

    .line 2
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v0

    sget-object v2, Lj1/j;->H:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lj1/j;->D:Ljava/lang/String;

    aput-object v5, v4, v1

    const-string v5, "Work interrupted for %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v4, v5}, Li1/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 3
    iget-object v0, p0, Lj1/j;->z:Lq1/q;

    iget-object v2, p0, Lj1/j;->p:Ljava/lang/String;

    invoke-interface {v0, v2}, Lq1/q;->m(Ljava/lang/String;)Li1/s$a;

    move-result-object v0

    if-nez v0, :cond_2b

    .line 4
    invoke-direct {p0, v1}, Lj1/j;->i(Z)V

    goto :goto_33

    .line 5
    :cond_2b
    invoke-virtual {v0}, Li1/s$a;->c()Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-direct {p0, v0}, Lj1/j;->i(Z)V

    :goto_33
    return v3

    :cond_34
    return v1
.end method

.method private o()Z
    .registers 7

    .line 1
    iget-object v0, p0, Lj1/j;->y:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/h0;->e()V

    .line 2
    :try_start_5
    iget-object v0, p0, Lj1/j;->z:Lq1/q;

    iget-object v1, p0, Lj1/j;->p:Ljava/lang/String;

    invoke-interface {v0, v1}, Lq1/q;->m(Ljava/lang/String;)Li1/s$a;

    move-result-object v0

    .line 3
    sget-object v1, Li1/s$a;->o:Li1/s$a;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_28

    .line 4
    iget-object v0, p0, Lj1/j;->z:Lq1/q;

    sget-object v1, Li1/s$a;->p:Li1/s$a;

    new-array v4, v2, [Ljava/lang/String;

    iget-object v5, p0, Lj1/j;->p:Ljava/lang/String;

    aput-object v5, v4, v3

    invoke-interface {v0, v1, v4}, Lq1/q;->g(Li1/s$a;[Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lj1/j;->z:Lq1/q;

    iget-object v1, p0, Lj1/j;->p:Ljava/lang/String;

    invoke-interface {v0, v1}, Lq1/q;->r(Ljava/lang/String;)I

    goto :goto_29

    :cond_28
    const/4 v2, 0x0

    .line 6
    :goto_29
    iget-object v0, p0, Lj1/j;->y:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/h0;->A()V
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_34

    .line 7
    iget-object v0, p0, Lj1/j;->y:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/h0;->i()V

    return v2

    :catchall_34
    move-exception v0

    iget-object v1, p0, Lj1/j;->y:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/h0;->i()V

    .line 8
    throw v0
.end method


# virtual methods
.method public b()La5/a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La5/a<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lj1/j;->E:Landroidx/work/impl/utils/futures/c;

    return-object v0
.end method

.method public d()V
    .registers 5

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lj1/j;->G:Z

    .line 2
    invoke-direct {p0}, Lj1/j;->n()Z

    .line 3
    iget-object v1, p0, Lj1/j;->F:La5/a;

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    .line 4
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    .line 5
    iget-object v3, p0, Lj1/j;->F:La5/a;

    invoke-interface {v3, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    .line 6
    :goto_16
    iget-object v3, p0, Lj1/j;->t:Landroidx/work/ListenableWorker;

    if-eqz v3, :cond_20

    if-nez v1, :cond_20

    .line 7
    invoke-virtual {v3}, Landroidx/work/ListenableWorker;->stop()V

    goto :goto_37

    :cond_20
    new-array v0, v0, [Ljava/lang/Object;

    .line 8
    iget-object v1, p0, Lj1/j;->s:Lq1/p;

    aput-object v1, v0, v2

    const-string v1, "WorkSpec %s is already done. Not interrupting."

    .line 9
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v1

    sget-object v3, Lj1/j;->H:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Throwable;

    invoke-virtual {v1, v3, v0, v2}, Li1/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :goto_37
    return-void
.end method

.method f()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lj1/j;->n()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 2
    iget-object v0, p0, Lj1/j;->y:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/h0;->e()V

    .line 3
    :try_start_b
    iget-object v0, p0, Lj1/j;->z:Lq1/q;

    iget-object v1, p0, Lj1/j;->p:Ljava/lang/String;

    invoke-interface {v0, v1}, Lq1/q;->m(Ljava/lang/String;)Li1/s$a;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lj1/j;->y:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->K()Lq1/n;

    move-result-object v1

    iget-object v2, p0, Lj1/j;->p:Ljava/lang/String;

    invoke-interface {v1, v2}, Lq1/n;->a(Ljava/lang/String;)V

    if-nez v0, :cond_25

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Lj1/j;->i(Z)V

    goto :goto_38

    .line 6
    :cond_25
    sget-object v1, Li1/s$a;->p:Li1/s$a;

    if-ne v0, v1, :cond_2f

    .line 7
    iget-object v0, p0, Lj1/j;->v:Landroidx/work/ListenableWorker$a;

    invoke-direct {p0, v0}, Lj1/j;->c(Landroidx/work/ListenableWorker$a;)V

    goto :goto_38

    .line 8
    :cond_2f
    invoke-virtual {v0}, Li1/s$a;->c()Z

    move-result v0

    if-nez v0, :cond_38

    .line 9
    invoke-direct {p0}, Lj1/j;->g()V

    .line 10
    :cond_38
    :goto_38
    iget-object v0, p0, Lj1/j;->y:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/h0;->A()V
    :try_end_3d
    .catchall {:try_start_b .. :try_end_3d} :catchall_43

    .line 11
    iget-object v0, p0, Lj1/j;->y:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/h0;->i()V

    goto :goto_4a

    :catchall_43
    move-exception v0

    iget-object v1, p0, Lj1/j;->y:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/h0;->i()V

    .line 12
    throw v0

    .line 13
    :cond_4a
    :goto_4a
    iget-object v0, p0, Lj1/j;->q:Ljava/util/List;

    if-eqz v0, :cond_6d

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_52
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj1/e;

    .line 15
    iget-object v2, p0, Lj1/j;->p:Ljava/lang/String;

    invoke-interface {v1, v2}, Lj1/e;->cancel(Ljava/lang/String;)V

    goto :goto_52

    .line 16
    :cond_64
    iget-object v0, p0, Lj1/j;->w:Landroidx/work/a;

    iget-object v1, p0, Lj1/j;->y:Landroidx/work/impl/WorkDatabase;

    iget-object v2, p0, Lj1/j;->q:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lj1/f;->b(Landroidx/work/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    :cond_6d
    return-void
.end method

.method l()V
    .registers 5

    .line 1
    iget-object v0, p0, Lj1/j;->y:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/h0;->e()V

    const/4 v0, 0x0

    .line 2
    :try_start_6
    iget-object v1, p0, Lj1/j;->p:Ljava/lang/String;

    invoke-direct {p0, v1}, Lj1/j;->e(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lj1/j;->v:Landroidx/work/ListenableWorker$a;

    check-cast v1, Landroidx/work/ListenableWorker$a$a;

    .line 4
    invoke-virtual {v1}, Landroidx/work/ListenableWorker$a$a;->e()Landroidx/work/b;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lj1/j;->z:Lq1/q;

    iget-object v3, p0, Lj1/j;->p:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lq1/q;->i(Ljava/lang/String;Landroidx/work/b;)V

    .line 6
    iget-object v1, p0, Lj1/j;->y:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/h0;->A()V
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_28

    .line 7
    iget-object v1, p0, Lj1/j;->y:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/h0;->i()V

    .line 8
    invoke-direct {p0, v0}, Lj1/j;->i(Z)V

    return-void

    :catchall_28
    move-exception v1

    .line 9
    iget-object v2, p0, Lj1/j;->y:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Landroidx/room/h0;->i()V

    .line 10
    invoke-direct {p0, v0}, Lj1/j;->i(Z)V

    .line 11
    throw v1
.end method

.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lj1/j;->B:Lq1/t;

    iget-object v1, p0, Lj1/j;->p:Ljava/lang/String;

    invoke-interface {v0, v1}, Lq1/t;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lj1/j;->C:Ljava/util/List;

    .line 2
    invoke-direct {p0, v0}, Lj1/j;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lj1/j;->D:Ljava/lang/String;

    .line 3
    invoke-direct {p0}, Lj1/j;->k()V

    return-void
.end method

###### Class j1.j.a (j1.j$a)
.class Lj1/j$a;
.super Ljava/lang/Object;
.source "WorkerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj1/j;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:La5/a;

.field final synthetic p:Landroidx/work/impl/utils/futures/c;

.field final synthetic q:Lj1/j;


# direct methods
.method constructor <init>(Lj1/j;La5/a;Landroidx/work/impl/utils/futures/c;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lj1/j$a;->q:Lj1/j;

    iput-object p2, p0, Lj1/j$a;->o:La5/a;

    iput-object p3, p0, Lj1/j$a;->p:Landroidx/work/impl/utils/futures/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lj1/j$a;->o:La5/a;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 2
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v0

    sget-object v1, Lj1/j;->H:Ljava/lang/String;

    const-string v2, "Starting work for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lj1/j$a;->q:Lj1/j;

    iget-object v4, v4, Lj1/j;->s:Lq1/p;

    iget-object v4, v4, Lq1/p;->c:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 3
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Throwable;

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Li1/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 5
    iget-object v0, p0, Lj1/j$a;->q:Lj1/j;

    iget-object v1, v0, Lj1/j;->t:Landroidx/work/ListenableWorker;

    invoke-virtual {v1}, Landroidx/work/ListenableWorker;->startWork()La5/a;

    move-result-object v1

    iput-object v1, v0, Lj1/j;->F:La5/a;

    .line 6
    iget-object v0, p0, Lj1/j$a;->p:Landroidx/work/impl/utils/futures/c;

    iget-object v1, p0, Lj1/j$a;->q:Lj1/j;

    iget-object v1, v1, Lj1/j;->F:La5/a;

    invoke-virtual {v0, v1}, Landroidx/work/impl/utils/futures/c;->s(La5/a;)Z
    :try_end_35
    .catchall {:try_start_0 .. :try_end_35} :catchall_36

    goto :goto_3c

    :catchall_36
    move-exception v0

    .line 7
    iget-object v1, p0, Lj1/j$a;->p:Landroidx/work/impl/utils/futures/c;

    invoke-virtual {v1, v0}, Landroidx/work/impl/utils/futures/c;->r(Ljava/lang/Throwable;)Z

    :goto_3c
    return-void
.end method

###### Class j1.j.b (j1.j$b)
.class Lj1/j$b;
.super Ljava/lang/Object;
.source "WorkerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj1/j;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Landroidx/work/impl/utils/futures/c;

.field final synthetic p:Ljava/lang/String;

.field final synthetic q:Lj1/j;


# direct methods
.method constructor <init>(Lj1/j;Landroidx/work/impl/utils/futures/c;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lj1/j$b;->q:Lj1/j;

    iput-object p2, p0, Lj1/j$b;->o:Landroidx/work/impl/utils/futures/c;

    iput-object p3, p0, Lj1/j$b;->p:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    :try_start_2
    iget-object v2, p0, Lj1/j$b;->o:Landroidx/work/impl/utils/futures/c;

    invoke-virtual {v2}, Landroidx/work/impl/utils/futures/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/work/ListenableWorker$a;

    if-nez v2, :cond_28

    .line 2
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v2

    sget-object v3, Lj1/j;->H:Ljava/lang/String;

    const-string v4, "%s returned a null result. Treating it as a failure."

    new-array v5, v0, [Ljava/lang/Object;

    iget-object v6, p0, Lj1/j$b;->q:Lj1/j;

    iget-object v6, v6, Lj1/j;->s:Lq1/p;

    iget-object v6, v6, Lq1/p;->c:Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v4, v5}, Li1/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_84

    .line 3
    :cond_28
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v3

    sget-object v4, Lj1/j;->H:Ljava/lang/String;

    const-string v5, "%s returned a %s result."

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lj1/j$b;->q:Lj1/j;

    iget-object v7, v7, Lj1/j;->s:Lq1/p;

    iget-object v7, v7, Lq1/p;->c:Ljava/lang/String;

    aput-object v7, v6, v1

    aput-object v2, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Throwable;

    invoke-virtual {v3, v4, v5, v6}, Li1/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 4
    iget-object v3, p0, Lj1/j$b;->q:Lj1/j;

    iput-object v2, v3, Lj1/j;->v:Landroidx/work/ListenableWorker$a;
    :try_end_4a
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_4a} :catch_6a
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_4a} :catch_4f
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_4a} :catch_4d
    .catchall {:try_start_2 .. :try_end_4a} :catchall_4b

    goto :goto_84

    :catchall_4b
    move-exception v0

    goto :goto_8a

    :catch_4d
    move-exception v2

    goto :goto_50

    :catch_4f
    move-exception v2

    .line 5
    :goto_50
    :try_start_50
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v3

    sget-object v4, Lj1/j;->H:Ljava/lang/String;

    const-string v5, "%s failed because it threw an exception/error"

    new-array v6, v0, [Ljava/lang/Object;

    iget-object v7, p0, Lj1/j$b;->p:Ljava/lang/String;

    aput-object v7, v6, v1

    .line 6
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v0, v0, [Ljava/lang/Throwable;

    aput-object v2, v0, v1

    .line 7
    invoke-virtual {v3, v4, v5, v0}, Li1/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_84

    :catch_6a
    move-exception v2

    .line 8
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v3

    sget-object v4, Lj1/j;->H:Ljava/lang/String;

    const-string v5, "%s was cancelled"

    new-array v6, v0, [Ljava/lang/Object;

    iget-object v7, p0, Lj1/j$b;->p:Ljava/lang/String;

    aput-object v7, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v0, v0, [Ljava/lang/Throwable;

    aput-object v2, v0, v1

    invoke-virtual {v3, v4, v5, v0}, Li1/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_84
    .catchall {:try_start_50 .. :try_end_84} :catchall_4b

    .line 9
    :goto_84
    iget-object v0, p0, Lj1/j$b;->q:Lj1/j;

    invoke-virtual {v0}, Lj1/j;->f()V

    return-void

    :goto_8a
    iget-object v1, p0, Lj1/j$b;->q:Lj1/j;

    invoke-virtual {v1}, Lj1/j;->f()V

    .line 10
    throw v0
.end method

###### Class j1.j.c (j1.j$c)
.class public Lj1/j$c;
.super Ljava/lang/Object;
.source "WorkerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj1/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Landroidx/work/ListenableWorker;

.field c:Lp1/a;

.field d:Ls1/a;

.field e:Landroidx/work/a;

.field f:Landroidx/work/impl/WorkDatabase;

.field g:Ljava/lang/String;

.field h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lj1/e;",
            ">;"
        }
    .end annotation
.end field

.field i:Landroidx/work/WorkerParameters$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/a;Ls1/a;Lp1/a;Landroidx/work/impl/WorkDatabase;Ljava/lang/String;)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/work/WorkerParameters$a;

    invoke-direct {v0}, Landroidx/work/WorkerParameters$a;-><init>()V

    iput-object v0, p0, Lj1/j$c;->i:Landroidx/work/WorkerParameters$a;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lj1/j$c;->a:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lj1/j$c;->d:Ls1/a;

    .line 5
    iput-object p4, p0, Lj1/j$c;->c:Lp1/a;

    .line 6
    iput-object p2, p0, Lj1/j$c;->e:Landroidx/work/a;

    .line 7
    iput-object p5, p0, Lj1/j$c;->f:Landroidx/work/impl/WorkDatabase;

    .line 8
    iput-object p6, p0, Lj1/j$c;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lj1/j;
    .registers 2

    .line 1
    new-instance v0, Lj1/j;

    invoke-direct {v0, p0}, Lj1/j;-><init>(Lj1/j$c;)V

    return-object v0
.end method

.method public b(Landroidx/work/WorkerParameters$a;)Lj1/j$c;
    .registers 2

    if-eqz p1, :cond_4

    .line 1
    iput-object p1, p0, Lj1/j$c;->i:Landroidx/work/WorkerParameters$a;

    :cond_4
    return-object p0
.end method

.method public c(Ljava/util/List;)Lj1/j$c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lj1/e;",
            ">;)",
            "Lj1/j$c;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lj1/j$c;->h:Ljava/util/List;

    return-object p0
.end method
