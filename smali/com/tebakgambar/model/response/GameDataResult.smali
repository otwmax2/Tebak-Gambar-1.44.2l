###### Class com.tebakgambar.model.response.GameDataResult (com.tebakgambar.model.response.GameDataResult)
.class public Lcom/tebakgambar/model/response/GameDataResult;
.super Ljava/lang/Object;
.source "GameDataResult.java"


# instance fields
.field public gameData:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "game_data"
    .end annotation
.end field

.field public syncToken:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "sync_token"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
