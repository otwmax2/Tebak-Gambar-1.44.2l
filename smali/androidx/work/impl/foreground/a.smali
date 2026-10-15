###### Class androidx.work.impl.foreground.a (androidx.work.impl.foreground.a)
.class public Landroidx/work/impl/foreground/a;
.super Ljava/lang/Object;
.source "SystemForegroundDispatcher.java"

# interfaces
.implements Lm1/c;
.implements Lj1/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/foreground/a$b;
    }
.end annotation


# static fields
.field static final y:Ljava/lang/String;


# instance fields
.field private o:Landroid/content/Context;

.field private p:Lj1/i;

.field private final q:Ls1/a;

.field final r:Ljava/lang/Object;

.field s:Ljava/lang/String;

.field final t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Li1/e;",
            ">;"
        }
    .end annotation
.end field

.field final u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lq1/p;",
            ">;"
        }
    .end annotation
.end field

.field final v:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lq1/p;",
            ">;"
        }
    .end annotation
.end field

.field final w:Lm1/d;

.field private x:Landroidx/work/impl/foreground/a$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "SystemFgDispatcher"

    .line 1
    invoke-static {v0}, Li1/j;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/foreground/a;->y:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/work/impl/foreground/a;->o:Landroid/content/Context;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/foreground/a;->r:Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Lj1/i;->l(Landroid/content/Context;)Lj1/i;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/impl/foreground/a;->p:Lj1/i;

    .line 5
    invoke-virtual {p1}, Lj1/i;->q()Ls1/a;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/impl/foreground/a;->q:Ls1/a;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Landroidx/work/impl/foreground/a;->s:Ljava/lang/String;

    .line 7
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/foreground/a;->t:Ljava/util/Map;

    .line 8
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/foreground/a;->v:Ljava/util/Set;

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/foreground/a;->u:Ljava/util/Map;

    .line 10
    new-instance v0, Lm1/d;

    iget-object v1, p0, Landroidx/work/impl/foreground/a;->o:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p0}, Lm1/d;-><init>(Landroid/content/Context;Ls1/a;Lm1/c;)V

    iput-object v0, p0, Landroidx/work/impl/foreground/a;->w:Lm1/d;

    .line 11
    iget-object p1, p0, Landroidx/work/impl/foreground/a;->p:Lj1/i;

    invoke-virtual {p1}, Lj1/i;->n()Lj1/d;

    move-result-object p1

    invoke-virtual {p1, p0}, Lj1/d;->d(Lj1/b;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Li1/e;)Landroid/content/Intent;
    .registers 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroidx/work/impl/foreground/SystemForegroundService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "ACTION_NOTIFY"

    .line 2
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p2}, Li1/e;->c()I

    move-result p0

    const-string v1, "KEY_NOTIFICATION_ID"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    invoke-virtual {p2}, Li1/e;->a()I

    move-result p0

    const-string v1, "KEY_FOREGROUND_SERVICE_TYPE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    invoke-virtual {p2}, Li1/e;->b()Landroid/app/Notification;

    move-result-object p0

    const-string p2, "KEY_NOTIFICATION"

    invoke-virtual {v0, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p0, "KEY_WORKSPEC_ID"

    .line 6
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;Li1/e;)Landroid/content/Intent;
    .registers 6

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroidx/work/impl/foreground/SystemForegroundService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "ACTION_START_FOREGROUND"

    .line 2
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "KEY_WORKSPEC_ID"

    .line 3
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p2}, Li1/e;->c()I

    move-result v1

    const-string v2, "KEY_NOTIFICATION_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    invoke-virtual {p2}, Li1/e;->a()I

    move-result v1

    const-string v2, "KEY_FOREGROUND_SERVICE_TYPE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6
    invoke-virtual {p2}, Li1/e;->b()Landroid/app/Notification;

    move-result-object p2

    const-string v1, "KEY_NOTIFICATION"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 7
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static f(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroidx/work/impl/foreground/SystemForegroundService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "ACTION_STOP_FOREGROUND"

    .line 2
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private g(Landroid/content/Intent;)V
    .registers 7

    .line 1
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/foreground/a;->y:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "Stopping foreground work for %s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Li1/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    const-string v0, "KEY_WORKSPEC_ID"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2e

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 4
    iget-object v0, p0, Landroidx/work/impl/foreground/a;->p:Lj1/i;

    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj1/i;->g(Ljava/util/UUID;)Li1/m;

    :cond_2e
    return-void
.end method

.method private h(Landroid/content/Intent;)V
    .registers 11

    const-string v0, "KEY_NOTIFICATION_ID"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "KEY_FOREGROUND_SERVICE_TYPE"

    .line 2
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "KEY_WORKSPEC_ID"

    .line 3
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "KEY_NOTIFICATION"

    .line 4
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/Notification;

    .line 5
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v4

    sget-object v5, Landroidx/work/impl/foreground/a;->y:Ljava/lang/String;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    const-string v7, "Notifying with (id: %s, workSpecId: %s, notificationType: %s)"

    .line 7
    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Throwable;

    .line 8
    invoke-virtual {v4, v5, v6, v7}, Li1/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    if-eqz p1, :cond_a7

    .line 9
    iget-object v4, p0, Landroidx/work/impl/foreground/a;->x:Landroidx/work/impl/foreground/a$b;

    if-eqz v4, :cond_a7

    .line 10
    new-instance v4, Li1/e;

    invoke-direct {v4, v0, p1, v2}, Li1/e;-><init>(ILandroid/app/Notification;I)V

    .line 11
    iget-object v5, p0, Landroidx/work/impl/foreground/a;->t:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v4, p0, Landroidx/work/impl/foreground/a;->s:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 13
    iput-object v3, p0, Landroidx/work/impl/foreground/a;->s:Ljava/lang/String;

    .line 14
    iget-object v1, p0, Landroidx/work/impl/foreground/a;->x:Landroidx/work/impl/foreground/a$b;

    invoke-interface {v1, v0, v2, p1}, Landroidx/work/impl/foreground/a$b;->b(IILandroid/app/Notification;)V

    goto :goto_a7

    .line 15
    :cond_5f
    iget-object v3, p0, Landroidx/work/impl/foreground/a;->x:Landroidx/work/impl/foreground/a$b;

    invoke-interface {v3, v0, p1}, Landroidx/work/impl/foreground/a$b;->c(ILandroid/app/Notification;)V

    if-eqz v2, :cond_a7

    .line 16
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p1, v0, :cond_a7

    .line 17
    iget-object p1, p0, Landroidx/work/impl/foreground/a;->t:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_76
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 18
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li1/e;

    .line 19
    invoke-virtual {v0}, Li1/e;->a()I

    move-result v0

    or-int/2addr v1, v0

    goto :goto_76

    .line 20
    :cond_8e
    iget-object p1, p0, Landroidx/work/impl/foreground/a;->t:Ljava/util/Map;

    iget-object v0, p0, Landroidx/work/impl/foreground/a;->s:Ljava/lang/String;

    .line 21
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li1/e;

    if-eqz p1, :cond_a7

    .line 22
    iget-object v0, p0, Landroidx/work/impl/foreground/a;->x:Landroidx/work/impl/foreground/a$b;

    .line 23
    invoke-virtual {p1}, Li1/e;->c()I

    move-result v2

    .line 24
    invoke-virtual {p1}, Li1/e;->b()Landroid/app/Notification;

    move-result-object p1

    .line 25
    invoke-interface {v0, v2, v1, p1}, Landroidx/work/impl/foreground/a$b;->b(IILandroid/app/Notification;)V

    :cond_a7
    :goto_a7
    return-void
.end method

.method private i(Landroid/content/Intent;)V
    .registers 7

    .line 1
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/foreground/a;->y:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "Started foreground service %s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Li1/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    const-string v0, "KEY_WORKSPEC_ID"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Landroidx/work/impl/foreground/a;->p:Lj1/i;

    invoke-virtual {v0}, Lj1/i;->p()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    .line 4
    iget-object v1, p0, Landroidx/work/impl/foreground/a;->q:Ls1/a;

    new-instance v2, Landroidx/work/impl/foreground/a$a;

    invoke-direct {v2, p0, v0, p1}, Landroidx/work/impl/foreground/a$a;-><init>(Landroidx/work/impl/foreground/a;Landroidx/work/impl/WorkDatabase;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ls1/a;->b(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
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
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_33

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/foreground/a;->y:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v5, "Constraints unmet for WorkSpec %s"

    .line 4
    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Throwable;

    .line 5
    invoke-virtual {v1, v2, v3, v4}, Li1/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 6
    iget-object v1, p0, Landroidx/work/impl/foreground/a;->p:Lj1/i;

    invoke-virtual {v1, v0}, Lj1/i;->x(Ljava/lang/String;)V

    goto :goto_a

    :cond_33
    return-void
.end method

.method public c(Ljava/lang/String;Z)V
    .registers 10

    .line 1
    iget-object p2, p0, Landroidx/work/impl/foreground/a;->r:Ljava/lang/Object;

    monitor-enter p2

    .line 2
    :try_start_3
    iget-object v0, p0, Landroidx/work/impl/foreground/a;->u:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq1/p;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 3
    iget-object v2, p0, Landroidx/work/impl/foreground/a;->v:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    if-eqz v0, :cond_1f

    .line 4
    iget-object v0, p0, Landroidx/work/impl/foreground/a;->w:Lm1/d;

    iget-object v2, p0, Landroidx/work/impl/foreground/a;->v:Ljava/util/Set;

    invoke-virtual {v0, v2}, Lm1/d;->d(Ljava/lang/Iterable;)V

    .line 5
    :cond_1f
    monitor-exit p2
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_bb

    .line 6
    iget-object p2, p0, Landroidx/work/impl/foreground/a;->t:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Li1/e;

    .line 7
    iget-object v0, p0, Landroidx/work/impl/foreground/a;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 8
    iget-object v0, p0, Landroidx/work/impl/foreground/a;->t:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_81

    .line 9
    iget-object v0, p0, Landroidx/work/impl/foreground/a;->t:Ljava/util/Map;

    .line 10
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 12
    :goto_48
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_55

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_48

    .line 14
    :cond_55
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/work/impl/foreground/a;->s:Ljava/lang/String;

    .line 15
    iget-object v0, p0, Landroidx/work/impl/foreground/a;->x:Landroidx/work/impl/foreground/a$b;

    if-eqz v0, :cond_81

    .line 16
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li1/e;

    .line 17
    iget-object v2, p0, Landroidx/work/impl/foreground/a;->x:Landroidx/work/impl/foreground/a$b;

    .line 18
    invoke-virtual {v0}, Li1/e;->c()I

    move-result v3

    .line 19
    invoke-virtual {v0}, Li1/e;->a()I

    move-result v4

    .line 20
    invoke-virtual {v0}, Li1/e;->b()Landroid/app/Notification;

    move-result-object v5

    .line 21
    invoke-interface {v2, v3, v4, v5}, Landroidx/work/impl/foreground/a$b;->b(IILandroid/app/Notification;)V

    .line 22
    iget-object v2, p0, Landroidx/work/impl/foreground/a;->x:Landroidx/work/impl/foreground/a$b;

    invoke-virtual {v0}, Li1/e;->c()I

    move-result v0

    invoke-interface {v2, v0}, Landroidx/work/impl/foreground/a$b;->d(I)V

    .line 23
    :cond_81
    iget-object v0, p0, Landroidx/work/impl/foreground/a;->x:Landroidx/work/impl/foreground/a$b;

    if-eqz p2, :cond_ba

    if-eqz v0, :cond_ba

    .line 24
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v2

    sget-object v3, Landroidx/work/impl/foreground/a;->y:Ljava/lang/String;

    const-string v4, "Removing Notification (id: %s, workSpecId: %s ,notificationType: %s)"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 25
    invoke-virtual {p2}, Li1/e;->c()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 p1, 0x2

    .line 26
    invoke-virtual {p2}, Li1/e;->a()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, p1

    .line 27
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Throwable;

    .line 28
    invoke-virtual {v2, v3, p1, v1}, Li1/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 29
    invoke-virtual {p2}, Li1/e;->c()I

    move-result p1

    invoke-interface {v0, p1}, Landroidx/work/impl/foreground/a$b;->d(I)V

    :cond_ba
    return-void

    :catchall_bb
    move-exception p1

    .line 30
    :try_start_bc
    monitor-exit p2
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_bb

    goto :goto_bf

    :goto_be
    throw p1

    :goto_bf
    goto :goto_be
.end method

.method public e(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method j(Landroid/content/Intent;)V
    .registers 5

    .line 1
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object p1

    sget-object v0, Landroidx/work/impl/foreground/a;->y:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Throwable;

    const-string v2, "Stopping foreground service"

    invoke-virtual {p1, v0, v2, v1}, Li1/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2
    iget-object p1, p0, Landroidx/work/impl/foreground/a;->x:Landroidx/work/impl/foreground/a$b;

    if-eqz p1, :cond_15

    .line 3
    invoke-interface {p1}, Landroidx/work/impl/foreground/a$b;->stop()V

    :cond_15
    return-void
.end method

.method k()V
    .registers 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Landroidx/work/impl/foreground/a;->x:Landroidx/work/impl/foreground/a$b;

    .line 2
    iget-object v0, p0, Landroidx/work/impl/foreground/a;->r:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_6
    iget-object v1, p0, Landroidx/work/impl/foreground/a;->w:Lm1/d;

    invoke-virtual {v1}, Lm1/d;->e()V

    .line 4
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_16

    .line 5
    iget-object v0, p0, Landroidx/work/impl/foreground/a;->p:Lj1/i;

    invoke-virtual {v0}, Lj1/i;->n()Lj1/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lj1/d;->i(Lj1/b;)V

    return-void

    :catchall_16
    move-exception v1

    .line 6
    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method

.method l(Landroid/content/Intent;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACTION_START_FOREGROUND"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 3
    invoke-direct {p0, p1}, Landroidx/work/impl/foreground/a;->i(Landroid/content/Intent;)V

    .line 4
    invoke-direct {p0, p1}, Landroidx/work/impl/foreground/a;->h(Landroid/content/Intent;)V

    goto :goto_36

    :cond_13
    const-string v1, "ACTION_NOTIFY"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 6
    invoke-direct {p0, p1}, Landroidx/work/impl/foreground/a;->h(Landroid/content/Intent;)V

    goto :goto_36

    :cond_1f
    const-string v1, "ACTION_CANCEL_WORK"

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 8
    invoke-direct {p0, p1}, Landroidx/work/impl/foreground/a;->g(Landroid/content/Intent;)V

    goto :goto_36

    :cond_2b
    const-string v1, "ACTION_STOP_FOREGROUND"

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 10
    invoke-virtual {p0, p1}, Landroidx/work/impl/foreground/a;->j(Landroid/content/Intent;)V

    :cond_36
    :goto_36
    return-void
.end method

.method m(Landroidx/work/impl/foreground/a$b;)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/work/impl/foreground/a;->x:Landroidx/work/impl/foreground/a$b;

    if-eqz v0, :cond_13

    .line 2
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object p1

    sget-object v0, Landroidx/work/impl/foreground/a;->y:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Throwable;

    const-string v2, "A callback already exists."

    invoke-virtual {p1, v0, v2, v1}, Li1/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_13
    iput-object p1, p0, Landroidx/work/impl/foreground/a;->x:Landroidx/work/impl/foreground/a$b;

    return-void
.end method

###### Class androidx.work.impl.foreground.a.RunnableC0074a (androidx.work.impl.foreground.a$a)
.class Landroidx/work/impl/foreground/a$a;
.super Ljava/lang/Object;
.source "SystemForegroundDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/foreground/a;->i(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Landroidx/work/impl/WorkDatabase;

.field final synthetic p:Ljava/lang/String;

.field final synthetic q:Landroidx/work/impl/foreground/a;


# direct methods
.method constructor <init>(Landroidx/work/impl/foreground/a;Landroidx/work/impl/WorkDatabase;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Landroidx/work/impl/foreground/a$a;->q:Landroidx/work/impl/foreground/a;

    iput-object p2, p0, Landroidx/work/impl/foreground/a$a;->o:Landroidx/work/impl/WorkDatabase;

    iput-object p3, p0, Landroidx/work/impl/foreground/a$a;->p:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/work/impl/foreground/a$a;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->L()Lq1/q;

    move-result-object v0

    iget-object v1, p0, Landroidx/work/impl/foreground/a$a;->p:Ljava/lang/String;

    invoke-interface {v0, v1}, Lq1/q;->n(Ljava/lang/String;)Lq1/p;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 2
    invoke-virtual {v0}, Lq1/p;->b()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 3
    iget-object v1, p0, Landroidx/work/impl/foreground/a$a;->q:Landroidx/work/impl/foreground/a;

    iget-object v1, v1, Landroidx/work/impl/foreground/a;->r:Ljava/lang/Object;

    monitor-enter v1

    .line 4
    :try_start_19
    iget-object v2, p0, Landroidx/work/impl/foreground/a$a;->q:Landroidx/work/impl/foreground/a;

    iget-object v2, v2, Landroidx/work/impl/foreground/a;->u:Ljava/util/Map;

    iget-object v3, p0, Landroidx/work/impl/foreground/a$a;->p:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v2, p0, Landroidx/work/impl/foreground/a$a;->q:Landroidx/work/impl/foreground/a;

    iget-object v2, v2, Landroidx/work/impl/foreground/a;->v:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Landroidx/work/impl/foreground/a$a;->q:Landroidx/work/impl/foreground/a;

    iget-object v2, v0, Landroidx/work/impl/foreground/a;->w:Lm1/d;

    iget-object v0, v0, Landroidx/work/impl/foreground/a;->v:Ljava/util/Set;

    invoke-virtual {v2, v0}, Lm1/d;->d(Ljava/lang/Iterable;)V

    .line 7
    monitor-exit v1

    goto :goto_37

    :catchall_34
    move-exception v0

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_19 .. :try_end_36} :catchall_34

    throw v0

    :cond_37
    :goto_37
    return-void
.end method

###### Class androidx.work.impl.foreground.a.b (androidx.work.impl.foreground.a$b)
.class interface abstract Landroidx/work/impl/foreground/a$b;
.super Ljava/lang/Object;
.source "SystemForegroundDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/foreground/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "b"
.end annotation


# virtual methods
.method public abstract b(IILandroid/app/Notification;)V
.end method

.method public abstract c(ILandroid/app/Notification;)V
.end method

.method public abstract d(I)V
.end method

.method public abstract stop()V
.end method
