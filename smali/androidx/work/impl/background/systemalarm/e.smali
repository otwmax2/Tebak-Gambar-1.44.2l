###### Class androidx.work.impl.background.systemalarm.e (androidx.work.impl.background.systemalarm.e)
.class public Landroidx/work/impl/background/systemalarm/e;
.super Ljava/lang/Object;
.source "SystemAlarmDispatcher.java"

# interfaces
.implements Lj1/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/background/systemalarm/e$c;,
        Landroidx/work/impl/background/systemalarm/e$b;,
        Landroidx/work/impl/background/systemalarm/e$d;
    }
.end annotation


# static fields
.field static final y:Ljava/lang/String;


# instance fields
.field final o:Landroid/content/Context;

.field private final p:Ls1/a;

.field private final q:Lr1/n;

.field private final r:Lj1/d;

.field private final s:Lj1/i;

.field final t:Landroidx/work/impl/background/systemalarm/b;

.field private final u:Landroid/os/Handler;

.field final v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field w:Landroid/content/Intent;

.field private x:Landroidx/work/impl/background/systemalarm/e$c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "SystemAlarmDispatcher"

    .line 1
    invoke-static {v0}, Li1/j;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/background/systemalarm/e;->y:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v0}, Landroidx/work/impl/background/systemalarm/e;-><init>(Landroid/content/Context;Lj1/d;Lj1/i;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lj1/d;Lj1/i;)V
    .registers 6

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/background/systemalarm/e;->o:Landroid/content/Context;

    .line 4
    new-instance v1, Landroidx/work/impl/background/systemalarm/b;

    invoke-direct {v1, v0}, Landroidx/work/impl/background/systemalarm/b;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/work/impl/background/systemalarm/e;->t:Landroidx/work/impl/background/systemalarm/b;

    .line 5
    new-instance v0, Lr1/n;

    invoke-direct {v0}, Lr1/n;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/background/systemalarm/e;->q:Lr1/n;

    if-eqz p3, :cond_1a

    goto :goto_1e

    .line 6
    :cond_1a
    invoke-static {p1}, Lj1/i;->l(Landroid/content/Context;)Lj1/i;

    move-result-object p3

    :goto_1e
    iput-object p3, p0, Landroidx/work/impl/background/systemalarm/e;->s:Lj1/i;

    if-eqz p2, :cond_23

    goto :goto_27

    .line 7
    :cond_23
    invoke-virtual {p3}, Lj1/i;->n()Lj1/d;

    move-result-object p2

    :goto_27
    iput-object p2, p0, Landroidx/work/impl/background/systemalarm/e;->r:Lj1/d;

    .line 8
    invoke-virtual {p3}, Lj1/i;->q()Ls1/a;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/impl/background/systemalarm/e;->p:Ls1/a;

    .line 9
    invoke-virtual {p2, p0}, Lj1/d;->d(Lj1/b;)V

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/background/systemalarm/e;->v:Ljava/util/List;

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Landroidx/work/impl/background/systemalarm/e;->w:Landroid/content/Intent;

    .line 12
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroidx/work/impl/background/systemalarm/e;->u:Landroid/os/Handler;

    return-void
.end method

.method private b()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e;->u:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_11

    return-void

    .line 2
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Needs to be invoked on the main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private i(Ljava/lang/String;)Z
    .registers 5

    .line 1
    invoke-direct {p0}, Landroidx/work/impl/background/systemalarm/e;->b()V

    .line 2
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e;->v:Ljava/util/List;

    monitor-enter v0

    .line 3
    :try_start_6
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/e;->v:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 4
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 p1, 0x1

    .line 5
    monitor-exit v0

    return p1

    :cond_25
    const/4 p1, 0x0

    .line 6
    monitor-exit v0

    return p1

    :catchall_28
    move-exception p1

    .line 7
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_28

    goto :goto_2c

    :goto_2b
    throw p1

    :goto_2c
    goto :goto_2b
.end method

