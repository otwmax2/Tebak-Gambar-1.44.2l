###### Class com.tebakgambar.model.request.LoginRequest (com.tebakgambar.model.request.LoginRequest)
.class public Lcom/tebakgambar/model/request/LoginRequest;
.super Ljava/lang/Object;
.source "LoginRequest.java"


# instance fields
.field public gameToken:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "game_token"
    .end annotation
.end field

.field public oldSyncToken:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "old_sync_token"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
