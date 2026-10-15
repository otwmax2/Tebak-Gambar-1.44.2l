###### Class com.vungle.warren.error.VungleError (com.vungle.warren.error.VungleError)
.class public Lcom/vungle/warren/error/VungleError;
.super Ljava/lang/Error;
.source "VungleError.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final CONFIG_FAILED:I = 0x7

.field public static final ID_NOT_FOUND:I = 0x2

.field public static final INDEX_HTML_MISSING:I = 0x5

.field public static final INVALID_URL:I = 0xa

.field public static final MALFORMED_AD_RESPONSE:I = 0x9

.field public static final MRAID_FILE_MISSING:I = 0x4

.field public static final NO_AD_AVAILABLE:I = 0x0

.field static final SLEEP:I = 0x1

.field static final UNKNOWN_ERROR:I = 0x3

.field public static final WILL_PLAY_AD_DISABLED:I = 0x6


# instance fields
.field private code:I
    .annotation build Lcom/vungle/warren/error/VungleError$ErrorCode;
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1    # I
        .annotation build Lcom/vungle/warren/error/VungleError$ErrorCode;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    .line 2
    iput p1, p0, Lcom/vungle/warren/error/VungleError;->code:I

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .registers 2
    .annotation build Lcom/vungle/warren/error/VungleError$ErrorCode;
    .end annotation

    .line 1
    iget v0, p0, Lcom/vungle/warren/error/VungleError;->code:I

    return v0
.end method

.method public getLocalizedMessage()Ljava/lang/String;
    .registers 4

    .line 1
    iget v0, p0, Lcom/vungle/warren/error/VungleError;->code:I

    packed-switch v0, :pswitch_data_42

    .line 2
    :pswitch_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error Code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/vungle/warren/error/VungleError;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not recognized!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_23
    const-string v0, "invalid url"

    return-object v0

    :pswitch_26
    const-string v0, "invalid ad response"

    return-object v0

    :pswitch_29
    const-string v0, "/config returned an error"

    return-object v0

    :pswitch_2c
    const-string v0, "/config has disabled /will_play_ad"

    return-object v0

    :pswitch_2f
    const-string v0, "index.html was not found. 404!"

    return-object v0

    :pswitch_32
    const-string v0, "mraid.js was not found. 404!"

    return-object v0

    :pswitch_35
    const-string v0, "Unknown Error encountered."

    return-object v0

    :pswitch_38
    const-string v0, "No object for the given identifier was found"

    return-object v0

    :pswitch_3b
    const-string v0, "Sleep Code Returned"

    return-object v0

    :pswitch_3e
    const-string v0, "No Advertisement is currently available"

    return-object v0

    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_5
        :pswitch_26
        :pswitch_23
    .end packed-switch
.end method
