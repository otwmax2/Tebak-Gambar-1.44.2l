###### Class com.google.android.play.core.assetpacks.w (com.google.android.play.core.assetpacks.w)
.class final Lcom/google/android/play/core/assetpacks/w;
.super Lv4/l0;
.source "com.google.android.play:core@@1.10.2"


# instance fields
.field private final o:Lv4/a;

.field private final p:Landroid/content/Context;

.field private final q:Lcom/google/android/play/core/assetpacks/e0;

.field private final r:Lcom/google/android/play/core/assetpacks/l3;

.field private final s:Lcom/google/android/play/core/assetpacks/b1;

.field final t:Landroid/app/NotificationManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/play/core/assetpacks/e0;Lcom/google/android/play/core/assetpacks/l3;Lcom/google/android/play/core/assetpacks/b1;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Lv4/l0;-><init>()V

    new-instance v0, Lv4/a;

    const-string v1, "AssetPackExtractionService"

    .line 2
    invoke-direct {v0, v1}, Lv4/a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/play/core/assetpacks/w;->o:Lv4/a;

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/w;->p:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/w;->q:Lcom/google/android/play/core/assetpacks/e0;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/w;->r:Lcom/google/android/play/core/assetpacks/l3;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/w;->s:Lcom/google/android/play/core/assetpacks/b1;

    const-string p2, "notification"

    .line 3
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/w;->t:Landroid/app/NotificationManager;

    return-void
.end method

.method private final declared-synchronized O(Ljava/lang/String;)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_5

    :try_start_3
    const-string p1, "File downloads by Play"

    .line 1
    :cond_5
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "playcore-assetpacks-service-notification-channel"

    const/4 v2, 0x2

    invoke-direct {v0, v1, p1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/w;->t:Landroid/app/NotificationManager;

    .line 2
    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized X0(Landroid/os/Bundle;Lv4/n0;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/w;->o:Lv4/a;

    const-string v1, "updateServiceState AIDL call"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lv4/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/w;->p:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Lv4/r;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f0

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/w;->p:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Lv4/r;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto/16 :goto_f0

    :cond_1d
    const-string v0, "action_type"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/w;->s:Lcom/google/android/play/core/assetpacks/b1;

    .line 5
    invoke-virtual {v1, p2}, Lcom/google/android/play/core/assetpacks/b1;->c(Lv4/n0;)V

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c8

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p2, v0, :cond_3a

    const-string v3, "notification_channel_name"

    .line 6
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-direct {p0, v3}, Lcom/google/android/play/core/assetpacks/w;->O(Ljava/lang/String;)V

    :cond_3a
    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/w;->r:Lcom/google/android/play/core/assetpacks/l3;

    .line 8
    invoke-virtual {v3, v1}, Lcom/google/android/play/core/assetpacks/l3;->c(Z)V

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/w;->s:Lcom/google/android/play/core/assetpacks/b1;

    const-string v4, "notification_title"

    .line 9
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "notification_subtext"

    .line 10
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "notification_timeout"

    const-wide/32 v7, 0x927c0

    .line 11
    invoke-virtual {p1, v6, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v8, "notification_on_click_intent"

    .line 12
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    if-lt p2, v0, :cond_6c

    .line 13
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v9, p0, Lcom/google/android/play/core/assetpacks/w;->p:Landroid/content/Context;

    const-string v10, "playcore-assetpacks-service-notification-channel"

    invoke-direct {v0, v9, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0, v6, v7}, Landroid/app/Notification$Builder;->setTimeoutAfter(J)Landroid/app/Notification$Builder;

    move-result-object v0

    goto :goto_78

    .line 15
    :cond_6c
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/google/android/play/core/assetpacks/w;->p:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v6, -0x2

    .line 16
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 17
    :goto_78
    instance-of v6, v8, Landroid/app/PendingIntent;

    if-eqz v6, :cond_81

    .line 18
    check-cast v8, Landroid/app/PendingIntent;

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :cond_81
    const v6, 0x1080081

    .line 19
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 20
    invoke-virtual {v6, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    if-nez v4, :cond_90

    const-string v4, "Downloading additional file"

    .line 21
    :cond_90
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    if-nez v5, :cond_98

    const-string v5, "Transferring"

    .line 22
    :cond_98
    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const/16 v2, 0x15

    if-lt p2, v2, :cond_af

    const-string p2, "notification_color"

    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_af

    .line 24
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 25
    :cond_af
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 26
    invoke-virtual {v3, p1}, Lcom/google/android/play/core/assetpacks/b1;->a(Landroid/app/Notification;)V

    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/google/android/play/core/assetpacks/w;->p:Landroid/content/Context;

    const-class v0, Lcom/google/android/play/core/assetpacks/ExtractionForegroundService;

    .line 27
    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p2, p0, Lcom/google/android/play/core/assetpacks/w;->p:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/w;->s:Lcom/google/android/play/core/assetpacks/b1;

    .line 28
    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_c6
    .catchall {:try_start_1 .. :try_end_c6} :catchall_fa

    monitor-exit p0

    return-void

    :cond_c8
    const/4 p1, 0x2

    if-ne v0, p1, :cond_d7

    .line 29
    :try_start_cb
    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/w;->r:Lcom/google/android/play/core/assetpacks/l3;

    .line 30
    invoke-virtual {p1, v2}, Lcom/google/android/play/core/assetpacks/l3;->c(Z)V

    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/w;->s:Lcom/google/android/play/core/assetpacks/b1;

    .line 31
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/b1;->b()V
    :try_end_d5
    .catchall {:try_start_cb .. :try_end_d5} :catchall_fa

    monitor-exit p0

    return-void

    :cond_d7
    :try_start_d7
    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/w;->o:Lv4/a;

    new-array v1, v1, [Ljava/lang/Object;

    .line 32
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "Unknown action type received: %d"

    invoke-virtual {p1, v0, v1}, Lv4/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance p1, Landroid/os/Bundle;

    .line 33
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2, p1}, Lv4/n0;->X(Landroid/os/Bundle;)V
    :try_end_ee
    .catchall {:try_start_d7 .. :try_end_ee} :catchall_fa

    monitor-exit p0

    return-void

    .line 34
    :cond_f0
    :goto_f0
    :try_start_f0
    new-instance p1, Landroid/os/Bundle;

    .line 35
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2, p1}, Lv4/n0;->X(Landroid/os/Bundle;)V
    :try_end_f8
    .catchall {:try_start_f0 .. :try_end_f8} :catchall_fa

    monitor-exit p0

    return-void

    :catchall_fa
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final E2(Landroid/os/Bundle;Lv4/n0;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/play/core/assetpacks/w;->X0(Landroid/os/Bundle;Lv4/n0;)V

    return-void
.end method

.method public final x1(Landroid/os/Bundle;Lv4/n0;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/w;->o:Lv4/a;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "clearAssetPackStorage AIDL call"

    invoke-virtual {p1, v1, v0}, Lv4/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/w;->p:Landroid/content/Context;

    .line 2
    invoke-static {p1}, Lv4/r;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_29

    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/w;->p:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Lv4/r;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1b

    goto :goto_29

    .line 4
    :cond_1b
    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/w;->q:Lcom/google/android/play/core/assetpacks/e0;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/e0;->J()V

    new-instance p1, Landroid/os/Bundle;

    .line 6
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2, p1}, Lv4/n0;->v6(Landroid/os/Bundle;)V

    return-void

    .line 7
    :cond_29
    :goto_29
    new-instance p1, Landroid/os/Bundle;

    .line 8
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2, p1}, Lv4/n0;->X(Landroid/os/Bundle;)V

    return-void
.end method
