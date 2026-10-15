###### Class com.google.android.gms.common.api.CommonStatusCodes (com.google.android.gms.common.api.CommonStatusCodes)
.class public Lcom/google/android/gms/common/api/CommonStatusCodes;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.1.0"


# direct methods
.method protected constructor <init>()V
    .registers 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_52

    .line 1
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown status code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_15
    const-string p0, "RECONNECTION_TIMED_OUT"

    return-object p0

    :pswitch_18
    const-string p0, "RECONNECTION_TIMED_OUT_DURING_UPDATE"

    return-object p0

    :pswitch_1b
    const-string p0, "CONNECTION_SUSPENDED_DURING_CALL"

    return-object p0

    :pswitch_1e
    const-string p0, "REMOTE_EXCEPTION"

    return-object p0

    :pswitch_21
    const-string p0, "DEAD_CLIENT"

    return-object p0

    :pswitch_24
    const-string p0, "API_NOT_CONNECTED"

    return-object p0

    :pswitch_27
    const-string p0, "CANCELED"

    return-object p0

    :pswitch_2a
    const-string p0, "TIMEOUT"

    return-object p0

    :pswitch_2d
    const-string p0, "INTERRUPTED"

    return-object p0

    :pswitch_30
    const-string p0, "ERROR"

    return-object p0

    :pswitch_33
    const-string p0, "DEVELOPER_ERROR"

    return-object p0

    :pswitch_36
    const-string p0, "INTERNAL_ERROR"

    return-object p0

    :pswitch_39
    const-string p0, "NETWORK_ERROR"

    return-object p0

    :pswitch_3c
    const-string p0, "RESOLUTION_REQUIRED"

    return-object p0

    :pswitch_3f
    const-string p0, "INVALID_ACCOUNT"

    return-object p0

    :pswitch_42
    const-string p0, "SIGN_IN_REQUIRED"

    return-object p0

    :pswitch_45
    const-string p0, "SERVICE_DISABLED"

    return-object p0

    :pswitch_48
    const-string p0, "SERVICE_VERSION_UPDATE_REQUIRED"

    return-object p0

    :pswitch_4b
    const-string p0, "SUCCESS"

    return-object p0

    :pswitch_4e
    const-string p0, "SUCCESS_CACHE"

    return-object p0

    nop

    :pswitch_data_52
    .packed-switch -0x1
        :pswitch_4e
        :pswitch_4b
        :pswitch_3
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_3
        :pswitch_33
        :pswitch_3
        :pswitch_3
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
    .end packed-switch
.end method
