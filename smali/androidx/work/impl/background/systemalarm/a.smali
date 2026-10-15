###### Class androidx.work.impl.background.systemalarm.a (androidx.work.impl.background.systemalarm.a)
.class Landroidx/work/impl/background/systemalarm/a;
.super Ljava/lang/Object;
.source "Alarms.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "Alarms"

    .line 1
    invoke-static {v0}, Li1/j;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/background/systemalarm/a;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Lj1/i;Ljava/lang/String;)V
    .registers 7

    .line 1
    invoke-virtual {p1}, Lj1/i;->p()Landroidx/work/impl/WorkDatabase;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->I()Lq1/h;

    move-result-object p1

    .line 3
    invoke-interface {p1, p2}, Lq1/h;->c(Ljava/lang/String;)Lq1/g;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 4
    iget v0, v0, Lq1/g;->b:I

    invoke-static {p0, p2, v0}, Landroidx/work/impl/background/systemalarm/a;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 5
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object p0

    sget-object v0, Landroidx/work/impl/background/systemalarm/a;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string v3, "Removing SystemIdInfo for workSpecId (%s)"

    .line 6
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Throwable;

    .line 7
    invoke-virtual {p0, v0, v1, v2}, Li1/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 8
    invoke-interface {p1, p2}, Lq1/h;->d(Ljava/lang/String;)V

    :cond_2d
    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 8

    const-string v0, "alarm"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2
    invoke-static {p0, p1}, Landroidx/work/impl/background/systemalarm/b;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_15

    const/high16 v2, 0x24000000

    goto :goto_17

    :cond_15
    const/high16 v2, 0x20000000

    .line 4
    :goto_17
    invoke-static {p0, p2, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    if-eqz p0, :cond_40

    if-eqz v0, :cond_40

    .line 5
    invoke-static {}, Li1/j;->c()Li1/j;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/background/systemalarm/a;->a:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    .line 6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, p1

    const-string p1, "Cancelling existing alarm with (workSpecId, systemId) (%s, %s)"

    .line 7
    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v4, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, p1, p2}, Li1/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 8
    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_40
    return-void
.end method

.method public static c(Landroid/content/Context;Lj1/i;Ljava/lang/String;J)V
    .registers 7

    .line 1
    invoke-virtual {p1}, Lj1/i;->p()Landroidx/work/impl/WorkDatabase;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->I()Lq1/h;

    move-result-object v0

    .line 3
    invoke-interface {v0, p2}, Lq1/h;->c(Ljava/lang/String;)Lq1/g;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 4
    iget p1, v1, Lq1/g;->b:I

    invoke-static {p0, p2, p1}, Landroidx/work/impl/background/systemalarm/a;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 5
    iget p1, v1, Lq1/g;->b:I

    invoke-static {p0, p2, p1, p3, p4}, Landroidx/work/impl/background/systemalarm/a;->d(Landroid/content/Context;Ljava/lang/String;IJ)V

    goto :goto_2d

    .line 6
    :cond_19
    new-instance v1, Lr1/c;

    invoke-direct {v1, p1}, Lr1/c;-><init>(Landroidx/work/impl/WorkDatabase;)V

    .line 7
    invoke-virtual {v1}, Lr1/c;->b()I

    move-result p1

    .line 8
    new-instance v1, Lq1/g;

    invoke-direct {v1, p2, p1}, Lq1/g;-><init>(Ljava/lang/String;I)V

    .line 9
    invoke-interface {v0, v1}, Lq1/h;->b(Lq1/g;)V

    .line 10
    invoke-static {p0, p2, p1, p3, p4}, Landroidx/work/impl/background/systemalarm/a;->d(Landroid/content/Context;Ljava/lang/String;IJ)V

    :goto_2d
    return-void
.end method

.method private static d(Landroid/content/Context;Ljava/lang/String;IJ)V
    .registers 8

    const-string v0, "alarm"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_11

    const/high16 v2, 0xc000000

    goto :goto_13

    :cond_11
    const/high16 v2, 0x8000000

    .line 3
    :goto_13
    invoke-static {p0, p1}, Landroidx/work/impl/background/systemalarm/b;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 4
    invoke-static {p0, p2, p1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    if-eqz v0, :cond_29

    const/16 p1, 0x13

    const/4 p2, 0x0

    if-lt v1, p1, :cond_26

    .line 5
    invoke-virtual {v0, p2, p3, p4, p0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_29

    .line 6
    :cond_26
    invoke-virtual {v0, p2, p3, p4, p0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_29
    :goto_29
    return-void
.end method
