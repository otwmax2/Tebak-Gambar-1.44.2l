###### Class com.vungle.warren.error.VungleException (com.vungle.warren.error.VungleException)
.class public Lcom/vungle/warren/error/VungleException;
.super Ljava/lang/Exception;
.source "VungleException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/error/VungleException$ExceptionCode;
    }
.end annotation


# static fields
.field public static final AD_EXPIRED:I = 0x4

.field public static final AD_FAILED_TO_DOWNLOAD:I = 0xb

.field public static final AD_PAST_EXPIRATION:I = 0x25

.field public static final AD_RENDER_NETWORK_ERROR:I = 0x26

.field public static final AD_UNABLE_TO_PLAY:I = 0xa

.field public static final ALREADY_PLAYING_ANOTHER_AD:I = 0xf

.field public static final APPLICATION_CONTEXT_REQUIRED:I = 0x7

.field public static final ASSET_DOWNLOAD_ERROR:I = 0x18

.field public static final ASSET_DOWNLOAD_RECOVERABLE:I = 0x17

.field public static final CONFIGURATION_ERROR:I = 0x3

.field public static final DB_ERROR:I = 0x1a

.field public static final INCORRECT_BANNER_API_USAGE:I = 0x1e

.field public static final INCORRECT_DEFAULT_API_USAGE:I = 0x1d

.field public static final INVALID_SIZE:I = 0x1c

.field public static final MISSING_HBP_EVENT_ID:I = 0x24

.field public static final MISSING_REQUIRED_ARGUMENTS_FOR_INIT:I = 0x6

.field public static final NETWORK_ERROR:I = 0x14

.field public static final NETWORK_PERMISSIONS_NOT_GRANTED:I = 0x22

.field public static final NETWORK_UNREACHABLE:I = 0x21

.field public static final NO_AUTO_CACHED_PLACEMENT:I = 0xc

.field public static final NO_SERVE:I = 0x1

.field public static final NO_SPACE_TO_DOWNLOAD_ASSETS:I = 0x13

.field public static final NO_SPACE_TO_INIT:I = 0x10

.field public static final NO_SPACE_TO_LOAD_AD:I = 0x11

.field public static final NO_SPACE_TO_LOAD_AD_AUTO_CACHED:I = 0x12

.field public static final OPERATION_CANCELED:I = 0x19

.field public static final OPERATION_ONGOING:I = 0x8

.field public static final PLACEMENT_NOT_FOUND:I = 0xd

.field public static final RENDER_ERROR:I = 0x1b

.field public static final SDK_VERSION_BELOW_REQUIRED_VERSION:I = 0x23

.field public static final SERVER_ERROR:I = 0x15

.field public static final SERVER_RETRY_ERROR:I = 0xe

.field public static final SERVER_TEMPORARY_UNAVAILABLE:I = 0x16

.field public static final UNKNOWN_ERROR:I = 0x2

.field public static final UNSUPPORTED_CONFIGURATION:I = 0x5

.field public static final VUNGLE_NOT_INTIALIZED:I = 0x9

.field public static final WEBVIEW_RENDER_UNRESPONSIVE:I = 0x20

.field public static final WEB_CRASH:I = 0x1f


# instance fields
.field private final o:I
    .annotation build Lcom/vungle/warren/error/VungleException$ExceptionCode;
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1    # I
        .annotation build Lcom/vungle/warren/error/VungleException$ExceptionCode;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 2
    iput p1, p0, Lcom/vungle/warren/error/VungleException;->o:I

    return-void
.end method

.method public static getExceptionCode(Ljava/lang/Throwable;)I
    .registers 2

    .line 2
    instance-of v0, p0, Lcom/vungle/warren/error/VungleException;

    if-eqz v0, :cond_b

    .line 3
    check-cast p0, Lcom/vungle/warren/error/VungleException;

    invoke-virtual {p0}, Lcom/vungle/warren/error/VungleException;->getExceptionCode()I

    move-result p0

    return p0

    :cond_b
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_1d

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_1d

    .line 2
    :cond_12
    check-cast p1, Lcom/vungle/warren/error/VungleException;

    .line 3
    iget v2, p0, Lcom/vungle/warren/error/VungleException;->o:I

    iget p1, p1, Lcom/vungle/warren/error/VungleException;->o:I

    if-ne v2, p1, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    return v0

    :cond_1d
    :goto_1d
    return v1
.end method

.method public getExceptionCode()I
    .registers 2
    .annotation build Lcom/vungle/warren/error/VungleException$ExceptionCode;
    .end annotation

    .line 1
    iget v0, p0, Lcom/vungle/warren/error/VungleException;->o:I

    return v0
.end method

