###### Class com.tebakgambar.model.response.AuthResult (com.tebakgambar.model.response.AuthResult)
.class public Lcom/tebakgambar/model/response/AuthResult;
.super Ljava/lang/Object;
.source "AuthResult.java"


# instance fields
.field public customBanner:Lcom/tebakgambar/model/CustomBanner;
    .annotation runtime Lb7/c;
        value = "custom_banner"
    .end annotation
.end field

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

.field public userData:Lcom/tebakgambar/model/UserData;
    .annotation runtime Lb7/c;
        value = "user_data"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
