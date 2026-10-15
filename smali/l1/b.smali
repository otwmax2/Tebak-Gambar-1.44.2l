###### Class l1.b (l1.b)
.class public Ll1/b;
.super Ljava/lang/Object;
.source "SystemJobScheduler.java"

# interfaces
.implements Lj1/e;


# static fields
.field private static final s:Ljava/lang/String;


# instance fields
.field private final o:Landroid/content/Context;

.field private final p:Landroid/app/job/JobScheduler;

.field private final q:Lj1/i;

.field private final r:Ll1/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "SystemJobScheduler"

    .line 1
    invoke-static {v0}, Li1/j;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ll1/b;->s:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lj1/i;)V
    .registers 5

    const-string v0, "jobscheduler"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    new-instance v1, Ll1/a;

    invoke-direct {v1, p1}, Ll1/a;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0, p1, p2, v0, v1}, Ll1/b;-><init>(Landroid/content/Context;Lj1/i;Landroid/app/job/JobScheduler;Ll1/a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lj1/i;Landroid/app/job/JobScheduler;Ll1/a;)V
    .registers 5

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Ll1/b;->o:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Ll1/b;->q:Lj1/i;

    .line 6
    iput-object p3, p0, Ll1/b;->p:Landroid/app/job/JobScheduler;

    .line 7
    iput-object p4, p0, Ll1/b;->r:Ll1/a;

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .registers 3

    const-string v0, "jobscheduler"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    if-eqz v0, :cond_2e

    .line 2
    invoke-static {p0, v0}, Ll1/b;->f(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2e

    .line 3
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobInfo;

    .line 5
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    move-result v1

    invoke-static {v0, v1}, Ll1/b;->c(Landroid/app/job/JobScheduler;I)V

    goto :goto_1a

    :cond_2e
    return-void
.end method

.method private static c(Landroid/app/job/JobScheduler;I)V
    .registers 8

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->cancel(I)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    goto :goto_26

    :catchall_4
    move-exception p0

    .line 2
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v0

    sget-object v1, Ll1/b;->s:Ljava/lang/String;

    .line 3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const-string p1, "Exception while trying to cancel job (%d)"

    .line 5
    invoke-static {v2, p1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v2, v3, [Ljava/lang/Throwable;

    aput-object p0, v2, v5

    .line 6
    invoke-virtual {v0, v1, p1, v2}, Li1/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :goto_26
    return-void
.end method

.method private static e(Landroid/content/Context;Landroid/app/job/JobScheduler;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/job/JobScheduler;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Ll1/b;->f(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_8
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobInfo;

    .line 4
    invoke-static {v0}, Ll1/b;->g(Landroid/app/job/JobInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 5
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_34
    return-object p1
.end method

.method private static f(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/job/JobScheduler;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-virtual {p1}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_6

    goto :goto_19

    :catchall_6
    move-exception p1

    .line 2
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v1

    sget-object v2, Ll1/b;->s:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string p1, "getAllPendingJobs() is not reliable on this device."

    invoke-virtual {v1, v2, p1, v3}, Li1/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_19
    if-nez p1, :cond_1c

    return-object v0

    .line 3
    :cond_1c
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Landroidx/work/impl/background/systemjob/SystemJobService;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_30
    :goto_30
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/job/JobInfo;

    .line 6
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_30

    :cond_4a
    return-object v0
.end method

.method private static g(Landroid/app/job/JobInfo;)Ljava/lang/String;
    .registers 3

    const-string v0, "EXTRA_WORK_SPEC_ID"

    .line 1
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 2
    :try_start_8
    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 3
    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_12
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_12} :catch_13

    return-object p0

    :catch_13
    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public static h(Landroid/content/Context;Lj1/i;)Z
    .registers 9

    const-string v0, "jobscheduler"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 2
    invoke-static {p0, v0}, Ll1/b;->f(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object p0

    .line 3
    invoke-virtual {p1}, Lj1/i;->p()Landroidx/work/impl/WorkDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->I()Lq1/h;

    move-result-object v1

    invoke-interface {v1}, Lq1/h;->a()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p0, :cond_20

    .line 4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_21

    :cond_20
    const/4 v3, 0x0

    .line 5
    :goto_21
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(I)V

    if-eqz p0, :cond_54

    .line 6
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_54

    .line 7
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_32
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/job/JobInfo;

    .line 8
    invoke-static {v3}, Ll1/b;->g(Landroid/app/job/JobInfo;)Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4c

    .line 10
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_32

    .line 11
    :cond_4c
    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getId()I

    move-result v3

    invoke-static {v0, v3}, Ll1/b;->c(Landroid/app/job/JobScheduler;I)V

    goto :goto_32

    .line 12
    :cond_54
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_58
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 13
    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    .line 14
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object p0

    sget-object v0, Ll1/b;->s:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Throwable;

    const-string v3, "Reconciling jobs"

    invoke-virtual {p0, v0, v3, v2}, Li1/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    const/4 v2, 0x1

    :cond_78
    if-eqz v2, :cond_a7

    .line 15
    invoke-virtual {p1}, Lj1/i;->p()Landroidx/work/impl/WorkDatabase;

    move-result-object p0

    .line 16
    invoke-virtual {p0}, Landroidx/room/h0;->e()V

    .line 17
    :try_start_81
    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->L()Lq1/q;

    move-result-object p1

    .line 18
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_89
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-wide/16 v3, -0x1

    .line 19
    invoke-interface {p1, v1, v3, v4}, Lq1/q;->c(Ljava/lang/String;J)I

    goto :goto_89

    .line 20
    :cond_9b
    invoke-virtual {p0}, Landroidx/room/h0;->A()V
    :try_end_9e
    .catchall {:try_start_81 .. :try_end_9e} :catchall_a2

    .line 21
    invoke-virtual {p0}, Landroidx/room/h0;->i()V

    goto :goto_a7

    :catchall_a2
    move-exception p1

    invoke-virtual {p0}, Landroidx/room/h0;->i()V

    .line 22
    throw p1

    :cond_a7
    :goto_a7
    return v2
.end method


# virtual methods
.method public a()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public cancel(Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Ll1/b;->o:Landroid/content/Context;

    iget-object v1, p0, Ll1/b;->p:Landroid/app/job/JobScheduler;

    invoke-static {v0, v1, p1}, Ll1/b;->e(Landroid/content/Context;Landroid/app/job/JobScheduler;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_37

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4
    iget-object v2, p0, Ll1/b;->p:Landroid/app/job/JobScheduler;

    invoke-static {v2, v1}, Ll1/b;->c(Landroid/app/job/JobScheduler;I)V

    goto :goto_14

    .line 5
    :cond_2a
    iget-object v0, p0, Ll1/b;->q:Lj1/i;

    invoke-virtual {v0}, Lj1/i;->p()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->I()Lq1/h;

    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Lq1/h;->d(Ljava/lang/String;)V

    :cond_37
    return-void
.end method

.method public varargs d([Lq1/p;)V
    .registers 12

    .line 1
    iget-object v0, p0, Ll1/b;->q:Lj1/i;

    invoke-virtual {v0}, Lj1/i;->p()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    .line 2
    new-instance v1, Lr1/c;

    invoke-direct {v1, v0}, Lr1/c;-><init>(Landroidx/work/impl/WorkDatabase;)V

    .line 3
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v2, :cond_10f

    aget-object v5, p1, v4

    .line 4
    invoke-virtual {v0}, Landroidx/room/h0;->e()V

    .line 5
    :try_start_15
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->L()Lq1/q;

    move-result-object v6

    iget-object v7, v5, Lq1/p;->a:Ljava/lang/String;

    invoke-interface {v6, v7}, Lq1/q;->n(Ljava/lang/String;)Lq1/p;

    move-result-object v6
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_10a

    const-string v7, "Skipping scheduling "

    if-nez v6, :cond_49

    .line 6
    :try_start_23
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v6

    sget-object v8, Ll1/b;->s:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lq1/p;->a:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " because it\'s no longer in the DB"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v7, v3, [Ljava/lang/Throwable;

    invoke-virtual {v6, v8, v5, v7}, Li1/j;->h(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 7
    invoke-virtual {v0}, Landroidx/room/h0;->A()V

    goto/16 :goto_103

    .line 8
    :cond_49
    iget-object v6, v6, Lq1/p;->b:Li1/s$a;

    sget-object v8, Li1/s$a;->o:Li1/s$a;

    if-eq v6, v8, :cond_75

    .line 9
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v6

    sget-object v8, Ll1/b;->s:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lq1/p;->a:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " because it is no longer enqueued"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v7, v3, [Ljava/lang/Throwable;

    invoke-virtual {v6, v8, v5, v7}, Li1/j;->h(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 10
    invoke-virtual {v0}, Landroidx/room/h0;->A()V

    goto/16 :goto_103

    .line 11
    :cond_75
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->I()Lq1/h;

    move-result-object v6

    iget-object v7, v5, Lq1/p;->a:Ljava/lang/String;

    .line 12
    invoke-interface {v6, v7}, Lq1/h;->c(Ljava/lang/String;)Lq1/g;

    move-result-object v6

    if-eqz v6, :cond_84

    .line 13
    iget v7, v6, Lq1/g;->b:I

    goto :goto_9c

    :cond_84
    iget-object v7, p0, Ll1/b;->q:Lj1/i;

    .line 14
    invoke-virtual {v7}, Lj1/i;->j()Landroidx/work/a;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/work/a;->i()I

    move-result v7

    iget-object v8, p0, Ll1/b;->q:Lj1/i;

    .line 15
    invoke-virtual {v8}, Lj1/i;->j()Landroidx/work/a;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/work/a;->g()I

    move-result v8

    .line 16
    invoke-virtual {v1, v7, v8}, Lr1/c;->d(II)I

    move-result v7

    :goto_9c
    if-nez v6, :cond_b2

    .line 17
    new-instance v6, Lq1/g;

    iget-object v8, v5, Lq1/p;->a:Ljava/lang/String;

    invoke-direct {v6, v8, v7}, Lq1/g;-><init>(Ljava/lang/String;I)V

    .line 18
    iget-object v8, p0, Ll1/b;->q:Lj1/i;

    invoke-virtual {v8}, Lj1/i;->p()Landroidx/work/impl/WorkDatabase;

    move-result-object v8

    .line 19
    invoke-virtual {v8}, Landroidx/work/impl/WorkDatabase;->I()Lq1/h;

    move-result-object v8

    .line 20
    invoke-interface {v8, v6}, Lq1/h;->b(Lq1/g;)V

    .line 21
    :cond_b2
    invoke-virtual {p0, v5, v7}, Ll1/b;->i(Lq1/p;I)V

    .line 22
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    if-ne v6, v8, :cond_100

    .line 23
    iget-object v6, p0, Ll1/b;->o:Landroid/content/Context;

    iget-object v8, p0, Ll1/b;->p:Landroid/app/job/JobScheduler;

    iget-object v9, v5, Lq1/p;->a:Ljava/lang/String;

    invoke-static {v6, v8, v9}, Ll1/b;->e(Landroid/content/Context;Landroid/app/job/JobScheduler;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_100

    .line 24
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    if-ltz v7, :cond_d4

    .line 25
    invoke-interface {v6, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 26
    :cond_d4
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_e5

    .line 27
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_fd

    .line 28
    :cond_e5
    iget-object v6, p0, Ll1/b;->q:Lj1/i;

    .line 29
    invoke-virtual {v6}, Lj1/i;->j()Landroidx/work/a;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/work/a;->i()I

    move-result v6

    iget-object v7, p0, Ll1/b;->q:Lj1/i;

    .line 30
    invoke-virtual {v7}, Lj1/i;->j()Landroidx/work/a;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/work/a;->g()I

    move-result v7

    .line 31
    invoke-virtual {v1, v6, v7}, Lr1/c;->d(II)I

    move-result v6

    .line 32
    :goto_fd
    invoke-virtual {p0, v5, v6}, Ll1/b;->i(Lq1/p;I)V

    .line 33
    :cond_100
    invoke-virtual {v0}, Landroidx/room/h0;->A()V
    :try_end_103
    .catchall {:try_start_23 .. :try_end_103} :catchall_10a

    .line 34
    :goto_103
    invoke-virtual {v0}, Landroidx/room/h0;->i()V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_e

    :catchall_10a
    move-exception p1

    invoke-virtual {v0}, Landroidx/room/h0;->i()V

    .line 35
    throw p1

    :cond_10f
    return-void
.end method

.method public i(Lq1/p;I)V
    .registers 11

    .line 1
    iget-object v0, p0, Ll1/b;->r:Ll1/a;

    invoke-virtual {v0, p1, p2}, Ll1/a;->a(Lq1/p;I)Landroid/app/job/JobInfo;

    move-result-object v0

    .line 2
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v1

    sget-object v2, Ll1/b;->s:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p1, Lq1/p;->a:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-string v5, "Scheduling work ID %s Job ID %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Throwable;

    .line 4
    invoke-virtual {v1, v2, v4, v5}, Li1/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 5
    :try_start_26
    iget-object v1, p0, Ll1/b;->p:Landroid/app/job/JobScheduler;

    invoke-virtual {v1, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result v0

    if-nez v0, :cond_80

    .line 6
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v0

    const-string v1, "Unable to schedule work ID %s"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p1, Lq1/p;->a:Ljava/lang/String;

    aput-object v5, v4, v6

    .line 7
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v4, v6, [Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v1, v4}, Li1/j;->h(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 8
    iget-boolean v0, p1, Lq1/p;->q:Z

    if-eqz v0, :cond_80

    iget-object v0, p1, Lq1/p;->r:Li1/n;

    sget-object v1, Li1/n;->o:Li1/n;

    if-ne v0, v1, :cond_80

    .line 9
    iput-boolean v6, p1, Lq1/p;->q:Z

    const-string v0, "Scheduling a non-expedited job (work ID %s)"

    new-array v1, v7, [Ljava/lang/Object;

    .line 10
    iget-object v4, p1, Lq1/p;->a:Ljava/lang/String;

    aput-object v4, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v1

    new-array v4, v6, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v0, v4}, Li1/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 12
    invoke-virtual {p0, p1, p2}, Ll1/b;->i(Lq1/p;I)V
    :try_end_67
    .catch Ljava/lang/IllegalStateException; {:try_start_26 .. :try_end_67} :catch_81
    .catchall {:try_start_26 .. :try_end_67} :catchall_68

    goto :goto_80

    :catchall_68
    move-exception p2

    .line 13
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v0

    sget-object v1, Ll1/b;->s:Ljava/lang/String;

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p1, v2, v6

    const-string p1, "Unable to schedule %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v2, v7, [Ljava/lang/Throwable;

    aput-object p2, v2, v6

    invoke-virtual {v0, v1, p1, v2}, Li1/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :cond_80
    :goto_80
    return-void

    :catch_81
    move-exception p1

    .line 14
    iget-object p2, p0, Ll1/b;->o:Landroid/content/Context;

    iget-object v0, p0, Ll1/b;->p:Landroid/app/job/JobScheduler;

    invoke-static {p2, v0}, Ll1/b;->f(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_91

    .line 15
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    goto :goto_92

    :cond_91
    const/4 p2, 0x0

    .line 16
    :goto_92
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 17
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v6

    iget-object p2, p0, Ll1/b;->q:Lj1/i;

    .line 18
    invoke-virtual {p2}, Lj1/i;->p()Landroidx/work/impl/WorkDatabase;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/work/impl/WorkDatabase;->L()Lq1/q;

    move-result-object p2

    invoke-interface {p2}, Lq1/q;->h()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v7

    iget-object p2, p0, Ll1/b;->q:Lj1/i;

    .line 19
    invoke-virtual {p2}, Lj1/i;->j()Landroidx/work/a;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/work/a;->h()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v3

    const-string p2, "JobScheduler 100 job limit exceeded.  We count %d WorkManager jobs in JobScheduler; we have %d tracked jobs in our DB; our Configuration limit is %d."

    .line 20
    invoke-static {v0, p2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 21
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v0

    sget-object v1, Ll1/b;->s:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, p2, v2}, Li1/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 22
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
