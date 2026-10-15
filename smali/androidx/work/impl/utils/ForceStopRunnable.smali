###### Class androidx.work.impl.utils.ForceStopRunnable (androidx.work.impl.utils.ForceStopRunnable)
.class public Landroidx/work/impl/utils/ForceStopRunnable;
.super Ljava/lang/Object;
.source "ForceStopRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver;
    }
.end annotation


# static fields
.field private static final r:Ljava/lang/String;

.field private static final s:J


# instance fields
.field private final o:Landroid/content/Context;

.field private final p:Lj1/i;

.field private q:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "ForceStopRunnable"

    .line 1
    invoke-static {v0}, Li1/j;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/utils/ForceStopRunnable;->r:Ljava/lang/String;

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xe42

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Landroidx/work/impl/utils/ForceStopRunnable;->s:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lj1/i;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->o:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Landroidx/work/impl/utils/ForceStopRunnable;->p:Lj1/i;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->q:I

    return-void
.end method

.method static c(Landroid/content/Context;)Landroid/content/Intent;
    .registers 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Landroidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string p0, "ACTION_FORCE_STOP_RESCHEDULE"

    .line 3
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private static d(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .registers 4

    .line 1
    invoke-static {p0}, Landroidx/work/impl/utils/ForceStopRunnable;->c(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    .line 2
    invoke-static {p0, v1, v0, p1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method static g(Landroid/content/Context;)V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClassVerificationFailure"
        }
    .end annotation

    const-string v0, "alarm"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2
    invoke-static {}, Landroidx/core/os/a;->c()Z

    move-result v1

    if-eqz v1, :cond_11

    const/high16 v1, 0xa000000

    goto :goto_13

    :cond_11
    const/high16 v1, 0x8000000

    .line 3
    :goto_13
    invoke-static {p0, v1}, Landroidx/work/impl/utils/ForceStopRunnable;->d(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Landroidx/work/impl/utils/ForceStopRunnable;->s:J

    add-long/2addr v1, v3

    if-eqz v0, :cond_2e

    .line 5
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    const/4 v5, 0x0

    if-lt v3, v4, :cond_2b

    .line 6
    invoke-virtual {v0, v5, v1, v2, p0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_2e

    .line 7
    :cond_2b
    invoke-virtual {v0, v5, v1, v2, p0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_2e
    :goto_2e
    return-void
.end method


# virtual methods
.method public a()Z
    .registers 13

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt v0, v2, :cond_10

    .line 2
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->o:Landroid/content/Context;

    iget-object v2, p0, Landroidx/work/impl/utils/ForceStopRunnable;->p:Lj1/i;

    invoke-static {v0, v2}, Ll1/b;->h(Landroid/content/Context;Lj1/i;)Z

    move-result v0

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 3
    :goto_11
    iget-object v2, p0, Landroidx/work/impl/utils/ForceStopRunnable;->p:Lj1/i;

    invoke-virtual {v2}, Lj1/i;->p()Landroidx/work/impl/WorkDatabase;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->L()Lq1/q;

    move-result-object v3

    .line 5
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->K()Lq1/n;

    move-result-object v4

    .line 6
    invoke-virtual {v2}, Landroidx/room/h0;->e()V

    .line 7
    :try_start_22
    invoke-interface {v3}, Lq1/q;->j()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_31

    .line 8
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_31

    const/4 v7, 0x1

    goto :goto_32

    :cond_31
    const/4 v7, 0x0

    :goto_32
    if-eqz v7, :cond_57

    .line 9
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_38
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_57

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lq1/p;

    .line 10
    sget-object v9, Li1/s$a;->o:Li1/s$a;

    new-array v10, v6, [Ljava/lang/String;

    iget-object v11, v8, Lq1/p;->a:Ljava/lang/String;

    aput-object v11, v10, v1

    invoke-interface {v3, v9, v10}, Lq1/q;->g(Li1/s$a;[Ljava/lang/String;)I

    .line 11
    iget-object v8, v8, Lq1/p;->a:Ljava/lang/String;

    const-wide/16 v9, -0x1

    invoke-interface {v3, v8, v9, v10}, Lq1/q;->c(Ljava/lang/String;J)I

    goto :goto_38

    .line 12
    :cond_57
    invoke-interface {v4}, Lq1/n;->c()V

    .line 13
    invoke-virtual {v2}, Landroidx/room/h0;->A()V
    :try_end_5d
    .catchall {:try_start_22 .. :try_end_5d} :catchall_66

    .line 14
    invoke-virtual {v2}, Landroidx/room/h0;->i()V

    if-nez v7, :cond_64

    if-eqz v0, :cond_65

    :cond_64
    const/4 v1, 0x1

    :cond_65
    return v1

    :catchall_66
    move-exception v0

    invoke-virtual {v2}, Landroidx/room/h0;->i()V

    .line 15
    goto :goto_6c

    :goto_6b
    throw v0

    :goto_6c
    goto :goto_6b
.end method

.method public b()V
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroidx/work/impl/utils/ForceStopRunnable;->a()Z

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroidx/work/impl/utils/ForceStopRunnable;->h()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    .line 3
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/utils/ForceStopRunnable;->r:Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/Throwable;

    const-string v4, "Rescheduling Workers."

    invoke-virtual {v0, v1, v4, v3}, Li1/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 4
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->p:Lj1/i;

    invoke-virtual {v0}, Lj1/i;->t()V

    .line 5
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->p:Lj1/i;

    invoke-virtual {v0}, Lj1/i;->m()Lr1/e;

    move-result-object v0

    invoke-virtual {v0, v2}, Lr1/e;->c(Z)V

    goto :goto_64

    .line 6
    :cond_27
    invoke-virtual {p0}, Landroidx/work/impl/utils/ForceStopRunnable;->e()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 7
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/utils/ForceStopRunnable;->r:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Throwable;

    const-string v3, "Application was force-stopped, rescheduling."

    invoke-virtual {v0, v1, v3, v2}, Li1/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 8
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->p:Lj1/i;

    invoke-virtual {v0}, Lj1/i;->t()V

    goto :goto_64

    :cond_40
    if-eqz v0, :cond_64

    .line 9
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/utils/ForceStopRunnable;->r:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Throwable;

    const-string v3, "Found unfinished work, scheduling it."

    invoke-virtual {v0, v1, v3, v2}, Li1/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 10
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->p:Lj1/i;

    .line 11
    invoke-virtual {v0}, Lj1/i;->j()Landroidx/work/a;

    move-result-object v0

    iget-object v1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->p:Lj1/i;

    .line 12
    invoke-virtual {v1}, Lj1/i;->p()Landroidx/work/impl/WorkDatabase;

    move-result-object v1

    iget-object v2, p0, Landroidx/work/impl/utils/ForceStopRunnable;->p:Lj1/i;

    .line 13
    invoke-virtual {v2}, Lj1/i;->o()Ljava/util/List;

    move-result-object v2

    .line 14
    invoke-static {v0, v1, v2}, Lj1/f;->b(Landroidx/work/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    :cond_64
    :goto_64
    return-void
.end method

.method public e()Z
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClassVerificationFailure"
        }
    .end annotation

    const/high16 v0, 0x20000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1
    :try_start_4
    invoke-static {}, Landroidx/core/os/a;->c()Z

    move-result v3

    if-eqz v3, :cond_c

    const/high16 v0, 0x22000000

    .line 2
    :cond_c
    iget-object v3, p0, Landroidx/work/impl/utils/ForceStopRunnable;->o:Landroid/content/Context;

    invoke-static {v3, v0}, Landroidx/work/impl/utils/ForceStopRunnable;->d(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1e

    if-lt v3, v4, :cond_4d

    if-eqz v0, :cond_1d

    .line 4
    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    .line 5
    :cond_1d
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->o:Landroid/content/Context;

    const-string v3, "activity"

    .line 6
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v3, 0x0

    .line 7
    invoke-virtual {v0, v3, v1, v1}, Landroid/app/ActivityManager;->getHistoricalProcessExitReasons(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_55

    .line 8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_55

    const/4 v3, 0x0

    .line 9
    :goto_35
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_55

    .line 10
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ApplicationExitInfo;

    .line 11
    invoke-virtual {v4}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_4a

    return v2

    :cond_4a
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    :cond_4d
    if-nez v0, :cond_55

    .line 12
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->o:Landroid/content/Context;

    invoke-static {v0}, Landroidx/work/impl/utils/ForceStopRunnable;->g(Landroid/content/Context;)V
    :try_end_54
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_54} :catch_58
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_54} :catch_56

    return v2

    :cond_55
    return v1

    :catch_56
    move-exception v0

    goto :goto_59

    :catch_58
    move-exception v0

    .line 13
    :goto_59
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v3

    sget-object v4, Landroidx/work/impl/utils/ForceStopRunnable;->r:Ljava/lang/String;

    new-array v5, v2, [Ljava/lang/Throwable;

    aput-object v0, v5, v1

    const-string v0, "Ignoring exception"

    invoke-virtual {v3, v4, v0, v5}, Li1/j;->h(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return v2
.end method

.method public f()Z
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->p:Lj1/i;

    invoke-virtual {v0}, Lj1/i;->j()Landroidx/work/a;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/work/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_20

    .line 3
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/utils/ForceStopRunnable;->r:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Throwable;

    const-string v4, "The default process name was not specified."

    invoke-virtual {v0, v1, v4, v3}, Li1/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return v2

    .line 4
    :cond_20
    iget-object v1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->o:Landroid/content/Context;

    invoke-static {v1, v0}, Lr1/f;->b(Landroid/content/Context;Landroidx/work/a;)Z

    move-result v0

    .line 5
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v1

    sget-object v4, Landroidx/work/impl/utils/ForceStopRunnable;->r:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v3

    const-string v5, "Is default app process = %s"

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v1, v4, v2, v3}, Li1/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return v0
.end method

.method h()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->p:Lj1/i;

    invoke-virtual {v0}, Lj1/i;->m()Lr1/e;

    move-result-object v0

    invoke-virtual {v0}, Lr1/e;->a()Z

    move-result v0

    return v0
.end method

.method public i(J)V
    .registers 3

    .line 1
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

.method public run()V
    .registers 12

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/work/impl/utils/ForceStopRunnable;->f()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_98

    if-nez v0, :cond_c

    .line 2
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->p:Lj1/i;

    invoke-virtual {v0}, Lj1/i;->s()V

    return-void

    .line 3
    :cond_c
    :goto_c
    :try_start_c
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->o:Landroid/content/Context;

    invoke-static {v0}, Lj1/h;->e(Landroid/content/Context;)V

    .line 4
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/utils/ForceStopRunnable;->r:Ljava/lang/String;

    const-string v2, "Performing cleanup operations."

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v4}, Li1/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_98

    .line 5
    :try_start_1f
    invoke-virtual {p0}, Landroidx/work/impl/utils/ForceStopRunnable;->b()V
    :try_end_22
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_1f .. :try_end_22} :catch_2d
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1f .. :try_end_22} :catch_2b
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1f .. :try_end_22} :catch_29
    .catch Landroid/database/sqlite/SQLiteTableLockedException; {:try_start_1f .. :try_end_22} :catch_27
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_1f .. :try_end_22} :catch_25
    .catch Landroid/database/sqlite/SQLiteAccessPermException; {:try_start_1f .. :try_end_22} :catch_23
    .catchall {:try_start_1f .. :try_end_22} :catchall_98

    goto :goto_67

    :catch_23
    move-exception v0

    goto :goto_2e

    :catch_25
    move-exception v0

    goto :goto_2e

    :catch_27
    move-exception v0

    goto :goto_2e

    :catch_29
    move-exception v0

    goto :goto_2e

    :catch_2b
    move-exception v0

    goto :goto_2e

    :catch_2d
    move-exception v0

    .line 6
    :goto_2e
    :try_start_2e
    iget v1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->q:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->q:I

    const/4 v4, 0x3

    if-lt v1, v4, :cond_6e

    const-string v1, "The file system on the device is in a bad state. WorkManager cannot access the app\'s internal data store."

    .line 7
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v4

    sget-object v5, Landroidx/work/impl/utils/ForceStopRunnable;->r:Ljava/lang/String;

    new-array v6, v2, [Ljava/lang/Throwable;

    aput-object v0, v6, v3

    invoke-virtual {v4, v5, v1, v6}, Li1/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 8
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->p:Lj1/i;

    .line 10
    invoke-virtual {v0}, Lj1/i;->j()Landroidx/work/a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/work/a;->d()Li1/g;

    move-result-object v0

    if-eqz v0, :cond_6d

    .line 11
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v1

    const-string v6, "Routing exception to the specified exception handler"

    new-array v2, v2, [Ljava/lang/Throwable;

    aput-object v4, v2, v3

    invoke-virtual {v1, v5, v6, v2}, Li1/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 12
    invoke-interface {v0, v4}, Li1/g;->a(Ljava/lang/Throwable;)V
    :try_end_67
    .catchall {:try_start_2e .. :try_end_67} :catchall_98

    .line 13
    :goto_67
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->p:Lj1/i;

    invoke-virtual {v0}, Lj1/i;->s()V

    return-void

    .line 14
    :cond_6d
    :try_start_6d
    throw v4

    :cond_6e
    int-to-long v4, v1

    const-wide/16 v6, 0x12c

    mul-long v4, v4, v6

    .line 15
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v1

    sget-object v8, Landroidx/work/impl/utils/ForceStopRunnable;->r:Ljava/lang/String;

    const-string v9, "Retrying after %s"

    new-array v10, v2, [Ljava/lang/Object;

    .line 16
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v10, v3

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Throwable;

    aput-object v0, v2, v3

    invoke-virtual {v1, v8, v4, v2}, Li1/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 17
    iget v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->q:I

    int-to-long v0, v0

    mul-long v0, v0, v6

    invoke-virtual {p0, v0, v1}, Landroidx/work/impl/utils/ForceStopRunnable;->i(J)V
    :try_end_96
    .catchall {:try_start_6d .. :try_end_96} :catchall_98

    goto/16 :goto_c

    :catchall_98
    move-exception v0

    .line 18
    iget-object v1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->p:Lj1/i;

    invoke-virtual {v1}, Lj1/i;->s()V

    .line 19
    goto :goto_a0

    :goto_9f
    throw v0

    :goto_a0
    goto :goto_9f
.end method

###### Class androidx.work.impl.utils.ForceStopRunnable.BroadcastReceiver (androidx.work.impl.utils.ForceStopRunnable$BroadcastReceiver)
.class public Landroidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ForceStopRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/utils/ForceStopRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BroadcastReceiver"
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "ForceStopRunnable$Rcvr"

    .line 1
    invoke-static {v0}, Li1/j;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    if-eqz p2, :cond_1f

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ACTION_FORCE_STOP_RESCHEDULE"

    .line 2
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1f

    .line 3
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object p2

    sget-object v0, Landroidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver;->a:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Throwable;

    const-string v2, "Rescheduling alarm that keeps track of force-stops."

    invoke-virtual {p2, v0, v2, v1}, Li1/j;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 4
    invoke-static {p1}, Landroidx/work/impl/utils/ForceStopRunnable;->g(Landroid/content/Context;)V

    :cond_1f
    return-void
.end method
