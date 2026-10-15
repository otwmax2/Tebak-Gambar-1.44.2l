###### Class com.tebakgambar.model.request.LogoutData (com.tebakgambar.model.request.LogoutData)
.class public Lcom/tebakgambar/model/request/LogoutData;
.super Ljava/lang/Object;
.source "LogoutData.java"

# interfaces
.implements Lcom/tebakgambar/model/request/RequestData;


# instance fields
.field public gameData:Lcom/tebakgambar/model/GameData;

.field public syncToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/tebakgambar/model/LocalUserData;->getInstance()Lcom/tebakgambar/model/LocalUserData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tebakgambar/model/LocalUserData;->getSyncToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/model/request/LogoutData;->syncToken:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 3
    invoke-direct {p0}, Lcom/tebakgambar/model/request/LogoutData;-><init>()V

    .line 4
    new-instance v0, Lcom/tebakgambar/model/GameData;

    invoke-direct {v0, p1}, Lcom/tebakgambar/model/GameData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tebakgambar/model/request/LogoutData;->gameData:Lcom/tebakgambar/model/GameData;

    return-void
.end method


# virtual methods
.method public toFieldMap()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ly8/l;

    invoke-direct {v0}, Ly8/l;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/tebakgambar/model/request/LogoutData;->syncToken:Ljava/lang/String;

    const-string v2, "sync_token"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
