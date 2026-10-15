###### Class com.tebakgambar.model.TimedDialogModel (com.tebakgambar.model.TimedDialogModel)
.class public Lcom/tebakgambar/model/TimedDialogModel;
.super Lcom/tebakgambar/model/DialogModel;
.source "TimedDialogModel.java"


# instance fields
.field public pushActionId:Ljava/lang/String;

.field public subtitle:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "Subtitle"
    .end annotation
.end field

.field public time:J
    .annotation runtime Lb7/c;
        value = "Time"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/model/DialogModel;-><init>()V

    const-string v0, "5"

    .line 2
    iput-object v0, p0, Lcom/tebakgambar/model/TimedDialogModel;->pushActionId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isValid()Z
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/model/DialogModel;->titleMessage:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-wide v0, p0, Lcom/tebakgambar/model/TimedDialogModel;->time:J

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public toRemoteMessage()Lcom/tebakgambar/model/request/TGRemoteMessage;
    .registers 3

    .line 1
    new-instance v0, Lcom/tebakgambar/model/request/TGRemoteMessage;

    invoke-direct {v0}, Lcom/tebakgambar/model/request/TGRemoteMessage;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/tebakgambar/model/DialogModel;->url:Ljava/lang/String;

    iput-object v1, v0, Lcom/tebakgambar/model/request/TGRemoteMessage;->messageUrl:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lcom/tebakgambar/model/DialogModel;->message:Ljava/lang/String;

    iput-object v1, v0, Lcom/tebakgambar/model/request/TGRemoteMessage;->message:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/tebakgambar/model/DialogModel;->titleMessage:Ljava/lang/String;

    iput-object v1, v0, Lcom/tebakgambar/model/request/TGRemoteMessage;->ticker:Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lcom/tebakgambar/model/DialogModel;->buttonNegative:Ljava/lang/String;

    iput-object v1, v0, Lcom/tebakgambar/model/request/TGRemoteMessage;->buttonNegativeText:Ljava/lang/String;

    .line 6
    iget-object v1, p0, Lcom/tebakgambar/model/DialogModel;->buttonPositive:Ljava/lang/String;

    iput-object v1, v0, Lcom/tebakgambar/model/request/TGRemoteMessage;->buttonPositiveText:Ljava/lang/String;

    .line 7
    iget-object v1, p0, Lcom/tebakgambar/model/TimedDialogModel;->pushActionId:Ljava/lang/String;

    iput-object v1, v0, Lcom/tebakgambar/model/request/TGRemoteMessage;->pushActionId:Ljava/lang/String;

    return-object v0
.end method
