###### Class com.tebakgambar.model.LoginConfig (com.tebakgambar.model.LoginConfig)
.class public Lcom/tebakgambar/model/LoginConfig;
.super Ljava/lang/Object;
.source "LoginConfig.java"


# static fields
.field public static final VIA_EMAIL:Ljava/lang/String; = "email"

.field public static final VIA_FACEBOOK:Ljava/lang/String; = "facebook"

.field public static final VIA_FORGOT_PASSWORD:Ljava/lang/String; = "forgot_password"

.field public static final VIA_LINE:Ljava/lang/String; = "line"

.field public static final VIA_TEMPORARY:Ljava/lang/String; = "temporary"


# instance fields
.field public buttonColor:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "button_color"
    .end annotation
.end field

.field public buttonTitle:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "button_title"
    .end annotation
.end field

.field public id:I

.field public popupButtonPositive:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "popup_button_positive"
    .end annotation
.end field

.field public popupButtonUrl:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "popup_button_url"
    .end annotation
.end field

.field public popupMessage:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "popup_message"
    .end annotation
.end field

.field public popupTitle:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "popup_title"
    .end annotation
.end field

.field public via:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
