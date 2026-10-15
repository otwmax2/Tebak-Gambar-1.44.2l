###### Class com.tebakgambar.model.response.LoginConfigResult (com.tebakgambar.model.response.LoginConfigResult)
.class public Lcom/tebakgambar/model/response/LoginConfigResult;
.super Ljava/lang/Object;
.source "LoginConfigResult.java"


# instance fields
.field public loginConfigs:Ljava/util/List;
    .annotation runtime Lb7/c;
        value = "config_login"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tebakgambar/model/LoginConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
