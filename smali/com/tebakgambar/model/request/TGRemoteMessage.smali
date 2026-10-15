###### Class com.tebakgambar.model.request.TGRemoteMessage (com.tebakgambar.model.request.TGRemoteMessage)
.class public Lcom/tebakgambar/model/request/TGRemoteMessage;
.super Ljava/lang/Object;
.source "TGRemoteMessage.java"


# annotations
.annotation runtime Lorg/parceler/Parcel;
.end annotation


# instance fields
.field public buttonNegativeText:Ljava/lang/String;

.field public buttonPositiveText:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public messageUrl:Ljava/lang/String;

.field public pushActionId:Ljava/lang/String;

.field public ticker:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/messaging/h0;)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/google/firebase/messaging/h0;->V3()Ljava/util/Map;

    move-result-object p1

    const-string v0, "type"

    .line 4
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/tebakgambar/model/request/TGRemoteMessage;->pushActionId:Ljava/lang/String;

    const-string v0, "nmessage"

    .line 5
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/tebakgambar/model/request/TGRemoteMessage;->message:Ljava/lang/String;

    const-string v0, "urlaction"

    .line 6
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/tebakgambar/model/request/TGRemoteMessage;->messageUrl:Ljava/lang/String;

    const-string v0, "ntitle"

    .line 7
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/tebakgambar/model/request/TGRemoteMessage;->ticker:Ljava/lang/String;

    return-void
.end method

.method public static remoteMessageFromExtras(Landroid/os/Bundle;)Lcom/tebakgambar/model/request/TGRemoteMessage;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const-string v1, "ntitle"

    .line 1
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "nmessage"

    .line 2
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "urlaction"

    .line 3
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "type"

    .line 4
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz v2, :cond_2e

    if-nez p0, :cond_21

    goto :goto_2e

    .line 5
    :cond_21
    new-instance v0, Lcom/tebakgambar/model/request/TGRemoteMessage;

    invoke-direct {v0}, Lcom/tebakgambar/model/request/TGRemoteMessage;-><init>()V

    .line 6
    iput-object v1, v0, Lcom/tebakgambar/model/request/TGRemoteMessage;->ticker:Ljava/lang/String;

    .line 7
    iput-object v3, v0, Lcom/tebakgambar/model/request/TGRemoteMessage;->messageUrl:Ljava/lang/String;

    .line 8
    iput-object p0, v0, Lcom/tebakgambar/model/request/TGRemoteMessage;->pushActionId:Ljava/lang/String;

    .line 9
    iput-object v2, v0, Lcom/tebakgambar/model/request/TGRemoteMessage;->message:Ljava/lang/String;

    :cond_2e
    :goto_2e
    return-object v0
.end method


# virtual methods
.method public buttonNegativeText()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/model/request/TGRemoteMessage;->buttonNegativeText:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    .line 2
    :cond_5
    invoke-static {}, Lcom/tebakgambar/TGApplication;->d()Lcom/tebakgambar/TGApplication;

    move-result-object v0

    const v1, 0x7f12005d

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public buttonPositiveText()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/model/request/TGRemoteMessage;->buttonPositiveText:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    .line 2
    :cond_5
    invoke-static {}, Lcom/tebakgambar/TGApplication;->d()Lcom/tebakgambar/TGApplication;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/tebakgambar/model/request/TGRemoteMessage;->pushActionId:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const v1, 0x7f120143

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_61

    .line 4
    :cond_1b
    iget-object v1, p0, Lcom/tebakgambar/model/request/TGRemoteMessage;->pushActionId:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    const v1, 0x7f120198

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_61

    .line 5
    :cond_2d
    iget-object v1, p0, Lcom/tebakgambar/model/request/TGRemoteMessage;->pushActionId:Ljava/lang/String;

    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    const-string v0, "twitter"

    goto :goto_61

    .line 6
    :cond_3a
    iget-object v1, p0, Lcom/tebakgambar/model/request/TGRemoteMessage;->pushActionId:Ljava/lang/String;

    const-string v2, "4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    const v1, 0x7f1201df

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_61

    .line 7
    :cond_4c
    iget-object v1, p0, Lcom/tebakgambar/model/request/TGRemoteMessage;->pushActionId:Ljava/lang/String;

    const-string v2, "5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    const v1, 0x7f1201b9

    goto :goto_5d

    :cond_5a
    const v1, 0x7f120144

    :goto_5d
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_61
    return-object v0
.end method
