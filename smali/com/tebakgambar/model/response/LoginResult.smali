###### Class com.tebakgambar.model.response.LoginResult (com.tebakgambar.model.response.LoginResult)
.class public Lcom/tebakgambar/model/response/LoginResult;
.super Ljava/lang/Object;
.source "LoginResult.java"


# instance fields
.field public customBanner:Lcom/tebakgambar/model/CustomBanner;
    .annotation runtime Lb7/c;
        value = "custom_banner"
    .end annotation
.end field

.field public gameToken:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "game_token"
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