.method public getLocalizedMessage()Ljava/lang/String;
    .registers 2

    .line 1
    iget v0, p0, Lcom/vungle/warren/error/VungleException;->o:I

    packed-switch v0, :pswitch_data_7a

    const-string v0, "Unknown Exception Code"

    return-object v0

    :pswitch_8
    const-string v0, "Ad rendering failed due to network connectivity issue"

    return-object v0

    :pswitch_b
    const-string v0, "The cached Ad is no longer available due to expired timestamp"

    return-object v0

    :pswitch_e
    const-string v0, "No Event id passed for HBP"

    return-object v0

    :pswitch_11
    const-string v0, "The SDK minimum version should not be overridden. Will not work as expected."

    return-object v0

    :pswitch_14
    const-string v0, "Network permissions not granted. Please check manifest for android.permission.INTERNET and android.permission.ACCESS_NETWORK_STATE"

    return-object v0

    :pswitch_17
    const-string v0, "Network error. Please check if network is available and permission for network access is granted."

    return-object v0

    :pswitch_1a
    const-string v0, "Android web view render became unresponsive, please clean-up your Webview process if any"

    return-object v0

    :pswitch_1d
    const-string v0, "Android web view has crashed"

    return-object v0

    :pswitch_20
    const-string v0, "Cannot request or play MREC or FullScreen Ads from Banner API, please use Vungle.loadAd(), Vungle.playAd() or Vungle.getNativeAd()"

    return-object v0

    :pswitch_23
    const-string v0, "Cannot request or play Banner Ads from Vungle API, please use Banners.loadBanner() or Banners.getBanner()"

    return-object v0

    :pswitch_26
    const-string v0, "Ad size is invalid"

    return-object v0

    :pswitch_29
    const-string v0, "Render error"

    return-object v0

    :pswitch_2c
    const-string v0, "Database error"

    return-object v0

    :pswitch_2f
    const-string v0, "Operation was canceled"

    return-object v0

    :pswitch_32
    const-string v0, "Assets download failed."

    return-object v0

    :pswitch_35
    const-string v0, "Assets download failed. Try again later"

    return-object v0

    :pswitch_38
    const-string v0, "Server temporary unavailable. Try again later"

    return-object v0

    :pswitch_3b
    const-string v0, "Server error"

    return-object v0

    :pswitch_3e
    const-string v0, "Network error. Try again later"

    return-object v0

    :pswitch_41
    const-string v0, "There is not enough file system size on a device to download assets for an ad."

    return-object v0

    :pswitch_44
    const-string v0, "There is not enough file system size on a device to request an ad for auto cache."

    return-object v0

    :pswitch_47
    const-string v0, "There is not enough file system size on a device to request an ad."

    return-object v0

    :pswitch_4a
    const-string v0, "There is not enough file system size on a device to initialize VungleSDK"

    return-object v0

    :pswitch_4d
    const-string v0, "Vungle is already playing different ad."

    return-object v0

    :pswitch_50
    const-string v0, "Remote Server responded with http Retry-After, SDK will retry this request."

    return-object v0

    :pswitch_53
    const-string v0, "Placement is not valid"

    return-object v0

    :pswitch_56
    const-string v0, "No auto-cached Placement on config"

    return-object v0

    :pswitch_59
    const-string v0, "Advertisement failed to download"

    return-object v0

    :pswitch_5c
    const-string v0, "Unable to play advertisement"

    return-object v0

    :pswitch_5f
    const-string v0, "Vungle is not initialized/no longer initialized. Please call Vungle.init() to reinitialize."

    return-object v0

    :pswitch_62
    const-string v0, "There is already an ongoing operation for the action you requested. Please wait until the operation finished before starting another."

    return-object v0

    :pswitch_65
    const-string v0, "Please provide Application context so our SDK can continue to support our API beyond Activity lifecycle"

    return-object v0

    :pswitch_68
    const-string v0, "Please ensure all parameter for init marked as NonNull are provided, as they are essential for functioning of our SDK"

    return-object v0

    :pswitch_6b
    const-string v0, "Placement not configured properly, check Vungle\'s dashboard or contact support for help with configuration"

    return-object v0

    :pswitch_6e
    const-string v0, "The advertisement in the cache has expired and can no longer be played. Please load another ad"

    return-object v0

    :pswitch_71
    const-string v0, "Configuration Error Occurred. Please check your appID and placementIDs, and try again when network connectivity is available."

    return-object v0

    :pswitch_74
    const-string v0, "Unknown Error Occurred."

    return-object v0

    :pswitch_77
    const-string v0, "No advertisements are available for your current bid. Please try again later."

    return-object v0

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public hashCode()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/vungle/warren/error/VungleException;->o:I

    return v0
.end method

###### Class com.vungle.warren.error.VungleException.ExceptionCode (com.vungle.warren.error.VungleException$ExceptionCode)
.class public interface abstract annotation Lcom/vungle/warren/error/VungleException$ExceptionCode;
.super Ljava/lang/Object;
.source "VungleException.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/error/VungleException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ExceptionCode"
.end annotation
