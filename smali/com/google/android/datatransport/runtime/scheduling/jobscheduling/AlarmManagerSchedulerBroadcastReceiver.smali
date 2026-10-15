###### Class com.google.android.datatransport.runtime.scheduling.jobscheduling.AlarmManagerSchedulerBroadcastReceiver (com.google.android.datatransport.runtime.scheduling.jobscheduling.AlarmManagerSchedulerBroadcastReceiver)
.class public Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AlarmManagerSchedulerBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerSchedulerBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .registers 0

    invoke-static {}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AlarmManagerSchedulerBroadcastReceiver;->b()V

    return-void
.end method

.method private static synthetic b()V
    .registers 0

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "backendName"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "extras"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "priority"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 4
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v3, "attemptNumber"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 5
    invoke-static {p1}, Ll3/u;->f(Landroid/content/Context;)V

    .line 6
    invoke-static {}, Ll3/p;->a()Ll3/p$a;

    move-result-object p1

    .line 7
    invoke-virtual {p1, v0}, Ll3/p$a;->b(Ljava/lang/String;)Ll3/p$a;

    move-result-object p1

    .line 8
    invoke-static {v2}, Lw3/a;->b(I)Lj3/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Ll3/p$a;->d(Lj3/d;)Ll3/p$a;

    move-result-object p1

    if-eqz v1, :cond_4d

    const/4 v0, 0x0

    .line 9
    invoke-static {v1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ll3/p$a;->c([B)Ll3/p$a;

    .line 10
    :cond_4d
    invoke-static {}, Ll3/u;->c()Ll3/u;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ll3/u;->e()Ls3/s;

    move-result-object v0

    .line 12
    invoke-virtual {p1}, Ll3/p$a;->a()Ll3/p;

    move-result-object p1

    sget-object v1, Ls3/b;->o:Ls3/b;

    invoke-virtual {v0, p1, p2, v1}, Ls3/s;->v(Ll3/p;ILjava/lang/Runnable;)V

    return-void
.end method

###### Class s3.b (s3.b)
.class public final synthetic Ls3/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic o:Ls3/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Ls3/b;

    invoke-direct {v0}, Ls3/b;-><init>()V

    sput-object v0, Ls3/b;->o:Ls3/b;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    invoke-static {}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AlarmManagerSchedulerBroadcastReceiver;->a()V

    return-void
.end method
