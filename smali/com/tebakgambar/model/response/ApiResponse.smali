###### Class com.tebakgambar.model.response.ApiResponse (com.tebakgambar.model.response.ApiResponse)
.class public Lcom/tebakgambar/model/response/ApiResponse;
.super Ljava/lang/Object;
.source "ApiResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tebakgambar/model/response/ApiResponse$Header;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final STATUS_ALREADY_REGISTER:I = 0x133

.field public static final STATUS_LINK_FAILED:I = 0xcf

.field public static final STATUS_LINK_SUCCESS:I = 0xcc

.field public static final STATUS_MUST_REGISTER:I = 0x135


# instance fields
.field public data:Ljava/lang/Object;
    .annotation runtime Lb7/c;
        value = "data"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public header:Lcom/tebakgambar/model/response/ApiResponse$Header;

.field public message:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "message"
    .end annotation
.end field

.field public result:Ljava/lang/Object;
    .annotation runtime Lb7/c;
        value = "result"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public status:I
    .annotation runtime Lb7/c;
        value = "status"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.tebakgambar.model.response.ApiResponse.Header (com.tebakgambar.model.response.ApiResponse$Header)
.class public Lcom/tebakgambar/model/response/ApiResponse$Header;
.super Ljava/lang/Object;
.source "ApiResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/model/response/ApiResponse;
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
