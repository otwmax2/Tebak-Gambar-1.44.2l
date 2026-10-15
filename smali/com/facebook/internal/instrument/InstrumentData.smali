###### Class com.facebook.internal.instrument.InstrumentData (com.facebook.internal.instrument.InstrumentData)
.class public final Lcom/facebook/internal/instrument/InstrumentData;
.super Ljava/lang/Object;
.source "InstrumentData.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/instrument/InstrumentData$Type;,
        Lcom/facebook/internal/instrument/InstrumentData$Builder;,
        Lcom/facebook/internal/instrument/InstrumentData$Companion;,
        Lcom/facebook/internal/instrument/InstrumentData$WhenMappings;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/facebook/internal/instrument/InstrumentData$Companion;

.field private static final PARAM_APP_VERSION:Ljava/lang/String; = "app_version"

.field private static final PARAM_CALLSTACK:Ljava/lang/String; = "callstack"

.field private static final PARAM_DEVICE_MODEL:Ljava/lang/String; = "device_model"

.field private static final PARAM_DEVICE_OS:Ljava/lang/String; = "device_os_version"

.field private static final PARAM_FEATURE_NAMES:Ljava/lang/String; = "feature_names"

.field private static final PARAM_REASON:Ljava/lang/String; = "reason"

.field private static final PARAM_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final PARAM_TYPE:Ljava/lang/String; = "type"

.field private static final UNKNOWN:Ljava/lang/String; = "Unknown"


# instance fields
.field private appVersion:Ljava/lang/String;

.field private cause:Ljava/lang/String;

.field private featureNames:Lorg/json/JSONArray;

.field private filename:Ljava/lang/String;

.field private stackTrace:Ljava/lang/String;

.field private timestamp:Ljava/lang/Long;

