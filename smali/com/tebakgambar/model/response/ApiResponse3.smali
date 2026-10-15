###### Class com.tebakgambar.model.response.ApiResponse3 (com.tebakgambar.model.response.ApiResponse3)
.class public Lcom/tebakgambar/model/response/ApiResponse3;
.super Ljava/lang/Object;
.source "ApiResponse3.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tebakgambar/model/response/ApiResponse3$Header;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TData;"
        }
    .end annotation
.end field

.field public header:Lcom/tebakgambar/model/response/ApiResponse3$Header;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.tebakgambar.model.response.ApiResponse3.Header (com.tebakgambar.model.response.ApiResponse3$Header)
.class public Lcom/tebakgambar/model/response/ApiResponse3$Header;
.super Ljava/lang/Object;
.source "ApiResponse3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/model/response/ApiResponse3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Header"
.end annotation


# instance fields
.field public messages:[Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "messages"
    .end annotation
.end field

.field public statusCode:I
    .annotation runtime Lb7/c;
        value = "status_code"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
