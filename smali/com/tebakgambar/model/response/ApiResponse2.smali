###### Class com.tebakgambar.model.response.ApiResponse2 (com.tebakgambar.model.response.ApiResponse2)
.class public Lcom/tebakgambar/model/response/ApiResponse2;
.super Ljava/lang/Object;
.source "ApiResponse2.java"


# instance fields
.field public code:I

.field public data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tebakgambar/model/Level;",
            ">;"
        }
    .end annotation
.end field

.field public dataSlider:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tebakgambar/model/Slider;",
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