.field private type:Lcom/facebook/internal/instrument/InstrumentData$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/facebook/internal/instrument/InstrumentData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/internal/instrument/InstrumentData$Companion;-><init>(Lt9/g;)V

    sput-object v0, Lcom/facebook/internal/instrument/InstrumentData;->Companion:Lcom/facebook/internal/instrument/InstrumentData$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;)V
    .registers 5

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "file.name"

    invoke-static {p1, v0}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/facebook/internal/instrument/InstrumentData;->filename:Ljava/lang/String;

    .line 33
    sget-object v0, Lcom/facebook/internal/instrument/InstrumentData;->Companion:Lcom/facebook/internal/instrument/InstrumentData$Companion;

    invoke-static {v0, p1}, Lcom/facebook/internal/instrument/InstrumentData$Companion;->access$getType(Lcom/facebook/internal/instrument/InstrumentData$Companion;Ljava/lang/String;)Lcom/facebook/internal/instrument/InstrumentData$Type;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/internal/instrument/InstrumentData;->type:Lcom/facebook/internal/instrument/InstrumentData$Type;

    .line 34
    sget-object p1, Lcom/facebook/internal/instrument/InstrumentUtility;->INSTANCE:Lcom/facebook/internal/instrument/InstrumentUtility;

    iget-object p1, p0, Lcom/facebook/internal/instrument/InstrumentData;->filename:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/facebook/internal/instrument/InstrumentUtility;->readFile(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_50

    const-wide/16 v0, 0x0

    const-string v2, "timestamp"

    .line 35
    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/instrument/InstrumentData;->timestamp:Ljava/lang/Long;

    const-string v0, "app_version"

    const/4 v1, 0x0

    .line 36
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/instrument/InstrumentData;->appVersion:Ljava/lang/String;

    const-string v0, "reason"

    .line 37
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/instrument/InstrumentData;->cause:Ljava/lang/String;

    const-string v0, "callstack"

    .line 38
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/instrument/InstrumentData;->stackTrace:Ljava/lang/String;

    const-string v0, "feature_names"

    .line 39
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/internal/instrument/InstrumentData;->featureNames:Lorg/json/JSONArray;

    :cond_50
    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/File;Lt9/g;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/internal/instrument/InstrumentData;-><init>(Ljava/io/File;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget-object v0, Lcom/facebook/internal/instrument/InstrumentData$Type;->AnrReport:Lcom/facebook/internal/instrument/InstrumentData$Type;

    iput-object v0, p0, Lcom/facebook/internal/instrument/InstrumentData;->type:Lcom/facebook/internal/instrument/InstrumentData$Type;

    .line 21
    sget-object v0, Lcom/facebook/internal/Utility;->INSTANCE:Lcom/facebook/internal/Utility;

    invoke-static {}, Lcom/facebook/internal/Utility;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/instrument/InstrumentData;->appVersion:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/facebook/internal/instrument/InstrumentData;->cause:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/facebook/internal/instrument/InstrumentData;->stackTrace:Ljava/lang/String;

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const/16 v0, 0x3e8

    int-to-long v0, v0

    div-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/internal/instrument/InstrumentData;->timestamp:Ljava/lang/Long;

    .line 25
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string p2, "anr_log_"

    .line 26
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 27
    iget-object p2, p0, Lcom/facebook/internal/instrument/InstrumentData;->timestamp:Ljava/lang/Long;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, ".json"

    .line 28
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StringBuffer()\n            .append(InstrumentUtility.ANR_REPORT_PREFIX)\n            .append(timestamp.toString())\n            .append(\".json\")\n            .toString()"

    invoke-static {p1, p2}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lcom/facebook/internal/instrument/InstrumentData;->filename:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lt9/g;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/facebook/internal/instrument/InstrumentData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Throwable;Lcom/facebook/internal/instrument/InstrumentData$Type;)V
    .registers 7

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p2, p0, Lcom/facebook/internal/instrument/InstrumentData;->type:Lcom/facebook/internal/instrument/InstrumentData$Type;

    .line 13
    sget-object v0, Lcom/facebook/internal/Utility;->INSTANCE:Lcom/facebook/internal/Utility;

    invoke-static {}, Lcom/facebook/internal/Utility;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/instrument/InstrumentData;->appVersion:Ljava/lang/String;

    .line 14
    sget-object v0, Lcom/facebook/internal/instrument/InstrumentUtility;->INSTANCE:Lcom/facebook/internal/instrument/InstrumentUtility;

    invoke-static {p1}, Lcom/facebook/internal/instrument/InstrumentUtility;->getCause(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/instrument/InstrumentData;->cause:Ljava/lang/String;

    .line 15
    invoke-static {p1}, Lcom/facebook/internal/instrument/InstrumentUtility;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/internal/instrument/InstrumentData;->stackTrace:Ljava/lang/String;

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/16 p1, 0x3e8

    int-to-long v2, p1

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/internal/instrument/InstrumentData;->timestamp:Ljava/lang/Long;

    .line 17
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p2}, Lcom/facebook/internal/instrument/InstrumentData$Type;->getLogPrefix()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, p0, Lcom/facebook/internal/instrument/InstrumentData;->timestamp:Ljava/lang/Long;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, ".json"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StringBuffer().append(t.logPrefix).append(timestamp.toString()).append(\".json\").toString()"

    invoke-static {p1, p2}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/facebook/internal/instrument/InstrumentData;->filename:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Throwable;Lcom/facebook/internal/instrument/InstrumentData$Type;Lt9/g;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/facebook/internal/instrument/InstrumentData;-><init>(Ljava/lang/Throwable;Lcom/facebook/internal/instrument/InstrumentData$Type;)V

    return-void
.end method

.method private constructor <init>(Lorg/json/JSONArray;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/facebook/internal/instrument/InstrumentData$Type;->Analysis:Lcom/facebook/internal/instrument/InstrumentData$Type;

    iput-object v0, p0, Lcom/facebook/internal/instrument/InstrumentData;->type:Lcom/facebook/internal/instrument/InstrumentData$Type;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/16 v2, 0x3e8

    int-to-long v2, v2

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/instrument/InstrumentData;->timestamp:Ljava/lang/Long;

    .line 4
    iput-object p1, p0, Lcom/facebook/internal/instrument/InstrumentData;->featureNames:Lorg/json/JSONArray;

    .line 5
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "analysis_log_"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7
    iget-object v0, p0, Lcom/facebook/internal/instrument/InstrumentData;->timestamp:Ljava/lang/Long;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ".json"

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 9
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StringBuffer()\n            .append(InstrumentUtility.ANALYSIS_REPORT_PREFIX)\n            .append(timestamp.toString())\n            .append(\".json\")\n            .toString()"

    invoke-static {p1, v0}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iput-object p1, p0, Lcom/facebook/internal/instrument/InstrumentData;->filename:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/json/JSONArray;Lt9/g;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/internal/instrument/InstrumentData;-><init>(Lorg/json/JSONArray;)V

    return-void
.end method

.method private final getAnalysisReportParameters()Lorg/json/JSONObject;
    .registers 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    :try_start_5
    iget-object v1, p0, Lcom/facebook/internal/instrument/InstrumentData;->featureNames:Lorg/json/JSONArray;

    if-eqz v1, :cond_e

    const-string v2, "feature_names"

    .line 3
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    :cond_e
    iget-object v1, p0, Lcom/facebook/internal/instrument/InstrumentData;->timestamp:Ljava/lang/Long;

    if-eqz v1, :cond_17

    const-string v2, "timestamp"

    .line 5
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_17} :catch_18

    :cond_17
    return-object v0

    :catch_18
    const/4 v0, 0x0

    return-object v0
.end method

.method private final getExceptionReportParameters()Lorg/json/JSONObject;
    .registers 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "device_os_version"

    .line 2
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "device_model"

    .line 3
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    iget-object v1, p0, Lcom/facebook/internal/instrument/InstrumentData;->appVersion:Ljava/lang/String;

    if-eqz v1, :cond_1c

    const-string v2, "app_version"

    .line 5
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    :cond_1c
    iget-object v1, p0, Lcom/facebook/internal/instrument/InstrumentData;->timestamp:Ljava/lang/Long;

    if-eqz v1, :cond_25

    const-string v2, "timestamp"

    .line 7
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    :cond_25
    iget-object v1, p0, Lcom/facebook/internal/instrument/InstrumentData;->cause:Ljava/lang/String;

    if-eqz v1, :cond_2e

    const-string v2, "reason"

    .line 9
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    :cond_2e
    iget-object v1, p0, Lcom/facebook/internal/instrument/InstrumentData;->stackTrace:Ljava/lang/String;

    if-eqz v1, :cond_37

    const-string v2, "callstack"

    .line 11
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    :cond_37
    iget-object v1, p0, Lcom/facebook/internal/instrument/InstrumentData;->type:Lcom/facebook/internal/instrument/InstrumentData$Type;

    if-eqz v1, :cond_40

    const-string v2, "type"

    .line 13
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_40
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_40} :catch_41

    :cond_40
    return-object v0

    :catch_41
    const/4 v0, 0x0

    return-object v0
.end method

.method private final getParameters()Lorg/json/JSONObject;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/facebook/internal/instrument/InstrumentData;->type:Lcom/facebook/internal/instrument/InstrumentData$Type;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    goto :goto_e

    :cond_6
    sget-object v1, Lcom/facebook/internal/instrument/InstrumentData$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_e
    const/4 v1, 0x1

    if-eq v0, v1, :cond_24

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1f

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1f

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1f

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1f

    const/4 v0, 0x0

    goto :goto_28

    .line 2
    :cond_1f
    invoke-direct {p0}, Lcom/facebook/internal/instrument/InstrumentData;->getExceptionReportParameters()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_28

    .line 3
    :cond_24
    invoke-direct {p0}, Lcom/facebook/internal/instrument/InstrumentData;->getAnalysisReportParameters()Lorg/json/JSONObject;

    move-result-object v0

    :goto_28
    return-object v0
.end method


# virtual methods
.method public final clear()V
    .registers 2

    .line 1
    sget-object v0, Lcom/facebook/internal/instrument/InstrumentUtility;->INSTANCE:Lcom/facebook/internal/instrument/InstrumentUtility;

    iget-object v0, p0, Lcom/facebook/internal/instrument/InstrumentData;->filename:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/internal/instrument/InstrumentUtility;->deleteFile(Ljava/lang/String;)Z

    return-void
.end method

.method public final compareTo(Lcom/facebook/internal/instrument/InstrumentData;)I
    .registers 6

    const-string v0, "data"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/facebook/internal/instrument/InstrumentData;->timestamp:Ljava/lang/Long;

    if-nez v0, :cond_b

    const/4 p1, -0x1

    return p1

    :cond_b
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2
    iget-object p1, p1, Lcom/facebook/internal/instrument/InstrumentData;->timestamp:Ljava/lang/Long;

    if-nez p1, :cond_15

    const/4 p1, 0x1

    return p1

    :cond_15
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 3
    invoke-static {v2, v3, v0, v1}, Lt9/m;->g(JJ)I

    move-result p1

    return p1
.end method

.method public final isValid()Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/facebook/internal/instrument/InstrumentData;->type:Lcom/facebook/internal/instrument/InstrumentData$Type;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    goto :goto_e

    :cond_6
    sget-object v1, Lcom/facebook/internal/instrument/InstrumentData$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_e
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_35

    const/4 v3, 0x2

    if-eq v0, v3, :cond_28

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1f

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1f

    const/4 v3, 0x5

    if-eq v0, v3, :cond_1f

    goto :goto_3e

    .line 2
    :cond_1f
    iget-object v0, p0, Lcom/facebook/internal/instrument/InstrumentData;->stackTrace:Ljava/lang/String;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/facebook/internal/instrument/InstrumentData;->timestamp:Ljava/lang/Long;

    if-eqz v0, :cond_3e

    goto :goto_3d

    .line 3
    :cond_28
    iget-object v0, p0, Lcom/facebook/internal/instrument/InstrumentData;->stackTrace:Ljava/lang/String;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/facebook/internal/instrument/InstrumentData;->cause:Ljava/lang/String;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/facebook/internal/instrument/InstrumentData;->timestamp:Ljava/lang/Long;

    if-eqz v0, :cond_3e

    goto :goto_3d

    .line 4
    :cond_35
    iget-object v0, p0, Lcom/facebook/internal/instrument/InstrumentData;->featureNames:Lorg/json/JSONArray;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/facebook/internal/instrument/InstrumentData;->timestamp:Ljava/lang/Long;

    if-eqz v0, :cond_3e

    :goto_3d
    const/4 v1, 0x1

    :cond_3e
    :goto_3e
    return v1
.end method

.method public final save()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/facebook/internal/instrument/InstrumentData;->isValid()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 2
    :cond_7
    sget-object v0, Lcom/facebook/internal/instrument/InstrumentUtility;->INSTANCE:Lcom/facebook/internal/instrument/InstrumentUtility;

    iget-object v0, p0, Lcom/facebook/internal/instrument/InstrumentData;->filename:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/facebook/internal/instrument/InstrumentData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/internal/instrument/InstrumentUtility;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/facebook/internal/instrument/InstrumentData;->getParameters()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_15

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JSONObject().toString()"

    invoke-static {v0, v1}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 2
    :cond_15
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "params.toString()"

    invoke-static {v0, v1}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

###### Class com.facebook.internal.instrument.InstrumentData.Builder (com.facebook.internal.instrument.InstrumentData$Builder)
.class public final Lcom/facebook/internal/instrument/InstrumentData$Builder;
.super Ljava/lang/Object;
.source "InstrumentData.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/instrument/InstrumentData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/facebook/internal/instrument/InstrumentData$Builder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/internal/instrument/InstrumentData$Builder;

    invoke-direct {v0}, Lcom/facebook/internal/instrument/InstrumentData$Builder;-><init>()V

    sput-object v0, Lcom/facebook/internal/instrument/InstrumentData$Builder;->INSTANCE:Lcom/facebook/internal/instrument/InstrumentData$Builder;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final build(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/internal/instrument/InstrumentData;
    .registers 4

    .line 3
    new-instance v0, Lcom/facebook/internal/instrument/InstrumentData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/internal/instrument/InstrumentData;-><init>(Ljava/lang/String;Ljava/lang/String;Lt9/g;)V

    return-object v0
.end method

.method public static final build(Ljava/lang/Throwable;Lcom/facebook/internal/instrument/InstrumentData$Type;)Lcom/facebook/internal/instrument/InstrumentData;
    .registers 4

    const-string v0, "t"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/facebook/internal/instrument/InstrumentData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/internal/instrument/InstrumentData;-><init>(Ljava/lang/Throwable;Lcom/facebook/internal/instrument/InstrumentData$Type;Lt9/g;)V

    return-object v0
.end method

.method public static final build(Lorg/json/JSONArray;)Lcom/facebook/internal/instrument/InstrumentData;
    .registers 3

    const-string v0, "features"

    invoke-static {p0, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/facebook/internal/instrument/InstrumentData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/internal/instrument/InstrumentData;-><init>(Lorg/json/JSONArray;Lt9/g;)V

    return-object v0
.end method

.method public static final load(Ljava/io/File;)Lcom/facebook/internal/instrument/InstrumentData;
    .registers 3

    const-string v0, "file"

    invoke-static {p0, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/facebook/internal/instrument/InstrumentData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/internal/instrument/InstrumentData;-><init>(Ljava/io/File;Lt9/g;)V

    return-object v0
.end method

###### Class com.facebook.internal.instrument.InstrumentData.Companion (com.facebook.internal.instrument.InstrumentData$Companion)
.class public final Lcom/facebook/internal/instrument/InstrumentData$Companion;
.super Ljava/lang/Object;
.source "InstrumentData.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/instrument/InstrumentData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lt9/g;)V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/internal/instrument/InstrumentData$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getType(Lcom/facebook/internal/instrument/InstrumentData$Companion;Ljava/lang/String;)Lcom/facebook/internal/instrument/InstrumentData$Type;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/internal/instrument/InstrumentData$Companion;->getType(Ljava/lang/String;)Lcom/facebook/internal/instrument/InstrumentData$Type;

    move-result-object p0

    return-object p0
.end method

.method private final getType(Ljava/lang/String;)Lcom/facebook/internal/instrument/InstrumentData$Type;
    .registers 6

    const-string v0, "crash_log_"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 1
    invoke-static {p1, v0, v1, v2, v3}, Lba/g;->u(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2
    sget-object p1, Lcom/facebook/internal/instrument/InstrumentData$Type;->CrashReport:Lcom/facebook/internal/instrument/InstrumentData$Type;

    return-object p1

    :cond_e
    const-string v0, "shield_log_"

    .line 3
    invoke-static {p1, v0, v1, v2, v3}, Lba/g;->u(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 4
    sget-object p1, Lcom/facebook/internal/instrument/InstrumentData$Type;->CrashShield:Lcom/facebook/internal/instrument/InstrumentData$Type;

    return-object p1

    :cond_19
    const-string v0, "thread_check_log_"

    .line 5
    invoke-static {p1, v0, v1, v2, v3}, Lba/g;->u(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 6
    sget-object p1, Lcom/facebook/internal/instrument/InstrumentData$Type;->ThreadCheck:Lcom/facebook/internal/instrument/InstrumentData$Type;

    return-object p1

    :cond_24
    const-string v0, "analysis_log_"

    .line 7
    invoke-static {p1, v0, v1, v2, v3}, Lba/g;->u(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 8
    sget-object p1, Lcom/facebook/internal/instrument/InstrumentData$Type;->Analysis:Lcom/facebook/internal/instrument/InstrumentData$Type;

    return-object p1

    :cond_2f
    const-string v0, "anr_log_"

    .line 9
    invoke-static {p1, v0, v1, v2, v3}, Lba/g;->u(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 10
    sget-object p1, Lcom/facebook/internal/instrument/InstrumentData$Type;->AnrReport:Lcom/facebook/internal/instrument/InstrumentData$Type;

    return-object p1

    .line 11
    :cond_3a
    sget-object p1, Lcom/facebook/internal/instrument/InstrumentData$Type;->Unknown:Lcom/facebook/internal/instrument/InstrumentData$Type;

    return-object p1
.end method

###### Class com.facebook.internal.instrument.InstrumentData.Type (com.facebook.internal.instrument.InstrumentData$Type)
.class public final enum Lcom/facebook/internal/instrument/InstrumentData$Type;
.super Ljava/lang/Enum;
.source "InstrumentData.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/instrument/InstrumentData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/instrument/InstrumentData$Type$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/internal/instrument/InstrumentData$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/internal/instrument/InstrumentData$Type;

.field public static final enum Analysis:Lcom/facebook/internal/instrument/InstrumentData$Type;

.field public static final enum AnrReport:Lcom/facebook/internal/instrument/InstrumentData$Type;

.field public static final enum CrashReport:Lcom/facebook/internal/instrument/InstrumentData$Type;

.field public static final enum CrashShield:Lcom/facebook/internal/instrument/InstrumentData$Type;

.field public static final enum ThreadCheck:Lcom/facebook/internal/instrument/InstrumentData$Type;

.field public static final enum Unknown:Lcom/facebook/internal/instrument/InstrumentData$Type;


# direct methods
.method private static final synthetic $values()[Lcom/facebook/internal/instrument/InstrumentData$Type;
    .registers 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/facebook/internal/instrument/InstrumentData$Type;

    sget-object v1, Lcom/facebook/internal/instrument/InstrumentData$Type;->Unknown:Lcom/facebook/internal/instrument/InstrumentData$Type;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/internal/instrument/InstrumentData$Type;->Analysis:Lcom/facebook/internal/instrument/InstrumentData$Type;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/internal/instrument/InstrumentData$Type;->AnrReport:Lcom/facebook/internal/instrument/InstrumentData$Type;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/internal/instrument/InstrumentData$Type;->CrashReport:Lcom/facebook/internal/instrument/InstrumentData$Type;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/internal/instrument/InstrumentData$Type;->CrashShield:Lcom/facebook/internal/instrument/InstrumentData$Type;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/internal/instrument/InstrumentData$Type;->ThreadCheck:Lcom/facebook/internal/instrument/InstrumentData$Type;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/facebook/internal/instrument/InstrumentData$Type;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/internal/instrument/InstrumentData$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/internal/instrument/InstrumentData$Type;->Unknown:Lcom/facebook/internal/instrument/InstrumentData$Type;

    .line 2
    new-instance v0, Lcom/facebook/internal/instrument/InstrumentData$Type;

    const-string v1, "Analysis"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/facebook/internal/instrument/InstrumentData$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/internal/instrument/InstrumentData$Type;->Analysis:Lcom/facebook/internal/instrument/InstrumentData$Type;

    .line 3
    new-instance v0, Lcom/facebook/internal/instrument/InstrumentData$Type;

    const-string v1, "AnrReport"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/facebook/internal/instrument/InstrumentData$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/internal/instrument/InstrumentData$Type;->AnrReport:Lcom/facebook/internal/instrument/InstrumentData$Type;

    .line 4
    new-instance v0, Lcom/facebook/internal/instrument/InstrumentData$Type;

    const-string v1, "CrashReport"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/facebook/internal/instrument/InstrumentData$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/internal/instrument/InstrumentData$Type;->CrashReport:Lcom/facebook/internal/instrument/InstrumentData$Type;

    .line 5
    new-instance v0, Lcom/facebook/internal/instrument/InstrumentData$Type;

    const-string v1, "CrashShield"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/facebook/internal/instrument/InstrumentData$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/internal/instrument/InstrumentData$Type;->CrashShield:Lcom/facebook/internal/instrument/InstrumentData$Type;

    .line 6
    new-instance v0, Lcom/facebook/internal/instrument/InstrumentData$Type;

    const-string v1, "ThreadCheck"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/facebook/internal/instrument/InstrumentData$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/internal/instrument/InstrumentData$Type;->ThreadCheck:Lcom/facebook/internal/instrument/InstrumentData$Type;

    invoke-static {}, Lcom/facebook/internal/instrument/InstrumentData$Type;->$values()[Lcom/facebook/internal/instrument/InstrumentData$Type;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/instrument/InstrumentData$Type;->$VALUES:[Lcom/facebook/internal/instrument/InstrumentData$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/internal/instrument/InstrumentData$Type;
    .registers 2

    const-string v0, "value"

    invoke-static {p0, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/facebook/internal/instrument/InstrumentData$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 1
    check-cast p0, Lcom/facebook/internal/instrument/InstrumentData$Type;

    return-object p0
.end method

.method public static values()[Lcom/facebook/internal/instrument/InstrumentData$Type;
    .registers 2

    sget-object v0, Lcom/facebook/internal/instrument/InstrumentData$Type;->$VALUES:[Lcom/facebook/internal/instrument/InstrumentData$Type;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, [Lcom/facebook/internal/instrument/InstrumentData$Type;

    return-object v0
.end method


# virtual methods
.method public final getLogPrefix()Ljava/lang/String;
    .registers 3

    .line 1
    sget-object v0, Lcom/facebook/internal/instrument/InstrumentData$Type$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_26

    const/4 v1, 0x2

    if-eq v0, v1, :cond_23

    const/4 v1, 0x3

    if-eq v0, v1, :cond_20

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1d

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1a

    const-string v0, "Unknown"

    goto :goto_28

    :cond_1a
    const-string v0, "thread_check_log_"

    goto :goto_28

    :cond_1d
    const-string v0, "shield_log_"

    goto :goto_28

    :cond_20
    const-string v0, "crash_log_"

    goto :goto_28

    :cond_23
    const-string v0, "anr_log_"

    goto :goto_28

    :cond_26
    const-string v0, "analysis_log_"

    :goto_28
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    sget-object v0, Lcom/facebook/internal/instrument/InstrumentData$Type$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_26

    const/4 v1, 0x2

    if-eq v0, v1, :cond_23

    const/4 v1, 0x3

    if-eq v0, v1, :cond_20

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1d

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1a

    const-string v0, "Unknown"

    goto :goto_28

    :cond_1a
    const-string v0, "ThreadCheck"

    goto :goto_28

    :cond_1d
    const-string v0, "CrashShield"

    goto :goto_28

    :cond_20
    const-string v0, "CrashReport"

    goto :goto_28

    :cond_23
    const-string v0, "AnrReport"

    goto :goto_28

    :cond_26
    const-string v0, "Analysis"

    :goto_28
    return-object v0
.end method

###### Class com.facebook.internal.instrument.InstrumentData.Type.WhenMappings (com.facebook.internal.instrument.InstrumentData$Type$WhenMappings)
.class public final synthetic Lcom/facebook/internal/instrument/InstrumentData$Type$WhenMappings;
.super Ljava/lang/Object;
.source "InstrumentData.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/instrument/InstrumentData$Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/facebook/internal/instrument/InstrumentData$Type;->values()[Lcom/facebook/internal/instrument/InstrumentData$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/facebook/internal/instrument/InstrumentData$Type;->Analysis:Lcom/facebook/internal/instrument/InstrumentData$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/facebook/internal/instrument/InstrumentData$Type;->AnrReport:Lcom/facebook/internal/instrument/InstrumentData$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/facebook/internal/instrument/InstrumentData$Type;->CrashReport:Lcom/facebook/internal/instrument/InstrumentData$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lcom/facebook/internal/instrument/InstrumentData$Type;->CrashShield:Lcom/facebook/internal/instrument/InstrumentData$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v1, Lcom/facebook/internal/instrument/InstrumentData$Type;->ThreadCheck:Lcom/facebook/internal/instrument/InstrumentData$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sput-object v0, Lcom/facebook/internal/instrument/InstrumentData$Type$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method

###### Class com.facebook.internal.instrument.InstrumentData.WhenMappings (com.facebook.internal.instrument.InstrumentData$WhenMappings)
.class public final synthetic Lcom/facebook/internal/instrument/InstrumentData$WhenMappings;
.super Ljava/lang/Object;
.source "InstrumentData.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/instrument/InstrumentData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/facebook/internal/instrument/InstrumentData$Type;->values()[Lcom/facebook/internal/instrument/InstrumentData$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/facebook/internal/instrument/InstrumentData$Type;->Analysis:Lcom/facebook/internal/instrument/InstrumentData$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/facebook/internal/instrument/InstrumentData$Type;->AnrReport:Lcom/facebook/internal/instrument/InstrumentData$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/facebook/internal/instrument/InstrumentData$Type;->CrashReport:Lcom/facebook/internal/instrument/InstrumentData$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lcom/facebook/internal/instrument/InstrumentData$Type;->CrashShield:Lcom/facebook/internal/instrument/InstrumentData$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v1, Lcom/facebook/internal/instrument/InstrumentData$Type;->ThreadCheck:Lcom/facebook/internal/instrument/InstrumentData$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sput-object v0, Lcom/facebook/internal/instrument/InstrumentData$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
