###### Class k1.b (k1.b)
.class public Lk1/b;
.super Ljava/lang/Object;
.source "GreedyScheduler.java"

# interfaces
.implements Lj1/e;
.implements Lm1/c;
.implements Lj1/b;


# static fields
.field private static final w:Ljava/lang/String;


# instance fields
.field private final o:Landroid/content/Context;

.field private final p:Lj1/i;

.field private final q:Lm1/d;

.field private final r:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lq1/p;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lk1/a;

.field private t:Z

.field private final u:Ljava/lang/Object;

.field v:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "GreedyScheduler"

    .line 1
    invoke-static {v0}, Li1/j;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lk1/b;->w:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/a;Ls1/a;Lj1/i;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lk1/b;->r:Ljava/util/Set;

    .line 3
    iput-object p1, p0, Lk1/b;->o:Landroid/content/Context;

    .line 4
    iput-object p4, p0, Lk1/b;->p:Lj1/i;

    .line 5
    new-instance p4, Lm1/d;

    invoke-direct {p4, p1, p3, p0}, Lm1/d;-><init>(Landroid/content/Context;Ls1/a;Lm1/c;)V

    iput-object p4, p0, Lk1/b;->q:Lm1/d;

    .line 6
    new-instance p1, Lk1/a;

    invoke-virtual {p2}, Landroidx/work/a;->k()Li1/q;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lk1/a;-><init>(Lk1/b;Li1/q;)V

    iput-object p1, p0, Lk1/b;->s:Lk1/a;

    .line 7
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk1/b;->u:Ljava/lang/Object;

    return-void
.end method

