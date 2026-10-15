###### Class com.tebakgambar.service.TGFirebaseMessagingService (com.tebakgambar.service.TGFirebaseMessagingService)
.class public Lcom/tebakgambar/service/TGFirebaseMessagingService;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source "TGFirebaseMessagingService.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    return-void
.end method

.method public static t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tebakgambar/model/request/TGRemoteMessage;Landroid/content/Context;)V
    .registers 9

    .line 1
    invoke-static {p4}, Lcom/tebakgambar/Henson;->with(Landroid/content/Context;)Lcom/tebakgambar/Henson$b;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/tebakgambar/Henson$b;->b()Lcom/tebakgambar/home/HomeActivity$$IntentBuilder;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p3}, Lcom/tebakgambar/home/HomeActivity$$IntentBuilder;->remoteMessage(Lcom/tebakgambar/model/request/TGRemoteMessage;)Lcom/tebakgambar/home/HomeActivity$$IntentBuilder;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/tebakgambar/home/HomeActivity$$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_19

    const/high16 v1, 0xc000000

    goto :goto_1b

    :cond_19
    const/high16 v1, 0x8000000

    :goto_1b
    const-string v2, "push_notif"

    .line 6
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v2, 0x24000000

    .line 8
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v2, 0x0

    .line 9
    invoke-static {p4, v2, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 10
    new-instance v1, Landroidx/core/app/l$e;

    const-string v3, "tg-notification"

    invoke-direct {v1, p4, v3}, Landroidx/core/app/l$e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1, p0}, Landroidx/core/app/l$e;->k(Ljava/lang/CharSequence;)Landroidx/core/app/l$e;

    move-result-object p0

    .line 12
    invoke-virtual {p0, p1}, Landroidx/core/app/l$e;->j(Ljava/lang/CharSequence;)Landroidx/core/app/l$e;

    move-result-object p0

    const v1, 0x7f08011b

    .line 13
    invoke-virtual {p0, v1}, Landroidx/core/app/l$e;->w(I)Landroidx/core/app/l$e;

    move-result-object p0

    .line 14
    invoke-virtual {p0, v0}, Landroidx/core/app/l$e;->i(Landroid/app/PendingIntent;)Landroidx/core/app/l$e;

    move-result-object p0

    .line 15
    invoke-virtual {p0, v2}, Landroidx/core/app/l$e;->s(Z)Landroidx/core/app/l$e;

    move-result-object p0

    iget-object p3, p3, Lcom/tebakgambar/model/request/TGRemoteMessage;->ticker:Ljava/lang/String;

    .line 16
    invoke-virtual {p0, p3}, Landroidx/core/app/l$e;->z(Ljava/lang/CharSequence;)Landroidx/core/app/l$e;

    move-result-object p0

    const/4 p3, 0x1

    .line 17
    invoke-virtual {p0, p3}, Landroidx/core/app/l$e;->f(Z)Landroidx/core/app/l$e;

    move-result-object p0

    new-instance p3, Landroidx/core/app/l$c;

    invoke-direct {p3}, Landroidx/core/app/l$c;-><init>()V

    .line 18
    invoke-virtual {p3, p1}, Landroidx/core/app/l$c;->h(Ljava/lang/CharSequence;)Landroidx/core/app/l$c;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/core/app/l$e;->y(Landroidx/core/app/l$f;)Landroidx/core/app/l$e;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/app/l$e;->b()Landroid/app/Notification;

    move-result-object p0

    const/high16 p1, -0x10000

    .line 19
    iput p1, p0, Landroid/app/Notification;->ledARGB:I

    const/4 p1, 0x7

    .line 20
    iput p1, p0, Landroid/app/Notification;->defaults:I

    const/16 p1, 0x64

    .line 21
    iput p1, p0, Landroid/app/Notification;->ledOnMS:I

    .line 22
    iput p1, p0, Landroid/app/Notification;->ledOffMS:I

    .line 23
    invoke-static {p4}, Landroidx/core/app/o;->b(Landroid/content/Context;)Landroidx/core/app/o;

    move-result-object p1

    invoke-virtual {p1, p2, v2, p0}, Landroidx/core/app/o;->e(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public o(Lcom/google/firebase/messaging/h0;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->o(Lcom/google/firebase/messaging/h0;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/firebase/messaging/h0;->W3()Lcom/google/firebase/messaging/h0$b;

    move-result-object v0

    if-nez v0, :cond_a

    return-void

    .line 3
    :cond_a
    new-instance v1, Lcom/tebakgambar/model/request/TGRemoteMessage;

    invoke-direct {v1, p1}, Lcom/tebakgambar/model/request/TGRemoteMessage;-><init>(Lcom/google/firebase/messaging/h0;)V

    .line 4
    invoke-virtual {v0}, Lcom/google/firebase/messaging/h0$b;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/google/firebase/messaging/h0$b;->a()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/messaging/h0$b;->c()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {p1, v2, v0, v1, p0}, Lcom/tebakgambar/service/TGFirebaseMessagingService;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tebakgambar/model/request/TGRemoteMessage;Landroid/content/Context;)V

    return-void
.end method

.method public onCreate()V
    .registers 6

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_23

    const-string v0, "notification"

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 4
    new-instance v1, Landroid/app/NotificationChannel;

    const/4 v2, 0x3

    const-string v3, "tg-notification"

    const-string v4, "Tebak Gambar Notification"

    invoke-direct {v1, v3, v4, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 5
    invoke-virtual {v1, v4}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    if-eqz v0, :cond_23

    .line 6
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_23
    return-void
.end method

.method public q(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->q(Ljava/lang/String;)V

    return-void
.end method
