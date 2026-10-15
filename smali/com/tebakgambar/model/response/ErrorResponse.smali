###### Class com.tebakgambar.model.response.ErrorResponse (com.tebakgambar.model.response.ErrorResponse)
.class public Lcom/tebakgambar/model/response/ErrorResponse;
.super Ljava/lang/Object;
.source "ErrorResponse.java"


# static fields
.field public static final REASON_HTTP_ERROR:I = -0x4

.field public static final REASON_NO_INTERNET:I = -0x2

.field public static final REASON_SERVER:I = -0x3

.field public static final REASON_UNKNOWN:I = -0x1


# instance fields
.field public message:Ljava/lang/String;

.field public reason:I

.field public status:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x4

    .line 8
    iput v0, p0, Lcom/tebakgambar/model/response/ErrorResponse;->reason:I

    .line 9
    iput-object p2, p0, Lcom/tebakgambar/model/response/ErrorResponse;->message:Ljava/lang/String;

    const/16 p2, 0x1f4

    if-lt p1, p2, :cond_1e

    const/16 p2, 0x257

    if-gt p1, p2, :cond_1e

    .line 10
    invoke-static {}, Lcom/tebakgambar/TGApplication;->d()Lcom/tebakgambar/TGApplication;

    move-result-object p1

    const p2, 0x7f1200ac

    invoke-virtual {p1, p2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tebakgambar/model/response/ErrorResponse;->message:Ljava/lang/String;

    goto :goto_33

    :cond_1e
    const/16 p2, 0x190

    if-lt p1, p2, :cond_33

    const/16 p2, 0x1f3

    if-gt p1, p2, :cond_33

    .line 11
    invoke-static {}, Lcom/tebakgambar/TGApplication;->d()Lcom/tebakgambar/TGApplication;

    move-result-object p1

    const p2, 0x7f1200b2

    invoke-virtual {p1, p2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tebakgambar/model/response/ErrorResponse;->message:Ljava/lang/String;

    :cond_33
    :goto_33
    return-void
.end method

.method public constructor <init>(Lcom/tebakgambar/model/response/ApiResponse;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/tebakgambar/model/response/ApiResponse;",
            ">(TT;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x3

    .line 13
    iput v0, p0, Lcom/tebakgambar/model/response/ErrorResponse;->reason:I

    .line 14
    iget-object v0, p1, Lcom/tebakgambar/model/response/ApiResponse;->message:Ljava/lang/String;

    iput-object v0, p0, Lcom/tebakgambar/model/response/ErrorResponse;->message:Ljava/lang/String;

    .line 15
    iget p1, p1, Lcom/tebakgambar/model/response/ApiResponse;->status:I

    iput p1, p0, Lcom/tebakgambar/model/response/ErrorResponse;->status:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    instance-of p1, p1, Ljava/net/UnknownHostException;

    if-eqz p1, :cond_18

    .line 3
    invoke-static {}, Lcom/tebakgambar/TGApplication;->d()Lcom/tebakgambar/TGApplication;

    move-result-object p1

    const v0, 0x7f1200aa

    invoke-virtual {p1, v0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tebakgambar/model/response/ErrorResponse;->message:Ljava/lang/String;

    const/4 p1, -0x2

    .line 4
    iput p1, p0, Lcom/tebakgambar/model/response/ErrorResponse;->reason:I

    goto :goto_28

    .line 5
    :cond_18
    invoke-static {}, Lcom/tebakgambar/TGApplication;->d()Lcom/tebakgambar/TGApplication;

    move-result-object p1

    const v0, 0x7f1200b2

    invoke-virtual {p1, v0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tebakgambar/model/response/ErrorResponse;->message:Ljava/lang/String;

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Lcom/tebakgambar/model/response/ErrorResponse;->reason:I

    :goto_28
    return-void
.end method
