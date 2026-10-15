###### Class com.tebakgambar.service.LocalNotificationWorker (com.tebakgambar.service.LocalNotificationWorker)
.class public Lcom/tebakgambar/service/LocalNotificationWorker;
.super Landroidx/work/Worker;
.source "LocalNotificationWorker.java"


# instance fields
.field private u:Lcom/tebakgambar/model/TimedDialogModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 2
    :try_start_3
    new-instance p1, Lcom/google/gson/f;

    invoke-direct {p1}, Lcom/google/gson/f;-><init>()V

    invoke-virtual {p2}, Landroidx/work/WorkerParameters;->d()Landroidx/work/b;

    move-result-object p2

    const-string v0, "json"

    invoke-virtual {p2, v0}, Landroidx/work/b;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-class v0, Lcom/tebakgambar/model/TimedDialogModel;

    invoke-virtual {p1, p2, v0}, Lcom/google/gson/f;->k(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tebakgambar/model/TimedDialogModel;

    iput-object p1, p0, Lcom/tebakgambar/service/LocalNotificationWorker;->u:Lcom/tebakgambar/model/TimedDialogModel;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1c} :catch_1d

    goto :goto_21

    :catch_1d
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_21
    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$a;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/service/LocalNotificationWorker;->u:Lcom/tebakgambar/model/TimedDialogModel;

    if-eqz v0, :cond_15

    .line 2
    iget-object v1, v0, Lcom/tebakgambar/model/DialogModel;->titleMessage:Ljava/lang/String;

    iget-object v2, v0, Lcom/tebakgambar/model/TimedDialogModel;->subtitle:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Lcom/tebakgambar/model/TimedDialogModel;->toRemoteMessage()Lcom/tebakgambar/model/request/TGRemoteMessage;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "tg-local-notification"

    .line 5
    invoke-static {v1, v2, v4, v0, v3}, Lcom/tebakgambar/service/TGFirebaseMessagingService;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tebakgambar/model/request/TGRemoteMessage;Landroid/content/Context;)V

    .line 6
    :cond_15
    invoke-static {}, Landroidx/work/ListenableWorker$a;->c()Landroidx/work/ListenableWorker$a;

    move-result-object v0

    return-object v0
.end method