.method private l()V
    .registers 4

    .line 1
    invoke-direct {p0}, Landroidx/work/impl/background/systemalarm/e;->b()V

    .line 2
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e;->o:Landroid/content/Context;

    const-string v1, "ProcessCommand"

    .line 3
    invoke-static {v0, v1}, Lr1/j;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 4
    :try_start_b
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/e;->s:Lj1/i;

    invoke-virtual {v1}, Lj1/i;->q()Ls1/a;

    move-result-object v1

    new-instance v2, Landroidx/work/impl/background/systemalarm/e$a;

    invoke-direct {v2, p0}, Landroidx/work/impl/background/systemalarm/e$a;-><init>(Landroidx/work/impl/background/systemalarm/e;)V

    invoke-interface {v1, v2}, Ls1/a;->b(Ljava/lang/Runnable;)V
    :try_end_1c
    .catchall {:try_start_b .. :try_end_1c} :catchall_20

    .line 6
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catchall_20
    move-exception v1

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 7
    throw v1
.end method


# virtual methods
.method public a(Landroid/content/Intent;I)Z
    .registers 10

    .line 1
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/background/systemalarm/e;->y:Ljava/lang/String;

    const-string v2, "Adding command %s (%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Li1/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2
    invoke-direct {p0}, Landroidx/work/impl/background/systemalarm/e;->b()V

    .line 3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 5
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object p1

    const-string p2, "Unknown command. Ignoring"

    new-array v0, v4, [Ljava/lang/Throwable;

    invoke-virtual {p1, v1, p2, v0}, Li1/j;->h(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return v4

    :cond_37
    const-string v1, "ACTION_CONSTRAINTS_CHANGED"

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    const-string v0, "ACTION_CONSTRAINTS_CHANGED"

    .line 7
    invoke-direct {p0, v0}, Landroidx/work/impl/background/systemalarm/e;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    return v4

    :cond_48
    const-string v0, "KEY_START_ID"

    .line 8
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 9
    iget-object p2, p0, Landroidx/work/impl/background/systemalarm/e;->v:Ljava/util/List;

    monitor-enter p2

    .line 10
    :try_start_50
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_59

    const/4 v4, 0x1

    .line 11
    :cond_59
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e;->v:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v4, :cond_63

    .line 12
    invoke-direct {p0}, Landroidx/work/impl/background/systemalarm/e;->l()V

    .line 13
    :cond_63
    monitor-exit p2

    return v6

    :catchall_65
    move-exception p1

    monitor-exit p2
    :try_end_67
    .catchall {:try_start_50 .. :try_end_67} :catchall_65

    throw p1
.end method

.method public c(Ljava/lang/String;Z)V
    .registers 5

    .line 1
    new-instance v0, Landroidx/work/impl/background/systemalarm/e$b;

    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/e;->o:Landroid/content/Context;

    .line 2
    invoke-static {v1, p1, p2}, Landroidx/work/impl/background/systemalarm/b;->d(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {v0, p0, p1, p2}, Landroidx/work/impl/background/systemalarm/e$b;-><init>(Landroidx/work/impl/background/systemalarm/e;Landroid/content/Intent;I)V

    .line 3
    invoke-virtual {p0, v0}, Landroidx/work/impl/background/systemalarm/e;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method d()V
    .registers 8

    .line 1
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/background/systemalarm/e;->y:Ljava/lang/String;

    const-string v2, "Checking if commands are complete."

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v4}, Li1/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2
    invoke-direct {p0}, Landroidx/work/impl/background/systemalarm/e;->b()V

    .line 3
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e;->v:Ljava/util/List;

    monitor-enter v0

    .line 4
    :try_start_14
    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/e;->w:Landroid/content/Intent;

    if-eqz v2, :cond_4a

    .line 5
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v2

    const-string v4, "Removing command %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Landroidx/work/impl/background/systemalarm/e;->w:Landroid/content/Intent;

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Throwable;

    invoke-virtual {v2, v1, v4, v5}, Li1/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 6
    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/e;->v:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    iget-object v4, p0, Landroidx/work/impl/background/systemalarm/e;->w:Landroid/content/Intent;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    const/4 v2, 0x0

    .line 7
    iput-object v2, p0, Landroidx/work/impl/background/systemalarm/e;->w:Landroid/content/Intent;

    goto :goto_4a

    .line 8
    :cond_42
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Dequeue-d command is not the first."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_4a
    :goto_4a
    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/e;->p:Ls1/a;

    invoke-interface {v2}, Ls1/a;->getBackgroundExecutor()Lr1/g;

    move-result-object v2

    .line 10
    iget-object v4, p0, Landroidx/work/impl/background/systemalarm/e;->t:Landroidx/work/impl/background/systemalarm/b;

    invoke-virtual {v4}, Landroidx/work/impl/background/systemalarm/b;->o()Z

    move-result v4

    if-nez v4, :cond_79

    iget-object v4, p0, Landroidx/work/impl/background/systemalarm/e;->v:Ljava/util/List;

    .line 11
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_79

    .line 12
    invoke-virtual {v2}, Lr1/g;->a()Z

    move-result v2

    if-nez v2, :cond_79

    .line 13
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v2

    const-string v4, "No more commands & intents."

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v2, v1, v4, v3}, Li1/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 14
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/e;->x:Landroidx/work/impl/background/systemalarm/e$c;

    if-eqz v1, :cond_84

    .line 15
    invoke-interface {v1}, Landroidx/work/impl/background/systemalarm/e$c;->a()V

    goto :goto_84

    .line 16
    :cond_79
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/e;->v:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_84

    .line 17
    invoke-direct {p0}, Landroidx/work/impl/background/systemalarm/e;->l()V

    .line 18
    :cond_84
    :goto_84
    monitor-exit v0

    return-void

    :catchall_86
    move-exception v1

    monitor-exit v0
    :try_end_88
    .catchall {:try_start_14 .. :try_end_88} :catchall_86

    throw v1
.end method

.method e()Lj1/d;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e;->r:Lj1/d;

    return-object v0
.end method

.method f()Ls1/a;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e;->p:Ls1/a;

    return-object v0
.end method

.method g()Lj1/i;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e;->s:Lj1/i;

    return-object v0
.end method

.method h()Lr1/n;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e;->q:Lr1/n;

    return-object v0
.end method

.method j()V
    .registers 5

    .line 1
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/background/systemalarm/e;->y:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Throwable;

    const-string v3, "Destroying SystemAlarmDispatcher"

    invoke-virtual {v0, v1, v3, v2}, Li1/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e;->r:Lj1/d;

    invoke-virtual {v0, p0}, Lj1/d;->i(Lj1/b;)V

    .line 3
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e;->q:Lr1/n;

    invoke-virtual {v0}, Lr1/n;->a()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Landroidx/work/impl/background/systemalarm/e;->x:Landroidx/work/impl/background/systemalarm/e$c;

    return-void
.end method

.method k(Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e;->u:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method m(Landroidx/work/impl/background/systemalarm/e$c;)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e;->x:Landroidx/work/impl/background/systemalarm/e$c;

    if-eqz v0, :cond_13

    .line 2
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object p1

    sget-object v0, Landroidx/work/impl/background/systemalarm/e;->y:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Throwable;

    const-string v2, "A completion listener for SystemAlarmDispatcher already exists."

    invoke-virtual {p1, v0, v2, v1}, Li1/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_13
    iput-object p1, p0, Landroidx/work/impl/background/systemalarm/e;->x:Landroidx/work/impl/background/systemalarm/e$c;

    return-void
.end method

###### Class androidx.work.impl.background.systemalarm.e.a (androidx.work.impl.background.systemalarm.e$a)
.class Landroidx/work/impl/background/systemalarm/e$a;
.super Ljava/lang/Object;
.source "SystemAlarmDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/background/systemalarm/e;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Landroidx/work/impl/background/systemalarm/e;


# direct methods
.method constructor <init>(Landroidx/work/impl/background/systemalarm/e;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/work/impl/background/systemalarm/e$a;->o:Landroidx/work/impl/background/systemalarm/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 1
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e$a;->o:Landroidx/work/impl/background/systemalarm/e;

    iget-object v0, v0, Landroidx/work/impl/background/systemalarm/e;->v:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_5
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/e$a;->o:Landroidx/work/impl/background/systemalarm/e;

    iget-object v2, v1, Landroidx/work/impl/background/systemalarm/e;->v:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    iput-object v2, v1, Landroidx/work/impl/background/systemalarm/e;->w:Landroid/content/Intent;

    .line 3
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_fb

    .line 4
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e$a;->o:Landroidx/work/impl/background/systemalarm/e;

    iget-object v0, v0, Landroidx/work/impl/background/systemalarm/e;->w:Landroid/content/Intent;

    if-eqz v0, :cond_fa

    .line 5
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/e$a;->o:Landroidx/work/impl/background/systemalarm/e;

    iget-object v1, v1, Landroidx/work/impl/background/systemalarm/e;->w:Landroid/content/Intent;

    const-string v2, "KEY_START_ID"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 7
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v2

    sget-object v4, Landroidx/work/impl/background/systemalarm/e;->y:Ljava/lang/String;

    const-string v5, "Processing command %s, %s"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    iget-object v8, p0, Landroidx/work/impl/background/systemalarm/e$a;->o:Landroidx/work/impl/background/systemalarm/e;

    iget-object v8, v8, Landroidx/work/impl/background/systemalarm/e;->w:Landroid/content/Intent;

    aput-object v8, v7, v3

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    .line 9
    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v7, v3, [Ljava/lang/Throwable;

    .line 10
    invoke-virtual {v2, v4, v5, v7}, Li1/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 11
    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/e$a;->o:Landroidx/work/impl/background/systemalarm/e;

    iget-object v2, v2, Landroidx/work/impl/background/systemalarm/e;->o:Landroid/content/Context;

    const-string v5, "%s (%s)"

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v0, v7, v3

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 13
    invoke-static {v2, v5}, Lr1/j;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    .line 14
    :try_start_60
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v5

    const-string v7, "Acquiring operation wake lock (%s) %s"

    new-array v8, v6, [Ljava/lang/Object;

    aput-object v0, v8, v3

    aput-object v2, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/Throwable;

    invoke-virtual {v5, v4, v7, v8}, Li1/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 15
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 16
    iget-object v5, p0, Landroidx/work/impl/background/systemalarm/e$a;->o:Landroidx/work/impl/background/systemalarm/e;

    iget-object v7, v5, Landroidx/work/impl/background/systemalarm/e;->t:Landroidx/work/impl/background/systemalarm/b;

    iget-object v8, v5, Landroidx/work/impl/background/systemalarm/e;->w:Landroid/content/Intent;

    invoke-virtual {v7, v8, v1, v5}, Landroidx/work/impl/background/systemalarm/b;->p(Landroid/content/Intent;ILandroidx/work/impl/background/systemalarm/e;)V
    :try_end_81
    .catchall {:try_start_60 .. :try_end_81} :catchall_a1

    .line 17
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v1

    const-string v5, "Releasing operation wake lock (%s) %s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v3

    aput-object v2, v6, v9

    .line 18
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Throwable;

    .line 19
    invoke-virtual {v1, v4, v0, v3}, Li1/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 20
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 21
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e$a;->o:Landroidx/work/impl/background/systemalarm/e;

    new-instance v1, Landroidx/work/impl/background/systemalarm/e$d;

    invoke-direct {v1, v0}, Landroidx/work/impl/background/systemalarm/e$d;-><init>(Landroidx/work/impl/background/systemalarm/e;)V

    goto :goto_d0

    :catchall_a1
    move-exception v1

    .line 22
    :try_start_a2
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v4

    sget-object v5, Landroidx/work/impl/background/systemalarm/e;->y:Ljava/lang/String;

    const-string v7, "Unexpected error in onHandleIntent"

    new-array v8, v9, [Ljava/lang/Throwable;

    aput-object v1, v8, v3

    invoke-virtual {v4, v5, v7, v8}, Li1/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_b1
    .catchall {:try_start_a2 .. :try_end_b1} :catchall_d4

    .line 23
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v1

    const-string v4, "Releasing operation wake lock (%s) %s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v3

    aput-object v2, v6, v9

    .line 24
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Throwable;

    .line 25
    invoke-virtual {v1, v5, v0, v3}, Li1/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 26
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 27
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e$a;->o:Landroidx/work/impl/background/systemalarm/e;

    new-instance v1, Landroidx/work/impl/background/systemalarm/e$d;

    invoke-direct {v1, v0}, Landroidx/work/impl/background/systemalarm/e$d;-><init>(Landroidx/work/impl/background/systemalarm/e;)V

    :goto_d0
    invoke-virtual {v0, v1}, Landroidx/work/impl/background/systemalarm/e;->k(Ljava/lang/Runnable;)V

    goto :goto_fa

    :catchall_d4
    move-exception v1

    .line 28
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v4

    sget-object v5, Landroidx/work/impl/background/systemalarm/e;->y:Ljava/lang/String;

    const-string v7, "Releasing operation wake lock (%s) %s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v3

    aput-object v2, v6, v9

    .line 29
    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Throwable;

    .line 30
    invoke-virtual {v4, v5, v0, v3}, Li1/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 31
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 32
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e$a;->o:Landroidx/work/impl/background/systemalarm/e;

    new-instance v2, Landroidx/work/impl/background/systemalarm/e$d;

    invoke-direct {v2, v0}, Landroidx/work/impl/background/systemalarm/e$d;-><init>(Landroidx/work/impl/background/systemalarm/e;)V

    invoke-virtual {v0, v2}, Landroidx/work/impl/background/systemalarm/e;->k(Ljava/lang/Runnable;)V

    .line 33
    throw v1

    :cond_fa
    :goto_fa
    return-void

    :catchall_fb
    move-exception v1

    .line 34
    :try_start_fc
    monitor-exit v0
    :try_end_fd
    .catchall {:try_start_fc .. :try_end_fd} :catchall_fb

    throw v1
.end method

###### Class androidx.work.impl.background.systemalarm.e.b (androidx.work.impl.background.systemalarm.e$b)
.class Landroidx/work/impl/background/systemalarm/e$b;
.super Ljava/lang/Object;
.source "SystemAlarmDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/background/systemalarm/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final o:Landroidx/work/impl/background/systemalarm/e;

.field private final p:Landroid/content/Intent;

.field private final q:I


# direct methods
.method constructor <init>(Landroidx/work/impl/background/systemalarm/e;Landroid/content/Intent;I)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/work/impl/background/systemalarm/e$b;->o:Landroidx/work/impl/background/systemalarm/e;

    .line 3
    iput-object p2, p0, Landroidx/work/impl/background/systemalarm/e$b;->p:Landroid/content/Intent;

    .line 4
    iput p3, p0, Landroidx/work/impl/background/systemalarm/e$b;->q:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e$b;->o:Landroidx/work/impl/background/systemalarm/e;

    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/e$b;->p:Landroid/content/Intent;

    iget v2, p0, Landroidx/work/impl/background/systemalarm/e$b;->q:I

    invoke-virtual {v0, v1, v2}, Landroidx/work/impl/background/systemalarm/e;->a(Landroid/content/Intent;I)Z

    return-void
.end method

###### Class androidx.work.impl.background.systemalarm.e.c (androidx.work.impl.background.systemalarm.e$c)
.class interface abstract Landroidx/work/impl/background/systemalarm/e$c;
.super Ljava/lang/Object;
.source "SystemAlarmDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/background/systemalarm/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "c"
.end annotation


# virtual methods
.method public abstract a()V
.end method

###### Class androidx.work.impl.background.systemalarm.e.d (androidx.work.impl.background.systemalarm.e$d)
.class Landroidx/work/impl/background/systemalarm/e$d;
.super Ljava/lang/Object;
.source "SystemAlarmDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/background/systemalarm/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field private final o:Landroidx/work/impl/background/systemalarm/e;


# direct methods
.method constructor <init>(Landroidx/work/impl/background/systemalarm/e;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/work/impl/background/systemalarm/e$d;->o:Landroidx/work/impl/background/systemalarm/e;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e$d;->o:Landroidx/work/impl/background/systemalarm/e;

    invoke-virtual {v0}, Landroidx/work/impl/background/systemalarm/e;->d()V

    return-void
.end method
