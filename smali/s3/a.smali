###### Class s3.a (s3.a)
.class public Ls3/a;
.super Ljava/lang/Object;
.source "AlarmManagerScheduler.java"

# interfaces
.implements Ls3/y;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lt3/d;

.field private c:Landroid/app/AlarmManager;

.field private final d:Ls3/g;

.field private final e:Lv3/a;


# direct methods
.method constructor <init>(Landroid/content/Context;Lt3/d;Landroid/app/AlarmManager;Lv3/a;Ls3/g;)V
    .registers 6

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Ls3/a;->a:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Ls3/a;->b:Lt3/d;

    .line 6
    iput-object p3, p0, Ls3/a;->c:Landroid/app/AlarmManager;

    .line 7
    iput-object p4, p0, Ls3/a;->e:Lv3/a;

    .line 8
    iput-object p5, p0, Ls3/a;->d:Ls3/g;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lt3/d;Lv3/a;Ls3/g;)V
    .registers 12

    const-string v0, "alarm"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/app/AlarmManager;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    .line 2
    invoke-direct/range {v1 .. v6}, Ls3/a;-><init>(Landroid/content/Context;Lt3/d;Landroid/app/AlarmManager;Lv3/a;Ls3/g;)V

    return-void
.end method


# virtual methods
.method public a(Ll3/p;IZ)V
    .registers 12

    .line 1
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 2
    invoke-virtual {p1}, Ll3/p;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "backendName"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3
    invoke-virtual {p1}, Ll3/p;->d()Lj3/d;

    move-result-object v1

    invoke-static {v1}, Lw3/a;->a(Lj3/d;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "priority"

    .line 4
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 5
    invoke-virtual {p1}, Ll3/p;->c()[B

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_33

    .line 6
    invoke-virtual {p1}, Ll3/p;->c()[B

    move-result-object v1

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    const-string v3, "extras"

    .line 7
    invoke-virtual {v0, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 8
    :cond_33
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Ls3/a;->a:Landroid/content/Context;

    const-class v4, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AlarmManagerSchedulerBroadcastReceiver;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 9
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v0, "attemptNumber"

    .line 10
    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "AlarmManagerScheduler"

    if-nez p3, :cond_58

    .line 11
    invoke-virtual {p0, v1}, Ls3/a;->c(Landroid/content/Intent;)Z

    move-result p3

    if-eqz p3, :cond_58

    const-string p2, "Upload for context %s is already scheduled. Returning..."

    .line 12
    invoke-static {v0, p2, p1}, Lp3/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 13
    :cond_58
    iget-object p3, p0, Ls3/a;->b:Lt3/d;

    invoke-interface {p3, p1}, Lt3/d;->B1(Ll3/p;)J

    move-result-wide v3

    .line 14
    iget-object p3, p0, Ls3/a;->d:Ls3/g;

    .line 15
    invoke-virtual {p1}, Ll3/p;->d()Lj3/d;

    move-result-object v5

    invoke-virtual {p3, v5, v3, v4, p2}, Ls3/g;->g(Lj3/d;JI)J

    move-result-wide v5

    const/4 p3, 0x4

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p1, p3, v2

    const/4 p1, 0x1

    .line 16
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, p3, p1

    const/4 p1, 0x2

    .line 17
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, p3, p1

    .line 18
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, p3, p2

    const-string p1, "Scheduling upload for context %s in %dms(Backend next call timestamp %d). Attempt %d"

    .line 19
    invoke-static {v0, p1, p3}, Lp3/a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    iget-object p1, p0, Ls3/a;->a:Landroid/content/Context;

    .line 21
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p3, v0, :cond_92

    const/high16 p3, 0x4000000

    goto :goto_93

    :cond_92
    const/4 p3, 0x0

    .line 22
    :goto_93
    invoke-static {p1, v2, v1, p3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 23
    iget-object p3, p0, Ls3/a;->c:Landroid/app/AlarmManager;

    iget-object v0, p0, Ls3/a;->e:Lv3/a;

    .line 24
    invoke-interface {v0}, Lv3/a;->a()J

    move-result-wide v0

    add-long/2addr v0, v5

    .line 25
    invoke-virtual {p3, p2, v0, v1, p1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public b(Ll3/p;I)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Ls3/a;->a(Ll3/p;IZ)V

    return-void
.end method

.method c(Landroid/content/Intent;)Z
    .registers 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_9

    const/high16 v0, 0x24000000

    goto :goto_b

    :cond_9
    const/high16 v0, 0x20000000

    .line 2
    :goto_b
    iget-object v1, p0, Ls3/a;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    if-eqz p1, :cond_15

    const/4 v2, 0x1

    :cond_15
    return v2
.end method
