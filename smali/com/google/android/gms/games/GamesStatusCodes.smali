###### Class com.google.android.gms.games.GamesStatusCodes (com.google.android.gms.games.GamesStatusCodes)
.class public final Lcom/google/android/gms/games/GamesStatusCodes;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_12c

    const/4 v0, 0x1

    if-eq p0, v0, :cond_129

    const/4 v1, 0x2

    if-eq p0, v1, :cond_126

    const/4 v1, 0x3

    if-eq p0, v1, :cond_123

    const/4 v1, 0x4

    if-eq p0, v1, :cond_120

    const/4 v1, 0x5

    if-eq p0, v1, :cond_11d

    const/4 v1, 0x6

    if-eq p0, v1, :cond_11a

    const/4 v1, 0x7

    if-eq p0, v1, :cond_117

    const/16 v1, 0xe

    if-eq p0, v1, :cond_114

    const/16 v1, 0xf

    if-eq p0, v1, :cond_111

    const/16 v1, 0x1964

    if-eq p0, v1, :cond_10e

    const/16 v1, 0x1965

    if-eq p0, v1, :cond_10b

    sparse-switch p0, :sswitch_data_130

    packed-switch p0, :pswitch_data_19e

    packed-switch p0, :pswitch_data_1b0

    packed-switch p0, :pswitch_data_1ba

    packed-switch p0, :pswitch_data_1c6

    packed-switch p0, :pswitch_data_1d4

    packed-switch p0, :pswitch_data_1e0

    packed-switch p0, :pswitch_data_1ee

    .line 1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v2

    const-string p0, "Status code (%d) not found!"

    invoke-static {v1, p0, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_51
    const-string p0, "STATUS_OPERATION_IN_FLIGHT"

    return-object p0

    :pswitch_54
    const-string p0, "STATUS_REAL_TIME_SERVICE_NOT_CONNECTED"

    return-object p0

    :pswitch_57
    const-string p0, "STATUS_REAL_TIME_INACTIVE_ROOM"

    return-object p0

    :pswitch_5a
    const-string p0, "STATUS_REAL_TIME_ROOM_NOT_JOINED"

    return-object p0

    :pswitch_5d
    const-string p0, "STATUS_PARTICIPANT_NOT_CONNECTED"

    return-object p0

    :pswitch_60
    const-string p0, "STATUS_INVALID_REAL_TIME_ROOM_ID"

    return-object p0

    :pswitch_63
    const-string p0, "STATUS_REAL_TIME_MESSAGE_SEND_FAILED"

    return-object p0

    :pswitch_66
    const-string p0, "STATUS_REAL_TIME_CONNECTION_FAILED"

    return-object p0

    :pswitch_69
    const-string p0, "STATUS_MATCH_ERROR_LOCALLY_MODIFIED"

    return-object p0

    :pswitch_6c
    const-string p0, "STATUS_MATCH_NOT_FOUND"

    return-object p0

    :pswitch_6f
    const-string p0, "STATUS_MATCH_ERROR_ALREADY_REMATCHED"

    return-object p0

    :pswitch_72
    const-string p0, "STATUS_MATCH_ERROR_INVALID_MATCH_RESULTS"

    return-object p0

    :pswitch_75
    const-string p0, "STATUS_MATCH_ERROR_OUT_OF_DATE_VERSION"

    return-object p0

    :pswitch_78
    const-string p0, "STATUS_MULTIPLAYER_DISABLED"

    return-object p0

    :pswitch_7b
    const-string p0, "STATUS_MULTIPLAYER_ERROR_INVALID_MULTIPLAYER_TYPE"

    return-object p0

    :pswitch_7e
    const-string p0, "STATUS_MULTIPLAYER_ERROR_NOT_TRUSTED_TESTER"

    return-object p0

    :pswitch_81
    const-string p0, "STATUS_MULTIPLAYER_ERROR_CREATION_NOT_ALLOWED"

    return-object p0

    :pswitch_84
    const-string p0, "STATUS_SNAPSHOT_CONFLICT"

    return-object p0

    :pswitch_87
    const-string p0, "STATUS_SNAPSHOT_COMMIT_FAILED"

    return-object p0

    :pswitch_8a
    const-string p0, "STATUS_SNAPSHOT_CONTENTS_UNAVAILABLE"

    return-object p0

    :pswitch_8d
    const-string p0, "STATUS_SNAPSHOT_CREATION_FAILED"

    return-object p0

    :pswitch_90
    const-string p0, "STATUS_SNAPSHOT_NOT_FOUND"

    return-object p0

    :pswitch_93
    const-string p0, "STATUS_ACHIEVEMENT_UNLOCKED"

    return-object p0

    :pswitch_96
    const-string p0, "STATUS_ACHIEVEMENT_NOT_INCREMENTAL"

    return-object p0

    :pswitch_99
    const-string p0, "STATUS_ACHIEVEMENT_UNKNOWN"

    return-object p0

    :pswitch_9c
    const-string p0, "STATUS_ACHIEVEMENT_UNLOCK_FAILURE"

    return-object p0

    :pswitch_9f
    const-string p0, "STATUS_REQUEST_TOO_MANY_RECIPIENTS"

    return-object p0

    :pswitch_a2
    const-string p0, "STATUS_REQUEST_UPDATE_TOTAL_FAILURE"

    return-object p0

    :pswitch_a5
    const-string p0, "STATUS_REQUEST_UPDATE_PARTIAL_SUCCESS"

    return-object p0

    :pswitch_a8
    const-string p0, "STATUS_AUTH_ERROR_SERVICE_CACHE_MISTAKE"

    return-object p0

    :pswitch_ab
    const-string p0, "STATUS_AUTH_ERROR_ACCOUNT_UNICORN"

    return-object p0

    :pswitch_ae
    const-string p0, "STATUS_AUTH_ERROR_ACCOUNT_NOT_USABLE"

    return-object p0

    :pswitch_b1
    const-string p0, "STATUS_AUTH_ERROR_API_ACCESS_DENIED"

    return-object p0

    :pswitch_b4
    const-string p0, "STATUS_AUTH_ERROR_UNREGISTERED_CLIENT_ID"

    return-object p0

    :pswitch_b7
    const-string p0, "STATUS_AUTH_ERROR_USER_RECOVERABLE"

    return-object p0

    :pswitch_ba
    const-string p0, "STATUS_AUTH_ERROR_HARD"

    return-object p0

    :sswitch_bd
    const-string p0, "STATUS_CONSENT_REQUIRED"

    return-object p0

    :sswitch_c0
    const-string p0, "STATUS_CLIENT_HIDDEN"

    return-object p0

    :sswitch_c3
    const-string p0, "STATUS_CLIENT_EMPTY"

    return-object p0

    :sswitch_c6
    const-string p0, "STATUS_CLIENT_LOADING"

    return-object p0

    :sswitch_c9
    const-string p0, "STATUS_VIDEO_MISSING_OVERLAY_PERMISSION"

    return-object p0

    :sswitch_cc
    const-string p0, "STATUS_VIDEO_CAPTURE_VIDEO_PERMISSION_REQUIRED"

    return-object p0

    :sswitch_cf
    const-string p0, "STATUS_VIDEO_RELEASE_TIMEOUT"

    return-object p0

    :sswitch_d2
    const-string p0, "STATUS_VIDEO_SCREEN_OFF"

    return-object p0

    :sswitch_d5
    const-string p0, "STATUS_VIDEO_NO_CAMERA"

    return-object p0

    :sswitch_d8
    const-string p0, "STATUS_VIDEO_NO_MIC"

    return-object p0

    :sswitch_db
    const-string p0, "STATUS_VIDEO_OUT_OF_DISK_SPACE"

    return-object p0

    :sswitch_de
    const-string p0, "STATUS_VIDEO_ALREADY_CAPTURING"

    return-object p0

    :sswitch_e1
    const-string p0, "STATUS_VIDEO_UNEXPECTED_CAPTURE_ERROR"

    return-object p0

    :sswitch_e4
    const-string p0, "STATUS_VIDEO_STORAGE_ERROR"

    return-object p0

    :sswitch_e7
    const-string p0, "STATUS_VIDEO_PERMISSION_ERROR"

    return-object p0

    :sswitch_ea
    const-string p0, "STATUS_VIDEO_UNSUPPORTED"

    return-object p0

    :sswitch_ed
    const-string p0, "STATUS_VIDEO_NOT_ACTIVE"

    return-object p0

    :sswitch_f0
    const-string p0, "STATUS_QUEST_NOT_STARTED"

    return-object p0

    :sswitch_f3
    const-string p0, "STATUS_QUEST_NO_LONGER_AVAILABLE"

    return-object p0

    :sswitch_f6
    const-string p0, "STATUS_MILESTONE_CLAIM_FAILED"

    return-object p0

    :sswitch_f9
    const-string p0, "STATUS_MILESTONE_CLAIMED_PREVIOUSLY"

    return-object p0

    :sswitch_fc
    const-string p0, "STATUS_SNAPSHOT_CONFLICT_MISSING"

    return-object p0

    :sswitch_ff
    const-string p0, "STATUS_PLAYER_OOB_REQUIRED"

    return-object p0

    :sswitch_102
    const-string p0, "STATUS_RESOLVE_STALE_OR_NO_DATA"

    return-object p0

    :sswitch_105
    const-string p0, "STATUS_GAME_NOT_FOUND"

    return-object p0

    :sswitch_108
    const-string p0, "STATUS_APP_MISCONFIGURED"

    return-object p0

    :cond_10b
    const-string p0, "STATUS_MATCH_ERROR_INACTIVE_MATCH"

    return-object p0

    :cond_10e
    const-string p0, "STATUS_MATCH_ERROR_INVALID_PARTICIPANT_STATE"

    return-object p0

    :cond_111
    const-string p0, "STATUS_TIMEOUT"

    return-object p0

    :cond_114
    const-string p0, "STATUS_INTERRUPTED"

    return-object p0

    :cond_117
    :sswitch_117
    const-string p0, "STATUS_LICENSE_CHECK_FAILED"

    return-object p0

    :cond_11a
    const-string p0, "STATUS_NETWORK_ERROR_OPERATION_FAILED"

    return-object p0

    :cond_11d
    const-string p0, "STATUS_NETWORK_ERROR_OPERATION_DEFERRED"

    return-object p0

    :cond_120
    const-string p0, "STATUS_NETWORK_ERROR_NO_DATA"

    return-object p0

    :cond_123
    const-string p0, "STATUS_NETWORK_ERROR_STALE_DATA"

    return-object p0

    :cond_126
    const-string p0, "STATUS_CLIENT_RECONNECT_REQUIRED"

    return-object p0

    :cond_129
    const-string p0, "STATUS_INTERNAL_ERROR"

    return-object p0

    :cond_12c
    const-string p0, "STATUS_OK"

    return-object p0

    nop

    :sswitch_data_130
    .sparse-switch
        0x7 -> :sswitch_117
        0x8 -> :sswitch_108
        0x9 -> :sswitch_105
        0x1f4 -> :sswitch_102
        0x5dc -> :sswitch_ff
        0xfa6 -> :sswitch_fc
        0x1f40 -> :sswitch_f9
        0x1f41 -> :sswitch_f6
        0x1f42 -> :sswitch_f3
        0x1f43 -> :sswitch_f0
        0x2328 -> :sswitch_ed
        0x2329 -> :sswitch_ea
        0x232a -> :sswitch_e7
        0x232b -> :sswitch_e4
        0x232c -> :sswitch_e1
        0x232e -> :sswitch_de
        0x2331 -> :sswitch_db
        0x2332 -> :sswitch_d8
        0x2333 -> :sswitch_d5
        0x2334 -> :sswitch_d2
        0x2338 -> :sswitch_cf
        0x2339 -> :sswitch_cc
        0x23f0 -> :sswitch_c9
        0x2710 -> :sswitch_c6
        0x2711 -> :sswitch_c3
        0x2712 -> :sswitch_c0
        0x2713 -> :sswitch_bd
    .end sparse-switch

    :pswitch_data_19e
    .packed-switch 0x3e8
        :pswitch_ba
        :pswitch_b7
        :pswitch_b4
        :pswitch_b1
        :pswitch_ae
        :pswitch_ab
        :pswitch_a8
    .end packed-switch

    :pswitch_data_1b0
    .packed-switch 0x7d0
        :pswitch_a5
        :pswitch_a2
        :pswitch_9f
    .end packed-switch

    :pswitch_data_1ba
    .packed-switch 0xbb8
        :pswitch_9c
        :pswitch_99
        :pswitch_96
        :pswitch_93
    .end packed-switch

    :pswitch_data_1c6
    .packed-switch 0xfa0
        :pswitch_90
        :pswitch_8d
        :pswitch_8a
        :pswitch_87
        :pswitch_84
    .end packed-switch

    :pswitch_data_1d4
    .packed-switch 0x1770
        :pswitch_81
        :pswitch_7e
        :pswitch_7b
        :pswitch_78
    .end packed-switch

    :pswitch_data_1e0
    .packed-switch 0x1967
        :pswitch_75
        :pswitch_72
        :pswitch_6f
        :pswitch_6c
        :pswitch_69
    .end packed-switch

    :pswitch_data_1ee
    .packed-switch 0x1b58
        :pswitch_66
        :pswitch_63
        :pswitch_60
        :pswitch_5d
        :pswitch_5a
        :pswitch_57
        :pswitch_54
        :pswitch_51
    .end packed-switch
.end method

.method public static b(I)Lcom/google/android/gms/common/api/Status;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-static {p0}, Lcom/google/android/gms/games/GamesStatusCodes;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    return-object v0
.end method