.method private f()V
    .registers 3

    .line 1
    iget-object v0, p0, Lk1/b;->p:Lj1/i;

    invoke-virtual {v0}, Lj1/i;->j()Landroidx/work/a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lk1/b;->o:Landroid/content/Context;

    invoke-static {v1, v0}, Lr1/f;->b(Landroid/content/Context;Landroidx/work/a;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lk1/b;->v:Ljava/lang/Boolean;

    return-void
.end method

.method private g()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lk1/b;->t:Z

    if-nez v0, :cond_10

    .line 2
    iget-object v0, p0, Lk1/b;->p:Lj1/i;

    invoke-virtual {v0}, Lj1/i;->n()Lj1/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lj1/d;->d(Lj1/b;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lk1/b;->t:Z

    :cond_10
    return-void
.end method

.method private h(Ljava/lang/String;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lk1/b;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lk1/b;->r:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq1/p;

    .line 3
    iget-object v3, v2, Lq1/p;->a:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 4
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v1

    sget-object v3, Lk1/b;->w:Ljava/lang/String;

    const-string v4, "Stopping tracking for %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v4, v6, [Ljava/lang/Throwable;

    invoke-virtual {v1, v3, p1, v4}, Li1/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 5
    iget-object p1, p0, Lk1/b;->r:Ljava/util/Set;

    invoke-interface {p1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, p0, Lk1/b;->q:Lm1/d;

    iget-object v1, p0, Lk1/b;->r:Ljava/util/Set;

    invoke-virtual {p1, v1}, Lm1/d;->d(Ljava/lang/Iterable;)V

    .line 7
    :cond_40
    monitor-exit v0

    return-void

    :catchall_42
    move-exception p1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_42

    goto :goto_46

    :goto_45
    throw p1

    :goto_46
    goto :goto_45
.end method


# virtual methods
.method public a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public b(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v1

    sget-object v2, Lk1/b;->w:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v5, "Constraints not met: Cancelling work ID %s"

    .line 3
    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Throwable;

    .line 4
    invoke-virtual {v1, v2, v3, v4}, Li1/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 5
    iget-object v1, p0, Lk1/b;->p:Lj1/i;

    invoke-virtual {v1, v0}, Lj1/i;->y(Ljava/lang/String;)V

    goto :goto_4

    :cond_2d
    return-void
.end method

.method public c(Ljava/lang/String;Z)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lk1/b;->h(Ljava/lang/String;)V

    return-void
.end method

.method public cancel(Ljava/lang/String;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lk1/b;->v:Ljava/lang/Boolean;

    if-nez v0, :cond_7

    .line 2
    invoke-direct {p0}, Lk1/b;->f()V

    .line 3
    :cond_7
    iget-object v0, p0, Lk1/b;->v:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1e

    .line 4
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object p1

    sget-object v0, Lk1/b;->w:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Throwable;

    const-string v2, "Ignoring schedule request in non-main process"

    invoke-virtual {p1, v0, v2, v1}, Li1/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void

    .line 5
    :cond_1e
    invoke-direct {p0}, Lk1/b;->g()V

    .line 6
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v0

    sget-object v2, Lk1/b;->w:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    const-string v4, "Cancelling work ID %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v3, v1}, Li1/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 7
    iget-object v0, p0, Lk1/b;->s:Lk1/a;

    if-eqz v0, :cond_3e

    .line 8
    invoke-virtual {v0, p1}, Lk1/a;->b(Ljava/lang/String;)V

    .line 9
    :cond_3e
    iget-object v0, p0, Lk1/b;->p:Lj1/i;

    invoke-virtual {v0, p1}, Lj1/i;->y(Ljava/lang/String;)V

    return-void
.end method

.method public varargs d([Lq1/p;)V
    .registers 15

    .line 1
    iget-object v0, p0, Lk1/b;->v:Ljava/lang/Boolean;

    if-nez v0, :cond_7

    .line 2
    invoke-direct {p0}, Lk1/b;->f()V

    .line 3
    :cond_7
    iget-object v0, p0, Lk1/b;->v:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1e

    .line 4
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object p1

    sget-object v0, Lk1/b;->w:Ljava/lang/String;

    const-string v2, "Ignoring schedule request in a secondary process"

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-virtual {p1, v0, v2, v1}, Li1/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void

    .line 5
    :cond_1e
    invoke-direct {p0}, Lk1/b;->g()V

    .line 6
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 8
    array-length v3, p1

    const/4 v4, 0x0

    :goto_2d
    const/4 v5, 0x1

    if-ge v4, v3, :cond_c4

    aget-object v6, p1, v4

    .line 9
    invoke-virtual {v6}, Lq1/p;->a()J

    move-result-wide v7

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 11
    iget-object v11, v6, Lq1/p;->b:Li1/s$a;

    sget-object v12, Li1/s$a;->o:Li1/s$a;

    if-ne v11, v12, :cond_c0

    cmp-long v11, v9, v7

    if-gez v11, :cond_4d

    .line 12
    iget-object v5, p0, Lk1/b;->s:Lk1/a;

    if-eqz v5, :cond_c0

    .line 13
    invoke-virtual {v5, v6}, Lk1/a;->a(Lq1/p;)V

    goto/16 :goto_c0

    .line 14
    :cond_4d
    invoke-virtual {v6}, Lq1/p;->b()Z

    move-result v7

    if-eqz v7, :cond_a2

    .line 15
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    if-lt v7, v8, :cond_77

    iget-object v8, v6, Lq1/p;->j:Li1/b;

    invoke-virtual {v8}, Li1/b;->h()Z

    move-result v8

    if-eqz v8, :cond_77

    .line 16
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v7

    sget-object v8, Lk1/b;->w:Ljava/lang/String;

    const-string v9, "Ignoring WorkSpec %s, Requires device idle."

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v6, v5, v1

    .line 17
    invoke-static {v9, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Throwable;

    .line 18
    invoke-virtual {v7, v8, v5, v6}, Li1/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_c0

    :cond_77
    const/16 v8, 0x18

    if-lt v7, v8, :cond_99

    .line 19
    iget-object v7, v6, Lq1/p;->j:Li1/b;

    invoke-virtual {v7}, Li1/b;->e()Z

    move-result v7

    if-eqz v7, :cond_99

    .line 20
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v7

    sget-object v8, Lk1/b;->w:Ljava/lang/String;

    const-string v9, "Ignoring WorkSpec %s, Requires ContentUri triggers."

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v6, v5, v1

    .line 21
    invoke-static {v9, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Throwable;

    .line 22
    invoke-virtual {v7, v8, v5, v6}, Li1/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_c0

    .line 23
    :cond_99
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v5, v6, Lq1/p;->a:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_c0

    .line 25
    :cond_a2
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v7

    sget-object v8, Lk1/b;->w:Ljava/lang/String;

    const-string v9, "Starting work for %s"

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v10, v6, Lq1/p;->a:Ljava/lang/String;

    aput-object v10, v5, v1

    invoke-static {v9, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v9, v1, [Ljava/lang/Throwable;

    invoke-virtual {v7, v8, v5, v9}, Li1/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 26
    iget-object v5, p0, Lk1/b;->p:Lj1/i;

    iget-object v6, v6, Lq1/p;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lj1/i;->v(Ljava/lang/String;)V

    :cond_c0
    :goto_c0
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2d

    .line 27
    :cond_c4
    iget-object p1, p0, Lk1/b;->u:Ljava/lang/Object;

    monitor-enter p1

    .line 28
    :try_start_c7
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f4

    .line 29
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v3

    sget-object v4, Lk1/b;->w:Ljava/lang/String;

    const-string v6, "Starting tracking for [%s]"

    new-array v5, v5, [Ljava/lang/Object;

    const-string v7, ","

    .line 30
    invoke-static {v7, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 31
    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-virtual {v3, v4, v2, v1}, Li1/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 32
    iget-object v1, p0, Lk1/b;->r:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 33
    iget-object v0, p0, Lk1/b;->q:Lm1/d;

    iget-object v1, p0, Lk1/b;->r:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lm1/d;->d(Ljava/lang/Iterable;)V

    .line 34
    :cond_f4
    monitor-exit p1

    return-void

    :catchall_f6
    move-exception v0

    monitor-exit p1
    :try_end_f8
    .catchall {:try_start_c7 .. :try_end_f8} :catchall_f6

    goto :goto_fa

    :goto_f9
    throw v0

    :goto_fa
    goto :goto_f9
.end method

.method public e(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v1

    sget-object v2, Lk1/b;->w:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v5, "Constraints met: Scheduling work ID %s"

    .line 3
    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Throwable;

    .line 4
    invoke-virtual {v1, v2, v3, v4}, Li1/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 5
    iget-object v1, p0, Lk1/b;->p:Lj1/i;

    invoke-virtual {v1, v0}, Lj1/i;->v(Ljava/lang/String;)V

    goto :goto_4

    :cond_2d
    return-void
.end method
